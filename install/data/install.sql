
DROP TABLE IF EXISTS pre_common_admincp_cmenu;
CREATE TABLE pre_common_admincp_cmenu (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL COMMENT '菜單名稱',
  `url` varchar(255) NOT NULL COMMENT '菜單地址',
  `sort` tinyint(1) NOT NULL DEFAULT '0' COMMENT '菜單類型,備用',
  `displayorder` tinyint(3) NOT NULL COMMENT '顯示順序',
  `clicks` smallint(6) unsigned NOT NULL DEFAULT '1' COMMENT '點擊數,備用',
  `uid` int(10) unsigned NOT NULL COMMENT '添加用戶',
  `dateline` int(10) unsigned NOT NULL COMMENT '添加時間',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `displayorder` (`displayorder`)
) ENGINE=MYISAM COMMENT='後台菜單收藏表';

DROP TABLE IF EXISTS pre_common_admingroup;
CREATE TABLE pre_common_admingroup (
  admingid smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '所屬管理員分組ID',
  alloweditpost tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否允許編輯帖子',
  alloweditpoll tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否允許編輯投票',
  allowstickthread tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否允許置頂主題',
  allowmodpost tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否允許審核帖子',
  allowdelpost tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否允許刪除帖子',
  allowmassprune tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否允許批量刪帖',
  allowrefund tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否允許強制退款',
  allowcensorword tinyint(1) NOT NULL DEFAULT '0' COMMENT '兼容性字段',
  allowviewip tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否允許查看IP',
  allowbanip tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否允許禁止IP',
  allowedituser tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否允許編輯用戶',
  allowmoduser tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否允許審核用戶',
  allowbanuser tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否允許禁止用戶發言',
  allowbanvisituser tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否允許禁止用戶訪問',
  allowpostannounce tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否允許發佈站點公告',
  allowviewlog tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否允許查看管理日誌',
  allowbanpost tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否允許屏蔽帖子',
  supe_allowpushthread tinyint(1) NOT NULL DEFAULT '0' COMMENT '兼容性字段',
  allowhighlightthread tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否允許高亮主題',
  allowlivethread tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否允許直播主題',
  allowdigestthread tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否允許精華主題',
  allowrecommendthread tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否允許推薦主題',
  allowbumpthread tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否允許提升主題',
  allowclosethread tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否允許關閉主題',
  allowmovethread tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否允許移動主題',
  allowedittypethread tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否允許編輯主題分類',
  allowstampthread tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否允許添加主題圖章',
  allowstamplist tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否允許添加主題圖標',
  allowcopythread tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否允許複製主題',
  allowmergethread tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否允許合併主題',
  allowsplitthread tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否允許分割主題',
  allowrepairthread tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否允許修復主題',
  allowwarnpost tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否允許警告帖子',
  allowviewreport tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否允許查看用戶報告',
  alloweditforum tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否允許編輯版塊',
  allowremovereward tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否允許移除懸賞',
  allowedittrade tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否允許編輯商品',
  alloweditactivity tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否允許管理活動報名者',
  allowstickreply tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否允許置頂回帖',
  allowmanagearticle tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否允許管理所有文章',
  allowaddtopic tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否允許創建專題',
  allowmanagetopic tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否允許管理專題',
  allowdiy tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否允許DIY',
  allowclearrecycle tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否允許刪除回收站的帖子',
  allowmanagetag tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否允許管理標籤',
  alloweditusertag tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否允許管理用戶標籤',
  managefeed tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否允許管理動態(feed)',
  managedoing tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否允許管理記錄',
  manageshare tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否允許管理分享',
  manageblog tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否允許管理日誌',
  managealbum tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否允許管理相冊',
  managecomment tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否允許管理評論',
  managemagiclog tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否允許管理道具記錄',
  managereport tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否允許管理舉報',
  managehotuser tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否允許管理推薦成員',
  managedefaultuser tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否允許管理推薦好友',
  managevideophoto tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否允許管理視頻認證',
  managemagic tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否允許管理道具',
  manageclick tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否允許管理表態動作',
  allowmanagecollection tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否允許管理淘專輯',
  allowmakehtml tinyint(1) NOT NULL default '0' COMMENT '允許生成HTML',
  PRIMARY KEY (admingid)
) ENGINE=MyISAM COMMENT='管理組表';

DROP TABLE IF EXISTS pre_common_adminnote;
CREATE TABLE pre_common_adminnote (
  id mediumint(8) unsigned NOT NULL auto_increment COMMENT '後台留言id',
  admin varchar(15) NOT NULL default '' COMMENT '管理員姓名',
  access tinyint(3) NOT NULL default '0' COMMENT '哪組可以看到信息',
  adminid tinyint(3) NOT NULL default '0' COMMENT '管理員id',
  dateline int(10) unsigned NOT NULL default '0' COMMENT '發表時間',
  expiration int(10) unsigned NOT NULL default '0' COMMENT '過期時間',
  message text NOT NULL COMMENT '消息',
  PRIMARY KEY  (id)
) ENGINE=MyISAM COMMENT='後台留言表';

DROP TABLE IF EXISTS pre_common_advertisement;
CREATE TABLE pre_common_advertisement (
  advid mediumint(8) unsigned NOT NULL auto_increment COMMENT '廣告id',
  available tinyint(1) NOT NULL default '0' COMMENT '是否啟用',
  `type` varchar(50) NOT NULL default '0' COMMENT '類型',
  displayorder tinyint(3) NOT NULL default '0' COMMENT '顯示順序',
  title varchar(255) NOT NULL default '' COMMENT '廣告標題',
  targets text NOT NULL COMMENT '投放範圍',
  parameters text NOT NULL COMMENT '參數\n序列化存放的數組數據',
  `code` text NOT NULL COMMENT '代碼',
  starttime int(10) unsigned NOT NULL default '0' COMMENT '開始時間',
  endtime int(10) unsigned NOT NULL default '0' COMMENT '結束時間',
  PRIMARY KEY  (advid)
) ENGINE=MyISAM COMMENT='廣告數據表';

