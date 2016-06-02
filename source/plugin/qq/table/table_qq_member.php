<?php

/**
 * 維清 [ Discuz!應用專家，深圳市維清互聯科技有限公司旗下Discuz!開發團隊 ]
 *
 * Copyright (c) 2011-2099 http://www.wikin.cn All rights reserved.
 *
 * Author: wikin <wikin@wikin.cn>
 *
 * $Id: table_qq_sample.php 2015-5-13 15:24:06Z $
 */
if (!defined('IN_DISCUZ')) {
	exit('Access Denied');
}

class table_qq_member extends discuz_table {

	private $_fields;

	public function __construct() {
		$this->_table = 'qq_member';
		$this->_fields = array('uid', 'openid', 'access_token');
		$this->_pk = 'uid';
		parent::__construct();
	}

	public function fetch_first_by_openid($openid) {
		return DB::fetch_first("SELECT * FROM %t WHERE openid=%s", array($this->_table, $openid));
	}

	public function fetch_first_by_uid($uid) {
		return DB::fetch_first("SELECT * FROM %t WHERE uid=%d", array($this->_table, $uid));
	}

	public function fetch_fields_by_openid($openid, $fields = array()) {
		$fields = (array) $fields;
		if (!empty($fields)) {
			$field = implode(',', array_intersect($fields, $this->_fields));
		} else {
			$field = '*';
		}

		return DB::fetch_first('SELECT %i FROM %t WHERE openid=%s', array($field, $this->_table, $openid));
	}

}