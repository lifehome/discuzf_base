<?php

/**
 *      [Discuz!] (C)2001-2099 Comsenz Inc.
 *      This is NOT a freeware, use is subject to license terms
 *
 *      $Id: misc_sendsms.php 30849 2012-06-26 02:21:32Z pmonkey_w $
 */

if(!defined('IN_DISCUZ')) {
	exit('Access Denied');
}

header('Content-Type: text/javascript');

$pernum = 1;

dsetcookie('sendsms', '1', 300);
$lockfile = DISCUZ_ROOT.'./data/sendsms.lock';
@$filemtime = filemtime($lockfile);

if($_G['timestamp'] - $filemtime < 5) exit();

touch($lockfile);

@set_time_limit(0);

$list = $sublist = $cids = $touids = array();
foreach(C::t('common_smscron')->fetch_all_by_sendtime($_G['timestamp'], 0, $pernum) as $value) {
	if($value['touid']) $touids[$value['touid']] = $value['touid'];
	$cids[] = $value['cid'];
	$list[$value['cid']] = $value;
}

if(empty($cids)) exit();

foreach(C::t('common_smsqueue')->fetch_all_by_cid($cids) as $value) {
	$sublist[$value['cid']][] = $value;
}

if($touids) {
	C::t('common_member_status')->update($touids, array('lastsendsms' => TIMESTAMP), 'UNBUFFERED');
}

C::t('common_smscron')->delete($cids);
C::t('common_smsqueue')->delete_by_cid($cids);

require_once libfile('function/sms');

foreach ($list as $cid => $value) {
	$mlist = $sublist[$cid];
	if($value['sms'] && $mlist) {
		foreach ($mlist as $subvalue) {
		    $message = dunserialize($subvalue['message']);
		    $message = $subvalue['message'] && $message ? $message : $subvalue['message'];
			if(!sendsms($value['sms'], $message, $subvalue['template'])) {
			    runlog('sendsms', "$value[sms] sendsms failed.");
			}
		}

	}
}

?>