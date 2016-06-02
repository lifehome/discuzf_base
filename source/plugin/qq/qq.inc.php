<?php

/**
 * 維清 [ Discuz!應用專家，深圳市維清互聯科技有限公司旗下Discuz!開發團隊 ]
 *
 * Copyright (c) 2011-2099 http://www.wikin.cn All rights reserved.
 *
 * Author: wikin <wikin@wikin.cn>
 *
 * $Id: qq.inc.php 2015-5-13 15:24:06Z $
 */
if (!defined('IN_DISCUZ')) {
	exit('Access Denied');
}

require_once DISCUZ_ROOT . './source/plugin/qq/config/config.php';

if (!$setting['isopen']) {
	showmessage('qq:plugin_not_open');
}

$allowmod = array('login', 'config', 'bind');
$mod = !in_array($_GET['mod'], $allowmod) ? 'config' : $_GET['mod'];

require_once DISCUZ_ROOT . './source/plugin/qq/class/OAuth.class.php';
require_once DISCUZ_ROOT . './source/plugin/qq/class/User.class.php';

require DISCUZ_ROOT . './source/plugin/qq/module/qq_' . $mod . '.php';
?>