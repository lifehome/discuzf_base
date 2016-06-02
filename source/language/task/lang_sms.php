<?php

/**
 *      [Discuz!] (C)2001-2099 Comsenz Inc.
 *      This is NOT a freeware, use is subject to license terms
 *
 *      $Id: lang_sms.php 27449 2012-02-01 05:32:35Z pmonkey_w $
 */

if(!defined('IN_DISCUZ')) {
	exit('Access Denied');
}

$lang = array
(
	'sms_name' => '驗證手機號碼任務',
	'sms_desc' => '驗證手機號碼獲得相應的獎勵。',
	'sms_view' => '<strong>請按照以下的說明來參與本任務：</strong>
		<ul>
		<li><a href="home.php?mod=spacecp&ac=profile&op=password" target="_blank">新窗口打開賬號設置頁面</a></li>
		<li>在新打開的設置頁面中，將自己的手機號真實填寫(新填寫的手機號需要先保存)，並點擊「重新接收驗證短信」鏈接</li>
		<li>幾分鐘後，系統會給您發送一條短信，收到短信後，請將短信裡的驗證碼填寫到當前頁面即可</li>
		</ul>',
);

?>