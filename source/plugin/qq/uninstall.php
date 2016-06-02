<?php

/**
 * 維清 [ Discuz!應用專家，深圳市維清互聯科技有限公司旗下Discuz!開發團隊 ]
 *
 * Copyright (c) 2011-2099 http://www.wikin.cn All rights reserved.
 *
 * Author: wikin <wikin@wikin.cn>
 *
 * $Id: uninstall.php 2015-5-13 15:24:06Z $
 */
if (!defined('IN_DISCUZ')) {
	exit('Access Denied');
}

$sql = <<<EOF
DROP TABLE IF EXISTS `pre_qq_member`;
DROP TABLE IF EXISTS `pre_qq_member_guest`;
DROP TABLE IF EXISTS `pre_qq_member_bindlog`;
EOF;

runquery($sql);

$finish = TRUE;
?>