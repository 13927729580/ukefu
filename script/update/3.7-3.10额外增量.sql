CREATE TABLE `uk_act_formfilter_item` (
  `id` varchar(32) NOT NULL COMMENT '����ID',
  `orgi` varchar(32) DEFAULT NULL COMMENT '�⻧ID',
  `creater` varchar(32) DEFAULT NULL COMMENT '������',
  `createtime` datetime DEFAULT NULL COMMENT '����ʱ��',
  `updatetime` datetime DEFAULT NULL COMMENT '����ʱ��',
  `formfilterid` varchar(32) DEFAULT NULL COMMENT 'ɸѡ��ID',
  `field` varchar(32) DEFAULT NULL COMMENT '�ֶ�',
  `cond` varchar(32) DEFAULT NULL COMMENT '����',
  `value` varchar(32) DEFAULT NULL COMMENT 'ȡֵ',
  `contype` varchar(32) DEFAULT NULL COMMENT '��������',
  `itemtype` varchar(32) DEFAULT NULL COMMENT '����',
  `comp` varchar(50) DEFAULT NULL COMMENT '�߼�����',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='ɸѡ��';
CREATE TABLE `uk_act_formfilter` (
  `ID` varchar(32) NOT NULL COMMENT '����ID',
  `NAME` varchar(50) DEFAULT NULL COMMENT 'ɸѡ������',
  `CODE` varchar(50) DEFAULT NULL COMMENT 'ɸѡ������',
  `CREATETIME` datetime DEFAULT NULL COMMENT '����ʱ��',
  `CREATER` varchar(32) DEFAULT NULL COMMENT '������',
  `UPDATETIME` datetime DEFAULT NULL COMMENT '����ʱ��',
  `ORGI` varchar(32) DEFAULT NULL COMMENT '�⻧ID',
  `USERNAME` varchar(50) DEFAULT NULL COMMENT '����������',
  `STATUS` varchar(50) DEFAULT NULL COMMENT '״̬',
  `PARENTID` varchar(32) DEFAULT NULL COMMENT '�ϼ�ID',
  `FILTERTYPE` varchar(32) DEFAULT NULL COMMENT 'ɸѡ���ͣ�����ɸѡ/Ԫ����ɸѡ��',
  `BATID` varchar(32) DEFAULT NULL COMMENT 'ɸѡ��ʹ�õ�����ID',
  `TABLEID` varchar(32) DEFAULT NULL COMMENT 'ɸѡ��ʹ��Ԫ����ID',
  `DATASTATUS` tinyint(4) DEFAULT '0' COMMENT '����״̬',
  `INX` int(11) DEFAULT '0' COMMENT '�����������',
  `ORGAN` varchar(32) DEFAULT NULL COMMENT '����',
  `DESCRIPTION` text COMMENT '��ע��Ϣ',
  `execnum` int(11) DEFAULT '0' COMMENT '�������',
  `filternum` int(11) DEFAULT '0' COMMENT 'ɸѡ����',
  `conditional` int(11) DEFAULT '0' COMMENT '��������',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='ɸѡ��';

CREATE TABLE `uk_act_task` (
  `ID` varchar(32) NOT NULL COMMENT '����ID',
  `NAME` varchar(50) DEFAULT NULL COMMENT '��������',
  `CODE` varchar(50) DEFAULT NULL COMMENT '�������',
  `CREATETIME` datetime DEFAULT NULL COMMENT '����ʱ��',
  `CREATER` varchar(32) DEFAULT NULL COMMENT '������',
  `UPDATETIME` datetime DEFAULT NULL COMMENT '����ʱ��',
  `ORGI` varchar(32) DEFAULT NULL COMMENT '�⻧ID',
  `USERNAME` varchar(50) DEFAULT NULL COMMENT '����������',
  `STATUS` varchar(50) DEFAULT NULL COMMENT '״̬',
  `PARENTID` varchar(32) DEFAULT NULL COMMENT '�ϼ�ID',
  `ACTID` varchar(32) DEFAULT NULL COMMENT '�ID',
  `INX` int(11) DEFAULT '0' COMMENT '�����������',
  `NAMENUM` int(11) DEFAULT '0' COMMENT '���ΰ�������������',
  `VALIDNUM` int(11) DEFAULT '0' COMMENT '���ΰ�������Ч��������',
  `INVALIDNUM` int(11) DEFAULT '0' COMMENT '���ΰ�������Ч��������',
  `ASSIGNED` int(11) DEFAULT '0' COMMENT '�ѷ�����������',
  `NOTASSIGNED` int(11) DEFAULT '0' COMMENT 'δ������������',
  `ENABLE` tinyint(4) DEFAULT '0' COMMENT '����״̬',
  `DATASTATUS` tinyint(4) DEFAULT '0' COMMENT '����״̬',
  `ORGAN` varchar(32) DEFAULT NULL COMMENT '����',
  `DESCRIPTION` text COMMENT '��ע��Ϣ',
  `execnum` int(11) DEFAULT '0' COMMENT '�������',
  `SOURCE` varchar(255) DEFAULT NULL COMMENT '��Դ��Ϣ',
  `BATID` varchar(32) DEFAULT NULL COMMENT '����ID',
  `FILTERID` varchar(32) DEFAULT NULL COMMENT 'ɸѡID',
  `ASSIGNEDORGAN` int(11) DEFAULT '0' COMMENT '���������',
  `exectype` varchar(32) DEFAULT NULL COMMENT 'ִ������',
  `renum` int(11) DEFAULT '0' COMMENT '��������',
  `reorgannum` int(11) DEFAULT '0' COMMENT '���䵽��������',
  `assignedai` int(11) DEFAULT '0' COMMENT '���䵽AI����������',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='���������';
CREATE TABLE `uk_sales_status` (
  `id` varchar(32) NOT NULL COMMENT '����ID',
  `name` varchar(255) DEFAULT NULL COMMENT '״̬��',
  `code` varchar(255) DEFAULT NULL COMMENT '״̬����',
  `cate` varchar(32) DEFAULT NULL COMMENT '״̬����ID',
  `orgi` varchar(32) DEFAULT NULL COMMENT '�⻧ID',
  `creater` varchar(32) DEFAULT NULL COMMENT '������',
  `createtime` datetime DEFAULT NULL COMMENT '����ʱ��',
  `updatetime` datetime DEFAULT NULL COMMENT '����ʱ��',
  `memo` varchar(32) DEFAULT NULL COMMENT '��ע',
  `activityid` varchar(32) DEFAULT NULL COMMENT '�ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='����״̬';



CREATE TABLE `uk_act_filter_his` (
  `ID` varchar(32) NOT NULL COMMENT '����ID',
  `NAME` varchar(50) DEFAULT NULL COMMENT 'ɸѡ����',
  `CODE` varchar(50) DEFAULT NULL COMMENT 'ɸѡ����',
  `CREATETIME` datetime DEFAULT NULL COMMENT '����ʱ��',
  `CREATER` varchar(32) DEFAULT NULL COMMENT '������',
  `UPDATETIME` datetime DEFAULT NULL COMMENT '����ʱ��',
  `ORGI` varchar(32) DEFAULT NULL COMMENT '�⻧ID',
  `USERNAME` varchar(50) DEFAULT NULL COMMENT '�û���',
  `STATUS` varchar(50) DEFAULT NULL COMMENT '״̬',
  `PARENTID` varchar(32) DEFAULT NULL COMMENT '�ϼ�ID',
  `ACTID` varchar(32) DEFAULT NULL COMMENT '�ID',
  `INX` int(11) DEFAULT '0' COMMENT '�����������',
  `NAMENUM` int(11) DEFAULT '0' COMMENT '���ΰ�������������',
  `VALIDNUM` int(11) DEFAULT '0' COMMENT '���ΰ�������Ч��������',
  `INVALIDNUM` int(11) DEFAULT '0' COMMENT '���ΰ�������Ч��������',
  `ASSIGNED` int(11) DEFAULT '0' COMMENT '�ѷ�����������',
  `NOTASSIGNED` int(11) DEFAULT '0' COMMENT 'δ������������',
  `ENABLE` tinyint(4) DEFAULT '0' COMMENT '����״̬',
  `DATASTATUS` tinyint(4) DEFAULT '0' COMMENT '����״̬',
  `ORGAN` varchar(32) DEFAULT NULL COMMENT '����',
  `DESCRIPTION` text COMMENT '��ע',
  `execnum` int(11) DEFAULT '0' COMMENT '�������',
  `SOURCE` varchar(255) DEFAULT NULL COMMENT '��Դ',
  `BATID` varchar(32) DEFAULT NULL COMMENT '����ID',
  `FILTERID` varchar(32) DEFAULT NULL COMMENT 'ɸѡ��ID',
  `ASSIGNEDORGAN` int(11) DEFAULT '0' COMMENT '���䲿��',
  `exectype` varchar(32) DEFAULT NULL COMMENT 'ִ������',
  `renum` int(11) DEFAULT '0' COMMENT '��������',
  `reorgannum` int(11) DEFAULT '0' COMMENT '���ŷ�������',
  `assignedai` int(11) DEFAULT '0' COMMENT '���䵽AI����������',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='ɸѡ��¼��';
INSERT INTO `uk_sysdic` (`ID`, `NAME`, `TITLE`, `CODE`, `ORGI`, `CTYPE`, `PARENTID`, `DESCRIPTION`, `MEMO`, `ICONSTR`, `ICONSKIN`, `CATETYPE`, `CREATER`, `CREATETIME`, `UPDATETIME`, `HASCHILD`, `SORTINDEX`, `DICID`, `DEFAULTVALUE`, `DISCODE`, `URL`, `MODULE`, `MLEVEL`, `RULES`, `MENUTYPE`) VALUES ('297e74066464004b01646402379d068f', '�״̬����', 'pub', 'com.dic.callout.activity', NULL, 'data', '0', '', NULL, NULL, NULL, NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-07-04 14:37:04', NULL, '1', '0', NULL, '0', '0', NULL, NULL, NULL, NULL, NULL);
ALTER TABLE uk_jobdetail ADD `city` varchar(32) DEFAULT NULL COMMENT '��·���ڳ���';
ALTER TABLE uk_jobdetail ADD `prefix` tinyint(4) DEFAULT '0' COMMENT '��·��Դ����ǰ׺';
ALTER TABLE uk_jobdetail ADD  `reportid` varchar(32) DEFAULT NULL COMMENT '���ݱ�ID';
ALTER TABLE uk_jobdetail ADD `siptrunk` varchar(32) DEFAULT NULL COMMENT '��·��Ϣ';
ALTER TABLE uk_jobdetail ADD `province` varchar(32) DEFAULT NULL COMMENT '��·����ʡ��';
ALTER TABLE `uk_sales_product_type` ADD `parentid` varchar(32) DEFAULT NULL COMMENT '�ϼ���Ʒ����';
ALTER TABLE `uk_act_config` ADD `dataid` varchar(32) DEFAULT NULL COMMENT '����ID';
ALTER TABLE `uk_act_config` ADD `previewautocallout` tinyint(4) DEFAULT '0' COMMENT '����Ԥ������ʱ';
ALTER TABLE `uk_act_config` ADD `defaultvalue` varchar(100) DEFAULT NULL COMMENT 'Ĭ��ֵ';
ALTER TABLE `uk_act_config` ADD `strategy` varchar(100) DEFAULT NULL COMMENT '����';
ALTER TABLE `uk_act_config` ADD `type` varchar(100) DEFAULT NULL COMMENT '����';
ALTER TABLE `uk_act_config` ADD `updatetime` datetime DEFAULT NULL COMMENT '����ʱ��';
CREATE TABLE `uk_jobdetailproduct` (
  `id` varchar(32) NOT NULL COMMENT '����ID',
  `actid` varchar(32) DEFAULT NULL COMMENT '�ID',
  `product_id` varchar(32) DEFAULT NULL COMMENT '��ƷID',
  `creater` varchar(32) DEFAULT NULL COMMENT '������',
  `createtime` datetime DEFAULT NULL COMMENT '����ʱ��',
  `orgi` varchar(32) DEFAULT NULL COMMENT '�⻧ID',
  `quota` int(11) DEFAULT '0' COMMENT '���',
  `price` int(11) DEFAULT '0' COMMENT '�۸�',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='���Ʒ��';
CREATE TABLE `uk_act_schedule` (
  `ID` varchar(32) NOT NULL COMMENT '����ID',
  `NAME` varchar(50) DEFAULT NULL COMMENT '����',
  `CODE` varchar(50) DEFAULT NULL COMMENT '����',
  `CREATETIME` datetime DEFAULT NULL COMMENT '����ʱ��',
  `CREATER` varchar(32) DEFAULT NULL COMMENT '������',
  `UPDATETIME` datetime DEFAULT NULL COMMENT '����ʱ��',
  `ORGI` varchar(32) DEFAULT NULL COMMENT '�⻧ID',
  `USERNAME` varchar(50) DEFAULT NULL COMMENT '����������',
  `STATUS` varchar(50) DEFAULT NULL COMMENT '״̬',
  `PARENTID` varchar(32) DEFAULT NULL COMMENT '�ϼ�ID',
  `FILTERTYPE` varchar(32) DEFAULT NULL COMMENT 'ɸѡ���ͣ�����ɸѡ/Ԫ����ɸѡ��',
  `ACTID` varchar(32) DEFAULT NULL COMMENT 'ɸѡ��ʹ�õ�����ID',
  `TABLEID` varchar(32) DEFAULT NULL COMMENT 'ɸѡ��ʹ��Ԫ����ID',
  `DATASTATUS` tinyint(4) DEFAULT '0' COMMENT '����״̬',
  `INX` int(11) DEFAULT '0' COMMENT '�����������',
  `ORGAN` varchar(32) DEFAULT NULL COMMENT '����',
  `DESCRIPTION` text COMMENT '������Ϣ',
  `daytype` varchar(32) DEFAULT NULL COMMENT '��������',
  `begintime` varchar(32) DEFAULT NULL COMMENT '��ʼʱ��',
  `endtime` varchar(32) DEFAULT NULL COMMENT '����ʱ��',
  `policy` varchar(32) DEFAULT NULL COMMENT '����',
  `callvalues` text COMMENT '��ע������Ϣ',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='�����ճ̱�';
CREATE TABLE `uk_sales_status_type` (
  `id` varchar(32) NOT NULL COMMENT '����ID',
  `name` varchar(255) DEFAULT NULL COMMENT '״̬������',
  `parentid` varchar(32) DEFAULT NULL COMMENT '����ID',
  `orgi` varchar(32) DEFAULT NULL COMMENT '�⻧ID',
  `creater` varchar(32) DEFAULT NULL COMMENT '������',
  `createtime` datetime DEFAULT NULL COMMENT '����ʱ��',
  `updatetime` datetime DEFAULT NULL COMMENT '����ʱ��',
  `activityid` varchar(32) DEFAULT NULL COMMENT '�ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='����״̬����';
CREATE TABLE `uk_act_callagent` (
  `ID` varchar(32) NOT NULL COMMENT '����ID',
  `NAME` varchar(50) DEFAULT NULL COMMENT '��ϯ����',
  `CODE` varchar(50) DEFAULT NULL COMMENT '��ϯ����',
  `CREATETIME` datetime DEFAULT NULL COMMENT '����ʱ��',
  `CREATER` varchar(32) DEFAULT NULL COMMENT '������',
  `UPDATETIME` datetime DEFAULT NULL COMMENT '����ʱ��',
  `ORGI` varchar(32) DEFAULT NULL COMMENT '�⻧ID',
  `USERNAME` varchar(50) DEFAULT NULL COMMENT '�û���',
  `STATUS` varchar(50) DEFAULT NULL COMMENT '��ϯ״̬',
  `PARENTID` varchar(32) DEFAULT NULL COMMENT '�ϼ�ID',
  `FILTERTYPE` varchar(32) DEFAULT NULL COMMENT 'ɸѡ���ͣ�����ɸѡ/Ԫ����ɸѡ��',
  `BATID` varchar(32) DEFAULT NULL COMMENT 'ɸѡ��ʹ�õ�����ID',
  `TABLEID` varchar(32) DEFAULT NULL COMMENT 'ɸѡ��ʹ��Ԫ����ID',
  `DATASTATUS` tinyint(4) DEFAULT '0' COMMENT '����״̬',
  `INX` int(11) DEFAULT '0' COMMENT '�����������',
  `ORGAN` varchar(32) DEFAULT NULL COMMENT '����',
  `DESCRIPTION` text COMMENT '������Ϣ',
  `distype` varchar(32) DEFAULT NULL COMMENT '��������',
  `distarget` varchar(32) DEFAULT NULL COMMENT '�������',
  `disnum` varchar(32) DEFAULT NULL COMMENT '��������',
  `ACTID` varchar(32) DEFAULT NULL COMMENT '�ID',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='��������������';


  ALTER TABLE uk_sessionconfig ADD `quenetimeout` int(11) DEFAULT '600' COMMENT '����ÿ��Ŷӵ����ʱ��';
  ALTER TABLE uk_sessionconfig ADD `quenetimeoutmsg` varchar(255) DEFAULT NULL COMMENT '�ÿ��Ŷӳ�����ʾ��Ϣ';
  ALTER TABLE `uk_callcenter_event` ADD  `dataid` varchar(32) DEFAULT NULL COMMENT '����ID';
  ALTER TABLE `uk_callcenter_event` ADD  `nameid` varchar(32) DEFAULT NULL COMMENT '����ID';
    ALTER TABLE `uk_xiaoe_config` ADD  `aiid` varchar(32) DEFAULT NULL COMMENT '������ID';

	       
  CREATE TABLE `uk_work_session` (
  `ID` varchar(50) NOT NULL COMMENT 'ID',
  `USERID` varchar(50) DEFAULT NULL COMMENT '��¼��ID',
  `AGENT` varchar(50) DEFAULT NULL COMMENT '��ϯ����',
  `USERNAME` varchar(50) DEFAULT NULL COMMENT '��ϯ�û�������¼����',
  `AGENTNO` varchar(50) DEFAULT NULL COMMENT '�ֻ��ţ���ϯ��¼�ķֻ����룩',
  `NAME` varchar(50) DEFAULT NULL COMMENT '��ϯ����',
  `CODE` varchar(50) DEFAULT NULL COMMENT '��ϯ״̬code����Ӧ�ֵ�����CODE��',
  `STATUS` varchar(50) DEFAULT NULL COMMENT '��ϯ��ǰ״',
  `BUSY` tinyint(4) DEFAULT '0' COMMENT '��ϯ�Ƿ�æ',
  `WORKSTATUS` varchar(50) DEFAULT NULL COMMENT '��ϯ����״̬',
  `ORGI` varchar(50) DEFAULT NULL COMMENT '�⻧ID',
  `AGENTSERVICEID` varchar(50) DEFAULT NULL COMMENT '�ỰID',
  `SKILL` varchar(50) DEFAULT NULL COMMENT '����ļ�����ID',
  `SKILLNAME` varchar(50) DEFAULT NULL COMMENT '����ļ���������',
  `CREATETIME` datetime DEFAULT NULL COMMENT '��¼����ʱ��',
  `ANI` varchar(50) DEFAULT NULL COMMENT '���к���',
  `CALLED` varchar(50) DEFAULT NULL COMMENT '���к���',
  `SOURCE` varchar(50) DEFAULT NULL COMMENT '��Դ',
  `SERVICEID` varchar(32) DEFAULT NULL COMMENT '�����¼ID',
  `SERVICESTATUS` varchar(50) DEFAULT NULL COMMENT '��ǰ����״̬',
  `DISCALLER` varchar(50) DEFAULT NULL COMMENT '���зֻ���',
  `DISCALLED` varchar(50) DEFAULT NULL COMMENT '���зֻ���',
  `ORGAN` varchar(50) DEFAULT NULL COMMENT '������֯����ID',
  `BEGINTIME` datetime DEFAULT NULL COMMENT '״̬��ʼʱ��',
  `ENDTIME` datetime DEFAULT NULL COMMENT '״̬����ʱ��',
  `FIRSTSTATUS` tinyint(4) DEFAULT '0' COMMENT '�����״�ʱ��',
  `DATESTR` varchar(20) DEFAULT NULL COMMENT '�����ַ���',
  `DURATION` int(11) DEFAULT NULL COMMENT 'ͨ��ʱ��',
  `IPADDR` varchar(100) DEFAULT NULL COMMENT 'ͨ��ʱ��',
  `HOSTNAME` varchar(100) DEFAULT NULL COMMENT 'ͨ��ʱ��',
  `ADMIN` tinyint(4) DEFAULT '0',
  `firsttime` tinyint(4) DEFAULT '0' COMMENT '�Ƿ��״ξ���',
  `firsttimes` int(11) DEFAULT '0' COMMENT '�״ξ���ʱ��',
  `CLIENTID` varchar(100) DEFAULT NULL COMMENT '�ͻ���ID',
  `SESSIONID` varchar(50) DEFAULT NULL COMMENT '�ỰID',
  `WORKTYPE` varchar(32) DEFAULT NULL COMMENT 'ҵ������',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='��ϯ״̬��';
CREATE TABLE `uk_act_formfilter_item` (
  `id` varchar(32) NOT NULL COMMENT '����ID',
  `orgi` varchar(32) DEFAULT NULL COMMENT '�⻧ID',
  `creater` varchar(32) DEFAULT NULL COMMENT '������',
  `createtime` datetime DEFAULT NULL COMMENT '����ʱ��',
  `updatetime` datetime DEFAULT NULL COMMENT '����ʱ��',
  `formfilterid` varchar(32) DEFAULT NULL COMMENT 'ɸѡ��ID',
  `field` varchar(32) DEFAULT NULL COMMENT '�ֶ�',
  `cond` varchar(32) DEFAULT NULL COMMENT '����',
  `value` varchar(32) DEFAULT NULL COMMENT 'ȡֵ',
  `contype` varchar(32) DEFAULT NULL COMMENT '��������',
  `itemtype` varchar(32) DEFAULT NULL COMMENT '����',
  `comp` varchar(50) DEFAULT NULL COMMENT '�߼�����',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='ɸѡ��';
CREATE TABLE `uk_act_formfilter` (
  `ID` varchar(32) NOT NULL COMMENT '����ID',
  `NAME` varchar(50) DEFAULT NULL COMMENT 'ɸѡ������',
  `CODE` varchar(50) DEFAULT NULL COMMENT 'ɸѡ������',
  `CREATETIME` datetime DEFAULT NULL COMMENT '����ʱ��',
  `CREATER` varchar(32) DEFAULT NULL COMMENT '������',
  `UPDATETIME` datetime DEFAULT NULL COMMENT '����ʱ��',
  `ORGI` varchar(32) DEFAULT NULL COMMENT '�⻧ID',
  `USERNAME` varchar(50) DEFAULT NULL COMMENT '����������',
  `STATUS` varchar(50) DEFAULT NULL COMMENT '״̬',
  `PARENTID` varchar(32) DEFAULT NULL COMMENT '�ϼ�ID',
  `FILTERTYPE` varchar(32) DEFAULT NULL COMMENT 'ɸѡ���ͣ�����ɸѡ/Ԫ����ɸѡ��',
  `BATID` varchar(32) DEFAULT NULL COMMENT 'ɸѡ��ʹ�õ�����ID',
  `TABLEID` varchar(32) DEFAULT NULL COMMENT 'ɸѡ��ʹ��Ԫ����ID',
  `DATASTATUS` tinyint(4) DEFAULT '0' COMMENT '����״̬',
  `INX` int(11) DEFAULT '0' COMMENT '�����������',
  `ORGAN` varchar(32) DEFAULT NULL COMMENT '����',
  `DESCRIPTION` text COMMENT '��ע��Ϣ',
  `execnum` int(11) DEFAULT '0' COMMENT '�������',
  `filternum` int(11) DEFAULT '0' COMMENT 'ɸѡ����',
  `conditional` int(11) DEFAULT '0' COMMENT '��������',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='ɸѡ��';

CREATE TABLE `uk_act_task` (
  `ID` varchar(32) NOT NULL COMMENT '����ID',
  `NAME` varchar(50) DEFAULT NULL COMMENT '��������',
  `CODE` varchar(50) DEFAULT NULL COMMENT '�������',
  `CREATETIME` datetime DEFAULT NULL COMMENT '����ʱ��',
  `CREATER` varchar(32) DEFAULT NULL COMMENT '������',
  `UPDATETIME` datetime DEFAULT NULL COMMENT '����ʱ��',
  `ORGI` varchar(32) DEFAULT NULL COMMENT '�⻧ID',
  `USERNAME` varchar(50) DEFAULT NULL COMMENT '����������',
  `STATUS` varchar(50) DEFAULT NULL COMMENT '״̬',
  `PARENTID` varchar(32) DEFAULT NULL COMMENT '�ϼ�ID',
  `ACTID` varchar(32) DEFAULT NULL COMMENT '�ID',
  `INX` int(11) DEFAULT '0' COMMENT '�����������',
  `NAMENUM` int(11) DEFAULT '0' COMMENT '���ΰ�������������',
  `VALIDNUM` int(11) DEFAULT '0' COMMENT '���ΰ�������Ч��������',
  `INVALIDNUM` int(11) DEFAULT '0' COMMENT '���ΰ�������Ч��������',
  `ASSIGNED` int(11) DEFAULT '0' COMMENT '�ѷ�����������',
  `NOTASSIGNED` int(11) DEFAULT '0' COMMENT 'δ������������',
  `ENABLE` tinyint(4) DEFAULT '0' COMMENT '����״̬',
  `DATASTATUS` tinyint(4) DEFAULT '0' COMMENT '����״̬',
  `ORGAN` varchar(32) DEFAULT NULL COMMENT '����',
  `DESCRIPTION` text COMMENT '��ע��Ϣ',
  `execnum` int(11) DEFAULT '0' COMMENT '�������',
  `SOURCE` varchar(255) DEFAULT NULL COMMENT '��Դ��Ϣ',
  `BATID` varchar(32) DEFAULT NULL COMMENT '����ID',
  `FILTERID` varchar(32) DEFAULT NULL COMMENT 'ɸѡID',
  `ASSIGNEDORGAN` int(11) DEFAULT '0' COMMENT '���������',
  `exectype` varchar(32) DEFAULT NULL COMMENT 'ִ������',
  `renum` int(11) DEFAULT '0' COMMENT '��������',
  `reorgannum` int(11) DEFAULT '0' COMMENT '���䵽��������',
  `assignedai` int(11) DEFAULT '0' COMMENT '���䵽AI����������',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='���������';
CREATE TABLE `uk_sales_status` (
  `id` varchar(32) NOT NULL COMMENT '����ID',
  `name` varchar(255) DEFAULT NULL COMMENT '״̬��',
  `code` varchar(255) DEFAULT NULL COMMENT '״̬����',
  `cate` varchar(32) DEFAULT NULL COMMENT '״̬����ID',
  `orgi` varchar(32) DEFAULT NULL COMMENT '�⻧ID',
  `creater` varchar(32) DEFAULT NULL COMMENT '������',
  `createtime` datetime DEFAULT NULL COMMENT '����ʱ��',
  `updatetime` datetime DEFAULT NULL COMMENT '����ʱ��',
  `memo` varchar(32) DEFAULT NULL COMMENT '��ע',
  `activityid` varchar(32) DEFAULT NULL COMMENT '�ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='����״̬';



CREATE TABLE `uk_act_filter_his` (
  `ID` varchar(32) NOT NULL COMMENT '����ID',
  `NAME` varchar(50) DEFAULT NULL COMMENT 'ɸѡ����',
  `CODE` varchar(50) DEFAULT NULL COMMENT 'ɸѡ����',
  `CREATETIME` datetime DEFAULT NULL COMMENT '����ʱ��',
  `CREATER` varchar(32) DEFAULT NULL COMMENT '������',
  `UPDATETIME` datetime DEFAULT NULL COMMENT '����ʱ��',
  `ORGI` varchar(32) DEFAULT NULL COMMENT '�⻧ID',
  `USERNAME` varchar(50) DEFAULT NULL COMMENT '�û���',
  `STATUS` varchar(50) DEFAULT NULL COMMENT '״̬',
  `PARENTID` varchar(32) DEFAULT NULL COMMENT '�ϼ�ID',
  `ACTID` varchar(32) DEFAULT NULL COMMENT '�ID',
  `INX` int(11) DEFAULT '0' COMMENT '�����������',
  `NAMENUM` int(11) DEFAULT '0' COMMENT '���ΰ�������������',
  `VALIDNUM` int(11) DEFAULT '0' COMMENT '���ΰ�������Ч��������',
  `INVALIDNUM` int(11) DEFAULT '0' COMMENT '���ΰ�������Ч��������',
  `ASSIGNED` int(11) DEFAULT '0' COMMENT '�ѷ�����������',
  `NOTASSIGNED` int(11) DEFAULT '0' COMMENT 'δ������������',
  `ENABLE` tinyint(4) DEFAULT '0' COMMENT '����״̬',
  `DATASTATUS` tinyint(4) DEFAULT '0' COMMENT '����״̬',
  `ORGAN` varchar(32) DEFAULT NULL COMMENT '����',
  `DESCRIPTION` text COMMENT '��ע',
  `execnum` int(11) DEFAULT '0' COMMENT '�������',
  `SOURCE` varchar(255) DEFAULT NULL COMMENT '��Դ',
  `BATID` varchar(32) DEFAULT NULL COMMENT '����ID',
  `FILTERID` varchar(32) DEFAULT NULL COMMENT 'ɸѡ��ID',
  `ASSIGNEDORGAN` int(11) DEFAULT '0' COMMENT '���䲿��',
  `exectype` varchar(32) DEFAULT NULL COMMENT 'ִ������',
  `renum` int(11) DEFAULT '0' COMMENT '��������',
  `reorgannum` int(11) DEFAULT '0' COMMENT '���ŷ�������',
  `assignedai` int(11) DEFAULT '0' COMMENT '���䵽AI����������',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='ɸѡ��¼��';
INSERT INTO `uk_sysdic` (`ID`, `NAME`, `TITLE`, `CODE`, `ORGI`, `CTYPE`, `PARENTID`, `DESCRIPTION`, `MEMO`, `ICONSTR`, `ICONSKIN`, `CATETYPE`, `CREATER`, `CREATETIME`, `UPDATETIME`, `HASCHILD`, `SORTINDEX`, `DICID`, `DEFAULTVALUE`, `DISCODE`, `URL`, `MODULE`, `MLEVEL`, `RULES`, `MENUTYPE`) VALUES ('297e74066464004b01646402379d068f', '�״̬����', 'pub', 'com.dic.callout.activity', NULL, 'data', '0', '', NULL, NULL, NULL, NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-07-04 14:37:04', NULL, '1', '0', NULL, '0', '0', NULL, NULL, NULL, NULL, NULL);
ALTER TABLE uk_jobdetail ADD `city` varchar(32) DEFAULT NULL COMMENT '��·���ڳ���';
ALTER TABLE uk_jobdetail ADD `prefix` tinyint(4) DEFAULT '0' COMMENT '��·��Դ����ǰ׺';
ALTER TABLE uk_jobdetail ADD  `reportid` varchar(32) DEFAULT NULL COMMENT '���ݱ�ID';
ALTER TABLE uk_jobdetail ADD `siptrunk` varchar(32) DEFAULT NULL COMMENT '��·��Ϣ';
ALTER TABLE uk_jobdetail ADD `province` varchar(32) DEFAULT NULL COMMENT '��·����ʡ��';
ALTER TABLE `uk_sales_product_type` ADD `parentid` varchar(32) DEFAULT NULL COMMENT '�ϼ���Ʒ����';
ALTER TABLE `uk_act_config` ADD `dataid` varchar(32) DEFAULT NULL COMMENT '����ID';
ALTER TABLE `uk_act_config` ADD `previewautocallout` tinyint(4) DEFAULT '0' COMMENT '����Ԥ������ʱ';
ALTER TABLE `uk_act_config` ADD `defaultvalue` varchar(100) DEFAULT NULL COMMENT 'Ĭ��ֵ';
ALTER TABLE `uk_act_config` ADD `strategy` varchar(100) DEFAULT NULL COMMENT '����';
ALTER TABLE `uk_act_config` ADD `type` varchar(100) DEFAULT NULL COMMENT '����';
ALTER TABLE `uk_act_config` ADD `updatetime` datetime DEFAULT NULL COMMENT '����ʱ��';


ALTER TABLE `uk_sales_product` ADD `begintime` datetime DEFAULT NULL COMMENT '��Ч�ڿ�ʼʱ��';
ALTER TABLE `uk_sales_product` ADD  `endtime` datetime DEFAULT NULL COMMENT '��Ч�ڽ���ʱ��';
ALTER TABLE `uk_sales_product` ADD `parentid` varchar(32) DEFAULT NULL COMMENT '�ϼ�ID';
ALTER TABLE `uk_sales_product` ADD `quota` int(11) DEFAULT '0' COMMENT '���';
ALTER TABLE `uk_sales_product` ADD `termtype` varchar(32) DEFAULT '0' COMMENT '��Ч�����ͣ�1������Ч��0��Ч�ڣ�';
INSERT INTO `uk_sysdic` (`ID`, `NAME`, `TITLE`, `CODE`, `ORGI`, `CTYPE`, `PARENTID`, `DESCRIPTION`, `MEMO`, `ICONSTR`, `ICONSKIN`, `CATETYPE`, `CREATER`, `CREATETIME`, `UPDATETIME`, `HASCHILD`, `SORTINDEX`, `DICID`, `DEFAULTVALUE`, `DISCODE`, `URL`, `MODULE`, `MLEVEL`, `RULES`, `MENUTYPE`) VALUES ('297e74066464004b01646402379d068f', '�״̬����', 'pub', 'com.dic.callout.activity', NULL, 'data', '0', '', NULL, NULL, NULL, NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-7-4 14:37:04', NULL, 1, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uk_sysdic` (`ID`, `NAME`, `TITLE`, `CODE`, `ORGI`, `CTYPE`, `PARENTID`, `DESCRIPTION`, `MEMO`, `ICONSTR`, `ICONSKIN`, `CATETYPE`, `CREATER`, `CREATETIME`, `UPDATETIME`, `HASCHILD`, `SORTINDEX`, `DICID`, `DEFAULTVALUE`, `DISCODE`, `URL`, `MODULE`, `MLEVEL`, `RULES`, `MENUTYPE`) VALUES ('4028811b639010de0163904e80d30539', '�绰��������', 'pub', 'com.dic.phone.type', NULL, 'data', '0', '', NULL, NULL, NULL, NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-5-24 12:00:53', NULL, 1, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uk_sysdic` (`ID`, `NAME`, `TITLE`, `CODE`, `ORGI`, `CTYPE`, `PARENTID`, `DESCRIPTION`, `MEMO`, `ICONSTR`, `ICONSKIN`, `CATETYPE`, `CREATER`, `CREATETIME`, `UPDATETIME`, `HASCHILD`, `SORTINDEX`, `DICID`, `DEFAULTVALUE`, `DISCODE`, `URL`, `MODULE`, `MLEVEL`, `RULES`, `MENUTYPE`) VALUES ('4028811b63905368016390662e700570', '�ֶ�������ʾ', 'pub', 'com.dic.phone.secdis', NULL, 'data', '0', '', NULL, NULL, NULL, NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-5-24 12:26:45', NULL, 1, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uk_sysdic` (`ID`, `NAME`, `TITLE`, `CODE`, `ORGI`, `CTYPE`, `PARENTID`, `DESCRIPTION`, `MEMO`, `ICONSTR`, `ICONSKIN`, `CATETYPE`, `CREATER`, `CREATETIME`, `UPDATETIME`, `HASCHILD`, `SORTINDEX`, `DICID`, `DEFAULTVALUE`, `DISCODE`, `URL`, `MODULE`, `MLEVEL`, `RULES`, `MENUTYPE`) VALUES ('4028811b63906a0c01639139c1520562', '���ҵ������', 'pub', 'com.dic.callout.type', NULL, 'data', '0', '', NULL, NULL, NULL, NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-5-24 16:17:51', NULL, 1, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uk_sysdic` (`ID`, `NAME`, `TITLE`, `CODE`, `ORGI`, `CTYPE`, `PARENTID`, `DESCRIPTION`, `MEMO`, `ICONSTR`, `ICONSKIN`, `CATETYPE`, `CREATER`, `CREATETIME`, `UPDATETIME`, `HASCHILD`, `SORTINDEX`, `DICID`, `DEFAULTVALUE`, `DISCODE`, `URL`, `MODULE`, `MLEVEL`, `RULES`, `MENUTYPE`) VALUES ('4028811b639010de016390502552053e', '��ͥ�绰', 'pub', '01', 'ukewo', 'layui-icon', '4028811b639010de0163904e80d30539', '', NULL, '', '', NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-5-24 12:02:41', '2018-5-24 12:02:41', 0, 1, '4028811b639010de0163904e80d30539', 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uk_sysdic` (`ID`, `NAME`, `TITLE`, `CODE`, `ORGI`, `CTYPE`, `PARENTID`, `DESCRIPTION`, `MEMO`, `ICONSTR`, `ICONSKIN`, `CATETYPE`, `CREATER`, `CREATETIME`, `UPDATETIME`, `HASCHILD`, `SORTINDEX`, `DICID`, `DEFAULTVALUE`, `DISCODE`, `URL`, `MODULE`, `MLEVEL`, `RULES`, `MENUTYPE`) VALUES ('4028811b639010de016390502562053f', '�����绰', 'pub', '02', 'ukewo', 'layui-icon', '4028811b639010de0163904e80d30539', '', NULL, '', '', NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-5-24 12:02:41', '2018-5-24 12:02:41', 0, 2, '4028811b639010de0163904e80d30539', 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uk_sysdic` (`ID`, `NAME`, `TITLE`, `CODE`, `ORGI`, `CTYPE`, `PARENTID`, `DESCRIPTION`, `MEMO`, `ICONSTR`, `ICONSKIN`, `CATETYPE`, `CREATER`, `CREATETIME`, `UPDATETIME`, `HASCHILD`, `SORTINDEX`, `DICID`, `DEFAULTVALUE`, `DISCODE`, `URL`, `MODULE`, `MLEVEL`, `RULES`, `MENUTYPE`) VALUES ('4028811b639010de0163905025700540', 'סլ�绰', 'pub', '03', 'ukewo', 'layui-icon', '4028811b639010de0163904e80d30539', '', NULL, '', '', NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-5-24 12:02:41', '2018-5-24 12:02:41', 0, 3, '4028811b639010de0163904e80d30539', 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uk_sysdic` (`ID`, `NAME`, `TITLE`, `CODE`, `ORGI`, `CTYPE`, `PARENTID`, `DESCRIPTION`, `MEMO`, `ICONSTR`, `ICONSKIN`, `CATETYPE`, `CREATER`, `CREATETIME`, `UPDATETIME`, `HASCHILD`, `SORTINDEX`, `DICID`, `DEFAULTVALUE`, `DISCODE`, `URL`, `MODULE`, `MLEVEL`, `RULES`, `MENUTYPE`) VALUES ('4028811b639010de01639050257e0541', '��Ҫ�绰', 'pub', '04', 'ukewo', 'layui-icon', '4028811b639010de0163904e80d30539', '', NULL, '', '', NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-5-24 12:02:41', '2018-5-24 12:02:41', 0, 4, '4028811b639010de0163904e80d30539', 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uk_sysdic` (`ID`, `NAME`, `TITLE`, `CODE`, `ORGI`, `CTYPE`, `PARENTID`, `DESCRIPTION`, `MEMO`, `ICONSTR`, `ICONSKIN`, `CATETYPE`, `CREATER`, `CREATETIME`, `UPDATETIME`, `HASCHILD`, `SORTINDEX`, `DICID`, `DEFAULTVALUE`, `DISCODE`, `URL`, `MODULE`, `MLEVEL`, `RULES`, `MENUTYPE`) VALUES ('4028811b639010de01639050258f0542', '���ߵ绰', 'pub', '05', 'ukewo', 'layui-icon', '4028811b639010de0163904e80d30539', '', NULL, '', '', NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-5-24 12:02:41', '2018-5-24 12:02:41', 0, 5, '4028811b639010de0163904e80d30539', 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uk_sysdic` (`ID`, `NAME`, `TITLE`, `CODE`, `ORGI`, `CTYPE`, `PARENTID`, `DESCRIPTION`, `MEMO`, `ICONSTR`, `ICONSKIN`, `CATETYPE`, `CREATER`, `CREATETIME`, `UPDATETIME`, `HASCHILD`, `SORTINDEX`, `DICID`, `DEFAULTVALUE`, `DISCODE`, `URL`, `MODULE`, `MLEVEL`, `RULES`, `MENUTYPE`) VALUES ('4028811b639010de01639050259b0543', '�ƶ��绰', 'pub', '06', 'ukewo', 'layui-icon', '4028811b639010de0163904e80d30539', '', NULL, '', '', NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-5-24 12:02:41', '2018-5-24 12:02:41', 0, 6, '4028811b639010de0163904e80d30539', 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uk_sysdic` (`ID`, `NAME`, `TITLE`, `CODE`, `ORGI`, `CTYPE`, `PARENTID`, `DESCRIPTION`, `MEMO`, `ICONSTR`, `ICONSKIN`, `CATETYPE`, `CREATER`, `CREATETIME`, `UPDATETIME`, `HASCHILD`, `SORTINDEX`, `DICID`, `DEFAULTVALUE`, `DISCODE`, `URL`, `MODULE`, `MLEVEL`, `RULES`, `MENUTYPE`) VALUES ('4028811b639010de0163905025a50544', '���ص绰', 'pub', '07', 'ukewo', 'layui-icon', '4028811b639010de0163904e80d30539', '', NULL, '', '', NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-5-24 12:02:41', '2018-5-24 12:02:41', 0, 7, '4028811b639010de0163904e80d30539', 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uk_sysdic` (`ID`, `NAME`, `TITLE`, `CODE`, `ORGI`, `CTYPE`, `PARENTID`, `DESCRIPTION`, `MEMO`, `ICONSTR`, `ICONSKIN`, `CATETYPE`, `CREATER`, `CREATETIME`, `UPDATETIME`, `HASCHILD`, `SORTINDEX`, `DICID`, `DEFAULTVALUE`, `DISCODE`, `URL`, `MODULE`, `MLEVEL`, `RULES`, `MENUTYPE`) VALUES ('4028811b639010de0163905025b00545', '����绰', 'pub', '08', 'ukewo', 'layui-icon', '4028811b639010de0163904e80d30539', '', NULL, '', '', NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-5-24 12:02:41', '2018-5-24 12:02:41', 0, 8, '4028811b639010de0163904e80d30539', 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uk_sysdic` (`ID`, `NAME`, `TITLE`, `CODE`, `ORGI`, `CTYPE`, `PARENTID`, `DESCRIPTION`, `MEMO`, `ICONSTR`, `ICONSKIN`, `CATETYPE`, `CREATER`, `CREATETIME`, `UPDATETIME`, `HASCHILD`, `SORTINDEX`, `DICID`, `DEFAULTVALUE`, `DISCODE`, `URL`, `MODULE`, `MLEVEL`, `RULES`, `MENUTYPE`) VALUES ('4028811b639010de0163905025bb0546', '�ز��绰', 'pub', '09', 'ukewo', 'layui-icon', '4028811b639010de0163904e80d30539', '', NULL, '', '', NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-5-24 12:02:41', '2018-5-24 12:02:41', 0, 9, '4028811b639010de0163904e80d30539', 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uk_sysdic` (`ID`, `NAME`, `TITLE`, `CODE`, `ORGI`, `CTYPE`, `PARENTID`, `DESCRIPTION`, `MEMO`, `ICONSTR`, `ICONSKIN`, `CATETYPE`, `CREATER`, `CREATETIME`, `UPDATETIME`, `HASCHILD`, `SORTINDEX`, `DICID`, `DEFAULTVALUE`, `DISCODE`, `URL`, `MODULE`, `MLEVEL`, `RULES`, `MENUTYPE`) VALUES ('4028811b63905368016390666f4d0575', '�����м���λ', 'pub', '01', 'ukewo', 'layui-icon', '4028811b63905368016390662e700570', '', NULL, '', '', NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-5-24 12:27:02', '2018-5-24 12:27:02', 0, 1, '4028811b63905368016390662e700570', 0, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uk_sysdic` (`ID`, `NAME`, `TITLE`, `CODE`, `ORGI`, `CTYPE`, `PARENTID`, `DESCRIPTION`, `MEMO`, `ICONSTR`, `ICONSKIN`, `CATETYPE`, `CREATER`, `CREATETIME`, `UPDATETIME`, `HASCHILD`, `SORTINDEX`, `DICID`, `DEFAULTVALUE`, `DISCODE`, `URL`, `MODULE`, `MLEVEL`, `RULES`, `MENUTYPE`) VALUES ('4028811b6390536801639066bae2057c', '���غ���λ', 'pub', '02', 'ukewo', 'layui-icon', '4028811b63905368016390662e700570', '', NULL, '', '', NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-5-24 12:27:21', '2018-5-24 12:27:21', 0, 1, '4028811b63905368016390662e700570', 0, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uk_sysdic` (`ID`, `NAME`, `TITLE`, `CODE`, `ORGI`, `CTYPE`, `PARENTID`, `DESCRIPTION`, `MEMO`, `ICONSTR`, `ICONSKIN`, `CATETYPE`, `CREATER`, `CREATETIME`, `UPDATETIME`, `HASCHILD`, `SORTINDEX`, `DICID`, `DEFAULTVALUE`, `DISCODE`, `URL`, `MODULE`, `MLEVEL`, `RULES`, `MENUTYPE`) VALUES ('4028811b6390536801639066df8e0580', '����ǰ4λ', 'pub', '03', 'ukewo', 'layui-icon', '4028811b63905368016390662e700570', '', NULL, '', '', NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-5-24 12:27:31', '2018-5-24 12:27:31', 0, 1, '4028811b63905368016390662e700570', 0, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uk_sysdic` (`ID`, `NAME`, `TITLE`, `CODE`, `ORGI`, `CTYPE`, `PARENTID`, `DESCRIPTION`, `MEMO`, `ICONSTR`, `ICONSKIN`, `CATETYPE`, `CREATER`, `CREATETIME`, `UPDATETIME`, `HASCHILD`, `SORTINDEX`, `DICID`, `DEFAULTVALUE`, `DISCODE`, `URL`, `MODULE`, `MLEVEL`, `RULES`, `MENUTYPE`) VALUES ('4028811b63c5281b0163c5c6cbf905d4', 'ȫ������', 'pub', '04', 'ukewo', 'layui-icon', '4028811b63905368016390662e700570', '', NULL, '', '', NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-6-3 21:12:09', NULL, 1, 0, '4028811b63905368016390662e700570', 0, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uk_sysdic` (`ID`, `NAME`, `TITLE`, `CODE`, `ORGI`, `CTYPE`, `PARENTID`, `DESCRIPTION`, `MEMO`, `ICONSTR`, `ICONSKIN`, `CATETYPE`, `CREATER`, `CREATETIME`, `UPDATETIME`, `HASCHILD`, `SORTINDEX`, `DICID`, `DEFAULTVALUE`, `DISCODE`, `URL`, `MODULE`, `MLEVEL`, `RULES`, `MENUTYPE`) VALUES ('4028811b63906a0c0163913a1c790567', '����', 'pub', '01', 'ukewo', NULL, '4028811b63906a0c01639139c1520562', NULL, NULL, NULL, NULL, NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-5-24 16:18:14', '2018-5-24 16:18:14', 0, 1, '4028811b63906a0c01639139c1520562', 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uk_sysdic` (`ID`, `NAME`, `TITLE`, `CODE`, `ORGI`, `CTYPE`, `PARENTID`, `DESCRIPTION`, `MEMO`, `ICONSTR`, `ICONSKIN`, `CATETYPE`, `CREATER`, `CREATETIME`, `UPDATETIME`, `HASCHILD`, `SORTINDEX`, `DICID`, `DEFAULTVALUE`, `DISCODE`, `URL`, `MODULE`, `MLEVEL`, `RULES`, `MENUTYPE`) VALUES ('4028811b63906a0c0163913a1c890568', '�ط�', 'pub', '02', 'ukewo', NULL, '4028811b63906a0c01639139c1520562', NULL, NULL, NULL, NULL, NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-5-24 16:18:14', '2018-5-24 16:18:14', 0, 2, '4028811b63906a0c01639139c1520562', 0, 0, NULL, NULL, NULL, NULL, NULL);




