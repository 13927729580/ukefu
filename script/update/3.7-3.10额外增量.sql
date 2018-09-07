CREATE TABLE `uk_act_formfilter_item` (
  `id` varchar(32) NOT NULL COMMENT '主键ID',
  `orgi` varchar(32) DEFAULT NULL COMMENT '租户ID',
  `creater` varchar(32) DEFAULT NULL COMMENT '创建人',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `updatetime` datetime DEFAULT NULL COMMENT '更新时间',
  `formfilterid` varchar(32) DEFAULT NULL COMMENT '筛选器ID',
  `field` varchar(32) DEFAULT NULL COMMENT '字段',
  `cond` varchar(32) DEFAULT NULL COMMENT '条件',
  `value` varchar(32) DEFAULT NULL COMMENT '取值',
  `contype` varchar(32) DEFAULT NULL COMMENT '条件类型',
  `itemtype` varchar(32) DEFAULT NULL COMMENT '类型',
  `comp` varchar(50) DEFAULT NULL COMMENT '逻辑条件',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='筛选项';
CREATE TABLE `uk_act_formfilter` (
  `ID` varchar(32) NOT NULL COMMENT '主键ID',
  `NAME` varchar(50) DEFAULT NULL COMMENT '筛选表单名称',
  `CODE` varchar(50) DEFAULT NULL COMMENT '筛选表单代码',
  `CREATETIME` datetime DEFAULT NULL COMMENT '创建时间',
  `CREATER` varchar(32) DEFAULT NULL COMMENT '创建人',
  `UPDATETIME` datetime DEFAULT NULL COMMENT '更新时间',
  `ORGI` varchar(32) DEFAULT NULL COMMENT '租户ID',
  `USERNAME` varchar(50) DEFAULT NULL COMMENT '创建人名称',
  `STATUS` varchar(50) DEFAULT NULL COMMENT '状态',
  `PARENTID` varchar(32) DEFAULT NULL COMMENT '上级ID',
  `FILTERTYPE` varchar(32) DEFAULT NULL COMMENT '筛选类型（批次筛选/元数据筛选）',
  `BATID` varchar(32) DEFAULT NULL COMMENT '筛选表单使用的批次ID',
  `TABLEID` varchar(32) DEFAULT NULL COMMENT '筛选表单使用元数据ID',
  `DATASTATUS` tinyint(4) DEFAULT '0' COMMENT '数据状态',
  `INX` int(11) DEFAULT '0' COMMENT '分类排序序号',
  `ORGAN` varchar(32) DEFAULT NULL COMMENT '部门',
  `DESCRIPTION` text COMMENT '备注信息',
  `execnum` int(11) DEFAULT '0' COMMENT '导入次数',
  `filternum` int(11) DEFAULT '0' COMMENT '筛选次数',
  `conditional` int(11) DEFAULT '0' COMMENT '条件个数',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='筛选表单';

CREATE TABLE `uk_act_task` (
  `ID` varchar(32) NOT NULL COMMENT '主键ID',
  `NAME` varchar(50) DEFAULT NULL COMMENT '任务名称',
  `CODE` varchar(50) DEFAULT NULL COMMENT '任务代码',
  `CREATETIME` datetime DEFAULT NULL COMMENT '创建时间',
  `CREATER` varchar(32) DEFAULT NULL COMMENT '创建人',
  `UPDATETIME` datetime DEFAULT NULL COMMENT '更新时间',
  `ORGI` varchar(32) DEFAULT NULL COMMENT '租户ID',
  `USERNAME` varchar(50) DEFAULT NULL COMMENT '创建人名称',
  `STATUS` varchar(50) DEFAULT NULL COMMENT '状态',
  `PARENTID` varchar(32) DEFAULT NULL COMMENT '上级ID',
  `ACTID` varchar(32) DEFAULT NULL COMMENT '活动ID',
  `INX` int(11) DEFAULT '0' COMMENT '分类排序序号',
  `NAMENUM` int(11) DEFAULT '0' COMMENT '批次包含的名单总数',
  `VALIDNUM` int(11) DEFAULT '0' COMMENT '批次包含的有效名单总数',
  `INVALIDNUM` int(11) DEFAULT '0' COMMENT '批次包含的无效名单总数',
  `ASSIGNED` int(11) DEFAULT '0' COMMENT '已分配名单总数',
  `NOTASSIGNED` int(11) DEFAULT '0' COMMENT '未分配名单总数',
  `ENABLE` tinyint(4) DEFAULT '0' COMMENT '分类状态',
  `DATASTATUS` tinyint(4) DEFAULT '0' COMMENT '数据状态',
  `ORGAN` varchar(32) DEFAULT NULL COMMENT '部门',
  `DESCRIPTION` text COMMENT '备注信息',
  `execnum` int(11) DEFAULT '0' COMMENT '导入次数',
  `SOURCE` varchar(255) DEFAULT NULL COMMENT '来源信息',
  `BATID` varchar(32) DEFAULT NULL COMMENT '批次ID',
  `FILTERID` varchar(32) DEFAULT NULL COMMENT '筛选ID',
  `ASSIGNEDORGAN` int(11) DEFAULT '0' COMMENT '分配给部门',
  `exectype` varchar(32) DEFAULT NULL COMMENT '执行类型',
  `renum` int(11) DEFAULT '0' COMMENT '分配数量',
  `reorgannum` int(11) DEFAULT '0' COMMENT '分配到部门数量',
  `assignedai` int(11) DEFAULT '0' COMMENT '分配到AI的名单数量',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='电销任务表';
CREATE TABLE `uk_sales_status` (
  `id` varchar(32) NOT NULL COMMENT '数据ID',
  `name` varchar(255) DEFAULT NULL COMMENT '状态名',
  `code` varchar(255) DEFAULT NULL COMMENT '状态代码',
  `cate` varchar(32) DEFAULT NULL COMMENT '状态分类ID',
  `orgi` varchar(32) DEFAULT NULL COMMENT '租户ID',
  `creater` varchar(32) DEFAULT NULL COMMENT '创建人',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `updatetime` datetime DEFAULT NULL COMMENT '更新时间',
  `memo` varchar(32) DEFAULT NULL COMMENT '备注',
  `activityid` varchar(32) DEFAULT NULL COMMENT '活动ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='电销状态';



CREATE TABLE `uk_act_filter_his` (
  `ID` varchar(32) NOT NULL COMMENT '主键ID',
  `NAME` varchar(50) DEFAULT NULL COMMENT '筛选名称',
  `CODE` varchar(50) DEFAULT NULL COMMENT '筛选代码',
  `CREATETIME` datetime DEFAULT NULL COMMENT '创建时间',
  `CREATER` varchar(32) DEFAULT NULL COMMENT '创建人',
  `UPDATETIME` datetime DEFAULT NULL COMMENT '更新时间',
  `ORGI` varchar(32) DEFAULT NULL COMMENT '租户ID',
  `USERNAME` varchar(50) DEFAULT NULL COMMENT '用户名',
  `STATUS` varchar(50) DEFAULT NULL COMMENT '状态',
  `PARENTID` varchar(32) DEFAULT NULL COMMENT '上级ID',
  `ACTID` varchar(32) DEFAULT NULL COMMENT '活动ID',
  `INX` int(11) DEFAULT '0' COMMENT '分类排序序号',
  `NAMENUM` int(11) DEFAULT '0' COMMENT '批次包含的名单总数',
  `VALIDNUM` int(11) DEFAULT '0' COMMENT '批次包含的有效名单总数',
  `INVALIDNUM` int(11) DEFAULT '0' COMMENT '批次包含的无效名单总数',
  `ASSIGNED` int(11) DEFAULT '0' COMMENT '已分配名单总数',
  `NOTASSIGNED` int(11) DEFAULT '0' COMMENT '未分配名单总数',
  `ENABLE` tinyint(4) DEFAULT '0' COMMENT '分类状态',
  `DATASTATUS` tinyint(4) DEFAULT '0' COMMENT '数据状态',
  `ORGAN` varchar(32) DEFAULT NULL COMMENT '部门',
  `DESCRIPTION` text COMMENT '备注',
  `execnum` int(11) DEFAULT '0' COMMENT '导入次数',
  `SOURCE` varchar(255) DEFAULT NULL COMMENT '来源',
  `BATID` varchar(32) DEFAULT NULL COMMENT '批次ID',
  `FILTERID` varchar(32) DEFAULT NULL COMMENT '筛选表单ID',
  `ASSIGNEDORGAN` int(11) DEFAULT '0' COMMENT '分配部门',
  `exectype` varchar(32) DEFAULT NULL COMMENT '执行类型',
  `renum` int(11) DEFAULT '0' COMMENT '分配数量',
  `reorgannum` int(11) DEFAULT '0' COMMENT '部门分配数量',
  `assignedai` int(11) DEFAULT '0' COMMENT '分配到AI的名单数量',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='筛选记录表';
INSERT INTO `uk_sysdic` (`ID`, `NAME`, `TITLE`, `CODE`, `ORGI`, `CTYPE`, `PARENTID`, `DESCRIPTION`, `MEMO`, `ICONSTR`, `ICONSKIN`, `CATETYPE`, `CREATER`, `CREATETIME`, `UPDATETIME`, `HASCHILD`, `SORTINDEX`, `DICID`, `DEFAULTVALUE`, `DISCODE`, `URL`, `MODULE`, `MLEVEL`, `RULES`, `MENUTYPE`) VALUES ('297e74066464004b01646402379d068f', '活动状态分类', 'pub', 'com.dic.callout.activity', NULL, 'data', '0', '', NULL, NULL, NULL, NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-07-04 14:37:04', NULL, '1', '0', NULL, '0', '0', NULL, NULL, NULL, NULL, NULL);
ALTER TABLE uk_jobdetail ADD `city` varchar(32) DEFAULT NULL COMMENT '线路所在城市';
ALTER TABLE uk_jobdetail ADD `prefix` tinyint(4) DEFAULT '0' COMMENT '线路资源拨号前缀';
ALTER TABLE uk_jobdetail ADD  `reportid` varchar(32) DEFAULT NULL COMMENT '数据表ID';
ALTER TABLE uk_jobdetail ADD `siptrunk` varchar(32) DEFAULT NULL COMMENT '线路信息';
ALTER TABLE uk_jobdetail ADD `province` varchar(32) DEFAULT NULL COMMENT '线路所在省份';
ALTER TABLE `uk_sales_product_type` ADD `parentid` varchar(32) DEFAULT NULL COMMENT '上级产品分类';
ALTER TABLE `uk_act_config` ADD `dataid` varchar(32) DEFAULT NULL COMMENT '数据ID';
ALTER TABLE `uk_act_config` ADD `previewautocallout` tinyint(4) DEFAULT '0' COMMENT '启用预览倒计时';
ALTER TABLE `uk_act_config` ADD `defaultvalue` varchar(100) DEFAULT NULL COMMENT '默认值';
ALTER TABLE `uk_act_config` ADD `strategy` varchar(100) DEFAULT NULL COMMENT '策略';
ALTER TABLE `uk_act_config` ADD `type` varchar(100) DEFAULT NULL COMMENT '类型';
ALTER TABLE `uk_act_config` ADD `updatetime` datetime DEFAULT NULL COMMENT '更新时间';
CREATE TABLE `uk_jobdetailproduct` (
  `id` varchar(32) NOT NULL COMMENT '主键ID',
  `actid` varchar(32) DEFAULT NULL COMMENT '活动ID',
  `product_id` varchar(32) DEFAULT NULL COMMENT '产品ID',
  `creater` varchar(32) DEFAULT NULL COMMENT '创建人',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `orgi` varchar(32) DEFAULT NULL COMMENT '租户ID',
  `quota` int(11) DEFAULT '0' COMMENT '配额',
  `price` int(11) DEFAULT '0' COMMENT '价格',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='活动产品表';
CREATE TABLE `uk_act_schedule` (
  `ID` varchar(32) NOT NULL COMMENT '主键ID',
  `NAME` varchar(50) DEFAULT NULL COMMENT '名称',
  `CODE` varchar(50) DEFAULT NULL COMMENT '代码',
  `CREATETIME` datetime DEFAULT NULL COMMENT '创建时间',
  `CREATER` varchar(32) DEFAULT NULL COMMENT '创建人',
  `UPDATETIME` datetime DEFAULT NULL COMMENT '更新时间',
  `ORGI` varchar(32) DEFAULT NULL COMMENT '租户ID',
  `USERNAME` varchar(50) DEFAULT NULL COMMENT '创建人名称',
  `STATUS` varchar(50) DEFAULT NULL COMMENT '状态',
  `PARENTID` varchar(32) DEFAULT NULL COMMENT '上级ID',
  `FILTERTYPE` varchar(32) DEFAULT NULL COMMENT '筛选类型（批次筛选/元数据筛选）',
  `ACTID` varchar(32) DEFAULT NULL COMMENT '筛选表单使用的批次ID',
  `TABLEID` varchar(32) DEFAULT NULL COMMENT '筛选表单使用元数据ID',
  `DATASTATUS` tinyint(4) DEFAULT '0' COMMENT '数据状态',
  `INX` int(11) DEFAULT '0' COMMENT '分类排序序号',
  `ORGAN` varchar(32) DEFAULT NULL COMMENT '部门',
  `DESCRIPTION` text COMMENT '描述信息',
  `daytype` varchar(32) DEFAULT NULL COMMENT '日期类型',
  `begintime` varchar(32) DEFAULT NULL COMMENT '开始时间',
  `endtime` varchar(32) DEFAULT NULL COMMENT '结束时间',
  `policy` varchar(32) DEFAULT NULL COMMENT '策略',
  `callvalues` text COMMENT '备注内容信息',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='电销日程表';
CREATE TABLE `uk_sales_status_type` (
  `id` varchar(32) NOT NULL COMMENT '数据ID',
  `name` varchar(255) DEFAULT NULL COMMENT '状态分类名',
  `parentid` varchar(32) DEFAULT NULL COMMENT '父级ID',
  `orgi` varchar(32) DEFAULT NULL COMMENT '租户ID',
  `creater` varchar(32) DEFAULT NULL COMMENT '创建人',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `updatetime` datetime DEFAULT NULL COMMENT '更新时间',
  `activityid` varchar(32) DEFAULT NULL COMMENT '活动ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='电销状态类型';
CREATE TABLE `uk_act_callagent` (
  `ID` varchar(32) NOT NULL COMMENT '主键ID',
  `NAME` varchar(50) DEFAULT NULL COMMENT '坐席名称',
  `CODE` varchar(50) DEFAULT NULL COMMENT '坐席代码',
  `CREATETIME` datetime DEFAULT NULL COMMENT '创建时间',
  `CREATER` varchar(32) DEFAULT NULL COMMENT '创建人',
  `UPDATETIME` datetime DEFAULT NULL COMMENT '更新时间',
  `ORGI` varchar(32) DEFAULT NULL COMMENT '租户ID',
  `USERNAME` varchar(50) DEFAULT NULL COMMENT '用户名',
  `STATUS` varchar(50) DEFAULT NULL COMMENT '坐席状态',
  `PARENTID` varchar(32) DEFAULT NULL COMMENT '上级ID',
  `FILTERTYPE` varchar(32) DEFAULT NULL COMMENT '筛选类型（批次筛选/元数据筛选）',
  `BATID` varchar(32) DEFAULT NULL COMMENT '筛选表单使用的批次ID',
  `TABLEID` varchar(32) DEFAULT NULL COMMENT '筛选表单使用元数据ID',
  `DATASTATUS` tinyint(4) DEFAULT '0' COMMENT '数据状态',
  `INX` int(11) DEFAULT '0' COMMENT '分类排序序号',
  `ORGAN` varchar(32) DEFAULT NULL COMMENT '部门',
  `DESCRIPTION` text COMMENT '描述信息',
  `distype` varchar(32) DEFAULT NULL COMMENT '分配类型',
  `distarget` varchar(32) DEFAULT NULL COMMENT '分配对象',
  `disnum` varchar(32) DEFAULT NULL COMMENT '分配数据',
  `ACTID` varchar(32) DEFAULT NULL COMMENT '活动ID',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='电销活动名单分配表';


  ALTER TABLE uk_sessionconfig ADD `quenetimeout` int(11) DEFAULT '600' COMMENT '允许访客排队的最大时长';
  ALTER TABLE uk_sessionconfig ADD `quenetimeoutmsg` varchar(255) DEFAULT NULL COMMENT '访客排队超市提示消息';
  ALTER TABLE `uk_callcenter_event` ADD  `dataid` varchar(32) DEFAULT NULL COMMENT '数据ID';
  ALTER TABLE `uk_callcenter_event` ADD  `nameid` varchar(32) DEFAULT NULL COMMENT '数据ID';
    ALTER TABLE `uk_xiaoe_config` ADD  `aiid` varchar(32) DEFAULT NULL COMMENT '机器人ID';

	       
  CREATE TABLE `uk_work_session` (
  `ID` varchar(50) NOT NULL COMMENT 'ID',
  `USERID` varchar(50) DEFAULT NULL COMMENT '登录人ID',
  `AGENT` varchar(50) DEFAULT NULL COMMENT '坐席工号',
  `USERNAME` varchar(50) DEFAULT NULL COMMENT '坐席用户名（登录名）',
  `AGENTNO` varchar(50) DEFAULT NULL COMMENT '分机号（坐席登录的分机号码）',
  `NAME` varchar(50) DEFAULT NULL COMMENT '坐席姓名',
  `CODE` varchar(50) DEFAULT NULL COMMENT '坐席状态code（对应字典表里的CODE）',
  `STATUS` varchar(50) DEFAULT NULL COMMENT '坐席当前状',
  `BUSY` tinyint(4) DEFAULT '0' COMMENT '坐席是否忙',
  `WORKSTATUS` varchar(50) DEFAULT NULL COMMENT '坐席工作状态',
  `ORGI` varchar(50) DEFAULT NULL COMMENT '租户ID',
  `AGENTSERVICEID` varchar(50) DEFAULT NULL COMMENT '会话ID',
  `SKILL` varchar(50) DEFAULT NULL COMMENT '接入的技能组ID',
  `SKILLNAME` varchar(50) DEFAULT NULL COMMENT '接入的技能组名称',
  `CREATETIME` datetime DEFAULT NULL COMMENT '记录创建时间',
  `ANI` varchar(50) DEFAULT NULL COMMENT '主叫号码',
  `CALLED` varchar(50) DEFAULT NULL COMMENT '被叫号码',
  `SOURCE` varchar(50) DEFAULT NULL COMMENT '来源',
  `SERVICEID` varchar(32) DEFAULT NULL COMMENT '服务记录ID',
  `SERVICESTATUS` varchar(50) DEFAULT NULL COMMENT '当前呼叫状态',
  `DISCALLER` varchar(50) DEFAULT NULL COMMENT '主叫分机号',
  `DISCALLED` varchar(50) DEFAULT NULL COMMENT '被叫分机号',
  `ORGAN` varchar(50) DEFAULT NULL COMMENT '所属组织机构ID',
  `BEGINTIME` datetime DEFAULT NULL COMMENT '状态开始时间',
  `ENDTIME` datetime DEFAULT NULL COMMENT '状态结束时间',
  `FIRSTSTATUS` tinyint(4) DEFAULT '0' COMMENT '当天首次时间',
  `DATESTR` varchar(20) DEFAULT NULL COMMENT '日期字符串',
  `DURATION` int(11) DEFAULT NULL COMMENT '通话时长',
  `IPADDR` varchar(100) DEFAULT NULL COMMENT '通话时长',
  `HOSTNAME` varchar(100) DEFAULT NULL COMMENT '通话时长',
  `ADMIN` tinyint(4) DEFAULT '0',
  `firsttime` tinyint(4) DEFAULT '0' COMMENT '是否首次就绪',
  `firsttimes` int(11) DEFAULT '0' COMMENT '首次就绪时长',
  `CLIENTID` varchar(100) DEFAULT NULL COMMENT '客户端ID',
  `SESSIONID` varchar(50) DEFAULT NULL COMMENT '会话ID',
  `WORKTYPE` varchar(32) DEFAULT NULL COMMENT '业务类型',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='坐席状态表';
CREATE TABLE `uk_act_formfilter_item` (
  `id` varchar(32) NOT NULL COMMENT '主键ID',
  `orgi` varchar(32) DEFAULT NULL COMMENT '租户ID',
  `creater` varchar(32) DEFAULT NULL COMMENT '创建人',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `updatetime` datetime DEFAULT NULL COMMENT '更新时间',
  `formfilterid` varchar(32) DEFAULT NULL COMMENT '筛选器ID',
  `field` varchar(32) DEFAULT NULL COMMENT '字段',
  `cond` varchar(32) DEFAULT NULL COMMENT '条件',
  `value` varchar(32) DEFAULT NULL COMMENT '取值',
  `contype` varchar(32) DEFAULT NULL COMMENT '条件类型',
  `itemtype` varchar(32) DEFAULT NULL COMMENT '类型',
  `comp` varchar(50) DEFAULT NULL COMMENT '逻辑条件',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='筛选项';
CREATE TABLE `uk_act_formfilter` (
  `ID` varchar(32) NOT NULL COMMENT '主键ID',
  `NAME` varchar(50) DEFAULT NULL COMMENT '筛选表单名称',
  `CODE` varchar(50) DEFAULT NULL COMMENT '筛选表单代码',
  `CREATETIME` datetime DEFAULT NULL COMMENT '创建时间',
  `CREATER` varchar(32) DEFAULT NULL COMMENT '创建人',
  `UPDATETIME` datetime DEFAULT NULL COMMENT '更新时间',
  `ORGI` varchar(32) DEFAULT NULL COMMENT '租户ID',
  `USERNAME` varchar(50) DEFAULT NULL COMMENT '创建人名称',
  `STATUS` varchar(50) DEFAULT NULL COMMENT '状态',
  `PARENTID` varchar(32) DEFAULT NULL COMMENT '上级ID',
  `FILTERTYPE` varchar(32) DEFAULT NULL COMMENT '筛选类型（批次筛选/元数据筛选）',
  `BATID` varchar(32) DEFAULT NULL COMMENT '筛选表单使用的批次ID',
  `TABLEID` varchar(32) DEFAULT NULL COMMENT '筛选表单使用元数据ID',
  `DATASTATUS` tinyint(4) DEFAULT '0' COMMENT '数据状态',
  `INX` int(11) DEFAULT '0' COMMENT '分类排序序号',
  `ORGAN` varchar(32) DEFAULT NULL COMMENT '部门',
  `DESCRIPTION` text COMMENT '备注信息',
  `execnum` int(11) DEFAULT '0' COMMENT '导入次数',
  `filternum` int(11) DEFAULT '0' COMMENT '筛选次数',
  `conditional` int(11) DEFAULT '0' COMMENT '条件个数',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='筛选表单';

CREATE TABLE `uk_act_task` (
  `ID` varchar(32) NOT NULL COMMENT '主键ID',
  `NAME` varchar(50) DEFAULT NULL COMMENT '任务名称',
  `CODE` varchar(50) DEFAULT NULL COMMENT '任务代码',
  `CREATETIME` datetime DEFAULT NULL COMMENT '创建时间',
  `CREATER` varchar(32) DEFAULT NULL COMMENT '创建人',
  `UPDATETIME` datetime DEFAULT NULL COMMENT '更新时间',
  `ORGI` varchar(32) DEFAULT NULL COMMENT '租户ID',
  `USERNAME` varchar(50) DEFAULT NULL COMMENT '创建人名称',
  `STATUS` varchar(50) DEFAULT NULL COMMENT '状态',
  `PARENTID` varchar(32) DEFAULT NULL COMMENT '上级ID',
  `ACTID` varchar(32) DEFAULT NULL COMMENT '活动ID',
  `INX` int(11) DEFAULT '0' COMMENT '分类排序序号',
  `NAMENUM` int(11) DEFAULT '0' COMMENT '批次包含的名单总数',
  `VALIDNUM` int(11) DEFAULT '0' COMMENT '批次包含的有效名单总数',
  `INVALIDNUM` int(11) DEFAULT '0' COMMENT '批次包含的无效名单总数',
  `ASSIGNED` int(11) DEFAULT '0' COMMENT '已分配名单总数',
  `NOTASSIGNED` int(11) DEFAULT '0' COMMENT '未分配名单总数',
  `ENABLE` tinyint(4) DEFAULT '0' COMMENT '分类状态',
  `DATASTATUS` tinyint(4) DEFAULT '0' COMMENT '数据状态',
  `ORGAN` varchar(32) DEFAULT NULL COMMENT '部门',
  `DESCRIPTION` text COMMENT '备注信息',
  `execnum` int(11) DEFAULT '0' COMMENT '导入次数',
  `SOURCE` varchar(255) DEFAULT NULL COMMENT '来源信息',
  `BATID` varchar(32) DEFAULT NULL COMMENT '批次ID',
  `FILTERID` varchar(32) DEFAULT NULL COMMENT '筛选ID',
  `ASSIGNEDORGAN` int(11) DEFAULT '0' COMMENT '分配给部门',
  `exectype` varchar(32) DEFAULT NULL COMMENT '执行类型',
  `renum` int(11) DEFAULT '0' COMMENT '分配数量',
  `reorgannum` int(11) DEFAULT '0' COMMENT '分配到部门数量',
  `assignedai` int(11) DEFAULT '0' COMMENT '分配到AI的名单数量',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='电销任务表';
CREATE TABLE `uk_sales_status` (
  `id` varchar(32) NOT NULL COMMENT '数据ID',
  `name` varchar(255) DEFAULT NULL COMMENT '状态名',
  `code` varchar(255) DEFAULT NULL COMMENT '状态代码',
  `cate` varchar(32) DEFAULT NULL COMMENT '状态分类ID',
  `orgi` varchar(32) DEFAULT NULL COMMENT '租户ID',
  `creater` varchar(32) DEFAULT NULL COMMENT '创建人',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `updatetime` datetime DEFAULT NULL COMMENT '更新时间',
  `memo` varchar(32) DEFAULT NULL COMMENT '备注',
  `activityid` varchar(32) DEFAULT NULL COMMENT '活动ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='电销状态';



CREATE TABLE `uk_act_filter_his` (
  `ID` varchar(32) NOT NULL COMMENT '主键ID',
  `NAME` varchar(50) DEFAULT NULL COMMENT '筛选名称',
  `CODE` varchar(50) DEFAULT NULL COMMENT '筛选代码',
  `CREATETIME` datetime DEFAULT NULL COMMENT '创建时间',
  `CREATER` varchar(32) DEFAULT NULL COMMENT '创建人',
  `UPDATETIME` datetime DEFAULT NULL COMMENT '更新时间',
  `ORGI` varchar(32) DEFAULT NULL COMMENT '租户ID',
  `USERNAME` varchar(50) DEFAULT NULL COMMENT '用户名',
  `STATUS` varchar(50) DEFAULT NULL COMMENT '状态',
  `PARENTID` varchar(32) DEFAULT NULL COMMENT '上级ID',
  `ACTID` varchar(32) DEFAULT NULL COMMENT '活动ID',
  `INX` int(11) DEFAULT '0' COMMENT '分类排序序号',
  `NAMENUM` int(11) DEFAULT '0' COMMENT '批次包含的名单总数',
  `VALIDNUM` int(11) DEFAULT '0' COMMENT '批次包含的有效名单总数',
  `INVALIDNUM` int(11) DEFAULT '0' COMMENT '批次包含的无效名单总数',
  `ASSIGNED` int(11) DEFAULT '0' COMMENT '已分配名单总数',
  `NOTASSIGNED` int(11) DEFAULT '0' COMMENT '未分配名单总数',
  `ENABLE` tinyint(4) DEFAULT '0' COMMENT '分类状态',
  `DATASTATUS` tinyint(4) DEFAULT '0' COMMENT '数据状态',
  `ORGAN` varchar(32) DEFAULT NULL COMMENT '部门',
  `DESCRIPTION` text COMMENT '备注',
  `execnum` int(11) DEFAULT '0' COMMENT '导入次数',
  `SOURCE` varchar(255) DEFAULT NULL COMMENT '来源',
  `BATID` varchar(32) DEFAULT NULL COMMENT '批次ID',
  `FILTERID` varchar(32) DEFAULT NULL COMMENT '筛选表单ID',
  `ASSIGNEDORGAN` int(11) DEFAULT '0' COMMENT '分配部门',
  `exectype` varchar(32) DEFAULT NULL COMMENT '执行类型',
  `renum` int(11) DEFAULT '0' COMMENT '分配数量',
  `reorgannum` int(11) DEFAULT '0' COMMENT '部门分配数量',
  `assignedai` int(11) DEFAULT '0' COMMENT '分配到AI的名单数量',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='筛选记录表';
INSERT INTO `uk_sysdic` (`ID`, `NAME`, `TITLE`, `CODE`, `ORGI`, `CTYPE`, `PARENTID`, `DESCRIPTION`, `MEMO`, `ICONSTR`, `ICONSKIN`, `CATETYPE`, `CREATER`, `CREATETIME`, `UPDATETIME`, `HASCHILD`, `SORTINDEX`, `DICID`, `DEFAULTVALUE`, `DISCODE`, `URL`, `MODULE`, `MLEVEL`, `RULES`, `MENUTYPE`) VALUES ('297e74066464004b01646402379d068f', '活动状态分类', 'pub', 'com.dic.callout.activity', NULL, 'data', '0', '', NULL, NULL, NULL, NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-07-04 14:37:04', NULL, '1', '0', NULL, '0', '0', NULL, NULL, NULL, NULL, NULL);
ALTER TABLE uk_jobdetail ADD `city` varchar(32) DEFAULT NULL COMMENT '线路所在城市';
ALTER TABLE uk_jobdetail ADD `prefix` tinyint(4) DEFAULT '0' COMMENT '线路资源拨号前缀';
ALTER TABLE uk_jobdetail ADD  `reportid` varchar(32) DEFAULT NULL COMMENT '数据表ID';
ALTER TABLE uk_jobdetail ADD `siptrunk` varchar(32) DEFAULT NULL COMMENT '线路信息';
ALTER TABLE uk_jobdetail ADD `province` varchar(32) DEFAULT NULL COMMENT '线路所在省份';
ALTER TABLE `uk_sales_product_type` ADD `parentid` varchar(32) DEFAULT NULL COMMENT '上级产品分类';
ALTER TABLE `uk_act_config` ADD `dataid` varchar(32) DEFAULT NULL COMMENT '数据ID';
ALTER TABLE `uk_act_config` ADD `previewautocallout` tinyint(4) DEFAULT '0' COMMENT '启用预览倒计时';
ALTER TABLE `uk_act_config` ADD `defaultvalue` varchar(100) DEFAULT NULL COMMENT '默认值';
ALTER TABLE `uk_act_config` ADD `strategy` varchar(100) DEFAULT NULL COMMENT '策略';
ALTER TABLE `uk_act_config` ADD `type` varchar(100) DEFAULT NULL COMMENT '类型';
ALTER TABLE `uk_act_config` ADD `updatetime` datetime DEFAULT NULL COMMENT '更新时间';


ALTER TABLE `uk_sales_product` ADD `begintime` datetime DEFAULT NULL COMMENT '有效期开始时间';
ALTER TABLE `uk_sales_product` ADD  `endtime` datetime DEFAULT NULL COMMENT '有效期结束时间';
ALTER TABLE `uk_sales_product` ADD `parentid` varchar(32) DEFAULT NULL COMMENT '上级ID';
ALTER TABLE `uk_sales_product` ADD `quota` int(11) DEFAULT '0' COMMENT '配额';
ALTER TABLE `uk_sales_product` ADD `termtype` varchar(32) DEFAULT '0' COMMENT '有效期类型（1永久有效，0有效期）';
INSERT INTO `uk_sysdic` (`ID`, `NAME`, `TITLE`, `CODE`, `ORGI`, `CTYPE`, `PARENTID`, `DESCRIPTION`, `MEMO`, `ICONSTR`, `ICONSKIN`, `CATETYPE`, `CREATER`, `CREATETIME`, `UPDATETIME`, `HASCHILD`, `SORTINDEX`, `DICID`, `DEFAULTVALUE`, `DISCODE`, `URL`, `MODULE`, `MLEVEL`, `RULES`, `MENUTYPE`) VALUES ('297e74066464004b01646402379d068f', '活动状态分类', 'pub', 'com.dic.callout.activity', NULL, 'data', '0', '', NULL, NULL, NULL, NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-7-4 14:37:04', NULL, 1, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uk_sysdic` (`ID`, `NAME`, `TITLE`, `CODE`, `ORGI`, `CTYPE`, `PARENTID`, `DESCRIPTION`, `MEMO`, `ICONSTR`, `ICONSKIN`, `CATETYPE`, `CREATER`, `CREATETIME`, `UPDATETIME`, `HASCHILD`, `SORTINDEX`, `DICID`, `DEFAULTVALUE`, `DISCODE`, `URL`, `MODULE`, `MLEVEL`, `RULES`, `MENUTYPE`) VALUES ('4028811b639010de0163904e80d30539', '电话号码类型', 'pub', 'com.dic.phone.type', NULL, 'data', '0', '', NULL, NULL, NULL, NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-5-24 12:00:53', NULL, 1, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uk_sysdic` (`ID`, `NAME`, `TITLE`, `CODE`, `ORGI`, `CTYPE`, `PARENTID`, `DESCRIPTION`, `MEMO`, `ICONSTR`, `ICONSKIN`, `CATETYPE`, `CREATER`, `CREATETIME`, `UPDATETIME`, `HASCHILD`, `SORTINDEX`, `DICID`, `DEFAULTVALUE`, `DISCODE`, `URL`, `MODULE`, `MLEVEL`, `RULES`, `MENUTYPE`) VALUES ('4028811b63905368016390662e700570', '字段隐藏显示', 'pub', 'com.dic.phone.secdis', NULL, 'data', '0', '', NULL, NULL, NULL, NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-5-24 12:26:45', NULL, 1, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uk_sysdic` (`ID`, `NAME`, `TITLE`, `CODE`, `ORGI`, `CTYPE`, `PARENTID`, `DESCRIPTION`, `MEMO`, `ICONSTR`, `ICONSKIN`, `CATETYPE`, `CREATER`, `CREATETIME`, `UPDATETIME`, `HASCHILD`, `SORTINDEX`, `DICID`, `DEFAULTVALUE`, `DISCODE`, `URL`, `MODULE`, `MLEVEL`, `RULES`, `MENUTYPE`) VALUES ('4028811b63906a0c01639139c1520562', '外呼业务类型', 'pub', 'com.dic.callout.type', NULL, 'data', '0', '', NULL, NULL, NULL, NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-5-24 16:17:51', NULL, 1, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uk_sysdic` (`ID`, `NAME`, `TITLE`, `CODE`, `ORGI`, `CTYPE`, `PARENTID`, `DESCRIPTION`, `MEMO`, `ICONSTR`, `ICONSKIN`, `CATETYPE`, `CREATER`, `CREATETIME`, `UPDATETIME`, `HASCHILD`, `SORTINDEX`, `DICID`, `DEFAULTVALUE`, `DISCODE`, `URL`, `MODULE`, `MLEVEL`, `RULES`, `MENUTYPE`) VALUES ('4028811b639010de016390502552053e', '家庭电话', 'pub', '01', 'ukewo', 'layui-icon', '4028811b639010de0163904e80d30539', '', NULL, '', '', NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-5-24 12:02:41', '2018-5-24 12:02:41', 0, 1, '4028811b639010de0163904e80d30539', 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uk_sysdic` (`ID`, `NAME`, `TITLE`, `CODE`, `ORGI`, `CTYPE`, `PARENTID`, `DESCRIPTION`, `MEMO`, `ICONSTR`, `ICONSKIN`, `CATETYPE`, `CREATER`, `CREATETIME`, `UPDATETIME`, `HASCHILD`, `SORTINDEX`, `DICID`, `DEFAULTVALUE`, `DISCODE`, `URL`, `MODULE`, `MLEVEL`, `RULES`, `MENUTYPE`) VALUES ('4028811b639010de016390502562053f', '工作电话', 'pub', '02', 'ukewo', 'layui-icon', '4028811b639010de0163904e80d30539', '', NULL, '', '', NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-5-24 12:02:41', '2018-5-24 12:02:41', 0, 2, '4028811b639010de0163904e80d30539', 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uk_sysdic` (`ID`, `NAME`, `TITLE`, `CODE`, `ORGI`, `CTYPE`, `PARENTID`, `DESCRIPTION`, `MEMO`, `ICONSTR`, `ICONSKIN`, `CATETYPE`, `CREATER`, `CREATETIME`, `UPDATETIME`, `HASCHILD`, `SORTINDEX`, `DICID`, `DEFAULTVALUE`, `DISCODE`, `URL`, `MODULE`, `MLEVEL`, `RULES`, `MENUTYPE`) VALUES ('4028811b639010de0163905025700540', '住宅电话', 'pub', '03', 'ukewo', 'layui-icon', '4028811b639010de0163904e80d30539', '', NULL, '', '', NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-5-24 12:02:41', '2018-5-24 12:02:41', 0, 3, '4028811b639010de0163904e80d30539', 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uk_sysdic` (`ID`, `NAME`, `TITLE`, `CODE`, `ORGI`, `CTYPE`, `PARENTID`, `DESCRIPTION`, `MEMO`, `ICONSTR`, `ICONSKIN`, `CATETYPE`, `CREATER`, `CREATETIME`, `UPDATETIME`, `HASCHILD`, `SORTINDEX`, `DICID`, `DEFAULTVALUE`, `DISCODE`, `URL`, `MODULE`, `MLEVEL`, `RULES`, `MENUTYPE`) VALUES ('4028811b639010de01639050257e0541', '主要电话', 'pub', '04', 'ukewo', 'layui-icon', '4028811b639010de0163904e80d30539', '', NULL, '', '', NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-5-24 12:02:41', '2018-5-24 12:02:41', 0, 4, '4028811b639010de0163904e80d30539', 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uk_sysdic` (`ID`, `NAME`, `TITLE`, `CODE`, `ORGI`, `CTYPE`, `PARENTID`, `DESCRIPTION`, `MEMO`, `ICONSTR`, `ICONSKIN`, `CATETYPE`, `CREATER`, `CREATETIME`, `UPDATETIME`, `HASCHILD`, `SORTINDEX`, `DICID`, `DEFAULTVALUE`, `DISCODE`, `URL`, `MODULE`, `MLEVEL`, `RULES`, `MENUTYPE`) VALUES ('4028811b639010de01639050258f0542', '无线电话', 'pub', '05', 'ukewo', 'layui-icon', '4028811b639010de0163904e80d30539', '', NULL, '', '', NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-5-24 12:02:41', '2018-5-24 12:02:41', 0, 5, '4028811b639010de0163904e80d30539', 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uk_sysdic` (`ID`, `NAME`, `TITLE`, `CODE`, `ORGI`, `CTYPE`, `PARENTID`, `DESCRIPTION`, `MEMO`, `ICONSTR`, `ICONSKIN`, `CATETYPE`, `CREATER`, `CREATETIME`, `UPDATETIME`, `HASCHILD`, `SORTINDEX`, `DICID`, `DEFAULTVALUE`, `DISCODE`, `URL`, `MODULE`, `MLEVEL`, `RULES`, `MENUTYPE`) VALUES ('4028811b639010de01639050259b0543', '移动电话', 'pub', '06', 'ukewo', 'layui-icon', '4028811b639010de0163904e80d30539', '', NULL, '', '', NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-5-24 12:02:41', '2018-5-24 12:02:41', 0, 6, '4028811b639010de0163904e80d30539', 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uk_sysdic` (`ID`, `NAME`, `TITLE`, `CODE`, `ORGI`, `CTYPE`, `PARENTID`, `DESCRIPTION`, `MEMO`, `ICONSTR`, `ICONSKIN`, `CATETYPE`, `CREATER`, `CREATETIME`, `UPDATETIME`, `HASCHILD`, `SORTINDEX`, `DICID`, `DEFAULTVALUE`, `DISCODE`, `URL`, `MODULE`, `MLEVEL`, `RULES`, `MENUTYPE`) VALUES ('4028811b639010de0163905025a50544', '车载电话', 'pub', '07', 'ukewo', 'layui-icon', '4028811b639010de0163904e80d30539', '', NULL, '', '', NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-5-24 12:02:41', '2018-5-24 12:02:41', 0, 7, '4028811b639010de0163904e80d30539', 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uk_sysdic` (`ID`, `NAME`, `TITLE`, `CODE`, `ORGI`, `CTYPE`, `PARENTID`, `DESCRIPTION`, `MEMO`, `ICONSTR`, `ICONSKIN`, `CATETYPE`, `CREATER`, `CREATETIME`, `UPDATETIME`, `HASCHILD`, `SORTINDEX`, `DICID`, `DEFAULTVALUE`, `DISCODE`, `URL`, `MODULE`, `MLEVEL`, `RULES`, `MENUTYPE`) VALUES ('4028811b639010de0163905025b00545', '助理电话', 'pub', '08', 'ukewo', 'layui-icon', '4028811b639010de0163904e80d30539', '', NULL, '', '', NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-5-24 12:02:41', '2018-5-24 12:02:41', 0, 8, '4028811b639010de0163904e80d30539', 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uk_sysdic` (`ID`, `NAME`, `TITLE`, `CODE`, `ORGI`, `CTYPE`, `PARENTID`, `DESCRIPTION`, `MEMO`, `ICONSTR`, `ICONSKIN`, `CATETYPE`, `CREATER`, `CREATETIME`, `UPDATETIME`, `HASCHILD`, `SORTINDEX`, `DICID`, `DEFAULTVALUE`, `DISCODE`, `URL`, `MODULE`, `MLEVEL`, `RULES`, `MENUTYPE`) VALUES ('4028811b639010de0163905025bb0546', '回拨电话', 'pub', '09', 'ukewo', 'layui-icon', '4028811b639010de0163904e80d30539', '', NULL, '', '', NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-5-24 12:02:41', '2018-5-24 12:02:41', 0, 9, '4028811b639010de0163904e80d30539', 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uk_sysdic` (`ID`, `NAME`, `TITLE`, `CODE`, `ORGI`, `CTYPE`, `PARENTID`, `DESCRIPTION`, `MEMO`, `ICONSTR`, `ICONSKIN`, `CATETYPE`, `CREATER`, `CREATETIME`, `UPDATETIME`, `HASCHILD`, `SORTINDEX`, `DICID`, `DEFAULTVALUE`, `DISCODE`, `URL`, `MODULE`, `MLEVEL`, `RULES`, `MENUTYPE`) VALUES ('4028811b63905368016390666f4d0575', '隐藏中间四位', 'pub', '01', 'ukewo', 'layui-icon', '4028811b63905368016390662e700570', '', NULL, '', '', NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-5-24 12:27:02', '2018-5-24 12:27:02', 0, 1, '4028811b63905368016390662e700570', 0, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uk_sysdic` (`ID`, `NAME`, `TITLE`, `CODE`, `ORGI`, `CTYPE`, `PARENTID`, `DESCRIPTION`, `MEMO`, `ICONSTR`, `ICONSKIN`, `CATETYPE`, `CREATER`, `CREATETIME`, `UPDATETIME`, `HASCHILD`, `SORTINDEX`, `DICID`, `DEFAULTVALUE`, `DISCODE`, `URL`, `MODULE`, `MLEVEL`, `RULES`, `MENUTYPE`) VALUES ('4028811b6390536801639066bae2057c', '隐藏后四位', 'pub', '02', 'ukewo', 'layui-icon', '4028811b63905368016390662e700570', '', NULL, '', '', NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-5-24 12:27:21', '2018-5-24 12:27:21', 0, 1, '4028811b63905368016390662e700570', 0, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uk_sysdic` (`ID`, `NAME`, `TITLE`, `CODE`, `ORGI`, `CTYPE`, `PARENTID`, `DESCRIPTION`, `MEMO`, `ICONSTR`, `ICONSKIN`, `CATETYPE`, `CREATER`, `CREATETIME`, `UPDATETIME`, `HASCHILD`, `SORTINDEX`, `DICID`, `DEFAULTVALUE`, `DISCODE`, `URL`, `MODULE`, `MLEVEL`, `RULES`, `MENUTYPE`) VALUES ('4028811b6390536801639066df8e0580', '隐藏前4位', 'pub', '03', 'ukewo', 'layui-icon', '4028811b63905368016390662e700570', '', NULL, '', '', NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-5-24 12:27:31', '2018-5-24 12:27:31', 0, 1, '4028811b63905368016390662e700570', 0, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uk_sysdic` (`ID`, `NAME`, `TITLE`, `CODE`, `ORGI`, `CTYPE`, `PARENTID`, `DESCRIPTION`, `MEMO`, `ICONSTR`, `ICONSKIN`, `CATETYPE`, `CREATER`, `CREATETIME`, `UPDATETIME`, `HASCHILD`, `SORTINDEX`, `DICID`, `DEFAULTVALUE`, `DISCODE`, `URL`, `MODULE`, `MLEVEL`, `RULES`, `MENUTYPE`) VALUES ('4028811b63c5281b0163c5c6cbf905d4', '全部隐藏', 'pub', '04', 'ukewo', 'layui-icon', '4028811b63905368016390662e700570', '', NULL, '', '', NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-6-3 21:12:09', NULL, 1, 0, '4028811b63905368016390662e700570', 0, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uk_sysdic` (`ID`, `NAME`, `TITLE`, `CODE`, `ORGI`, `CTYPE`, `PARENTID`, `DESCRIPTION`, `MEMO`, `ICONSTR`, `ICONSKIN`, `CATETYPE`, `CREATER`, `CREATETIME`, `UPDATETIME`, `HASCHILD`, `SORTINDEX`, `DICID`, `DEFAULTVALUE`, `DISCODE`, `URL`, `MODULE`, `MLEVEL`, `RULES`, `MENUTYPE`) VALUES ('4028811b63906a0c0163913a1c790567', '电销', 'pub', '01', 'ukewo', NULL, '4028811b63906a0c01639139c1520562', NULL, NULL, NULL, NULL, NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-5-24 16:18:14', '2018-5-24 16:18:14', 0, 1, '4028811b63906a0c01639139c1520562', 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uk_sysdic` (`ID`, `NAME`, `TITLE`, `CODE`, `ORGI`, `CTYPE`, `PARENTID`, `DESCRIPTION`, `MEMO`, `ICONSTR`, `ICONSKIN`, `CATETYPE`, `CREATER`, `CREATETIME`, `UPDATETIME`, `HASCHILD`, `SORTINDEX`, `DICID`, `DEFAULTVALUE`, `DISCODE`, `URL`, `MODULE`, `MLEVEL`, `RULES`, `MENUTYPE`) VALUES ('4028811b63906a0c0163913a1c890568', '回访', 'pub', '02', 'ukewo', NULL, '4028811b63906a0c01639139c1520562', NULL, NULL, NULL, NULL, NULL, '4028cac3614cd2f901614cf8be1f0324', '2018-5-24 16:18:14', '2018-5-24 16:18:14', 0, 2, '4028811b63906a0c01639139c1520562', 0, 0, NULL, NULL, NULL, NULL, NULL);