DROP TABLE IF EXISTS pre_common_advertisement_custom;
CREATE TABLE pre_common_advertisement_custom (
  `id` smallint(5) unsigned NOT NULL auto_increment COMMENT '自定義廣告類型id',
  `name` varchar(255) NOT NULL COMMENT '名稱',
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM COMMENT='自定義廣告數據表';

DROP TABLE IF EXISTS pre_common_banned;
CREATE TABLE pre_common_banned (
  id smallint(6) unsigned NOT NULL auto_increment COMMENT '禁止id',
  ip1 smallint(3) NOT NULL default '0' COMMENT 'IP分段1',
  ip2 smallint(3) NOT NULL default '0' COMMENT 'IP分段2',
  ip3 smallint(3) NOT NULL default '0' COMMENT 'IP分段3',
  ip4 smallint(3) NOT NULL default '0' COMMENT 'IP分段4',
  admin varchar(15) NOT NULL default '' COMMENT '管理員姓名',
  dateline int(10) unsigned NOT NULL default '0' COMMENT '禁止時間',
  expiration int(10) unsigned NOT NULL default '0' COMMENT '過期時間',
  PRIMARY KEY  (id)
) ENGINE=MyISAM COMMENT='禁止訪問表';

DROP TABLE IF EXISTS pre_common_cache;
CREATE TABLE pre_common_cache (
  cachekey varchar(255) NOT NULL default '',
  cachevalue mediumblob NOT NULL,
  dateline int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (cachekey)
) ENGINE=MyISAM COMMENT='通用緩存表';

DROP TABLE IF EXISTS pre_common_card;
CREATE TABLE pre_common_card (
  id char(255) NOT NULL default '' COMMENT '生成的卡片號碼',
  typeid smallint(6) unsigned NOT NULL default '1' COMMENT '卡片分類',
  maketype tinyint(1) NOT NULL default '0' COMMENT '卡片生成的方法',
  makeruid int(10) unsigned NOT NULL default '0' COMMENT '卡片生成者uid',
  `price` mediumint(8) unsigned NOT NULL default '0' COMMENT '卡片面值',
  `extcreditskey` tinyint(1) NOT NULL default '0' COMMENT '充值積分種類',
  `extcreditsval` int(10) NOT NULL default '0' COMMENT '積分數額',
  `status` tinyint(1) unsigned NOT NULL default '1' COMMENT '卡片狀態(位與):1:可用,2:已用',
  dateline int(10) unsigned NOT NULL default '0' COMMENT '卡片生成時間',
  cleardateline int(10) unsigned NOT NULL default '0' COMMENT '卡片清理時間',
  useddateline int(10) unsigned NOT NULL default '0' COMMENT '使用時間',
  uid int(10)  unsigned NOT NULL default '0' COMMENT '使用者',
  PRIMARY KEY  (id),
  KEY `dateline` (`dateline`)
) ENGINE=MyISAM COMMENT='充值卡密表';
DROP TABLE IF EXISTS pre_common_card_log;
CREATE TABLE pre_common_card_log (
  id smallint(6) NOT NULL auto_increment COMMENT '生成的卡片號碼',
  `uid` INT(10) NOT NULL default '0' COMMENT '卡片生成者',
  `username` varchar(20) NOT NULL default '' COMMENT '卡片生成者',
  cardrule varchar(255) NOT NULL default '' COMMENT '卡片生成規則',
  `info` text NOT NULL COMMENT '卡片生成log',
  dateline INT(10) unsigned NOT NULL default '0' COMMENT '本次log生成時間',
  description mediumtext NOT NULL COMMENT '卡片描述',
  operation tinyint(1) NOT NULL default '0' COMMENT '操作動作(位與):1:生成,2:任務生成,4:刪除,9:卡片過期',
  PRIMARY KEY  (id),
  KEY `dateline` (`dateline`),
  KEY `operation_dateline` (`operation`, `dateline`)
) ENGINE=MyISAM COMMENT='充值卡密表';

DROP TABLE IF EXISTS pre_common_card_type;
CREATE TABLE pre_common_card_type (
  id smallint(6) NOT NULL auto_increment COMMENT '卡片分類ID',
  typename char(20) NOT NULL default '' COMMENT '分類名稱',
  PRIMARY KEY  (id)
) ENGINE=MyISAM COMMENT='卡片分類表';

DROP TABLE IF EXISTS pre_common_credit_log;
CREATE TABLE pre_common_credit_log (
  `logid` mediumint(8) unsigned NOT NULL auto_increment COMMENT 'id',
  `uid` INT(10) unsigned NOT NULL default '0' COMMENT '所屬用戶uid',
  `operation` char(3) NOT NULL default '' COMMENT '操作類型',
  `relatedid` int(10) unsigned NOT NULL COMMENT '操作相關ID',
  `dateline` int(10) unsigned NOT NULL COMMENT '記錄時間',
  `extcredits1` int(10) NOT NULL COMMENT '積分1變化值',
  `extcredits2` int(10) NOT NULL COMMENT '積分2變化值',
  `extcredits3` int(10) NOT NULL COMMENT '積分3變化值',
  `extcredits4` int(10) NOT NULL COMMENT '積分4變化值',
  `extcredits5` int(10) NOT NULL COMMENT '積分5變化值',
  `extcredits6` int(10) NOT NULL COMMENT '積分6變化值',
  `extcredits7` int(10) NOT NULL COMMENT '積分7變化值',
  `extcredits8` int(10) NOT NULL COMMENT '積分8變化值',
  PRIMARY KEY  (logid),
  KEY `uid` (`uid`),
  KEY `operation` (`operation`),
  KEY `relatedid` (`relatedid`),
  KEY `dateline` (`dateline`)
) ENGINE=MyISAM COMMENT='積分日誌表';

DROP TABLE IF EXISTS pre_common_credit_log_field;
CREATE TABLE pre_common_credit_log_field (
  `logid` mediumint(8) unsigned NOT NULL COMMENT 'id',
  `title` varchar(100) NOT NULL COMMENT '記錄標題',
  `text` text NOT NULL COMMENT '記錄說明',
  KEY logid (logid)
) ENGINE=MyISAM COMMENT='積分日誌詳情';

DROP TABLE IF EXISTS pre_common_credit_rule_log;
CREATE TABLE pre_common_credit_rule_log (
  clid mediumint(8) unsigned NOT NULL auto_increment COMMENT '策略日誌ID',
  uid int(10) unsigned NOT NULL default '0' COMMENT '策略日誌所有者uid',
  rid mediumint(8) unsigned NOT NULL default '0' COMMENT '策略ID',
  fid mediumint(8) unsigned NOT NULL default '0' COMMENT '版塊ID',
  total mediumint(8) unsigned NOT NULL default '0' COMMENT '策略被執行總次數',
  cyclenum mediumint(8) unsigned NOT NULL default '0' COMMENT '週期被執行次數',
  extcredits1 int(10) NOT NULL default '0' COMMENT '擴展1',
  extcredits2 int(10) NOT NULL default '0' COMMENT '擴展2',
  extcredits3 int(10) NOT NULL default '0' COMMENT '擴展3',
  extcredits4 int(10) NOT NULL default '0' COMMENT '擴展4',
  extcredits5 int(10) NOT NULL default '0' COMMENT '擴展5',
  extcredits6 int(10) NOT NULL default '0' COMMENT '擴展6',
  extcredits7 int(10) NOT NULL default '0' COMMENT '擴展7',
  extcredits8 int(10) NOT NULL default '0' COMMENT '擴展8',
  starttime int(10) unsigned NOT NULL default '0' COMMENT '週期開始時間',
  dateline int(10) unsigned NOT NULL default '0' COMMENT '策略最後執行時間',
  PRIMARY KEY  (clid),
  KEY uid (uid,rid, fid),
  KEY dateline (dateline)
) ENGINE=MyISAM COMMENT='積分規則日誌表';

DROP TABLE IF EXISTS pre_common_credit_rule_log_field;
CREATE TABLE pre_common_credit_rule_log_field (
  clid mediumint(8) unsigned NOT NULL default '0' COMMENT '策略日誌ID',
  uid int(10) unsigned NOT NULL default '0' COMMENT '策略日誌所有者uid',
  info text NOT NULL COMMENT '記錄信息防重',
  `user` text NOT NULL COMMENT '記錄用戶防重',
  app text NOT NULL COMMENT '記錄應用防重',
  PRIMARY KEY  (uid, clid)
) ENGINE=MyISAM COMMENT='積分規則日誌擴展表';

DROP TABLE IF EXISTS pre_common_credit_rule;
CREATE TABLE pre_common_credit_rule (
  rid mediumint(8) unsigned NOT NULL auto_increment COMMENT '規則ID',
  rulename varchar(20) NOT NULL default '' COMMENT '規則名稱',
  `action` varchar(20) NOT NULL default '' COMMENT '規則action唯一KEY',
  cycletype tinyint(1) NOT NULL default '0' COMMENT '獎勵週期0:一次;1:每天;2:整點;3:間隔分鐘;4:不限;',
  cycletime int(10) NOT NULL default '0' COMMENT '間隔時間',
  rewardnum tinyint(2) NOT NULL default '1' COMMENT '獎勵次數',
  norepeat tinyint(1) NOT NULL default '0' COMMENT '是否去重1：去重;0：不去重',
  extcredits1 int(10) NOT NULL default '0' COMMENT '擴展1',
  extcredits2 int(10) NOT NULL default '0' COMMENT '擴展2',
  extcredits3 int(10) NOT NULL default '0' COMMENT '擴展3',
  extcredits4 int(10) NOT NULL default '0' COMMENT '擴展4',
  extcredits5 int(10) NOT NULL default '0' COMMENT '擴展5',
  extcredits6 int(10) NOT NULL default '0' COMMENT '擴展6',
  extcredits7 int(10) NOT NULL default '0' COMMENT '擴展7',
  extcredits8 int(10) NOT NULL default '0' COMMENT '擴展8',
  fids text NOT NULL COMMENT '記錄自定義策略版塊ID',
  PRIMARY KEY  (rid),
  UNIQUE KEY `action` (`action`)
) ENGINE=MyISAM COMMENT='積分規則表';

DROP TABLE IF EXISTS pre_common_cron;
CREATE TABLE pre_common_cron (
  cronid smallint(6) unsigned NOT NULL auto_increment COMMENT '計劃任務id',
  available tinyint(1) NOT NULL default '0' COMMENT '是否啟用',
  `type` enum('user','system','plugin') NOT NULL default 'user' COMMENT '類型',
  `name` char(50) NOT NULL default '' COMMENT '名稱',
  filename char(50) NOT NULL default '' COMMENT '對應文件',
  lastrun int(10) unsigned NOT NULL default '0' COMMENT '上次執行時間',
  nextrun int(10) unsigned NOT NULL default '0' COMMENT '下次執行時間',
  weekday tinyint(1) NOT NULL default '0' COMMENT '周計劃',
  `day` tinyint(2) NOT NULL default '0' COMMENT '日計劃',
  `hour` tinyint(2) NOT NULL default '0' COMMENT '小時計劃',
  `minute` char(36) NOT NULL default '' COMMENT '分計劃',
  PRIMARY KEY  (cronid),
  KEY nextrun (available,nextrun)
) ENGINE=MyISAM COMMENT='計劃任務表';

DROP TABLE IF EXISTS pre_common_domain;
CREATE TABLE pre_common_domain (
  domain char(30) NOT NULL default '' COMMENT '域名前綴',
  domainroot char(60) NOT NULL default '' COMMENT '二級域名後綴',
  id mediumint(8) unsigned NOT NULL default '0' COMMENT '對應對像id',
  idtype char(15) NOT NULL default '' COMMENT '對應對像類型subarea:分區、forum:版塊、home:個人空間、group:群組、topic:專題、channel:頻道、plugin:插件',
  PRIMARY KEY (id, idtype),
  KEY domain (domain, domainroot),
  KEY idtype (idtype)
) ENGINE=MyISAM COMMENT='二級域名表';

DROP TABLE IF EXISTS pre_common_failedlogin;
CREATE TABLE pre_common_failedlogin (
  ip char(15) NOT NULL default '' COMMENT '失敗IP',
  username char(32) NOT NULL default '' COMMENT '失敗時的用戶名',
  count tinyint(1) unsigned NOT NULL default '0' COMMENT '嘗試次數',
  lastupdate int(10) unsigned NOT NULL default '0' COMMENT '最後一次嘗試時間',
  PRIMARY KEY  (ip,username)
) ENGINE=MyISAM COMMENT='失敗登錄表';

DROP TABLE IF EXISTS pre_common_failedip;
CREATE TABLE pre_common_failedip (
  ip char(7) NOT NULL default '' COMMENT '失敗IP',
  lastupdate int(10) unsigned NOT NULL default '0' COMMENT '最後一次嘗試時間',
  count tinyint(1) unsigned NOT NULL default '0' COMMENT '嘗試次數',
  PRIMARY KEY  (ip, lastupdate),
  KEY lastupdate (lastupdate)
) ENGINE=MyISAM COMMENT='IP段記錄表';

DROP TABLE IF EXISTS pre_common_friendlink;
CREATE TABLE pre_common_friendlink (
  id smallint(6) unsigned NOT NULL auto_increment COMMENT 'id',
  displayorder tinyint(3) NOT NULL default '0' COMMENT '顯示順序，正序',
  `name` varchar(100) NOT NULL default '' COMMENT '名稱',
  url varchar(255) NOT NULL default '' COMMENT 'url',
  description mediumtext NOT NULL COMMENT '解釋說明',
  logo varchar(255) NOT NULL default '' COMMENT 'logo',
  `type` tinyint(3) NOT NULL default '0',
  PRIMARY KEY  (id)
) ENGINE=MyISAM COMMENT='友情鏈接表';

DROP TABLE IF EXISTS pre_common_relatedlink;
CREATE TABLE pre_common_relatedlink (
  id smallint(6) unsigned NOT NULL auto_increment COMMENT 'id',
  `name` varchar(100) NOT NULL default '' COMMENT '名稱',
  url varchar(255) NOT NULL default '' COMMENT 'url',
  `extent` tinyint(3) NOT NULL default '0',
  PRIMARY KEY  (id)
) ENGINE=MyISAM COMMENT='關聯鏈接表';

DROP TABLE IF EXISTS pre_common_invite;
CREATE TABLE pre_common_invite (
  id mediumint(8) unsigned NOT NULL auto_increment COMMENT 'ID',
  uid int(10) unsigned NOT NULL default '0' COMMENT '邀請人',
  `code` char(20) NOT NULL default '' COMMENT '邀請碼',
  fuid int(10) unsigned NOT NULL default '0' COMMENT '受邀人UID',
  fusername char(20) NOT NULL default '' COMMENT '受邀人姓名',
  `type` tinyint(1) NOT NULL default '0' COMMENT '郵件邀請 1是0否',
  email char(40) NOT NULL default '' COMMENT '邀請Email',
  sms char(15) NOT NULL default '' COMMENT '邀請手機',
  inviteip char(15) NOT NULL default '' COMMENT '邀請IP',
  appid mediumint(8) unsigned NOT NULL default '0' COMMENT '應用ID',
  dateline int(10) unsigned NOT NULL default '0' COMMENT '邀請碼生成時間',
  endtime int(10) unsigned NOT NULL default '0' COMMENT '邀請碼結束時間',
  regdateline int(10) unsigned NOT NULL DEFAULT '0' COMMENT '註冊時間',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '邀請碼狀態',
  orderid char(32) NOT NULL default '' COMMENT '購買邀請碼的訂單號id',
  PRIMARY KEY (id),
  KEY uid (uid, dateline)
) ENGINE=MyISAM COMMENT='邀請表';

DROP TABLE IF EXISTS pre_common_mailcron;
CREATE TABLE pre_common_mailcron (
  cid mediumint(8) unsigned NOT NULL auto_increment,
  touid int(10) unsigned NOT NULL default '0',
  email varchar(100) NOT NULL default '',
  sendtime int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (cid),
  KEY sendtime (sendtime)
) ENGINE=MyISAM COMMENT='郵件計劃任務表';

DROP TABLE IF EXISTS pre_common_smscron;
CREATE TABLE pre_common_smscron (
  cid mediumint(8) unsigned NOT NULL auto_increment,
  touid int(10) unsigned NOT NULL default '0',
  sms varchar(30) NOT NULL default '',
  sendtime int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (cid),
  KEY sendtime (sendtime)
) ENGINE=MyISAM COMMENT='短信計劃任務表';

DROP TABLE IF EXISTS pre_common_mailqueue;
CREATE TABLE pre_common_mailqueue (
  qid mediumint(8) unsigned NOT NULL auto_increment,
  cid mediumint(8) unsigned NOT NULL default '0',
  `subject` text NOT NULL,
  message text NOT NULL,
  dateline int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (qid),
  KEY mcid (cid,dateline)
) ENGINE=MyISAM COMMENT='郵件隊列表';

DROP TABLE IF EXISTS pre_common_smsqueue;
CREATE TABLE pre_common_smsqueue (
  qid mediumint(8) unsigned NOT NULL auto_increment,
  cid mediumint(8) unsigned NOT NULL default '0',
  message text NOT NULL,
  dateline int(10) unsigned NOT NULL default '0',
  temptype varchar(30) NOT NULL default '',
  tempsign varchar(50) NOT NULL default '',
  template varchar(500) NOT NULL default '',
  PRIMARY KEY  (qid),
  KEY mcid (cid,dateline)
) ENGINE=MyISAM COMMENT='短信隊列表';

DROP TABLE IF EXISTS pre_common_member;
CREATE TABLE pre_common_member (
  uid int(10) unsigned NOT NULL auto_increment COMMENT '會員id',
  email char(40) NOT NULL default '' COMMENT '郵箱',
  sms char(15) NOT NULL default '' COMMENT '手機',
  username char(15) NOT NULL default '' COMMENT '用戶名',
  `password` char(32) NOT NULL default '' COMMENT '密碼',
  `status` tinyint(1) NOT NULL default '0' COMMENT '判斷用戶是否已經刪除 需要discuz程序加判斷，並增加整體清理的功能。原home字段為flag',
  emailstatus tinyint(1) NOT NULL default '0' COMMENT 'email是否經過驗證 home字段為emailcheck',
  smsstatus tinyint(1) NOT NULL default '0' COMMENT '手機是否經過驗證 home字段為smscheck',
  avatarstatus tinyint(1) NOT NULL default '0' COMMENT '是否有頭像 home字段為avatar',
  videophotostatus tinyint(1) NOT NULL default '0' COMMENT '視頻認證狀態 home',
  adminid tinyint(1) NOT NULL default '0' COMMENT '管理員id',
  groupid smallint(6) unsigned NOT NULL default '0' COMMENT '會員組id',
  groupexpiry int(10) unsigned NOT NULL default '0' COMMENT '用戶組有效期',
  extgroupids char(20) NOT NULL default '' COMMENT '擴展用戶組',
  regdate int(10) unsigned NOT NULL default '0' COMMENT '註冊時間',
  credits int(10) NOT NULL default '0' COMMENT '總積分',
  notifysound tinyint(1) NOT NULL default '0' COMMENT '短信聲音',
  timeoffset char(4) NOT NULL default '' COMMENT '時區校正',
  newpm smallint(6) unsigned NOT NULL default '0' COMMENT '新短消息數量',
  newprompt smallint(6) unsigned NOT NULL default '0' COMMENT '新提醒數目',
  accessmasks tinyint(1) NOT NULL default '0' COMMENT '標誌',
  allowadmincp tinyint(1) NOT NULL default '0' COMMENT '標誌',
  onlyacceptfriendpm tinyint(1) NOT NULL default '0' COMMENT '是否只接收好友短消息',
  conisbind tinyint(1) unsigned NOT NULL default '0' COMMENT '用戶是否綁定QC',
  freeze tinyint(1) NOT NULL default '0' COMMENT '是否凍結',
  PRIMARY KEY  (uid),
  UNIQUE KEY `username` (`username`),
  KEY `email` (`email`),
  KEY `sms` (`sms`),
  KEY `groupid` (`groupid`),
  KEY `conisbind` (`conisbind`),
  KEY `regdate` (`regdate`)
) ENGINE=MyISAM COMMENT='用戶主表';

DROP TABLE IF EXISTS pre_common_member_openid;
CREATE TABLE pre_common_member_openid (
  `uid` int(10) NOT NULL DEFAULT '0' COMMENT '會員id',
  `type` varchar(10) NOT NULL DEFAULT '' COMMENT '授權類型',
  `openid` varchar(64) NOT NULL DEFAULT '' COMMENT '單應用唯一碼',
  `unionid` varchar(64) NOT NULL DEFAULT '' COMMENT '多應用唯一碼',
  `access_token` varchar(128) NOT NULL DEFAULT '' COMMENT '授權碼',
  `refresh_token` varchar(128) NOT NULL DEFAULT '' COMMENT '刷新授權碼',
  `dateline` int(10) NOT NULL COMMENT '授權時間',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM COMMENT='用戶第三方授權表';

DROP TABLE IF EXISTS pre_common_member_secwhite;
CREATE TABLE pre_common_member_secwhite (
  `uid` int(10) NOT NULL COMMENT '會員id',
  `dateline` int(10) NOT NULL COMMENT '時間',
  PRIMARY KEY (`uid`)
) ENGINE=MEMORY COMMENT='驗證碼用戶白名單表';

DROP TABLE IF EXISTS pre_common_member_newprompt;
CREATE TABLE pre_common_member_newprompt (
  uid int(10) unsigned NOT NULL COMMENT '會員id',
  `data` varchar(255) NOT NULL default '' COMMENT 'array(提醒類型=>數量)',
  PRIMARY KEY  (uid)
) ENGINE=MyISAM COMMENT='用戶新提醒數量表';

DROP TABLE IF EXISTS pre_common_member_count;
CREATE TABLE pre_common_member_count (
  uid int(10) unsigned NOT NULL COMMENT '會員id',
  extcredits1 int(10) NOT NULL default '0' COMMENT '聲望',
  extcredits2 int(10) NOT NULL default '0' COMMENT '金錢',
  extcredits3 int(10) NOT NULL default '0' COMMENT '擴展',
  extcredits4 int(10) NOT NULL default '0' COMMENT '擴展',
  extcredits5 int(10) NOT NULL default '0' COMMENT '擴展',
  extcredits6 int(10) NOT NULL default '0' COMMENT '擴展',
  extcredits7 int(10) NOT NULL default '0' COMMENT '擴展',
  extcredits8 int(10) NOT NULL default '0' COMMENT '擴展',
  friends smallint(6) unsigned NOT NULL default '0' COMMENT '好友個數 home',
  posts mediumint(8) unsigned NOT NULL default '0' COMMENT '帖子數',
  threads mediumint(8) unsigned NOT NULL default '0' COMMENT '主題數',
  digestposts smallint(6) unsigned NOT NULL default '0' COMMENT '精華數',
  doings smallint(6) unsigned NOT NULL default '0' COMMENT '記錄數',
  blogs smallint(6) unsigned NOT NULL default '0' COMMENT '日誌數',
  albums smallint(6) unsigned NOT NULL default '0' COMMENT '相冊數',
  sharings smallint(6) unsigned NOT NULL default '0' COMMENT '分享數',
  attachsize int(10) unsigned NOT NULL default '0' COMMENT '上傳附件佔用的空間 home',
  views mediumint(8) unsigned NOT NULL default '0' COMMENT '空間查看數',
  oltime smallint(6) unsigned NOT NULL default '0' COMMENT '在線時間',
  todayattachs smallint(6) unsigned NOT NULL default '0' COMMENT '當天上傳附件數',
  todayattachsize int(10) unsigned NOT NULL default '0' COMMENT '當天上傳附件容量',
  feeds mediumint(8) unsigned NOT NULL default '0' COMMENT '廣播數',
  follower mediumint(8) unsigned NOT NULL default '0' COMMENT '聽眾數量',
  following mediumint(8) unsigned NOT NULL default '0' COMMENT '收聽數量',
  newfollower mediumint(8) unsigned NOT NULL default '0' COMMENT '新增聽眾數量',
  blacklist mediumint(8) unsigned NOT NULL default '0' COMMENT '拉黑用戶數',
  PRIMARY KEY  (uid),
  KEY posts (posts)
) ENGINE=MyISAM COMMENT='用戶統計表';

DROP TABLE IF EXISTS pre_common_member_login;
CREATE TABLE pre_common_member_login (
  `uid` int(10) NOT NULL COMMENT '會員id',
  loginname char(20) NOT NULL default '' COMMENT '登錄名',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `loginname` (`loginname`)
) ENGINE=MyISAM COMMENT='用戶登錄名表';

DROP TABLE IF EXISTS pre_common_member_field_forum;
CREATE TABLE pre_common_member_field_forum (
  uid int(10) unsigned NOT NULL COMMENT '會員id',
  publishfeed tinyint(3) NOT NULL default '0' COMMENT '用戶自定義發送哪些類型的feed(原字段為customaddfeed)',
  customshow tinyint(1) unsigned NOT NULL default '26' COMMENT '自定義帖子顯示模式',
  customstatus varchar(30) NOT NULL default '' COMMENT '自定義頭銜',
  medals text NOT NULL COMMENT '勳章信息',
  sightml text NOT NULL COMMENT '簽名',
  groupterms text NOT NULL COMMENT '公共用戶組',
  authstr varchar(20) NOT NULL default '' COMMENT '找回密碼驗證串',
  groups mediumtext NOT NULL COMMENT '用戶所有群組',
  attentiongroup varchar(255) NOT NULL default '' COMMENT '用戶偏好',
  PRIMARY KEY  (uid)
) ENGINE=MyISAM COMMENT='用戶論壇字段表';

DROP TABLE IF EXISTS pre_common_member_field_home;
CREATE TABLE pre_common_member_field_home (
  uid int(10) unsigned NOT NULL COMMENT '會員id',
  videophoto varchar(255) NOT NULL default '' COMMENT '視頻認證照片地址 home',
  spacename varchar(255) NOT NULL default '' COMMENT '空間名稱',
  spacedescription varchar(255) NOT NULL default '' COMMENT '空間簡介',
  `domain` char(15) NOT NULL default '' COMMENT '空間綁定二級域名 home',
  addsize int(10) unsigned NOT NULL default '0' COMMENT '額外授予的上傳空間 home',
  addfriend smallint(6) unsigned NOT NULL default '0' COMMENT '額外允許增加的好友數 home',
  menunum smallint(6) unsigned NOT NULL default '0' COMMENT '應用顯示個數',
  theme varchar(20) NOT NULL default '' COMMENT '空間風格主題 home',
  spacecss text NOT NULL COMMENT '個人空間自定義css home',
  blockposition text NOT NULL COMMENT '個人空間自定義模塊位置及相關參數 home',
  recentnote text NOT NULL COMMENT '最近一次行為記錄',
  spacenote text NOT NULL COMMENT '最近一次twitter',
  privacy text NOT NULL COMMENT 'home隱私設置(注意要和論壇發feed等開關的設置結合)',
  feedfriend mediumtext NOT NULL COMMENT '接受feed的好友緩存',
  acceptemail text NOT NULL COMMENT '接受新通知郵件及設置郵件接收參數',
  acceptsms text NOT NULL COMMENT '接受新通知短信及設置短信接收參數',
  magicgift text NOT NULL COMMENT '道具紅包卡相關信息',
  stickblogs text NOT NULL COMMENT '置頂的日誌ID',
  PRIMARY KEY  (uid),
  KEY domain (domain)
) ENGINE=MyISAM COMMENT='用戶家園字段表';

DROP TABLE IF EXISTS pre_common_member_profile;
CREATE TABLE pre_common_member_profile (
  uid int(10) unsigned NOT NULL COMMENT '會員id',
  realname varchar(255) NOT NULL default '' COMMENT '實名',
  gender tinyint(1) NOT NULL default '0' COMMENT '性別\n(0:保密 1:男 2:女)',
  birthyear smallint(6) unsigned NOT NULL default '0',
  birthmonth tinyint(3) unsigned NOT NULL default '0',
  birthday tinyint(3) unsigned NOT NULL default '0',
  constellation varchar(255) NOT NULL default '' COMMENT '星座(根據生日自動計算)',
  zodiac varchar(255) NOT NULL default '' COMMENT '生肖(根據生日自動計算)',
  telephone varchar(255) NOT NULL default '' COMMENT '固定電話',
  mobile varchar(255) NOT NULL default '' COMMENT '手機',
  idcardtype varchar(255) NOT NULL default '' COMMENT '證件類型：身份證 護照 軍官證等',
  idcard varchar(255) NOT NULL default '' COMMENT '證件號碼',
  address varchar(255) NOT NULL default '' COMMENT '郵寄地址',
  zipcode varchar(255) NOT NULL default '' COMMENT '郵編',
  nationality varchar(255) NOT NULL default '' COMMENT '國籍',
  birthprovince varchar(255) NOT NULL default '' COMMENT '出生省份',
  birthcity varchar(255) NOT NULL default '' COMMENT '出生城市',
  birthdist varchar(20) NOT NULL default '' COMMENT '出生行政區/縣',
  birthcommunity varchar(255) NOT NULL default '' COMMENT '出生小區',
  resideprovince varchar(255) NOT NULL default '' COMMENT '居住省份',
  residecity varchar(255) NOT NULL default '' COMMENT '居住城市',
  residedist varchar(20) NOT NULL default '' COMMENT '居住行政區/縣',
  residecommunity varchar(255) NOT NULL default '' COMMENT '居住小區',
  residesuite varchar(255) NOT NULL default '' COMMENT '小區、寫字樓門牌號',
  graduateschool varchar(255) NOT NULL default '' COMMENT '畢業學校',
  company varchar(255) NOT NULL default '' COMMENT ' 公司',
  education varchar(255) NOT NULL default '' COMMENT ' 學歷',
  occupation varchar(255) NOT NULL default '' COMMENT ' 職業',
  `position` varchar(255) NOT NULL default '' COMMENT '職位',
  revenue varchar(255) NOT NULL default '' COMMENT ' 年收入',
  affectivestatus varchar(255) NOT NULL default '' COMMENT ' 情感狀態',
  lookingfor varchar(255) NOT NULL default '' COMMENT ' 交友目的（交友類型）',
  bloodtype varchar(255) NOT NULL default '' COMMENT '血型',
  height varchar(255) NOT NULL default '' COMMENT ' 身高',
  weight varchar(255) NOT NULL default '' COMMENT ' 體重',
  alipay varchar(255) NOT NULL default '' COMMENT '支付寶帳號',
  icq varchar(255) NOT NULL default '' COMMENT 'ICQ',
  qq varchar(255) NOT NULL default '' COMMENT 'QQ',
  yahoo varchar(255) NOT NULL default '' COMMENT 'YAHOO',
  msn varchar(255) NOT NULL default '' COMMENT 'MSN',
  taobao varchar(255) NOT NULL default '' COMMENT '阿里旺旺',
  site varchar(255) NOT NULL default '' COMMENT '主頁',
  bio text NOT NULL COMMENT '自我介紹 來自論壇bio字段',
  interest text NOT NULL COMMENT '興趣愛好',
  field1 text NOT NULL COMMENT '自定義字段1',
  field2 text NOT NULL COMMENT '自定義字段2',
  field3 text NOT NULL COMMENT '自定義字段3',
  field4 text NOT NULL COMMENT '自定義字段4',
  field5 text NOT NULL COMMENT '自定義字段5',
  field6 text NOT NULL COMMENT '自定義字段6',
  field7 text NOT NULL COMMENT '自定義字段7',
  field8 text NOT NULL COMMENT '自定義字段8',
  PRIMARY KEY  (uid)
) ENGINE=MyISAM COMMENT='用戶欄目表';

DROP TABLE IF EXISTS pre_common_member_status;
CREATE TABLE pre_common_member_status (
  uid int(10) unsigned NOT NULL COMMENT '會員id',
  regip char(15) NOT NULL default '' COMMENT '註冊IP',
  lastip char(15) NOT NULL default '' COMMENT '最後登錄IP',
  port smallint(6) unsigned NOT NULL default '0' COMMENT '最後登錄端口號',
  lastvisit int(10) unsigned NOT NULL default '0' COMMENT '最後訪問',
  lastactivity int(10) unsigned NOT NULL default '0' COMMENT '最後活動',
  lastpost int(10) unsigned NOT NULL default '0' COMMENT '最後發表',
  lastsendmail int(10) unsigned NOT NULL default '0' COMMENT '上次發送email時間 home原字段為lastsend',
  lastsendsms int(10) unsigned NOT NULL default '0' COMMENT '上次發送短信時間 home原字段為lastsend',
  invisible tinyint(1) NOT NULL default '0' COMMENT '是否隱身登錄',
  buyercredit smallint(6) NOT NULL default '0' COMMENT '買家信用等級及積分',
  sellercredit smallint(6) NOT NULL default '0' COMMENT '賣家信用等級及積分',
  favtimes mediumint(8) unsigned NOT NULL default '0' COMMENT '個人空間收藏次數',
  sharetimes mediumint(8) unsigned NOT NULL default '0' COMMENT '個人空間分享次數',
  profileprogress tinyint(2) unsigned NOT NULL default '0' COMMENT '個人資料完成度',
  PRIMARY KEY  (uid),
  KEY lastactivity (lastactivity, invisible)
) ENGINE=MyISAM COMMENT='用戶狀態表';

DROP TABLE IF EXISTS pre_common_member_stat_field;
CREATE TABLE pre_common_member_stat_field (
  optionid  mediumint(8) unsigned NOT NULL auto_increment COMMENT '資料統計項 id',
  fieldid varchar(255) NOT NULL default '' COMMENT '資料項字段標誌符',
  fieldvalue varchar(255) NOT NULL default '' COMMENT '字段值' ,
  hash varchar(255) NOT NULL default '' COMMENT '由fieldid和fieldvalue生成的hash',
  users mediumint(8) unsigned NOT NULL default '0' COMMENT '對應用戶數',
  updatetime int(10) unsigned NOT NULL default '0' COMMENT '更新時間',
  PRIMARY KEY (optionid),
  KEY fieldid (fieldid)
) ENGINE=MyISAM COMMENT='用戶資料統計項';

DROP TABLE IF EXISTS pre_common_member_action_log;
CREATE TABLE pre_common_member_action_log (
  id mediumint(8) unsigned NOT NULL auto_increment COMMENT '記錄id',
  uid int(10) unsigned NOT NULL default '0' COMMENT '用戶ID',
  `action` tinyint(5) NOT NULL default '0' COMMENT '操作代碼',
  dateline int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (id),
  KEY dateline (dateline, `action`, uid)
) ENGINE=MyISAM COMMENT='用戶操作日誌表';

DROP TABLE IF EXISTS pre_common_member_forum_buylog;
CREATE TABLE pre_common_member_forum_buylog (
  uid int(10) unsigned NOT NULL COMMENT '會員id',
  fid mediumint(8) unsigned NOT NULL default '0' COMMENT '論壇id',
  `credits` int(10) unsigned NOT NULL default '0' COMMENT '已付金額',
  PRIMARY KEY  (uid, fid),
  KEY fid (fid)
) ENGINE=MyISAM COMMENT='用戶版塊積分付費記錄';

DROP TABLE IF EXISTS pre_common_visit;
CREATE TABLE pre_common_visit (
  `ip` int(10) unsigned NOT NULL default '0' COMMENT '用戶IP',
  `view` int(10) unsigned NOT NULL default '0' COMMENT '訪問次數',
  PRIMARY KEY  (ip),
  KEY `ip` (`ip`, `view`)
) ENGINE=MEMORY COMMENT='用戶訪問日誌表';

DROP TABLE IF EXISTS pre_home_follow;
CREATE TABLE pre_home_follow (
  uid int(10) unsigned NOT NULL default '0' COMMENT '用戶ID',
  username char(15) NOT NULL default '' COMMENT '用戶名',
  followuid int(10) unsigned NOT NULL default '0' COMMENT '被關注用戶ID',
  fusername char(15) NOT NULL default '' COMMENT '被關注用戶名稱',
  bkname varchar(255) NOT NULL default '' COMMENT '用戶備註',
  `status` tinyint(1) NOT NULL default '0' COMMENT '0:正常 1:特殊關注 -1:不能再關注此人',
  mutual tinyint(1) NOT NULL default '0' COMMENT '0:單向 1:已互相關注',
  dateline int(10) unsigned NOT NULL default '0',
  PRIMARY KEY (uid, followuid)
) ENGINE=MyISAM COMMENT='用戶關注關係表';

DROP TABLE IF EXISTS pre_home_follow_feed;
CREATE TABLE pre_home_follow_feed (
  feedid mediumint(8) unsigned NOT NULL auto_increment COMMENT '自增id',
  uid int(10) unsigned NOT NULL default '0' COMMENT '被關注者ID',
  username varchar(15) NOT NULL default '' COMMENT '被關注用戶名',
  tid mediumint(8) unsigned NOT NULL default '0' COMMENT '帖子tid',
  note text NOT NULL COMMENT '轉發理由',
  dateline int(10) unsigned NOT NULL default '0',
  PRIMARY KEY (feedid),
  KEY uid (uid, dateline)
) ENGINE=MyISAM COMMENT='被關注者事件表';

DROP TABLE IF EXISTS pre_home_follow_feed_archiver;
CREATE TABLE pre_home_follow_feed_archiver (
  feedid mediumint(8) unsigned NOT NULL auto_increment COMMENT '自增id',
  uid int(10) unsigned NOT NULL default '0' COMMENT '被關注者ID',
  username varchar(15) NOT NULL default '' COMMENT '被關注用戶名',
  tid mediumint(8) unsigned NOT NULL default '0' COMMENT '帖子tid',
  note text NOT NULL COMMENT '轉發理由',
  dateline int(10) unsigned NOT NULL default '0',
  PRIMARY KEY (feedid),
  KEY uid (uid, dateline)
) ENGINE=MyISAM COMMENT='被關注者事件存檔';

DROP TABLE IF EXISTS pre_common_member_log;
CREATE TABLE pre_common_member_log (
  uid int(10) unsigned NOT NULL default '0',
  `action` char(10) NOT NULL default '' COMMENT 'add,update,delete',
  dateline int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (uid)
) ENGINE=MyISAM COMMENT='漫遊用戶日誌表';

DROP TABLE IF EXISTS pre_common_member_verify;
CREATE TABLE pre_common_member_verify (
  uid int(10) unsigned NOT NULL COMMENT '會員id',
  verify1 tinyint(1) NOT NULL default '0' COMMENT '認證1: -1:被拒絕 0:待審核 1:審核通過',
  verify2 tinyint(1) NOT NULL default '0' COMMENT '認證2: -1:被拒絕 0:待審核 1:審核通過',
  verify3 tinyint(1) NOT NULL default '0' COMMENT '認證3: -1:被拒絕 0:待審核 1:審核通過',
  verify4 tinyint(1) NOT NULL default '0' COMMENT '認證4: -1:被拒絕 0:待審核 1:審核通過',
  verify5 tinyint(1) NOT NULL default '0' COMMENT '認證5: -1:被拒絕 0:待審核 1:審核通過',
  verify6 tinyint(1) NOT NULL default '0' COMMENT '實名認證: -1:被拒絕 0:待審核 1:審核通過',
  verify7 tinyint(1) NOT NULL default '0' COMMENT '視頻認證: -1:被拒絕 0:待審核 1:審核通過',
  PRIMARY KEY (uid),
  KEY verify1 (verify1),
  KEY verify2 (verify2),
  KEY verify3 (verify3),
  KEY verify4 (verify4),
  KEY verify5 (verify5),
  KEY verify6 (verify6),
  KEY verify7 (verify7)
) ENGINE=MyISAM COMMENT='用戶認證表';

DROP TABLE IF EXISTS pre_common_member_verify_info;
CREATE TABLE pre_common_member_verify_info (
  vid mediumint(8) unsigned NOT NULL auto_increment COMMENT '審核id',
  uid int(10) unsigned NOT NULL default '0' COMMENT '會員id',
  username varchar(30) NOT NULL default '' COMMENT '用戶名',
  verifytype tinyint(1) NOT NULL default '0' COMMENT '審核類型0:資料審核, 1:認證1, 2:認證2, 3:認證3, 4:認證4, 5:認證5',
  flag tinyint(1) NOT NULL default '0' COMMENT '-1:被拒絕 0:待審核 1:審核通過',
  field text NOT NULL COMMENT '序列化存儲變化值',
  dateline int(10) unsigned NOT NULL default '0' COMMENT '提交日期',
  PRIMARY KEY (vid),
  KEY verifytype (verifytype, flag),
  KEY uid (uid, verifytype, dateline)
) ENGINE=MyISAM COMMENT='個人信息修改審核';

DROP TABLE IF EXISTS pre_common_member_profile_setting;
CREATE TABLE pre_common_member_profile_setting (
  fieldid varchar(255) NOT NULL default '' COMMENT 'profile字段標誌符',
  available tinyint(1) NOT NULL default '0' COMMENT '是否可用',
  invisible tinyint(1) NOT NULL default '0' COMMENT '是否隱藏',
  needverify tinyint(1) NOT NULL default '0' COMMENT '是否需要審核',
  title varchar(255) NOT NULL default '' COMMENT '欄目標題',
  description varchar(255) NOT NULL default '' COMMENT '解釋說明',
  displayorder smallint(6) unsigned NOT NULL default '0' COMMENT '顯示順序',
  required tinyint(1) NOT NULL default '0' COMMENT '是否必填內容',
  unchangeable tinyint(1) NOT NULL default '0' COMMENT '不可修改',
  showincard tinyint(1) NOT NULL default '0' COMMENT '在名片中顯示',
  showinthread tinyint(1) NOT NULL default '0' COMMENT '在帖子中顯示',
  showinregister tinyint(1) NOT NULL default '0' COMMENT '是否在註冊頁面顯示',
  allowsearch tinyint(1) NOT NULL default '0' COMMENT '是否可搜索',
  formtype varchar(255) NOT NULL COMMENT '表單元素類型',
  size smallint(6) unsigned NOT NULL default '0' COMMENT '內容最大長度',
  choices text NOT NULL COMMENT '選填內容',
  validate text NOT NULL COMMENT '驗證數據的正則表達式',
  PRIMARY KEY  (fieldid)
) ENGINE=MyISAM  COMMENT='個人信息擴展表';

DROP TABLE IF EXISTS pre_common_member_security;
CREATE TABLE pre_common_member_security (
  securityid mediumint(8) unsigned NOT NULL auto_increment COMMENT '審核項id',
  uid int(10) unsigned NOT NULL default '0' COMMENT '會員id',
  username varchar(255) NOT NULL default '' COMMENT '用戶名',
  fieldid varchar(255) NOT NULL default '' COMMENT 'profile字段標誌符',
  oldvalue text NOT NULL COMMENT '舊的profile字段值',
  newvalue text NOT NULL COMMENT '新的profile字段值',
  dateline int(10) unsigned NOT NULL default '0' COMMENT '提交日期',
  PRIMARY KEY  (securityid),
  KEY uid (uid, fieldid),
  KEY dateline (dateline)
) ENGINE=MyISAM COMMENT='個人信息修改審核';

DROP TABLE IF EXISTS pre_common_member_validate;
CREATE TABLE pre_common_member_validate (
  uid int(10) unsigned NOT NULL default '0' COMMENT '會員id',
  submitdate int(10) unsigned NOT NULL default '0' COMMENT '提交日期',
  moddate int(10) unsigned NOT NULL default '0' COMMENT '審核日期',
  admin varchar(15) NOT NULL default '' COMMENT '管理員名',
  submittimes tinyint(3) unsigned NOT NULL default '0' COMMENT '提交的次數',
  `status` tinyint(1) NOT NULL default '0' COMMENT '狀態',
  message text NOT NULL COMMENT '註冊原因',
  remark text NOT NULL COMMENT '管理員留言',
  PRIMARY KEY  (uid),
  KEY `status` (`status`)
) ENGINE=MyISAM COMMENT='用戶審核表';

DROP TABLE IF EXISTS pre_common_member_crime;
CREATE TABLE pre_common_member_crime (
  cid mediumint(8) unsigned NOT NULL auto_increment COMMENT '自增id',
  uid int(10) unsigned NOT NULL default '0' COMMENT '被懲罰操作的用戶id',
  operatorid mediumint(8) unsigned NOT NULL default '0' COMMENT '進行懲罰操作的用戶id',
  operator varchar(15) NOT NULL COMMENT '進行懲罰操作的用戶名',
  `action` tinyint(5) NOT NULL COMMENT '懲罰行為',
  reason text NOT NULL COMMENT '懲罰理由',
  dateline int(10) unsigned NOT NULL default '0' COMMENT '懲罰操作時間',
  PRIMARY KEY  (cid),
  KEY uid (uid,`action`,dateline)
) ENGINE=MyISAM COMMENT='用戶懲罰操作表';

DROP TABLE IF EXISTS pre_common_member_grouppm;
CREATE TABLE pre_common_member_grouppm (
  uid int(10) unsigned NOT NULL default '0' COMMENT '會員id',
  gpmid smallint(6) unsigned NOT NULL auto_increment COMMENT '消息id',
  status tinyint(1) NOT NULL default '0' COMMENT '0=未讀 1=已讀 -1=刪除',
  dateline int(10) unsigned NOT NULL default '0' COMMENT '閱讀時間',
  PRIMARY KEY  (uid, gpmid)
) ENGINE=MyISAM COMMENT='群發短消息用戶記錄表';

DROP TABLE IF EXISTS pre_common_grouppm;
CREATE TABLE pre_common_grouppm (
  id smallint(6) unsigned NOT NULL auto_increment COMMENT '消息id',
  authorid mediumint(8) unsigned NOT NULL default '0' COMMENT '作者id',
  author varchar(15) NOT NULL default '' COMMENT '作者姓名',
  dateline int(10) unsigned NOT NULL default '0' COMMENT '時間',
  message text NOT NULL COMMENT '消息',
  numbers mediumint(8) unsigned NOT NULL default '0' COMMENT '數量',
  PRIMARY KEY  (id)
) ENGINE=MyISAM COMMENT='群發短消息表';

DROP TABLE IF EXISTS pre_common_myapp;
CREATE TABLE pre_common_myapp (
  appid mediumint(8) unsigned NOT NULL default '0' COMMENT '應用id',
  appname varchar(60) NOT NULL default '' COMMENT '應用名稱',
  narrow tinyint(1) NOT NULL default '0' COMMENT '是否顯示為窄的profile box',
  flag tinyint(1) NOT NULL default '0' COMMENT '應用狀態（黑白名單、默認應用等）',
  version mediumint(8) unsigned NOT NULL default '0' COMMENT '應用版本號',
  userpanelarea tinyint(1) NOT NULL default '0' COMMENT 'userabout顯示區域、1主區、2、副區、3應用區',
  canvastitle varchar(60) NOT NULL default '' COMMENT 'canvas頁面標題',
  fullscreen tinyint(1) NOT NULL default '0' COMMENT '是否是全屏應用',
  displayuserpanel tinyint(1) NOT NULL default '0' COMMENT '是否顯示應用右側的用戶菜單',
  displaymethod tinyint(1) NOT NULL default '0' COMMENT '顯示方式（iframe/myml）',
  displayorder smallint(6) unsigned NOT NULL default '0' COMMENT '顯示順序',
  appstatus tinyint(2) NOT NULL default '0' COMMENT '標識應用1:新、2:熱',
  iconstatus tinyint(2) NOT NULL default '0' COMMENT '應用圖標是否已下載到本地。-1：失敗；0：未下載；1：已下載',
  icondowntime int(10) unsigned NOT NULL default '0' COMMENT '應用圖標下載到本地時間',
  PRIMARY KEY (appid),
  KEY flag (flag,displayorder)
) ENGINE=MyISAM COMMENT='漫遊應用表';

DROP TABLE IF EXISTS pre_common_myinvite;
CREATE TABLE pre_common_myinvite (
  id mediumint(8) unsigned NOT NULL auto_increment COMMENT '邀請id',
  typename varchar(100) NOT NULL default '' COMMENT '邀請名稱',
  appid mediumint(8) NOT NULL default '0' COMMENT '應用id',
  `type` tinyint(1) NOT NULL default '0' COMMENT '類型(request 邀請/invite 請求)',
  fromuid int(10) unsigned NOT NULL default '0' COMMENT '邀請者id',
  touid int(10) unsigned NOT NULL default '0' COMMENT '接收者id',
  myml text NOT NULL COMMENT '邀請內容',
  dateline int(10) unsigned NOT NULL default '0' COMMENT '發送邀請的時間戳',
  `hash` int(10) unsigned NOT NULL default '0' COMMENT 'hash標記',
  PRIMARY KEY  (id),
  KEY `hash` (`hash`),
  KEY uid (touid,dateline)
) ENGINE=MyISAM COMMENT='用戶邀請表';

DROP TABLE IF EXISTS pre_common_nav;
CREATE TABLE pre_common_nav (
  id smallint(6) unsigned NOT NULL auto_increment COMMENT '項目id',
  parentid smallint(6) unsigned NOT NULL default '0' COMMENT '父 id(navtype=0)',
  `name` varchar(255) NOT NULL COMMENT '導航名稱',
  title varchar(255) NOT NULL COMMENT '導航說明',
  url varchar(255) NOT NULL COMMENT '導航鏈接',
  identifier varchar(255) NOT NULL COMMENT '鏈接標識/相關ID',
  target tinyint(1) NOT NULL default '0' COMMENT '目標框架\n(0:本窗口 1:新窗口)',
  `type` tinyint(1) NOT NULL default '0' COMMENT '類型 0 系統  1 自定義 3 插件 4 頻道 5 版塊',
  available tinyint(1) NOT NULL default '0' COMMENT '是否可用',
  displayorder tinyint(3) NOT NULL COMMENT '顯示順序',
  highlight tinyint(1) NOT NULL default '0' COMMENT '樣式(navtype=0)',
  `level` tinyint(1) NOT NULL default '0' COMMENT '使用等級\n(0:遊客 1:會員 2:版主 3:管理員)',
  `subtype` tinyint(1) NOT NULL DEFAULT '0' COMMENT '二級導航樣式(navtype=0) 頂部導航位置(navtype=4)',
  `subcols` tinyint(1) NOT NULL DEFAULT '0' COMMENT '橫排一行顯示的條目數(navtype=0)',
  `icon` varchar(255) NOT NULL COMMENT '圖標地址(navtype=1、3)',
  `subname` varchar(255) NOT NULL COMMENT '副導航名稱(navtype=1)',
  `suburl` varchar(255) NOT NULL COMMENT '副導航地址(navtype=1)',
  `navtype` tinyint(1) NOT NULL default '0' COMMENT '導航類型\n(0:主導航 1:底部導航 2:家園導航 3:快捷導航 4:頂部導航)',
  logo varchar(255) NOT NULL COMMENT '自定義 Logo',
  PRIMARY KEY  (id),
  KEY `navtype` (`navtype`)
) ENGINE=MyISAM COMMENT='自定義導航欄表';

DROP TABLE IF EXISTS pre_common_onlinetime;
CREATE TABLE pre_common_onlinetime (
  uid int(10) unsigned NOT NULL DEFAULT '0',
  thismonth smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '本月在線時間',
  total mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '總在線時間',
  lastupdate int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (uid)
) ENGINE=MyISAM COMMENT='在線時間表';

DROP TABLE IF EXISTS pre_common_regip;
CREATE TABLE pre_common_regip (
  ip char(15) NOT NULL default '' COMMENT 'IP地址',
  dateline int(10) unsigned NOT NULL default '0' COMMENT '限制時間',
  count smallint(6) NOT NULL default '0' COMMENT '限制數量',
  KEY ip (ip)
) ENGINE=MyISAM COMMENT='註冊IP限製表';

DROP TABLE IF EXISTS pre_common_secquestion;
CREATE TABLE pre_common_secquestion (
  id smallint(6) unsigned NOT NULL auto_increment COMMENT '驗證問題id',
  `type` tinyint(1) unsigned NOT NULL COMMENT '驗證問題類型',
  question text NOT NULL COMMENT '驗證問題',
  answer varchar(255) NOT NULL COMMENT '問題答案',
  PRIMARY KEY  (id)
) ENGINE=MyISAM COMMENT='驗證問題數據表';

DROP TABLE IF EXISTS pre_common_session;
CREATE TABLE pre_common_session (
  sid char(6) NOT NULL default '' COMMENT 'sid',
  ip1 tinyint(3) unsigned NOT NULL default '0' COMMENT 'IP段',
  ip2 tinyint(3) unsigned NOT NULL default '0' COMMENT 'IP段',
  ip3 tinyint(3) unsigned NOT NULL default '0' COMMENT 'IP段',
  ip4 tinyint(3) unsigned NOT NULL default '0' COMMENT 'IP段',
  uid int(10) unsigned NOT NULL default '0' COMMENT '會員id',
  username char(15) NOT NULL default '' COMMENT '會員名',
  groupid smallint(6) unsigned NOT NULL default '0' COMMENT '會員組',
  invisible tinyint(1) NOT NULL default '0' COMMENT '是否隱身登錄',
  `action` tinyint(1) unsigned NOT NULL default '0' COMMENT '當前動作',
  lastactivity int(10) unsigned NOT NULL default '0' COMMENT '最後活動時間',
  lastolupdate int(10) unsigned NOT NULL default '0' COMMENT '在線時間最後更新',
  fid mediumint(8) unsigned NOT NULL default '0' COMMENT '論壇id',
  tid mediumint(8) unsigned NOT NULL default '0' COMMENT '主題id',
  UNIQUE KEY sid (sid),
  KEY uid (uid)
) ENGINE=MEMORY COMMENT='會員認證表';

DROP TABLE IF EXISTS pre_common_setting;
CREATE TABLE pre_common_setting (
  skey varchar(255) NOT NULL default '' COMMENT '變量名',
  svalue text NOT NULL COMMENT '值',
  PRIMARY KEY  (skey)
) ENGINE=MyISAM COMMENT='設置表';

DROP TABLE IF EXISTS pre_common_smiley;
CREATE TABLE pre_common_smiley (
  id smallint(6) unsigned NOT NULL auto_increment COMMENT '表情id',
  typeid smallint(6) unsigned NOT NULL COMMENT '表情分類 id',
  displayorder tinyint(1) NOT NULL default '0' COMMENT '顯示順序',
  `type` enum('smiley','stamp','stamplist') NOT NULL default 'smiley' COMMENT '類型',
  `code` varchar(30) NOT NULL default '' COMMENT '標記',
  url varchar(30) NOT NULL default '' COMMENT '路徑',
  PRIMARY KEY  (id),
  KEY `type` (`type`, displayorder)
) ENGINE=MyISAM COMMENT='表情表';

DROP TABLE IF EXISTS pre_common_stat;
CREATE TABLE pre_common_stat (
  daytime int(10) unsigned NOT NULL default '0' COMMENT '時間',
  login int(10) unsigned NOT NULL default '0' COMMENT '登陸',
  mobilelogin int(10) unsigned NOT NULL default '0' COMMENT '手機登陸',
  connectlogin int(10) unsigned NOT NULL default '0' COMMENT 'QQConnect登陸',
  register int(10) unsigned NOT NULL default '0' COMMENT '註冊',
  invite int(10) unsigned NOT NULL default '0' COMMENT '邀請',
  appinvite int(10) unsigned NOT NULL default '0' COMMENT '應用邀請',
  doing int(10) unsigned NOT NULL default '0' COMMENT '記錄',
  blog int(10) unsigned NOT NULL default '0' COMMENT '日誌',
  pic int(10) unsigned NOT NULL default '0' COMMENT '圖片',
  poll int(10) unsigned NOT NULL default '0' COMMENT '投票',
  activity int(10) unsigned NOT NULL default '0' COMMENT '活動',
  `share` int(10) unsigned NOT NULL default '0' COMMENT '分享',
  thread int(10) unsigned NOT NULL default '0' COMMENT '主題',
  docomment int(10) unsigned NOT NULL default '0' COMMENT '記錄評論',
  blogcomment int(10) unsigned NOT NULL default '0' COMMENT '日誌評論',
  piccomment int(10) unsigned NOT NULL default '0' COMMENT '圖片評論',
  sharecomment int(10) unsigned NOT NULL default '0' COMMENT '分享評論',
  reward int(10) unsigned NOT NULL default '0' COMMENT '懸賞',
  debate int(10) unsigned NOT NULL default '0' COMMENT '辯論',
  trade int(10) unsigned NOT NULL default '0' COMMENT '商品',
  `group` int(10) unsigned NOT NULL default '0' COMMENT '群組',
  groupjoin int(10) unsigned NOT NULL default '0' COMMENT '參與群組',
  groupthread int(10) unsigned NOT NULL default '0' COMMENT '群組主題',
  grouppost int(10) unsigned NOT NULL default '0' COMMENT '群組回復',
  post int(10) unsigned NOT NULL default '0' COMMENT '主題回復',
  wall int(10) unsigned NOT NULL default '0' COMMENT '留言',
  poke int(10) unsigned NOT NULL default '0' COMMENT '打招呼',
  click int(10) unsigned NOT NULL default '0' COMMENT '表態',
  sendpm int(10) unsigned NOT NULL default '0' COMMENT '發送PM',
  friend int(10) unsigned NOT NULL default '0' COMMENT '成為好友',
  addfriend int(10) unsigned NOT NULL default '0' COMMENT '好友請求',
  PRIMARY KEY  (daytime)
) ENGINE=MyISAM COMMENT='趨勢統計';

DROP TABLE IF EXISTS pre_common_statuser;
CREATE TABLE pre_common_statuser (
  uid int(10) unsigned NOT NULL default '0',
  daytime int(10) unsigned NOT NULL default '0',
  `type` char(20) NOT NULL default '' COMMENT '各種用戶行為如：invite、register、login...',
  KEY uid (uid)
) ENGINE=MyISAM COMMENT='統計用戶表';

DROP TABLE IF EXISTS pre_common_style;
CREATE TABLE pre_common_style (
  styleid smallint(6) unsigned NOT NULL auto_increment COMMENT '風格id',
  `name` varchar(20) NOT NULL default '' COMMENT '風格名稱',
  available tinyint(1) NOT NULL default '1' COMMENT '風格是否可用',
  templateid smallint(6) unsigned NOT NULL default '0' COMMENT '對應模板id',
  extstyle varchar(255) NOT NULL default '' COMMENT '配色',
  PRIMARY KEY  (styleid)
) ENGINE=MyISAM COMMENT='風格表';

DROP TABLE IF EXISTS pre_common_stylevar;
CREATE TABLE pre_common_stylevar (
  stylevarid smallint(6) unsigned NOT NULL auto_increment COMMENT '風格變量id',
  styleid smallint(6) unsigned NOT NULL default '0' COMMENT '風格id',
  variable text NOT NULL COMMENT '變量名',
  substitute text NOT NULL COMMENT '變量賦值',
  PRIMARY KEY  (stylevarid),
  KEY styleid (styleid)
) ENGINE=MyISAM COMMENT='風格變量表';

DROP TABLE IF EXISTS pre_common_syscache;
CREATE TABLE pre_common_syscache (
  cname varchar(32) NOT NULL COMMENT '緩存名稱',
  `ctype` tinyint(3) unsigned NOT NULL COMMENT '緩存類型 0=value, serialize=1',
  dateline int(10) unsigned NOT NULL COMMENT '緩存生成時間',
  `data` mediumblob NOT NULL COMMENT '緩存數據',
  PRIMARY KEY  (cname)
) ENGINE=MyISAM COMMENT='緩存數據表';

DROP TABLE IF EXISTS pre_common_template;
CREATE TABLE pre_common_template (
  templateid smallint(6) unsigned NOT NULL auto_increment COMMENT '模板id',
  `name` varchar(30) NOT NULL default '' COMMENT '名稱',
  `directory` varchar(100) NOT NULL default '' COMMENT '目錄',
  copyright varchar(100) NOT NULL default '' COMMENT '版權',
  PRIMARY KEY  (templateid)
) ENGINE=MyISAM COMMENT='模板表';

DROP TABLE IF EXISTS pre_common_usergroup;
CREATE TABLE pre_common_usergroup (
  groupid smallint(6) unsigned NOT NULL auto_increment COMMENT '會員組id',
  radminid tinyint(3) NOT NULL default '0' COMMENT '關聯關管理組',
  `type` enum('system','special','member') NOT NULL default 'member' COMMENT '類型',
  system varchar(255) NOT NULL default 'private' COMMENT '會員是否可以自由進出',
  grouptitle varchar(255) NOT NULL default '' COMMENT '組頭銜',
  creditshigher int(10) NOT NULL default '0' COMMENT '該組的積分上限',
  creditslower int(10) NOT NULL default '0' COMMENT '該組的積分下限',
  stars tinyint(3) NOT NULL default '0' COMMENT '星星數量',
  color varchar(255) NOT NULL default '' COMMENT '組頭銜顏色',
  icon varchar(255) NOT NULL default '',
  allowvisit tinyint(1) NOT NULL default '0' COMMENT '允許訪問',
  allowsendpm tinyint(1) NOT NULL default '1' COMMENT '是否允許發送短信息',
  allowinvite tinyint(1) NOT NULL default '0' COMMENT '允許使用邀請註冊',
  allowmailinvite tinyint(1) NOT NULL default '0' COMMENT '允許通過論壇郵件系統發送邀請碼',
  allowsmsinvite tinyint(1) NOT NULL default '0' COMMENT '允許通過短信發送邀請碼',
  maxinvitenum tinyint(3) unsigned NOT NULL default '0' COMMENT '最大邀請碼擁有數量',
  inviteprice smallint(6) unsigned NOT NULL default '0' COMMENT '邀請碼購買價格',
  maxinviteday smallint(6) unsigned NOT NULL default '0' COMMENT '邀請碼有效期',
  PRIMARY KEY  (groupid),
  KEY creditsrange (creditshigher,creditslower)
) ENGINE=MyISAM COMMENT='用戶組表';

DROP TABLE IF EXISTS pre_common_usergroup_field;
CREATE TABLE pre_common_usergroup_field (
  groupid smallint(6) unsigned NOT NULL COMMENT '會員組id',
  readaccess tinyint(3) unsigned NOT NULL default '0' COMMENT '閱讀權限',
  allowpost tinyint(1) NOT NULL default '0' COMMENT '允許發帖',
  allowreply tinyint(1) NOT NULL default '0' COMMENT '允許回復',
  allowpostpoll tinyint(1) NOT NULL default '0' COMMENT '允許發表投票',
  allowpostreward tinyint(1) NOT NULL default '0' COMMENT '允許發表懸賞',
  allowposttrade tinyint(1) NOT NULL default '0' COMMENT '允許發表交易',
  allowpostactivity tinyint(1) NOT NULL default '0' COMMENT '允許發表活動',
  allowdirectpost tinyint(1) NOT NULL default '0' COMMENT '是否需要審核',
  allowgetattach tinyint(1) NOT NULL default '0' COMMENT '允許下載附件',
  allowgetimage tinyint(1) NOT NULL default '0' COMMENT '允許查看圖片',
  allowpostattach tinyint(1) NOT NULL default '0' COMMENT '允許上傳附件',
  allowpostimage tinyint(1) NOT NULL default '0' COMMENT '允許上傳圖片',
  allowvote tinyint(1) NOT NULL default '0' COMMENT '允許參與投票',
  allowsearch tinyint(1) NOT NULL default '0' COMMENT '允許搜索',
  allowcstatus tinyint(1) NOT NULL default '0' COMMENT '允許自定義頭銜',
  allowinvisible tinyint(1) NOT NULL default '0' COMMENT '允許隱身登錄',
  allowtransfer tinyint(1) NOT NULL default '0' COMMENT '允許積分轉帳',
  allowsetreadperm tinyint(1) NOT NULL default '0' COMMENT '允許設置閱讀權限',
  allowsetattachperm tinyint(1) NOT NULL default '0' COMMENT '允許設置附件權限',
  allowposttag tinyint(1) NOT NULL default '0' COMMENT '允許使用標籤',
  allowhidecode tinyint(1) NOT NULL default '0' COMMENT '允許使用hide代碼',
  allowhtml tinyint(1) NOT NULL default '0' COMMENT '允許使用html',
  allowanonymous tinyint(1) NOT NULL default '0' COMMENT '允許匿名發帖',
  allowsigbbcode tinyint(1) NOT NULL default '0' COMMENT '允許簽名使用bbcode',
  allowsigimgcode tinyint(1) NOT NULL default '0' COMMENT '允許使用img',
  allowmagics tinyint(1) unsigned NOT NULL COMMENT '允許使用道具',
  disableperiodctrl tinyint(1) NOT NULL default '0' COMMENT '不受時間段限制',
  reasonpm tinyint(1) NOT NULL default '0' COMMENT '操作理由短信通知作者',
  maxprice smallint(6) unsigned NOT NULL default '0' COMMENT '主題最大售價',
  maxsigsize smallint(6) unsigned NOT NULL default '0' COMMENT '最大簽名尺寸',
  maxattachsize int(10) unsigned NOT NULL default '0' COMMENT '最大附件尺寸',
  maxsizeperday int(10) unsigned NOT NULL default '0' COMMENT '每天最大附件總尺寸',
  maxthreadsperhour tinyint(3) unsigned NOT NULL default '0' COMMENT '每小時發主題數限制',
  maxpostsperhour tinyint(3) unsigned NOT NULL default '0' COMMENT '每小時發回帖數限制',
  attachextensions char(100) NOT NULL default '' COMMENT '允許發表的附件類型',
  raterange char(150) NOT NULL default '' COMMENT '評分範圍',
  loginreward char(150) NOT NULL default '' COMMENT '每日打卡獎勵',
  mintradeprice smallint(6) unsigned NOT NULL default '1' COMMENT '交易最小積分',
  maxtradeprice smallint(6) unsigned NOT NULL default '0' COMMENT '交易最大積分',
  minrewardprice smallint(6) unsigned NOT NULL default '1' COMMENT '懸賞最小積分',
  maxrewardprice smallint(6) unsigned NOT NULL default '0' COMMENT '懸賞最大積分',
  magicsdiscount tinyint(1) NOT NULL COMMENT '道具折扣',
  maxmagicsweight smallint(6) unsigned NOT NULL COMMENT '道具負載最大值',
  allowpostdebate tinyint(1) NOT NULL default '0' COMMENT '允許發表辯論',
  tradestick tinyint(1) unsigned NOT NULL COMMENT '可商品推薦數',
  exempt tinyint(1) unsigned NOT NULL COMMENT '用戶組表達式',
  maxattachnum smallint(6) NOT NULL default '0' COMMENT '最大每天附件數量',
  allowposturl tinyint(1) NOT NULL default '3' COMMENT '是否允許發送含 url 內容',
  allowrecommend tinyint(1) unsigned NOT NULL default '1' COMMENT '是否允許評價主題',
  allowpostrushreply TINYINT(1) NOT NULL DEFAULT '0' COMMENT '允許發表搶樓帖',
  maxfriendnum smallint(6) unsigned NOT NULL default '0' COMMENT '最多好友數',
  maxspacesize int(10) unsigned NOT NULL default '0' COMMENT '空間大小',
  allowcomment tinyint(1) NOT NULL default '0' COMMENT '發表留言/評論',
  allowcommentarticle smallint(6) NOT NULL default '0' COMMENT '發表文章的評論',
  searchinterval smallint(6) unsigned NOT NULL default '0' COMMENT '兩次搜索操作間隔',
  searchignore tinyint(1) NOT NULL default '0' COMMENT '是否免費搜索',
  allowblog tinyint(1) NOT NULL default '0' COMMENT '發表日誌',
  allowdoing tinyint(1) NOT NULL default '0' COMMENT '發表記錄',
  allowupload tinyint(1) NOT NULL default '0' COMMENT '上傳圖片',
  allowshare tinyint(1) NOT NULL default '0' COMMENT '發佈分享',
  allowblogmod tinyint(1) unsigned NOT NULL default '0' COMMENT '發表日誌需要審核',
  allowdoingmod tinyint(1) unsigned NOT NULL default '0' COMMENT '發表記錄需要審核',
  allowuploadmod tinyint(1) unsigned NOT NULL default '0' COMMENT '上傳圖片需要審核',
  allowsharemod tinyint(1) unsigned NOT NULL default '0' COMMENT '發佈分享需要審核',
  allowcss tinyint(1) NOT NULL default '0' COMMENT '允許自定義CSS',
  allowpoke tinyint(1) NOT NULL default '0' COMMENT '允許打招呼',
  allowfriend tinyint(1) NOT NULL default '0' COMMENT '允許加好友',
  allowclick tinyint(1) NOT NULL default '0' COMMENT '允許表態',
  allowmagic tinyint(1) NOT NULL default '0' COMMENT '允許使用道具',
  allowstat tinyint(1) NOT NULL default '0' COMMENT '允許查看趨勢統計',
  allowstatdata tinyint(1) NOT NULL default '0' COMMENT '允許查看統計數據報表',
  videophotoignore tinyint(1) NOT NULL default '0' COMMENT '視頻認證限制',
  allowviewvideophoto tinyint(1) NOT NULL default '0' COMMENT '允許查看視頻認證',
  allowmyop tinyint(1) NOT NULL default '0' COMMENT '允許使用應用',
  magicdiscount tinyint(1) NOT NULL default '0' COMMENT '購買道具折扣',
  domainlength smallint(6) unsigned NOT NULL default '0' COMMENT '二級域名最短長度',
  seccode tinyint(1) NOT NULL default '1' COMMENT '發佈操作需填驗證碼',
  disablepostctrl tinyint(1) NOT NULL DEFAULT '0' COMMENT '發表是否受防灌水限制',
  allowbuildgroup tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否允許建立群組，0為不允許',
  allowgroupdirectpost tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否允許直接在群組中發帖',
  allowgroupposturl tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否允許在群組中發站外URL',
  edittimelimit smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '編輯帖子時間限制',
  allowpostarticle tinyint(1) NOT NULL default '0' COMMENT '允許發佈文章',
  allowdownlocalimg tinyint(1) NOT NULL default '0' COMMENT '允許下載本地圖片',
  allowdownremoteimg tinyint(1) NOT NULL default '0' COMMENT '允許下載遠程圖片',
  allowpostarticlemod tinyint(1) unsigned NOT NULL default '0' COMMENT '發佈文章是否需要審核',
  allowspacediyhtml tinyint(1) NOT NULL default '0' COMMENT '允許自定義模塊使用HTML',
  allowspacediybbcode tinyint(1) NOT NULL default '0' COMMENT '允許自定義模塊使用BBCODE',
  allowspacediyimgcode tinyint(1) NOT NULL default '0' COMMENT '允許自定義模塊使用[img]',
  allowcommentpost tinyint(1) NOT NULL default '2' COMMENT '允許帖子點評 0:禁止 1:樓主 2:回復 3:All',
  allowcommentitem tinyint(1) NOT NULL default '0' COMMENT '允許發表點評觀點',
  allowcommentreply tinyint(1) NOT NULL default '0' COMMENT '允許發表回復點評',
  allowreplycredit tinyint(1) NOT NULL default '0' COMMENT '允許設置回帖獎勵',
  ignorecensor tinyint(1) unsigned NOT NULL default '0' COMMENT '是否忽略要審核的關鍵字',
  allowsendallpm tinyint(1) unsigned NOT NULL default '0' COMMENT '是否不受「只接收好友短消息」設置的限制',
  allowsendpmmaxnum smallint(6) unsigned NOT NULL default '0' COMMENT '24小時內允許發短消息的數量',
  maximagesize mediumint(8) unsigned NOT NULL default '0' COMMENT '相冊中允許最大圖片大小',
  allowmediacode tinyint(1) NOT NULL default '0' COMMENT '允許使用多媒體代碼',
  allowbegincode tinyint(1) unsigned NOT NULL default '0' COMMENT '允許使用開頭動畫代碼',
  allowat smallint(6) unsigned NOT NULL default '0' COMMENT '允許@用戶 0：禁止 n:發帖時@的數量',
  allowsetpublishdate tinyint(1) unsigned NOT NULL default '0' COMMENT '允許定時發佈主題',
  allowfollowcollection tinyint(1) unsigned NOT NULL default '0' COMMENT '允許關注淘專輯數',
  allowcommentcollection tinyint(1) unsigned NOT NULL default '0' COMMENT '允許評論淘專輯',
  allowcreatecollection smallint(6) unsigned NOT NULL default '0' COMMENT '允許創建淘專輯數',
  forcesecques tinyint(1) unsigned NOT NULL default '0' COMMENT '強制設置安全提問才能進入後台管理',
  forcelogin tinyint(1) unsigned NOT NULL default '0' COMMENT '強制登錄方式',
  closead tinyint(1) unsigned NOT NULL default '0' COMMENT '是否展示廣告',
  buildgroupcredits smallint(6) unsigned NOT NULL default '0' COMMENT '創建群組需要消耗的積分',
  allowimgcontent tinyint(1) unsigned NOT NULL default '0' COMMENT '允許主題內容生成圖片',
  PRIMARY KEY  (groupid)
) ENGINE=MyISAM COMMENT='會員用戶組權限表';

DROP TABLE IF EXISTS pre_common_word;
CREATE TABLE pre_common_word (
  id smallint(6) unsigned NOT NULL auto_increment COMMENT '詞彙id',
  admin varchar(15) NOT NULL default '' COMMENT '管理員名',
  type smallint(6) NOT NULL default '1' COMMENT '關鍵詞分類',
  find varchar(255) NOT NULL default '' COMMENT '不良詞語',
  replacement varchar(255) NOT NULL default '' COMMENT '替換內容',
  extra varchar(255) NOT NULL default '',
  PRIMARY KEY  (id)
) ENGINE=MyISAM COMMENT='詞語過濾表';

DROP TABLE IF EXISTS pre_common_word_type;
CREATE TABLE pre_common_word_type (
  id smallint(6) unsigned NOT NULL auto_increment COMMENT '詞語過濾分類id',
  typename varchar(15) NOT NULL default '' COMMENT '分類名稱',
  PRIMARY KEY  (id)
) ENGINE=MyISAM COMMENT='詞語過濾分類';

DROP TABLE IF EXISTS pre_common_tag;
CREATE TABLE pre_common_tag (
  tagid mediumint(8) unsigned NOT NULL auto_increment COMMENT '標籤id',
  tagname char(20) NOT NULL default '' COMMENT '標籤名',
  status tinyint(1) NOT NULL default '0' COMMENT '顯示狀態\n(0:正常 1:關閉 2:推薦 3:用戶標籤)',
  PRIMARY KEY  (tagid),
  KEY tagname (tagname),
  KEY status (status, tagid)
) ENGINE=MyISAM COMMENT='標籤表';

DROP TABLE IF EXISTS pre_common_tagitem;
CREATE TABLE pre_common_tagitem (
  tagid mediumint(8) unsigned NOT NULL default '0' COMMENT '標籤id',
  itemid mediumint(8) unsigned NOT NULL default '0' COMMENT 'itemid',
  idtype char(10) NOT NULL default '' COMMENT '內容類型',
  UNIQUE KEY item (tagid, itemid, idtype),
  KEY idtype (idtype, itemid)
) ENGINE=MyISAM COMMENT='標籤內容表';

DROP TABLE IF EXISTS pre_forum_access;
CREATE TABLE pre_forum_access (
  uid int(10) unsigned NOT NULL default '0' COMMENT '會員id',
  fid mediumint(8) unsigned NOT NULL default '0' COMMENT '論壇id',
  allowview tinyint(1) NOT NULL default '0' COMMENT '允許瀏覽',
  allowpost tinyint(1) NOT NULL default '0' COMMENT '允許發表',
  allowreply tinyint(1) NOT NULL default '0' COMMENT '允許回復',
  allowgetattach tinyint(1) NOT NULL default '0' COMMENT '允許下載附件',
  allowgetimage tinyint(1) NOT NULL default '0' COMMENT '允許查看圖片',
  allowpostattach tinyint(1) NOT NULL default '0' COMMENT '允許上傳附件',
  allowpostimage tinyint(1) NOT NULL default '0' COMMENT '允許上傳圖片',
  adminuser mediumint(8) unsigned NOT NULL default '0' COMMENT '管理員id',
  dateline int(10) unsigned NOT NULL default '0' COMMENT '時間',
  PRIMARY KEY  (uid,fid),
  KEY listorder (fid,dateline)
) ENGINE=MyISAM COMMENT='訪問權限表';

DROP TABLE IF EXISTS pre_forum_activity;
CREATE TABLE pre_forum_activity (
  tid mediumint(8) unsigned NOT NULL default '0' COMMENT '主題id',
  uid int(10) unsigned NOT NULL default '0' COMMENT '會員id',
  aid mediumint(8) unsigned NOT NULL default '0' COMMENT '主題圖片id',
  cost mediumint(8) unsigned NOT NULL default '0' COMMENT '每人花銷',
  starttimefrom int(10) unsigned NOT NULL default '0' COMMENT '開始時間',
  starttimeto int(10) unsigned NOT NULL default '0' COMMENT '結束時間',
  place varchar(255) NOT NULL default '' COMMENT '地點',
  class varchar(255) NOT NULL default '' COMMENT '類別',
  gender tinyint(1) NOT NULL default '0' COMMENT '性別',
  number smallint(5) unsigned NOT NULL default '0' COMMENT '人數',
  applynumber smallint(5) unsigned NOT NULL default '0' COMMENT '已參加人數',
  expiration int(10) unsigned NOT NULL default '0' COMMENT '報名截止日期',
  ufield TEXT NOT NULL COMMENT '用戶定制項目',
  credit smallint(6) unsigned NOT NULL default '0' COMMENT '需消耗的積分',
  PRIMARY KEY  (tid),
  KEY uid (uid,starttimefrom),
  KEY starttimefrom (starttimefrom),
  KEY expiration (expiration),
  KEY applynumber (applynumber)
) ENGINE=MyISAM COMMENT='活動表';

DROP TABLE IF EXISTS pre_forum_activityapply;
CREATE TABLE pre_forum_activityapply (
  applyid int(10) unsigned NOT NULL auto_increment COMMENT '申請id',
  tid mediumint(8) unsigned NOT NULL default '0' COMMENT '主題id',
  username varchar(255) NOT NULL default '' COMMENT '用戶名',
  uid int(10) unsigned NOT NULL default '0' COMMENT '會員id',
  message varchar(255) NOT NULL default '' COMMENT '消息',
  verified tinyint(1) NOT NULL default '0' COMMENT '是否審核通過\n(0:N 1:Y 2:需完善資料)',
  dateline int(10) unsigned NOT NULL default '0' COMMENT '申請時間',
  payment mediumint(8) NOT NULL default '0' COMMENT '每人花銷',
  ufielddata TEXT NOT NULL COMMENT '用戶定制項目數據',
  PRIMARY KEY  (applyid),
  KEY uid (uid),
  KEY tid (tid),
  KEY dateline (tid,dateline)
) ENGINE=MyISAM COMMENT='活動申請表';

DROP TABLE IF EXISTS pre_forum_announcement;
CREATE TABLE pre_forum_announcement (
  id smallint(6) unsigned NOT NULL auto_increment COMMENT '公告id',
  author varchar(15) NOT NULL default '' COMMENT '作者姓名',
  `subject` varchar(255) NOT NULL default '' COMMENT '公告標題',
  `type` tinyint(1) NOT NULL default '0' COMMENT '公告類型\n(0:文字公告 1:網址鏈接)',
  displayorder tinyint(3) NOT NULL default '0' COMMENT '顯示順序',
  starttime int(10) unsigned NOT NULL default '0' COMMENT '開始時間',
  endtime int(10) unsigned NOT NULL default '0' COMMENT '結束時間',
  message text NOT NULL COMMENT '消息',
  groups text NOT NULL COMMENT '接受用戶組',
  PRIMARY KEY  (id),
  KEY timespan (starttime,endtime)
) ENGINE=MyISAM COMMENT='公告表';

DROP TABLE IF EXISTS pre_forum_threadimage;
CREATE TABLE pre_forum_threadimage (
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  attachment varchar(255) NOT NULL default '' COMMENT '服務器路徑',
  remote tinyint(1) unsigned NOT NULL default '0' COMMENT '是否遠程附件',
  KEY tid (tid)
) ENGINE=MyISAM COMMENT='主題圖片表';

DROP TABLE IF EXISTS pre_forum_attachment;
CREATE TABLE pre_forum_attachment (
  aid mediumint(8) unsigned NOT NULL auto_increment COMMENT '附件id',
  tid mediumint(8) unsigned NOT NULL default '0' COMMENT '主題id',
  pid int(10) unsigned NOT NULL default '0' COMMENT '帖子id',
  uid int(10) unsigned NOT NULL default '0' COMMENT '會員id',
  tableid tinyint(1) unsigned NOT NULL default '0' COMMENT '附件表id',
  downloads mediumint(8) NOT NULL default '0' COMMENT '下載次數',
  PRIMARY KEY (aid),
  KEY tid (tid),
  KEY pid (pid),
  KEY uid (uid)
) ENGINE=MyISAM COMMENT='附件索引表';

DROP TABLE IF EXISTS pre_forum_attachment_exif;
CREATE TABLE pre_forum_attachment_exif (
  aid mediumint(8) unsigned NOT NULL COMMENT '附件id',
  exif text NOT NULL COMMENT 'exif信息',
  PRIMARY KEY (aid)
) ENGINE=MyISAM COMMENT='Exif緩存表';

DROP TABLE IF EXISTS pre_forum_attachment_unused;
CREATE TABLE pre_forum_attachment_unused (
  aid mediumint(8) unsigned NOT NULL COMMENT '附件id',
  uid int(10) unsigned NOT NULL default '0' COMMENT '會員id',
  dateline int(10) unsigned NOT NULL default '0' COMMENT '上傳時間',
  filename varchar(255) NOT NULL default '' COMMENT '原文件名',
  filesize int(10) unsigned NOT NULL default '0' COMMENT '文件大小',
  attachment varchar(255) NOT NULL default '' COMMENT '服務器路徑',
  remote tinyint(1) unsigned NOT NULL default '0' COMMENT '是否遠程附件',
  isimage tinyint(1) NOT NULL default '0' COMMENT '是否圖片',
  width smallint(6) unsigned NOT NULL default '0' COMMENT '附件寬度',
  thumb tinyint(1) unsigned NOT NULL default '0' COMMENT '是否是縮率圖',
  PRIMARY KEY (aid),
  KEY uid (uid)
) ENGINE=MyISAM COMMENT='未使用附件表';

DROP TABLE IF EXISTS pre_forum_attachment_0;
CREATE TABLE pre_forum_attachment_0 (
  aid mediumint(8) unsigned NOT NULL COMMENT '附件id',
  tid mediumint(8) unsigned NOT NULL default '0' COMMENT '主題id',
  pid int(10) unsigned NOT NULL default '0' COMMENT '帖子id',
  uid int(10) unsigned NOT NULL default '0' COMMENT '會員id',
  dateline int(10) unsigned NOT NULL default '0' COMMENT '上傳時間',
  filename varchar(255) NOT NULL default '' COMMENT '原文件名',
  filesize int(10) unsigned NOT NULL default '0' COMMENT '文件大小',
  attachment varchar(255) NOT NULL default '' COMMENT '服務器路徑',
  remote tinyint(1) unsigned NOT NULL default '0' COMMENT '是否遠程附件',
  description varchar(255) NOT NULL COMMENT '說明',
  readperm tinyint(3) unsigned NOT NULL default '0' COMMENT '閱讀權限',
  price smallint(6) unsigned NOT NULL default '0' COMMENT '附件價格',
  isimage tinyint(1) NOT NULL default '0' COMMENT '是否圖片',
  width smallint(6) unsigned NOT NULL default '0' COMMENT '附件寬度',
  thumb tinyint(1) unsigned NOT NULL default '0' COMMENT '是否是縮率圖',
  picid mediumint(8) NOT NULL default '0' COMMENT '相冊圖片ID ',
  PRIMARY KEY (aid),
  KEY tid (tid),
  KEY pid (pid),
  KEY uid (uid)
) ENGINE=MyISAM COMMENT='附件表';

DROP TABLE IF EXISTS pre_forum_attachment_1;
CREATE TABLE pre_forum_attachment_1 (
  aid mediumint(8) unsigned NOT NULL COMMENT '附件id',
  tid mediumint(8) unsigned NOT NULL default '0' COMMENT '主題id',
  pid int(10) unsigned NOT NULL default '0' COMMENT '帖子id',
  uid int(10) unsigned NOT NULL default '0' COMMENT '會員id',
  dateline int(10) unsigned NOT NULL default '0' COMMENT '上傳時間',
  filename varchar(255) NOT NULL default '' COMMENT '原文件名',
  filesize int(10) unsigned NOT NULL default '0' COMMENT '文件大小',
  attachment varchar(255) NOT NULL default '' COMMENT '服務器路徑',
  remote tinyint(1) unsigned NOT NULL default '0' COMMENT '是否遠程附件',
  description varchar(255) NOT NULL COMMENT '說明',
  readperm tinyint(3) unsigned NOT NULL default '0' COMMENT '閱讀權限',
  price smallint(6) unsigned NOT NULL default '0' COMMENT '附件價格',
  isimage tinyint(1) NOT NULL default '0' COMMENT '是否圖片',
  width smallint(6) unsigned NOT NULL default '0' COMMENT '附件寬度',
  thumb tinyint(1) unsigned NOT NULL default '0' COMMENT '是否是縮率圖',
  picid mediumint(8) NOT NULL default '0' COMMENT '相冊圖片ID ',
  PRIMARY KEY (aid),
  KEY tid (tid),
  KEY pid (pid),
  KEY uid (uid)
) ENGINE=MyISAM COMMENT='附件表';

DROP TABLE IF EXISTS pre_forum_attachment_2;
CREATE TABLE pre_forum_attachment_2 (
  aid mediumint(8) unsigned NOT NULL COMMENT '附件id',
  tid mediumint(8) unsigned NOT NULL default '0' COMMENT '主題id',
  pid int(10) unsigned NOT NULL default '0' COMMENT '帖子id',
  uid int(10) unsigned NOT NULL default '0' COMMENT '會員id',
  dateline int(10) unsigned NOT NULL default '0' COMMENT '上傳時間',
  filename varchar(255) NOT NULL default '' COMMENT '原文件名',
  filesize int(10) unsigned NOT NULL default '0' COMMENT '文件大小',
  attachment varchar(255) NOT NULL default '' COMMENT '服務器路徑',
  remote tinyint(1) unsigned NOT NULL default '0' COMMENT '是否遠程附件',
  description varchar(255) NOT NULL COMMENT '說明',
  readperm tinyint(3) unsigned NOT NULL default '0' COMMENT '閱讀權限',
  price smallint(6) unsigned NOT NULL default '0' COMMENT '附件價格',
  isimage tinyint(1) NOT NULL default '0' COMMENT '是否圖片',
  width smallint(6) unsigned NOT NULL default '0' COMMENT '附件寬度',
  thumb tinyint(1) unsigned NOT NULL default '0' COMMENT '是否是縮率圖',
  picid mediumint(8) NOT NULL default '0' COMMENT '相冊圖片ID ',
  PRIMARY KEY (aid),
  KEY tid (tid),
  KEY pid (pid),
  KEY uid (uid)
) ENGINE=MyISAM COMMENT='附件表';

DROP TABLE IF EXISTS pre_forum_attachment_3;
CREATE TABLE pre_forum_attachment_3 (
  aid mediumint(8) unsigned NOT NULL COMMENT '附件id',
  tid mediumint(8) unsigned NOT NULL default '0' COMMENT '主題id',
  pid int(10) unsigned NOT NULL default '0' COMMENT '帖子id',
  uid int(10) unsigned NOT NULL default '0' COMMENT '會員id',
  dateline int(10) unsigned NOT NULL default '0' COMMENT '上傳時間',
  filename varchar(255) NOT NULL default '' COMMENT '原文件名',
  filesize int(10) unsigned NOT NULL default '0' COMMENT '文件大小',
  attachment varchar(255) NOT NULL default '' COMMENT '服務器路徑',
  remote tinyint(1) unsigned NOT NULL default '0' COMMENT '是否遠程附件',
  description varchar(255) NOT NULL COMMENT '說明',
  readperm tinyint(3) unsigned NOT NULL default '0' COMMENT '閱讀權限',
  price smallint(6) unsigned NOT NULL default '0' COMMENT '附件價格',
  isimage tinyint(1) NOT NULL default '0' COMMENT '是否圖片',
  width smallint(6) unsigned NOT NULL default '0' COMMENT '附件寬度',
  thumb tinyint(1) unsigned NOT NULL default '0' COMMENT '是否是縮率圖',
  picid mediumint(8) NOT NULL default '0' COMMENT '相冊圖片ID ',
  PRIMARY KEY (aid),
  KEY tid (tid),
  KEY pid (pid),
  KEY uid (uid)
) ENGINE=MyISAM COMMENT='附件表';

DROP TABLE IF EXISTS pre_forum_attachment_4;
CREATE TABLE pre_forum_attachment_4 (
  aid mediumint(8) unsigned NOT NULL COMMENT '附件id',
  tid mediumint(8) unsigned NOT NULL default '0' COMMENT '主題id',
  pid int(10) unsigned NOT NULL default '0' COMMENT '帖子id',
  uid int(10) unsigned NOT NULL default '0' COMMENT '會員id',
  dateline int(10) unsigned NOT NULL default '0' COMMENT '上傳時間',
  filename varchar(255) NOT NULL default '' COMMENT '原文件名',
  filesize int(10) unsigned NOT NULL default '0' COMMENT '文件大小',
  attachment varchar(255) NOT NULL default '' COMMENT '服務器路徑',
  remote tinyint(1) unsigned NOT NULL default '0' COMMENT '是否遠程附件',
  description varchar(255) NOT NULL COMMENT '說明',
  readperm tinyint(3) unsigned NOT NULL default '0' COMMENT '閱讀權限',
  price smallint(6) unsigned NOT NULL default '0' COMMENT '附件價格',
  isimage tinyint(1) NOT NULL default '0' COMMENT '是否圖片',
  width smallint(6) unsigned NOT NULL default '0' COMMENT '附件寬度',
  thumb tinyint(1) unsigned NOT NULL default '0' COMMENT '是否是縮率圖',
  picid mediumint(8) NOT NULL default '0' COMMENT '相冊圖片ID ',
  PRIMARY KEY (aid),
  KEY tid (tid),
  KEY pid (pid),
  KEY uid (uid)
) ENGINE=MyISAM COMMENT='附件表';

DROP TABLE IF EXISTS pre_forum_attachment_5;
CREATE TABLE pre_forum_attachment_5 (
  aid mediumint(8) unsigned NOT NULL COMMENT '附件id',
  tid mediumint(8) unsigned NOT NULL default '0' COMMENT '主題id',
  pid int(10) unsigned NOT NULL default '0' COMMENT '帖子id',
  uid int(10) unsigned NOT NULL default '0' COMMENT '會員id',
  dateline int(10) unsigned NOT NULL default '0' COMMENT '上傳時間',
  filename varchar(255) NOT NULL default '' COMMENT '原文件名',
  filesize int(10) unsigned NOT NULL default '0' COMMENT '文件大小',
  attachment varchar(255) NOT NULL default '' COMMENT '服務器路徑',
  remote tinyint(1) unsigned NOT NULL default '0' COMMENT '是否遠程附件',
  description varchar(255) NOT NULL COMMENT '說明',
  readperm tinyint(3) unsigned NOT NULL default '0' COMMENT '閱讀權限',
  price smallint(6) unsigned NOT NULL default '0' COMMENT '附件價格',
  isimage tinyint(1) NOT NULL default '0' COMMENT '是否圖片',
  width smallint(6) unsigned NOT NULL default '0' COMMENT '附件寬度',
  thumb tinyint(1) unsigned NOT NULL default '0' COMMENT '是否是縮率圖',
  picid mediumint(8) NOT NULL default '0' COMMENT '相冊圖片ID ',
  PRIMARY KEY (aid),
  KEY tid (tid),
  KEY pid (pid),
  KEY uid (uid)
) ENGINE=MyISAM COMMENT='附件表';

DROP TABLE IF EXISTS pre_forum_attachment_6;
CREATE TABLE pre_forum_attachment_6 (
  aid mediumint(8) unsigned NOT NULL COMMENT '附件id',
  tid mediumint(8) unsigned NOT NULL default '0' COMMENT '主題id',
  pid int(10) unsigned NOT NULL default '0' COMMENT '帖子id',
  uid int(10) unsigned NOT NULL default '0' COMMENT '會員id',
  dateline int(10) unsigned NOT NULL default '0' COMMENT '上傳時間',
  filename varchar(255) NOT NULL default '' COMMENT '原文件名',
  filesize int(10) unsigned NOT NULL default '0' COMMENT '文件大小',
  attachment varchar(255) NOT NULL default '' COMMENT '服務器路徑',
  remote tinyint(1) unsigned NOT NULL default '0' COMMENT '是否遠程附件',
  description varchar(255) NOT NULL COMMENT '說明',
  readperm tinyint(3) unsigned NOT NULL default '0' COMMENT '閱讀權限',
  price smallint(6) unsigned NOT NULL default '0' COMMENT '附件價格',
  isimage tinyint(1) NOT NULL default '0' COMMENT '是否圖片',
  width smallint(6) unsigned NOT NULL default '0' COMMENT '附件寬度',
  thumb tinyint(1) unsigned NOT NULL default '0' COMMENT '是否是縮率圖',
  picid mediumint(8) NOT NULL default '0' COMMENT '相冊圖片ID ',
  PRIMARY KEY (aid),
  KEY tid (tid),
  KEY pid (pid),
  KEY uid (uid)
) ENGINE=MyISAM COMMENT='附件表';

DROP TABLE IF EXISTS pre_forum_attachment_7;
CREATE TABLE pre_forum_attachment_7 (
  aid mediumint(8) unsigned NOT NULL COMMENT '附件id',
  tid mediumint(8) unsigned NOT NULL default '0' COMMENT '主題id',
  pid int(10) unsigned NOT NULL default '0' COMMENT '帖子id',
  uid int(10) unsigned NOT NULL default '0' COMMENT '會員id',
  dateline int(10) unsigned NOT NULL default '0' COMMENT '上傳時間',
  filename varchar(255) NOT NULL default '' COMMENT '原文件名',
  filesize int(10) unsigned NOT NULL default '0' COMMENT '文件大小',
  attachment varchar(255) NOT NULL default '' COMMENT '服務器路徑',
  remote tinyint(1) unsigned NOT NULL default '0' COMMENT '是否遠程附件',
  description varchar(255) NOT NULL COMMENT '說明',
  readperm tinyint(3) unsigned NOT NULL default '0' COMMENT '閱讀權限',
  price smallint(6) unsigned NOT NULL default '0' COMMENT '附件價格',
  isimage tinyint(1) NOT NULL default '0' COMMENT '是否圖片',
  width smallint(6) unsigned NOT NULL default '0' COMMENT '附件寬度',
  thumb tinyint(1) unsigned NOT NULL default '0' COMMENT '是否是縮率圖',
  picid mediumint(8) NOT NULL default '0' COMMENT '相冊圖片ID ',
  PRIMARY KEY (aid),
  KEY tid (tid),
  KEY pid (pid),
  KEY uid (uid)
) ENGINE=MyISAM COMMENT='附件表';

DROP TABLE IF EXISTS pre_forum_attachment_8;
CREATE TABLE pre_forum_attachment_8 (
  aid mediumint(8) unsigned NOT NULL COMMENT '附件id',
  tid mediumint(8) unsigned NOT NULL default '0' COMMENT '主題id',
  pid int(10) unsigned NOT NULL default '0' COMMENT '帖子id',
  uid int(10) unsigned NOT NULL default '0' COMMENT '會員id',
  dateline int(10) unsigned NOT NULL default '0' COMMENT '上傳時間',
  filename varchar(255) NOT NULL default '' COMMENT '原文件名',
  filesize int(10) unsigned NOT NULL default '0' COMMENT '文件大小',
  attachment varchar(255) NOT NULL default '' COMMENT '服務器路徑',
  remote tinyint(1) unsigned NOT NULL default '0' COMMENT '是否遠程附件',
  description varchar(255) NOT NULL COMMENT '說明',
  readperm tinyint(3) unsigned NOT NULL default '0' COMMENT '閱讀權限',
  price smallint(6) unsigned NOT NULL default '0' COMMENT '附件價格',
  isimage tinyint(1) NOT NULL default '0' COMMENT '是否圖片',
  width smallint(6) unsigned NOT NULL default '0' COMMENT '附件寬度',
  thumb tinyint(1) unsigned NOT NULL default '0' COMMENT '是否是縮率圖',
  picid mediumint(8) NOT NULL default '0' COMMENT '相冊圖片ID ',
  PRIMARY KEY (aid),
  KEY tid (tid),
  KEY pid (pid),
  KEY uid (uid)
) ENGINE=MyISAM COMMENT='附件表';

DROP TABLE IF EXISTS pre_forum_attachment_9;
CREATE TABLE pre_forum_attachment_9 (
  aid mediumint(8) unsigned NOT NULL COMMENT '附件id',
  tid mediumint(8) unsigned NOT NULL default '0' COMMENT '主題id',
  pid int(10) unsigned NOT NULL default '0' COMMENT '帖子id',
  uid int(10) unsigned NOT NULL default '0' COMMENT '會員id',
  dateline int(10) unsigned NOT NULL default '0' COMMENT '上傳時間',
  filename varchar(255) NOT NULL default '' COMMENT '原文件名',
  filesize int(10) unsigned NOT NULL default '0' COMMENT '文件大小',
  attachment varchar(255) NOT NULL default '' COMMENT '服務器路徑',
  remote tinyint(1) unsigned NOT NULL default '0' COMMENT '是否遠程附件',
  description varchar(255) NOT NULL COMMENT '說明',
  readperm tinyint(3) unsigned NOT NULL default '0' COMMENT '閱讀權限',
  price smallint(6) unsigned NOT NULL default '0' COMMENT '附件價格',
  isimage tinyint(1) NOT NULL default '0' COMMENT '是否圖片',
  width smallint(6) unsigned NOT NULL default '0' COMMENT '附件寬度',
  thumb tinyint(1) unsigned NOT NULL default '0' COMMENT '是否是縮率圖',
  picid mediumint(8) NOT NULL default '0' COMMENT '相冊圖片ID ',
  PRIMARY KEY (aid),
  KEY tid (tid),
  KEY pid (pid),
  KEY uid (uid)
) ENGINE=MyISAM COMMENT='附件表';

DROP TABLE IF EXISTS pre_forum_attachtype;
CREATE TABLE pre_forum_attachtype (
  id smallint(6) unsigned NOT NULL auto_increment COMMENT '類型id',
  fid mediumint(8) unsigned NOT NULL default '0' COMMENT '論壇id',
  extension char(12) NOT NULL default '' COMMENT '擴展名',
  maxsize int(10) unsigned NOT NULL default '0' COMMENT '允許上傳最大值',
  PRIMARY KEY  (id),
  KEY fid (fid)
) ENGINE=MyISAM COMMENT='附件類型表';

DROP TABLE IF EXISTS pre_forum_bbcode;
CREATE TABLE pre_forum_bbcode (
  id mediumint(8) unsigned NOT NULL auto_increment COMMENT '代碼id',
  available tinyint(1) NOT NULL default '0' COMMENT '是否啟用\n(0:不啟用 1:啟用但不顯示 2:啟用並顯示)',
  tag varchar(100) NOT NULL default '' COMMENT '標籤',
  icon varchar(255) NOT NULL COMMENT '圖標',
  replacement text NOT NULL COMMENT '替換內容',
  example varchar(255) NOT NULL default '' COMMENT '例子',
  explanation text NOT NULL COMMENT '解釋說明',
  params tinyint(1) unsigned NOT NULL default '1' COMMENT '參數個數',
  prompt text NOT NULL COMMENT '標籤描述',
  nest tinyint(3) unsigned NOT NULL default '1' COMMENT '嵌套層次',
  displayorder tinyint(3) NOT NULL default '0' COMMENT '顯示順序',
  perm text NOT NULL COMMENT '有權使用的用戶組',
  PRIMARY KEY  (id)
) ENGINE=MyISAM COMMENT='Discuz! 代碼表';

DROP TABLE IF EXISTS pre_forum_creditslog;
CREATE TABLE pre_forum_creditslog (
  uid int(10) unsigned NOT NULL default '0' COMMENT '會員id',
  fromto char(15) NOT NULL default '' COMMENT '來自/到',
  sendcredits tinyint(1) NOT NULL default '0' COMMENT '轉出積分字段',
  receivecredits tinyint(1) NOT NULL default '0' COMMENT '接受積分字段',
  send int(10) unsigned NOT NULL default '0' COMMENT '轉出積分',
  receive int(10) unsigned NOT NULL default '0' COMMENT '接受積分',
  dateline int(10) unsigned NOT NULL default '0' COMMENT '轉帳日期',
  operation char(3) NOT NULL default '' COMMENT '操作',
  KEY uid (uid,dateline)
) ENGINE=MyISAM COMMENT='轉帳記錄表';

DROP TABLE IF EXISTS pre_forum_debate;
CREATE TABLE pre_forum_debate (
  tid mediumint(8) unsigned NOT NULL default '0' COMMENT '主題id',
  uid int(10) unsigned NOT NULL default '0' COMMENT '發起人id',
  starttime int(10) unsigned NOT NULL default '0' COMMENT '開始時間',
  endtime int(10) unsigned NOT NULL default '0' COMMENT '結束時間',
  affirmdebaters mediumint(8) unsigned NOT NULL default '0' COMMENT '正方辯論人數',
  negadebaters mediumint(8) unsigned NOT NULL default '0' COMMENT '反方辯論人數',
  affirmvotes mediumint(8) unsigned NOT NULL default '0' COMMENT '正方得票數',
  negavotes mediumint(8) unsigned NOT NULL default '0' COMMENT '反方得票數',
  umpire varchar(15) NOT NULL default '' COMMENT '裁判用戶名',
  winner tinyint(1) NOT NULL default '0' COMMENT '獲勝方\n(0:平局 1:為正方 2:為反方)\n裁判評判結果',
  bestdebater varchar(50) NOT NULL default '' COMMENT '最佳辯手用戶名',
  affirmpoint text NOT NULL COMMENT '正方觀點',
  negapoint text NOT NULL COMMENT '反方觀點',
  umpirepoint text NOT NULL COMMENT '裁判觀點，裁判結束辯論時填寫',
  affirmvoterids text NOT NULL COMMENT '正方投票人的 id 集合',
  negavoterids text NOT NULL COMMENT '反方投票人的 id 集合',
  affirmreplies mediumint(8) unsigned NOT NULL COMMENT '正方回復次數，用來翻頁',
  negareplies mediumint(8) unsigned NOT NULL COMMENT '反方回復次數，用來翻頁',
  PRIMARY KEY  (tid),
  KEY uid (uid,starttime)
) ENGINE=MyISAM COMMENT='辯論主題表';

DROP TABLE IF EXISTS pre_forum_debatepost;
CREATE TABLE pre_forum_debatepost (
  pid int(10) unsigned NOT NULL default '0' COMMENT '帖子id',
  stand tinyint(1) NOT NULL default '0' COMMENT '立場\n(0:中立 1:正方 2:為反方)',
  tid mediumint(8) unsigned NOT NULL default '0' COMMENT '主題id',
  uid int(10) unsigned NOT NULL default '0' COMMENT '發起人id',
  dateline int(10) unsigned NOT NULL default '0' COMMENT '發表的時間',
  voters mediumint(10) unsigned NOT NULL default '0' COMMENT '投票人數',
  voterids text NOT NULL COMMENT '投票人的 id 集合',
  PRIMARY KEY  (pid),
  KEY pid (pid,stand),
  KEY tid (tid,uid)
) ENGINE=MyISAM COMMENT='辯論帖子表';

DROP TABLE IF EXISTS pre_forum_faq;
CREATE TABLE pre_forum_faq (
  id smallint(6) NOT NULL auto_increment COMMENT '幫助id',
  fpid smallint(6) unsigned NOT NULL default '0' COMMENT '幫助父id',
  displayorder tinyint(3) NOT NULL default '0' COMMENT '排序',
  identifier varchar(20) NOT NULL COMMENT '幫助標識',
  keyword varchar(50) NOT NULL COMMENT '幫助關鍵詞',
  title varchar(50) NOT NULL COMMENT '幫助標題',
  message text NOT NULL COMMENT '幫助內容',
  PRIMARY KEY  (id),
  KEY displayplay (displayorder)
) ENGINE=MyISAM COMMENT='論壇幫助表';

DROP TABLE IF EXISTS pre_forum_postcache;
CREATE TABLE pre_forum_postcache (
  pid int(10) unsigned NOT NULL,
  comment text NOT NULL COMMENT '點評內容緩存',
  rate text NOT NULL COMMENT '評分情況緩存',
  dateline int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (pid),
  KEY dateline (dateline)
) ENGINE=MyISAM COMMENT='論壇帖子緩存表';

DROP TABLE IF EXISTS pre_home_favorite;
CREATE TABLE pre_home_favorite (
  favid mediumint(8) unsigned NOT NULL auto_increment COMMENT '收藏id',
  uid int(10) unsigned NOT NULL default '0' COMMENT '會員id',
  id mediumint(8) unsigned NOT NULL default '0',
  idtype varchar(255) NOT NULL default '',
  spaceuid int(10) unsigned NOT NULL default '0' COMMENT '空間會員id',
  title varchar(255) NOT NULL default '' COMMENT '標題',
  description text NOT NULL COMMENT '簡介',
  dateline int(10) unsigned NOT NULL default '0',
  PRIMARY KEY (favid),
  KEY idtype (id,idtype),
  KEY uid (uid,idtype,dateline)
) ENGINE=MyISAM COMMENT='收藏表';

DROP TABLE IF EXISTS pre_forum_forum;
CREATE TABLE pre_forum_forum (
  fid mediumint(8) unsigned NOT NULL auto_increment COMMENT '論壇id',
  fup mediumint(8) unsigned NOT NULL default '0' COMMENT '上級論壇id',
  `type` enum('group','forum','sub') NOT NULL default 'forum' COMMENT '類型\n(group:分類 forum:普通論壇 sub:子論壇)',
  `name` char(50) NOT NULL default '' COMMENT '名稱',
  `status` tinyint(1) NOT NULL default '0' COMMENT '顯示狀態\n(0:隱藏 1:正常 3:群組)',
  displayorder smallint(6) NOT NULL default '0' COMMENT '顯示順序',
  styleid smallint(6) unsigned NOT NULL default '0' COMMENT '風格id',
  threads mediumint(8) unsigned NOT NULL default '0' COMMENT '主題數量',
  posts mediumint(8) unsigned NOT NULL default '0' COMMENT '帖子數量',
  todayposts mediumint(8) unsigned NOT NULL default '0' COMMENT '今日發帖數量',
  yesterdayposts mediumint(8) unsigned NOT NULL default '0' COMMENT '昨日發帖數量',
  rank smallint(6) unsigned NOT NULL default '0' COMMENT '排名',
  oldrank smallint(6) unsigned NOT NULL default '0' COMMENT '前天排名',
  lastpost char(110) NOT NULL default '' COMMENT '最後發表',
  `domain` char(15) NOT NULL default '' COMMENT '綁定的二級域名',
  allowsmilies tinyint(1) NOT NULL default '0' COMMENT '允許使用表情',
  allowhtml tinyint(1) NOT NULL default '0' COMMENT '允許使用html',
  allowbbcode tinyint(1) NOT NULL default '0' COMMENT '允許bbcode',
  allowimgcode tinyint(1) NOT NULL default '0' COMMENT '允許img',
  allowmediacode tinyint(1) NOT NULL default '0' COMMENT '允許使用多媒體代碼',
  allowanonymous tinyint(1) NOT NULL default '0' COMMENT '允許匿名',
  allowpostspecial smallint(6) unsigned NOT NULL default '0' COMMENT '允許發表特殊主題',
  allowspecialonly tinyint(1) unsigned NOT NULL default '0' COMMENT '只允許發表特殊主題',
  allowappend tinyint(1) unsigned NOT NULL default '0' COMMENT '是否開啟帖子補充',
  alloweditrules tinyint(1) NOT NULL default '0' COMMENT '允許版主修改論壇規則',
  allowfeed tinyint(1) NOT NULL default '1' COMMENT '允許推送動態,默認推送廣播',
  allowside tinyint(1) NOT NULL default '0' COMMENT '顯示邊欄',
  recyclebin tinyint(1) NOT NULL default '0' COMMENT '是否啟用回收站',
  modnewposts tinyint(1) NOT NULL default '0' COMMENT '是否審核發帖',
  jammer tinyint(1) NOT NULL default '0' COMMENT '是否啟用干擾碼',
  disablewatermark tinyint(1) NOT NULL default '0' COMMENT '是否圖片附件增加水印',
  inheritedmod tinyint(1) NOT NULL default '0' COMMENT '本論壇或分類版主的權力繼承到下級論壇',
  autoclose smallint(6) NOT NULL default '0' COMMENT '自動關閉主題',
  forumcolumns tinyint(3) unsigned NOT NULL default '0' COMMENT '增加論壇水平橫排設置',
  catforumcolumns tinyint(3) unsigned NOT NULL default '0' COMMENT '增加分區版塊水平橫排設置',
  threadcaches tinyint(1) NOT NULL default '0' COMMENT '主題緩存功能設置',
  alloweditpost tinyint(1) unsigned NOT NULL default '1' COMMENT '允許編輯帖子',
  `simple` tinyint(1) unsigned NOT NULL default '0' COMMENT '只顯示子版塊',
  modworks tinyint(1) unsigned NOT NULL default '0' COMMENT '本版有待處理的管理事項',
  allowglobalstick tinyint(1) NOT NULL default '1' COMMENT '是否顯示全局置頂',
  `level` smallint(6) NOT NULL default '0' COMMENT '群組等級',
  commoncredits int(10) unsigned NOT NULL default '0' COMMENT '群組公共積分',
  `archive` tinyint(1) NOT NULL default '0' COMMENT '是否有存檔表',
  recommend smallint(6) unsigned NOT NULL default '0' COMMENT '推薦到的版塊',
  favtimes mediumint(8) unsigned NOT NULL default '0' COMMENT '版塊或群組的收藏次數',
  sharetimes mediumint(8) unsigned NOT NULL default '0' COMMENT '版塊或群組的分享次數',
  disablethumb tinyint(1) NOT NULL default '0' COMMENT '是否添加縮略圖',
  disablecollect tinyint(1) NOT NULL default '0' COMMENT '禁止淘帖',
  PRIMARY KEY  (fid),
  KEY forum (`status`,`type`,displayorder),
  KEY fup_type (`fup`,`type`,displayorder),
  KEY fup (fup)
) ENGINE=MyISAM COMMENT='版塊表';

DROP TABLE IF EXISTS pre_forum_forumfield;
CREATE TABLE pre_forum_forumfield (
  fid mediumint(8) unsigned NOT NULL default '0' COMMENT '版塊id',
  description text NOT NULL COMMENT '解釋說明',
  `password` varchar(12) NOT NULL default '' COMMENT '私密論壇密碼',
  icon varchar(255) NOT NULL default '' COMMENT '圖標',
  redirect varchar(255) NOT NULL default '' COMMENT 'URL轉發',
  attachextensions varchar(255) NOT NULL default '' COMMENT '允許上傳附件類型',
  creditspolicy mediumtext NOT NULL COMMENT '版塊積分策略',
  formulaperm text NOT NULL COMMENT '版塊權限表達式',
  moderators text NOT NULL COMMENT '版主列表，格式:admin',
  rules text NOT NULL COMMENT '版塊規則',
  threadtypes text NOT NULL COMMENT '主題分類，序列化存放的設置，格式為一個數組',
  threadsorts text NOT NULL COMMENT '分類信息，序列化存放的設置，格式為一個數組',
  viewperm text NOT NULL COMMENT '閱讀權限, 格式:	1	4	5',
  postperm text NOT NULL COMMENT '發表權限, 格式:	1	4	5',
  replyperm text NOT NULL COMMENT '回復權限, 格式:	1	4	5',
  getattachperm text NOT NULL COMMENT '下載附件權限, 格式:	1	4	5',
  postattachperm text NOT NULL COMMENT '上傳附件權限, 格式:	1	4	5',
  postimageperm text NOT NULL COMMENT '上傳圖片權限, 格式:	1	4	5',
  spviewperm text NOT NULL COMMENT '不受限於版權權限表達式, 格式:	1	4	5',
  seotitle text NOT NULL COMMENT '版塊seo標題',
  keywords text NOT NULL COMMENT '版塊seo關鍵詞',
  seodescription text NOT NULL COMMENT '版塊seo描述',
  supe_pushsetting text NOT NULL COMMENT 'supe推送設置，序列化存放設置數據，格式為一個數組。',
  modrecommend text NOT NULL COMMENT '版主推薦規則',
  threadplugin text NOT NULL COMMENT '特殊主題插件數據',
  replybg text NOT NULL COMMENT '回復框背景',
  extra TEXT NOT NULL,
  jointype tinyint(1) NOT NULL default '0' COMMENT '加入群組方式 -1為關閉，0為公開， 2邀請',
  gviewperm tinyint(1) unsigned NOT NULL default '0' COMMENT '群組瀏覽權限 0:僅成員 1:所有用戶',
  membernum smallint(6) unsigned NOT NULL default '0' COMMENT '群組成員數',
  dateline int(10) unsigned NOT NULL default '0' COMMENT '群組創建時間',
  lastupdate int(10) unsigned NOT NULL default '0' COMMENT '群組最後更新時間',
  activity int(10) unsigned NOT NULL default '0' COMMENT '群組活躍度',
  founderuid int(10) unsigned NOT NULL default '0' COMMENT '群組創始人UID',
  foundername varchar(255) NOT NULL default '' COMMENT '群組創始人名稱',
  banner varchar(255) NOT NULL default '' COMMENT '群組頭圖片',
  groupnum smallint(6) unsigned NOT NULL default '0' COMMENT '分類下的群組數量',
  commentitem TEXT NOT NULL,
  relatedgroup TEXT NOT NULL,
  picstyle tinyint(1) NOT NULL default '0' COMMENT '帖子列表是否以圖片形式顯示 0:否 1:是',
  widthauto tinyint(1) NOT NULL default '0' COMMENT '默認是否寬屏 0:全局 -1:寬屏 1:窄屏',
  noantitheft tinyint(1) NOT NULL default '0' COMMENT '禁止防採集',
  noforumhidewater tinyint(1) NOT NULL default '0' COMMENT '禁止隱藏水帖',
  noforumrecommend tinyint(1) NOT NULL default '0' COMMENT '禁止推薦回復',
  livetid mediumint(8) unsigned NOT NULL default '0' COMMENT '版塊直播帖tid',
  price mediumint(8) unsigned NOT NULL default '0' COMMENT '進入版塊所需支付的積分',
  PRIMARY KEY  (fid),
  KEY membernum (membernum),
  KEY dateline (dateline),
  KEY lastupdate (lastupdate),
  KEY activity (activity)
) ENGINE=MyISAM COMMENT='版塊擴展表';

DROP TABLE IF EXISTS pre_forum_forum_threadtable;
CREATE TABLE pre_forum_forum_threadtable (
  `fid` smallint(6) unsigned NOT NULL COMMENT '版塊id',
  `threadtableid` smallint(6) unsigned NOT NULL COMMENT 'thread分區id',
  `threads` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '主題數',
  `posts` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '帖子數',
  PRIMARY KEY (`fid`,`threadtableid`)
) ENGINE=MyISAM COMMENT='版塊存檔信息';

DROP TABLE IF EXISTS pre_forum_forumrecommend;
CREATE TABLE pre_forum_forumrecommend (
  fid mediumint(8) unsigned NOT NULL default '0' COMMENT '版塊id',
  tid mediumint(8) unsigned NOT NULL COMMENT '帖子id',
  typeid smallint(6) NOT NULL COMMENT '是否含有附件圖片',
  displayorder tinyint(1) NOT NULL COMMENT '推薦順序',
  `subject` char(80) NOT NULL COMMENT '推薦主題標題',
  author char(15) NOT NULL COMMENT '推薦主題作者',
  authorid mediumint(8) NOT NULL COMMENT '推薦主題作者id',
  moderatorid mediumint(8) NOT NULL COMMENT '推薦管理人員id',
  expiration int(10) unsigned NOT NULL COMMENT '推薦主題有效期',
  position tinyint(1) NOT NULL default '0' COMMENT '顯示位置',
  highlight tinyint(1) NOT NULL default '0' COMMENT '高亮顏色',
  aid mediumint(8) unsigned NOT NULL default '0' COMMENT '附件ID',
  filename char(100) NOT NULL default '' COMMENT '附件文件',
  PRIMARY KEY  (tid),
  KEY displayorder (fid,displayorder),
  KEY position (position)
) ENGINE=MyISAM COMMENT='版主推薦表';

DROP TABLE IF EXISTS pre_forum_imagetype;
CREATE TABLE pre_forum_imagetype (
  typeid smallint(6) unsigned NOT NULL auto_increment COMMENT '分類id',
  available tinyint(1) NOT NULL default '0' COMMENT '是否啟用',
  `name` char(20) NOT NULL COMMENT '分類名稱',
  `type` enum('smiley','icon','avatar') NOT NULL default 'smiley' COMMENT '分類類型\n(smiley:表情 icon:圖標 avatar:頭像)',
  displayorder tinyint(3) NOT NULL default '0' COMMENT '分類順序',
  `directory` char(100) NOT NULL COMMENT '圖片目錄',
  PRIMARY KEY  (typeid)
) ENGINE=MyISAM COMMENT='圖片 表情 頭像等 分類';

DROP TABLE IF EXISTS pre_forum_medal;
CREATE TABLE pre_forum_medal (
  medalid smallint(6) unsigned NOT NULL auto_increment COMMENT '勳章id',
  `name` varchar(50) NOT NULL default '' COMMENT '勳章名稱',
  available tinyint(1) NOT NULL default '0' COMMENT '是否啟用',
  image varchar(255) NOT NULL default '' COMMENT '勳章圖片',
  `type` tinyint(1) NOT NULL default '0' COMMENT '勳章類型',
  displayorder tinyint(3) NOT NULL default '0' COMMENT '勳章顯示順序',
  description varchar(255) NOT NULL COMMENT '勳章描述',
  expiration smallint(6) unsigned NOT NULL default '0' COMMENT '勳章有效期',
  permission mediumtext NOT NULL COMMENT '勳章獲得條件表達式',
  `credit` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '勳章購買使用積分',
  `price` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '勳章價格',
  PRIMARY KEY  (medalid),
  KEY displayorder (displayorder),
  KEY `available` (`available`,`displayorder`)
) ENGINE=MyISAM COMMENT='勳章表';

DROP TABLE IF EXISTS pre_forum_medallog;
CREATE TABLE pre_forum_medallog (
  id mediumint(8) unsigned NOT NULL auto_increment COMMENT '記錄id',
  uid int(10) unsigned NOT NULL default '0' COMMENT '勳章擁有著用戶id',
  medalid smallint(6) unsigned NOT NULL default '0' COMMENT '勳章id',
  `type` tinyint(1) NOT NULL default '0' COMMENT '勳章類型id',
  dateline int(10) unsigned NOT NULL default '0' COMMENT '頒發時間id',
  expiration int(10) unsigned NOT NULL default '0' COMMENT '有效期id',
  `status` tinyint(1) NOT NULL default '0' COMMENT '勳章狀態id',
  PRIMARY KEY  (id),
  KEY `type` (`type`),
  KEY `status` (`status`,expiration),
  KEY uid (uid,medalid,`type`),
  KEY `dateline` (`dateline`)
) ENGINE=MyISAM COMMENT='勳章日誌表';

DROP TABLE IF EXISTS pre_common_member_magic;
CREATE TABLE pre_common_member_magic (
  uid int(10) unsigned NOT NULL default '0' COMMENT '用戶uid',
  magicid smallint(6) unsigned NOT NULL default '0' COMMENT '道具id',
  num smallint(6) unsigned NOT NULL default '0' COMMENT '擁有數量',
   PRIMARY KEY (uid,magicid)
) ENGINE=MyISAM COMMENT='用戶道具數據表';

DROP TABLE IF EXISTS pre_common_member_medal;
CREATE TABLE pre_common_member_medal (
  uid int(10) unsigned NOT NULL,
  medalid smallint(6) unsigned NOT NULL,
  PRIMARY KEY (uid,medalid)
) ENGINE=MyISAM COMMENT='用戶勳章數據表';

DROP TABLE IF EXISTS pre_forum_memberrecommend;
CREATE TABLE pre_forum_memberrecommend (
  tid mediumint(8) unsigned NOT NULL COMMENT '主題ID',
  recommenduid int(10) unsigned NOT NULL COMMENT '推薦會員ID',
  dateline int(10) unsigned NOT NULL COMMENT '推薦時間',
  KEY tid (tid),
  KEY uid (recommenduid)
) ENGINE=MyISAM COMMENT='用戶推薦表';

DROP TABLE IF EXISTS pre_forum_moderator;
CREATE TABLE pre_forum_moderator (
  uid int(10) unsigned NOT NULL default '0' COMMENT '會員id',
  fid mediumint(8) unsigned NOT NULL default '0' COMMENT '論壇id',
  displayorder tinyint(3) NOT NULL default '0' COMMENT '顯示順序',
  inherited tinyint(1) NOT NULL default '0' COMMENT '是否繼承',
  PRIMARY KEY  (uid,fid)
) ENGINE=MyISAM COMMENT='版主表';

DROP TABLE IF EXISTS pre_forum_modwork;
CREATE TABLE pre_forum_modwork (
  uid int(10) unsigned NOT NULL default '0' COMMENT '會員id',
  modaction char(3) NOT NULL default '' COMMENT '動作',
  dateline date NOT NULL default '2006-01-01' COMMENT '時間段',
  count smallint(6) unsigned NOT NULL default '0' COMMENT '登錄次數',
  posts smallint(6) unsigned NOT NULL default '0' COMMENT '發表數',
  KEY uid (uid,dateline)
) ENGINE=MyISAM COMMENT='論壇管理統計表';

DROP TABLE IF EXISTS pre_common_mytask;
CREATE TABLE pre_common_mytask (
  uid int(10) unsigned NOT NULL COMMENT '用戶Uid',
  username char(15) NOT NULL default '' COMMENT '用戶名',
  taskid smallint(6) unsigned NOT NULL COMMENT '任務id',
  `status` tinyint(1) NOT NULL default '0' COMMENT '任務狀態\n(-1:失敗 0:進行中 1:已完成)',
  csc char(255) NOT NULL default '' COMMENT '任務進度',
  dateline int(10) unsigned NOT NULL default '0' COMMENT '申請任務時間',
  PRIMARY KEY  (uid,taskid),
  KEY parter (taskid,dateline)
) ENGINE=MyISAM COMMENT='我的任務表';

DROP TABLE IF EXISTS pre_forum_onlinelist;
CREATE TABLE pre_forum_onlinelist (
  groupid smallint(6) unsigned NOT NULL default '0' COMMENT '會員組id',
  displayorder tinyint(3) NOT NULL default '0' COMMENT '顯示順序',
  title varchar(30) NOT NULL default '' COMMENT '組名稱',
  url varchar(30) NOT NULL default '' COMMENT '圖例URL'
) ENGINE=MyISAM COMMENT='在線列表定制';

DROP TABLE IF EXISTS pre_forum_order;
CREATE TABLE pre_forum_order (
  orderid char(32) NOT NULL default '' COMMENT '訂單號id',
  `status` char(3) NOT NULL default '' COMMENT '狀態',
  buyer char(50) NOT NULL default '' COMMENT '購買者姓名',
  admin char(15) NOT NULL default '' COMMENT '補單管理員姓名',
  uid int(10) unsigned NOT NULL default '0' COMMENT '購買者id',
  amount int(10) unsigned NOT NULL default '0' COMMENT '數量',
  price float(7,2) unsigned NOT NULL default '0.00' COMMENT '價格',
  submitdate int(10) unsigned NOT NULL default '0' COMMENT '提交日期',
  confirmdate int(10) unsigned NOT NULL default '0' COMMENT '確認日期',
  email char(40) NOT NULL default '' COMMENT '購買時的Email',
  sms char(15) NOT NULL default '' COMMENT '購買時的手機',
  ip char(15) NOT NULL default '' COMMENT '購買時的IP',
  UNIQUE KEY orderid (orderid),
  KEY submitdate (submitdate),
  KEY uid (uid,submitdate)
) ENGINE=MyISAM COMMENT='訂單信息表';


DROP TABLE IF EXISTS pre_forum_groupfield;
CREATE TABLE pre_forum_groupfield (
  fid mediumint(8) unsigned NOT NULL default '0' COMMENT '群組關聯fid',
  privacy tinyint(1) unsigned NOT NULL default '0' COMMENT '群組隱私設置',
  dateline int(10) unsigned NOT NULL default '0' COMMENT '緩存生成時間',
  type varchar(255) NOT NULL COMMENT '緩存類型',
  data text NOT NULL COMMENT '緩存數據',
  UNIQUE KEY types (fid,type),
  KEY fid (fid),
  KEY type (type)
) ENGINE = MyISAM COMMENT='群組擴展信息緩存';

DROP TABLE IF EXISTS pre_forum_groupinvite;
CREATE TABLE pre_forum_groupinvite (
  fid MEDIUMINT( 8 ) UNSIGNED NOT NULL default '0' COMMENT '群組id',
  uid MEDIUMINT( 8 ) UNSIGNED NOT NULL default '0' COMMENT '邀請人id',
  inviteuid MEDIUMINT( 8 ) UNSIGNED NOT NULL default '0' COMMENT '被邀請人id',
  dateline INT( 10 ) UNSIGNED NOT NULL default '0' COMMENT '邀請時間',
  UNIQUE KEY ids (fid,inviteuid),
  KEY dateline (dateline)
) ENGINE = MYISAM COMMENT='群組邀請';

DROP TABLE IF EXISTS pre_forum_groupuser;
CREATE TABLE pre_forum_groupuser (
  fid MEDIUMINT( 8 ) UNSIGNED NOT NULL default '0' COMMENT '群組關聯fid',
  uid MEDIUMINT( 8 ) UNSIGNED NOT NULL default '0' COMMENT '成員id',
  username CHAR( 15 ) NOT NULL COMMENT '成員名',
  level TINYINT( 3 ) UNSIGNED NOT NULL default '0' COMMENT '成員等級\n(0:待審核 1:群主 2:副群主 3:明星成員 4:普通成員)',
  threads MEDIUMINT( 8 ) UNSIGNED NOT NULL default '0' COMMENT '成員主題數',
  replies MEDIUMINT( 8 ) UNSIGNED NOT NULL default '0' COMMENT '成員回複數',
  joindateline INT( 10 ) UNSIGNED NOT NULL default '0' COMMENT '成員加入群組時間',
  lastupdate INT( 10 ) UNSIGNED NOT NULL default '0' COMMENT '成員最後活動時間',
  privacy TINYINT( 1 ) UNSIGNED NOT NULL default '0' COMMENT '成員隱私設置',
  PRIMARY KEY (fid,uid),
  KEY uid_lastupdate (uid,lastupdate),
  KEY userlist (fid,level,lastupdate)
) ENGINE = MYISAM COMMENT='群組成員';

DROP TABLE IF EXISTS pre_common_plugin;
CREATE TABLE pre_common_plugin (
  pluginid smallint(6) unsigned NOT NULL auto_increment COMMENT '插件id',
  `catid` smallint(6) NOT NULL DEFAULT '0'  COMMENT '分類id',
  available tinyint(1) NOT NULL default '0' COMMENT '是否啟用',
  adminid tinyint(1) unsigned NOT NULL default '0' COMMENT '管理員id',
  `name` varchar(40) NOT NULL default '' COMMENT '名稱',
  identifier varchar(40) NOT NULL default '' COMMENT '唯一標識符',
  description varchar(255) NOT NULL default '' COMMENT '解釋說明',
  datatables varchar(255) NOT NULL default '' COMMENT '插件數據表',
  `directory` varchar(100) NOT NULL default '' COMMENT '插件目錄',
  copyright varchar(100) NOT NULL default '' COMMENT '版權信息',
  modules text NOT NULL COMMENT '插件信息',
  `tempcat` text NOT NULL COMMENT '原始分類信息',
  version varchar(20) NOT NULL default '' COMMENT '插件版本',
  PRIMARY KEY  (pluginid),
  UNIQUE KEY identifier (identifier),
  KEY `catid` (`catid`)
) ENGINE=MyISAM COMMENT='插件表';

DROP TABLE IF EXISTS pre_common_plugincat;
CREATE TABLE pre_common_plugincat (
  `catid` int(11) NOT NULL AUTO_INCREMENT COMMENT '分類id',
  `displayorder` tinyint(3) NOT NULL COMMENT '排序',
  `catcode` varchar(40) NOT NULL COMMENT '分類唯一標識符',
  `catname` varchar(50) NOT NULL COMMENT '分類名稱',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否啟用',
  PRIMARY KEY (`catid`),
  KEY `status` (`status`),
  KEY `catecode` (`catcode`)
) ENGINE=MyISAM COMMENT='插件分類表';

DROP TABLE IF EXISTS pre_common_pluginvar;
CREATE TABLE pre_common_pluginvar (
  pluginvarid mediumint(8) unsigned NOT NULL auto_increment COMMENT '插件變量id',
  pluginid smallint(6) unsigned NOT NULL default '0' COMMENT '插件id',
  displayorder tinyint(3) NOT NULL default '0' COMMENT '顯示順序',
  title varchar(100) NOT NULL default '' COMMENT '名稱',
  description varchar(255) NOT NULL default '' COMMENT '解釋說明',
  variable varchar(40) NOT NULL default '' COMMENT '變量名',
  `type` varchar(20) NOT NULL default 'text' COMMENT '類型',
  `value` text NOT NULL COMMENT '值',
  extra text NOT NULL COMMENT '附加',
  PRIMARY KEY  (pluginvarid),
  KEY pluginid (pluginid)
) ENGINE=MyISAM COMMENT='插件變量表';

DROP TABLE IF EXISTS pre_common_remote_port;
CREATE TABLE pre_common_remote_port (
  id mediumint(8) unsigned NOT NULL default '0' COMMENT '對像id',
  idtype char(15) NOT NULL default '' COMMENT '對像類型post:帖子、blog:日誌、pic:相冊',
  useip char(15) NOT NULL default '' COMMENT 'IP地址',
  port smallint(6) unsigned NOT NULL default '0' COMMENT '端口號',
  PRIMARY KEY (id, idtype)
) ENGINE=MyISAM COMMENT='帖時的端口號';

DROP TABLE IF EXISTS pre_forum_thread_moderate;
CREATE TABLE pre_forum_thread_moderate (
  id int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'ID',
  status tinyint(3) NOT NULL default '0' COMMENT '狀態 0 審核中，1 已忽略',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY  (id),
  KEY status (status, dateline)
) ENGINE=MyISAM COMMENT='主題審核數據表';

DROP TABLE IF EXISTS pre_forum_post_moderate;
CREATE TABLE pre_forum_post_moderate (
  id int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'ID',
  status tinyint(3) NOT NULL default '0' COMMENT '狀態 0 審核中，1 已忽略',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY  (id),
  KEY status (status, dateline)
) ENGINE=MyISAM COMMENT='帖子審核數據表';

DROP TABLE IF EXISTS pre_home_blog_moderate;
CREATE TABLE pre_home_blog_moderate (
  id int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'ID',
  status tinyint(3) NOT NULL default '0' COMMENT '狀態 0 審核中，1 已忽略',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY  (id),
  KEY status (status, dateline)
) ENGINE=MyISAM COMMENT='日誌審核數據表';

DROP TABLE IF EXISTS pre_home_pic_moderate;
CREATE TABLE pre_home_pic_moderate (
  id int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'ID',
  status tinyint(3) NOT NULL default '0' COMMENT '狀態 0 審核中，1 已忽略',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY  (id),
  KEY status (status, dateline)
) ENGINE=MyISAM COMMENT='圖片審核數據表';

DROP TABLE IF EXISTS pre_home_doing_moderate;
CREATE TABLE pre_home_doing_moderate (
  id int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'ID',
  status tinyint(3) NOT NULL default '0' COMMENT '狀態 0 審核中，1 已忽略',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY  (id),
  KEY status (status, dateline)
) ENGINE=MyISAM COMMENT='記錄審核數據表';

DROP TABLE IF EXISTS pre_home_share_moderate;
CREATE TABLE pre_home_share_moderate (
  id int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'ID',
  status tinyint(3) NOT NULL default '0' COMMENT '狀態 0 審核中，1 已忽略',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY  (id),
  KEY status (status, dateline)
) ENGINE=MyISAM COMMENT='分享審核數據表';

DROP TABLE IF EXISTS pre_portal_article_moderate;
CREATE TABLE pre_portal_article_moderate (
  id int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'ID',
  status tinyint(3) NOT NULL default '0' COMMENT '狀態 0 審核中，1 已忽略',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY  (id),
  KEY status (status, dateline)
) ENGINE=MyISAM COMMENT='文章審核數據表';

DROP TABLE IF EXISTS pre_home_comment_moderate;
CREATE TABLE pre_home_comment_moderate (
  id int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'ID',
  idtype varchar(15) NOT NULL default '' COMMENT 'ID類型',
  status tinyint(3) NOT NULL default '0' COMMENT '狀態 0 審核中，1 已忽略',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY  (id),
  KEY idtype (idtype, status, dateline)
) ENGINE=MyISAM COMMENT='家園評論審核數據表';

DROP TABLE IF EXISTS pre_portal_comment_moderate;
CREATE TABLE pre_portal_comment_moderate (
  id int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'ID',
  idtype varchar(15) NOT NULL default '' COMMENT 'ID類型',
  status tinyint(3) NOT NULL default '0' COMMENT '狀態 0 審核中，1 已忽略',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY  (id),
  KEY idtype (idtype, status, dateline)
) ENGINE=MyISAM COMMENT='文章/專題評論審核數據表';

DROP TABLE IF EXISTS pre_forum_postlog;
CREATE TABLE pre_forum_postlog (
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `fid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `uid` INT(10) unsigned NOT NULL DEFAULT '0',
  `action` char(10) NOT NULL DEFAULT '',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (pid, tid),
  KEY fid (fid),
  KEY uid (uid),
  KEY dateline (dateline)
) ENGINE=MyISAM COMMENT='漫遊帖子日誌';

DROP TABLE IF EXISTS pre_forum_threadlog;
CREATE TABLE pre_forum_threadlog (
 `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
 `fid` smallint(6) unsigned NOT NULL DEFAULT '0',
 `uid` INT(10) unsigned NOT NULL DEFAULT '0',
 `otherid` smallint(6) unsigned NOT NULL DEFAULT '0',
 `action` char(10) NOT NULL,
 `expiry` int(10) unsigned NOT NULL DEFAULT '0',
 `dateline` int(10) unsigned NOT NULL DEFAULT '0',
 PRIMARY KEY (tid,fid,uid),
 KEY dateline (dateline)
) ENGINE=MyISAM COMMENT='漫遊主題日誌';

DROP TABLE IF EXISTS pre_forum_threadpreview;
CREATE TABLE pre_forum_threadpreview (
  tid mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '主題ID',
  relay int(10) unsigned NOT NULL default '0' COMMENT '轉播次數',
  content text NOT NULL COMMENT '主題內容預覽',
  PRIMARY KEY (tid)
) ENGINE=MyISAM COMMENT='服務於廣播';

DROP TABLE IF EXISTS pre_forum_threadhidelog;
CREATE TABLE pre_forum_threadhidelog (
  tid mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '主題ID',
  `uid` INT(10) unsigned NOT NULL DEFAULT '0' COMMENT '用戶ID',
  UNIQUE KEY uid (tid,uid)
) ENGINE=MyISAM COMMENT='主題隱藏記錄';

DROP TABLE IF EXISTS pre_forum_poll;
CREATE TABLE pre_forum_poll (
  tid mediumint(8) unsigned NOT NULL default '0' COMMENT '主題id',
  overt tinyint(1) NOT NULL default '0' COMMENT '是否公開投票參與人',
  multiple tinyint(1) NOT NULL default '0' COMMENT '是否多選',
  visible tinyint(1) NOT NULL default '0' COMMENT '是否投票後可見',
  maxchoices tinyint(3) unsigned NOT NULL default '0' COMMENT '最大可選項數',
  isimage tinyint(1) NOT NULL default '0' COMMENT '是否為圖片投票0: 普通投票; 1:圖片投票',
  expiration int(10) unsigned NOT NULL default '0' COMMENT '過期時間',
  pollpreview varchar(255) NOT NULL default '' COMMENT '選項內容前兩項預覽',
  voters mediumint(8) unsigned NOT NULL default '0' COMMENT '投票人數',
  PRIMARY KEY  (tid)
) ENGINE=MyISAM COMMENT='投票表';

DROP TABLE IF EXISTS pre_forum_pollvoter;
CREATE TABLE pre_forum_pollvoter (
  tid mediumint(8) unsigned NOT NULL default '0' COMMENT '主題id',
  uid int(10) unsigned NOT NULL default '0' COMMENT '會員id',
  username varchar(15) NOT NULL default '' COMMENT '會員名',
  `options` text NOT NULL COMMENT '選項 \t 分隔',
  dateline int(10) unsigned NOT NULL default '0' COMMENT '發表時間',
  KEY tid (tid),
  KEY uid (uid, dateline)
) ENGINE=MyISAM COMMENT='投票用戶表';

DROP TABLE IF EXISTS pre_forum_polloption;
CREATE TABLE pre_forum_polloption (
  polloptionid int(10) unsigned NOT NULL auto_increment COMMENT '選項id',
  tid mediumint(8) unsigned NOT NULL default '0' COMMENT '主題id',
  votes mediumint(8) unsigned NOT NULL default '0' COMMENT '票數',
  displayorder tinyint(3) NOT NULL default '0' COMMENT '顯示順序',
  polloption varchar(80) NOT NULL default '' COMMENT '選項內容',
  voterids mediumtext NOT NULL COMMENT '投票人id',
  PRIMARY KEY  (polloptionid),
  KEY tid (tid,displayorder)
) ENGINE=MyISAM COMMENT='投票選項表';

DROP TABLE IF EXISTS pre_forum_polloption_image;
CREATE TABLE pre_forum_polloption_image (
  aid int(10) unsigned NOT NULL auto_increment COMMENT '圖片附件id',
  poid int(10) unsigned NOT NULL default '0' COMMENT '選項id',
  tid mediumint(8) unsigned NOT NULL default '0' COMMENT '主題id',
  pid int(10) unsigned NOT NULL default '0' COMMENT '帖子id',
  uid int(10) unsigned NOT NULL default '0' COMMENT '會員id',
  filename varchar(255) NOT NULL default '' COMMENT '原文件名',
  filesize int(10) unsigned NOT NULL default '0' COMMENT '文件大小',
  attachment varchar(255) NOT NULL default '' COMMENT '服務器路徑',
  remote tinyint(1) unsigned NOT NULL default '0' COMMENT '是否遠程附件',
  width smallint(6) unsigned NOT NULL default '0' COMMENT '附件寬度',
  thumb tinyint(1) unsigned NOT NULL default '0' COMMENT '是否有縮略率圖',
  dateline int(10) unsigned NOT NULL default '0' COMMENT '上傳時間',
  PRIMARY KEY (aid),
  KEY poid (poid),
  KEY tid (tid),
  KEY uid (uid)
) ENGINE=MyISAM COMMENT='投票選項圖片';

DROP TABLE IF EXISTS pre_forum_post;
CREATE TABLE pre_forum_post (
  pid int(10) unsigned NOT NULL COMMENT '帖子id',
  fid mediumint(8) unsigned NOT NULL default '0' COMMENT '論壇id',
  tid mediumint(8) unsigned NOT NULL default '0' COMMENT '主題id',
  `first` tinyint(1) NOT NULL default '0' COMMENT '是否是首貼',
  author varchar(15) NOT NULL default '' COMMENT '作者姓名',
  authorid mediumint(8) unsigned NOT NULL default '0' COMMENT '作者id',
  `subject` varchar(80) NOT NULL default '' COMMENT '標題',
  dateline int(10) unsigned NOT NULL default '0' COMMENT '發表時間',
  message mediumtext NOT NULL COMMENT '消息',
  useip varchar(15) NOT NULL default '' COMMENT '發帖者IP',
  port smallint(6) unsigned NOT NULL default '0' COMMENT '端口號',
  invisible tinyint(1) NOT NULL default '0' COMMENT '是否通過審核',
  anonymous tinyint(1) NOT NULL default '0' COMMENT '是否匿名',
  usesig tinyint(1) NOT NULL default '0' COMMENT '是否啟用簽名',
  htmlon tinyint(1) NOT NULL default '0' COMMENT '是否允許HTML',
  bbcodeoff tinyint(1) NOT NULL default '0' COMMENT '是否關閉BBCODE',
  smileyoff tinyint(1) NOT NULL default '0' COMMENT '是否關閉表情',
  parseurloff tinyint(1) NOT NULL default '0' COMMENT '是否允許粘貼URL',
  attachment tinyint(1) NOT NULL default '0' COMMENT '附件',
  rate smallint(6) NOT NULL default '0' COMMENT '評分分數',
  ratetimes tinyint(3) unsigned NOT NULL default '0' COMMENT '評分次數',
  `status` int(10) NOT NULL default '0' COMMENT '帖子狀態',
  tags varchar(255) NOT NULL default '0' COMMENT '新增字段，用於存放tag',
  `comment` tinyint(1) NOT NULL default '0' COMMENT '是否存在點評',
  replycredit int(10) NOT NULL default '0' COMMENT '回帖獲得積分記錄',
  `position` int(8) unsigned NOT NULL auto_increment COMMENT '帖子位置信息',
  PRIMARY KEY  (tid, `position`),
  KEY fid (fid),
  KEY authorid (authorid,invisible),
  KEY dateline (dateline),
  KEY invisible (invisible),
  KEY displayorder (tid,invisible,dateline),
  KEY `first` (tid,`first`),
  UNIQUE KEY pid (pid)
) ENGINE=MyISAM COMMENT='帖子表';

DROP TABLE IF EXISTS pre_forum_postcomment;
CREATE TABLE pre_forum_postcomment (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tid` mediumint(8) unsigned NOT NULL default '0' COMMENT '主題ID',
  `pid` int(10) unsigned NOT NULL default '0' COMMENT '帖子ID',
  `author` varchar(15) NOT NULL default '' COMMENT '作者',
  `authorid` mediumint(8) NOT NULL default '0' COMMENT '作者ID x1.5以後：0為遊客　-1為觀點',
  `dateline` int(10) unsigned NOT NULL default '0' COMMENT '時間',
  `comment` varchar(255) NOT NULL default '' COMMENT '點評內容',
  `score` tinyint(1) NOT NULL default '0' COMMENT '是否包含點評觀點',
  `useip` varchar(15) NOT NULL default '' COMMENT '發帖者IP',
  `port` smallint(6) unsigned NOT NULL default '0' COMMENT '端口號',
  `rpid` int(10) unsigned NOT NULL default '0' COMMENT '關聯的帖子ID',
  PRIMARY KEY (`id`),
  KEY `tid` (`tid`),
  KEY authorid (authorid),
  KEY score (score),
  KEY rpid (rpid),
  KEY `pid` (`pid`,`dateline`)
) ENGINE=MyISAM COMMENT='點評帖子表';

DROP TABLE IF EXISTS pre_forum_post_location;
CREATE TABLE pre_forum_post_location (
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tid` mediumint(8) unsigned DEFAULT '0',
  `uid` INT(10) unsigned DEFAULT '0',
  `mapx` varchar(255) NOT NULL,
  `mapy` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `tid` (`tid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM COMMENT='帖子地理位置表';

DROP TABLE IF EXISTS pre_forum_post_tableid;
CREATE TABLE pre_forum_post_tableid (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Post ID',
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM  COMMENT='post分表協調表';

DROP TABLE IF EXISTS pre_forum_poststick;
CREATE TABLE pre_forum_poststick (
  `tid` mediumint(8) unsigned NOT NULL,
  `pid` int(10) unsigned NOT NULL,
  `position` int(10) unsigned NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`tid`,`pid`),
  KEY `dateline` (`tid`,`dateline`)
) ENGINE=MyISAM COMMENT='回帖置頂表';

DROP TABLE IF EXISTS pre_forum_promotion;
CREATE TABLE pre_forum_promotion (
  ip char(15) NOT NULL default '' COMMENT 'IP地址',
  uid int(10) unsigned NOT NULL default '0' COMMENT '會員id',
  username char(15) NOT NULL default '' COMMENT '會員名',
  PRIMARY KEY  (ip)
) ENGINE=MyISAM COMMENT='論壇推廣';

DROP TABLE IF EXISTS pre_forum_ratelog;
CREATE TABLE pre_forum_ratelog (
  pid int(10) unsigned NOT NULL default '0' COMMENT '帖子id',
  uid int(10) unsigned NOT NULL default '0' COMMENT '會員id',
  username char(15) NOT NULL default '' COMMENT '會員名',
  extcredits tinyint(1) unsigned NOT NULL default '0' COMMENT '評分字段',
  dateline int(10) unsigned NOT NULL default '0' COMMENT '評分時間',
  score smallint(6) NOT NULL default '0' COMMENT '分數',
  reason char(40) NOT NULL default '' COMMENT '操作理由',
  KEY pid (pid,dateline),
  KEY dateline (dateline),
  KEY uid (uid)
) ENGINE=MyISAM COMMENT='帖子評分記錄表';

DROP TABLE IF EXISTS pre_forum_relatedthread;
CREATE TABLE pre_forum_relatedthread (
  tid mediumint(8) NOT NULL default '0' COMMENT '主題id',
  `type` enum('general','trade') NOT NULL default 'general' COMMENT '關鍵詞類型',
  expiration int(10) NOT NULL default '0' COMMENT '過期時間',
  keywords varchar(255) NOT NULL default '' COMMENT '關鍵字',
  relatedthreads text NOT NULL COMMENT '相關主題序列',
  PRIMARY KEY  (tid,`type`)
) ENGINE=MyISAM COMMENT='相關主題表';

DROP TABLE IF EXISTS pre_forum_rsscache;
CREATE TABLE pre_forum_rsscache (
  lastupdate int(10) unsigned NOT NULL default '0' COMMENT '最後更新時間',
  fid mediumint(8) unsigned NOT NULL default '0' COMMENT '論壇id',
  tid mediumint(8) unsigned NOT NULL default '0' COMMENT '主題id',
  dateline int(10) unsigned NOT NULL default '0' COMMENT '發表時間',
  forum char(50) NOT NULL default '' COMMENT '論壇名稱',
  author char(15) NOT NULL default '' COMMENT '作者',
  `subject` char(80) NOT NULL default '' COMMENT '標題',
  description char(255) NOT NULL default '' COMMENT '解釋說明',
  guidetype char(10) NOT NULL default '' COMMENT '導讀中的類型',
  UNIQUE KEY tid (tid),
  KEY fid (fid,dateline)
) ENGINE=MyISAM COMMENT='rss緩存表';

DROP TABLE IF EXISTS pre_forum_replycredit;
CREATE TABLE pre_forum_replycredit (
  tid mediumint(6) unsigned NOT NULL COMMENT '主題tid',
  extcredits mediumint(6) unsigned NOT NULL DEFAULT '0' COMMENT '單次回復獎勵額度',
  extcreditstype tinyint(1) NOT NULL DEFAULT '0' COMMENT '本規則下獎勵積分的類型',
  times smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '回復獎勵次數',
  membertimes smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '單個用戶參與次數',
  random tinyint(1) NOT NULL DEFAULT '0' COMMENT '用戶設置的回帖獎勵幾率',
  PRIMARY KEY  (tid)
) ENGINE=MyISAM COMMENT='主題回帖獲得積分規則表';

DROP TABLE IF EXISTS pre_common_searchindex;
CREATE TABLE pre_common_searchindex (
  searchid int(10) unsigned NOT NULL auto_increment COMMENT '緩存id',
  srchmod tinyint(3) unsigned NOT NULL COMMENT 'mod模塊',
  keywords varchar(255) NOT NULL default '' COMMENT '關鍵字',
  searchstring text NOT NULL COMMENT '查找字符串',
  useip varchar(15) NOT NULL default '' COMMENT '搜索人IP',
  uid mediumint(10) unsigned NOT NULL default '0' COMMENT '會員id',
  dateline int(10) unsigned NOT NULL default '0' COMMENT '搜索時間',
  expiration int(10) unsigned NOT NULL default '0' COMMENT '過期時間',
  threadsortid smallint(6) unsigned NOT NULL default '0' COMMENT '分類信息id',
  num smallint(6) unsigned NOT NULL default '0' COMMENT '主題數量',
  ids text NOT NULL COMMENT '主題id序列',
  PRIMARY KEY  (searchid),
  KEY srchmod (srchmod)
) ENGINE=MyISAM COMMENT='搜索緩存表';

DROP TABLE IF EXISTS pre_common_sphinxcounter;
CREATE TABLE pre_common_sphinxcounter (
  `indexid` tinyint(1) NOT NULL,
  `maxid` int(10) NOT NULL,
  PRIMARY KEY  (`indexid`)
) ENGINE=MyISAM COMMENT='Sphinx 增量索引記錄表';

DROP TABLE IF EXISTS pre_forum_spacecache;
CREATE TABLE pre_forum_spacecache (
  uid int(10) unsigned NOT NULL default '0' COMMENT '用戶 uid',
  variable varchar(20) NOT NULL COMMENT '緩存變量的名稱',
  `value` text NOT NULL COMMENT '緩存變量的值',
  expiration int(10) unsigned NOT NULL default '0' COMMENT '過期時間',
  PRIMARY KEY  (uid,variable)
) ENGINE=MyISAM COMMENT='minispace緩存表';

DROP TABLE IF EXISTS pre_forum_statlog;
CREATE TABLE pre_forum_statlog (
  `logdate` date NOT NULL COMMENT '日誌日期',
  `fid` mediumint(8) unsigned NOT NULL COMMENT '版塊ID',
  `type` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '記錄類型',
  `value` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '記錄值',
  PRIMARY KEY (`logdate`,`fid`)
) ENGINE=MyISAM COMMENT='版塊統計日誌表';

DROP TABLE IF EXISTS pre_common_task;
CREATE TABLE pre_common_task (
  taskid smallint(6) unsigned NOT NULL auto_increment COMMENT '任務id',
  relatedtaskid smallint(6) unsigned NOT NULL default '0' COMMENT '依存任務id\n必須完成依存任務才能申請該任務',
  available tinyint(1) NOT NULL default '0' COMMENT '是否啟用',
  `name` varchar(50) NOT NULL default '' COMMENT '任務名稱',
  description text NOT NULL COMMENT '任務描述',
  icon varchar(150) NOT NULL default '' COMMENT '任務圖標',
  applicants mediumint(8) unsigned NOT NULL default '0' COMMENT '已申請任務人次',
  achievers mediumint(8) unsigned NOT NULL default '0' COMMENT '已完成任務人次',
  tasklimits mediumint(8) unsigned NOT NULL default '0' COMMENT '允許申請並完成該任務的人次上限',
  applyperm text NOT NULL COMMENT '允許申請任務的用戶組id, 格式:	1	2	3',
  scriptname varchar(50) NOT NULL default '' COMMENT '任務腳本文件名',
  starttime int(10) unsigned NOT NULL default '0' COMMENT '任務上線時間',
  endtime int(10) unsigned NOT NULL default '0' COMMENT '任務下線時間',
  period int(10) unsigned NOT NULL default '0' COMMENT '任務週期 單位：小時 默認為0表示一次性任務 設置為24即1天表示日常任務',
  periodtype tinyint(1) NOT NULL default '0' COMMENT '任務間隔週期單位 0:小時 1:天 2:周 3:月',
  reward enum('credit','magic','medal','invite','group') NOT NULL default 'credit' COMMENT '獎勵類型\n(credit:積分 magic:道具 medal:勳章 invite:邀請碼 group:特殊用戶組)',
  prize varchar(15) NOT NULL default '' COMMENT '獎品: 哪一個擴展積分, 道具id, 勳章id,邀請碼有效期， 特殊用戶組id',
  bonus int(10) NOT NULL default '0' COMMENT '獎品數量/有效期: \n積分數量, 道具數量, 勳章有效期, 邀請碼數量，特殊用戶組有效期',
  displayorder smallint(6) unsigned NOT NULL default '0' COMMENT '顯示順序',
  version varchar(15) NOT NULL default '' COMMENT '任務腳本版本號',
  PRIMARY KEY  (taskid)
) ENGINE=MyISAM COMMENT='論壇任務表';

DROP TABLE IF EXISTS pre_common_taskvar;
CREATE TABLE pre_common_taskvar (
  taskvarid mediumint(8) unsigned NOT NULL auto_increment COMMENT '任務變量id',
  taskid smallint(6) unsigned NOT NULL default '0' COMMENT '任務id',
  sort enum('apply','complete') NOT NULL default 'complete' COMMENT '變量類別\n(apply:申請任務條件 complete:完成任務條件)',
  `name` varchar(100) NOT NULL default '' COMMENT '變量名稱',
  description varchar(255) NOT NULL default '' COMMENT '變量描述',
  variable varchar(40) NOT NULL default '' COMMENT '變量名',
  `type` varchar(20) NOT NULL default 'text' COMMENT '變量類型',
  `value` text NOT NULL COMMENT '變量值',
  PRIMARY KEY  (taskvarid),
  KEY taskid (taskid)
) ENGINE=MyISAM COMMENT='論壇任務設置表';

DROP TABLE IF EXISTS pre_forum_thread;
CREATE TABLE pre_forum_thread (
  tid mediumint(8) unsigned NOT NULL auto_increment COMMENT '主題id',
  fid mediumint(8) unsigned NOT NULL default '0' COMMENT '上級論壇',
  posttableid smallint(6) unsigned NOT NULL default '0' COMMENT '帖子表ID',
  typeid smallint(6) unsigned NOT NULL default '0' COMMENT '主題分類id',
  sortid smallint(6) unsigned NOT NULL default '0' COMMENT '分類信息id',
  readperm tinyint(3) unsigned NOT NULL default '0' COMMENT '閱讀權限',
  price smallint(6) NOT NULL default '0' COMMENT '價格',
  author char(15) NOT NULL default '' COMMENT '會員名',
  authorid mediumint(8) unsigned NOT NULL default '0' COMMENT '會員id',
  `subject` char(80) NOT NULL default '' COMMENT '標題',
  dateline int(10) unsigned NOT NULL default '0' COMMENT '發表時間',
  lastpost int(10) unsigned NOT NULL default '0' COMMENT '最後發表',
  lastposter char(15) NOT NULL default '' COMMENT '最後發表人id',
  views int(10) unsigned NOT NULL default '0' COMMENT '瀏覽次數',
  replies mediumint(8) unsigned NOT NULL default '0' COMMENT '回復次數',
  displayorder tinyint(1) NOT NULL default '0' COMMENT '顯示順序',
  highlight tinyint(1) NOT NULL default '0' COMMENT '是否高亮',
  digest tinyint(1) NOT NULL default '0' COMMENT '是否精華',
  rate tinyint(1) NOT NULL default '0' COMMENT '是否評分',
  special tinyint(1) NOT NULL default '0' COMMENT '特殊主題,1:投票;2:商品;3:懸賞;4:活動;5:辯論貼;127:插件相關',
  attachment tinyint(1) NOT NULL default '0' COMMENT '附件,0無附件 1普通附件 2有圖片附件',
  moderated tinyint(1) NOT NULL default '0' COMMENT '是否被管理員改動',
  closed mediumint(8) unsigned NOT NULL default '0' COMMENT '是否關閉',
  stickreply tinyint(1) unsigned NOT NULL default '0' COMMENT '是否有回帖置頂',
  recommends smallint(6) NOT NULL default '0' COMMENT '推薦指數',
  recommend_add smallint(6) NOT NULL default '0' COMMENT '支持人數',
  recommend_sub smallint(6) NOT NULL default '0' COMMENT '反對人數',
  heats int(10) unsigned NOT NULL default '0' COMMENT '主題熱度值',
  status smallint(6) unsigned NOT NULL default '0' ,
  isgroup tinyint(1) NOT NULL default '0' COMMENT '是否為群組帖子',
  favtimes mediumint(8) NOT NULL default '0' COMMENT '主題收藏次數',
  sharetimes mediumint(8) NOT NULL default '0' COMMENT '主題分享次數',
  `stamp` tinyint(3) NOT NULL default '-1' COMMENT '主題圖章',
  `icon` tinyint(3) NOT NULL default '-1' COMMENT '主題圖標',
  pushedaid mediumint(8) NOT NULL default '0' COMMENT '被推送到的文章aid',
  cover smallint(6) NOT NULL default '0' COMMENT '主題封面  負數:遠程　正數:本地 0:無封面',
  replycredit smallint(6) NOT NULL default '0' COMMENT '回帖獎勵積分主題記錄積分值',
  relatebytag char(255) NOT NULL default '0' COMMENT '根據帖子標籤取的相關主題id (time /t tid,...)',
  maxposition int(8) unsigned NOT NULL default '0' COMMENT '最大回帖位置信息',
  bgcolor char(8) NOT NULL default '' COMMENT '保存高亮背景色',
  comments int(10) unsigned NOT NULL default '0' COMMENT '點評數',
  hidden smallint(6) unsigned NOT NULL default '0' COMMENT '是否隱藏',
  PRIMARY KEY  (tid),
  KEY digest (digest),
  KEY sortid (sortid),
  KEY displayorder (fid,displayorder,lastpost),
  KEY typeid (fid,typeid,displayorder,lastpost),
  KEY recommends (recommends),
  KEY heats (heats),
  KEY authorid (authorid),
  KEY isgroup (isgroup, lastpost),
  KEY special (special)
) ENGINE=MyISAM COMMENT='主題表';

DROP TABLE IF EXISTS pre_forum_threadaddviews;
CREATE TABLE pre_forum_threadaddviews (
  tid mediumint(8) unsigned NOT NULL default '0' COMMENT '主題id',
  addviews int(10) unsigned NOT NULL default '0' COMMENT '瀏覽次數',
  PRIMARY KEY (tid)
) ENGINE=MyISAM COMMENT='主題查看數延時更新表';

DROP TABLE IF EXISTS pre_forum_threadcalendar;
CREATE TABLE pre_forum_threadcalendar (
  cid mediumint(8) unsigned NOT NULL auto_increment COMMENT '帖子日曆ID',
  fid mediumint(8) unsigned NOT NULL default '0' COMMENT '版塊ID',
  dateline int(10) unsigned NOT NULL default '0' COMMENT '日期',
  hotnum int(10) unsigned NOT NULL default '0' COMMENT '熱帖總數',
  PRIMARY KEY (cid),
  KEY fid (fid,dateline)
) ENGINE=MyISAM COMMENT='熱帖日曆表';

DROP TABLE IF EXISTS pre_forum_threadhot;
CREATE TABLE pre_forum_threadhot (
  cid mediumint(8) unsigned NOT NULL default '0' COMMENT '帖子日曆ID',
  fid mediumint(8) unsigned NOT NULL default '0' COMMENT '版塊ID',
  tid mediumint(8) unsigned NOT NULL default '0' COMMENT '主題ID',
  PRIMARY KEY (cid, tid),
  KEY fid (fid)
) ENGINE=MyISAM COMMENT='熱帖日曆數據表';

DROP TABLE IF EXISTS pre_forum_threaddisablepos;
CREATE TABLE pre_forum_threaddisablepos (
  tid mediumint(8) unsigned NOT NULL default '0' COMMENT '主題id',
  PRIMARY KEY (tid)
) ENGINE=MEMORY COMMENT='主題有樓層不準確時不使用position查詢';

DROP TABLE IF EXISTS pre_forum_threadclosed;
CREATE TABLE pre_forum_threadclosed (
  tid mediumint(8) unsigned NOT NULL default '0' COMMENT '對應源主題',
  redirect mediumint(8) unsigned NOT NULL default '0' COMMENT '保留的指向 tid',
  PRIMARY KEY (tid)
) ENGINE=MyISAM COMMENT='主題轉移後保留的指向記錄';

DROP TABLE IF EXISTS pre_forum_threadmod;
CREATE TABLE pre_forum_threadmod (
  tid mediumint(8) unsigned NOT NULL default '0' COMMENT '主題id',
  uid int(10) unsigned NOT NULL default '0' COMMENT '會員id',
  username char(15) NOT NULL default '' COMMENT '會員名',
  dateline int(10) unsigned NOT NULL default '0' COMMENT '操作時間',
  expiration int(10) unsigned NOT NULL default '0' COMMENT '有效時間',
  `action` char(5) NOT NULL default '' COMMENT '操作',
  `status` tinyint(1) NOT NULL default '0' COMMENT '狀態',
  magicid smallint(6) unsigned NOT NULL COMMENT '使用道具id',
  `stamp` TINYINT(3) NOT NULL COMMENT '主題圖章/圖標 ID',
  reason char(40) NOT NULL DEFAULT '' COMMENT '操作原因',
  KEY tid (tid,dateline),
  KEY expiration (expiration,`status`)
) ENGINE=MyISAM COMMENT='主題管理記錄表';

DROP TABLE IF EXISTS pre_forum_threadpartake;
CREATE TABLE pre_forum_threadpartake (
  tid mediumint(8) unsigned NOT NULL default '0' COMMENT '主題id',
  uid int(10) unsigned NOT NULL default '0' COMMENT '會員id',
  dateline int(10) unsigned NOT NULL default '0' COMMENT '參與時間',
  KEY tid (tid,uid)
) ENGINE=MyISAM COMMENT='主題參與者記錄表';

DROP TABLE IF EXISTS pre_forum_threadrush;
CREATE TABLE pre_forum_threadrush (
  tid mediumint(8) unsigned NOT NULL default '0' COMMENT '主題id',
  stopfloor mediumint(8) unsigned NOT NULL default '0' COMMENT '截止樓層',
  starttimefrom int(10) unsigned NOT NULL default '0' COMMENT '開始時間',
  starttimeto int(10) unsigned NOT NULL default '0' COMMENT '結束時間',
  rewardfloor text NOT NULL default '' COMMENT '獎勵樓層',
  creditlimit int(10) NOT NULL default '-996' COMMENT '積分下限',
  replylimit smallint(6) NOT NULL default '0' COMMENT '回帖次數上限',
  PRIMARY KEY  (tid)
) ENGINE=MyISAM COMMENT='搶樓設置表';

DROP TABLE IF EXISTS pre_forum_threadtype;
CREATE TABLE pre_forum_threadtype (
  typeid smallint(6) unsigned NOT NULL auto_increment COMMENT '分類信息id',
  `fid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  displayorder smallint(6) NOT NULL default '0' COMMENT '顯示順序',
  `name` varchar(255) NOT NULL default '' COMMENT '名稱',
  description varchar(255) NOT NULL default '' COMMENT '解釋說明',
  `icon` varchar(255) NOT NULL default '' COMMENT '分類圖標URL',
  special smallint(6) NOT NULL default '0' COMMENT '分類狀態',
  modelid smallint(6) unsigned NOT NULL default '0' COMMENT '分類模型id',
  expiration tinyint(1) NOT NULL default '0' COMMENT '分類有效期',
  template text NOT NULL COMMENT '分類信息內容模板',
  stemplate text NOT NULL COMMENT '分類信息主題模板',
  ptemplate text NOT NULL COMMENT '分類信息發帖模板',
  btemplate text NOT NULL COMMENT '分類信息模塊調用模板',
  PRIMARY KEY (typeid)
) ENGINE=MyISAM COMMENT='分類信息表';

DROP TABLE IF EXISTS pre_forum_trade;
CREATE TABLE pre_forum_trade (
  tid mediumint(8) unsigned NOT NULL COMMENT '主題id',
  pid int(10) unsigned NOT NULL COMMENT '帖子id',
  typeid smallint(6) unsigned NOT NULL COMMENT '主題分類id',
  sellerid mediumint(8) unsigned NOT NULL COMMENT '賣家id',
  seller char(15) NOT NULL COMMENT '賣家名',
  account char(50) NOT NULL COMMENT '賣家帳號',
  tenpayaccount char(20) NOT NULL default '' COMMENT '賣家財付通賬號',
  `subject` char(100) NOT NULL COMMENT '標題',
  price decimal(8,2) NOT NULL COMMENT '價格',
  amount smallint(6) unsigned NOT NULL default '1' COMMENT '數量',
  quality tinyint(1) unsigned NOT NULL default '0' COMMENT '成色',
  locus char(20) NOT NULL COMMENT '所在地',
  transport tinyint(1) NOT NULL default '0' COMMENT '物流方式',
  ordinaryfee smallint(4) unsigned NOT NULL default '0' COMMENT '平郵附加費',
  expressfee smallint(4) unsigned NOT NULL default '0' COMMENT '快遞附加費',
  emsfee smallint(4) unsigned NOT NULL default '0' COMMENT 'EMS附加費',
  itemtype tinyint(1) NOT NULL default '0' COMMENT '商品類型',
  dateline int(10) unsigned NOT NULL default '0' COMMENT '交易時間',
  expiration int(10) unsigned NOT NULL default '0' COMMENT '過期時間',
  lastbuyer char(15) NOT NULL COMMENT '最後買家用戶名',
  lastupdate int(10) unsigned NOT NULL default '0' COMMENT '最後交易時間',
  totalitems smallint(5) unsigned NOT NULL default '0' COMMENT '總交易量',
  tradesum decimal(8,2) NOT NULL default '0.00' COMMENT '總交易額',
  closed tinyint(1) NOT NULL default '0' COMMENT '是否關閉',
  aid mediumint(8) unsigned NOT NULL COMMENT '商品圖片的 Aid',
  displayorder tinyint(1) NOT NULL COMMENT '顯示順序',
  costprice decimal(8,2) NOT NULL COMMENT '商品原價',
  credit int(10) unsigned NOT NULL default '0' COMMENT '積分價格',
  costcredit int(10) unsigned NOT NULL default '0' COMMENT '積分原價',
  credittradesum int(10) unsigned NOT NULL default '0' COMMENT '總積分交易額',
  PRIMARY KEY  (tid,pid),
  KEY pid (pid),
  KEY sellerid (sellerid),
  KEY totalitems (totalitems),
  KEY tradesum (tradesum),
  KEY displayorder (tid,displayorder),
  KEY sellertrades (sellerid,tradesum,totalitems),
  KEY typeid (typeid),
  KEY credittradesum (credittradesum),
  KEY expiration (expiration)
) ENGINE=MyISAM COMMENT='商品數據表';

DROP TABLE IF EXISTS pre_forum_threadclass;
CREATE TABLE pre_forum_threadclass (
  `typeid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '分類ID',
  `fid` mediumint(8) unsigned NOT NULL COMMENT '所屬版塊ID',
  `name` varchar(255) NOT NULL COMMENT '分類名稱',
  `displayorder` mediumint(9) NOT NULL COMMENT '顯示順序',
  `icon` varchar(255) NOT NULL COMMENT '分類圖標URL',
  `moderators` tinyint(1) NOT NULL default '0' COMMENT '僅管理者可用',
  PRIMARY KEY (`typeid`),
  KEY fid (fid, displayorder)
) ENGINE=MyISAM COMMENT='主題分類表';

DROP TABLE IF EXISTS pre_forum_tradecomment;
CREATE TABLE pre_forum_tradecomment (
  id mediumint(8) NOT NULL auto_increment COMMENT 'id',
  orderid char(32) NOT NULL COMMENT '訂單 id',
  pid int(10) unsigned NOT NULL COMMENT '帖子 id',
  `type` tinyint(1) NOT NULL COMMENT '類型',
  raterid mediumint(8) unsigned NOT NULL COMMENT '評價方會員id',
  rater char(15) NOT NULL COMMENT '評價方用戶名',
  rateeid mediumint(8) unsigned NOT NULL COMMENT '被評價方會員id',
  ratee char(15) NOT NULL COMMENT '被評價方用戶名',
  message char(200) NOT NULL COMMENT '評價內容',
  explanation char(200) NOT NULL COMMENT '解釋',
  score tinyint(1) NOT NULL COMMENT '評分',
  dateline int(10) unsigned NOT NULL COMMENT '評價時間',
  PRIMARY KEY  (id),
  KEY raterid (raterid,`type`,dateline),
  KEY rateeid (rateeid,`type`,dateline),
  KEY orderid (orderid)
) ENGINE=MyISAM COMMENT='信用評價';

DROP TABLE IF EXISTS pre_forum_tradelog;
CREATE TABLE pre_forum_tradelog (
  tid mediumint(8) unsigned NOT NULL COMMENT '主題id',
  pid int(10) unsigned NOT NULL COMMENT '帖子id',
  orderid varchar(32) NOT NULL COMMENT '訂單號id',
  tradeno varchar(32) NOT NULL COMMENT '支付寶訂單號',
  paytype tinyint(1) unsigned NOT NULL default '0' COMMENT '在線支付方式',
  `subject` varchar(100) NOT NULL COMMENT '標題',
  price decimal(8,2) NOT NULL default '0.00' COMMENT '價格',
  quality tinyint(1) unsigned NOT NULL default '0' COMMENT '成色',
  itemtype tinyint(1) NOT NULL default '0' COMMENT '商品類型',
  number smallint(5) unsigned NOT NULL default '0' COMMENT '數量',
  tax decimal(6,2) unsigned NOT NULL default '0.00' COMMENT '交易手續費',
  locus varchar(100) NOT NULL COMMENT '物品所在地',
  sellerid mediumint(8) unsigned NOT NULL COMMENT '賣家id',
  seller varchar(15) NOT NULL COMMENT '賣家名',
  selleraccount varchar(50) NOT NULL COMMENT '賣家交易帳號',
  tenpayaccount varchar(20) NOT NULL default '0' COMMENT '賣家財付通賬號',
  buyerid mediumint(8) unsigned NOT NULL COMMENT '買家id',
  buyer varchar(15) NOT NULL COMMENT '買家名',
  buyercontact varchar(50) NOT NULL COMMENT '買家聯繫方式',
  buyercredits smallint(5) unsigned NOT NULL default '0' COMMENT '買家暫扣積分',
  buyermsg varchar(200) default NULL COMMENT '買家留言',
  `status` tinyint(1) NOT NULL default '0' COMMENT '狀態',
  lastupdate int(10) unsigned NOT NULL default '0' COMMENT '狀態最後更新',
  offline tinyint(1) NOT NULL default '0' COMMENT '是否離線交易',
  buyername varchar(50) NOT NULL COMMENT '買家姓名',
  buyerzip varchar(10) NOT NULL COMMENT '買家郵編',
  buyerphone varchar(20) NOT NULL COMMENT '買家電話',
  buyermobile varchar(20) NOT NULL COMMENT '買家手機',
  transport tinyint(1) NOT NULL default '0' COMMENT '運輸方式',
  transportfee smallint(6) unsigned NOT NULL default '0' COMMENT '運輸費用',
  baseprice decimal(8,2) NOT NULL COMMENT '商品原價',
  discount tinyint(1) NOT NULL default '0' COMMENT '折扣',
  ratestatus tinyint(1) NOT NULL default '0' COMMENT '評價狀態',
  message text NOT NULL COMMENT '訂單留言',
  credit int(10) unsigned NOT NULL default '0' COMMENT '積分價格',
  basecredit int(10) unsigned NOT NULL default '0' COMMENT '積分原價',
  UNIQUE KEY orderid (orderid),
  KEY sellerid (sellerid),
  KEY buyerid (buyerid),
  KEY `status` (`status`),
  KEY buyerlog (buyerid,`status`,lastupdate),
  KEY sellerlog (sellerid,`status`,lastupdate),
  KEY tid (tid,pid),
  KEY pid (pid)
) ENGINE=MyISAM COMMENT='交易記錄表';

DROP TABLE IF EXISTS pre_forum_typeoption;
CREATE TABLE pre_forum_typeoption (
  optionid smallint(6) unsigned NOT NULL AUTO_INCREMENT COMMENT '分類信息項目ID',
  classid smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '分類信息上級項目ID',
  displayorder tinyint(3) NOT NULL DEFAULT '0' COMMENT '分類信息排序',
  expiration tinyint(1) NOT NULL COMMENT '分類信息項目是否受有效期限制',
  protect varchar(255) NOT NULL COMMENT '分類信息項目是否是保護項目',
  title varchar(255) NOT NULL DEFAULT '' COMMENT '分類信息項目標題',
  description varchar(255) NOT NULL DEFAULT '' COMMENT '分類信息項目描述',
  identifier varchar(255) NOT NULL DEFAULT '' COMMENT '分類信息項目標識',
  `type` varchar(255) NOT NULL DEFAULT '' COMMENT '分類信息項目類型',
  unit varchar(255) NOT NULL COMMENT '分類信息項目單位',
  rules mediumtext NOT NULL COMMENT '分類信息項目規則',
  permprompt mediumtext NOT NULL COMMENT '分類信息項目權限提示',
  PRIMARY KEY (optionid),
  KEY classid (classid)
) ENGINE=MyISAM COMMENT='分類信息設置項目表';

DROP TABLE IF EXISTS pre_forum_typeoptionvar;
CREATE TABLE pre_forum_typeoptionvar (
  sortid smallint(6) unsigned NOT NULL default '0' COMMENT '分類信息id',
  tid mediumint(8) unsigned NOT NULL default '0' COMMENT '分類信息數據對應帖子id',
  fid mediumint(8) unsigned NOT NULL default '0' COMMENT '分類信息數據對應帖子板塊id',
  optionid smallint(6) unsigned NOT NULL default '0' COMMENT '分類信息數據對應選項id',
  expiration int(10) unsigned NOT NULL default '0' COMMENT '分類信息數據有效期',
  `value` mediumtext NOT NULL COMMENT '分類信息數據數值',
  KEY sortid (sortid),
  KEY tid (tid),
  KEY fid (fid)
) ENGINE=MyISAM COMMENT='分類信息項目數據表';

DROP TABLE IF EXISTS pre_forum_typevar;
CREATE TABLE pre_forum_typevar (
  sortid smallint(6) NOT NULL default '0' COMMENT '分類信息id',
  optionid smallint(6) NOT NULL default '0' COMMENT '分類信息對應項目id',
  available tinyint(1) NOT NULL default '0' COMMENT '分類信息對應項目是否可用',
  required tinyint(1) NOT NULL default '0' COMMENT '分類信息對應項目是否必填',
  unchangeable tinyint(1) NOT NULL default '0' COMMENT '分類信息對應項目是否可修改',
  search tinyint(1) NOT NULL default '0' COMMENT '分類信息對應項目是否可搜索',
  displayorder tinyint(3) NOT NULL default '0' COMMENT '分類信息對應項目順序',
  subjectshow TINYINT(1) NOT NULL DEFAULT '0',
  UNIQUE KEY optionid (sortid,optionid),
  KEY sortid (sortid)
) ENGINE=MyISAM COMMENT='分類信息對應項目表';


DROP TABLE IF EXISTS pre_forum_warning;
CREATE TABLE pre_forum_warning (
  wid int(10) unsigned NOT NULL auto_increment COMMENT '記錄id',
  pid int(10) unsigned NOT NULL COMMENT '帖子 pid',
  operatorid mediumint(8) unsigned NOT NULL COMMENT '警告者 Uid',
  operator char(15) NOT NULL COMMENT '警告者用戶名',
  authorid mediumint(8) unsigned NOT NULL COMMENT '被警告者 uid',
  author char(15) NOT NULL COMMENT '被警告者用戶名',
  dateline int(10) unsigned NOT NULL COMMENT '警告時間',
  reason char(40) NOT NULL COMMENT '警告原因',
  PRIMARY KEY  (wid),
  UNIQUE KEY pid (pid),
  KEY authorid (authorid)
) ENGINE=MyISAM COMMENT='警告記錄表';

DROP TABLE IF EXISTS pre_home_album;
CREATE TABLE pre_home_album (
  albumid mediumint(8) unsigned NOT NULL auto_increment COMMENT '相冊ID ',
  albumname varchar(50) NOT NULL default '' COMMENT '相冊名字',
  catid smallint(6) unsigned NOT NULL default '0' COMMENT '相冊系統分類',
  uid int(10) unsigned NOT NULL default '0' COMMENT '相冊用戶ID ',
  username varchar(15) NOT NULL default '' COMMENT '相冊用戶名',
  dateline int(10) unsigned NOT NULL default '0' COMMENT '相冊建立時間戳',
  updatetime int(10) unsigned NOT NULL default '0' COMMENT '相冊最後修改時間戳',
  picnum smallint(6) unsigned NOT NULL default '0' COMMENT '相冊照片數量',
  pic varchar(255) NOT NULL default '' COMMENT '相冊封面照片',
  picflag tinyint(1) NOT NULL default '0' COMMENT '相冊是否有圖片',
  friend tinyint(1) NOT NULL default '0' COMMENT '相冊隱私設置:"0"全站用戶可見,"1"為全好友可見,"2"為僅指定的好友可見,"3"為僅自己可見,"4"為憑密碼查看 ',
  `password` varchar(10) NOT NULL default '' COMMENT '相冊密碼',
  target_ids text NOT NULL COMMENT '允許查看相冊的用戶ID,多個用戶ID用"m"間隔 ',
  favtimes mediumint(8) unsigned NOT NULL COMMENT '相冊收藏次數',
  sharetimes mediumint(8) unsigned NOT NULL COMMENT '相冊分享次數',
  depict text NOT NULL COMMENT '相冊描述 ',
  PRIMARY KEY  (albumid),
  KEY uid (uid,updatetime),
  KEY updatetime (updatetime)
) ENGINE=MyISAM COMMENT='相冊表';

DROP TABLE IF EXISTS pre_home_appcreditlog;
CREATE TABLE pre_home_appcreditlog (
  logid mediumint(8) unsigned NOT NULL auto_increment COMMENT '序列id',
  uid int(10) unsigned NOT NULL default '0' COMMENT '用戶id',
  appid mediumint(8) unsigned NOT NULL default '0' COMMENT '用戶名',
  appname varchar(60) NOT NULL default '' COMMENT '應用名稱',
  `type` tinyint(1) NOT NULL default '0' COMMENT '積分轉入轉出類型',
  credit mediumint(8) unsigned NOT NULL default '0' COMMENT '積分數',
  note text NOT NULL COMMENT '備註',
  dateline int(10) unsigned NOT NULL default '0' COMMENT '操作時間',
  PRIMARY KEY  (logid),
  KEY uid (uid,dateline),
  KEY appid (appid)
) ENGINE=MyISAM COMMENT='漫遊應用積分操作記錄表';

DROP TABLE IF EXISTS pre_home_blacklist;
CREATE TABLE pre_home_blacklist (
  uid int(10) unsigned NOT NULL default '0' COMMENT '用戶ID ',
  buid int(10) unsigned NOT NULL default '0' COMMENT '被屏蔽的用戶ID ',
  dateline int(10) unsigned NOT NULL default '0' COMMENT '被屏蔽的時間戳',
  PRIMARY KEY  (uid,buid),
  KEY uid (uid,dateline)
) ENGINE=MyISAM COMMENT='屏蔽黑名單表';

DROP TABLE IF EXISTS pre_common_block;
CREATE TABLE pre_common_block (
  bid mediumint(8) unsigned NOT NULL auto_increment COMMENT '模塊ID',
  blockclass varchar(255) NOT NULL default '0' COMMENT '模塊分類 article/pic/member/board/poll',
  blocktype tinyint(1) NOT NULL default '0' COMMENT '調用類型 0為模板調用 1為js調用',
  `name` varchar(255) NOT NULL default '' COMMENT '模塊標名稱',
  title text NOT NULL COMMENT '模塊標題名',
  classname varchar(255) NOT NULL default '' COMMENT '指定樣式class',
  summary text NOT NULL COMMENT '模塊自定義內容',
  uid int(10) unsigned NOT NULL default '0' COMMENT '創建者用戶ID ',
  username varchar(255) NOT NULL default '' COMMENT '創建者用戶名',
  styleid smallint(6) unsigned NOT NULL default '0' COMMENT '模塊風格ID',
  blockstyle text NOT NULL COMMENT '自定義風格',
  picwidth smallint(6) unsigned NOT NULL default '0' COMMENT '顯示圖片長度',
  picheight smallint(6) unsigned NOT NULL default '0' COMMENT '顯示圖片寬度',
  target varchar(255) NOT NULL default '' COMMENT '模塊鏈接打開方式: _blank, _self, _top',
  dateformat varchar(255) NOT NULL default '' COMMENT '時間格式： H:i； u； Y-m-d等',
  dateuformat tinyint(1) NOT NULL default '0' COMMENT '是否使用個性化時間格式',
  script varchar(255) NOT NULL default '' COMMENT '模塊獲取數據腳本名',
  param text NOT NULL COMMENT '模塊參數配置序列化存儲',
  shownum smallint(6) unsigned NOT NULL default '0' COMMENT '獲取數據數目',
  cachetime int(10) NOT NULL default '0' COMMENT '模塊緩存更新時間間隔',
  cachetimerange char(5) NOT NULL default '' COMMENT '模塊緩存更新時間區間',
  punctualupdate tinyint(1) NOT NULL default '0' COMMENT '是否嚴格按照緩存時間更新（忽略優化）',
  hidedisplay tinyint(1) NOT NULL default '0' COMMENT '是否屏蔽輸出',
  dateline int(10) unsigned NOT NULL default '0' COMMENT '模塊緩存創建時間戳',
  notinherited tinyint(1) NOT NULL default '0' COMMENT '是否繼承所在頁面權限',
  isblank tinyint(1) NOT NULL default '0' COMMENT '是否為空白模塊，只顯示准送數據',
  PRIMARY KEY  (bid)
) ENGINE=MyISAM COMMENT='模塊表';

DROP TABLE IF EXISTS pre_common_block_style;
CREATE TABLE pre_common_block_style (
  styleid smallint(6) unsigned NOT NULL auto_increment COMMENT '模塊樣式ID',
  blockclass varchar(255) NOT NULL default '' COMMENT '模塊分類',
  `name` varchar(255) NOT NULL default '' COMMENT '樣式名稱',
  template text NOT NULL COMMENT '樣式模板',
  `hash` varchar(255) NOT NULL default '' COMMENT '樣式hash（blockclass + template）',
  getpic tinyint(1) NOT NULL default '0' COMMENT '是否需要獲取pic數據',
  getsummary tinyint(1) NOT NULL default '0' COMMENT '是否需要獲取summary數據',
  makethumb tinyint(1) NOT NULL default '0' COMMENT '是否需要block設置縮略圖',
  settarget tinyint(1) NOT NULL default '0' COMMENT '是否需要設置鏈接打開方式',
  `fields` text NOT NULL COMMENT '模板中用到的模塊分類字段',
  moreurl tinyint(1) NOT NULL default '0' COMMENT '是否有更多鏈接',
  PRIMARY KEY  (styleid),
  KEY `hash` (`hash`),
  KEY `blockclass` (`blockclass`)
) ENGINE=MyISAM COMMENT='模塊模板表';

DROP TABLE IF EXISTS pre_common_block_item;
CREATE TABLE pre_common_block_item (
  itemid int(10) unsigned NOT NULL auto_increment COMMENT '信息ID',
  bid mediumint(8) unsigned NOT NULL default '0' COMMENT '模塊ID',
  id int(10) unsigned NOT NULL default '0' COMMENT '來源ID',
  idtype varchar(255) NOT NULL default '' COMMENT '來源ID TYPE，手工添加數據為rand',
  itemtype tinyint(1) NOT NULL default '0' COMMENT '信息類型 0為自動 1為手工輸入 2已編輯',
  title varchar(255) NOT NULL default '' COMMENT '信息標題名',
  url varchar(255) NOT NULL default '' COMMENT '信息鏈接地址',
  pic varchar(255) NOT NULL default '' COMMENT '信息圖片',
  picflag tinyint(1) NOT NULL default '0' COMMENT '圖片類型 0為url 1為本地 2 為ftp遠程',
  makethumb tinyint(1) NOT NULL default '0' COMMENT '是否已生成縮略圖  1:生成成功; 2:生成失敗',
  thumbpath varchar(255) NOT NULL default '' COMMENT '縮略圖地址',
  summary text NOT NULL COMMENT '信息摘要',
  showstyle text NOT NULL COMMENT '顯示樣式',
  related text NOT NULL COMMENT '相關鏈接',
  `fields` text NOT NULL COMMENT '信息附屬num/author/authorid/dateline',
  displayorder smallint(6) NOT NULL default '0' COMMENT '顯示順序',
  startdate int(10) unsigned NOT NULL default '0' COMMENT '開始時間戳',
  enddate int(10) unsigned NOT NULL default '0' COMMENT '結束時間戳',
  PRIMARY KEY  (itemid),
  KEY bid (bid)
) ENGINE=MyISAM COMMENT='模塊數據表';

DROP TABLE IF EXISTS pre_common_block_pic;
CREATE TABLE pre_common_block_pic (
  picid int(10) unsigned NOT NULL auto_increment COMMENT '圖片ID',
  bid mediumint(8) unsigned NOT NULL default '0' COMMENT '模塊ID',
  itemid int(10) unsigned NOT NULL default '0' COMMENT '信息ID',
  pic varchar(255) NOT NULL default '' COMMENT '信息圖片',
  picflag tinyint(1) NOT NULL default '0' COMMENT '圖片類型 0為本地 1為ftp遠程',
  `type` tinyint(1) NOT NULL default '0' COMMENT '信息類型 0為模塊縮略圖 1為上傳的圖',
  PRIMARY KEY  (picid),
  KEY bid (bid,itemid)
) ENGINE=MyISAM COMMENT='模塊使用圖片表';

DROP TABLE IF EXISTS pre_common_block_item_data;
CREATE TABLE pre_common_block_item_data (
  dataid int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '推薦信息ID',
  bid mediumint(8) unsigned NOT NULL default '0' COMMENT '模塊ID',
  id int(10) unsigned NOT NULL default '0' COMMENT '來源ID',
  idtype varchar(255) NOT NULL default '' COMMENT '來源ID TYPE',
  itemtype tinyint(1) NOT NULL default '0' COMMENT '信息類型 0為自動 1為手工輸入 3推薦數據',
  title varchar(255) NOT NULL default '' COMMENT '信息標題名',
  url varchar(255) NOT NULL default '' COMMENT '信息鏈接地址',
  pic varchar(255) NOT NULL default '' COMMENT '信息圖片',
  picflag tinyint(1) NOT NULL default '0' COMMENT '圖片類型 0為url 1為本地 2 為ftp遠程',
  makethumb tinyint(1) NOT NULL default '0' COMMENT '是否已生成縮略圖',
  summary text NOT NULL COMMENT '信息摘要',
  showstyle text NOT NULL COMMENT '顯示樣式',
  related text NOT NULL COMMENT '相關鏈接',
  `fields` text NOT NULL COMMENT '信息附屬num/author/authorid/dateline',
  displayorder smallint(6) NOT NULL default '0' COMMENT '顯示順序',
  startdate int(10) unsigned NOT NULL default '0' COMMENT '開始時間戳',
  enddate int(10) unsigned NOT NULL default '0' COMMENT '結束時間戳',
  uid int(10) unsigned NOT NULL DEFAULT '0' COMMENT '推薦者 UID',
  username varchar(255) NOT NULL DEFAULT '' COMMENT '推薦者用戶名',
  dateline int(10) unsigned NOT NULL DEFAULT '0' COMMENT '推薦日期',
  isverified tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否已通過審核',
  verifiedtime int(10) unsigned NOT NULL DEFAULT '0' COMMENT '通過審核日期',
  stickgrade tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '置頂等級： 0～10',
  PRIMARY KEY (dataid),
  KEY bid (bid, stickgrade, displayorder, verifiedtime)
) ENGINE=MyISAM COMMENT='模塊推薦信息表';

DROP TABLE IF EXISTS pre_common_block_xml;
CREATE TABLE pre_common_block_xml (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) NOT NULL COMMENT 'XML擴展 名稱',
  `version` varchar(255) NOT NULL COMMENT 'XML擴展 版本',
  `url` varchar(255) NOT NULL COMMENT 'XML擴展 URL',
  `clientid` varchar(255) NOT NULL COMMENT '客戶端ID',
  `key` varchar(255) NOT NULL COMMENT '通信密鑰',
  `signtype` varchar(255) NOT NULL COMMENT '簽名的加密方式：目前只支持MD5方式，空為不使用簽名，直接使用通信密鑰',
  `data` text NOT NULL COMMENT 'XML擴展 數據',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM COMMENT='模塊 XML 擴展類數據表';

DROP TABLE IF EXISTS pre_common_block_favorite;
CREATE TABLE pre_common_block_favorite (
  favid mediumint(8) unsigned NOT NULL auto_increment COMMENT '收藏id',
  uid int(10) unsigned NOT NULL default '0' COMMENT '會員id',
  bid mediumint(8) unsigned NOT NULL default '0' COMMENT '模塊id',
  dateline int(10) unsigned NOT NULL default '0' COMMENT '收藏時間',
  PRIMARY KEY (favid),
  KEY uid (uid,dateline)
) ENGINE=MyISAM COMMENT='模塊收藏表';

DROP TABLE IF EXISTS pre_home_blog;
CREATE TABLE pre_home_blog (
  blogid mediumint(8) unsigned NOT NULL auto_increment COMMENT '日誌ID',
  uid int(10) unsigned NOT NULL default '0' COMMENT '日誌所屬用戶ID ',
  username char(15) NOT NULL default '' COMMENT '日誌所屬用戶名',
  `subject` char(80) NOT NULL default '' COMMENT '日誌標題',
  classid smallint(6) unsigned NOT NULL default '0' COMMENT '個人分類id',
  catid smallint(6) unsigned NOT NULL default '0' COMMENT '系統分類id',
  viewnum mediumint(8) unsigned NOT NULL default '0' COMMENT '日誌查看數',
  replynum mediumint(8) unsigned NOT NULL default '0' COMMENT '日誌回複數',
  hot mediumint(8) unsigned NOT NULL default '0' COMMENT '熱度',
  dateline int(10) unsigned NOT NULL default '0' COMMENT '日誌發佈時間',
  picflag tinyint(1) NOT NULL default '0' COMMENT '日誌是否有圖片',
  noreply tinyint(1) NOT NULL default '0' COMMENT '是否允許評論:"0"為允許,"1"為不允許 ',
  friend tinyint(1) NOT NULL default '0' COMMENT '日誌隱私設置:"0"為全站用戶可見,"1"為全好友可見,"2"為僅指定的好友可見,"3"為僅自己可見,"4"為憑密碼查看 ',
  `password` char(10) NOT NULL default '' COMMENT '日誌密碼',
  favtimes mediumint(8) unsigned NOT NULL default '0' COMMENT '日誌收藏次數',
  sharetimes mediumint(8) unsigned NOT NULL default '0' COMMENT '日誌分享次數',
  `status` tinyint(1) NOT NULL default '0' COMMENT 'blog狀態 -1:回收站日誌; 0:正常; 1:審核;',
  click1 smallint(6) unsigned NOT NULL default '0' COMMENT '表態1 id',
  click2 smallint(6) unsigned NOT NULL default '0' COMMENT '表態2 id',
  click3 smallint(6) unsigned NOT NULL default '0' COMMENT '表態3 id',
  click4 smallint(6) unsigned NOT NULL default '0' COMMENT '表態4 id',
  click5 smallint(6) unsigned NOT NULL default '0' COMMENT '表態5 id',
  click6 smallint(6) unsigned NOT NULL default '0' COMMENT '表態6 id',
  click7 smallint(6) unsigned NOT NULL default '0' COMMENT '表態7 id',
  click8 smallint(6) unsigned NOT NULL default '0' COMMENT '表態8 id',
  PRIMARY KEY  (blogid),
  KEY uid (uid,dateline),
  KEY hot (hot),
  KEY dateline (dateline)
) ENGINE=MyISAM COMMENT='日誌表';

DROP TABLE IF EXISTS pre_home_blogfield;
CREATE TABLE pre_home_blogfield (
  blogid mediumint(8) unsigned NOT NULL default '0' COMMENT '日誌id',
  uid int(10) unsigned NOT NULL default '0' COMMENT '日誌所屬用戶ID ',
  pic varchar(255) NOT NULL default '' COMMENT '標題圖片',
  tag varchar(255) NOT NULL default '' COMMENT '日誌TAG ',
  message mediumtext NOT NULL COMMENT '日誌內容',
  postip varchar(255) NOT NULL default '' COMMENT '發表日誌的IP ',
  port smallint(6) unsigned NOT NULL default '0' COMMENT '端口號',
  related text NOT NULL COMMENT '相關日誌的數據信息',
  relatedtime int(10) unsigned NOT NULL default '0' COMMENT '相關日誌產生時間戳',
  target_ids text NOT NULL COMMENT '允許查看日誌的用戶ID多個ID以","間隔 ',
  hotuser text NOT NULL COMMENT '熱點用戶',
  magiccolor tinyint(6) NOT NULL default '0' COMMENT '道具彩色燈id',
  magicpaper tinyint(6) NOT NULL default '0' COMMENT '道具信紙id',
  pushedaid mediumint(8) NOT NULL default '0' COMMENT '被推送到的文章aid',
  PRIMARY KEY  (blogid),
  KEY uid (uid)
) ENGINE=MyISAM COMMENT='日誌字段表';

DROP TABLE IF EXISTS pre_home_class;
CREATE TABLE pre_home_class (
  classid mediumint(8) unsigned NOT NULL auto_increment COMMENT '個人分類id',
  classname char(40) NOT NULL default '' COMMENT '分類名稱',
  uid int(10) unsigned NOT NULL default '0' COMMENT '分類所屬用戶ID ',
  dateline int(10) unsigned NOT NULL default '0' COMMENT '分類創建時間戳',
  PRIMARY KEY  (classid),
  KEY uid (uid)
) ENGINE=MyISAM COMMENT='日誌個人分類表';

DROP TABLE IF EXISTS pre_home_click;
CREATE TABLE pre_home_click (
  clickid smallint(6) unsigned NOT NULL auto_increment COMMENT '表態ID',
  `name` char(50) NOT NULL default '' COMMENT '表態名稱',
  icon char(100) NOT NULL default '' COMMENT '表態圖標',
  idtype char(15) NOT NULL default '' COMMENT '表態類型',
  available tinyint(1) unsigned NOT NULL default '0' COMMENT '是否有效',
  displayorder tinyint(6) unsigned NOT NULL default '0' COMMENT '排序',
  PRIMARY KEY (clickid),
  KEY idtype (idtype, displayorder)
) ENGINE=MyISAM COMMENT='表態動作';

DROP TABLE IF EXISTS pre_home_clickuser;
CREATE TABLE pre_home_clickuser (
  uid int(10) unsigned NOT NULL default '0' COMMENT '表態用戶id',
  username varchar(15) NOT NULL default '' COMMENT '表態用戶名',
  id mediumint(8) unsigned NOT NULL default '0' COMMENT '作用對像id',
  idtype varchar(15) NOT NULL default '' COMMENT '作用對像id類型',
  clickid smallint(6) unsigned NOT NULL default '0' COMMENT '表態id',
  dateline int(10) unsigned NOT NULL default '0' COMMENT '發表表態時間戳',
  KEY id (id,idtype,dateline),
  KEY uid (uid,idtype,dateline)
) ENGINE=MyISAM COMMENT='用戶表態表';

DROP TABLE IF EXISTS pre_home_comment;
CREATE TABLE pre_home_comment (
  cid mediumint(8) unsigned NOT NULL auto_increment COMMENT '評論id',
  uid int(10) unsigned NOT NULL default '0' COMMENT '發表評論的用戶id',
  id mediumint(8) unsigned NOT NULL default '0' COMMENT '評論對像id',
  idtype varchar(20) NOT NULL default '' COMMENT '評論對象的id類型：blogid，picid，uid',
  authorid mediumint(8) unsigned NOT NULL default '0' COMMENT '若為回復,回復作者用戶ID ',
  author varchar(15) NOT NULL default '' COMMENT '若為回復,回復作者用戶名 ',
  ip varchar(20) NOT NULL default '' COMMENT '評論IP ',
  port smallint(6) unsigned NOT NULL default '0' COMMENT '端口號',
  dateline int(10) unsigned NOT NULL default '0' COMMENT '評論時間戳',
  message text NOT NULL COMMENT '評論內容',
  magicflicker tinyint(1) NOT NULL default '0' COMMENT '是否使用了道具彩虹炫',
  status tinyint(1) NOT NULL default '0' COMMENT '評論狀態 1-審核',
  PRIMARY KEY  (cid),
  KEY authorid (authorid,idtype),
  KEY id (id,idtype,dateline)
) ENGINE=MyISAM COMMENT='用戶評論表';

DROP TABLE IF EXISTS pre_home_docomment;
CREATE TABLE pre_home_docomment (
  id int(10) unsigned NOT NULL auto_increment COMMENT '記錄回復id',
  upid int(10) unsigned NOT NULL default '0' COMMENT '上級記錄回復id',
  doid mediumint(8) unsigned NOT NULL default '0' COMMENT '所評論的記錄id',
  uid int(10) unsigned NOT NULL default '0' COMMENT '發佈記錄者用戶id',
  username varchar(15) NOT NULL default '' COMMENT '發佈記錄者用戶名',
  dateline int(10) unsigned NOT NULL default '0' COMMENT '記錄回復時間戳',
  message text NOT NULL COMMENT '記錄回復內容',
  ip varchar(20) NOT NULL default '' COMMENT '發佈記錄ip',
  grade smallint(6) unsigned NOT NULL default '0' COMMENT '記錄回復的層級',
  PRIMARY KEY  (id),
  KEY doid (doid,dateline),
  KEY dateline (dateline)
) ENGINE=MyISAM COMMENT='用戶記錄回復表';

DROP TABLE IF EXISTS pre_home_doing;
CREATE TABLE pre_home_doing (
  doid mediumint(8) unsigned NOT NULL auto_increment COMMENT '記錄id',
  uid int(10) unsigned NOT NULL default '0' COMMENT '記錄發佈者用戶id',
  username varchar(15) NOT NULL default '' COMMENT '記錄發佈者用戶名',
  `from` varchar(20) NOT NULL default '' COMMENT '記錄的發表來源',
  dateline int(10) unsigned NOT NULL default '0' COMMENT '記錄發佈時間戳',
  message text NOT NULL COMMENT '記錄內容',
  ip varchar(20) NOT NULL default '' COMMENT '記錄發佈ip',
  port smallint(6) unsigned NOT NULL default '0' COMMENT '端口號',
  replynum int(10) unsigned NOT NULL default '0' COMMENT '記錄回複數',
  status tinyint(1) unsigned NOT NULL default '0' COMMENT '記錄狀態 1-審核',
  PRIMARY KEY  (doid),
  KEY uid (uid,dateline),
  KEY dateline (dateline)
) ENGINE=MyISAM COMMENT='用戶記錄表';

DROP TABLE IF EXISTS pre_home_feed;
CREATE TABLE pre_home_feed (
  feedid int(10) unsigned NOT NULL auto_increment COMMENT 'feed的ID ',
  appid smallint(6) unsigned NOT NULL default '0' COMMENT '應用程序ID ',
  icon varchar(30) NOT NULL default '' COMMENT 'feed圖標 ',
  uid int(10) unsigned NOT NULL default '0' COMMENT '產生feed的用戶ID ',
  username varchar(15) NOT NULL default '' COMMENT '產生feed的用戶名 ',
  dateline int(10) unsigned NOT NULL default '0' COMMENT 'feed產生時間戳 ',
  friend tinyint(1) NOT NULL default '0' COMMENT '產生feed信息的隱私設置 ',
  hash_template varchar(32) NOT NULL default '' COMMENT '模板hash:md5(title_template"\t"body_template) ',
  hash_data varchar(32) NOT NULL default '' COMMENT '數據內容hash:md5(title_templat"\t"title_data"\t"body_template"\t"body_data) ',
  title_template text NOT NULL COMMENT 'feed標題模板 ',
  title_data text NOT NULL COMMENT 'feed標題 ',
  body_template text NOT NULL COMMENT 'feed內容模板  ',
  body_data text NOT NULL COMMENT 'feed內容 ',
  body_general text NOT NULL COMMENT '用戶填寫的信息 ',
  image_1 varchar(255) NOT NULL default '' COMMENT 'feed圖1',
  image_1_link varchar(255) NOT NULL default '' COMMENT 'feed圖片鏈接1',
  image_2 varchar(255) NOT NULL default '' COMMENT 'feed圖片2',
  image_2_link varchar(255) NOT NULL default '' COMMENT 'feed圖片鏈接2',
  image_3 varchar(255) NOT NULL default '' COMMENT 'feed圖片3',
  image_3_link varchar(255) NOT NULL default '' COMMENT 'feed圖片鏈接3',
  image_4 varchar(255) NOT NULL default '' COMMENT 'feed圖片4',
  image_4_link varchar(255) NOT NULL default '' COMMENT 'feed圖片鏈接4',
  target_ids text NOT NULL COMMENT '產生feed信息允許查看的好友ID ',
  id mediumint(8) unsigned NOT NULL default '0' COMMENT 'feed對應對像id',
  idtype varchar(15) NOT NULL default '' COMMENT 'feed對應對像類型',
  hot mediumint(8) unsigned NOT NULL default '0' COMMENT '熱度',
  PRIMARY KEY  (feedid),
  KEY uid (uid,dateline),
  KEY dateline (dateline),
  KEY hot (hot),
  KEY id (id,idtype)
) ENGINE=MyISAM COMMENT='站點feed表';

DROP TABLE IF EXISTS pre_home_feed_app;
CREATE TABLE pre_home_feed_app (
  feedid int(10) unsigned NOT NULL auto_increment COMMENT '應用feed id',
  appid smallint(6) unsigned NOT NULL default '0' COMMENT '應用程序ID',
  icon varchar(30) NOT NULL default '' COMMENT 'feed圖標 ',
  uid int(10) unsigned NOT NULL default '0' COMMENT '產生feed的用戶ID ',
  username varchar(15) NOT NULL default '' COMMENT '產生feed的用戶名 ',
  dateline int(10) unsigned NOT NULL default '0' COMMENT 'feed產生時間戳 ',
  friend tinyint(1) NOT NULL default '0' COMMENT '產生feed信息的隱私設置 ',
  hash_template varchar(32) NOT NULL default '' COMMENT '模板hash:md5(title_template"\t"body_template) ',
  hash_data varchar(32) NOT NULL default '' COMMENT '數據內容hash:md5(title_templat"\t"title_data"\t"body_template"\t"body_data) ',
  title_template text NOT NULL COMMENT 'feed標題模板 ',
  title_data text NOT NULL COMMENT 'feed標題 ',
  body_template text NOT NULL COMMENT 'feed內容模板  ',
  body_data text NOT NULL COMMENT 'feed內容 ',
  body_general text NOT NULL COMMENT '用戶填寫的信息 ',
  image_1 varchar(255) NOT NULL default '' COMMENT 'feed圖1',
  image_1_link varchar(255) NOT NULL default '' COMMENT 'feed圖片鏈接1',
  image_2 varchar(255) NOT NULL default '' COMMENT 'feed圖片2',
  image_2_link varchar(255) NOT NULL default '' COMMENT 'feed圖片鏈接2',
  image_3 varchar(255) NOT NULL default '' COMMENT 'feed圖片3',
  image_3_link varchar(255) NOT NULL default '' COMMENT 'feed圖片鏈接3',
  image_4 varchar(255) NOT NULL default '' COMMENT 'feed圖片4',
  image_4_link varchar(255) NOT NULL default '' COMMENT 'feed圖片鏈接4',
  target_ids text NOT NULL COMMENT '產生feed信息允許查看的好友ID ',
  PRIMARY KEY  (feedid),
  KEY uid (uid,dateline),
  KEY dateline (dateline)
) ENGINE=MyISAM COMMENT='應該feed表';

DROP TABLE IF EXISTS pre_home_friend;
CREATE TABLE pre_home_friend (
  uid int(10) unsigned NOT NULL default '0' COMMENT '用戶ID ',
  fuid int(10) unsigned NOT NULL default '0' COMMENT '用戶好友ID ',
  fusername varchar(15) NOT NULL default '' COMMENT '用戶好友名',
  gid smallint(6) unsigned NOT NULL default '0' COMMENT '好友所在的好友組ID ',
  num mediumint(8) unsigned NOT NULL default '0' COMMENT '好友之間的任務關係數',
  dateline int(10) unsigned NOT NULL default '0' COMMENT '加好友的時間戳',
  note varchar(255) NOT NULL default '' COMMENT '好友備註',
  PRIMARY KEY  (uid,fuid),
  KEY fuid (fuid),
  KEY `uid` (uid,num,dateline)
) ENGINE=MyISAM COMMENT='用戶好友表';

DROP TABLE IF EXISTS pre_home_friend_request;
CREATE TABLE pre_home_friend_request (
  uid int(10) unsigned NOT NULL default '0' COMMENT '用戶ID ',
  fuid int(10) unsigned NOT NULL default '0' COMMENT '被請求用戶ID ',
  fusername char(15) NOT NULL default '' COMMENT '被請求用戶名稱',
  gid smallint(6) unsigned NOT NULL default '0' COMMENT '好友所在的好友組ID ',
  note char(60) NOT NULL default '' COMMENT '申請附言',
  dateline int(10) unsigned NOT NULL default '0' COMMENT '請求好友時間戳',
  PRIMARY KEY  (uid,fuid),
  KEY fuid (fuid),
  KEY `dateline` (uid, dateline)
) ENGINE=MyISAM COMMENT='申請好友表';

DROP TABLE IF EXISTS pre_home_friendlog;
CREATE TABLE pre_home_friendlog (
  uid int(10) unsigned NOT NULL default '0' COMMENT '用戶ID ',
  fuid int(10) unsigned NOT NULL default '0' COMMENT '好友用戶ID ',
  `action` varchar(10) NOT NULL default '' COMMENT '好友動作:"add"添加,"update"更新 ',
  dateline int(10) unsigned NOT NULL default '0' COMMENT '好友動作時間',
  PRIMARY KEY  (uid,fuid)
) ENGINE=MyISAM COMMENT='用戶好友動作日誌表';

DROP TABLE IF EXISTS pre_common_magiclog;
CREATE TABLE pre_common_magiclog (
  uid int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用戶id',
  magicid smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '道具id',
  action tinyint(1) NOT NULL DEFAULT '0' COMMENT '操作動作 1 購買 2 使用 3 贈送',
  dateline int(10) unsigned NOT NULL DEFAULT '0' COMMENT '操作時間',
  amount smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '操作數量',
  credit tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '操作積分',
  price mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '操作價格',
  `targetid` int(10) unsigned NOT NULL DEFAULT '0',
  `idtype` char(6) DEFAULT NULL,
  targetuid int(10) unsigned NOT NULL DEFAULT '0' COMMENT '道具目標uid',
  KEY uid (uid,dateline),
  KEY `action` (`action`),
  KEY targetuid (targetuid,dateline),
  KEY magicid (magicid,dateline)
) ENGINE=MyISAM COMMENT='道具日誌表';

DROP TABLE IF EXISTS pre_common_magic;
CREATE TABLE pre_common_magic (
  magicid smallint(6) unsigned NOT NULL AUTO_INCREMENT COMMENT '道具id',
  available tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否可用',
  name varchar(50) NOT NULL COMMENT '名稱',
  identifier varchar(40) NOT NULL COMMENT '唯一標識',
  description varchar(255) NOT NULL COMMENT '描述',
  displayorder tinyint(3) NOT NULL DEFAULT '0' COMMENT '順序',
  credit tinyint(1) NOT NULL DEFAULT '0' COMMENT '使用的積分',
  price mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '價格',
  num smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '數量',
  salevolume smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '銷售量',
  supplytype tinyint(1) NOT NULL DEFAULT '0' COMMENT '自動補貨類型',
  supplynum smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '自動補貨數量',
  useperoid tinyint(1) NOT NULL DEFAULT '0' COMMENT '使用週期',
  usenum smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '週期使用數量',
  weight tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '重量',
  magicperm text NOT NULL COMMENT '權限',
  useevent tinyint(1) NOT NULL DEFAULT '0' COMMENT '0:只在特定環境使用 1:可以在道具中心使用',
  PRIMARY KEY  (magicid),
  UNIQUE KEY identifier (identifier),
  KEY displayorder (available,displayorder)
) ENGINE=MyISAM COMMENT='道具數據表';

DROP TABLE IF EXISTS pre_home_notification;
CREATE TABLE pre_home_notification (
  id mediumint(8) unsigned NOT NULL auto_increment COMMENT '通知ID ',
  uid int(10) unsigned NOT NULL default '0' COMMENT '通知用戶ID ',
  `type` varchar(20) NOT NULL default '' COMMENT '通知類型:"doing"記錄,"friend"好友請求,"sharenotice"好友分享,"post"話題回復, ',
  `new` tinyint(1) NOT NULL default '0' COMMENT '通知是否為新:"1"為新通知,"0"為通知已讀 ',
  authorid mediumint(8) unsigned NOT NULL default '0' COMMENT '作者用戶ID ',
  author varchar(15) NOT NULL default '' COMMENT '用戶名',
  note text NOT NULL COMMENT '通知內容',
  dateline int(10) unsigned NOT NULL default '0' COMMENT '通知產生的時間戳',
  from_id mediumint(8) unsigned NOT NULL default '0' COMMENT '來源對像id',
  from_idtype varchar(20) NOT NULL default '' COMMENT '來源對像類型',
  from_num mediumint(8) unsigned NOT NULL default '0' COMMENT '來源量',
  category tinyint(1) NOT NULL default '0' COMMENT '提醒分類 1我的帖子 2壇友互動 3系統消息 4管理工作 0應用消息',
  PRIMARY KEY  (id),
  KEY uid (uid,new),
  KEY category (uid,category,dateline),
  KEY by_type (uid,type,dateline),
  KEY from_id (from_id,from_idtype)
) ENGINE=MyISAM COMMENT='通知表';

DROP TABLE IF EXISTS pre_home_pic;
CREATE TABLE pre_home_pic (
  picid mediumint(8) NOT NULL auto_increment COMMENT '圖片ID ',
  albumid mediumint(8) unsigned NOT NULL default '0' COMMENT '圖片所屬相冊ID ',
  uid int(10) unsigned NOT NULL default '0' COMMENT '圖片所屬用戶ID ',
  username varchar(15) NOT NULL default '' COMMENT '圖片所屬用戶名',
  dateline int(10) unsigned NOT NULL default '0' COMMENT '圖片上傳時間戳',
  postip varchar(255) NOT NULL default '' COMMENT '圖片上傳ip',
  port smallint(6) unsigned NOT NULL default '0' COMMENT '端口號',
  filename varchar(255) NOT NULL default '' COMMENT '圖片文件名',
  title varchar(255) NOT NULL default '' COMMENT '圖片標題',
  `type` varchar(255) NOT NULL default '' COMMENT '圖片類型',
  size int(10) unsigned NOT NULL default '0' COMMENT '圖片大小',
  filepath varchar(255) NOT NULL default '' COMMENT '圖片路徑',
  thumb tinyint(1) NOT NULL default '0' COMMENT '是否有縮略圖',
  remote tinyint(1) NOT NULL default '0' COMMENT '是否有遠程圖片0:home本地圖片,1:home遠程圖片,2:論壇本地圖片,3論壇遠程圖片',
  hot mediumint(8) unsigned NOT NULL default '0' COMMENT '熱度',
  sharetimes mediumint(8) unsigned NOT NULL default '0' COMMENT '圖片分享次數',
  click1 smallint(6) unsigned NOT NULL default '0' COMMENT '表態1 id',
  click2 smallint(6) unsigned NOT NULL default '0' COMMENT '表態2 id',
  click3 smallint(6) unsigned NOT NULL default '0' COMMENT '表態3 id',
  click4 smallint(6) unsigned NOT NULL default '0' COMMENT '表態4 id',
  click5 smallint(6) unsigned NOT NULL default '0' COMMENT '表態5 id',
  click6 smallint(6) unsigned NOT NULL default '0' COMMENT '表態6 id',
  click7 smallint(6) unsigned NOT NULL default '0' COMMENT '表態7 id',
  click8 smallint(6) unsigned NOT NULL default '0' COMMENT '表態8 id',
  magicframe tinyint(6) NOT NULL default '0' COMMENT '道具使用相框id',
  status tinyint(1) unsigned NOT NULL default '0' COMMENT '圖片狀態 1-審核',
  PRIMARY KEY  (picid),
  KEY uid (uid),
  KEY albumid (albumid,dateline)
) ENGINE=MyISAM COMMENT='家園圖片表';

DROP TABLE IF EXISTS pre_home_picfield;
CREATE TABLE pre_home_picfield (
  picid mediumint(8) unsigned NOT NULL default '0' COMMENT '圖片id',
  hotuser text NOT NULL COMMENT '圖片對應熱點用戶',
  PRIMARY KEY  (picid)
) ENGINE=MyISAM COMMENT='家園圖片拓展表';

DROP TABLE IF EXISTS pre_home_poke;
CREATE TABLE pre_home_poke (
  uid int(10) unsigned NOT NULL default '0' COMMENT '接招呼的用戶ID ',
  fromuid int(10) unsigned NOT NULL default '0' COMMENT '打招呼的用戶ID ',
  fromusername varchar(15) NOT NULL default '' COMMENT '打招呼的用戶名 ',
  note varchar(255) NOT NULL default '' COMMENT '招呼內容',
  dateline int(10) unsigned NOT NULL default '0' COMMENT '打招呼時間戳',
  iconid smallint(6) unsigned NOT NULL default '0' COMMENT '招呼圖標',
  PRIMARY KEY  (uid,fromuid),
  KEY uid (uid,dateline)
) ENGINE=MyISAM COMMENT='用戶招呼表';

DROP TABLE IF EXISTS pre_home_pokearchive;
CREATE TABLE pre_home_pokearchive (
  pid mediumint(8) NOT NULL auto_increment COMMENT '招呼歷史id',
  pokeuid int(10) unsigned NOT NULL default '0' COMMENT 'uid + fromuid',
  uid int(10) unsigned NOT NULL default '0' COMMENT '目標用戶ID',
  fromuid int(10) unsigned NOT NULL default '0' COMMENT '發起用戶ID',
  note varchar(255) NOT NULL default '' COMMENT '招呼內容',
  dateline int(10) unsigned NOT NULL default '0' COMMENT '招呼時間戳',
  iconid smallint(6) unsigned NOT NULL default '0' COMMENT '招呼圖標',
  PRIMARY KEY  (pid),
  KEY pokeuid (pokeuid)
) ENGINE=MyISAM COMMENT='用戶招呼存檔表';


DROP TABLE IF EXISTS pre_home_share;
CREATE TABLE pre_home_share (
  sid mediumint(8) unsigned NOT NULL auto_increment COMMENT '分享id',
  itemid mediumint(8) unsigned NOT NULL COMMENT '相關條目的ID',
  `type` varchar(30) NOT NULL default '' COMMENT '分享類型',
  uid int(10) unsigned NOT NULL default '0' COMMENT '分享者用戶id',
  username varchar(15) NOT NULL default '' COMMENT '分享者用戶名',
  fromuid int(10) unsigned NOT NULL default '0' COMMENT '被分享者用戶ID',
  dateline int(10) unsigned NOT NULL default '0' COMMENT '分享時間戳',
  title_template text NOT NULL COMMENT '分享標題模板',
  body_template text NOT NULL COMMENT '分享內容模板',
  body_data text NOT NULL COMMENT '分享內容數據',
  body_general text NOT NULL COMMENT '分享說明',
  image varchar(255) NOT NULL default '' COMMENT '分享的圖片',
  image_link varchar(255) NOT NULL default '' COMMENT '分享的圖片鏈接',
  hot mediumint(8) unsigned NOT NULL default '0' COMMENT '熱度',
  hotuser text NOT NULL COMMENT '相關熱點用戶',
  status tinyint(1) NOT NULL COMMENT '分享條目狀態 1-審核',
  PRIMARY KEY  (sid),
  KEY uid (uid,dateline),
  KEY hot (hot),
  KEY dateline (dateline)
) ENGINE=MyISAM COMMENT='用戶分享表';

DROP TABLE IF EXISTS pre_home_show;
CREATE TABLE pre_home_show (
  uid int(10) unsigned NOT NULL default '0' COMMENT '我要上榜用戶id',
  username varchar(15) NOT NULL default '' COMMENT '我要上榜用戶名',
  unitprice int(10) unsigned NOT NULL default '1' COMMENT '單次訪問單價',
  credit int(10) unsigned NOT NULL default '0' COMMENT '上榜總積分',
  note varchar(100) NOT NULL default '' COMMENT '上榜宣言',
  PRIMARY KEY  (uid),
  KEY unitprice (unitprice),
  KEY credit (credit)
) ENGINE=MyISAM COMMENT='用戶上榜表';

DROP TABLE IF EXISTS pre_home_userapp;
CREATE TABLE pre_home_userapp (
  uid int(10) unsigned NOT NULL default '0' COMMENT '使用應用的用戶ID ',
  appid mediumint(8) unsigned NOT NULL default '0' COMMENT '應用ID ',
  appname varchar(60) NOT NULL default '' COMMENT '應用名',
  privacy tinyint(1) NOT NULL default '0' COMMENT '應用是否公開',
  allowsidenav tinyint(1) NOT NULL default '0' COMMENT '是否在開始菜單中顯示',
  allowfeed tinyint(1) NOT NULL default '0' COMMENT '是否允許應用產生feed ',
  allowprofilelink tinyint(1) NOT NULL default '0' COMMENT '時都允許在首頁顯示連接',
  narrow tinyint(1) NOT NULL default '0' COMMENT '是否在個人空間左邊顯示',
  menuorder smallint(6) NOT NULL default '0' COMMENT '菜單順序',
  displayorder smallint(6) NOT NULL default '0' COMMENT '顯示順序',
  KEY uid (uid,appid),
  KEY menuorder (uid,menuorder),
  KEY displayorder (uid,displayorder)
) ENGINE=MyISAM COMMENT='用戶使用應用表';

DROP TABLE IF EXISTS pre_home_userappfield;
CREATE TABLE pre_home_userappfield (
  uid int(10) unsigned NOT NULL default '0' COMMENT '使用應用的用戶id',
  appid mediumint(8) unsigned NOT NULL default '0' COMMENT '應用id',
  profilelink text NOT NULL COMMENT '應用鏈接',
  myml text NOT NULL COMMENT 'myml格式的首頁顯示信息',
  KEY uid (uid,appid)
) ENGINE=MyISAM COMMENT='用戶使用應用擴展表';

DROP TABLE IF EXISTS pre_home_visitor;
CREATE TABLE pre_home_visitor (
  uid int(10) unsigned NOT NULL default '0' COMMENT '受訪者用戶id',
  vuid int(10) unsigned NOT NULL default '0' COMMENT '訪問者用戶id',
  vusername char(15) NOT NULL default '' COMMENT '訪問者用戶名',
  dateline int(10) unsigned NOT NULL default '0' COMMENT '訪問時間戳',
  PRIMARY KEY  (uid,vuid),
  KEY vuid (vuid),
  KEY dateline (dateline)
) ENGINE=MyISAM COMMENT='空間訪問日誌表';

DROP TABLE IF EXISTS pre_portal_article_title;
CREATE TABLE pre_portal_article_title (
  aid mediumint(8) unsigned NOT NULL auto_increment COMMENT '文章ID',
  catid mediumint(8) unsigned NOT NULL default '0' COMMENT '欄目id',
  bid mediumint(8) unsigned NOT NULL default '0' COMMENT '模塊id',
  uid int(10) unsigned NOT NULL default '0' COMMENT '用戶id',
  username varchar(255) NOT NULL default '' COMMENT '用戶名',
  title varchar(255) NOT NULL default '' COMMENT '標題',
  highlight varchar(255) NOT NULL default '' COMMENT '標題樣式',
  author varchar(255) NOT NULL default '' COMMENT '原作者',
  `from` varchar(255) NOT NULL default '' COMMENT '來源',
  fromurl varchar(255) NOT NULL default '' COMMENT '來源URL',
  url varchar(255) NOT NULL default '' COMMENT '訪問URL',
  summary varchar(255) NOT NULL default '' COMMENT '摘要',
  pic varchar(255) NOT NULL default '' COMMENT '封面圖片',
  thumb tinyint(1) NOT NULL default '0' COMMENT '封面圖片是否縮略',
  remote tinyint(1) NOT NULL default '0' COMMENT '封面圖片是否遠程',
  id int(10) unsigned NOT NULL default '0' COMMENT '來源ID',
  idtype varchar(255) NOT NULL default '' COMMENT '來源ID類型',
  contents smallint(6) NOT NULL default '0' COMMENT '內容分頁數',
  allowcomment tinyint(1) NOT NULL default '0' COMMENT '是否允許評論',
  owncomment tinyint(1) NOT NULL default '0' COMMENT '對於推送過來的文章：1，使用文章評論；0，同步原主題/日誌的帖子/評論',
  click1 smallint(6) unsigned NOT NULL default '0' COMMENT '表態1 id',
  click2 smallint(6) unsigned NOT NULL default '0' COMMENT '表態2 id',
  click3 smallint(6) unsigned NOT NULL default '0' COMMENT '表態3 id',
  click4 smallint(6) unsigned NOT NULL default '0' COMMENT '表態4 id',
  click5 smallint(6) unsigned NOT NULL default '0' COMMENT '表態5 id',
  click6 smallint(6) unsigned NOT NULL default '0' COMMENT '表態6 id',
  click7 smallint(6) unsigned NOT NULL default '0' COMMENT '表態7 id',
  click8 smallint(6) unsigned NOT NULL default '0' COMMENT '表態8 id',
  tag tinyint(8) unsigned NOT NULL DEFAULT '0' COMMENT '文章屬性，共八位',
  dateline int(10) unsigned NOT NULL default '0' COMMENT '添加時間',
  status tinyint(1) unsigned NOT NULL default '0' COMMENT '文章狀態 0-已審核 1-需要審核 2-已忽略',
  showinnernav tinyint(1) unsigned NOT NULL default '0' COMMENT '是否顯示分頁導航',
  preaid mediumint(8) unsigned NOT NULL COMMENT '上一篇文章ID',
  nextaid mediumint(8) unsigned NOT NULL COMMENT '下一篇文章ID',
  htmlmade tinyint(1) unsigned NOT NULL default '0' COMMENT '是否生成靜態文件',
  htmlname varchar(255) NOT NULL DEFAULT '' COMMENT '靜態文件名稱',
  htmldir varchar(255) NOT NULL DEFAULT '' COMMENT '靜態文件目錄',
  PRIMARY KEY  (aid),
  KEY catid  (catid,dateline)
) ENGINE=MyISAM COMMENT='門戶文章標題表';

DROP TABLE IF EXISTS pre_portal_article_content;
CREATE TABLE pre_portal_article_content (
  cid int(10) unsigned NOT NULL auto_increment COMMENT '內容ID',
  aid mediumint(8) unsigned NOT NULL default '0' COMMENT '文章ID',
  id int(10) unsigned NOT NULL default '0' COMMENT '來源ID',
  idtype varchar(255) NOT NULL default '' COMMENT '來源ID類型',
  title varchar(255) NOT NULL default '' COMMENT '分頁標題',
  content text NOT NULL COMMENT '文章內容',
  pageorder smallint(6) unsigned NOT NULL default '0' COMMENT '分頁排序',
  dateline int(10) unsigned NOT NULL default '0' COMMENT '添加時間',
  PRIMARY KEY  (cid),
  KEY aid  (aid,pageorder),
  KEY pageorder  (pageorder)
) ENGINE=MyISAM COMMENT='門戶文章內容表';

DROP TABLE IF EXISTS pre_portal_article_count;
CREATE TABLE pre_portal_article_count (
  aid mediumint(8) unsigned NOT NULL default '0' COMMENT '文章ID',
  catid mediumint(8) unsigned NOT NULL default '0' COMMENT '欄目id',
  viewnum mediumint(8) unsigned NOT NULL default '0' COMMENT '查看數',
  commentnum mediumint(8) unsigned NOT NULL default '0' COMMENT '評論數',
  favtimes mediumint(8) unsigned NOT NULL default '0' COMMENT '文章收藏次數',
  sharetimes mediumint(8) unsigned NOT NULL default '0' COMMENT '文章分享次數',
  PRIMARY KEY  (aid)
) ENGINE=MyISAM COMMENT='門戶文章統計數據表';

DROP TABLE IF EXISTS pre_portal_article_trash;
CREATE TABLE pre_portal_article_trash (
  aid mediumint(8) unsigned NOT NULL default '0' COMMENT '垃圾文章ID',
  content text NOT NULL COMMENT '文章數據的seriallize存儲',
  PRIMARY KEY (aid)
) ENGINE=MyISAM COMMENT='門戶文章回收站表';

DROP TABLE IF EXISTS pre_portal_comment;
CREATE TABLE pre_portal_comment (
  cid mediumint(8) unsigned NOT NULL auto_increment COMMENT '評論id',
  uid int(10) unsigned NOT NULL default '0' COMMENT '發表評論的用戶id',
  username varchar(255) NOT NULL default '' COMMENT '發表評論的用戶名',
  id mediumint(8) unsigned NOT NULL default '0' COMMENT '評論對像id',
  idtype varchar(20) NOT NULL default '' COMMENT '評論對象的id類型：aid，topicid',
  postip varchar(255) NOT NULL default '' COMMENT '評論IP ',
  port smallint(6) unsigned NOT NULL default '0' COMMENT '端口號',
  dateline int(10) unsigned NOT NULL default '0' COMMENT '評論時間戳',
  status tinyint(1) unsigned NOT NULL default '0' COMMENT '評論狀態 1-審核',
  message text NOT NULL COMMENT '評論內容',
  PRIMARY KEY  (cid),
  KEY idtype (id,idtype,dateline)
) ENGINE=MyISAM COMMENT='門戶評論表';

DROP TABLE IF EXISTS pre_portal_rsscache;
CREATE TABLE pre_portal_rsscache (
  lastupdate int(10) unsigned NOT NULL default '0' COMMENT '最後更新時間',
  catid mediumint(8) unsigned NOT NULL default '0' COMMENT '文章分類id',
  aid mediumint(8) unsigned NOT NULL default '0' COMMENT '文章id',
  dateline int(10) unsigned NOT NULL default '0' COMMENT '發表時間',
  catname char(50) NOT NULL default '' COMMENT '分類名稱',
  author char(15) NOT NULL default '' COMMENT '作者',
  subject char(80) NOT NULL default '' COMMENT '標題',
  description char(255) NOT NULL default '' COMMENT '解釋說明',
  UNIQUE KEY aid (aid),
  KEY catid (catid,dateline)
) ENGINE=MyISAM COMMENT='文章rss緩存表';

DROP TABLE IF EXISTS pre_portal_topic;
CREATE TABLE pre_portal_topic (
  topicid mediumint(8) unsigned NOT NULL auto_increment COMMENT '專題ID',
  title varchar(255) NOT NULL default '' COMMENT '專題標題',
  name varchar(255) NOT NULL default '' COMMENT '靜態化名稱',
  `domain` varchar(255) NOT NULL DEFAULT '' COMMENT '二級域名',
  summary text NOT NULL COMMENT '專題介紹',
  keyword text NOT NULL COMMENT 'SEO 關鍵字',
  cover varchar(255) NOT NULL default '' COMMENT '專題封面',
  picflag tinyint(1) NOT NULL default '0' COMMENT '圖片類型 0為url 1為本地 2 為ftp遠程',
  primaltplname varchar(255) NOT NULL default '' COMMENT '原模板地址',
  useheader tinyint(1) NOT NULL default '0' COMMENT '是否使用網站導航內容',
  usefooter tinyint(1) NOT NULL default '0' COMMENT '是否使用網站尾部信息',
  uid int(10) unsigned NOT NULL default '0' COMMENT '創建者UID',
  username varchar(255) NOT NULL default '' COMMENT '創建者用戶名',
  viewnum mediumint(8) unsigned NOT NULL default '0' COMMENT '查看數',
  dateline int(10) unsigned NOT NULL default '0' COMMENT '創建時間',
  closed tinyint(1) NOT NULL default '0' COMMENT '是否關閉狀態',
  allowcomment tinyint(1) NOT NULL default '0' COMMENT '是否允許評論',
  commentnum mediumint(8) unsigned NOT NULL default '0' COMMENT '評論數',
  htmlmade tinyint(1) unsigned NOT NULL default '0' COMMENT '是否生成靜態文件',
  htmldir varchar(255) NOT NULL DEFAULT '' COMMENT '靜態文件目錄',
  PRIMARY KEY  (topicid),
  KEY name (name)
) ENGINE=MyISAM COMMENT='門戶專題表';

DROP TABLE IF EXISTS pre_portal_topic_pic;
CREATE TABLE pre_portal_topic_pic (
  picid mediumint(8) NOT NULL auto_increment COMMENT '圖片ID ',
  topicid mediumint(8) unsigned NOT NULL default '0' COMMENT '圖片所屬專題ID ',
  uid int(10) unsigned NOT NULL default '0' COMMENT '圖片所屬用戶ID ',
  username varchar(15) NOT NULL default '' COMMENT '圖片所屬用戶名',
  dateline int(10) unsigned NOT NULL default '0' COMMENT '圖片上傳時間戳',
  filename varchar(255) NOT NULL default '' COMMENT '圖片文件名',
  title varchar(255) NOT NULL default '' COMMENT '圖片標題',
  size int(10) unsigned NOT NULL default '0' COMMENT '圖片大小',
  filepath varchar(255) NOT NULL default '' COMMENT '圖片路徑',
  thumb tinyint(1) NOT NULL default '0' COMMENT '是否有縮略圖',
  remote tinyint(1) NOT NULL default '0' COMMENT '是否有遠程圖片',
  PRIMARY KEY  (picid),
  KEY topicid (topicid)
) ENGINE=MyISAM COMMENT='門戶專題圖片表';

DROP TABLE IF EXISTS pre_common_diy_data;
CREATE TABLE pre_common_diy_data (
  targettplname varchar(100) NOT NULL default '' COMMENT '目標模板文件名',
  tpldirectory varchar(80) NOT NULL default '' COMMENT '原模板所在目錄',
  primaltplname varchar(255) NOT NULL default '' COMMENT '原模板文件名',
  diycontent mediumtext NOT NULL COMMENT 'DIY的內容',
  `name` varchar(255) NOT NULL default '' COMMENT '目標模板頁面名稱',
  uid int(10) unsigned NOT NULL default '0' COMMENT '會員id',
  username varchar(15) NOT NULL default '' COMMENT '用戶名',
  dateline int(10) unsigned NOT NULL default '0' COMMENT '更新時間',
  PRIMARY KEY (targettplname, tpldirectory)
) ENGINE=MyISAM COMMENT='DIY模板頁面數據的存檔表';

DROP TABLE IF EXISTS pre_common_template_block;
CREATE TABLE pre_common_template_block (
  targettplname varchar(100) NOT NULL default '' COMMENT '目標模板文件名',
  tpldirectory varchar(80) NOT NULL default '' COMMENT '原模板所在目錄',
  bid mediumint(8) unsigned NOT NULL default '0' COMMENT '模塊ID',
  PRIMARY KEY  (targettplname, tpldirectory, bid),
  KEY bid (bid)
) ENGINE=MyISAM COMMENT='模板頁面和模塊的關聯表';

DROP TABLE IF EXISTS pre_common_template_permission;
CREATE TABLE pre_common_template_permission (
  targettplname varchar(100) NOT NULL DEFAULT '' COMMENT '目標模板',
  uid int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用戶ID',
  allowmanage tinyint(1) NOT NULL DEFAULT '0' COMMENT '允許管理',
  allowrecommend tinyint(1) NOT NULL DEFAULT '0' COMMENT '允許推薦',
  needverify tinyint(1) NOT NULL DEFAULT '0' COMMENT '推薦需要審核',
  inheritedtplname varchar(255) NOT NULL DEFAULT '' COMMENT '繼承自的模板名稱',
  PRIMARY KEY (targettplname,uid),
  KEY uid (uid)
) ENGINE=MyISAM COMMENT='DIY模板頁面權限表';

DROP TABLE IF EXISTS pre_common_block_permission;
CREATE TABLE pre_common_block_permission (
  bid mediumint(8) unsigned NOT NULL default '0' COMMENT '模塊ID',
  uid int(10) unsigned NOT NULL default '0' COMMENT '會員id',
  allowmanage tinyint(1) NOT NULL DEFAULT '0' COMMENT '允許管理',
  allowrecommend tinyint(1) NOT NULL DEFAULT '0' COMMENT '允許推薦',
  needverify tinyint(1) NOT NULL DEFAULT '0' COMMENT '推薦需要審核',
  inheritedtplname varchar(255) NOT NULL DEFAULT '' COMMENT '繼承自的模板名稱',
  PRIMARY KEY (bid, uid),
  KEY uid (uid)
) ENGINE=MyISAM COMMENT='模塊權限表';

DROP TABLE IF EXISTS pre_portal_category_permission;
CREATE TABLE pre_portal_category_permission (
  catid mediumint(8) unsigned NOT NULL default '0' COMMENT '分類ID',
  uid int(10) unsigned NOT NULL default '0' COMMENT '會員id',
  allowpublish tinyint(1) NOT NULL default '0' COMMENT '允許發佈文章',
  allowmanage tinyint(1) NOT NULL default '0' COMMENT '允許管理文章',
  inheritedcatid mediumint(8) NOT NULL DEFAULT '0' COMMENT '繼承自的頻道ID',
  PRIMARY KEY (catid, uid),
  KEY uid (uid)
) ENGINE=MyISAM COMMENT='文章分類權限表';

DROP TABLE IF EXISTS pre_portal_category;
CREATE TABLE pre_portal_category (
  catid mediumint(8) unsigned NOT NULL auto_increment COMMENT '欄目id',
  upid mediumint(8) unsigned NOT NULL default '0' COMMENT '上級欄目id',
  catname varchar(255) NOT NULL default '' COMMENT '標題',
  articles mediumint(8) unsigned NOT NULL default '0' COMMENT '文章數',
  allowcomment tinyint(1) NOT NULL default '1' COMMENT '是否允許評論',
  displayorder smallint(6) NOT NULL default '0' COMMENT '顯示順序',
  notinheritedarticle tinyint(1) NOT NULL default '0' COMMENT '是否不繼承上級文章管理權限',
  notinheritedblock tinyint(1) NOT NULL default '0' COMMENT '是否不繼承上級DIY頁面和模塊權限',
  `domain` varchar(255) NOT NULL DEFAULT '' COMMENT '二級域名',
  url varchar(255) NOT NULL DEFAULT '' COMMENT '自定義鏈接',
  uid int(10) unsigned NOT NULL DEFAULT '0' COMMENT '創建者ID',
  username varchar(255) NOT NULL DEFAULT '' COMMENT '創建者用戶名',
  dateline int(10) unsigned NOT NULL DEFAULT '0' COMMENT '創建時間',
  closed tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否關閉',
  shownav tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否在導航顯示',
  description text NOT NULL COMMENT '分類介紹 SEO描述',
  seotitle text NOT NULL COMMENT 'SEO 標題',
  keyword text NOT NULL COMMENT 'SEO 關鍵字',
  primaltplname varchar(255) NOT NULL default '' COMMENT '列表頁原模板地址',
  articleprimaltplname varchar(255) NOT NULL default '' COMMENT '文章頁原模板地址',
  disallowpublish tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否禁止發佈文章',
  foldername varchar(255) NOT NULL DEFAULT '' COMMENT '文件夾名稱',
  notshowarticlesummay varchar(255) NOT NULL DEFAULT '' COMMENT '文章內容頁是否不顯示摘要',
  perpage smallint(6) NOT NULL default '0' COMMENT '列表每頁顯示文章數',
  maxpages smallint(6) NOT NULL default '0' COMMENT '列表最大分頁數',
  noantitheft tinyint(1) NOT NULL default '0' COMMENT '禁止防採集',
  lastpublish int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最後發佈文章時間',
  PRIMARY KEY  (catid)
) ENGINE=MyISAM COMMENT='門戶 文章欄目表';

DROP TABLE IF EXISTS pre_common_process;
CREATE TABLE pre_common_process (
  processid char(32) NOT NULL COMMENT '鎖名稱的md5',
  expiry int(10) DEFAULT NULL COMMENT '鎖的過期時間',
  extra int(10) DEFAULT NULL COMMENT '鎖的附屬信息',
  PRIMARY KEY (processid),
  KEY expiry (expiry)
) ENGINE=MEMORY COMMENT='進程鎖管理';

DROP TABLE IF EXISTS pre_common_admincp_group;
CREATE TABLE pre_common_admincp_group (
 cpgroupid smallint(6) unsigned NOT NULL AUTO_INCREMENT COMMENT '後台組id',
 cpgroupname varchar(255) NOT NULL COMMENT '後台組名稱',
 PRIMARY KEY (cpgroupid)
) ENGINE=MyISAM COMMENT='後台管理組';

DROP TABLE IF EXISTS pre_common_admincp_member;
CREATE TABLE pre_common_admincp_member (
 uid int(10) unsigned NOT NULL COMMENT '成員uid',
 cpgroupid int(10) unsigned NOT NULL COMMENT '成員組id',
 customperm text NOT NULL COMMENT '自定義管理權限',
 PRIMARY KEY (uid)
) ENGINE=MyISAM COMMENT='後台管理成員';

DROP TABLE IF EXISTS pre_common_admincp_perm;
CREATE TABLE pre_common_admincp_perm (
 cpgroupid smallint(6) unsigned NOT NULL COMMENT '後台組id',
 perm varchar(255) NOT NULL COMMENT '後台組權限',
 UNIQUE KEY cpgroupperm (cpgroupid,perm)
) ENGINE=MyISAM COMMENT='後台權限表';

DROP TABLE IF EXISTS pre_common_admincp_session;
CREATE TABLE pre_common_admincp_session (
 uid int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用戶id',
 adminid smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '管理組id',
 panel tinyint(1) NOT NULL DEFAULT '0' COMMENT '面板位置',
 ip varchar(15) NOT NULL DEFAULT '' COMMENT 'IP',
 dateline int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最後動作時間',
 errorcount tinyint(1) NOT NULL DEFAULT '0' COMMENT '登錄錯誤次數',
 storage mediumtext NOT NULL COMMENT '臨時內容存儲',
 PRIMARY KEY (uid,panel)
) ENGINE=MyISAM COMMENT='後台session表';

DROP TABLE IF EXISTS pre_portal_attachment;
CREATE TABLE pre_portal_attachment (
  attachid mediumint(8) unsigned NOT NULL auto_increment COMMENT '附件id',
  uid int(10) unsigned NOT NULL default '0' COMMENT '會員id',
  dateline int(10) unsigned NOT NULL default '0' COMMENT '上傳時間',
  filename varchar(255) NOT NULL default '' COMMENT '原文件名',
  filetype varchar(255) NOT NULL default '' COMMENT '文件類型',
  filesize int(10) unsigned NOT NULL default '0' COMMENT '文件大小',
  attachment varchar(255) NOT NULL default '' COMMENT '服務器路徑',
  isimage tinyint(1) NOT NULL default '0' COMMENT '是否圖片',
  thumb tinyint(1) unsigned NOT NULL default '0' COMMENT '是否是縮率圖',
  remote tinyint(1) unsigned NOT NULL default '0' COMMENT '是否遠程附件',
  aid mediumint(8) unsigned NOT NULL default '0' COMMENT '文章id',
  PRIMARY KEY  (attachid),
  KEY aid (aid,attachid)
) ENGINE=MyISAM COMMENT='門戶文章附件表';

DROP TABLE IF EXISTS pre_portal_article_related;
CREATE TABLE pre_portal_article_related (
  aid mediumint(8) unsigned NOT NULL auto_increment COMMENT '文章ID',
  raid mediumint(8) unsigned NOT NULL default '0' COMMENT '相關文章ID',
  displayorder mediumint(8) unsigned NOT NULL default '0' COMMENT '顯示順序',
  PRIMARY KEY  (aid,raid),
  KEY aid  (aid,displayorder)
) ENGINE=MyISAM COMMENT='門戶相關文章';

DROP TABLE IF EXISTS pre_home_specialuser;
CREATE TABLE pre_home_specialuser (
 uid int(10) unsigned NOT NULL default '0' COMMENT '用戶ID',
 username varchar(15) NOT NULL default '' COMMENT '用戶名',
 status tinyint(1) unsigned NOT NULL default '0' COMMENT '用戶類型0為推薦用戶1為默認好友',
 dateline int(10) NOT NULL default '0' COMMENT '設置時間',
 reason text NOT NULL COMMENT '操作原因',
 opuid int(10) unsigned NOT NULL default '0' COMMENT '操作者用戶ID',
 opusername varchar(15) NOT NULL default '' COMMENT '操作者用戶名',
 displayorder mediumint(8) unsigned NOT NULL default '0' COMMENT '顯示順序',
 KEY uid (uid,status),
 KEY displayorder (status,displayorder)
) ENGINE=MyISAM COMMENT='特殊用戶表';

DROP TABLE IF EXISTS pre_common_district;
CREATE TABLE pre_common_district (
  id mediumint(8) unsigned NOT NULL auto_increment COMMENT '地區ID',
  `name` varchar(255) NOT NULL default '' COMMENT '地區名稱',
  `level` tinyint(4) unsigned NOT NULL default '0' COMMENT '地區等級：1，省級；2，市級；3，縣級；4，鄉鎮',
  usetype tinyint(1) unsigned NOT NULL default '0' COMMENT '使用對像：0:都不啟用; 1:出生地; 2:居住地; 3:都啟用',
  upid mediumint(8) unsigned NOT NULL default '0' COMMENT '上級地區ID',
  displayorder smallint(6) NOT NULL default '0' COMMENT '顯示順序',
  PRIMARY KEY  (id),
  KEY upid (upid,displayorder)
) ENGINE=MyISAM COMMENT='地區表';

DROP TABLE IF EXISTS pre_forum_grouplevel;
CREATE TABLE pre_forum_grouplevel (
  levelid smallint(6) unsigned NOT NULL auto_increment COMMENT '等級ID',
  `type` enum('special','default') NOT NULL default 'default' COMMENT '類型',
  leveltitle varchar(255) NOT NULL default '' COMMENT '群組等級名稱',
  creditshigher int(10) NOT NULL default '0' COMMENT '該等級的積分上限',
  creditslower int(10) NOT NULL default '0' COMMENT '該等級的積分下限',
  icon varchar(255) NOT NULL default '' COMMENT '等級圖標',
  creditspolicy text NOT NULL COMMENT '積分策略',
  postpolicy text NOT NULL COMMENT '帖子策略',
  specialswitch text NOT NULL COMMENT '特殊開能開關',
  PRIMARY KEY (levelid),
  KEY creditsrange (creditshigher,creditslower)
) ENGINE=MyISAM COMMENT='群組等級表';

DROP TABLE IF EXISTS pre_forum_groupcreditslog;
CREATE TABLE pre_forum_groupcreditslog (
  fid mediumint(8) unsigned NOT NULL COMMENT '群組ID',
  uid int(10) unsigned NOT NULL COMMENT '成員UID',
  logdate int(8) NOT NULL default '0' COMMENT '日期/20100308',
  PRIMARY KEY  (fid,uid,logdate)
) ENGINE=MyISAM COMMENT='群組積分日誌表';

DROP TABLE IF EXISTS pre_home_blog_category;
CREATE TABLE pre_home_blog_category (
  catid mediumint(8) unsigned NOT NULL auto_increment COMMENT '欄目id',
  upid mediumint(8) unsigned NOT NULL default '0' COMMENT '上級欄目id',
  catname varchar(255) NOT NULL default '' COMMENT '標題',
  num mediumint(8) unsigned NOT NULL default '0' COMMENT '日誌數',
  displayorder smallint(6) NOT NULL default '0' COMMENT '顯示順序',
  PRIMARY KEY  (catid)
) ENGINE=MyISAM COMMENT='日誌系統欄目';

DROP TABLE IF EXISTS pre_home_album_category;
CREATE TABLE pre_home_album_category (
  catid mediumint(8) unsigned NOT NULL auto_increment COMMENT '欄目id',
  upid mediumint(8) unsigned NOT NULL default '0' COMMENT '上級欄目id',
  catname varchar(255) NOT NULL default '' COMMENT '標題',
  num mediumint(8) unsigned NOT NULL default '0' COMMENT '相冊數',
  displayorder smallint(6) NOT NULL default '0' COMMENT '顯示順序',
  PRIMARY KEY  (catid)
) ENGINE=MyISAM COMMENT='相冊系統欄目';

DROP TABLE IF EXISTS pre_common_report;
CREATE TABLE pre_common_report (
  id mediumint(8) unsigned NOT NULL auto_increment COMMENT '記錄id',
  urlkey char(32) NOT NULL default '' COMMENT '地址md5',
  url varchar(255) NOT NULL default '' COMMENT '地址',
  message text NOT NULL COMMENT '舉報理由',
  uid int(10) unsigned NOT NULL default '0' COMMENT '會員id',
  username varchar(15) NOT NULL default '' COMMENT '用戶名',
  dateline int(10) unsigned NOT NULL default '0' COMMENT '舉報時間',
  num smallint(6) unsigned NOT NULL default '1' COMMENT '舉報次數',
  opuid int(10) unsigned NOT NULL default '0' COMMENT '管理員id',
  opname varchar(15) NOT NULL default '' COMMENT '管理員姓名',
  optime int(10) unsigned NOT NULL default '0' COMMENT '處理時間',
  opresult varchar(255) NOT NULL default '' COMMENT '對舉報人的獎懲',
  fid mediumint(8) unsigned NOT NULL default '0' COMMENT '論壇id',
  PRIMARY KEY  (id),
  KEY urlkey (urlkey),
  KEY fid (fid)
) ENGINE=MyISAM COMMENT='用戶舉報表';

DROP TABLE IF EXISTS pre_common_patch;
CREATE TABLE pre_common_patch (
  serial varchar(10) NOT NULL default '' COMMENT '漏洞編號',
  rule text NOT NULL COMMENT '修補規則',
  note text NOT NULL COMMENT '漏洞說明',
  `status` tinyint(1) NOT NULL default '0' COMMENT '修補狀態',
  dateline int(10) unsigned NOT NULL default '0' COMMENT '漏洞發佈時間',
  PRIMARY KEY  (serial)
) ENGINE=MyISAM COMMENT='漏洞補丁表';

DROP TABLE IF EXISTS pre_forum_collection;
CREATE TABLE pre_forum_collection (
  ctid mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '專輯ID',
  uid int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用戶ID',
  username varchar(15) NOT NULL DEFAULT '' COMMENT '用戶名',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '專輯名',
  dateline int(10) unsigned NOT NULL DEFAULT '0' COMMENT '創建時間',
  follownum mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '訂閱數',
  threadnum mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '主題數',
  commentnum mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '評論數',
  `desc` varchar(255) NOT NULL DEFAULT '' COMMENT '簡介',
  lastupdate int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最後變動時間',
  rate float NOT NULL DEFAULT '0' COMMENT '評分',
  ratenum mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '評分次數',
  lastpost mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '最後主題ID',
  lastsubject varchar(80) NOT NULL DEFAULT '' COMMENT '最後主題標題',
  lastposttime int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最後主題時間',
  lastposter varchar(15) NOT NULL DEFAULT '' COMMENT '最後主題發帖者',
  lastvisit int(10) unsigned NOT NULL DEFAULT '0' COMMENT '創建者最後訪問',
  `keyword` varchar(255) NOT NULL DEFAULT '' COMMENT '專輯關鍵詞',
  PRIMARY KEY (ctid),
  KEY dateline (dateline),
  KEY hotcollection (threadnum,lastupdate),
  KEY follownum (follownum),
  KEY uid (uid)
) ENGINE=MyISAM COMMENT='淘帖專輯表';

DROP TABLE IF EXISTS pre_forum_collectioncomment;
CREATE TABLE pre_forum_collectioncomment (
  cid mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '評論ID',
  ctid mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '專輯ID',
  uid int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用戶ID',
  username varchar(15) NOT NULL DEFAULT '' COMMENT '用戶名',
  message text NOT NULL COMMENT '評論內容',
  dateline int(10) unsigned NOT NULL DEFAULT '0' COMMENT '評論時間',
  useip varchar(16) NOT NULL DEFAULT '' COMMENT 'IP地址',
  port smallint(6) unsigned NOT NULL default '0' COMMENT '端口號',
  rate float NOT NULL DEFAULT '0' COMMENT '評分',
  PRIMARY KEY (cid),
  KEY ctid (ctid,dateline),
  KEY userrate (ctid,uid,rate)
) ENGINE=MyISAM COMMENT='淘帖評論表';

DROP TABLE IF EXISTS pre_forum_collectionfollow;
CREATE TABLE pre_forum_collectionfollow (
  uid int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用戶ID',
  username char(15) NOT NULL DEFAULT '' COMMENT '用戶名',
  ctid mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '專輯ID',
  dateline int(10) unsigned NOT NULL DEFAULT '0' COMMENT '關注時間',
  lastvisit int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最後訪問專輯時間',
  PRIMARY KEY (uid,ctid),
  KEY ctid (ctid,dateline)
) ENGINE=MyISAM COMMENT='淘帖關注表';

DROP TABLE IF EXISTS pre_forum_collectioninvite;
CREATE TABLE pre_forum_collectioninvite (
  ctid mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '專輯ID',
  uid int(10) unsigned NOT NULL DEFAULT '0' COMMENT '邀請合作者ID',
  dateline int(10) unsigned NOT NULL DEFAULT '0' COMMENT '邀請時間',
  PRIMARY KEY (ctid,uid),
  KEY dateline (dateline)
) ENGINE=MyISAM COMMENT='邀請管理淘專輯';

DROP TABLE IF EXISTS pre_forum_collectionrelated;
CREATE TABLE pre_forum_collectionrelated (
  tid mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '主題ID',
  collection text NOT NULL COMMENT '專輯列表',
  PRIMARY KEY (tid)
) ENGINE=MyISAM COMMENT='淘帖主題被收入專輯表';

DROP TABLE IF EXISTS pre_forum_collectionteamworker;
CREATE TABLE pre_forum_collectionteamworker (
  ctid mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '專輯ID',
  uid int(10) unsigned NOT NULL DEFAULT '0' COMMENT '合作者ID',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '專輯名',
  username varchar(15) NOT NULL DEFAULT '' COMMENT '用戶名',
  lastvisit int(8) unsigned NOT NULL DEFAULT '0' COMMENT '最後訪問專輯時間',
  PRIMARY KEY (ctid,uid)
) ENGINE=MyISAM COMMENT='淘帖合作編輯表';

DROP TABLE IF EXISTS pre_forum_collectionthread;
CREATE TABLE pre_forum_collectionthread (
  ctid mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '專輯ID',
  tid mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '專輯內主題ID',
  dateline int(10) unsigned NOT NULL DEFAULT '0' COMMENT '主題日期',
  reason varchar(255) NOT NULL DEFAULT '' COMMENT '推薦理由',
  PRIMARY KEY (ctid,tid),
  KEY ctid (ctid,dateline)
) ENGINE=MyISAM COMMENT='淘帖包含主題表';

DROP TABLE IF EXISTS pre_forum_hotreply_number;
CREATE TABLE pre_forum_hotreply_number (
  pid int(10) unsigned NOT NULL DEFAULT '0' COMMENT '帖子ID',
  tid mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '主題ID',
  support smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '支持數',
  against smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '反對數',
  total mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '總數',
  PRIMARY KEY (pid),
  KEY tid (tid,total)
) ENGINE=MyISAM COMMENT='回帖投票';

DROP TABLE IF EXISTS pre_forum_hotreply_member;
CREATE TABLE pre_forum_hotreply_member (
  tid mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '主題ID',
  pid int(10) unsigned NOT NULL DEFAULT '0' COMMENT '帖子ID',
  uid int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用戶ID',
  attitude tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '用戶投票值',
  PRIMARY KEY (pid,uid)
) ENGINE=MyISAM COMMENT='回帖投票會員記錄表';

DROP TABLE IF EXISTS pre_forum_filter_post;
CREATE TABLE pre_forum_filter_post (
  tid mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '主題ID',
  pid int(10) unsigned NOT NULL DEFAULT '0' COMMENT '帖子ID',
  postlength int(10) unsigned NOT NULL DEFAULT '0' COMMENT '帖子真實長度',
  PRIMARY KEY (tid,pid),
  KEY tid (tid,postlength)
) ENGINE=MyISAM COMMENT='非水帖標記';

DROP TABLE IF EXISTS pre_common_optimizer;
CREATE TABLE pre_common_optimizer (
  `k` char(100) NOT NULL DEFAULT '' COMMENT '記錄鍵值',
  `v` char(255) NOT NULL DEFAULT '' COMMENT '記錄對應數據',
  PRIMARY KEY (`k`)
) ENGINE=MyISAM COMMENT='優化大師的記錄數據';

DROP TABLE IF EXISTS pre_forum_sofa;
CREATE TABLE pre_forum_sofa (
  tid mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '零回復主題id',
  fid mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '版塊id',
  PRIMARY KEY (tid),
  KEY ftid (fid,tid)
) ENGINE=MyISAM COMMENT='搶沙發列表';

DROP TABLE IF EXISTS pre_forum_threadprofile;
CREATE TABLE pre_forum_threadprofile (
  id mediumint(8) unsigned NOT NULL auto_increment COMMENT 'id',
  `name` char(100) NOT NULL DEFAULT '' COMMENT '名稱',
  template text NOT NULL COMMENT '模板',
  `global` tinyint(1) NOT NULL DEFAULT '0' COMMENT '全局',
  PRIMARY KEY (id),
  KEY `global` (`global`)
) ENGINE=MyISAM COMMENT='貼內用戶信息設置';

DROP TABLE IF EXISTS pre_forum_threadprofile_group;
CREATE TABLE pre_forum_threadprofile_group (
  gid mediumint(8) NOT NULL COMMENT '關聯用戶組、認證組id',
  tpid mediumint(8) unsigned NOT NULL COMMENT 'id',
  PRIMARY KEY (gid)
) ENGINE=MyISAM COMMENT='貼內用戶信息用戶組';

DROP TABLE IF EXISTS pre_forum_newthread;
CREATE TABLE pre_forum_newthread (
  tid mediumint(8) unsigned NOT NULL default '0' COMMENT '主題ID',
  fid mediumint(8) unsigned NOT NULL default '0' COMMENT '版塊ID',
  dateline int(10) unsigned NOT NULL default '0' COMMENT '日期',
  PRIMARY KEY (`tid`),
  KEY `fid` (`fid`),
  KEY `dateline` (`dateline`)
) ENGINE=MyISAM COMMENT='最新主題表';

DROP TABLE IF EXISTS pre_common_seccheck;
CREATE TABLE pre_common_seccheck (
  `ssid` int(10) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `dateline` int(10) NOT NULL COMMENT '時間',
  `code` char(6) NOT NULL COMMENT '字符',
  `succeed` tinyint(1) NOT NULL COMMENT '成功次數',
  `verified` tinyint(1) NOT NULL COMMENT '校驗次數',
  PRIMARY KEY (`ssid`),
  KEY `dateline` (`dateline`),
  KEY `succeed` (`succeed`),
  KEY `verified` (`verified`)
) ENGINE=MEMORY COMMENT='驗證碼表';

DROP TABLE IF EXISTS pre_common_smscodecheck;
CREATE TABLE pre_common_smscodecheck (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `sms` char(11) NOT NULL COMMENT '手機號',
  `dateline` int(10) NOT NULL COMMENT '時間',
  `code` varchar(15) NOT NULL COMMENT '驗證碼',
  `succeed` tinyint(1) NOT NULL COMMENT '成功次數',
  `verified` tinyint(1) NOT NULL COMMENT '校驗次數',
  PRIMARY KEY (`id`),
  KEY `sms` (`sms`),
  KEY `dateline` (`dateline`),
  KEY `succeed` (`succeed`),
  KEY `verified` (`verified`)
) ENGINE=MEMORY COMMENT='短信驗證碼表';