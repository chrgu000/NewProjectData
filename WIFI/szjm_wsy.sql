/*
Navicat MySQL Data Transfer

Source Server         : 120.78.58.110
Source Server Version : 50547
Source Host           : 120.78.58.110:3306
Source Database       : szjm_wsy

Target Server Type    : MYSQL
Target Server Version : 50547
File Encoding         : 65001

Date: 2018-07-02 15:37:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for db_fhdb
-- ----------------------------
DROP TABLE IF EXISTS `db_fhdb`;
CREATE TABLE `db_fhdb` (
  `FHDB_ID` varchar(100) NOT NULL,
  `USERNAME` varchar(50) DEFAULT NULL COMMENT '操作用户',
  `BACKUP_TIME` varchar(32) DEFAULT NULL COMMENT '备份时间',
  `TABLENAME` varchar(50) DEFAULT NULL COMMENT '表名',
  `SQLPATH` varchar(300) DEFAULT NULL COMMENT '存储位置',
  `TYPE` int(1) NOT NULL COMMENT '类型',
  `DBSIZE` varchar(10) DEFAULT NULL COMMENT '文件大小',
  `BZ` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`FHDB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of db_fhdb
-- ----------------------------
INSERT INTO `db_fhdb` VALUES ('0b4f5318aa1d4b72a51c99d68c10cb0d', 'admin', '2017-07-06 14:31:19', 'weixin_imgmsg', 'f:/mysql_backup/20170706/weixin_imgmsg_20170706143110.sql', '2', '0.0', 'admin备份单表');
INSERT INTO `db_fhdb` VALUES ('1188932a79094db6b521936b0c729d8a', 'admin', '2017-07-06 14:31:36', 'weixin_imgmsg', 'f:/mysql_backup/20170706/weixin_imgmsg_20170706143136.sql', '2', '0.0', 'admin备份单表');
INSERT INTO `db_fhdb` VALUES ('169c39cdbfb548a0bb964ee8edfd69ee', 'admin', '2017-07-06 14:31:17', 'weixin_textmsg', 'f:/mysql_backup/20170706/weixin_textmsg_20170706143105.sql', '2', '0.0', 'admin备份单表');
INSERT INTO `db_fhdb` VALUES ('503c6bc1aecf4c43845e29297524a60a', 'admin', '2017-07-06 14:33:40', 'weixin_textmsg', 'f:/mysql_backup/20170706/weixin_textmsg_20170706143340.sql', '2', '0.0', 'admin备份单表');
INSERT INTO `db_fhdb` VALUES ('6add9b605fe247928579fa084caa16a9', 'admin', '2017-07-06 14:35:26', 'weixin_imgmsg', 'f:/mysql_backup/20170706/weixin_imgmsg_20170706143349.sql', '2', '0.0', 'admin备份单表');
INSERT INTO `db_fhdb` VALUES ('6b6d9854e40f45ae801a510362a9d44f', 'admin', '2017-07-06 14:33:01', 'weixin_textmsg', 'f:/mysql_backup/20170706/weixin_textmsg_20170706143258.sql', '2', '0.0', 'admin备份单表');
INSERT INTO `db_fhdb` VALUES ('91980a04043d46d699faff6021572a90', 'admin', '2017-07-06 14:30:13', 'weixin_textmsg', 'f:/mysql_backup/20170706/weixin_textmsg_20170706143013.sql', '2', '0.0', 'admin备份单表');
INSERT INTO `db_fhdb` VALUES ('c2dd29c4d42742e0bf920f4fbe781a62', 'admin', '2017-07-06 14:33:40', 'weixin_imgmsg', 'f:/mysql_backup/20170706/weixin_imgmsg_20170706143340.sql', '2', '0.0', 'admin备份单表');
INSERT INTO `db_fhdb` VALUES ('c9bec37dac8442a4b91850e6b8ca7875', 'admin', '2017-07-06 14:31:36', 'weixin_textmsg', 'f:/mysql_backup/20170706/weixin_textmsg_20170706143136.sql', '2', '0.0', 'admin备份单表');
INSERT INTO `db_fhdb` VALUES ('e6ea4fe947f74881b880b38ff39c6823', 'admin', '2017-07-06 14:33:01', 'weixin_imgmsg', 'f:/mysql_backup/20170706/weixin_imgmsg_20170706143258.sql', '2', '0.0', 'admin备份单表');
INSERT INTO `db_fhdb` VALUES ('f55cce78d5b2423abfb0430358077145', 'admin', '2017-07-06 14:35:25', 'weixin_textmsg', 'f:/mysql_backup/20170706/weixin_textmsg_20170706143349.sql', '2', '0.0', 'admin备份单表');

-- ----------------------------
-- Table structure for db_timingbackup
-- ----------------------------
DROP TABLE IF EXISTS `db_timingbackup`;
CREATE TABLE `db_timingbackup` (
  `TIMINGBACKUP_ID` varchar(100) NOT NULL,
  `JOBNAME` varchar(50) DEFAULT NULL COMMENT '任务名称',
  `CREATE_TIME` varchar(32) DEFAULT NULL COMMENT '创建时间',
  `TABLENAME` varchar(50) DEFAULT NULL COMMENT '表名',
  `STATUS` int(1) NOT NULL COMMENT '类型',
  `FHTIME` varchar(30) DEFAULT NULL COMMENT '时间规则',
  `TIMEEXPLAIN` varchar(100) DEFAULT NULL COMMENT '规则说明',
  `BZ` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`TIMINGBACKUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of db_timingbackup
-- ----------------------------
INSERT INTO `db_timingbackup` VALUES ('311e06c34a5e4518a86d5d30799f9b55', 'sys_app_user_934472', '2017-07-06 14:09:17', 'sys_app_user', '2', '1/2 * * ? * *', '每个月的 每周 每天 每小时执行一次', '备份任务');
INSERT INTO `db_timingbackup` VALUES ('bc4a788bc2ec40bdb1b7730131c26d42', 'sys_app_user_359515', '2016-04-12 17:24:05', 'sys_app_user', '2', '1/3 * * ? * *', '每个月的 每周 每天 每小时执行一次', 'ssss');

-- ----------------------------
-- Table structure for oa_datajur
-- ----------------------------
DROP TABLE IF EXISTS `oa_datajur`;
CREATE TABLE `oa_datajur` (
  `DATAJUR_ID` varchar(100) NOT NULL,
  `DEPARTMENT_IDS` varchar(5000) DEFAULT NULL COMMENT '部门ID组合',
  `STAFF_ID` varchar(100) DEFAULT NULL COMMENT '员工ID',
  `DEPARTMENT_ID` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`DATAJUR_ID`),
  KEY `FSTAFF` (`STAFF_ID`),
  CONSTRAINT `FSTAFF` FOREIGN KEY (`STAFF_ID`) REFERENCES `oa_staff` (`STAFF_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_datajur
-- ----------------------------
INSERT INTO `oa_datajur` VALUES ('9fd17463ffd7487ab90e683c76026655', '(\'cbbc84eddde947ba8af7d509e430eb70\',\'8f8b045470f342fdbc4c312ab881d62b\',\'83a25761c618457cae2fa1211bd8696d\',\'a0982dea52554225ab682cd4b421de47\',\'fh\')', '9fd17463ffd7487ab90e683c76026655', '5cccdb7c432449d8b853c52880058140');
INSERT INTO `oa_datajur` VALUES ('c9f05f925dfc485b9e352916612ab669', '(\'a0982dea52554225ab682cd4b421de47\',\'fh\')', 'c9f05f925dfc485b9e352916612ab669', '8f8b045470f342fdbc4c312ab881d62b');

-- ----------------------------
-- Table structure for oa_department
-- ----------------------------
DROP TABLE IF EXISTS `oa_department`;
CREATE TABLE `oa_department` (
  `DEPARTMENT_ID` varchar(100) NOT NULL,
  `NAME` varchar(30) DEFAULT NULL COMMENT '名称',
  `NAME_EN` varchar(50) DEFAULT NULL COMMENT '英文',
  `BIANMA` varchar(50) DEFAULT NULL COMMENT '编码',
  `PARENT_ID` varchar(100) DEFAULT NULL COMMENT '上级ID',
  `BZ` varchar(255) DEFAULT NULL COMMENT '备注',
  `HEADMAN` varchar(30) DEFAULT NULL COMMENT '负责人',
  `TEL` varchar(50) DEFAULT NULL COMMENT '电话',
  `FUNCTIONS` varchar(255) DEFAULT NULL COMMENT '部门职能',
  `ADDRESS` varchar(255) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`DEPARTMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_department
-- ----------------------------
INSERT INTO `oa_department` VALUES ('0956d8c279274fca92f4091f2a69a9ad', '销售会计', 'xiaokuai', '05896', 'd41af567914a409893d011aa53eda797', '', '', '', '', '');
INSERT INTO `oa_department` VALUES ('3e7227e11dc14b4d9e863dd1a1fcedf6', '成本会计', 'chengb', '03656', 'd41af567914a409893d011aa53eda797', '', '', '', '', '');
INSERT INTO `oa_department` VALUES ('5cccdb7c432449d8b853c52880058140', 'B公司', 'b', '002', '0', '冶铁', '李四', '112', '冶铁', '河北');
INSERT INTO `oa_department` VALUES ('83a25761c618457cae2fa1211bd8696d', '销售B组', 'xiaob', '002365', 'cbbc84eddde947ba8af7d509e430eb70', '', '李四', '', '', '');
INSERT INTO `oa_department` VALUES ('8f8b045470f342fdbc4c312ab881d62b', '销售A组', 'xiaoA', '0326', 'cbbc84eddde947ba8af7d509e430eb70', '', '张三', '0201212', '', '');
INSERT INTO `oa_department` VALUES ('a0982dea52554225ab682cd4b421de47', '1队', 'yidui', '02563', '8f8b045470f342fdbc4c312ab881d62b', '', '小王', '12356989', '', '');
INSERT INTO `oa_department` VALUES ('a6c6695217ba4a4dbfe9f7e9d2c06730', 'A公司', 'a', '001', '0', '挖煤', '张三', '110', '洼煤矿', '山西');
INSERT INTO `oa_department` VALUES ('cbbc84eddde947ba8af7d509e430eb70', '销售部', 'xiaoshoubu', '00201', '5cccdb7c432449d8b853c52880058140', '推销商品', '小明', '11236', '推销商品', '909办公室');
INSERT INTO `oa_department` VALUES ('d41af567914a409893d011aa53eda797', '财务部', 'caiwubu', '00101', 'a6c6695217ba4a4dbfe9f7e9d2c06730', '负责发工资', '王武', '11236', '管理财务', '308办公室');

-- ----------------------------
-- Table structure for oa_fhfile
-- ----------------------------
DROP TABLE IF EXISTS `oa_fhfile`;
CREATE TABLE `oa_fhfile` (
  `FHFILE_ID` varchar(100) NOT NULL,
  `NAME` varchar(30) DEFAULT NULL COMMENT '文件名',
  `FILEPATH` varchar(100) DEFAULT NULL COMMENT '路径',
  `CTIME` varchar(32) DEFAULT NULL COMMENT '上传时间',
  `BZ` varchar(100) DEFAULT NULL COMMENT '备注',
  `USERNAME` varchar(50) DEFAULT NULL COMMENT '长传者',
  `DEPARTMENT_ID` varchar(100) DEFAULT NULL COMMENT '部门ID',
  `FILESIZE` varchar(10) DEFAULT NULL COMMENT '文件大小',
  PRIMARY KEY (`FHFILE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_fhfile
-- ----------------------------
INSERT INTO `oa_fhfile` VALUES ('00a3a22cde5a4a87b935f69a07a095cd', 'ssdf', '2016060308062777776.txt', '2016-06-03 20:06:27', 's', 'admin', '0', '0.643');
INSERT INTO `oa_fhfile` VALUES ('10d0d0a30c5a4d1798f6abbb6a4eafb8', 'f1', '2016060211505730809.png', '2016-06-02 23:50:57', '21', 'lisi', '8f8b045470f342fdbc4c312ab881d62b', '522.43');
INSERT INTO `oa_fhfile` VALUES ('1d12e3f914cf493c9bde0cff3584cefb', 'w1', '2016060211500388907.png', '2016-06-02 23:50:03', 'w1', 'san', '5cccdb7c432449d8b853c52880058140', '6.389');

-- ----------------------------
-- Table structure for oa_staff
-- ----------------------------
DROP TABLE IF EXISTS `oa_staff`;
CREATE TABLE `oa_staff` (
  `STAFF_ID` varchar(100) NOT NULL,
  `NAME` varchar(50) DEFAULT NULL COMMENT '姓名',
  `NAME_EN` varchar(50) DEFAULT NULL COMMENT '英文',
  `BIANMA` varchar(100) DEFAULT NULL COMMENT '编码',
  `DEPARTMENT_ID` varchar(100) DEFAULT NULL COMMENT '部门',
  `FUNCTIONS` varchar(255) DEFAULT NULL COMMENT '职责',
  `TEL` varchar(20) DEFAULT NULL COMMENT '电话',
  `EMAIL` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `SEX` varchar(10) DEFAULT NULL COMMENT '性别',
  `BIRTHDAY` varchar(32) DEFAULT NULL COMMENT '出生日期',
  `NATION` varchar(10) DEFAULT NULL COMMENT '民族',
  `JOBTYPE` varchar(30) DEFAULT NULL COMMENT '岗位类别',
  `JOBJOINTIME` varchar(32) DEFAULT NULL COMMENT '参加工作时间',
  `FADDRESS` varchar(100) DEFAULT NULL COMMENT '籍贯',
  `POLITICAL` varchar(30) DEFAULT NULL COMMENT '政治面貌',
  `PJOINTIME` varchar(32) DEFAULT NULL COMMENT '入团时间',
  `SFID` varchar(20) DEFAULT NULL COMMENT '身份证号',
  `MARITAL` varchar(10) DEFAULT NULL COMMENT '婚姻状况',
  `DJOINTIME` varchar(32) DEFAULT NULL COMMENT '进本单位时间',
  `POST` varchar(30) DEFAULT NULL COMMENT '现岗位',
  `POJOINTIME` varchar(32) DEFAULT NULL COMMENT '上岗时间',
  `EDUCATION` varchar(10) DEFAULT NULL COMMENT '学历',
  `SCHOOL` varchar(30) DEFAULT NULL COMMENT '毕业学校',
  `MAJOR` varchar(30) DEFAULT NULL COMMENT '专业',
  `FTITLE` varchar(30) DEFAULT NULL COMMENT '职称',
  `CERTIFICATE` varchar(30) DEFAULT NULL COMMENT '职业资格证',
  `CONTRACTLENGTH` int(2) NOT NULL COMMENT '劳动合同时长',
  `CSTARTTIME` varchar(32) DEFAULT NULL COMMENT '签订日期',
  `CENDTIME` varchar(32) DEFAULT NULL COMMENT '终止日期',
  `ADDRESS` varchar(100) DEFAULT NULL COMMENT '现住址',
  `USER_ID` varchar(100) DEFAULT NULL COMMENT '绑定账号ID',
  `BZ` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`STAFF_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_staff
-- ----------------------------
INSERT INTO `oa_staff` VALUES ('9fd17463ffd7487ab90e683c76026655', 'www', 'www', 'ww', '5cccdb7c432449d8b853c52880058140', 'ww', 'ww', 'www', '男', '2016-04-27', 'ww', 'ww', '2016-05-03', 'ww', 'ww', '2016-04-25', 'ww', '未婚', '2016-05-09', 'ww', '2016-05-17', 'w', 'w', 'w', 'w', 'www', '2', '2016-05-23', '2016-05-16', 'w', 'w5', 'www');
INSERT INTO `oa_staff` VALUES ('c9f05f925dfc485b9e352916612ab669', 'fw', 'y', 'y', '8f8b045470f342fdbc4c312ab881d62b', 'y', 'y', 'y', '男', '2016-06-08', 'y', 'y', '2016-06-03', 'y', 'y', '2016-05-31', 'y', '已婚', '2016-06-07', 'y', '2016-06-08', 'y', 'y', 'y', 'y', 'y', '4', '2016-06-21', '2016-06-21', 'y', 'lisi', 'y');

-- ----------------------------
-- Table structure for st_area
-- ----------------------------
DROP TABLE IF EXISTS `st_area`;
CREATE TABLE `st_area` (
  `areaid` int(11) NOT NULL,
  `areaname` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cityid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of st_area
-- ----------------------------
INSERT INTO `st_area` VALUES ('110101', '东城区', '110100');
INSERT INTO `st_area` VALUES ('110102', '西城区', '110100');
INSERT INTO `st_area` VALUES ('110103', '崇文区', '110100');
INSERT INTO `st_area` VALUES ('110104', '宣武区', '110100');
INSERT INTO `st_area` VALUES ('110105', '朝阳区', '110100');
INSERT INTO `st_area` VALUES ('110106', '丰台区', '110100');
INSERT INTO `st_area` VALUES ('110107', '石景山区', '110100');
INSERT INTO `st_area` VALUES ('110108', '海淀区', '110100');
INSERT INTO `st_area` VALUES ('110109', '门头沟区', '110100');
INSERT INTO `st_area` VALUES ('110111', '房山区', '110100');
INSERT INTO `st_area` VALUES ('110112', '通州区', '110100');
INSERT INTO `st_area` VALUES ('110113', '顺义区', '110100');
INSERT INTO `st_area` VALUES ('110114', '昌平区', '110100');
INSERT INTO `st_area` VALUES ('110115', '大兴区', '110100');
INSERT INTO `st_area` VALUES ('110116', '怀柔区', '110100');
INSERT INTO `st_area` VALUES ('110117', '平谷区', '110100');
INSERT INTO `st_area` VALUES ('110228', '密云县', '110100');
INSERT INTO `st_area` VALUES ('110229', '延庆县', '110100');
INSERT INTO `st_area` VALUES ('120101', '和平区', '120100');
INSERT INTO `st_area` VALUES ('120102', '河东区', '120100');
INSERT INTO `st_area` VALUES ('120103', '河西区', '120100');
INSERT INTO `st_area` VALUES ('120104', '南开区', '120100');
INSERT INTO `st_area` VALUES ('120105', '河北区', '120100');
INSERT INTO `st_area` VALUES ('120106', '红桥区', '120100');
INSERT INTO `st_area` VALUES ('120107', '塘沽区', '120100');
INSERT INTO `st_area` VALUES ('120108', '汉沽区', '120100');
INSERT INTO `st_area` VALUES ('120109', '大港区', '120100');
INSERT INTO `st_area` VALUES ('120110', '东丽区', '120100');
INSERT INTO `st_area` VALUES ('120111', '西青区', '120100');
INSERT INTO `st_area` VALUES ('120112', '津南区', '120100');
INSERT INTO `st_area` VALUES ('120113', '北辰区', '120100');
INSERT INTO `st_area` VALUES ('120114', '武清区', '120100');
INSERT INTO `st_area` VALUES ('120115', '宝坻区', '120100');
INSERT INTO `st_area` VALUES ('120221', '宁河县', '120100');
INSERT INTO `st_area` VALUES ('120223', '静海县', '120100');
INSERT INTO `st_area` VALUES ('120225', '蓟　县', '120100');
INSERT INTO `st_area` VALUES ('130101', '市辖区', '130100');
INSERT INTO `st_area` VALUES ('130102', '长安区', '130100');
INSERT INTO `st_area` VALUES ('130103', '桥东区', '130100');
INSERT INTO `st_area` VALUES ('130104', '桥西区', '130100');
INSERT INTO `st_area` VALUES ('130105', '新华区', '130100');
INSERT INTO `st_area` VALUES ('130107', '井陉矿区', '130100');
INSERT INTO `st_area` VALUES ('130108', '裕华区', '130100');
INSERT INTO `st_area` VALUES ('130121', '井陉县', '130100');
INSERT INTO `st_area` VALUES ('130123', '正定县', '130100');
INSERT INTO `st_area` VALUES ('130124', '栾城县', '130100');
INSERT INTO `st_area` VALUES ('130125', '行唐县', '130100');
INSERT INTO `st_area` VALUES ('130126', '灵寿县', '130100');
INSERT INTO `st_area` VALUES ('130127', '高邑县', '130100');
INSERT INTO `st_area` VALUES ('130128', '深泽县', '130100');
INSERT INTO `st_area` VALUES ('130129', '赞皇县', '130100');
INSERT INTO `st_area` VALUES ('130130', '无极县', '130100');
INSERT INTO `st_area` VALUES ('130131', '平山县', '130100');
INSERT INTO `st_area` VALUES ('130132', '元氏县', '130100');
INSERT INTO `st_area` VALUES ('130133', '赵　县', '130100');
INSERT INTO `st_area` VALUES ('130181', '辛集市', '130100');
INSERT INTO `st_area` VALUES ('130182', '藁城市', '130100');
INSERT INTO `st_area` VALUES ('130183', '晋州市', '130100');
INSERT INTO `st_area` VALUES ('130184', '新乐市', '130100');
INSERT INTO `st_area` VALUES ('130185', '鹿泉市', '130100');
INSERT INTO `st_area` VALUES ('130201', '市辖区', '130200');
INSERT INTO `st_area` VALUES ('130202', '路南区', '130200');
INSERT INTO `st_area` VALUES ('130203', '路北区', '130200');
INSERT INTO `st_area` VALUES ('130204', '古冶区', '130200');
INSERT INTO `st_area` VALUES ('130205', '开平区', '130200');
INSERT INTO `st_area` VALUES ('130207', '丰南区', '130200');
INSERT INTO `st_area` VALUES ('130208', '丰润区', '130200');
INSERT INTO `st_area` VALUES ('130223', '滦　县', '130200');
INSERT INTO `st_area` VALUES ('130224', '滦南县', '130200');
INSERT INTO `st_area` VALUES ('130225', '乐亭县', '130200');
INSERT INTO `st_area` VALUES ('130227', '迁西县', '130200');
INSERT INTO `st_area` VALUES ('130229', '玉田县', '130200');
INSERT INTO `st_area` VALUES ('130230', '唐海县', '130200');
INSERT INTO `st_area` VALUES ('130281', '遵化市', '130200');
INSERT INTO `st_area` VALUES ('130283', '迁安市', '130200');
INSERT INTO `st_area` VALUES ('130301', '市辖区', '130300');
INSERT INTO `st_area` VALUES ('130302', '海港区', '130300');
INSERT INTO `st_area` VALUES ('130303', '山海关区', '130300');
INSERT INTO `st_area` VALUES ('130304', '北戴河区', '130300');
INSERT INTO `st_area` VALUES ('130321', '青龙满族自治县', '130300');
INSERT INTO `st_area` VALUES ('130322', '昌黎县', '130300');
INSERT INTO `st_area` VALUES ('130323', '抚宁县', '130300');
INSERT INTO `st_area` VALUES ('130324', '卢龙县', '130300');
INSERT INTO `st_area` VALUES ('130401', '市辖区', '130400');
INSERT INTO `st_area` VALUES ('130402', '邯山区', '130400');
INSERT INTO `st_area` VALUES ('130403', '丛台区', '130400');
INSERT INTO `st_area` VALUES ('130404', '复兴区', '130400');
INSERT INTO `st_area` VALUES ('130406', '峰峰矿区', '130400');
INSERT INTO `st_area` VALUES ('130421', '邯郸县', '130400');
INSERT INTO `st_area` VALUES ('130423', '临漳县', '130400');
INSERT INTO `st_area` VALUES ('130424', '成安县', '130400');
INSERT INTO `st_area` VALUES ('130425', '大名县', '130400');
INSERT INTO `st_area` VALUES ('130426', '涉　县', '130400');
INSERT INTO `st_area` VALUES ('130427', '磁　县', '130400');
INSERT INTO `st_area` VALUES ('130428', '肥乡县', '130400');
INSERT INTO `st_area` VALUES ('130429', '永年县', '130400');
INSERT INTO `st_area` VALUES ('130430', '邱　县', '130400');
INSERT INTO `st_area` VALUES ('130431', '鸡泽县', '130400');
INSERT INTO `st_area` VALUES ('130432', '广平县', '130400');
INSERT INTO `st_area` VALUES ('130433', '馆陶县', '130400');
INSERT INTO `st_area` VALUES ('130434', '魏　县', '130400');
INSERT INTO `st_area` VALUES ('130435', '曲周县', '130400');
INSERT INTO `st_area` VALUES ('130481', '武安市', '130400');
INSERT INTO `st_area` VALUES ('130501', '市辖区', '130500');
INSERT INTO `st_area` VALUES ('130502', '桥东区', '130500');
INSERT INTO `st_area` VALUES ('130503', '桥西区', '130500');
INSERT INTO `st_area` VALUES ('130521', '邢台县', '130500');
INSERT INTO `st_area` VALUES ('130522', '临城县', '130500');
INSERT INTO `st_area` VALUES ('130523', '内丘县', '130500');
INSERT INTO `st_area` VALUES ('130524', '柏乡县', '130500');
INSERT INTO `st_area` VALUES ('130525', '隆尧县', '130500');
INSERT INTO `st_area` VALUES ('130526', '任　县', '130500');
INSERT INTO `st_area` VALUES ('130527', '南和县', '130500');
INSERT INTO `st_area` VALUES ('130528', '宁晋县', '130500');
INSERT INTO `st_area` VALUES ('130529', '巨鹿县', '130500');
INSERT INTO `st_area` VALUES ('130530', '新河县', '130500');
INSERT INTO `st_area` VALUES ('130531', '广宗县', '130500');
INSERT INTO `st_area` VALUES ('130532', '平乡县', '130500');
INSERT INTO `st_area` VALUES ('130533', '威　县', '130500');
INSERT INTO `st_area` VALUES ('130534', '清河县', '130500');
INSERT INTO `st_area` VALUES ('130535', '临西县', '130500');
INSERT INTO `st_area` VALUES ('130581', '南宫市', '130500');
INSERT INTO `st_area` VALUES ('130582', '沙河市', '130500');
INSERT INTO `st_area` VALUES ('130601', '市辖区', '130600');
INSERT INTO `st_area` VALUES ('130602', '新市区', '130600');
INSERT INTO `st_area` VALUES ('130603', '北市区', '130600');
INSERT INTO `st_area` VALUES ('130604', '南市区', '130600');
INSERT INTO `st_area` VALUES ('130621', '满城县', '130600');
INSERT INTO `st_area` VALUES ('130622', '清苑县', '130600');
INSERT INTO `st_area` VALUES ('130623', '涞水县', '130600');
INSERT INTO `st_area` VALUES ('130624', '阜平县', '130600');
INSERT INTO `st_area` VALUES ('130625', '徐水县', '130600');
INSERT INTO `st_area` VALUES ('130626', '定兴县', '130600');
INSERT INTO `st_area` VALUES ('130627', '唐　县', '130600');
INSERT INTO `st_area` VALUES ('130628', '高阳县', '130600');
INSERT INTO `st_area` VALUES ('130629', '容城县', '130600');
INSERT INTO `st_area` VALUES ('130630', '涞源县', '130600');
INSERT INTO `st_area` VALUES ('130631', '望都县', '130600');
INSERT INTO `st_area` VALUES ('130632', '安新县', '130600');
INSERT INTO `st_area` VALUES ('130633', '易　县', '130600');
INSERT INTO `st_area` VALUES ('130634', '曲阳县', '130600');
INSERT INTO `st_area` VALUES ('130635', '蠡　县', '130600');
INSERT INTO `st_area` VALUES ('130636', '顺平县', '130600');
INSERT INTO `st_area` VALUES ('130637', '博野县', '130600');
INSERT INTO `st_area` VALUES ('130638', '雄　县', '130600');
INSERT INTO `st_area` VALUES ('130681', '涿州市', '130600');
INSERT INTO `st_area` VALUES ('130682', '定州市', '130600');
INSERT INTO `st_area` VALUES ('130683', '安国市', '130600');
INSERT INTO `st_area` VALUES ('130684', '高碑店市', '130600');
INSERT INTO `st_area` VALUES ('130701', '市辖区', '130700');
INSERT INTO `st_area` VALUES ('130702', '桥东区', '130700');
INSERT INTO `st_area` VALUES ('130703', '桥西区', '130700');
INSERT INTO `st_area` VALUES ('130705', '宣化区', '130700');
INSERT INTO `st_area` VALUES ('130706', '下花园区', '130700');
INSERT INTO `st_area` VALUES ('130721', '宣化县', '130700');
INSERT INTO `st_area` VALUES ('130722', '张北县', '130700');
INSERT INTO `st_area` VALUES ('130723', '康保县', '130700');
INSERT INTO `st_area` VALUES ('130724', '沽源县', '130700');
INSERT INTO `st_area` VALUES ('130725', '尚义县', '130700');
INSERT INTO `st_area` VALUES ('130726', '蔚　县', '130700');
INSERT INTO `st_area` VALUES ('130727', '阳原县', '130700');
INSERT INTO `st_area` VALUES ('130728', '怀安县', '130700');
INSERT INTO `st_area` VALUES ('130729', '万全县', '130700');
INSERT INTO `st_area` VALUES ('130730', '怀来县', '130700');
INSERT INTO `st_area` VALUES ('130731', '涿鹿县', '130700');
INSERT INTO `st_area` VALUES ('130732', '赤城县', '130700');
INSERT INTO `st_area` VALUES ('130733', '崇礼县', '130700');
INSERT INTO `st_area` VALUES ('130801', '市辖区', '130800');
INSERT INTO `st_area` VALUES ('130802', '双桥区', '130800');
INSERT INTO `st_area` VALUES ('130803', '双滦区', '130800');
INSERT INTO `st_area` VALUES ('130804', '鹰手营子矿区', '130800');
INSERT INTO `st_area` VALUES ('130821', '承德县', '130800');
INSERT INTO `st_area` VALUES ('130822', '兴隆县', '130800');
INSERT INTO `st_area` VALUES ('130823', '平泉县', '130800');
INSERT INTO `st_area` VALUES ('130824', '滦平县', '130800');
INSERT INTO `st_area` VALUES ('130825', '隆化县', '130800');
INSERT INTO `st_area` VALUES ('130826', '丰宁满族自治县', '130800');
INSERT INTO `st_area` VALUES ('130827', '宽城满族自治县', '130800');
INSERT INTO `st_area` VALUES ('130828', '围场满族蒙古族自治县', '130800');
INSERT INTO `st_area` VALUES ('130901', '市辖区', '130900');
INSERT INTO `st_area` VALUES ('130902', '新华区', '130900');
INSERT INTO `st_area` VALUES ('130903', '运河区', '130900');
INSERT INTO `st_area` VALUES ('130921', '沧　县', '130900');
INSERT INTO `st_area` VALUES ('130922', '青　县', '130900');
INSERT INTO `st_area` VALUES ('130923', '东光县', '130900');
INSERT INTO `st_area` VALUES ('130924', '海兴县', '130900');
INSERT INTO `st_area` VALUES ('130925', '盐山县', '130900');
INSERT INTO `st_area` VALUES ('130926', '肃宁县', '130900');
INSERT INTO `st_area` VALUES ('130927', '南皮县', '130900');
INSERT INTO `st_area` VALUES ('130928', '吴桥县', '130900');
INSERT INTO `st_area` VALUES ('130929', '献　县', '130900');
INSERT INTO `st_area` VALUES ('130930', '孟村回族自治县', '130900');
INSERT INTO `st_area` VALUES ('130981', '泊头市', '130900');
INSERT INTO `st_area` VALUES ('130982', '任丘市', '130900');
INSERT INTO `st_area` VALUES ('130983', '黄骅市', '130900');
INSERT INTO `st_area` VALUES ('130984', '河间市', '130900');
INSERT INTO `st_area` VALUES ('131001', '市辖区', '131000');
INSERT INTO `st_area` VALUES ('131002', '安次区', '131000');
INSERT INTO `st_area` VALUES ('131003', '广阳区', '131000');
INSERT INTO `st_area` VALUES ('131022', '固安县', '131000');
INSERT INTO `st_area` VALUES ('131023', '永清县', '131000');
INSERT INTO `st_area` VALUES ('131024', '香河县', '131000');
INSERT INTO `st_area` VALUES ('131025', '大城县', '131000');
INSERT INTO `st_area` VALUES ('131026', '文安县', '131000');
INSERT INTO `st_area` VALUES ('131028', '大厂回族自治县', '131000');
INSERT INTO `st_area` VALUES ('131081', '霸州市', '131000');
INSERT INTO `st_area` VALUES ('131082', '三河市', '131000');
INSERT INTO `st_area` VALUES ('131101', '市辖区', '131100');
INSERT INTO `st_area` VALUES ('131102', '桃城区', '131100');
INSERT INTO `st_area` VALUES ('131121', '枣强县', '131100');
INSERT INTO `st_area` VALUES ('131122', '武邑县', '131100');
INSERT INTO `st_area` VALUES ('131123', '武强县', '131100');
INSERT INTO `st_area` VALUES ('131124', '饶阳县', '131100');
INSERT INTO `st_area` VALUES ('131125', '安平县', '131100');
INSERT INTO `st_area` VALUES ('131126', '故城县', '131100');
INSERT INTO `st_area` VALUES ('131127', '景　县', '131100');
INSERT INTO `st_area` VALUES ('131128', '阜城县', '131100');
INSERT INTO `st_area` VALUES ('131181', '冀州市', '131100');
INSERT INTO `st_area` VALUES ('131182', '深州市', '131100');
INSERT INTO `st_area` VALUES ('140101', '市辖区', '140100');
INSERT INTO `st_area` VALUES ('140105', '小店区', '140100');
INSERT INTO `st_area` VALUES ('140106', '迎泽区', '140100');
INSERT INTO `st_area` VALUES ('140107', '杏花岭区', '140100');
INSERT INTO `st_area` VALUES ('140108', '尖草坪区', '140100');
INSERT INTO `st_area` VALUES ('140109', '万柏林区', '140100');
INSERT INTO `st_area` VALUES ('140110', '晋源区', '140100');
INSERT INTO `st_area` VALUES ('140121', '清徐县', '140100');
INSERT INTO `st_area` VALUES ('140122', '阳曲县', '140100');
INSERT INTO `st_area` VALUES ('140123', '娄烦县', '140100');
INSERT INTO `st_area` VALUES ('140181', '古交市', '140100');
INSERT INTO `st_area` VALUES ('140201', '市辖区', '140200');
INSERT INTO `st_area` VALUES ('140202', '城　区', '140200');
INSERT INTO `st_area` VALUES ('140203', '矿　区', '140200');
INSERT INTO `st_area` VALUES ('140211', '南郊区', '140200');
INSERT INTO `st_area` VALUES ('140212', '新荣区', '140200');
INSERT INTO `st_area` VALUES ('140221', '阳高县', '140200');
INSERT INTO `st_area` VALUES ('140222', '天镇县', '140200');
INSERT INTO `st_area` VALUES ('140223', '广灵县', '140200');
INSERT INTO `st_area` VALUES ('140224', '灵丘县', '140200');
INSERT INTO `st_area` VALUES ('140225', '浑源县', '140200');
INSERT INTO `st_area` VALUES ('140226', '左云县', '140200');
INSERT INTO `st_area` VALUES ('140227', '大同县', '140200');
INSERT INTO `st_area` VALUES ('140301', '市辖区', '140300');
INSERT INTO `st_area` VALUES ('140302', '城　区', '140300');
INSERT INTO `st_area` VALUES ('140303', '矿　区', '140300');
INSERT INTO `st_area` VALUES ('140311', '郊　区', '140300');
INSERT INTO `st_area` VALUES ('140321', '平定县', '140300');
INSERT INTO `st_area` VALUES ('140322', '盂　县', '140300');
INSERT INTO `st_area` VALUES ('140401', '市辖区', '140400');
INSERT INTO `st_area` VALUES ('140402', '城　区', '140400');
INSERT INTO `st_area` VALUES ('140411', '郊　区', '140400');
INSERT INTO `st_area` VALUES ('140421', '长治县', '140400');
INSERT INTO `st_area` VALUES ('140423', '襄垣县', '140400');
INSERT INTO `st_area` VALUES ('140424', '屯留县', '140400');
INSERT INTO `st_area` VALUES ('140425', '平顺县', '140400');
INSERT INTO `st_area` VALUES ('140426', '黎城县', '140400');
INSERT INTO `st_area` VALUES ('140427', '壶关县', '140400');
INSERT INTO `st_area` VALUES ('140428', '长子县', '140400');
INSERT INTO `st_area` VALUES ('140429', '武乡县', '140400');
INSERT INTO `st_area` VALUES ('140430', '沁　县', '140400');
INSERT INTO `st_area` VALUES ('140431', '沁源县', '140400');
INSERT INTO `st_area` VALUES ('140481', '潞城市', '140400');
INSERT INTO `st_area` VALUES ('140501', '市辖区', '140500');
INSERT INTO `st_area` VALUES ('140502', '城　区', '140500');
INSERT INTO `st_area` VALUES ('140521', '沁水县', '140500');
INSERT INTO `st_area` VALUES ('140522', '阳城县', '140500');
INSERT INTO `st_area` VALUES ('140524', '陵川县', '140500');
INSERT INTO `st_area` VALUES ('140525', '泽州县', '140500');
INSERT INTO `st_area` VALUES ('140581', '高平市', '140500');
INSERT INTO `st_area` VALUES ('140601', '市辖区', '140600');
INSERT INTO `st_area` VALUES ('140602', '朔城区', '140600');
INSERT INTO `st_area` VALUES ('140603', '平鲁区', '140600');
INSERT INTO `st_area` VALUES ('140621', '山阴县', '140600');
INSERT INTO `st_area` VALUES ('140622', '应　县', '140600');
INSERT INTO `st_area` VALUES ('140623', '右玉县', '140600');
INSERT INTO `st_area` VALUES ('140624', '怀仁县', '140600');
INSERT INTO `st_area` VALUES ('140701', '市辖区', '140700');
INSERT INTO `st_area` VALUES ('140702', '榆次区', '140700');
INSERT INTO `st_area` VALUES ('140721', '榆社县', '140700');
INSERT INTO `st_area` VALUES ('140722', '左权县', '140700');
INSERT INTO `st_area` VALUES ('140723', '和顺县', '140700');
INSERT INTO `st_area` VALUES ('140724', '昔阳县', '140700');
INSERT INTO `st_area` VALUES ('140725', '寿阳县', '140700');
INSERT INTO `st_area` VALUES ('140726', '太谷县', '140700');
INSERT INTO `st_area` VALUES ('140727', '祁　县', '140700');
INSERT INTO `st_area` VALUES ('140728', '平遥县', '140700');
INSERT INTO `st_area` VALUES ('140729', '灵石县', '140700');
INSERT INTO `st_area` VALUES ('140781', '介休市', '140700');
INSERT INTO `st_area` VALUES ('140801', '市辖区', '140800');
INSERT INTO `st_area` VALUES ('140802', '盐湖区', '140800');
INSERT INTO `st_area` VALUES ('140821', '临猗县', '140800');
INSERT INTO `st_area` VALUES ('140822', '万荣县', '140800');
INSERT INTO `st_area` VALUES ('140823', '闻喜县', '140800');
INSERT INTO `st_area` VALUES ('140824', '稷山县', '140800');
INSERT INTO `st_area` VALUES ('140825', '新绛县', '140800');
INSERT INTO `st_area` VALUES ('140826', '绛　县', '140800');
INSERT INTO `st_area` VALUES ('140827', '垣曲县', '140800');
INSERT INTO `st_area` VALUES ('140828', '夏　县', '140800');
INSERT INTO `st_area` VALUES ('140829', '平陆县', '140800');
INSERT INTO `st_area` VALUES ('140830', '芮城县', '140800');
INSERT INTO `st_area` VALUES ('140881', '永济市', '140800');
INSERT INTO `st_area` VALUES ('140882', '河津市', '140800');
INSERT INTO `st_area` VALUES ('140901', '市辖区', '140900');
INSERT INTO `st_area` VALUES ('140902', '忻府区', '140900');
INSERT INTO `st_area` VALUES ('140921', '定襄县', '140900');
INSERT INTO `st_area` VALUES ('140922', '五台县', '140900');
INSERT INTO `st_area` VALUES ('140923', '代　县', '140900');
INSERT INTO `st_area` VALUES ('140924', '繁峙县', '140900');
INSERT INTO `st_area` VALUES ('140925', '宁武县', '140900');
INSERT INTO `st_area` VALUES ('140926', '静乐县', '140900');
INSERT INTO `st_area` VALUES ('140927', '神池县', '140900');
INSERT INTO `st_area` VALUES ('140928', '五寨县', '140900');
INSERT INTO `st_area` VALUES ('140929', '岢岚县', '140900');
INSERT INTO `st_area` VALUES ('140930', '河曲县', '140900');
INSERT INTO `st_area` VALUES ('140931', '保德县', '140900');
INSERT INTO `st_area` VALUES ('140932', '偏关县', '140900');
INSERT INTO `st_area` VALUES ('140981', '原平市', '140900');
INSERT INTO `st_area` VALUES ('141001', '市辖区', '141000');
INSERT INTO `st_area` VALUES ('141002', '尧都区', '141000');
INSERT INTO `st_area` VALUES ('141021', '曲沃县', '141000');
INSERT INTO `st_area` VALUES ('141022', '翼城县', '141000');
INSERT INTO `st_area` VALUES ('141023', '襄汾县', '141000');
INSERT INTO `st_area` VALUES ('141024', '洪洞县', '141000');
INSERT INTO `st_area` VALUES ('141025', '古　县', '141000');
INSERT INTO `st_area` VALUES ('141026', '安泽县', '141000');
INSERT INTO `st_area` VALUES ('141027', '浮山县', '141000');
INSERT INTO `st_area` VALUES ('141028', '吉　县', '141000');
INSERT INTO `st_area` VALUES ('141029', '乡宁县', '141000');
INSERT INTO `st_area` VALUES ('141030', '大宁县', '141000');
INSERT INTO `st_area` VALUES ('141031', '隰　县', '141000');
INSERT INTO `st_area` VALUES ('141032', '永和县', '141000');
INSERT INTO `st_area` VALUES ('141033', '蒲　县', '141000');
INSERT INTO `st_area` VALUES ('141034', '汾西县', '141000');
INSERT INTO `st_area` VALUES ('141081', '侯马市', '141000');
INSERT INTO `st_area` VALUES ('141082', '霍州市', '141000');
INSERT INTO `st_area` VALUES ('141101', '市辖区', '141100');
INSERT INTO `st_area` VALUES ('141102', '离石区', '141100');
INSERT INTO `st_area` VALUES ('141121', '文水县', '141100');
INSERT INTO `st_area` VALUES ('141122', '交城县', '141100');
INSERT INTO `st_area` VALUES ('141123', '兴　县', '141100');
INSERT INTO `st_area` VALUES ('141124', '临　县', '141100');
INSERT INTO `st_area` VALUES ('141125', '柳林县', '141100');
INSERT INTO `st_area` VALUES ('141126', '石楼县', '141100');
INSERT INTO `st_area` VALUES ('141127', '岚　县', '141100');
INSERT INTO `st_area` VALUES ('141128', '方山县', '141100');
INSERT INTO `st_area` VALUES ('141129', '中阳县', '141100');
INSERT INTO `st_area` VALUES ('141130', '交口县', '141100');
INSERT INTO `st_area` VALUES ('141181', '孝义市', '141100');
INSERT INTO `st_area` VALUES ('141182', '汾阳市', '141100');
INSERT INTO `st_area` VALUES ('150101', '市辖区', '150100');
INSERT INTO `st_area` VALUES ('150102', '新城区', '150100');
INSERT INTO `st_area` VALUES ('150103', '回民区', '150100');
INSERT INTO `st_area` VALUES ('150104', '玉泉区', '150100');
INSERT INTO `st_area` VALUES ('150105', '赛罕区', '150100');
INSERT INTO `st_area` VALUES ('150121', '土默特左旗', '150100');
INSERT INTO `st_area` VALUES ('150122', '托克托县', '150100');
INSERT INTO `st_area` VALUES ('150123', '和林格尔县', '150100');
INSERT INTO `st_area` VALUES ('150124', '清水河县', '150100');
INSERT INTO `st_area` VALUES ('150125', '武川县', '150100');
INSERT INTO `st_area` VALUES ('150201', '市辖区', '150200');
INSERT INTO `st_area` VALUES ('150202', '东河区', '150200');
INSERT INTO `st_area` VALUES ('150203', '昆都仑区', '150200');
INSERT INTO `st_area` VALUES ('150204', '青山区', '150200');
INSERT INTO `st_area` VALUES ('150205', '石拐区', '150200');
INSERT INTO `st_area` VALUES ('150206', '白云矿区', '150200');
INSERT INTO `st_area` VALUES ('150207', '九原区', '150200');
INSERT INTO `st_area` VALUES ('150221', '土默特右旗', '150200');
INSERT INTO `st_area` VALUES ('150222', '固阳县', '150200');
INSERT INTO `st_area` VALUES ('150223', '达尔罕茂明安联合旗', '150200');
INSERT INTO `st_area` VALUES ('150301', '市辖区', '150300');
INSERT INTO `st_area` VALUES ('150302', '海勃湾区', '150300');
INSERT INTO `st_area` VALUES ('150303', '海南区', '150300');
INSERT INTO `st_area` VALUES ('150304', '乌达区', '150300');
INSERT INTO `st_area` VALUES ('150401', '市辖区', '150400');
INSERT INTO `st_area` VALUES ('150402', '红山区', '150400');
INSERT INTO `st_area` VALUES ('150403', '元宝山区', '150400');
INSERT INTO `st_area` VALUES ('150404', '松山区', '150400');
INSERT INTO `st_area` VALUES ('150421', '阿鲁科尔沁旗', '150400');
INSERT INTO `st_area` VALUES ('150422', '巴林左旗', '150400');
INSERT INTO `st_area` VALUES ('150423', '巴林右旗', '150400');
INSERT INTO `st_area` VALUES ('150424', '林西县', '150400');
INSERT INTO `st_area` VALUES ('150425', '克什克腾旗', '150400');
INSERT INTO `st_area` VALUES ('150426', '翁牛特旗', '150400');
INSERT INTO `st_area` VALUES ('150428', '喀喇沁旗', '150400');
INSERT INTO `st_area` VALUES ('150429', '宁城县', '150400');
INSERT INTO `st_area` VALUES ('150430', '敖汉旗', '150400');
INSERT INTO `st_area` VALUES ('150501', '市辖区', '150500');
INSERT INTO `st_area` VALUES ('150502', '科尔沁区', '150500');
INSERT INTO `st_area` VALUES ('150521', '科尔沁左翼中旗', '150500');
INSERT INTO `st_area` VALUES ('150522', '科尔沁左翼后旗', '150500');
INSERT INTO `st_area` VALUES ('150523', '开鲁县', '150500');
INSERT INTO `st_area` VALUES ('150524', '库伦旗', '150500');
INSERT INTO `st_area` VALUES ('150525', '奈曼旗', '150500');
INSERT INTO `st_area` VALUES ('150526', '扎鲁特旗', '150500');
INSERT INTO `st_area` VALUES ('150581', '霍林郭勒市', '150500');
INSERT INTO `st_area` VALUES ('150602', '东胜区', '150600');
INSERT INTO `st_area` VALUES ('150621', '达拉特旗', '150600');
INSERT INTO `st_area` VALUES ('150622', '准格尔旗', '150600');
INSERT INTO `st_area` VALUES ('150623', '鄂托克前旗', '150600');
INSERT INTO `st_area` VALUES ('150624', '鄂托克旗', '150600');
INSERT INTO `st_area` VALUES ('150625', '杭锦旗', '150600');
INSERT INTO `st_area` VALUES ('150626', '乌审旗', '150600');
INSERT INTO `st_area` VALUES ('150627', '伊金霍洛旗', '150600');
INSERT INTO `st_area` VALUES ('150701', '市辖区', '150700');
INSERT INTO `st_area` VALUES ('150702', '海拉尔区', '150700');
INSERT INTO `st_area` VALUES ('150721', '阿荣旗', '150700');
INSERT INTO `st_area` VALUES ('150722', '莫力达瓦达斡尔族自治旗', '150700');
INSERT INTO `st_area` VALUES ('150723', '鄂伦春自治旗', '150700');
INSERT INTO `st_area` VALUES ('150724', '鄂温克族自治旗', '150700');
INSERT INTO `st_area` VALUES ('150725', '陈巴尔虎旗', '150700');
INSERT INTO `st_area` VALUES ('150726', '新巴尔虎左旗', '150700');
INSERT INTO `st_area` VALUES ('150727', '新巴尔虎右旗', '150700');
INSERT INTO `st_area` VALUES ('150781', '满洲里市', '150700');
INSERT INTO `st_area` VALUES ('150782', '牙克石市', '150700');
INSERT INTO `st_area` VALUES ('150783', '扎兰屯市', '150700');
INSERT INTO `st_area` VALUES ('150784', '额尔古纳市', '150700');
INSERT INTO `st_area` VALUES ('150785', '根河市', '150700');
INSERT INTO `st_area` VALUES ('150801', '市辖区', '150800');
INSERT INTO `st_area` VALUES ('150802', '临河区', '150800');
INSERT INTO `st_area` VALUES ('150821', '五原县', '150800');
INSERT INTO `st_area` VALUES ('150822', '磴口县', '150800');
INSERT INTO `st_area` VALUES ('150823', '乌拉特前旗', '150800');
INSERT INTO `st_area` VALUES ('150824', '乌拉特中旗', '150800');
INSERT INTO `st_area` VALUES ('150825', '乌拉特后旗', '150800');
INSERT INTO `st_area` VALUES ('150826', '杭锦后旗', '150800');
INSERT INTO `st_area` VALUES ('150901', '市辖区', '150900');
INSERT INTO `st_area` VALUES ('150902', '集宁区', '150900');
INSERT INTO `st_area` VALUES ('150921', '卓资县', '150900');
INSERT INTO `st_area` VALUES ('150922', '化德县', '150900');
INSERT INTO `st_area` VALUES ('150923', '商都县', '150900');
INSERT INTO `st_area` VALUES ('150924', '兴和县', '150900');
INSERT INTO `st_area` VALUES ('150925', '凉城县', '150900');
INSERT INTO `st_area` VALUES ('150926', '察哈尔右翼前旗', '150900');
INSERT INTO `st_area` VALUES ('150927', '察哈尔右翼中旗', '150900');
INSERT INTO `st_area` VALUES ('150928', '察哈尔右翼后旗', '150900');
INSERT INTO `st_area` VALUES ('150929', '四子王旗', '150900');
INSERT INTO `st_area` VALUES ('150981', '丰镇市', '150900');
INSERT INTO `st_area` VALUES ('152201', '乌兰浩特市', '152200');
INSERT INTO `st_area` VALUES ('152202', '阿尔山市', '152200');
INSERT INTO `st_area` VALUES ('152221', '科尔沁右翼前旗', '152200');
INSERT INTO `st_area` VALUES ('152222', '科尔沁右翼中旗', '152200');
INSERT INTO `st_area` VALUES ('152223', '扎赉特旗', '152200');
INSERT INTO `st_area` VALUES ('152224', '突泉县', '152200');
INSERT INTO `st_area` VALUES ('152501', '二连浩特市', '152500');
INSERT INTO `st_area` VALUES ('152502', '锡林浩特市', '152500');
INSERT INTO `st_area` VALUES ('152522', '阿巴嘎旗', '152500');
INSERT INTO `st_area` VALUES ('152523', '苏尼特左旗', '152500');
INSERT INTO `st_area` VALUES ('152524', '苏尼特右旗', '152500');
INSERT INTO `st_area` VALUES ('152525', '东乌珠穆沁旗', '152500');
INSERT INTO `st_area` VALUES ('152526', '西乌珠穆沁旗', '152500');
INSERT INTO `st_area` VALUES ('152527', '太仆寺旗', '152500');
INSERT INTO `st_area` VALUES ('152528', '镶黄旗', '152500');
INSERT INTO `st_area` VALUES ('152529', '正镶白旗', '152500');
INSERT INTO `st_area` VALUES ('152530', '正蓝旗', '152500');
INSERT INTO `st_area` VALUES ('152531', '多伦县', '152500');
INSERT INTO `st_area` VALUES ('152921', '阿拉善左旗', '152900');
INSERT INTO `st_area` VALUES ('152922', '阿拉善右旗', '152900');
INSERT INTO `st_area` VALUES ('152923', '额济纳旗', '152900');
INSERT INTO `st_area` VALUES ('210101', '市辖区', '210100');
INSERT INTO `st_area` VALUES ('210102', '和平区', '210100');
INSERT INTO `st_area` VALUES ('210103', '沈河区', '210100');
INSERT INTO `st_area` VALUES ('210104', '大东区', '210100');
INSERT INTO `st_area` VALUES ('210105', '皇姑区', '210100');
INSERT INTO `st_area` VALUES ('210106', '铁西区', '210100');
INSERT INTO `st_area` VALUES ('210111', '苏家屯区', '210100');
INSERT INTO `st_area` VALUES ('210112', '东陵区', '210100');
INSERT INTO `st_area` VALUES ('210113', '新城子区', '210100');
INSERT INTO `st_area` VALUES ('210114', '于洪区', '210100');
INSERT INTO `st_area` VALUES ('210122', '辽中县', '210100');
INSERT INTO `st_area` VALUES ('210123', '康平县', '210100');
INSERT INTO `st_area` VALUES ('210124', '法库县', '210100');
INSERT INTO `st_area` VALUES ('210181', '新民市', '210100');
INSERT INTO `st_area` VALUES ('210201', '市辖区', '210200');
INSERT INTO `st_area` VALUES ('210202', '中山区', '210200');
INSERT INTO `st_area` VALUES ('210203', '西岗区', '210200');
INSERT INTO `st_area` VALUES ('210204', '沙河口区', '210200');
INSERT INTO `st_area` VALUES ('210211', '甘井子区', '210200');
INSERT INTO `st_area` VALUES ('210212', '旅顺口区', '210200');
INSERT INTO `st_area` VALUES ('210213', '金州区', '210200');
INSERT INTO `st_area` VALUES ('210224', '长海县', '210200');
INSERT INTO `st_area` VALUES ('210281', '瓦房店市', '210200');
INSERT INTO `st_area` VALUES ('210282', '普兰店市', '210200');
INSERT INTO `st_area` VALUES ('210283', '庄河市', '210200');
INSERT INTO `st_area` VALUES ('210301', '市辖区', '210300');
INSERT INTO `st_area` VALUES ('210302', '铁东区', '210300');
INSERT INTO `st_area` VALUES ('210303', '铁西区', '210300');
INSERT INTO `st_area` VALUES ('210304', '立山区', '210300');
INSERT INTO `st_area` VALUES ('210311', '千山区', '210300');
INSERT INTO `st_area` VALUES ('210321', '台安县', '210300');
INSERT INTO `st_area` VALUES ('210323', '岫岩满族自治县', '210300');
INSERT INTO `st_area` VALUES ('210381', '海城市', '210300');
INSERT INTO `st_area` VALUES ('210401', '市辖区', '210400');
INSERT INTO `st_area` VALUES ('210402', '新抚区', '210400');
INSERT INTO `st_area` VALUES ('210403', '东洲区', '210400');
INSERT INTO `st_area` VALUES ('210404', '望花区', '210400');
INSERT INTO `st_area` VALUES ('210411', '顺城区', '210400');
INSERT INTO `st_area` VALUES ('210421', '抚顺县', '210400');
INSERT INTO `st_area` VALUES ('210422', '新宾满族自治县', '210400');
INSERT INTO `st_area` VALUES ('210423', '清原满族自治县', '210400');
INSERT INTO `st_area` VALUES ('210501', '市辖区', '210500');
INSERT INTO `st_area` VALUES ('210502', '平山区', '210500');
INSERT INTO `st_area` VALUES ('210503', '溪湖区', '210500');
INSERT INTO `st_area` VALUES ('210504', '明山区', '210500');
INSERT INTO `st_area` VALUES ('210505', '南芬区', '210500');
INSERT INTO `st_area` VALUES ('210521', '本溪满族自治县', '210500');
INSERT INTO `st_area` VALUES ('210522', '桓仁满族自治县', '210500');
INSERT INTO `st_area` VALUES ('210601', '市辖区', '210600');
INSERT INTO `st_area` VALUES ('210602', '元宝区', '210600');
INSERT INTO `st_area` VALUES ('210603', '振兴区', '210600');
INSERT INTO `st_area` VALUES ('210604', '振安区', '210600');
INSERT INTO `st_area` VALUES ('210624', '宽甸满族自治县', '210600');
INSERT INTO `st_area` VALUES ('210681', '东港市', '210600');
INSERT INTO `st_area` VALUES ('210682', '凤城市', '210600');
INSERT INTO `st_area` VALUES ('210701', '市辖区', '210700');
INSERT INTO `st_area` VALUES ('210702', '古塔区', '210700');
INSERT INTO `st_area` VALUES ('210703', '凌河区', '210700');
INSERT INTO `st_area` VALUES ('210711', '太和区', '210700');
INSERT INTO `st_area` VALUES ('210726', '黑山县', '210700');
INSERT INTO `st_area` VALUES ('210727', '义　县', '210700');
INSERT INTO `st_area` VALUES ('210781', '凌海市', '210700');
INSERT INTO `st_area` VALUES ('210782', '北宁市', '210700');
INSERT INTO `st_area` VALUES ('210801', '市辖区', '210800');
INSERT INTO `st_area` VALUES ('210802', '站前区', '210800');
INSERT INTO `st_area` VALUES ('210803', '西市区', '210800');
INSERT INTO `st_area` VALUES ('210804', '鲅鱼圈区', '210800');
INSERT INTO `st_area` VALUES ('210811', '老边区', '210800');
INSERT INTO `st_area` VALUES ('210881', '盖州市', '210800');
INSERT INTO `st_area` VALUES ('210882', '大石桥市', '210800');
INSERT INTO `st_area` VALUES ('210901', '市辖区', '210900');
INSERT INTO `st_area` VALUES ('210902', '海州区', '210900');
INSERT INTO `st_area` VALUES ('210903', '新邱区', '210900');
INSERT INTO `st_area` VALUES ('210904', '太平区', '210900');
INSERT INTO `st_area` VALUES ('210905', '清河门区', '210900');
INSERT INTO `st_area` VALUES ('210911', '细河区', '210900');
INSERT INTO `st_area` VALUES ('210921', '阜新蒙古族自治县', '210900');
INSERT INTO `st_area` VALUES ('210922', '彰武县', '210900');
INSERT INTO `st_area` VALUES ('211001', '市辖区', '211000');
INSERT INTO `st_area` VALUES ('211002', '白塔区', '211000');
INSERT INTO `st_area` VALUES ('211003', '文圣区', '211000');
INSERT INTO `st_area` VALUES ('211004', '宏伟区', '211000');
INSERT INTO `st_area` VALUES ('211005', '弓长岭区', '211000');
INSERT INTO `st_area` VALUES ('211011', '太子河区', '211000');
INSERT INTO `st_area` VALUES ('211021', '辽阳县', '211000');
INSERT INTO `st_area` VALUES ('211081', '灯塔市', '211000');
INSERT INTO `st_area` VALUES ('211101', '市辖区', '211100');
INSERT INTO `st_area` VALUES ('211102', '双台子区', '211100');
INSERT INTO `st_area` VALUES ('211103', '兴隆台区', '211100');
INSERT INTO `st_area` VALUES ('211121', '大洼县', '211100');
INSERT INTO `st_area` VALUES ('211122', '盘山县', '211100');
INSERT INTO `st_area` VALUES ('211201', '市辖区', '211200');
INSERT INTO `st_area` VALUES ('211202', '银州区', '211200');
INSERT INTO `st_area` VALUES ('211204', '清河区', '211200');
INSERT INTO `st_area` VALUES ('211221', '铁岭县', '211200');
INSERT INTO `st_area` VALUES ('211223', '西丰县', '211200');
INSERT INTO `st_area` VALUES ('211224', '昌图县', '211200');
INSERT INTO `st_area` VALUES ('211281', '调兵山市', '211200');
INSERT INTO `st_area` VALUES ('211282', '开原市', '211200');
INSERT INTO `st_area` VALUES ('211301', '市辖区', '211300');
INSERT INTO `st_area` VALUES ('211302', '双塔区', '211300');
INSERT INTO `st_area` VALUES ('211303', '龙城区', '211300');
INSERT INTO `st_area` VALUES ('211321', '朝阳县', '211300');
INSERT INTO `st_area` VALUES ('211322', '建平县', '211300');
INSERT INTO `st_area` VALUES ('211324', '喀喇沁左翼蒙古族自治县', '211300');
INSERT INTO `st_area` VALUES ('211381', '北票市', '211300');
INSERT INTO `st_area` VALUES ('211382', '凌源市', '211300');
INSERT INTO `st_area` VALUES ('211401', '市辖区', '211400');
INSERT INTO `st_area` VALUES ('211402', '连山区', '211400');
INSERT INTO `st_area` VALUES ('211403', '龙港区', '211400');
INSERT INTO `st_area` VALUES ('211404', '南票区', '211400');
INSERT INTO `st_area` VALUES ('211421', '绥中县', '211400');
INSERT INTO `st_area` VALUES ('211422', '建昌县', '211400');
INSERT INTO `st_area` VALUES ('211481', '兴城市', '211400');
INSERT INTO `st_area` VALUES ('220101', '市辖区', '220100');
INSERT INTO `st_area` VALUES ('220102', '南关区', '220100');
INSERT INTO `st_area` VALUES ('220103', '宽城区', '220100');
INSERT INTO `st_area` VALUES ('220104', '朝阳区', '220100');
INSERT INTO `st_area` VALUES ('220105', '二道区', '220100');
INSERT INTO `st_area` VALUES ('220106', '绿园区', '220100');
INSERT INTO `st_area` VALUES ('220112', '双阳区', '220100');
INSERT INTO `st_area` VALUES ('220122', '农安县', '220100');
INSERT INTO `st_area` VALUES ('220181', '九台市', '220100');
INSERT INTO `st_area` VALUES ('220182', '榆树市', '220100');
INSERT INTO `st_area` VALUES ('220183', '德惠市', '220100');
INSERT INTO `st_area` VALUES ('220201', '市辖区', '220200');
INSERT INTO `st_area` VALUES ('220202', '昌邑区', '220200');
INSERT INTO `st_area` VALUES ('220203', '龙潭区', '220200');
INSERT INTO `st_area` VALUES ('220204', '船营区', '220200');
INSERT INTO `st_area` VALUES ('220211', '丰满区', '220200');
INSERT INTO `st_area` VALUES ('220221', '永吉县', '220200');
INSERT INTO `st_area` VALUES ('220281', '蛟河市', '220200');
INSERT INTO `st_area` VALUES ('220282', '桦甸市', '220200');
INSERT INTO `st_area` VALUES ('220283', '舒兰市', '220200');
INSERT INTO `st_area` VALUES ('220284', '磐石市', '220200');
INSERT INTO `st_area` VALUES ('220301', '市辖区', '220300');
INSERT INTO `st_area` VALUES ('220302', '铁西区', '220300');
INSERT INTO `st_area` VALUES ('220303', '铁东区', '220300');
INSERT INTO `st_area` VALUES ('220322', '梨树县', '220300');
INSERT INTO `st_area` VALUES ('220323', '伊通满族自治县', '220300');
INSERT INTO `st_area` VALUES ('220381', '公主岭市', '220300');
INSERT INTO `st_area` VALUES ('220382', '双辽市', '220300');
INSERT INTO `st_area` VALUES ('220401', '市辖区', '220400');
INSERT INTO `st_area` VALUES ('220402', '龙山区', '220400');
INSERT INTO `st_area` VALUES ('220403', '西安区', '220400');
INSERT INTO `st_area` VALUES ('220421', '东丰县', '220400');
INSERT INTO `st_area` VALUES ('220422', '东辽县', '220400');
INSERT INTO `st_area` VALUES ('220501', '市辖区', '220500');
INSERT INTO `st_area` VALUES ('220502', '东昌区', '220500');
INSERT INTO `st_area` VALUES ('220503', '二道江区', '220500');
INSERT INTO `st_area` VALUES ('220521', '通化县', '220500');
INSERT INTO `st_area` VALUES ('220523', '辉南县', '220500');
INSERT INTO `st_area` VALUES ('220524', '柳河县', '220500');
INSERT INTO `st_area` VALUES ('220581', '梅河口市', '220500');
INSERT INTO `st_area` VALUES ('220582', '集安市', '220500');
INSERT INTO `st_area` VALUES ('220601', '市辖区', '220600');
INSERT INTO `st_area` VALUES ('220602', '八道江区', '220600');
INSERT INTO `st_area` VALUES ('220621', '抚松县', '220600');
INSERT INTO `st_area` VALUES ('220622', '靖宇县', '220600');
INSERT INTO `st_area` VALUES ('220623', '长白朝鲜族自治县', '220600');
INSERT INTO `st_area` VALUES ('220625', '江源县', '220600');
INSERT INTO `st_area` VALUES ('220681', '临江市', '220600');
INSERT INTO `st_area` VALUES ('220701', '市辖区', '220700');
INSERT INTO `st_area` VALUES ('220702', '宁江区', '220700');
INSERT INTO `st_area` VALUES ('220721', '前郭尔罗斯蒙古族自治县', '220700');
INSERT INTO `st_area` VALUES ('220722', '长岭县', '220700');
INSERT INTO `st_area` VALUES ('220723', '乾安县', '220700');
INSERT INTO `st_area` VALUES ('220724', '扶余县', '220700');
INSERT INTO `st_area` VALUES ('220801', '市辖区', '220800');
INSERT INTO `st_area` VALUES ('220802', '洮北区', '220800');
INSERT INTO `st_area` VALUES ('220821', '镇赉县', '220800');
INSERT INTO `st_area` VALUES ('220822', '通榆县', '220800');
INSERT INTO `st_area` VALUES ('220881', '洮南市', '220800');
INSERT INTO `st_area` VALUES ('220882', '大安市', '220800');
INSERT INTO `st_area` VALUES ('222401', '延吉市', '222400');
INSERT INTO `st_area` VALUES ('222402', '图们市', '222400');
INSERT INTO `st_area` VALUES ('222403', '敦化市', '222400');
INSERT INTO `st_area` VALUES ('222404', '珲春市', '222400');
INSERT INTO `st_area` VALUES ('222405', '龙井市', '222400');
INSERT INTO `st_area` VALUES ('222406', '和龙市', '222400');
INSERT INTO `st_area` VALUES ('222424', '汪清县', '222400');
INSERT INTO `st_area` VALUES ('222426', '安图县', '222400');
INSERT INTO `st_area` VALUES ('230101', '市辖区', '230100');
INSERT INTO `st_area` VALUES ('230102', '道里区', '230100');
INSERT INTO `st_area` VALUES ('230103', '南岗区', '230100');
INSERT INTO `st_area` VALUES ('230104', '道外区', '230100');
INSERT INTO `st_area` VALUES ('230106', '香坊区', '230100');
INSERT INTO `st_area` VALUES ('230107', '动力区', '230100');
INSERT INTO `st_area` VALUES ('230108', '平房区', '230100');
INSERT INTO `st_area` VALUES ('230109', '松北区', '230100');
INSERT INTO `st_area` VALUES ('230111', '呼兰区', '230100');
INSERT INTO `st_area` VALUES ('230123', '依兰县', '230100');
INSERT INTO `st_area` VALUES ('230124', '方正县', '230100');
INSERT INTO `st_area` VALUES ('230125', '宾　县', '230100');
INSERT INTO `st_area` VALUES ('230126', '巴彦县', '230100');
INSERT INTO `st_area` VALUES ('230127', '木兰县', '230100');
INSERT INTO `st_area` VALUES ('230128', '通河县', '230100');
INSERT INTO `st_area` VALUES ('230129', '延寿县', '230100');
INSERT INTO `st_area` VALUES ('230181', '阿城市', '230100');
INSERT INTO `st_area` VALUES ('230182', '双城市', '230100');
INSERT INTO `st_area` VALUES ('230183', '尚志市', '230100');
INSERT INTO `st_area` VALUES ('230184', '五常市', '230100');
INSERT INTO `st_area` VALUES ('230201', '市辖区', '230200');
INSERT INTO `st_area` VALUES ('230202', '龙沙区', '230200');
INSERT INTO `st_area` VALUES ('230203', '建华区', '230200');
INSERT INTO `st_area` VALUES ('230204', '铁锋区', '230200');
INSERT INTO `st_area` VALUES ('230205', '昂昂溪区', '230200');
INSERT INTO `st_area` VALUES ('230206', '富拉尔基区', '230200');
INSERT INTO `st_area` VALUES ('230207', '碾子山区', '230200');
INSERT INTO `st_area` VALUES ('230208', '梅里斯达斡尔族区', '230200');
INSERT INTO `st_area` VALUES ('230221', '龙江县', '230200');
INSERT INTO `st_area` VALUES ('230223', '依安县', '230200');
INSERT INTO `st_area` VALUES ('230224', '泰来县', '230200');
INSERT INTO `st_area` VALUES ('230225', '甘南县', '230200');
INSERT INTO `st_area` VALUES ('230227', '富裕县', '230200');
INSERT INTO `st_area` VALUES ('230229', '克山县', '230200');
INSERT INTO `st_area` VALUES ('230230', '克东县', '230200');
INSERT INTO `st_area` VALUES ('230231', '拜泉县', '230200');
INSERT INTO `st_area` VALUES ('230281', '讷河市', '230200');
INSERT INTO `st_area` VALUES ('230301', '市辖区', '230300');
INSERT INTO `st_area` VALUES ('230302', '鸡冠区', '230300');
INSERT INTO `st_area` VALUES ('230303', '恒山区', '230300');
INSERT INTO `st_area` VALUES ('230304', '滴道区', '230300');
INSERT INTO `st_area` VALUES ('230305', '梨树区', '230300');
INSERT INTO `st_area` VALUES ('230306', '城子河区', '230300');
INSERT INTO `st_area` VALUES ('230307', '麻山区', '230300');
INSERT INTO `st_area` VALUES ('230321', '鸡东县', '230300');
INSERT INTO `st_area` VALUES ('230381', '虎林市', '230300');
INSERT INTO `st_area` VALUES ('230382', '密山市', '230300');
INSERT INTO `st_area` VALUES ('230401', '市辖区', '230400');
INSERT INTO `st_area` VALUES ('230402', '向阳区', '230400');
INSERT INTO `st_area` VALUES ('230403', '工农区', '230400');
INSERT INTO `st_area` VALUES ('230404', '南山区', '230400');
INSERT INTO `st_area` VALUES ('230405', '兴安区', '230400');
INSERT INTO `st_area` VALUES ('230406', '东山区', '230400');
INSERT INTO `st_area` VALUES ('230407', '兴山区', '230400');
INSERT INTO `st_area` VALUES ('230421', '萝北县', '230400');
INSERT INTO `st_area` VALUES ('230422', '绥滨县', '230400');
INSERT INTO `st_area` VALUES ('230501', '市辖区', '230500');
INSERT INTO `st_area` VALUES ('230502', '尖山区', '230500');
INSERT INTO `st_area` VALUES ('230503', '岭东区', '230500');
INSERT INTO `st_area` VALUES ('230505', '四方台区', '230500');
INSERT INTO `st_area` VALUES ('230506', '宝山区', '230500');
INSERT INTO `st_area` VALUES ('230521', '集贤县', '230500');
INSERT INTO `st_area` VALUES ('230522', '友谊县', '230500');
INSERT INTO `st_area` VALUES ('230523', '宝清县', '230500');
INSERT INTO `st_area` VALUES ('230524', '饶河县', '230500');
INSERT INTO `st_area` VALUES ('230601', '市辖区', '230600');
INSERT INTO `st_area` VALUES ('230602', '萨尔图区', '230600');
INSERT INTO `st_area` VALUES ('230603', '龙凤区', '230600');
INSERT INTO `st_area` VALUES ('230604', '让胡路区', '230600');
INSERT INTO `st_area` VALUES ('230605', '红岗区', '230600');
INSERT INTO `st_area` VALUES ('230606', '大同区', '230600');
INSERT INTO `st_area` VALUES ('230621', '肇州县', '230600');
INSERT INTO `st_area` VALUES ('230622', '肇源县', '230600');
INSERT INTO `st_area` VALUES ('230623', '林甸县', '230600');
INSERT INTO `st_area` VALUES ('230624', '杜尔伯特蒙古族自治县', '230600');
INSERT INTO `st_area` VALUES ('230701', '市辖区', '230700');
INSERT INTO `st_area` VALUES ('230702', '伊春区', '230700');
INSERT INTO `st_area` VALUES ('230703', '南岔区', '230700');
INSERT INTO `st_area` VALUES ('230704', '友好区', '230700');
INSERT INTO `st_area` VALUES ('230705', '西林区', '230700');
INSERT INTO `st_area` VALUES ('230706', '翠峦区', '230700');
INSERT INTO `st_area` VALUES ('230707', '新青区', '230700');
INSERT INTO `st_area` VALUES ('230708', '美溪区', '230700');
INSERT INTO `st_area` VALUES ('230709', '金山屯区', '230700');
INSERT INTO `st_area` VALUES ('230710', '五营区', '230700');
INSERT INTO `st_area` VALUES ('230711', '乌马河区', '230700');
INSERT INTO `st_area` VALUES ('230712', '汤旺河区', '230700');
INSERT INTO `st_area` VALUES ('230713', '带岭区', '230700');
INSERT INTO `st_area` VALUES ('230714', '乌伊岭区', '230700');
INSERT INTO `st_area` VALUES ('230715', '红星区', '230700');
INSERT INTO `st_area` VALUES ('230716', '上甘岭区', '230700');
INSERT INTO `st_area` VALUES ('230722', '嘉荫县', '230700');
INSERT INTO `st_area` VALUES ('230781', '铁力市', '230700');
INSERT INTO `st_area` VALUES ('230801', '市辖区', '230800');
INSERT INTO `st_area` VALUES ('230802', '永红区', '230800');
INSERT INTO `st_area` VALUES ('230803', '向阳区', '230800');
INSERT INTO `st_area` VALUES ('230804', '前进区', '230800');
INSERT INTO `st_area` VALUES ('230805', '东风区', '230800');
INSERT INTO `st_area` VALUES ('230811', '郊　区', '230800');
INSERT INTO `st_area` VALUES ('230822', '桦南县', '230800');
INSERT INTO `st_area` VALUES ('230826', '桦川县', '230800');
INSERT INTO `st_area` VALUES ('230828', '汤原县', '230800');
INSERT INTO `st_area` VALUES ('230833', '抚远县', '230800');
INSERT INTO `st_area` VALUES ('230881', '同江市', '230800');
INSERT INTO `st_area` VALUES ('230882', '富锦市', '230800');
INSERT INTO `st_area` VALUES ('230901', '市辖区', '230900');
INSERT INTO `st_area` VALUES ('230902', '新兴区', '230900');
INSERT INTO `st_area` VALUES ('230903', '桃山区', '230900');
INSERT INTO `st_area` VALUES ('230904', '茄子河区', '230900');
INSERT INTO `st_area` VALUES ('230921', '勃利县', '230900');
INSERT INTO `st_area` VALUES ('231001', '市辖区', '231000');
INSERT INTO `st_area` VALUES ('231002', '东安区', '231000');
INSERT INTO `st_area` VALUES ('231003', '阳明区', '231000');
INSERT INTO `st_area` VALUES ('231004', '爱民区', '231000');
INSERT INTO `st_area` VALUES ('231005', '西安区', '231000');
INSERT INTO `st_area` VALUES ('231024', '东宁县', '231000');
INSERT INTO `st_area` VALUES ('231025', '林口县', '231000');
INSERT INTO `st_area` VALUES ('231081', '绥芬河市', '231000');
INSERT INTO `st_area` VALUES ('231083', '海林市', '231000');
INSERT INTO `st_area` VALUES ('231084', '宁安市', '231000');
INSERT INTO `st_area` VALUES ('231085', '穆棱市', '231000');
INSERT INTO `st_area` VALUES ('231101', '市辖区', '231100');
INSERT INTO `st_area` VALUES ('231102', '爱辉区', '231100');
INSERT INTO `st_area` VALUES ('231121', '嫩江县', '231100');
INSERT INTO `st_area` VALUES ('231123', '逊克县', '231100');
INSERT INTO `st_area` VALUES ('231124', '孙吴县', '231100');
INSERT INTO `st_area` VALUES ('231181', '北安市', '231100');
INSERT INTO `st_area` VALUES ('231182', '五大连池市', '231100');
INSERT INTO `st_area` VALUES ('231201', '市辖区', '231200');
INSERT INTO `st_area` VALUES ('231202', '北林区', '231200');
INSERT INTO `st_area` VALUES ('231221', '望奎县', '231200');
INSERT INTO `st_area` VALUES ('231222', '兰西县', '231200');
INSERT INTO `st_area` VALUES ('231223', '青冈县', '231200');
INSERT INTO `st_area` VALUES ('231224', '庆安县', '231200');
INSERT INTO `st_area` VALUES ('231225', '明水县', '231200');
INSERT INTO `st_area` VALUES ('231226', '绥棱县', '231200');
INSERT INTO `st_area` VALUES ('231281', '安达市', '231200');
INSERT INTO `st_area` VALUES ('231282', '肇东市', '231200');
INSERT INTO `st_area` VALUES ('231283', '海伦市', '231200');
INSERT INTO `st_area` VALUES ('232721', '呼玛县', '232700');
INSERT INTO `st_area` VALUES ('232722', '塔河县', '232700');
INSERT INTO `st_area` VALUES ('232723', '漠河县', '232700');
INSERT INTO `st_area` VALUES ('310101', '黄浦区', '310100');
INSERT INTO `st_area` VALUES ('310103', '卢湾区', '310100');
INSERT INTO `st_area` VALUES ('310104', '徐汇区', '310100');
INSERT INTO `st_area` VALUES ('310105', '长宁区', '310100');
INSERT INTO `st_area` VALUES ('310106', '静安区', '310100');
INSERT INTO `st_area` VALUES ('310107', '普陀区', '310100');
INSERT INTO `st_area` VALUES ('310108', '闸北区', '310100');
INSERT INTO `st_area` VALUES ('310109', '虹口区', '310100');
INSERT INTO `st_area` VALUES ('310110', '杨浦区', '310100');
INSERT INTO `st_area` VALUES ('310112', '闵行区', '310100');
INSERT INTO `st_area` VALUES ('310113', '宝山区', '310100');
INSERT INTO `st_area` VALUES ('310114', '嘉定区', '310100');
INSERT INTO `st_area` VALUES ('310115', '浦东新区', '310100');
INSERT INTO `st_area` VALUES ('310116', '金山区', '310100');
INSERT INTO `st_area` VALUES ('310117', '松江区', '310100');
INSERT INTO `st_area` VALUES ('310118', '青浦区', '310100');
INSERT INTO `st_area` VALUES ('310119', '南汇区', '310100');
INSERT INTO `st_area` VALUES ('310120', '奉贤区', '310100');
INSERT INTO `st_area` VALUES ('310230', '崇明县', '310100');
INSERT INTO `st_area` VALUES ('320101', '市辖区', '320100');
INSERT INTO `st_area` VALUES ('320102', '玄武区', '320100');
INSERT INTO `st_area` VALUES ('320103', '白下区', '320100');
INSERT INTO `st_area` VALUES ('320104', '秦淮区', '320100');
INSERT INTO `st_area` VALUES ('320105', '建邺区', '320100');
INSERT INTO `st_area` VALUES ('320106', '鼓楼区', '320100');
INSERT INTO `st_area` VALUES ('320107', '下关区', '320100');
INSERT INTO `st_area` VALUES ('320111', '浦口区', '320100');
INSERT INTO `st_area` VALUES ('320113', '栖霞区', '320100');
INSERT INTO `st_area` VALUES ('320114', '雨花台区', '320100');
INSERT INTO `st_area` VALUES ('320115', '江宁区', '320100');
INSERT INTO `st_area` VALUES ('320116', '六合区', '320100');
INSERT INTO `st_area` VALUES ('320124', '溧水县', '320100');
INSERT INTO `st_area` VALUES ('320125', '高淳县', '320100');
INSERT INTO `st_area` VALUES ('320201', '市辖区', '320200');
INSERT INTO `st_area` VALUES ('320202', '崇安区', '320200');
INSERT INTO `st_area` VALUES ('320203', '南长区', '320200');
INSERT INTO `st_area` VALUES ('320204', '北塘区', '320200');
INSERT INTO `st_area` VALUES ('320205', '锡山区', '320200');
INSERT INTO `st_area` VALUES ('320206', '惠山区', '320200');
INSERT INTO `st_area` VALUES ('320211', '滨湖区', '320200');
INSERT INTO `st_area` VALUES ('320281', '江阴市', '320200');
INSERT INTO `st_area` VALUES ('320282', '宜兴市', '320200');
INSERT INTO `st_area` VALUES ('320301', '市辖区', '320300');
INSERT INTO `st_area` VALUES ('320302', '鼓楼区', '320300');
INSERT INTO `st_area` VALUES ('320303', '云龙区', '320300');
INSERT INTO `st_area` VALUES ('320304', '九里区', '320300');
INSERT INTO `st_area` VALUES ('320305', '贾汪区', '320300');
INSERT INTO `st_area` VALUES ('320311', '泉山区', '320300');
INSERT INTO `st_area` VALUES ('320321', '丰　县', '320300');
INSERT INTO `st_area` VALUES ('320322', '沛　县', '320300');
INSERT INTO `st_area` VALUES ('320323', '铜山县', '320300');
INSERT INTO `st_area` VALUES ('320324', '睢宁县', '320300');
INSERT INTO `st_area` VALUES ('320381', '新沂市', '320300');
INSERT INTO `st_area` VALUES ('320382', '邳州市', '320300');
INSERT INTO `st_area` VALUES ('320401', '市辖区', '320400');
INSERT INTO `st_area` VALUES ('320402', '天宁区', '320400');
INSERT INTO `st_area` VALUES ('320404', '钟楼区', '320400');
INSERT INTO `st_area` VALUES ('320405', '戚墅堰区', '320400');
INSERT INTO `st_area` VALUES ('320411', '新北区', '320400');
INSERT INTO `st_area` VALUES ('320412', '武进区', '320400');
INSERT INTO `st_area` VALUES ('320481', '溧阳市', '320400');
INSERT INTO `st_area` VALUES ('320482', '金坛市', '320400');
INSERT INTO `st_area` VALUES ('320501', '市辖区', '320500');
INSERT INTO `st_area` VALUES ('320502', '沧浪区', '320500');
INSERT INTO `st_area` VALUES ('320503', '平江区', '320500');
INSERT INTO `st_area` VALUES ('320504', '金阊区', '320500');
INSERT INTO `st_area` VALUES ('320505', '虎丘区', '320500');
INSERT INTO `st_area` VALUES ('320506', '吴中区', '320500');
INSERT INTO `st_area` VALUES ('320507', '相城区', '320500');
INSERT INTO `st_area` VALUES ('320581', '常熟市', '320500');
INSERT INTO `st_area` VALUES ('320582', '张家港市', '320500');
INSERT INTO `st_area` VALUES ('320583', '昆山市', '320500');
INSERT INTO `st_area` VALUES ('320584', '吴江市', '320500');
INSERT INTO `st_area` VALUES ('320585', '太仓市', '320500');
INSERT INTO `st_area` VALUES ('320601', '市辖区', '320600');
INSERT INTO `st_area` VALUES ('320602', '崇川区', '320600');
INSERT INTO `st_area` VALUES ('320611', '港闸区', '320600');
INSERT INTO `st_area` VALUES ('320621', '海安县', '320600');
INSERT INTO `st_area` VALUES ('320623', '如东县', '320600');
INSERT INTO `st_area` VALUES ('320681', '启东市', '320600');
INSERT INTO `st_area` VALUES ('320682', '如皋市', '320600');
INSERT INTO `st_area` VALUES ('320683', '通州市', '320600');
INSERT INTO `st_area` VALUES ('320684', '海门市', '320600');
INSERT INTO `st_area` VALUES ('320701', '市辖区', '320700');
INSERT INTO `st_area` VALUES ('320703', '连云区', '320700');
INSERT INTO `st_area` VALUES ('320705', '新浦区', '320700');
INSERT INTO `st_area` VALUES ('320706', '海州区', '320700');
INSERT INTO `st_area` VALUES ('320721', '赣榆县', '320700');
INSERT INTO `st_area` VALUES ('320722', '东海县', '320700');
INSERT INTO `st_area` VALUES ('320723', '灌云县', '320700');
INSERT INTO `st_area` VALUES ('320724', '灌南县', '320700');
INSERT INTO `st_area` VALUES ('320801', '市辖区', '320800');
INSERT INTO `st_area` VALUES ('320802', '清河区', '320800');
INSERT INTO `st_area` VALUES ('320803', '楚州区', '320800');
INSERT INTO `st_area` VALUES ('320804', '淮阴区', '320800');
INSERT INTO `st_area` VALUES ('320811', '清浦区', '320800');
INSERT INTO `st_area` VALUES ('320826', '涟水县', '320800');
INSERT INTO `st_area` VALUES ('320829', '洪泽县', '320800');
INSERT INTO `st_area` VALUES ('320830', '盱眙县', '320800');
INSERT INTO `st_area` VALUES ('320831', '金湖县', '320800');
INSERT INTO `st_area` VALUES ('320901', '市辖区', '320900');
INSERT INTO `st_area` VALUES ('320902', '亭湖区', '320900');
INSERT INTO `st_area` VALUES ('320903', '盐都区', '320900');
INSERT INTO `st_area` VALUES ('320921', '响水县', '320900');
INSERT INTO `st_area` VALUES ('320922', '滨海县', '320900');
INSERT INTO `st_area` VALUES ('320923', '阜宁县', '320900');
INSERT INTO `st_area` VALUES ('320924', '射阳县', '320900');
INSERT INTO `st_area` VALUES ('320925', '建湖县', '320900');
INSERT INTO `st_area` VALUES ('320981', '东台市', '320900');
INSERT INTO `st_area` VALUES ('320982', '大丰市', '320900');
INSERT INTO `st_area` VALUES ('321001', '市辖区', '321000');
INSERT INTO `st_area` VALUES ('321002', '广陵区', '321000');
INSERT INTO `st_area` VALUES ('321003', '邗江区', '321000');
INSERT INTO `st_area` VALUES ('321011', '郊　区', '321000');
INSERT INTO `st_area` VALUES ('321023', '宝应县', '321000');
INSERT INTO `st_area` VALUES ('321081', '仪征市', '321000');
INSERT INTO `st_area` VALUES ('321084', '高邮市', '321000');
INSERT INTO `st_area` VALUES ('321088', '江都市', '321000');
INSERT INTO `st_area` VALUES ('321101', '市辖区', '321100');
INSERT INTO `st_area` VALUES ('321102', '京口区', '321100');
INSERT INTO `st_area` VALUES ('321111', '润州区', '321100');
INSERT INTO `st_area` VALUES ('321112', '丹徒区', '321100');
INSERT INTO `st_area` VALUES ('321181', '丹阳市', '321100');
INSERT INTO `st_area` VALUES ('321182', '扬中市', '321100');
INSERT INTO `st_area` VALUES ('321183', '句容市', '321100');
INSERT INTO `st_area` VALUES ('321201', '市辖区', '321200');
INSERT INTO `st_area` VALUES ('321202', '海陵区', '321200');
INSERT INTO `st_area` VALUES ('321203', '高港区', '321200');
INSERT INTO `st_area` VALUES ('321281', '兴化市', '321200');
INSERT INTO `st_area` VALUES ('321282', '靖江市', '321200');
INSERT INTO `st_area` VALUES ('321283', '泰兴市', '321200');
INSERT INTO `st_area` VALUES ('321284', '姜堰市', '321200');
INSERT INTO `st_area` VALUES ('321301', '市辖区', '321300');
INSERT INTO `st_area` VALUES ('321302', '宿城区', '321300');
INSERT INTO `st_area` VALUES ('321311', '宿豫区', '321300');
INSERT INTO `st_area` VALUES ('321322', '沭阳县', '321300');
INSERT INTO `st_area` VALUES ('321323', '泗阳县', '321300');
INSERT INTO `st_area` VALUES ('321324', '泗洪县', '321300');
INSERT INTO `st_area` VALUES ('330101', '市辖区', '330100');
INSERT INTO `st_area` VALUES ('330102', '上城区', '330100');
INSERT INTO `st_area` VALUES ('330103', '下城区', '330100');
INSERT INTO `st_area` VALUES ('330104', '江干区', '330100');
INSERT INTO `st_area` VALUES ('330105', '拱墅区', '330100');
INSERT INTO `st_area` VALUES ('330106', '西湖区', '330100');
INSERT INTO `st_area` VALUES ('330108', '滨江区', '330100');
INSERT INTO `st_area` VALUES ('330109', '萧山区', '330100');
INSERT INTO `st_area` VALUES ('330110', '余杭区', '330100');
INSERT INTO `st_area` VALUES ('330122', '桐庐县', '330100');
INSERT INTO `st_area` VALUES ('330127', '淳安县', '330100');
INSERT INTO `st_area` VALUES ('330182', '建德市', '330100');
INSERT INTO `st_area` VALUES ('330183', '富阳市', '330100');
INSERT INTO `st_area` VALUES ('330185', '临安市', '330100');
INSERT INTO `st_area` VALUES ('330201', '市辖区', '330200');
INSERT INTO `st_area` VALUES ('330203', '海曙区', '330200');
INSERT INTO `st_area` VALUES ('330204', '江东区', '330200');
INSERT INTO `st_area` VALUES ('330205', '江北区', '330200');
INSERT INTO `st_area` VALUES ('330206', '北仑区', '330200');
INSERT INTO `st_area` VALUES ('330211', '镇海区', '330200');
INSERT INTO `st_area` VALUES ('330212', '鄞州区', '330200');
INSERT INTO `st_area` VALUES ('330225', '象山县', '330200');
INSERT INTO `st_area` VALUES ('330226', '宁海县', '330200');
INSERT INTO `st_area` VALUES ('330281', '余姚市', '330200');
INSERT INTO `st_area` VALUES ('330282', '慈溪市', '330200');
INSERT INTO `st_area` VALUES ('330283', '奉化市', '330200');
INSERT INTO `st_area` VALUES ('330301', '市辖区', '330300');
INSERT INTO `st_area` VALUES ('330302', '鹿城区', '330300');
INSERT INTO `st_area` VALUES ('330303', '龙湾区', '330300');
INSERT INTO `st_area` VALUES ('330304', '瓯海区', '330300');
INSERT INTO `st_area` VALUES ('330322', '洞头县', '330300');
INSERT INTO `st_area` VALUES ('330324', '永嘉县', '330300');
INSERT INTO `st_area` VALUES ('330326', '平阳县', '330300');
INSERT INTO `st_area` VALUES ('330327', '苍南县', '330300');
INSERT INTO `st_area` VALUES ('330328', '文成县', '330300');
INSERT INTO `st_area` VALUES ('330329', '泰顺县', '330300');
INSERT INTO `st_area` VALUES ('330381', '瑞安市', '330300');
INSERT INTO `st_area` VALUES ('330382', '乐清市', '330300');
INSERT INTO `st_area` VALUES ('330401', '市辖区', '330400');
INSERT INTO `st_area` VALUES ('330402', '秀城区', '330400');
INSERT INTO `st_area` VALUES ('330411', '秀洲区', '330400');
INSERT INTO `st_area` VALUES ('330421', '嘉善县', '330400');
INSERT INTO `st_area` VALUES ('330424', '海盐县', '330400');
INSERT INTO `st_area` VALUES ('330481', '海宁市', '330400');
INSERT INTO `st_area` VALUES ('330482', '平湖市', '330400');
INSERT INTO `st_area` VALUES ('330483', '桐乡市', '330400');
INSERT INTO `st_area` VALUES ('330501', '市辖区', '330500');
INSERT INTO `st_area` VALUES ('330502', '吴兴区', '330500');
INSERT INTO `st_area` VALUES ('330503', '南浔区', '330500');
INSERT INTO `st_area` VALUES ('330521', '德清县', '330500');
INSERT INTO `st_area` VALUES ('330522', '长兴县', '330500');
INSERT INTO `st_area` VALUES ('330523', '安吉县', '330500');
INSERT INTO `st_area` VALUES ('330601', '市辖区', '330600');
INSERT INTO `st_area` VALUES ('330602', '越城区', '330600');
INSERT INTO `st_area` VALUES ('330621', '绍兴县', '330600');
INSERT INTO `st_area` VALUES ('330624', '新昌县', '330600');
INSERT INTO `st_area` VALUES ('330681', '诸暨市', '330600');
INSERT INTO `st_area` VALUES ('330682', '上虞市', '330600');
INSERT INTO `st_area` VALUES ('330683', '嵊州市', '330600');
INSERT INTO `st_area` VALUES ('330701', '市辖区', '330700');
INSERT INTO `st_area` VALUES ('330702', '婺城区', '330700');
INSERT INTO `st_area` VALUES ('330703', '金东区', '330700');
INSERT INTO `st_area` VALUES ('330723', '武义县', '330700');
INSERT INTO `st_area` VALUES ('330726', '浦江县', '330700');
INSERT INTO `st_area` VALUES ('330727', '磐安县', '330700');
INSERT INTO `st_area` VALUES ('330781', '兰溪市', '330700');
INSERT INTO `st_area` VALUES ('330782', '义乌市', '330700');
INSERT INTO `st_area` VALUES ('330783', '东阳市', '330700');
INSERT INTO `st_area` VALUES ('330784', '永康市', '330700');
INSERT INTO `st_area` VALUES ('330801', '市辖区', '330800');
INSERT INTO `st_area` VALUES ('330802', '柯城区', '330800');
INSERT INTO `st_area` VALUES ('330803', '衢江区', '330800');
INSERT INTO `st_area` VALUES ('330822', '常山县', '330800');
INSERT INTO `st_area` VALUES ('330824', '开化县', '330800');
INSERT INTO `st_area` VALUES ('330825', '龙游县', '330800');
INSERT INTO `st_area` VALUES ('330881', '江山市', '330800');
INSERT INTO `st_area` VALUES ('330901', '市辖区', '330900');
INSERT INTO `st_area` VALUES ('330902', '定海区', '330900');
INSERT INTO `st_area` VALUES ('330903', '普陀区', '330900');
INSERT INTO `st_area` VALUES ('330921', '岱山县', '330900');
INSERT INTO `st_area` VALUES ('330922', '嵊泗县', '330900');
INSERT INTO `st_area` VALUES ('331001', '市辖区', '331000');
INSERT INTO `st_area` VALUES ('331002', '椒江区', '331000');
INSERT INTO `st_area` VALUES ('331003', '黄岩区', '331000');
INSERT INTO `st_area` VALUES ('331004', '路桥区', '331000');
INSERT INTO `st_area` VALUES ('331021', '玉环县', '331000');
INSERT INTO `st_area` VALUES ('331022', '三门县', '331000');
INSERT INTO `st_area` VALUES ('331023', '天台县', '331000');
INSERT INTO `st_area` VALUES ('331024', '仙居县', '331000');
INSERT INTO `st_area` VALUES ('331081', '温岭市', '331000');
INSERT INTO `st_area` VALUES ('331082', '临海市', '331000');
INSERT INTO `st_area` VALUES ('331101', '市辖区', '331100');
INSERT INTO `st_area` VALUES ('331102', '莲都区', '331100');
INSERT INTO `st_area` VALUES ('331121', '青田县', '331100');
INSERT INTO `st_area` VALUES ('331122', '缙云县', '331100');
INSERT INTO `st_area` VALUES ('331123', '遂昌县', '331100');
INSERT INTO `st_area` VALUES ('331124', '松阳县', '331100');
INSERT INTO `st_area` VALUES ('331125', '云和县', '331100');
INSERT INTO `st_area` VALUES ('331126', '庆元县', '331100');
INSERT INTO `st_area` VALUES ('331127', '景宁畲族自治县', '331100');
INSERT INTO `st_area` VALUES ('331181', '龙泉市', '331100');
INSERT INTO `st_area` VALUES ('340101', '市辖区', '340100');
INSERT INTO `st_area` VALUES ('340102', '瑶海区', '340100');
INSERT INTO `st_area` VALUES ('340103', '庐阳区', '340100');
INSERT INTO `st_area` VALUES ('340104', '蜀山区', '340100');
INSERT INTO `st_area` VALUES ('340111', '包河区', '340100');
INSERT INTO `st_area` VALUES ('340121', '长丰县', '340100');
INSERT INTO `st_area` VALUES ('340122', '肥东县', '340100');
INSERT INTO `st_area` VALUES ('340123', '肥西县', '340100');
INSERT INTO `st_area` VALUES ('340201', '市辖区', '340200');
INSERT INTO `st_area` VALUES ('340202', '镜湖区', '340200');
INSERT INTO `st_area` VALUES ('340203', '马塘区', '340200');
INSERT INTO `st_area` VALUES ('340204', '新芜区', '340200');
INSERT INTO `st_area` VALUES ('340207', '鸠江区', '340200');
INSERT INTO `st_area` VALUES ('340221', '芜湖县', '340200');
INSERT INTO `st_area` VALUES ('340222', '繁昌县', '340200');
INSERT INTO `st_area` VALUES ('340223', '南陵县', '340200');
INSERT INTO `st_area` VALUES ('340301', '市辖区', '340300');
INSERT INTO `st_area` VALUES ('340302', '龙子湖区', '340300');
INSERT INTO `st_area` VALUES ('340303', '蚌山区', '340300');
INSERT INTO `st_area` VALUES ('340304', '禹会区', '340300');
INSERT INTO `st_area` VALUES ('340311', '淮上区', '340300');
INSERT INTO `st_area` VALUES ('340321', '怀远县', '340300');
INSERT INTO `st_area` VALUES ('340322', '五河县', '340300');
INSERT INTO `st_area` VALUES ('340323', '固镇县', '340300');
INSERT INTO `st_area` VALUES ('340401', '市辖区', '340400');
INSERT INTO `st_area` VALUES ('340402', '大通区', '340400');
INSERT INTO `st_area` VALUES ('340403', '田家庵区', '340400');
INSERT INTO `st_area` VALUES ('340404', '谢家集区', '340400');
INSERT INTO `st_area` VALUES ('340405', '八公山区', '340400');
INSERT INTO `st_area` VALUES ('340406', '潘集区', '340400');
INSERT INTO `st_area` VALUES ('340421', '凤台县', '340400');
INSERT INTO `st_area` VALUES ('340501', '市辖区', '340500');
INSERT INTO `st_area` VALUES ('340502', '金家庄区', '340500');
INSERT INTO `st_area` VALUES ('340503', '花山区', '340500');
INSERT INTO `st_area` VALUES ('340504', '雨山区', '340500');
INSERT INTO `st_area` VALUES ('340521', '当涂县', '340500');
INSERT INTO `st_area` VALUES ('340601', '市辖区', '340600');
INSERT INTO `st_area` VALUES ('340602', '杜集区', '340600');
INSERT INTO `st_area` VALUES ('340603', '相山区', '340600');
INSERT INTO `st_area` VALUES ('340604', '烈山区', '340600');
INSERT INTO `st_area` VALUES ('340621', '濉溪县', '340600');
INSERT INTO `st_area` VALUES ('340701', '市辖区', '340700');
INSERT INTO `st_area` VALUES ('340702', '铜官山区', '340700');
INSERT INTO `st_area` VALUES ('340703', '狮子山区', '340700');
INSERT INTO `st_area` VALUES ('340711', '郊　区', '340700');
INSERT INTO `st_area` VALUES ('340721', '铜陵县', '340700');
INSERT INTO `st_area` VALUES ('340801', '市辖区', '340800');
INSERT INTO `st_area` VALUES ('340802', '迎江区', '340800');
INSERT INTO `st_area` VALUES ('340803', '大观区', '340800');
INSERT INTO `st_area` VALUES ('340811', '郊　区', '340800');
INSERT INTO `st_area` VALUES ('340822', '怀宁县', '340800');
INSERT INTO `st_area` VALUES ('340823', '枞阳县', '340800');
INSERT INTO `st_area` VALUES ('340824', '潜山县', '340800');
INSERT INTO `st_area` VALUES ('340825', '太湖县', '340800');
INSERT INTO `st_area` VALUES ('340826', '宿松县', '340800');
INSERT INTO `st_area` VALUES ('340827', '望江县', '340800');
INSERT INTO `st_area` VALUES ('340828', '岳西县', '340800');
INSERT INTO `st_area` VALUES ('340881', '桐城市', '340800');
INSERT INTO `st_area` VALUES ('341001', '市辖区', '341000');
INSERT INTO `st_area` VALUES ('341002', '屯溪区', '341000');
INSERT INTO `st_area` VALUES ('341003', '黄山区', '341000');
INSERT INTO `st_area` VALUES ('341004', '徽州区', '341000');
INSERT INTO `st_area` VALUES ('341021', '歙　县', '341000');
INSERT INTO `st_area` VALUES ('341022', '休宁县', '341000');
INSERT INTO `st_area` VALUES ('341023', '黟　县', '341000');
INSERT INTO `st_area` VALUES ('341024', '祁门县', '341000');
INSERT INTO `st_area` VALUES ('341101', '市辖区', '341100');
INSERT INTO `st_area` VALUES ('341102', '琅琊区', '341100');
INSERT INTO `st_area` VALUES ('341103', '南谯区', '341100');
INSERT INTO `st_area` VALUES ('341122', '来安县', '341100');
INSERT INTO `st_area` VALUES ('341124', '全椒县', '341100');
INSERT INTO `st_area` VALUES ('341125', '定远县', '341100');
INSERT INTO `st_area` VALUES ('341126', '凤阳县', '341100');
INSERT INTO `st_area` VALUES ('341181', '天长市', '341100');
INSERT INTO `st_area` VALUES ('341182', '明光市', '341100');
INSERT INTO `st_area` VALUES ('341201', '市辖区', '341200');
INSERT INTO `st_area` VALUES ('341202', '颍州区', '341200');
INSERT INTO `st_area` VALUES ('341203', '颍东区', '341200');
INSERT INTO `st_area` VALUES ('341204', '颍泉区', '341200');
INSERT INTO `st_area` VALUES ('341221', '临泉县', '341200');
INSERT INTO `st_area` VALUES ('341222', '太和县', '341200');
INSERT INTO `st_area` VALUES ('341225', '阜南县', '341200');
INSERT INTO `st_area` VALUES ('341226', '颍上县', '341200');
INSERT INTO `st_area` VALUES ('341282', '界首市', '341200');
INSERT INTO `st_area` VALUES ('341301', '市辖区', '341300');
INSERT INTO `st_area` VALUES ('341302', '墉桥区', '341300');
INSERT INTO `st_area` VALUES ('341321', '砀山县', '341300');
INSERT INTO `st_area` VALUES ('341322', '萧　县', '341300');
INSERT INTO `st_area` VALUES ('341323', '灵璧县', '341300');
INSERT INTO `st_area` VALUES ('341324', '泗　县', '341300');
INSERT INTO `st_area` VALUES ('341401', '市辖区', '341400');
INSERT INTO `st_area` VALUES ('341402', '居巢区', '341400');
INSERT INTO `st_area` VALUES ('341421', '庐江县', '341400');
INSERT INTO `st_area` VALUES ('341422', '无为县', '341400');
INSERT INTO `st_area` VALUES ('341423', '含山县', '341400');
INSERT INTO `st_area` VALUES ('341424', '和　县', '341400');
INSERT INTO `st_area` VALUES ('341501', '市辖区', '341500');
INSERT INTO `st_area` VALUES ('341502', '金安区', '341500');
INSERT INTO `st_area` VALUES ('341503', '裕安区', '341500');
INSERT INTO `st_area` VALUES ('341521', '寿　县', '341500');
INSERT INTO `st_area` VALUES ('341522', '霍邱县', '341500');
INSERT INTO `st_area` VALUES ('341523', '舒城县', '341500');
INSERT INTO `st_area` VALUES ('341524', '金寨县', '341500');
INSERT INTO `st_area` VALUES ('341525', '霍山县', '341500');
INSERT INTO `st_area` VALUES ('341601', '市辖区', '341600');
INSERT INTO `st_area` VALUES ('341602', '谯城区', '341600');
INSERT INTO `st_area` VALUES ('341621', '涡阳县', '341600');
INSERT INTO `st_area` VALUES ('341622', '蒙城县', '341600');
INSERT INTO `st_area` VALUES ('341623', '利辛县', '341600');
INSERT INTO `st_area` VALUES ('341701', '市辖区', '341700');
INSERT INTO `st_area` VALUES ('341702', '贵池区', '341700');
INSERT INTO `st_area` VALUES ('341721', '东至县', '341700');
INSERT INTO `st_area` VALUES ('341722', '石台县', '341700');
INSERT INTO `st_area` VALUES ('341723', '青阳县', '341700');
INSERT INTO `st_area` VALUES ('341801', '市辖区', '341800');
INSERT INTO `st_area` VALUES ('341802', '宣州区', '341800');
INSERT INTO `st_area` VALUES ('341821', '郎溪县', '341800');
INSERT INTO `st_area` VALUES ('341822', '广德县', '341800');
INSERT INTO `st_area` VALUES ('341823', '泾　县', '341800');
INSERT INTO `st_area` VALUES ('341824', '绩溪县', '341800');
INSERT INTO `st_area` VALUES ('341825', '旌德县', '341800');
INSERT INTO `st_area` VALUES ('341881', '宁国市', '341800');
INSERT INTO `st_area` VALUES ('350101', '市辖区', '350100');
INSERT INTO `st_area` VALUES ('350102', '鼓楼区', '350100');
INSERT INTO `st_area` VALUES ('350103', '台江区', '350100');
INSERT INTO `st_area` VALUES ('350104', '仓山区', '350100');
INSERT INTO `st_area` VALUES ('350105', '马尾区', '350100');
INSERT INTO `st_area` VALUES ('350111', '晋安区', '350100');
INSERT INTO `st_area` VALUES ('350121', '闽侯县', '350100');
INSERT INTO `st_area` VALUES ('350122', '连江县', '350100');
INSERT INTO `st_area` VALUES ('350123', '罗源县', '350100');
INSERT INTO `st_area` VALUES ('350124', '闽清县', '350100');
INSERT INTO `st_area` VALUES ('350125', '永泰县', '350100');
INSERT INTO `st_area` VALUES ('350128', '平潭县', '350100');
INSERT INTO `st_area` VALUES ('350181', '福清市', '350100');
INSERT INTO `st_area` VALUES ('350182', '长乐市', '350100');
INSERT INTO `st_area` VALUES ('350201', '市辖区', '350200');
INSERT INTO `st_area` VALUES ('350203', '思明区', '350200');
INSERT INTO `st_area` VALUES ('350205', '海沧区', '350200');
INSERT INTO `st_area` VALUES ('350206', '湖里区', '350200');
INSERT INTO `st_area` VALUES ('350211', '集美区', '350200');
INSERT INTO `st_area` VALUES ('350212', '同安区', '350200');
INSERT INTO `st_area` VALUES ('350213', '翔安区', '350200');
INSERT INTO `st_area` VALUES ('350301', '市辖区', '350300');
INSERT INTO `st_area` VALUES ('350302', '城厢区', '350300');
INSERT INTO `st_area` VALUES ('350303', '涵江区', '350300');
INSERT INTO `st_area` VALUES ('350304', '荔城区', '350300');
INSERT INTO `st_area` VALUES ('350305', '秀屿区', '350300');
INSERT INTO `st_area` VALUES ('350322', '仙游县', '350300');
INSERT INTO `st_area` VALUES ('350401', '市辖区', '350400');
INSERT INTO `st_area` VALUES ('350402', '梅列区', '350400');
INSERT INTO `st_area` VALUES ('350403', '三元区', '350400');
INSERT INTO `st_area` VALUES ('350421', '明溪县', '350400');
INSERT INTO `st_area` VALUES ('350423', '清流县', '350400');
INSERT INTO `st_area` VALUES ('350424', '宁化县', '350400');
INSERT INTO `st_area` VALUES ('350425', '大田县', '350400');
INSERT INTO `st_area` VALUES ('350426', '尤溪县', '350400');
INSERT INTO `st_area` VALUES ('350427', '沙　县', '350400');
INSERT INTO `st_area` VALUES ('350428', '将乐县', '350400');
INSERT INTO `st_area` VALUES ('350429', '泰宁县', '350400');
INSERT INTO `st_area` VALUES ('350430', '建宁县', '350400');
INSERT INTO `st_area` VALUES ('350481', '永安市', '350400');
INSERT INTO `st_area` VALUES ('350501', '市辖区', '350500');
INSERT INTO `st_area` VALUES ('350502', '鲤城区', '350500');
INSERT INTO `st_area` VALUES ('350503', '丰泽区', '350500');
INSERT INTO `st_area` VALUES ('350504', '洛江区', '350500');
INSERT INTO `st_area` VALUES ('350505', '泉港区', '350500');
INSERT INTO `st_area` VALUES ('350521', '惠安县', '350500');
INSERT INTO `st_area` VALUES ('350524', '安溪县', '350500');
INSERT INTO `st_area` VALUES ('350525', '永春县', '350500');
INSERT INTO `st_area` VALUES ('350526', '德化县', '350500');
INSERT INTO `st_area` VALUES ('350527', '金门县', '350500');
INSERT INTO `st_area` VALUES ('350581', '石狮市', '350500');
INSERT INTO `st_area` VALUES ('350582', '晋江市', '350500');
INSERT INTO `st_area` VALUES ('350583', '南安市', '350500');
INSERT INTO `st_area` VALUES ('350601', '市辖区', '350600');
INSERT INTO `st_area` VALUES ('350602', '芗城区', '350600');
INSERT INTO `st_area` VALUES ('350603', '龙文区', '350600');
INSERT INTO `st_area` VALUES ('350622', '云霄县', '350600');
INSERT INTO `st_area` VALUES ('350623', '漳浦县', '350600');
INSERT INTO `st_area` VALUES ('350624', '诏安县', '350600');
INSERT INTO `st_area` VALUES ('350625', '长泰县', '350600');
INSERT INTO `st_area` VALUES ('350626', '东山县', '350600');
INSERT INTO `st_area` VALUES ('350627', '南靖县', '350600');
INSERT INTO `st_area` VALUES ('350628', '平和县', '350600');
INSERT INTO `st_area` VALUES ('350629', '华安县', '350600');
INSERT INTO `st_area` VALUES ('350681', '龙海市', '350600');
INSERT INTO `st_area` VALUES ('350701', '市辖区', '350700');
INSERT INTO `st_area` VALUES ('350702', '延平区', '350700');
INSERT INTO `st_area` VALUES ('350721', '顺昌县', '350700');
INSERT INTO `st_area` VALUES ('350722', '浦城县', '350700');
INSERT INTO `st_area` VALUES ('350723', '光泽县', '350700');
INSERT INTO `st_area` VALUES ('350724', '松溪县', '350700');
INSERT INTO `st_area` VALUES ('350725', '政和县', '350700');
INSERT INTO `st_area` VALUES ('350781', '邵武市', '350700');
INSERT INTO `st_area` VALUES ('350782', '武夷山市', '350700');
INSERT INTO `st_area` VALUES ('350783', '建瓯市', '350700');
INSERT INTO `st_area` VALUES ('350784', '建阳市', '350700');
INSERT INTO `st_area` VALUES ('350801', '市辖区', '350800');
INSERT INTO `st_area` VALUES ('350802', '新罗区', '350800');
INSERT INTO `st_area` VALUES ('350821', '长汀县', '350800');
INSERT INTO `st_area` VALUES ('350822', '永定县', '350800');
INSERT INTO `st_area` VALUES ('350823', '上杭县', '350800');
INSERT INTO `st_area` VALUES ('350824', '武平县', '350800');
INSERT INTO `st_area` VALUES ('350825', '连城县', '350800');
INSERT INTO `st_area` VALUES ('350881', '漳平市', '350800');
INSERT INTO `st_area` VALUES ('350901', '市辖区', '350900');
INSERT INTO `st_area` VALUES ('350902', '蕉城区', '350900');
INSERT INTO `st_area` VALUES ('350921', '霞浦县', '350900');
INSERT INTO `st_area` VALUES ('350922', '古田县', '350900');
INSERT INTO `st_area` VALUES ('350923', '屏南县', '350900');
INSERT INTO `st_area` VALUES ('350924', '寿宁县', '350900');
INSERT INTO `st_area` VALUES ('350925', '周宁县', '350900');
INSERT INTO `st_area` VALUES ('350926', '柘荣县', '350900');
INSERT INTO `st_area` VALUES ('350981', '福安市', '350900');
INSERT INTO `st_area` VALUES ('350982', '福鼎市', '350900');
INSERT INTO `st_area` VALUES ('360101', '市辖区', '360100');
INSERT INTO `st_area` VALUES ('360102', '东湖区', '360100');
INSERT INTO `st_area` VALUES ('360103', '西湖区', '360100');
INSERT INTO `st_area` VALUES ('360104', '青云谱区', '360100');
INSERT INTO `st_area` VALUES ('360105', '湾里区', '360100');
INSERT INTO `st_area` VALUES ('360111', '青山湖区', '360100');
INSERT INTO `st_area` VALUES ('360121', '南昌县', '360100');
INSERT INTO `st_area` VALUES ('360122', '新建县', '360100');
INSERT INTO `st_area` VALUES ('360123', '安义县', '360100');
INSERT INTO `st_area` VALUES ('360124', '进贤县', '360100');
INSERT INTO `st_area` VALUES ('360201', '市辖区', '360200');
INSERT INTO `st_area` VALUES ('360202', '昌江区', '360200');
INSERT INTO `st_area` VALUES ('360203', '珠山区', '360200');
INSERT INTO `st_area` VALUES ('360222', '浮梁县', '360200');
INSERT INTO `st_area` VALUES ('360281', '乐平市', '360200');
INSERT INTO `st_area` VALUES ('360301', '市辖区', '360300');
INSERT INTO `st_area` VALUES ('360302', '安源区', '360300');
INSERT INTO `st_area` VALUES ('360313', '湘东区', '360300');
INSERT INTO `st_area` VALUES ('360321', '莲花县', '360300');
INSERT INTO `st_area` VALUES ('360322', '上栗县', '360300');
INSERT INTO `st_area` VALUES ('360323', '芦溪县', '360300');
INSERT INTO `st_area` VALUES ('360401', '市辖区', '360400');
INSERT INTO `st_area` VALUES ('360402', '庐山区', '360400');
INSERT INTO `st_area` VALUES ('360403', '浔阳区', '360400');
INSERT INTO `st_area` VALUES ('360421', '九江县', '360400');
INSERT INTO `st_area` VALUES ('360423', '武宁县', '360400');
INSERT INTO `st_area` VALUES ('360424', '修水县', '360400');
INSERT INTO `st_area` VALUES ('360425', '永修县', '360400');
INSERT INTO `st_area` VALUES ('360426', '德安县', '360400');
INSERT INTO `st_area` VALUES ('360427', '星子县', '360400');
INSERT INTO `st_area` VALUES ('360428', '都昌县', '360400');
INSERT INTO `st_area` VALUES ('360429', '湖口县', '360400');
INSERT INTO `st_area` VALUES ('360430', '彭泽县', '360400');
INSERT INTO `st_area` VALUES ('360481', '瑞昌市', '360400');
INSERT INTO `st_area` VALUES ('360501', '市辖区', '360500');
INSERT INTO `st_area` VALUES ('360502', '渝水区', '360500');
INSERT INTO `st_area` VALUES ('360521', '分宜县', '360500');
INSERT INTO `st_area` VALUES ('360601', '市辖区', '360600');
INSERT INTO `st_area` VALUES ('360602', '月湖区', '360600');
INSERT INTO `st_area` VALUES ('360622', '余江县', '360600');
INSERT INTO `st_area` VALUES ('360681', '贵溪市', '360600');
INSERT INTO `st_area` VALUES ('360701', '市辖区', '360700');
INSERT INTO `st_area` VALUES ('360702', '章贡区', '360700');
INSERT INTO `st_area` VALUES ('360721', '赣　县', '360700');
INSERT INTO `st_area` VALUES ('360722', '信丰县', '360700');
INSERT INTO `st_area` VALUES ('360723', '大余县', '360700');
INSERT INTO `st_area` VALUES ('360724', '上犹县', '360700');
INSERT INTO `st_area` VALUES ('360725', '崇义县', '360700');
INSERT INTO `st_area` VALUES ('360726', '安远县', '360700');
INSERT INTO `st_area` VALUES ('360727', '龙南县', '360700');
INSERT INTO `st_area` VALUES ('360728', '定南县', '360700');
INSERT INTO `st_area` VALUES ('360729', '全南县', '360700');
INSERT INTO `st_area` VALUES ('360730', '宁都县', '360700');
INSERT INTO `st_area` VALUES ('360731', '于都县', '360700');
INSERT INTO `st_area` VALUES ('360732', '兴国县', '360700');
INSERT INTO `st_area` VALUES ('360733', '会昌县', '360700');
INSERT INTO `st_area` VALUES ('360734', '寻乌县', '360700');
INSERT INTO `st_area` VALUES ('360735', '石城县', '360700');
INSERT INTO `st_area` VALUES ('360781', '瑞金市', '360700');
INSERT INTO `st_area` VALUES ('360782', '南康市', '360700');
INSERT INTO `st_area` VALUES ('360801', '市辖区', '360800');
INSERT INTO `st_area` VALUES ('360802', '吉州区', '360800');
INSERT INTO `st_area` VALUES ('360803', '青原区', '360800');
INSERT INTO `st_area` VALUES ('360821', '吉安县', '360800');
INSERT INTO `st_area` VALUES ('360822', '吉水县', '360800');
INSERT INTO `st_area` VALUES ('360823', '峡江县', '360800');
INSERT INTO `st_area` VALUES ('360824', '新干县', '360800');
INSERT INTO `st_area` VALUES ('360825', '永丰县', '360800');
INSERT INTO `st_area` VALUES ('360826', '泰和县', '360800');
INSERT INTO `st_area` VALUES ('360827', '遂川县', '360800');
INSERT INTO `st_area` VALUES ('360828', '万安县', '360800');
INSERT INTO `st_area` VALUES ('360829', '安福县', '360800');
INSERT INTO `st_area` VALUES ('360830', '永新县', '360800');
INSERT INTO `st_area` VALUES ('360881', '井冈山市', '360800');
INSERT INTO `st_area` VALUES ('360901', '市辖区', '360900');
INSERT INTO `st_area` VALUES ('360902', '袁州区', '360900');
INSERT INTO `st_area` VALUES ('360921', '奉新县', '360900');
INSERT INTO `st_area` VALUES ('360922', '万载县', '360900');
INSERT INTO `st_area` VALUES ('360923', '上高县', '360900');
INSERT INTO `st_area` VALUES ('360924', '宜丰县', '360900');
INSERT INTO `st_area` VALUES ('360925', '靖安县', '360900');
INSERT INTO `st_area` VALUES ('360926', '铜鼓县', '360900');
INSERT INTO `st_area` VALUES ('360981', '丰城市', '360900');
INSERT INTO `st_area` VALUES ('360982', '樟树市', '360900');
INSERT INTO `st_area` VALUES ('360983', '高安市', '360900');
INSERT INTO `st_area` VALUES ('361001', '市辖区', '361000');
INSERT INTO `st_area` VALUES ('361002', '临川区', '361000');
INSERT INTO `st_area` VALUES ('361021', '南城县', '361000');
INSERT INTO `st_area` VALUES ('361022', '黎川县', '361000');
INSERT INTO `st_area` VALUES ('361023', '南丰县', '361000');
INSERT INTO `st_area` VALUES ('361024', '崇仁县', '361000');
INSERT INTO `st_area` VALUES ('361025', '乐安县', '361000');
INSERT INTO `st_area` VALUES ('361026', '宜黄县', '361000');
INSERT INTO `st_area` VALUES ('361027', '金溪县', '361000');
INSERT INTO `st_area` VALUES ('361028', '资溪县', '361000');
INSERT INTO `st_area` VALUES ('361029', '东乡县', '361000');
INSERT INTO `st_area` VALUES ('361030', '广昌县', '361000');
INSERT INTO `st_area` VALUES ('361101', '市辖区', '361100');
INSERT INTO `st_area` VALUES ('361102', '信州区', '361100');
INSERT INTO `st_area` VALUES ('361121', '上饶县', '361100');
INSERT INTO `st_area` VALUES ('361122', '广丰县', '361100');
INSERT INTO `st_area` VALUES ('361123', '玉山县', '361100');
INSERT INTO `st_area` VALUES ('361124', '铅山县', '361100');
INSERT INTO `st_area` VALUES ('361125', '横峰县', '361100');
INSERT INTO `st_area` VALUES ('361126', '弋阳县', '361100');
INSERT INTO `st_area` VALUES ('361127', '余干县', '361100');
INSERT INTO `st_area` VALUES ('361128', '鄱阳县', '361100');
INSERT INTO `st_area` VALUES ('361129', '万年县', '361100');
INSERT INTO `st_area` VALUES ('361130', '婺源县', '361100');
INSERT INTO `st_area` VALUES ('361181', '德兴市', '361100');
INSERT INTO `st_area` VALUES ('370101', '市辖区', '370100');
INSERT INTO `st_area` VALUES ('370102', '历下区', '370100');
INSERT INTO `st_area` VALUES ('370103', '市中区', '370100');
INSERT INTO `st_area` VALUES ('370104', '槐荫区', '370100');
INSERT INTO `st_area` VALUES ('370105', '天桥区', '370100');
INSERT INTO `st_area` VALUES ('370112', '历城区', '370100');
INSERT INTO `st_area` VALUES ('370113', '长清区', '370100');
INSERT INTO `st_area` VALUES ('370124', '平阴县', '370100');
INSERT INTO `st_area` VALUES ('370125', '济阳县', '370100');
INSERT INTO `st_area` VALUES ('370126', '商河县', '370100');
INSERT INTO `st_area` VALUES ('370181', '章丘市', '370100');
INSERT INTO `st_area` VALUES ('370201', '市辖区', '370200');
INSERT INTO `st_area` VALUES ('370202', '市南区', '370200');
INSERT INTO `st_area` VALUES ('370203', '市北区', '370200');
INSERT INTO `st_area` VALUES ('370205', '四方区', '370200');
INSERT INTO `st_area` VALUES ('370211', '黄岛区', '370200');
INSERT INTO `st_area` VALUES ('370212', '崂山区', '370200');
INSERT INTO `st_area` VALUES ('370213', '李沧区', '370200');
INSERT INTO `st_area` VALUES ('370214', '城阳区', '370200');
INSERT INTO `st_area` VALUES ('370281', '胶州市', '370200');
INSERT INTO `st_area` VALUES ('370282', '即墨市', '370200');
INSERT INTO `st_area` VALUES ('370283', '平度市', '370200');
INSERT INTO `st_area` VALUES ('370284', '胶南市', '370200');
INSERT INTO `st_area` VALUES ('370285', '莱西市', '370200');
INSERT INTO `st_area` VALUES ('370301', '市辖区', '370300');
INSERT INTO `st_area` VALUES ('370302', '淄川区', '370300');
INSERT INTO `st_area` VALUES ('370303', '张店区', '370300');
INSERT INTO `st_area` VALUES ('370304', '博山区', '370300');
INSERT INTO `st_area` VALUES ('370305', '临淄区', '370300');
INSERT INTO `st_area` VALUES ('370306', '周村区', '370300');
INSERT INTO `st_area` VALUES ('370321', '桓台县', '370300');
INSERT INTO `st_area` VALUES ('370322', '高青县', '370300');
INSERT INTO `st_area` VALUES ('370323', '沂源县', '370300');
INSERT INTO `st_area` VALUES ('370401', '市辖区', '370400');
INSERT INTO `st_area` VALUES ('370402', '市中区', '370400');
INSERT INTO `st_area` VALUES ('370403', '薛城区', '370400');
INSERT INTO `st_area` VALUES ('370404', '峄城区', '370400');
INSERT INTO `st_area` VALUES ('370405', '台儿庄区', '370400');
INSERT INTO `st_area` VALUES ('370406', '山亭区', '370400');
INSERT INTO `st_area` VALUES ('370481', '滕州市', '370400');
INSERT INTO `st_area` VALUES ('370501', '市辖区', '370500');
INSERT INTO `st_area` VALUES ('370502', '东营区', '370500');
INSERT INTO `st_area` VALUES ('370503', '河口区', '370500');
INSERT INTO `st_area` VALUES ('370521', '垦利县', '370500');
INSERT INTO `st_area` VALUES ('370522', '利津县', '370500');
INSERT INTO `st_area` VALUES ('370523', '广饶县', '370500');
INSERT INTO `st_area` VALUES ('370601', '市辖区', '370600');
INSERT INTO `st_area` VALUES ('370602', '芝罘区', '370600');
INSERT INTO `st_area` VALUES ('370611', '福山区', '370600');
INSERT INTO `st_area` VALUES ('370612', '牟平区', '370600');
INSERT INTO `st_area` VALUES ('370613', '莱山区', '370600');
INSERT INTO `st_area` VALUES ('370634', '长岛县', '370600');
INSERT INTO `st_area` VALUES ('370681', '龙口市', '370600');
INSERT INTO `st_area` VALUES ('370682', '莱阳市', '370600');
INSERT INTO `st_area` VALUES ('370683', '莱州市', '370600');
INSERT INTO `st_area` VALUES ('370684', '蓬莱市', '370600');
INSERT INTO `st_area` VALUES ('370685', '招远市', '370600');
INSERT INTO `st_area` VALUES ('370686', '栖霞市', '370600');
INSERT INTO `st_area` VALUES ('370687', '海阳市', '370600');
INSERT INTO `st_area` VALUES ('370701', '市辖区', '370700');
INSERT INTO `st_area` VALUES ('370702', '潍城区', '370700');
INSERT INTO `st_area` VALUES ('370703', '寒亭区', '370700');
INSERT INTO `st_area` VALUES ('370704', '坊子区', '370700');
INSERT INTO `st_area` VALUES ('370705', '奎文区', '370700');
INSERT INTO `st_area` VALUES ('370724', '临朐县', '370700');
INSERT INTO `st_area` VALUES ('370725', '昌乐县', '370700');
INSERT INTO `st_area` VALUES ('370781', '青州市', '370700');
INSERT INTO `st_area` VALUES ('370782', '诸城市', '370700');
INSERT INTO `st_area` VALUES ('370783', '寿光市', '370700');
INSERT INTO `st_area` VALUES ('370784', '安丘市', '370700');
INSERT INTO `st_area` VALUES ('370785', '高密市', '370700');
INSERT INTO `st_area` VALUES ('370786', '昌邑市', '370700');
INSERT INTO `st_area` VALUES ('370801', '市辖区', '370800');
INSERT INTO `st_area` VALUES ('370802', '市中区', '370800');
INSERT INTO `st_area` VALUES ('370811', '任城区', '370800');
INSERT INTO `st_area` VALUES ('370826', '微山县', '370800');
INSERT INTO `st_area` VALUES ('370827', '鱼台县', '370800');
INSERT INTO `st_area` VALUES ('370828', '金乡县', '370800');
INSERT INTO `st_area` VALUES ('370829', '嘉祥县', '370800');
INSERT INTO `st_area` VALUES ('370830', '汶上县', '370800');
INSERT INTO `st_area` VALUES ('370831', '泗水县', '370800');
INSERT INTO `st_area` VALUES ('370832', '梁山县', '370800');
INSERT INTO `st_area` VALUES ('370881', '曲阜市', '370800');
INSERT INTO `st_area` VALUES ('370882', '兖州市', '370800');
INSERT INTO `st_area` VALUES ('370883', '邹城市', '370800');
INSERT INTO `st_area` VALUES ('370901', '市辖区', '370900');
INSERT INTO `st_area` VALUES ('370902', '泰山区', '370900');
INSERT INTO `st_area` VALUES ('370903', '岱岳区', '370900');
INSERT INTO `st_area` VALUES ('370921', '宁阳县', '370900');
INSERT INTO `st_area` VALUES ('370923', '东平县', '370900');
INSERT INTO `st_area` VALUES ('370982', '新泰市', '370900');
INSERT INTO `st_area` VALUES ('370983', '肥城市', '370900');
INSERT INTO `st_area` VALUES ('371001', '市辖区', '371000');
INSERT INTO `st_area` VALUES ('371002', '环翠区', '371000');
INSERT INTO `st_area` VALUES ('371081', '文登市', '371000');
INSERT INTO `st_area` VALUES ('371082', '荣成市', '371000');
INSERT INTO `st_area` VALUES ('371083', '乳山市', '371000');
INSERT INTO `st_area` VALUES ('371101', '市辖区', '371100');
INSERT INTO `st_area` VALUES ('371102', '东港区', '371100');
INSERT INTO `st_area` VALUES ('371103', '岚山区', '371100');
INSERT INTO `st_area` VALUES ('371121', '五莲县', '371100');
INSERT INTO `st_area` VALUES ('371122', '莒　县', '371100');
INSERT INTO `st_area` VALUES ('371201', '市辖区', '371200');
INSERT INTO `st_area` VALUES ('371202', '莱城区', '371200');
INSERT INTO `st_area` VALUES ('371203', '钢城区', '371200');
INSERT INTO `st_area` VALUES ('371301', '市辖区', '371300');
INSERT INTO `st_area` VALUES ('371302', '兰山区', '371300');
INSERT INTO `st_area` VALUES ('371311', '罗庄区', '371300');
INSERT INTO `st_area` VALUES ('371312', '河东区', '371300');
INSERT INTO `st_area` VALUES ('371321', '沂南县', '371300');
INSERT INTO `st_area` VALUES ('371322', '郯城县', '371300');
INSERT INTO `st_area` VALUES ('371323', '沂水县', '371300');
INSERT INTO `st_area` VALUES ('371324', '苍山县', '371300');
INSERT INTO `st_area` VALUES ('371325', '费　县', '371300');
INSERT INTO `st_area` VALUES ('371326', '平邑县', '371300');
INSERT INTO `st_area` VALUES ('371327', '莒南县', '371300');
INSERT INTO `st_area` VALUES ('371328', '蒙阴县', '371300');
INSERT INTO `st_area` VALUES ('371329', '临沭县', '371300');
INSERT INTO `st_area` VALUES ('371401', '市辖区', '371400');
INSERT INTO `st_area` VALUES ('371402', '德城区', '371400');
INSERT INTO `st_area` VALUES ('371421', '陵　县', '371400');
INSERT INTO `st_area` VALUES ('371422', '宁津县', '371400');
INSERT INTO `st_area` VALUES ('371423', '庆云县', '371400');
INSERT INTO `st_area` VALUES ('371424', '临邑县', '371400');
INSERT INTO `st_area` VALUES ('371425', '齐河县', '371400');
INSERT INTO `st_area` VALUES ('371426', '平原县', '371400');
INSERT INTO `st_area` VALUES ('371427', '夏津县', '371400');
INSERT INTO `st_area` VALUES ('371428', '武城县', '371400');
INSERT INTO `st_area` VALUES ('371481', '乐陵市', '371400');
INSERT INTO `st_area` VALUES ('371482', '禹城市', '371400');
INSERT INTO `st_area` VALUES ('371501', '市辖区', '371500');
INSERT INTO `st_area` VALUES ('371502', '东昌府区', '371500');
INSERT INTO `st_area` VALUES ('371521', '阳谷县', '371500');
INSERT INTO `st_area` VALUES ('371522', '莘　县', '371500');
INSERT INTO `st_area` VALUES ('371523', '茌平县', '371500');
INSERT INTO `st_area` VALUES ('371524', '东阿县', '371500');
INSERT INTO `st_area` VALUES ('371525', '冠　县', '371500');
INSERT INTO `st_area` VALUES ('371526', '高唐县', '371500');
INSERT INTO `st_area` VALUES ('371581', '临清市', '371500');
INSERT INTO `st_area` VALUES ('371601', '市辖区', '371600');
INSERT INTO `st_area` VALUES ('371602', '滨城区', '371600');
INSERT INTO `st_area` VALUES ('371621', '惠民县', '371600');
INSERT INTO `st_area` VALUES ('371622', '阳信县', '371600');
INSERT INTO `st_area` VALUES ('371623', '无棣县', '371600');
INSERT INTO `st_area` VALUES ('371624', '沾化县', '371600');
INSERT INTO `st_area` VALUES ('371625', '博兴县', '371600');
INSERT INTO `st_area` VALUES ('371626', '邹平县', '371600');
INSERT INTO `st_area` VALUES ('371701', '市辖区', '371700');
INSERT INTO `st_area` VALUES ('371702', '牡丹区', '371700');
INSERT INTO `st_area` VALUES ('371721', '曹　县', '371700');
INSERT INTO `st_area` VALUES ('371722', '单　县', '371700');
INSERT INTO `st_area` VALUES ('371723', '成武县', '371700');
INSERT INTO `st_area` VALUES ('371724', '巨野县', '371700');
INSERT INTO `st_area` VALUES ('371725', '郓城县', '371700');
INSERT INTO `st_area` VALUES ('371726', '鄄城县', '371700');
INSERT INTO `st_area` VALUES ('371727', '定陶县', '371700');
INSERT INTO `st_area` VALUES ('371728', '东明县', '371700');
INSERT INTO `st_area` VALUES ('410101', '市辖区', '410100');
INSERT INTO `st_area` VALUES ('410102', '中原区', '410100');
INSERT INTO `st_area` VALUES ('410103', '二七区', '410100');
INSERT INTO `st_area` VALUES ('410104', '管城回族区', '410100');
INSERT INTO `st_area` VALUES ('410105', '金水区', '410100');
INSERT INTO `st_area` VALUES ('410106', '上街区', '410100');
INSERT INTO `st_area` VALUES ('410108', '邙山区', '410100');
INSERT INTO `st_area` VALUES ('410122', '中牟县', '410100');
INSERT INTO `st_area` VALUES ('410181', '巩义市', '410100');
INSERT INTO `st_area` VALUES ('410182', '荥阳市', '410100');
INSERT INTO `st_area` VALUES ('410183', '新密市', '410100');
INSERT INTO `st_area` VALUES ('410184', '新郑市', '410100');
INSERT INTO `st_area` VALUES ('410185', '登封市', '410100');
INSERT INTO `st_area` VALUES ('410201', '市辖区', '410200');
INSERT INTO `st_area` VALUES ('410202', '龙亭区', '410200');
INSERT INTO `st_area` VALUES ('410203', '顺河回族区', '410200');
INSERT INTO `st_area` VALUES ('410204', '鼓楼区', '410200');
INSERT INTO `st_area` VALUES ('410205', '南关区', '410200');
INSERT INTO `st_area` VALUES ('410211', '郊　区', '410200');
INSERT INTO `st_area` VALUES ('410221', '杞　县', '410200');
INSERT INTO `st_area` VALUES ('410222', '通许县', '410200');
INSERT INTO `st_area` VALUES ('410223', '尉氏县', '410200');
INSERT INTO `st_area` VALUES ('410224', '开封县', '410200');
INSERT INTO `st_area` VALUES ('410225', '兰考县', '410200');
INSERT INTO `st_area` VALUES ('410301', '市辖区', '410300');
INSERT INTO `st_area` VALUES ('410302', '老城区', '410300');
INSERT INTO `st_area` VALUES ('410303', '西工区', '410300');
INSERT INTO `st_area` VALUES ('410304', '廛河回族区', '410300');
INSERT INTO `st_area` VALUES ('410305', '涧西区', '410300');
INSERT INTO `st_area` VALUES ('410306', '吉利区', '410300');
INSERT INTO `st_area` VALUES ('410307', '洛龙区', '410300');
INSERT INTO `st_area` VALUES ('410322', '孟津县', '410300');
INSERT INTO `st_area` VALUES ('410323', '新安县', '410300');
INSERT INTO `st_area` VALUES ('410324', '栾川县', '410300');
INSERT INTO `st_area` VALUES ('410325', '嵩　县', '410300');
INSERT INTO `st_area` VALUES ('410326', '汝阳县', '410300');
INSERT INTO `st_area` VALUES ('410327', '宜阳县', '410300');
INSERT INTO `st_area` VALUES ('410328', '洛宁县', '410300');
INSERT INTO `st_area` VALUES ('410329', '伊川县', '410300');
INSERT INTO `st_area` VALUES ('410381', '偃师市', '410300');
INSERT INTO `st_area` VALUES ('410401', '市辖区', '410400');
INSERT INTO `st_area` VALUES ('410402', '新华区', '410400');
INSERT INTO `st_area` VALUES ('410403', '卫东区', '410400');
INSERT INTO `st_area` VALUES ('410404', '石龙区', '410400');
INSERT INTO `st_area` VALUES ('410411', '湛河区', '410400');
INSERT INTO `st_area` VALUES ('410421', '宝丰县', '410400');
INSERT INTO `st_area` VALUES ('410422', '叶　县', '410400');
INSERT INTO `st_area` VALUES ('410423', '鲁山县', '410400');
INSERT INTO `st_area` VALUES ('410425', '郏　县', '410400');
INSERT INTO `st_area` VALUES ('410481', '舞钢市', '410400');
INSERT INTO `st_area` VALUES ('410482', '汝州市', '410400');
INSERT INTO `st_area` VALUES ('410501', '市辖区', '410500');
INSERT INTO `st_area` VALUES ('410502', '文峰区', '410500');
INSERT INTO `st_area` VALUES ('410503', '北关区', '410500');
INSERT INTO `st_area` VALUES ('410505', '殷都区', '410500');
INSERT INTO `st_area` VALUES ('410506', '龙安区', '410500');
INSERT INTO `st_area` VALUES ('410522', '安阳县', '410500');
INSERT INTO `st_area` VALUES ('410523', '汤阴县', '410500');
INSERT INTO `st_area` VALUES ('410526', '滑　县', '410500');
INSERT INTO `st_area` VALUES ('410527', '内黄县', '410500');
INSERT INTO `st_area` VALUES ('410581', '林州市', '410500');
INSERT INTO `st_area` VALUES ('410601', '市辖区', '410600');
INSERT INTO `st_area` VALUES ('410602', '鹤山区', '410600');
INSERT INTO `st_area` VALUES ('410603', '山城区', '410600');
INSERT INTO `st_area` VALUES ('410611', '淇滨区', '410600');
INSERT INTO `st_area` VALUES ('410621', '浚　县', '410600');
INSERT INTO `st_area` VALUES ('410622', '淇　县', '410600');
INSERT INTO `st_area` VALUES ('410701', '市辖区', '410700');
INSERT INTO `st_area` VALUES ('410702', '红旗区', '410700');
INSERT INTO `st_area` VALUES ('410703', '卫滨区', '410700');
INSERT INTO `st_area` VALUES ('410704', '凤泉区', '410700');
INSERT INTO `st_area` VALUES ('410711', '牧野区', '410700');
INSERT INTO `st_area` VALUES ('410721', '新乡县', '410700');
INSERT INTO `st_area` VALUES ('410724', '获嘉县', '410700');
INSERT INTO `st_area` VALUES ('410725', '原阳县', '410700');
INSERT INTO `st_area` VALUES ('410726', '延津县', '410700');
INSERT INTO `st_area` VALUES ('410727', '封丘县', '410700');
INSERT INTO `st_area` VALUES ('410728', '长垣县', '410700');
INSERT INTO `st_area` VALUES ('410781', '卫辉市', '410700');
INSERT INTO `st_area` VALUES ('410782', '辉县市', '410700');
INSERT INTO `st_area` VALUES ('410801', '市辖区', '410800');
INSERT INTO `st_area` VALUES ('410802', '解放区', '410800');
INSERT INTO `st_area` VALUES ('410803', '中站区', '410800');
INSERT INTO `st_area` VALUES ('410804', '马村区', '410800');
INSERT INTO `st_area` VALUES ('410811', '山阳区', '410800');
INSERT INTO `st_area` VALUES ('410821', '修武县', '410800');
INSERT INTO `st_area` VALUES ('410822', '博爱县', '410800');
INSERT INTO `st_area` VALUES ('410823', '武陟县', '410800');
INSERT INTO `st_area` VALUES ('410825', '温　县', '410800');
INSERT INTO `st_area` VALUES ('410881', '济源市', '410800');
INSERT INTO `st_area` VALUES ('410882', '沁阳市', '410800');
INSERT INTO `st_area` VALUES ('410883', '孟州市', '410800');
INSERT INTO `st_area` VALUES ('410901', '市辖区', '410900');
INSERT INTO `st_area` VALUES ('410902', '华龙区', '410900');
INSERT INTO `st_area` VALUES ('410922', '清丰县', '410900');
INSERT INTO `st_area` VALUES ('410923', '南乐县', '410900');
INSERT INTO `st_area` VALUES ('410926', '范　县', '410900');
INSERT INTO `st_area` VALUES ('410927', '台前县', '410900');
INSERT INTO `st_area` VALUES ('410928', '濮阳县', '410900');
INSERT INTO `st_area` VALUES ('411001', '市辖区', '411000');
INSERT INTO `st_area` VALUES ('411002', '魏都区', '411000');
INSERT INTO `st_area` VALUES ('411023', '许昌县', '411000');
INSERT INTO `st_area` VALUES ('411024', '鄢陵县', '411000');
INSERT INTO `st_area` VALUES ('411025', '襄城县', '411000');
INSERT INTO `st_area` VALUES ('411081', '禹州市', '411000');
INSERT INTO `st_area` VALUES ('411082', '长葛市', '411000');
INSERT INTO `st_area` VALUES ('411101', '市辖区', '411100');
INSERT INTO `st_area` VALUES ('411102', '源汇区', '411100');
INSERT INTO `st_area` VALUES ('411103', '郾城区', '411100');
INSERT INTO `st_area` VALUES ('411104', '召陵区', '411100');
INSERT INTO `st_area` VALUES ('411121', '舞阳县', '411100');
INSERT INTO `st_area` VALUES ('411122', '临颍县', '411100');
INSERT INTO `st_area` VALUES ('411201', '市辖区', '411200');
INSERT INTO `st_area` VALUES ('411202', '湖滨区', '411200');
INSERT INTO `st_area` VALUES ('411221', '渑池县', '411200');
INSERT INTO `st_area` VALUES ('411222', '陕　县', '411200');
INSERT INTO `st_area` VALUES ('411224', '卢氏县', '411200');
INSERT INTO `st_area` VALUES ('411281', '义马市', '411200');
INSERT INTO `st_area` VALUES ('411282', '灵宝市', '411200');
INSERT INTO `st_area` VALUES ('411301', '市辖区', '411300');
INSERT INTO `st_area` VALUES ('411302', '宛城区', '411300');
INSERT INTO `st_area` VALUES ('411303', '卧龙区', '411300');
INSERT INTO `st_area` VALUES ('411321', '南召县', '411300');
INSERT INTO `st_area` VALUES ('411322', '方城县', '411300');
INSERT INTO `st_area` VALUES ('411323', '西峡县', '411300');
INSERT INTO `st_area` VALUES ('411324', '镇平县', '411300');
INSERT INTO `st_area` VALUES ('411325', '内乡县', '411300');
INSERT INTO `st_area` VALUES ('411326', '淅川县', '411300');
INSERT INTO `st_area` VALUES ('411327', '社旗县', '411300');
INSERT INTO `st_area` VALUES ('411328', '唐河县', '411300');
INSERT INTO `st_area` VALUES ('411329', '新野县', '411300');
INSERT INTO `st_area` VALUES ('411330', '桐柏县', '411300');
INSERT INTO `st_area` VALUES ('411381', '邓州市', '411300');
INSERT INTO `st_area` VALUES ('411401', '市辖区', '411400');
INSERT INTO `st_area` VALUES ('411402', '梁园区', '411400');
INSERT INTO `st_area` VALUES ('411403', '睢阳区', '411400');
INSERT INTO `st_area` VALUES ('411421', '民权县', '411400');
INSERT INTO `st_area` VALUES ('411422', '睢　县', '411400');
INSERT INTO `st_area` VALUES ('411423', '宁陵县', '411400');
INSERT INTO `st_area` VALUES ('411424', '柘城县', '411400');
INSERT INTO `st_area` VALUES ('411425', '虞城县', '411400');
INSERT INTO `st_area` VALUES ('411426', '夏邑县', '411400');
INSERT INTO `st_area` VALUES ('411481', '永城市', '411400');
INSERT INTO `st_area` VALUES ('411501', '市辖区', '411500');
INSERT INTO `st_area` VALUES ('411502', '师河区', '411500');
INSERT INTO `st_area` VALUES ('411503', '平桥区', '411500');
INSERT INTO `st_area` VALUES ('411521', '罗山县', '411500');
INSERT INTO `st_area` VALUES ('411522', '光山县', '411500');
INSERT INTO `st_area` VALUES ('411523', '新　县', '411500');
INSERT INTO `st_area` VALUES ('411524', '商城县', '411500');
INSERT INTO `st_area` VALUES ('411525', '固始县', '411500');
INSERT INTO `st_area` VALUES ('411526', '潢川县', '411500');
INSERT INTO `st_area` VALUES ('411527', '淮滨县', '411500');
INSERT INTO `st_area` VALUES ('411528', '息　县', '411500');
INSERT INTO `st_area` VALUES ('411601', '市辖区', '411600');
INSERT INTO `st_area` VALUES ('411602', '川汇区', '411600');
INSERT INTO `st_area` VALUES ('411621', '扶沟县', '411600');
INSERT INTO `st_area` VALUES ('411622', '西华县', '411600');
INSERT INTO `st_area` VALUES ('411623', '商水县', '411600');
INSERT INTO `st_area` VALUES ('411624', '沈丘县', '411600');
INSERT INTO `st_area` VALUES ('411625', '郸城县', '411600');
INSERT INTO `st_area` VALUES ('411626', '淮阳县', '411600');
INSERT INTO `st_area` VALUES ('411627', '太康县', '411600');
INSERT INTO `st_area` VALUES ('411628', '鹿邑县', '411600');
INSERT INTO `st_area` VALUES ('411681', '项城市', '411600');
INSERT INTO `st_area` VALUES ('411701', '市辖区', '411700');
INSERT INTO `st_area` VALUES ('411702', '驿城区', '411700');
INSERT INTO `st_area` VALUES ('411721', '西平县', '411700');
INSERT INTO `st_area` VALUES ('411722', '上蔡县', '411700');
INSERT INTO `st_area` VALUES ('411723', '平舆县', '411700');
INSERT INTO `st_area` VALUES ('411724', '正阳县', '411700');
INSERT INTO `st_area` VALUES ('411725', '确山县', '411700');
INSERT INTO `st_area` VALUES ('411726', '泌阳县', '411700');
INSERT INTO `st_area` VALUES ('411727', '汝南县', '411700');
INSERT INTO `st_area` VALUES ('411728', '遂平县', '411700');
INSERT INTO `st_area` VALUES ('411729', '新蔡县', '411700');
INSERT INTO `st_area` VALUES ('420101', '市辖区', '420100');
INSERT INTO `st_area` VALUES ('420102', '江岸区', '420100');
INSERT INTO `st_area` VALUES ('420103', '江汉区', '420100');
INSERT INTO `st_area` VALUES ('420104', '乔口区', '420100');
INSERT INTO `st_area` VALUES ('420105', '汉阳区', '420100');
INSERT INTO `st_area` VALUES ('420106', '武昌区', '420100');
INSERT INTO `st_area` VALUES ('420107', '青山区', '420100');
INSERT INTO `st_area` VALUES ('420111', '洪山区', '420100');
INSERT INTO `st_area` VALUES ('420112', '东西湖区', '420100');
INSERT INTO `st_area` VALUES ('420113', '汉南区', '420100');
INSERT INTO `st_area` VALUES ('420114', '蔡甸区', '420100');
INSERT INTO `st_area` VALUES ('420115', '江夏区', '420100');
INSERT INTO `st_area` VALUES ('420116', '黄陂区', '420100');
INSERT INTO `st_area` VALUES ('420117', '新洲区', '420100');
INSERT INTO `st_area` VALUES ('420201', '市辖区', '420200');
INSERT INTO `st_area` VALUES ('420202', '黄石港区', '420200');
INSERT INTO `st_area` VALUES ('420203', '西塞山区', '420200');
INSERT INTO `st_area` VALUES ('420204', '下陆区', '420200');
INSERT INTO `st_area` VALUES ('420205', '铁山区', '420200');
INSERT INTO `st_area` VALUES ('420222', '阳新县', '420200');
INSERT INTO `st_area` VALUES ('420281', '大冶市', '420200');
INSERT INTO `st_area` VALUES ('420301', '市辖区', '420300');
INSERT INTO `st_area` VALUES ('420302', '茅箭区', '420300');
INSERT INTO `st_area` VALUES ('420303', '张湾区', '420300');
INSERT INTO `st_area` VALUES ('420321', '郧　县', '420300');
INSERT INTO `st_area` VALUES ('420322', '郧西县', '420300');
INSERT INTO `st_area` VALUES ('420323', '竹山县', '420300');
INSERT INTO `st_area` VALUES ('420324', '竹溪县', '420300');
INSERT INTO `st_area` VALUES ('420325', '房　县', '420300');
INSERT INTO `st_area` VALUES ('420381', '丹江口市', '420300');
INSERT INTO `st_area` VALUES ('420501', '市辖区', '420500');
INSERT INTO `st_area` VALUES ('420502', '西陵区', '420500');
INSERT INTO `st_area` VALUES ('420503', '伍家岗区', '420500');
INSERT INTO `st_area` VALUES ('420504', '点军区', '420500');
INSERT INTO `st_area` VALUES ('420505', '猇亭区', '420500');
INSERT INTO `st_area` VALUES ('420506', '夷陵区', '420500');
INSERT INTO `st_area` VALUES ('420525', '远安县', '420500');
INSERT INTO `st_area` VALUES ('420526', '兴山县', '420500');
INSERT INTO `st_area` VALUES ('420527', '秭归县', '420500');
INSERT INTO `st_area` VALUES ('420528', '长阳土家族自治县', '420500');
INSERT INTO `st_area` VALUES ('420529', '五峰土家族自治县', '420500');
INSERT INTO `st_area` VALUES ('420581', '宜都市', '420500');
INSERT INTO `st_area` VALUES ('420582', '当阳市', '420500');
INSERT INTO `st_area` VALUES ('420583', '枝江市', '420500');
INSERT INTO `st_area` VALUES ('420601', '市辖区', '420600');
INSERT INTO `st_area` VALUES ('420602', '襄城区', '420600');
INSERT INTO `st_area` VALUES ('420606', '樊城区', '420600');
INSERT INTO `st_area` VALUES ('420607', '襄阳区', '420600');
INSERT INTO `st_area` VALUES ('420624', '南漳县', '420600');
INSERT INTO `st_area` VALUES ('420625', '谷城县', '420600');
INSERT INTO `st_area` VALUES ('420626', '保康县', '420600');
INSERT INTO `st_area` VALUES ('420682', '老河口市', '420600');
INSERT INTO `st_area` VALUES ('420683', '枣阳市', '420600');
INSERT INTO `st_area` VALUES ('420684', '宜城市', '420600');
INSERT INTO `st_area` VALUES ('420701', '市辖区', '420700');
INSERT INTO `st_area` VALUES ('420702', '梁子湖区', '420700');
INSERT INTO `st_area` VALUES ('420703', '华容区', '420700');
INSERT INTO `st_area` VALUES ('420704', '鄂城区', '420700');
INSERT INTO `st_area` VALUES ('420801', '市辖区', '420800');
INSERT INTO `st_area` VALUES ('420802', '东宝区', '420800');
INSERT INTO `st_area` VALUES ('420804', '掇刀区', '420800');
INSERT INTO `st_area` VALUES ('420821', '京山县', '420800');
INSERT INTO `st_area` VALUES ('420822', '沙洋县', '420800');
INSERT INTO `st_area` VALUES ('420881', '钟祥市', '420800');
INSERT INTO `st_area` VALUES ('420901', '市辖区', '420900');
INSERT INTO `st_area` VALUES ('420902', '孝南区', '420900');
INSERT INTO `st_area` VALUES ('420921', '孝昌县', '420900');
INSERT INTO `st_area` VALUES ('420922', '大悟县', '420900');
INSERT INTO `st_area` VALUES ('420923', '云梦县', '420900');
INSERT INTO `st_area` VALUES ('420981', '应城市', '420900');
INSERT INTO `st_area` VALUES ('420982', '安陆市', '420900');
INSERT INTO `st_area` VALUES ('420984', '汉川市', '420900');
INSERT INTO `st_area` VALUES ('421001', '市辖区', '421000');
INSERT INTO `st_area` VALUES ('421002', '沙市区', '421000');
INSERT INTO `st_area` VALUES ('421003', '荆州区', '421000');
INSERT INTO `st_area` VALUES ('421022', '公安县', '421000');
INSERT INTO `st_area` VALUES ('421023', '监利县', '421000');
INSERT INTO `st_area` VALUES ('421024', '江陵县', '421000');
INSERT INTO `st_area` VALUES ('421081', '石首市', '421000');
INSERT INTO `st_area` VALUES ('421083', '洪湖市', '421000');
INSERT INTO `st_area` VALUES ('421087', '松滋市', '421000');
INSERT INTO `st_area` VALUES ('421101', '市辖区', '421100');
INSERT INTO `st_area` VALUES ('421102', '黄州区', '421100');
INSERT INTO `st_area` VALUES ('421121', '团风县', '421100');
INSERT INTO `st_area` VALUES ('421122', '红安县', '421100');
INSERT INTO `st_area` VALUES ('421123', '罗田县', '421100');
INSERT INTO `st_area` VALUES ('421124', '英山县', '421100');
INSERT INTO `st_area` VALUES ('421125', '浠水县', '421100');
INSERT INTO `st_area` VALUES ('421126', '蕲春县', '421100');
INSERT INTO `st_area` VALUES ('421127', '黄梅县', '421100');
INSERT INTO `st_area` VALUES ('421181', '麻城市', '421100');
INSERT INTO `st_area` VALUES ('421182', '武穴市', '421100');
INSERT INTO `st_area` VALUES ('421201', '市辖区', '421200');
INSERT INTO `st_area` VALUES ('421202', '咸安区', '421200');
INSERT INTO `st_area` VALUES ('421221', '嘉鱼县', '421200');
INSERT INTO `st_area` VALUES ('421222', '通城县', '421200');
INSERT INTO `st_area` VALUES ('421223', '崇阳县', '421200');
INSERT INTO `st_area` VALUES ('421224', '通山县', '421200');
INSERT INTO `st_area` VALUES ('421281', '赤壁市', '421200');
INSERT INTO `st_area` VALUES ('421301', '市辖区', '421300');
INSERT INTO `st_area` VALUES ('421302', '曾都区', '421300');
INSERT INTO `st_area` VALUES ('421381', '广水市', '421300');
INSERT INTO `st_area` VALUES ('422801', '恩施市', '422800');
INSERT INTO `st_area` VALUES ('422802', '利川市', '422800');
INSERT INTO `st_area` VALUES ('422822', '建始县', '422800');
INSERT INTO `st_area` VALUES ('422823', '巴东县', '422800');
INSERT INTO `st_area` VALUES ('422825', '宣恩县', '422800');
INSERT INTO `st_area` VALUES ('422826', '咸丰县', '422800');
INSERT INTO `st_area` VALUES ('422827', '来凤县', '422800');
INSERT INTO `st_area` VALUES ('422828', '鹤峰县', '422800');
INSERT INTO `st_area` VALUES ('429004', '仙桃市', '429000');
INSERT INTO `st_area` VALUES ('429005', '潜江市', '429000');
INSERT INTO `st_area` VALUES ('429006', '天门市', '429000');
INSERT INTO `st_area` VALUES ('429021', '神农架林区', '429000');
INSERT INTO `st_area` VALUES ('430101', '市辖区', '430100');
INSERT INTO `st_area` VALUES ('430102', '芙蓉区', '430100');
INSERT INTO `st_area` VALUES ('430103', '天心区', '430100');
INSERT INTO `st_area` VALUES ('430104', '岳麓区', '430100');
INSERT INTO `st_area` VALUES ('430105', '开福区', '430100');
INSERT INTO `st_area` VALUES ('430111', '雨花区', '430100');
INSERT INTO `st_area` VALUES ('430121', '长沙县', '430100');
INSERT INTO `st_area` VALUES ('430122', '望城县', '430100');
INSERT INTO `st_area` VALUES ('430124', '宁乡县', '430100');
INSERT INTO `st_area` VALUES ('430181', '浏阳市', '430100');
INSERT INTO `st_area` VALUES ('430201', '市辖区', '430200');
INSERT INTO `st_area` VALUES ('430202', '荷塘区', '430200');
INSERT INTO `st_area` VALUES ('430203', '芦淞区', '430200');
INSERT INTO `st_area` VALUES ('430204', '石峰区', '430200');
INSERT INTO `st_area` VALUES ('430211', '天元区', '430200');
INSERT INTO `st_area` VALUES ('430221', '株洲县', '430200');
INSERT INTO `st_area` VALUES ('430223', '攸　县', '430200');
INSERT INTO `st_area` VALUES ('430224', '茶陵县', '430200');
INSERT INTO `st_area` VALUES ('430225', '炎陵县', '430200');
INSERT INTO `st_area` VALUES ('430281', '醴陵市', '430200');
INSERT INTO `st_area` VALUES ('430301', '市辖区', '430300');
INSERT INTO `st_area` VALUES ('430302', '雨湖区', '430300');
INSERT INTO `st_area` VALUES ('430304', '岳塘区', '430300');
INSERT INTO `st_area` VALUES ('430321', '湘潭县', '430300');
INSERT INTO `st_area` VALUES ('430381', '湘乡市', '430300');
INSERT INTO `st_area` VALUES ('430382', '韶山市', '430300');
INSERT INTO `st_area` VALUES ('430401', '市辖区', '430400');
INSERT INTO `st_area` VALUES ('430405', '珠晖区', '430400');
INSERT INTO `st_area` VALUES ('430406', '雁峰区', '430400');
INSERT INTO `st_area` VALUES ('430407', '石鼓区', '430400');
INSERT INTO `st_area` VALUES ('430408', '蒸湘区', '430400');
INSERT INTO `st_area` VALUES ('430412', '南岳区', '430400');
INSERT INTO `st_area` VALUES ('430421', '衡阳县', '430400');
INSERT INTO `st_area` VALUES ('430422', '衡南县', '430400');
INSERT INTO `st_area` VALUES ('430423', '衡山县', '430400');
INSERT INTO `st_area` VALUES ('430424', '衡东县', '430400');
INSERT INTO `st_area` VALUES ('430426', '祁东县', '430400');
INSERT INTO `st_area` VALUES ('430481', '耒阳市', '430400');
INSERT INTO `st_area` VALUES ('430482', '常宁市', '430400');
INSERT INTO `st_area` VALUES ('430501', '市辖区', '430500');
INSERT INTO `st_area` VALUES ('430502', '双清区', '430500');
INSERT INTO `st_area` VALUES ('430503', '大祥区', '430500');
INSERT INTO `st_area` VALUES ('430511', '北塔区', '430500');
INSERT INTO `st_area` VALUES ('430521', '邵东县', '430500');
INSERT INTO `st_area` VALUES ('430522', '新邵县', '430500');
INSERT INTO `st_area` VALUES ('430523', '邵阳县', '430500');
INSERT INTO `st_area` VALUES ('430524', '隆回县', '430500');
INSERT INTO `st_area` VALUES ('430525', '洞口县', '430500');
INSERT INTO `st_area` VALUES ('430527', '绥宁县', '430500');
INSERT INTO `st_area` VALUES ('430528', '新宁县', '430500');
INSERT INTO `st_area` VALUES ('430529', '城步苗族自治县', '430500');
INSERT INTO `st_area` VALUES ('430581', '武冈市', '430500');
INSERT INTO `st_area` VALUES ('430601', '市辖区', '430600');
INSERT INTO `st_area` VALUES ('430602', '岳阳楼区', '430600');
INSERT INTO `st_area` VALUES ('430603', '云溪区', '430600');
INSERT INTO `st_area` VALUES ('430611', '君山区', '430600');
INSERT INTO `st_area` VALUES ('430621', '岳阳县', '430600');
INSERT INTO `st_area` VALUES ('430623', '华容县', '430600');
INSERT INTO `st_area` VALUES ('430624', '湘阴县', '430600');
INSERT INTO `st_area` VALUES ('430626', '平江县', '430600');
INSERT INTO `st_area` VALUES ('430681', '汨罗市', '430600');
INSERT INTO `st_area` VALUES ('430682', '临湘市', '430600');
INSERT INTO `st_area` VALUES ('430701', '市辖区', '430700');
INSERT INTO `st_area` VALUES ('430702', '武陵区', '430700');
INSERT INTO `st_area` VALUES ('430703', '鼎城区', '430700');
INSERT INTO `st_area` VALUES ('430721', '安乡县', '430700');
INSERT INTO `st_area` VALUES ('430722', '汉寿县', '430700');
INSERT INTO `st_area` VALUES ('430723', '澧　县', '430700');
INSERT INTO `st_area` VALUES ('430724', '临澧县', '430700');
INSERT INTO `st_area` VALUES ('430725', '桃源县', '430700');
INSERT INTO `st_area` VALUES ('430726', '石门县', '430700');
INSERT INTO `st_area` VALUES ('430781', '津市市', '430700');
INSERT INTO `st_area` VALUES ('430801', '市辖区', '430800');
INSERT INTO `st_area` VALUES ('430802', '永定区', '430800');
INSERT INTO `st_area` VALUES ('430811', '武陵源区', '430800');
INSERT INTO `st_area` VALUES ('430821', '慈利县', '430800');
INSERT INTO `st_area` VALUES ('430822', '桑植县', '430800');
INSERT INTO `st_area` VALUES ('430901', '市辖区', '430900');
INSERT INTO `st_area` VALUES ('430902', '资阳区', '430900');
INSERT INTO `st_area` VALUES ('430903', '赫山区', '430900');
INSERT INTO `st_area` VALUES ('430921', '南　县', '430900');
INSERT INTO `st_area` VALUES ('430922', '桃江县', '430900');
INSERT INTO `st_area` VALUES ('430923', '安化县', '430900');
INSERT INTO `st_area` VALUES ('430981', '沅江市', '430900');
INSERT INTO `st_area` VALUES ('431001', '市辖区', '431000');
INSERT INTO `st_area` VALUES ('431002', '北湖区', '431000');
INSERT INTO `st_area` VALUES ('431003', '苏仙区', '431000');
INSERT INTO `st_area` VALUES ('431021', '桂阳县', '431000');
INSERT INTO `st_area` VALUES ('431022', '宜章县', '431000');
INSERT INTO `st_area` VALUES ('431023', '永兴县', '431000');
INSERT INTO `st_area` VALUES ('431024', '嘉禾县', '431000');
INSERT INTO `st_area` VALUES ('431025', '临武县', '431000');
INSERT INTO `st_area` VALUES ('431026', '汝城县', '431000');
INSERT INTO `st_area` VALUES ('431027', '桂东县', '431000');
INSERT INTO `st_area` VALUES ('431028', '安仁县', '431000');
INSERT INTO `st_area` VALUES ('431081', '资兴市', '431000');
INSERT INTO `st_area` VALUES ('431101', '市辖区', '431100');
INSERT INTO `st_area` VALUES ('431102', '芝山区', '431100');
INSERT INTO `st_area` VALUES ('431103', '冷水滩区', '431100');
INSERT INTO `st_area` VALUES ('431121', '祁阳县', '431100');
INSERT INTO `st_area` VALUES ('431122', '东安县', '431100');
INSERT INTO `st_area` VALUES ('431123', '双牌县', '431100');
INSERT INTO `st_area` VALUES ('431124', '道　县', '431100');
INSERT INTO `st_area` VALUES ('431125', '江永县', '431100');
INSERT INTO `st_area` VALUES ('431126', '宁远县', '431100');
INSERT INTO `st_area` VALUES ('431127', '蓝山县', '431100');
INSERT INTO `st_area` VALUES ('431128', '新田县', '431100');
INSERT INTO `st_area` VALUES ('431129', '江华瑶族自治县', '431100');
INSERT INTO `st_area` VALUES ('431201', '市辖区', '431200');
INSERT INTO `st_area` VALUES ('431202', '鹤城区', '431200');
INSERT INTO `st_area` VALUES ('431221', '中方县', '431200');
INSERT INTO `st_area` VALUES ('431222', '沅陵县', '431200');
INSERT INTO `st_area` VALUES ('431223', '辰溪县', '431200');
INSERT INTO `st_area` VALUES ('431224', '溆浦县', '431200');
INSERT INTO `st_area` VALUES ('431225', '会同县', '431200');
INSERT INTO `st_area` VALUES ('431226', '麻阳苗族自治县', '431200');
INSERT INTO `st_area` VALUES ('431227', '新晃侗族自治县', '431200');
INSERT INTO `st_area` VALUES ('431228', '芷江侗族自治县', '431200');
INSERT INTO `st_area` VALUES ('431229', '靖州苗族侗族自治县', '431200');
INSERT INTO `st_area` VALUES ('431230', '通道侗族自治县', '431200');
INSERT INTO `st_area` VALUES ('431281', '洪江市', '431200');
INSERT INTO `st_area` VALUES ('431301', '市辖区', '431300');
INSERT INTO `st_area` VALUES ('431302', '娄星区', '431300');
INSERT INTO `st_area` VALUES ('431321', '双峰县', '431300');
INSERT INTO `st_area` VALUES ('431322', '新化县', '431300');
INSERT INTO `st_area` VALUES ('431381', '冷水江市', '431300');
INSERT INTO `st_area` VALUES ('431382', '涟源市', '431300');
INSERT INTO `st_area` VALUES ('433101', '吉首市', '433100');
INSERT INTO `st_area` VALUES ('433122', '泸溪县', '433100');
INSERT INTO `st_area` VALUES ('433123', '凤凰县', '433100');
INSERT INTO `st_area` VALUES ('433124', '花垣县', '433100');
INSERT INTO `st_area` VALUES ('433125', '保靖县', '433100');
INSERT INTO `st_area` VALUES ('433126', '古丈县', '433100');
INSERT INTO `st_area` VALUES ('433127', '永顺县', '433100');
INSERT INTO `st_area` VALUES ('433130', '龙山县', '433100');
INSERT INTO `st_area` VALUES ('440101', '市辖区', '440100');
INSERT INTO `st_area` VALUES ('440102', '东山区', '440100');
INSERT INTO `st_area` VALUES ('440103', '荔湾区', '440100');
INSERT INTO `st_area` VALUES ('440104', '越秀区', '440100');
INSERT INTO `st_area` VALUES ('440105', '海珠区', '440100');
INSERT INTO `st_area` VALUES ('440106', '天河区', '440100');
INSERT INTO `st_area` VALUES ('440107', '芳村区', '440100');
INSERT INTO `st_area` VALUES ('440111', '白云区', '440100');
INSERT INTO `st_area` VALUES ('440112', '黄埔区', '440100');
INSERT INTO `st_area` VALUES ('440113', '番禺区', '440100');
INSERT INTO `st_area` VALUES ('440114', '花都区', '440100');
INSERT INTO `st_area` VALUES ('440183', '增城市', '440100');
INSERT INTO `st_area` VALUES ('440184', '从化市', '440100');
INSERT INTO `st_area` VALUES ('440201', '市辖区', '440200');
INSERT INTO `st_area` VALUES ('440203', '武江区', '440200');
INSERT INTO `st_area` VALUES ('440204', '浈江区', '440200');
INSERT INTO `st_area` VALUES ('440205', '曲江区', '440200');
INSERT INTO `st_area` VALUES ('440222', '始兴县', '440200');
INSERT INTO `st_area` VALUES ('440224', '仁化县', '440200');
INSERT INTO `st_area` VALUES ('440229', '翁源县', '440200');
INSERT INTO `st_area` VALUES ('440232', '乳源瑶族自治县', '440200');
INSERT INTO `st_area` VALUES ('440233', '新丰县', '440200');
INSERT INTO `st_area` VALUES ('440281', '乐昌市', '440200');
INSERT INTO `st_area` VALUES ('440282', '南雄市', '440200');
INSERT INTO `st_area` VALUES ('440301', '市辖区', '440300');
INSERT INTO `st_area` VALUES ('440303', '罗湖区', '440300');
INSERT INTO `st_area` VALUES ('440304', '福田区', '440300');
INSERT INTO `st_area` VALUES ('440305', '南山区', '440300');
INSERT INTO `st_area` VALUES ('440306', '宝安区', '440300');
INSERT INTO `st_area` VALUES ('440307', '龙岗区', '440300');
INSERT INTO `st_area` VALUES ('440308', '盐田区', '440300');
INSERT INTO `st_area` VALUES ('440401', '市辖区', '440400');
INSERT INTO `st_area` VALUES ('440402', '香洲区', '440400');
INSERT INTO `st_area` VALUES ('440403', '斗门区', '440400');
INSERT INTO `st_area` VALUES ('440404', '金湾区', '440400');
INSERT INTO `st_area` VALUES ('440501', '市辖区', '440500');
INSERT INTO `st_area` VALUES ('440507', '龙湖区', '440500');
INSERT INTO `st_area` VALUES ('440511', '金平区', '440500');
INSERT INTO `st_area` VALUES ('440512', '濠江区', '440500');
INSERT INTO `st_area` VALUES ('440513', '潮阳区', '440500');
INSERT INTO `st_area` VALUES ('440514', '潮南区', '440500');
INSERT INTO `st_area` VALUES ('440515', '澄海区', '440500');
INSERT INTO `st_area` VALUES ('440523', '南澳县', '440500');
INSERT INTO `st_area` VALUES ('440601', '市辖区', '440600');
INSERT INTO `st_area` VALUES ('440604', '禅城区', '440600');
INSERT INTO `st_area` VALUES ('440605', '南海区', '440600');
INSERT INTO `st_area` VALUES ('440606', '顺德区', '440600');
INSERT INTO `st_area` VALUES ('440607', '三水区', '440600');
INSERT INTO `st_area` VALUES ('440608', '高明区', '440600');
INSERT INTO `st_area` VALUES ('440701', '市辖区', '440700');
INSERT INTO `st_area` VALUES ('440703', '蓬江区', '440700');
INSERT INTO `st_area` VALUES ('440704', '江海区', '440700');
INSERT INTO `st_area` VALUES ('440705', '新会区', '440700');
INSERT INTO `st_area` VALUES ('440781', '台山市', '440700');
INSERT INTO `st_area` VALUES ('440783', '开平市', '440700');
INSERT INTO `st_area` VALUES ('440784', '鹤山市', '440700');
INSERT INTO `st_area` VALUES ('440785', '恩平市', '440700');
INSERT INTO `st_area` VALUES ('440801', '市辖区', '440800');
INSERT INTO `st_area` VALUES ('440802', '赤坎区', '440800');
INSERT INTO `st_area` VALUES ('440803', '霞山区', '440800');
INSERT INTO `st_area` VALUES ('440804', '坡头区', '440800');
INSERT INTO `st_area` VALUES ('440811', '麻章区', '440800');
INSERT INTO `st_area` VALUES ('440823', '遂溪县', '440800');
INSERT INTO `st_area` VALUES ('440825', '徐闻县', '440800');
INSERT INTO `st_area` VALUES ('440881', '廉江市', '440800');
INSERT INTO `st_area` VALUES ('440882', '雷州市', '440800');
INSERT INTO `st_area` VALUES ('440883', '吴川市', '440800');
INSERT INTO `st_area` VALUES ('440901', '市辖区', '440900');
INSERT INTO `st_area` VALUES ('440902', '茂南区', '440900');
INSERT INTO `st_area` VALUES ('440903', '茂港区', '440900');
INSERT INTO `st_area` VALUES ('440923', '电白县', '440900');
INSERT INTO `st_area` VALUES ('440981', '高州市', '440900');
INSERT INTO `st_area` VALUES ('440982', '化州市', '440900');
INSERT INTO `st_area` VALUES ('440983', '信宜市', '440900');
INSERT INTO `st_area` VALUES ('441201', '市辖区', '441200');
INSERT INTO `st_area` VALUES ('441202', '端州区', '441200');
INSERT INTO `st_area` VALUES ('441203', '鼎湖区', '441200');
INSERT INTO `st_area` VALUES ('441223', '广宁县', '441200');
INSERT INTO `st_area` VALUES ('441224', '怀集县', '441200');
INSERT INTO `st_area` VALUES ('441225', '封开县', '441200');
INSERT INTO `st_area` VALUES ('441226', '德庆县', '441200');
INSERT INTO `st_area` VALUES ('441283', '高要市', '441200');
INSERT INTO `st_area` VALUES ('441284', '四会市', '441200');
INSERT INTO `st_area` VALUES ('441301', '市辖区', '441300');
INSERT INTO `st_area` VALUES ('441302', '惠城区', '441300');
INSERT INTO `st_area` VALUES ('441303', '惠阳区', '441300');
INSERT INTO `st_area` VALUES ('441322', '博罗县', '441300');
INSERT INTO `st_area` VALUES ('441323', '惠东县', '441300');
INSERT INTO `st_area` VALUES ('441324', '龙门县', '441300');
INSERT INTO `st_area` VALUES ('441401', '市辖区', '441400');
INSERT INTO `st_area` VALUES ('441402', '梅江区', '441400');
INSERT INTO `st_area` VALUES ('441421', '梅　县', '441400');
INSERT INTO `st_area` VALUES ('441422', '大埔县', '441400');
INSERT INTO `st_area` VALUES ('441423', '丰顺县', '441400');
INSERT INTO `st_area` VALUES ('441424', '五华县', '441400');
INSERT INTO `st_area` VALUES ('441426', '平远县', '441400');
INSERT INTO `st_area` VALUES ('441427', '蕉岭县', '441400');
INSERT INTO `st_area` VALUES ('441481', '兴宁市', '441400');
INSERT INTO `st_area` VALUES ('441501', '市辖区', '441500');
INSERT INTO `st_area` VALUES ('441502', '城　区', '441500');
INSERT INTO `st_area` VALUES ('441521', '海丰县', '441500');
INSERT INTO `st_area` VALUES ('441523', '陆河县', '441500');
INSERT INTO `st_area` VALUES ('441581', '陆丰市', '441500');
INSERT INTO `st_area` VALUES ('441601', '市辖区', '441600');
INSERT INTO `st_area` VALUES ('441602', '源城区', '441600');
INSERT INTO `st_area` VALUES ('441621', '紫金县', '441600');
INSERT INTO `st_area` VALUES ('441622', '龙川县', '441600');
INSERT INTO `st_area` VALUES ('441623', '连平县', '441600');
INSERT INTO `st_area` VALUES ('441624', '和平县', '441600');
INSERT INTO `st_area` VALUES ('441625', '东源县', '441600');
INSERT INTO `st_area` VALUES ('441701', '市辖区', '441700');
INSERT INTO `st_area` VALUES ('441702', '江城区', '441700');
INSERT INTO `st_area` VALUES ('441721', '阳西县', '441700');
INSERT INTO `st_area` VALUES ('441723', '阳东县', '441700');
INSERT INTO `st_area` VALUES ('441781', '阳春市', '441700');
INSERT INTO `st_area` VALUES ('441801', '市辖区', '441800');
INSERT INTO `st_area` VALUES ('441802', '清城区', '441800');
INSERT INTO `st_area` VALUES ('441821', '佛冈县', '441800');
INSERT INTO `st_area` VALUES ('441823', '阳山县', '441800');
INSERT INTO `st_area` VALUES ('441825', '连山壮族瑶族自治县', '441800');
INSERT INTO `st_area` VALUES ('441826', '连南瑶族自治县', '441800');
INSERT INTO `st_area` VALUES ('441827', '清新县', '441800');
INSERT INTO `st_area` VALUES ('441881', '英德市', '441800');
INSERT INTO `st_area` VALUES ('441882', '连州市', '441800');
INSERT INTO `st_area` VALUES ('441901', '莞城区', '441900');
INSERT INTO `st_area` VALUES ('441902', '南城区', '441900');
INSERT INTO `st_area` VALUES ('441903', '万江区', '441900');
INSERT INTO `st_area` VALUES ('441904', '东城区', '441900');
INSERT INTO `st_area` VALUES ('441905', '石碣镇', '441900');
INSERT INTO `st_area` VALUES ('441906', '石龙镇', '441900');
INSERT INTO `st_area` VALUES ('441907', '茶山镇', '441900');
INSERT INTO `st_area` VALUES ('441908', '石排镇', '441900');
INSERT INTO `st_area` VALUES ('441909', '企石镇', '441900');
INSERT INTO `st_area` VALUES ('441910', '横沥镇', '441900');
INSERT INTO `st_area` VALUES ('441911', '桥头镇', '441900');
INSERT INTO `st_area` VALUES ('441912', '谢岗镇', '441900');
INSERT INTO `st_area` VALUES ('441913', '东坑镇', '441900');
INSERT INTO `st_area` VALUES ('441914', '常平镇', '441900');
INSERT INTO `st_area` VALUES ('441915', '寮步镇', '441900');
INSERT INTO `st_area` VALUES ('441916', '大朗镇', '441900');
INSERT INTO `st_area` VALUES ('441917', '黄江镇', '441900');
INSERT INTO `st_area` VALUES ('441918', '清溪镇', '441900');
INSERT INTO `st_area` VALUES ('441919', '塘厦镇', '441900');
INSERT INTO `st_area` VALUES ('441920', '凤岗镇', '441900');
INSERT INTO `st_area` VALUES ('441921', '长安镇', '441900');
INSERT INTO `st_area` VALUES ('441922', '虎门镇', '441900');
INSERT INTO `st_area` VALUES ('441923', '厚街镇', '441900');
INSERT INTO `st_area` VALUES ('441924', '沙田镇', '441900');
INSERT INTO `st_area` VALUES ('441925', '道窖镇', '441900');
INSERT INTO `st_area` VALUES ('441926', '洪梅镇', '441900');
INSERT INTO `st_area` VALUES ('441927', '麻涌镇', '441900');
INSERT INTO `st_area` VALUES ('441928', '中堂镇', '441900');
INSERT INTO `st_area` VALUES ('441929', '高埗镇', '441900');
INSERT INTO `st_area` VALUES ('441930', '樟木头镇', '441900');
INSERT INTO `st_area` VALUES ('441931', '大岭山镇', '441900');
INSERT INTO `st_area` VALUES ('441932', '望牛墩镇', '441900');
INSERT INTO `st_area` VALUES ('442001', '石岐街道', '442000');
INSERT INTO `st_area` VALUES ('442002', '东区街道', '442000');
INSERT INTO `st_area` VALUES ('442003', '西区街道', '442000');
INSERT INTO `st_area` VALUES ('442004', '南区街道', '442000');
INSERT INTO `st_area` VALUES ('442005', '五桂山街道', '442000');
INSERT INTO `st_area` VALUES ('442006', '黄圃镇', '442000');
INSERT INTO `st_area` VALUES ('442007', '南头镇', '442000');
INSERT INTO `st_area` VALUES ('442008', '东凤镇', '442000');
INSERT INTO `st_area` VALUES ('442009', '阜沙镇', '442000');
INSERT INTO `st_area` VALUES ('442010', '小榄镇', '442000');
INSERT INTO `st_area` VALUES ('442011', '东升镇', '442000');
INSERT INTO `st_area` VALUES ('442012', '古镇镇', '442000');
INSERT INTO `st_area` VALUES ('442013', '横栏镇', '442000');
INSERT INTO `st_area` VALUES ('442014', '三角镇', '442000');
INSERT INTO `st_area` VALUES ('442015', '民众镇', '442000');
INSERT INTO `st_area` VALUES ('442016', '南朗镇', '442000');
INSERT INTO `st_area` VALUES ('442017', '港口镇', '442000');
INSERT INTO `st_area` VALUES ('442018', '大涌镇', '442000');
INSERT INTO `st_area` VALUES ('442019', '沙溪镇', '442000');
INSERT INTO `st_area` VALUES ('442020', '三乡镇', '442000');
INSERT INTO `st_area` VALUES ('442021', '板芙镇', '442000');
INSERT INTO `st_area` VALUES ('442022', '神湾镇', '442000');
INSERT INTO `st_area` VALUES ('442023', '坦洲镇', '442000');
INSERT INTO `st_area` VALUES ('442024', '中山火炬高技术产业开发区', '442000');
INSERT INTO `st_area` VALUES ('442025', '市辖区', '442000');
INSERT INTO `st_area` VALUES ('445101', '市辖区', '445100');
INSERT INTO `st_area` VALUES ('445102', '湘桥区', '445100');
INSERT INTO `st_area` VALUES ('445121', '潮安县', '445100');
INSERT INTO `st_area` VALUES ('445122', '饶平县', '445100');
INSERT INTO `st_area` VALUES ('445201', '市辖区', '445200');
INSERT INTO `st_area` VALUES ('445202', '榕城区', '445200');
INSERT INTO `st_area` VALUES ('445221', '揭东县', '445200');
INSERT INTO `st_area` VALUES ('445222', '揭西县', '445200');
INSERT INTO `st_area` VALUES ('445224', '惠来县', '445200');
INSERT INTO `st_area` VALUES ('445281', '普宁市', '445200');
INSERT INTO `st_area` VALUES ('445301', '市辖区', '445300');
INSERT INTO `st_area` VALUES ('445302', '云城区', '445300');
INSERT INTO `st_area` VALUES ('445321', '新兴县', '445300');
INSERT INTO `st_area` VALUES ('445322', '郁南县', '445300');
INSERT INTO `st_area` VALUES ('445323', '云安县', '445300');
INSERT INTO `st_area` VALUES ('445381', '罗定市', '445300');
INSERT INTO `st_area` VALUES ('450101', '市辖区', '450100');
INSERT INTO `st_area` VALUES ('450102', '兴宁区', '450100');
INSERT INTO `st_area` VALUES ('450103', '青秀区', '450100');
INSERT INTO `st_area` VALUES ('450105', '江南区', '450100');
INSERT INTO `st_area` VALUES ('450107', '西乡塘区', '450100');
INSERT INTO `st_area` VALUES ('450108', '良庆区', '450100');
INSERT INTO `st_area` VALUES ('450109', '邕宁区', '450100');
INSERT INTO `st_area` VALUES ('450122', '武鸣县', '450100');
INSERT INTO `st_area` VALUES ('450123', '隆安县', '450100');
INSERT INTO `st_area` VALUES ('450124', '马山县', '450100');
INSERT INTO `st_area` VALUES ('450125', '上林县', '450100');
INSERT INTO `st_area` VALUES ('450126', '宾阳县', '450100');
INSERT INTO `st_area` VALUES ('450127', '横　县', '450100');
INSERT INTO `st_area` VALUES ('450201', '市辖区', '450200');
INSERT INTO `st_area` VALUES ('450202', '城中区', '450200');
INSERT INTO `st_area` VALUES ('450203', '鱼峰区', '450200');
INSERT INTO `st_area` VALUES ('450204', '柳南区', '450200');
INSERT INTO `st_area` VALUES ('450205', '柳北区', '450200');
INSERT INTO `st_area` VALUES ('450221', '柳江县', '450200');
INSERT INTO `st_area` VALUES ('450222', '柳城县', '450200');
INSERT INTO `st_area` VALUES ('450223', '鹿寨县', '450200');
INSERT INTO `st_area` VALUES ('450224', '融安县', '450200');
INSERT INTO `st_area` VALUES ('450225', '融水苗族自治县', '450200');
INSERT INTO `st_area` VALUES ('450226', '三江侗族自治县', '450200');
INSERT INTO `st_area` VALUES ('450301', '市辖区', '450300');
INSERT INTO `st_area` VALUES ('450302', '秀峰区', '450300');
INSERT INTO `st_area` VALUES ('450303', '叠彩区', '450300');
INSERT INTO `st_area` VALUES ('450304', '象山区', '450300');
INSERT INTO `st_area` VALUES ('450305', '七星区', '450300');
INSERT INTO `st_area` VALUES ('450311', '雁山区', '450300');
INSERT INTO `st_area` VALUES ('450321', '阳朔县', '450300');
INSERT INTO `st_area` VALUES ('450322', '临桂县', '450300');
INSERT INTO `st_area` VALUES ('450323', '灵川县', '450300');
INSERT INTO `st_area` VALUES ('450324', '全州县', '450300');
INSERT INTO `st_area` VALUES ('450325', '兴安县', '450300');
INSERT INTO `st_area` VALUES ('450326', '永福县', '450300');
INSERT INTO `st_area` VALUES ('450327', '灌阳县', '450300');
INSERT INTO `st_area` VALUES ('450328', '龙胜各族自治县', '450300');
INSERT INTO `st_area` VALUES ('450329', '资源县', '450300');
INSERT INTO `st_area` VALUES ('450330', '平乐县', '450300');
INSERT INTO `st_area` VALUES ('450331', '荔蒲县', '450300');
INSERT INTO `st_area` VALUES ('450332', '恭城瑶族自治县', '450300');
INSERT INTO `st_area` VALUES ('450401', '市辖区', '450400');
INSERT INTO `st_area` VALUES ('450403', '万秀区', '450400');
INSERT INTO `st_area` VALUES ('450404', '蝶山区', '450400');
INSERT INTO `st_area` VALUES ('450405', '长洲区', '450400');
INSERT INTO `st_area` VALUES ('450421', '苍梧县', '450400');
INSERT INTO `st_area` VALUES ('450422', '藤　县', '450400');
INSERT INTO `st_area` VALUES ('450423', '蒙山县', '450400');
INSERT INTO `st_area` VALUES ('450481', '岑溪市', '450400');
INSERT INTO `st_area` VALUES ('450501', '市辖区', '450500');
INSERT INTO `st_area` VALUES ('450502', '海城区', '450500');
INSERT INTO `st_area` VALUES ('450503', '银海区', '450500');
INSERT INTO `st_area` VALUES ('450512', '铁山港区', '450500');
INSERT INTO `st_area` VALUES ('450521', '合浦县', '450500');
INSERT INTO `st_area` VALUES ('450601', '市辖区', '450600');
INSERT INTO `st_area` VALUES ('450602', '港口区', '450600');
INSERT INTO `st_area` VALUES ('450603', '防城区', '450600');
INSERT INTO `st_area` VALUES ('450621', '上思县', '450600');
INSERT INTO `st_area` VALUES ('450681', '东兴市', '450600');
INSERT INTO `st_area` VALUES ('450701', '市辖区', '450700');
INSERT INTO `st_area` VALUES ('450702', '钦南区', '450700');
INSERT INTO `st_area` VALUES ('450703', '钦北区', '450700');
INSERT INTO `st_area` VALUES ('450721', '灵山县', '450700');
INSERT INTO `st_area` VALUES ('450722', '浦北县', '450700');
INSERT INTO `st_area` VALUES ('450801', '市辖区', '450800');
INSERT INTO `st_area` VALUES ('450802', '港北区', '450800');
INSERT INTO `st_area` VALUES ('450803', '港南区', '450800');
INSERT INTO `st_area` VALUES ('450804', '覃塘区', '450800');
INSERT INTO `st_area` VALUES ('450821', '平南县', '450800');
INSERT INTO `st_area` VALUES ('450881', '桂平市', '450800');
INSERT INTO `st_area` VALUES ('450901', '市辖区', '450900');
INSERT INTO `st_area` VALUES ('450902', '玉州区', '450900');
INSERT INTO `st_area` VALUES ('450921', '容　县', '450900');
INSERT INTO `st_area` VALUES ('450922', '陆川县', '450900');
INSERT INTO `st_area` VALUES ('450923', '博白县', '450900');
INSERT INTO `st_area` VALUES ('450924', '兴业县', '450900');
INSERT INTO `st_area` VALUES ('450981', '北流市', '450900');
INSERT INTO `st_area` VALUES ('451001', '市辖区', '451000');
INSERT INTO `st_area` VALUES ('451002', '右江区', '451000');
INSERT INTO `st_area` VALUES ('451021', '田阳县', '451000');
INSERT INTO `st_area` VALUES ('451022', '田东县', '451000');
INSERT INTO `st_area` VALUES ('451023', '平果县', '451000');
INSERT INTO `st_area` VALUES ('451024', '德保县', '451000');
INSERT INTO `st_area` VALUES ('451025', '靖西县', '451000');
INSERT INTO `st_area` VALUES ('451026', '那坡县', '451000');
INSERT INTO `st_area` VALUES ('451027', '凌云县', '451000');
INSERT INTO `st_area` VALUES ('451028', '乐业县', '451000');
INSERT INTO `st_area` VALUES ('451029', '田林县', '451000');
INSERT INTO `st_area` VALUES ('451030', '西林县', '451000');
INSERT INTO `st_area` VALUES ('451031', '隆林各族自治县', '451000');
INSERT INTO `st_area` VALUES ('451101', '市辖区', '451100');
INSERT INTO `st_area` VALUES ('451102', '八步区', '451100');
INSERT INTO `st_area` VALUES ('451121', '昭平县', '451100');
INSERT INTO `st_area` VALUES ('451122', '钟山县', '451100');
INSERT INTO `st_area` VALUES ('451123', '富川瑶族自治县', '451100');
INSERT INTO `st_area` VALUES ('451201', '市辖区', '451200');
INSERT INTO `st_area` VALUES ('451202', '金城江区', '451200');
INSERT INTO `st_area` VALUES ('451221', '南丹县', '451200');
INSERT INTO `st_area` VALUES ('451222', '天峨县', '451200');
INSERT INTO `st_area` VALUES ('451223', '凤山县', '451200');
INSERT INTO `st_area` VALUES ('451224', '东兰县', '451200');
INSERT INTO `st_area` VALUES ('451225', '罗城仫佬族自治县', '451200');
INSERT INTO `st_area` VALUES ('451226', '环江毛南族自治县', '451200');
INSERT INTO `st_area` VALUES ('451227', '巴马瑶族自治县', '451200');
INSERT INTO `st_area` VALUES ('451228', '都安瑶族自治县', '451200');
INSERT INTO `st_area` VALUES ('451229', '大化瑶族自治县', '451200');
INSERT INTO `st_area` VALUES ('451281', '宜州市', '451200');
INSERT INTO `st_area` VALUES ('451301', '市辖区', '451300');
INSERT INTO `st_area` VALUES ('451302', '兴宾区', '451300');
INSERT INTO `st_area` VALUES ('451321', '忻城县', '451300');
INSERT INTO `st_area` VALUES ('451322', '象州县', '451300');
INSERT INTO `st_area` VALUES ('451323', '武宣县', '451300');
INSERT INTO `st_area` VALUES ('451324', '金秀瑶族自治县', '451300');
INSERT INTO `st_area` VALUES ('451381', '合山市', '451300');
INSERT INTO `st_area` VALUES ('451401', '市辖区', '451400');
INSERT INTO `st_area` VALUES ('451402', '江洲区', '451400');
INSERT INTO `st_area` VALUES ('451421', '扶绥县', '451400');
INSERT INTO `st_area` VALUES ('451422', '宁明县', '451400');
INSERT INTO `st_area` VALUES ('451423', '龙州县', '451400');
INSERT INTO `st_area` VALUES ('451424', '大新县', '451400');
INSERT INTO `st_area` VALUES ('451425', '天等县', '451400');
INSERT INTO `st_area` VALUES ('451481', '凭祥市', '451400');
INSERT INTO `st_area` VALUES ('460101', '市辖区', '460100');
INSERT INTO `st_area` VALUES ('460105', '秀英区', '460100');
INSERT INTO `st_area` VALUES ('460106', '龙华区', '460100');
INSERT INTO `st_area` VALUES ('460107', '琼山区', '460100');
INSERT INTO `st_area` VALUES ('460108', '美兰区', '460100');
INSERT INTO `st_area` VALUES ('460201', '市辖区', '460200');
INSERT INTO `st_area` VALUES ('469001', '五指山市', '469000');
INSERT INTO `st_area` VALUES ('469002', '琼海市', '469000');
INSERT INTO `st_area` VALUES ('469003', '儋州市', '469000');
INSERT INTO `st_area` VALUES ('469005', '文昌市', '469000');
INSERT INTO `st_area` VALUES ('469006', '万宁市', '469000');
INSERT INTO `st_area` VALUES ('469007', '东方市', '469000');
INSERT INTO `st_area` VALUES ('469025', '定安县', '469000');
INSERT INTO `st_area` VALUES ('469026', '屯昌县', '469000');
INSERT INTO `st_area` VALUES ('469027', '澄迈县', '469000');
INSERT INTO `st_area` VALUES ('469028', '临高县', '469000');
INSERT INTO `st_area` VALUES ('469030', '白沙黎族自治县', '469000');
INSERT INTO `st_area` VALUES ('469031', '昌江黎族自治县', '469000');
INSERT INTO `st_area` VALUES ('469033', '乐东黎族自治县', '469000');
INSERT INTO `st_area` VALUES ('469034', '陵水黎族自治县', '469000');
INSERT INTO `st_area` VALUES ('469035', '保亭黎族苗族自治县', '469000');
INSERT INTO `st_area` VALUES ('469036', '琼中黎族苗族自治县', '469000');
INSERT INTO `st_area` VALUES ('469037', '西沙群岛', '469000');
INSERT INTO `st_area` VALUES ('469038', '南沙群岛', '469000');
INSERT INTO `st_area` VALUES ('469039', '中沙群岛的岛礁及其海域', '469000');
INSERT INTO `st_area` VALUES ('500101', '万州区', '500100');
INSERT INTO `st_area` VALUES ('500102', '涪陵区', '500100');
INSERT INTO `st_area` VALUES ('500103', '渝中区', '500100');
INSERT INTO `st_area` VALUES ('500104', '大渡口区', '500100');
INSERT INTO `st_area` VALUES ('500105', '江北区', '500100');
INSERT INTO `st_area` VALUES ('500106', '沙坪坝区', '500100');
INSERT INTO `st_area` VALUES ('500107', '九龙坡区', '500100');
INSERT INTO `st_area` VALUES ('500108', '南岸区', '500100');
INSERT INTO `st_area` VALUES ('500109', '北碚区', '500100');
INSERT INTO `st_area` VALUES ('500110', '万盛区', '500100');
INSERT INTO `st_area` VALUES ('500111', '双桥区', '500100');
INSERT INTO `st_area` VALUES ('500112', '渝北区', '500100');
INSERT INTO `st_area` VALUES ('500113', '巴南区', '500100');
INSERT INTO `st_area` VALUES ('500114', '黔江区', '500100');
INSERT INTO `st_area` VALUES ('500115', '长寿区', '500100');
INSERT INTO `st_area` VALUES ('500222', '綦江县', '500100');
INSERT INTO `st_area` VALUES ('500223', '潼南县', '500100');
INSERT INTO `st_area` VALUES ('500224', '铜梁县', '500100');
INSERT INTO `st_area` VALUES ('500225', '大足县', '500100');
INSERT INTO `st_area` VALUES ('500226', '荣昌县', '500100');
INSERT INTO `st_area` VALUES ('500227', '璧山县', '500100');
INSERT INTO `st_area` VALUES ('500228', '梁平县', '500100');
INSERT INTO `st_area` VALUES ('500229', '城口县', '500100');
INSERT INTO `st_area` VALUES ('500230', '丰都县', '500100');
INSERT INTO `st_area` VALUES ('500231', '垫江县', '500100');
INSERT INTO `st_area` VALUES ('500232', '武隆县', '500100');
INSERT INTO `st_area` VALUES ('500233', '忠　县', '500100');
INSERT INTO `st_area` VALUES ('500234', '开　县', '500100');
INSERT INTO `st_area` VALUES ('500235', '云阳县', '500100');
INSERT INTO `st_area` VALUES ('500236', '奉节县', '500100');
INSERT INTO `st_area` VALUES ('500237', '巫山县', '500100');
INSERT INTO `st_area` VALUES ('500238', '巫溪县', '500100');
INSERT INTO `st_area` VALUES ('500240', '石柱土家族自治县', '500100');
INSERT INTO `st_area` VALUES ('500241', '秀山土家族苗族自治县', '500100');
INSERT INTO `st_area` VALUES ('500242', '酉阳土家族苗族自治县', '500100');
INSERT INTO `st_area` VALUES ('500243', '彭水苗族土家族自治县', '500100');
INSERT INTO `st_area` VALUES ('500381', '江津市', '500100');
INSERT INTO `st_area` VALUES ('500382', '合川市', '500100');
INSERT INTO `st_area` VALUES ('500383', '永川市', '500100');
INSERT INTO `st_area` VALUES ('500384', '南川市', '500100');
INSERT INTO `st_area` VALUES ('510101', '市辖区', '510100');
INSERT INTO `st_area` VALUES ('510104', '锦江区', '510100');
INSERT INTO `st_area` VALUES ('510105', '青羊区', '510100');
INSERT INTO `st_area` VALUES ('510106', '金牛区', '510100');
INSERT INTO `st_area` VALUES ('510107', '武侯区', '510100');
INSERT INTO `st_area` VALUES ('510108', '成华区', '510100');
INSERT INTO `st_area` VALUES ('510112', '龙泉驿区', '510100');
INSERT INTO `st_area` VALUES ('510113', '青白江区', '510100');
INSERT INTO `st_area` VALUES ('510114', '新都区', '510100');
INSERT INTO `st_area` VALUES ('510115', '温江县', '510100');
INSERT INTO `st_area` VALUES ('510121', '金堂县', '510100');
INSERT INTO `st_area` VALUES ('510122', '双流县', '510100');
INSERT INTO `st_area` VALUES ('510124', '郫　县', '510100');
INSERT INTO `st_area` VALUES ('510129', '大邑县', '510100');
INSERT INTO `st_area` VALUES ('510131', '蒲江县', '510100');
INSERT INTO `st_area` VALUES ('510132', '新津县', '510100');
INSERT INTO `st_area` VALUES ('510181', '都江堰市', '510100');
INSERT INTO `st_area` VALUES ('510182', '彭州市', '510100');
INSERT INTO `st_area` VALUES ('510183', '邛崃市', '510100');
INSERT INTO `st_area` VALUES ('510184', '崇州市', '510100');
INSERT INTO `st_area` VALUES ('510301', '市辖区', '510300');
INSERT INTO `st_area` VALUES ('510302', '自流井区', '510300');
INSERT INTO `st_area` VALUES ('510303', '贡井区', '510300');
INSERT INTO `st_area` VALUES ('510304', '大安区', '510300');
INSERT INTO `st_area` VALUES ('510311', '沿滩区', '510300');
INSERT INTO `st_area` VALUES ('510321', '荣　县', '510300');
INSERT INTO `st_area` VALUES ('510322', '富顺县', '510300');
INSERT INTO `st_area` VALUES ('510401', '市辖区', '510400');
INSERT INTO `st_area` VALUES ('510402', '东　区', '510400');
INSERT INTO `st_area` VALUES ('510403', '西　区', '510400');
INSERT INTO `st_area` VALUES ('510411', '仁和区', '510400');
INSERT INTO `st_area` VALUES ('510421', '米易县', '510400');
INSERT INTO `st_area` VALUES ('510422', '盐边县', '510400');
INSERT INTO `st_area` VALUES ('510501', '市辖区', '510500');
INSERT INTO `st_area` VALUES ('510502', '江阳区', '510500');
INSERT INTO `st_area` VALUES ('510503', '纳溪区', '510500');
INSERT INTO `st_area` VALUES ('510504', '龙马潭区', '510500');
INSERT INTO `st_area` VALUES ('510521', '泸　县', '510500');
INSERT INTO `st_area` VALUES ('510522', '合江县', '510500');
INSERT INTO `st_area` VALUES ('510524', '叙永县', '510500');
INSERT INTO `st_area` VALUES ('510525', '古蔺县', '510500');
INSERT INTO `st_area` VALUES ('510601', '市辖区', '510600');
INSERT INTO `st_area` VALUES ('510603', '旌阳区', '510600');
INSERT INTO `st_area` VALUES ('510623', '中江县', '510600');
INSERT INTO `st_area` VALUES ('510626', '罗江县', '510600');
INSERT INTO `st_area` VALUES ('510681', '广汉市', '510600');
INSERT INTO `st_area` VALUES ('510682', '什邡市', '510600');
INSERT INTO `st_area` VALUES ('510683', '绵竹市', '510600');
INSERT INTO `st_area` VALUES ('510701', '市辖区', '510700');
INSERT INTO `st_area` VALUES ('510703', '涪城区', '510700');
INSERT INTO `st_area` VALUES ('510704', '游仙区', '510700');
INSERT INTO `st_area` VALUES ('510722', '三台县', '510700');
INSERT INTO `st_area` VALUES ('510723', '盐亭县', '510700');
INSERT INTO `st_area` VALUES ('510724', '安　县', '510700');
INSERT INTO `st_area` VALUES ('510725', '梓潼县', '510700');
INSERT INTO `st_area` VALUES ('510726', '北川羌族自治县', '510700');
INSERT INTO `st_area` VALUES ('510727', '平武县', '510700');
INSERT INTO `st_area` VALUES ('510781', '江油市', '510700');
INSERT INTO `st_area` VALUES ('510801', '市辖区', '510800');
INSERT INTO `st_area` VALUES ('510802', '市中区', '510800');
INSERT INTO `st_area` VALUES ('510811', '元坝区', '510800');
INSERT INTO `st_area` VALUES ('510812', '朝天区', '510800');
INSERT INTO `st_area` VALUES ('510821', '旺苍县', '510800');
INSERT INTO `st_area` VALUES ('510822', '青川县', '510800');
INSERT INTO `st_area` VALUES ('510823', '剑阁县', '510800');
INSERT INTO `st_area` VALUES ('510824', '苍溪县', '510800');
INSERT INTO `st_area` VALUES ('510901', '市辖区', '510900');
INSERT INTO `st_area` VALUES ('510903', '船山区', '510900');
INSERT INTO `st_area` VALUES ('510904', '安居区', '510900');
INSERT INTO `st_area` VALUES ('510921', '蓬溪县', '510900');
INSERT INTO `st_area` VALUES ('510922', '射洪县', '510900');
INSERT INTO `st_area` VALUES ('510923', '大英县', '510900');
INSERT INTO `st_area` VALUES ('511001', '市辖区', '511000');
INSERT INTO `st_area` VALUES ('511002', '市中区', '511000');
INSERT INTO `st_area` VALUES ('511011', '东兴区', '511000');
INSERT INTO `st_area` VALUES ('511024', '威远县', '511000');
INSERT INTO `st_area` VALUES ('511025', '资中县', '511000');
INSERT INTO `st_area` VALUES ('511028', '隆昌县', '511000');
INSERT INTO `st_area` VALUES ('511101', '市辖区', '511100');
INSERT INTO `st_area` VALUES ('511102', '市中区', '511100');
INSERT INTO `st_area` VALUES ('511111', '沙湾区', '511100');
INSERT INTO `st_area` VALUES ('511112', '五通桥区', '511100');
INSERT INTO `st_area` VALUES ('511113', '金口河区', '511100');
INSERT INTO `st_area` VALUES ('511123', '犍为县', '511100');
INSERT INTO `st_area` VALUES ('511124', '井研县', '511100');
INSERT INTO `st_area` VALUES ('511126', '夹江县', '511100');
INSERT INTO `st_area` VALUES ('511129', '沐川县', '511100');
INSERT INTO `st_area` VALUES ('511132', '峨边彝族自治县', '511100');
INSERT INTO `st_area` VALUES ('511133', '马边彝族自治县', '511100');
INSERT INTO `st_area` VALUES ('511181', '峨眉山市', '511100');
INSERT INTO `st_area` VALUES ('511301', '市辖区', '511300');
INSERT INTO `st_area` VALUES ('511302', '顺庆区', '511300');
INSERT INTO `st_area` VALUES ('511303', '高坪区', '511300');
INSERT INTO `st_area` VALUES ('511304', '嘉陵区', '511300');
INSERT INTO `st_area` VALUES ('511321', '南部县', '511300');
INSERT INTO `st_area` VALUES ('511322', '营山县', '511300');
INSERT INTO `st_area` VALUES ('511323', '蓬安县', '511300');
INSERT INTO `st_area` VALUES ('511324', '仪陇县', '511300');
INSERT INTO `st_area` VALUES ('511325', '西充县', '511300');
INSERT INTO `st_area` VALUES ('511381', '阆中市', '511300');
INSERT INTO `st_area` VALUES ('511401', '市辖区', '511400');
INSERT INTO `st_area` VALUES ('511402', '东坡区', '511400');
INSERT INTO `st_area` VALUES ('511421', '仁寿县', '511400');
INSERT INTO `st_area` VALUES ('511422', '彭山县', '511400');
INSERT INTO `st_area` VALUES ('511423', '洪雅县', '511400');
INSERT INTO `st_area` VALUES ('511424', '丹棱县', '511400');
INSERT INTO `st_area` VALUES ('511425', '青神县', '511400');
INSERT INTO `st_area` VALUES ('511501', '市辖区', '511500');
INSERT INTO `st_area` VALUES ('511502', '翠屏区', '511500');
INSERT INTO `st_area` VALUES ('511521', '宜宾县', '511500');
INSERT INTO `st_area` VALUES ('511522', '南溪县', '511500');
INSERT INTO `st_area` VALUES ('511523', '江安县', '511500');
INSERT INTO `st_area` VALUES ('511524', '长宁县', '511500');
INSERT INTO `st_area` VALUES ('511525', '高　县', '511500');
INSERT INTO `st_area` VALUES ('511526', '珙　县', '511500');
INSERT INTO `st_area` VALUES ('511527', '筠连县', '511500');
INSERT INTO `st_area` VALUES ('511528', '兴文县', '511500');
INSERT INTO `st_area` VALUES ('511529', '屏山县', '511500');
INSERT INTO `st_area` VALUES ('511601', '市辖区', '511600');
INSERT INTO `st_area` VALUES ('511602', '广安区', '511600');
INSERT INTO `st_area` VALUES ('511621', '岳池县', '511600');
INSERT INTO `st_area` VALUES ('511622', '武胜县', '511600');
INSERT INTO `st_area` VALUES ('511623', '邻水县', '511600');
INSERT INTO `st_area` VALUES ('511681', '华莹市', '511600');
INSERT INTO `st_area` VALUES ('511701', '市辖区', '511700');
INSERT INTO `st_area` VALUES ('511702', '通川区', '511700');
INSERT INTO `st_area` VALUES ('511721', '达　县', '511700');
INSERT INTO `st_area` VALUES ('511722', '宣汉县', '511700');
INSERT INTO `st_area` VALUES ('511723', '开江县', '511700');
INSERT INTO `st_area` VALUES ('511724', '大竹县', '511700');
INSERT INTO `st_area` VALUES ('511725', '渠　县', '511700');
INSERT INTO `st_area` VALUES ('511781', '万源市', '511700');
INSERT INTO `st_area` VALUES ('511801', '市辖区', '511800');
INSERT INTO `st_area` VALUES ('511802', '雨城区', '511800');
INSERT INTO `st_area` VALUES ('511821', '名山县', '511800');
INSERT INTO `st_area` VALUES ('511822', '荥经县', '511800');
INSERT INTO `st_area` VALUES ('511823', '汉源县', '511800');
INSERT INTO `st_area` VALUES ('511824', '石棉县', '511800');
INSERT INTO `st_area` VALUES ('511825', '天全县', '511800');
INSERT INTO `st_area` VALUES ('511826', '芦山县', '511800');
INSERT INTO `st_area` VALUES ('511827', '宝兴县', '511800');
INSERT INTO `st_area` VALUES ('511901', '市辖区', '511900');
INSERT INTO `st_area` VALUES ('511902', '巴州区', '511900');
INSERT INTO `st_area` VALUES ('511921', '通江县', '511900');
INSERT INTO `st_area` VALUES ('511922', '南江县', '511900');
INSERT INTO `st_area` VALUES ('511923', '平昌县', '511900');
INSERT INTO `st_area` VALUES ('512001', '市辖区', '512000');
INSERT INTO `st_area` VALUES ('512002', '雁江区', '512000');
INSERT INTO `st_area` VALUES ('512021', '安岳县', '512000');
INSERT INTO `st_area` VALUES ('512022', '乐至县', '512000');
INSERT INTO `st_area` VALUES ('512081', '简阳市', '512000');
INSERT INTO `st_area` VALUES ('513221', '汶川县', '513200');
INSERT INTO `st_area` VALUES ('513222', '理　县', '513200');
INSERT INTO `st_area` VALUES ('513223', '茂　县', '513200');
INSERT INTO `st_area` VALUES ('513224', '松潘县', '513200');
INSERT INTO `st_area` VALUES ('513225', '九寨沟县', '513200');
INSERT INTO `st_area` VALUES ('513226', '金川县', '513200');
INSERT INTO `st_area` VALUES ('513227', '小金县', '513200');
INSERT INTO `st_area` VALUES ('513228', '黑水县', '513200');
INSERT INTO `st_area` VALUES ('513229', '马尔康县', '513200');
INSERT INTO `st_area` VALUES ('513230', '壤塘县', '513200');
INSERT INTO `st_area` VALUES ('513231', '阿坝县', '513200');
INSERT INTO `st_area` VALUES ('513232', '若尔盖县', '513200');
INSERT INTO `st_area` VALUES ('513233', '红原县', '513200');
INSERT INTO `st_area` VALUES ('513321', '康定县', '513300');
INSERT INTO `st_area` VALUES ('513322', '泸定县', '513300');
INSERT INTO `st_area` VALUES ('513323', '丹巴县', '513300');
INSERT INTO `st_area` VALUES ('513324', '九龙县', '513300');
INSERT INTO `st_area` VALUES ('513325', '雅江县', '513300');
INSERT INTO `st_area` VALUES ('513326', '道孚县', '513300');
INSERT INTO `st_area` VALUES ('513327', '炉霍县', '513300');
INSERT INTO `st_area` VALUES ('513328', '甘孜县', '513300');
INSERT INTO `st_area` VALUES ('513329', '新龙县', '513300');
INSERT INTO `st_area` VALUES ('513330', '德格县', '513300');
INSERT INTO `st_area` VALUES ('513331', '白玉县', '513300');
INSERT INTO `st_area` VALUES ('513332', '石渠县', '513300');
INSERT INTO `st_area` VALUES ('513333', '色达县', '513300');
INSERT INTO `st_area` VALUES ('513334', '理塘县', '513300');
INSERT INTO `st_area` VALUES ('513335', '巴塘县', '513300');
INSERT INTO `st_area` VALUES ('513336', '乡城县', '513300');
INSERT INTO `st_area` VALUES ('513337', '稻城县', '513300');
INSERT INTO `st_area` VALUES ('513338', '得荣县', '513300');
INSERT INTO `st_area` VALUES ('513401', '西昌市', '513400');
INSERT INTO `st_area` VALUES ('513422', '木里藏族自治县', '513400');
INSERT INTO `st_area` VALUES ('513423', '盐源县', '513400');
INSERT INTO `st_area` VALUES ('513424', '德昌县', '513400');
INSERT INTO `st_area` VALUES ('513425', '会理县', '513400');
INSERT INTO `st_area` VALUES ('513426', '会东县', '513400');
INSERT INTO `st_area` VALUES ('513427', '宁南县', '513400');
INSERT INTO `st_area` VALUES ('513428', '普格县', '513400');
INSERT INTO `st_area` VALUES ('513429', '布拖县', '513400');
INSERT INTO `st_area` VALUES ('513430', '金阳县', '513400');
INSERT INTO `st_area` VALUES ('513431', '昭觉县', '513400');
INSERT INTO `st_area` VALUES ('513432', '喜德县', '513400');
INSERT INTO `st_area` VALUES ('513433', '冕宁县', '513400');
INSERT INTO `st_area` VALUES ('513434', '越西县', '513400');
INSERT INTO `st_area` VALUES ('513435', '甘洛县', '513400');
INSERT INTO `st_area` VALUES ('513436', '美姑县', '513400');
INSERT INTO `st_area` VALUES ('513437', '雷波县', '513400');
INSERT INTO `st_area` VALUES ('520101', '市辖区', '520100');
INSERT INTO `st_area` VALUES ('520102', '南明区', '520100');
INSERT INTO `st_area` VALUES ('520103', '云岩区', '520100');
INSERT INTO `st_area` VALUES ('520111', '花溪区', '520100');
INSERT INTO `st_area` VALUES ('520112', '乌当区', '520100');
INSERT INTO `st_area` VALUES ('520113', '白云区', '520100');
INSERT INTO `st_area` VALUES ('520114', '小河区', '520100');
INSERT INTO `st_area` VALUES ('520121', '开阳县', '520100');
INSERT INTO `st_area` VALUES ('520122', '息烽县', '520100');
INSERT INTO `st_area` VALUES ('520123', '修文县', '520100');
INSERT INTO `st_area` VALUES ('520181', '清镇市', '520100');
INSERT INTO `st_area` VALUES ('520201', '钟山区', '520200');
INSERT INTO `st_area` VALUES ('520203', '六枝特区', '520200');
INSERT INTO `st_area` VALUES ('520221', '水城县', '520200');
INSERT INTO `st_area` VALUES ('520222', '盘　县', '520200');
INSERT INTO `st_area` VALUES ('520301', '市辖区', '520300');
INSERT INTO `st_area` VALUES ('520302', '红花岗区', '520300');
INSERT INTO `st_area` VALUES ('520303', '汇川区', '520300');
INSERT INTO `st_area` VALUES ('520321', '遵义县', '520300');
INSERT INTO `st_area` VALUES ('520322', '桐梓县', '520300');
INSERT INTO `st_area` VALUES ('520323', '绥阳县', '520300');
INSERT INTO `st_area` VALUES ('520324', '正安县', '520300');
INSERT INTO `st_area` VALUES ('520325', '道真仡佬族苗族自治县', '520300');
INSERT INTO `st_area` VALUES ('520326', '务川仡佬族苗族自治县', '520300');
INSERT INTO `st_area` VALUES ('520327', '凤冈县', '520300');
INSERT INTO `st_area` VALUES ('520328', '湄潭县', '520300');
INSERT INTO `st_area` VALUES ('520329', '余庆县', '520300');
INSERT INTO `st_area` VALUES ('520330', '习水县', '520300');
INSERT INTO `st_area` VALUES ('520381', '赤水市', '520300');
INSERT INTO `st_area` VALUES ('520382', '仁怀市', '520300');
INSERT INTO `st_area` VALUES ('520401', '市辖区', '520400');
INSERT INTO `st_area` VALUES ('520402', '西秀区', '520400');
INSERT INTO `st_area` VALUES ('520421', '平坝县', '520400');
INSERT INTO `st_area` VALUES ('520422', '普定县', '520400');
INSERT INTO `st_area` VALUES ('520423', '镇宁布依族苗族自治县', '520400');
INSERT INTO `st_area` VALUES ('520424', '关岭布依族苗族自治县', '520400');
INSERT INTO `st_area` VALUES ('520425', '紫云苗族布依族自治县', '520400');
INSERT INTO `st_area` VALUES ('522201', '铜仁市', '522200');
INSERT INTO `st_area` VALUES ('522222', '江口县', '522200');
INSERT INTO `st_area` VALUES ('522223', '玉屏侗族自治县', '522200');
INSERT INTO `st_area` VALUES ('522224', '石阡县', '522200');
INSERT INTO `st_area` VALUES ('522225', '思南县', '522200');
INSERT INTO `st_area` VALUES ('522226', '印江土家族苗族自治县', '522200');
INSERT INTO `st_area` VALUES ('522227', '德江县', '522200');
INSERT INTO `st_area` VALUES ('522228', '沿河土家族自治县', '522200');
INSERT INTO `st_area` VALUES ('522229', '松桃苗族自治县', '522200');
INSERT INTO `st_area` VALUES ('522230', '万山特区', '522200');
INSERT INTO `st_area` VALUES ('522301', '兴义市', '522300');
INSERT INTO `st_area` VALUES ('522322', '兴仁县', '522300');
INSERT INTO `st_area` VALUES ('522323', '普安县', '522300');
INSERT INTO `st_area` VALUES ('522324', '晴隆县', '522300');
INSERT INTO `st_area` VALUES ('522325', '贞丰县', '522300');
INSERT INTO `st_area` VALUES ('522326', '望谟县', '522300');
INSERT INTO `st_area` VALUES ('522327', '册亨县', '522300');
INSERT INTO `st_area` VALUES ('522328', '安龙县', '522300');
INSERT INTO `st_area` VALUES ('522401', '毕节市', '522400');
INSERT INTO `st_area` VALUES ('522422', '大方县', '522400');
INSERT INTO `st_area` VALUES ('522423', '黔西县', '522400');
INSERT INTO `st_area` VALUES ('522424', '金沙县', '522400');
INSERT INTO `st_area` VALUES ('522425', '织金县', '522400');
INSERT INTO `st_area` VALUES ('522426', '纳雍县', '522400');
INSERT INTO `st_area` VALUES ('522427', '威宁彝族回族苗族自治县', '522400');
INSERT INTO `st_area` VALUES ('522428', '赫章县', '522400');
INSERT INTO `st_area` VALUES ('522601', '凯里市', '522600');
INSERT INTO `st_area` VALUES ('522622', '黄平县', '522600');
INSERT INTO `st_area` VALUES ('522623', '施秉县', '522600');
INSERT INTO `st_area` VALUES ('522624', '三穗县', '522600');
INSERT INTO `st_area` VALUES ('522625', '镇远县', '522600');
INSERT INTO `st_area` VALUES ('522626', '岑巩县', '522600');
INSERT INTO `st_area` VALUES ('522627', '天柱县', '522600');
INSERT INTO `st_area` VALUES ('522628', '锦屏县', '522600');
INSERT INTO `st_area` VALUES ('522629', '剑河县', '522600');
INSERT INTO `st_area` VALUES ('522630', '台江县', '522600');
INSERT INTO `st_area` VALUES ('522631', '黎平县', '522600');
INSERT INTO `st_area` VALUES ('522632', '榕江县', '522600');
INSERT INTO `st_area` VALUES ('522633', '从江县', '522600');
INSERT INTO `st_area` VALUES ('522634', '雷山县', '522600');
INSERT INTO `st_area` VALUES ('522635', '麻江县', '522600');
INSERT INTO `st_area` VALUES ('522636', '丹寨县', '522600');
INSERT INTO `st_area` VALUES ('522701', '都匀市', '522700');
INSERT INTO `st_area` VALUES ('522702', '福泉市', '522700');
INSERT INTO `st_area` VALUES ('522722', '荔波县', '522700');
INSERT INTO `st_area` VALUES ('522723', '贵定县', '522700');
INSERT INTO `st_area` VALUES ('522725', '瓮安县', '522700');
INSERT INTO `st_area` VALUES ('522726', '独山县', '522700');
INSERT INTO `st_area` VALUES ('522727', '平塘县', '522700');
INSERT INTO `st_area` VALUES ('522728', '罗甸县', '522700');
INSERT INTO `st_area` VALUES ('522729', '长顺县', '522700');
INSERT INTO `st_area` VALUES ('522730', '龙里县', '522700');
INSERT INTO `st_area` VALUES ('522731', '惠水县', '522700');
INSERT INTO `st_area` VALUES ('522732', '三都水族自治县', '522700');
INSERT INTO `st_area` VALUES ('530101', '市辖区', '530100');
INSERT INTO `st_area` VALUES ('530102', '五华区', '530100');
INSERT INTO `st_area` VALUES ('530103', '盘龙区', '530100');
INSERT INTO `st_area` VALUES ('530111', '官渡区', '530100');
INSERT INTO `st_area` VALUES ('530112', '西山区', '530100');
INSERT INTO `st_area` VALUES ('530113', '东川区', '530100');
INSERT INTO `st_area` VALUES ('530121', '呈贡县', '530100');
INSERT INTO `st_area` VALUES ('530122', '晋宁县', '530100');
INSERT INTO `st_area` VALUES ('530124', '富民县', '530100');
INSERT INTO `st_area` VALUES ('530125', '宜良县', '530100');
INSERT INTO `st_area` VALUES ('530126', '石林彝族自治县', '530100');
INSERT INTO `st_area` VALUES ('530127', '嵩明县', '530100');
INSERT INTO `st_area` VALUES ('530128', '禄劝彝族苗族自治县', '530100');
INSERT INTO `st_area` VALUES ('530129', '寻甸回族彝族自治县', '530100');
INSERT INTO `st_area` VALUES ('530181', '安宁市', '530100');
INSERT INTO `st_area` VALUES ('530301', '市辖区', '530300');
INSERT INTO `st_area` VALUES ('530302', '麒麟区', '530300');
INSERT INTO `st_area` VALUES ('530321', '马龙县', '530300');
INSERT INTO `st_area` VALUES ('530322', '陆良县', '530300');
INSERT INTO `st_area` VALUES ('530323', '师宗县', '530300');
INSERT INTO `st_area` VALUES ('530324', '罗平县', '530300');
INSERT INTO `st_area` VALUES ('530325', '富源县', '530300');
INSERT INTO `st_area` VALUES ('530326', '会泽县', '530300');
INSERT INTO `st_area` VALUES ('530328', '沾益县', '530300');
INSERT INTO `st_area` VALUES ('530381', '宣威市', '530300');
INSERT INTO `st_area` VALUES ('530401', '市辖区', '530400');
INSERT INTO `st_area` VALUES ('530402', '红塔区', '530400');
INSERT INTO `st_area` VALUES ('530421', '江川县', '530400');
INSERT INTO `st_area` VALUES ('530422', '澄江县', '530400');
INSERT INTO `st_area` VALUES ('530423', '通海县', '530400');
INSERT INTO `st_area` VALUES ('530424', '华宁县', '530400');
INSERT INTO `st_area` VALUES ('530425', '易门县', '530400');
INSERT INTO `st_area` VALUES ('530426', '峨山彝族自治县', '530400');
INSERT INTO `st_area` VALUES ('530427', '新平彝族傣族自治县', '530400');
INSERT INTO `st_area` VALUES ('530428', '元江哈尼族彝族傣族自治县', '530400');
INSERT INTO `st_area` VALUES ('530501', '市辖区', '530500');
INSERT INTO `st_area` VALUES ('530502', '隆阳区', '530500');
INSERT INTO `st_area` VALUES ('530521', '施甸县', '530500');
INSERT INTO `st_area` VALUES ('530522', '腾冲县', '530500');
INSERT INTO `st_area` VALUES ('530523', '龙陵县', '530500');
INSERT INTO `st_area` VALUES ('530524', '昌宁县', '530500');
INSERT INTO `st_area` VALUES ('530601', '市辖区', '530600');
INSERT INTO `st_area` VALUES ('530602', '昭阳区', '530600');
INSERT INTO `st_area` VALUES ('530621', '鲁甸县', '530600');
INSERT INTO `st_area` VALUES ('530622', '巧家县', '530600');
INSERT INTO `st_area` VALUES ('530623', '盐津县', '530600');
INSERT INTO `st_area` VALUES ('530624', '大关县', '530600');
INSERT INTO `st_area` VALUES ('530625', '永善县', '530600');
INSERT INTO `st_area` VALUES ('530626', '绥江县', '530600');
INSERT INTO `st_area` VALUES ('530627', '镇雄县', '530600');
INSERT INTO `st_area` VALUES ('530628', '彝良县', '530600');
INSERT INTO `st_area` VALUES ('530629', '威信县', '530600');
INSERT INTO `st_area` VALUES ('530630', '水富县', '530600');
INSERT INTO `st_area` VALUES ('530701', '市辖区', '530700');
INSERT INTO `st_area` VALUES ('530702', '古城区', '530700');
INSERT INTO `st_area` VALUES ('530721', '玉龙纳西族自治县', '530700');
INSERT INTO `st_area` VALUES ('530722', '永胜县', '530700');
INSERT INTO `st_area` VALUES ('530723', '华坪县', '530700');
INSERT INTO `st_area` VALUES ('530724', '宁蒗彝族自治县', '530700');
INSERT INTO `st_area` VALUES ('530801', '市辖区', '530800');
INSERT INTO `st_area` VALUES ('530802', '翠云区', '530800');
INSERT INTO `st_area` VALUES ('530821', '普洱哈尼族彝族自治县', '530800');
INSERT INTO `st_area` VALUES ('530822', '墨江哈尼族自治县', '530800');
INSERT INTO `st_area` VALUES ('530823', '景东彝族自治县', '530800');
INSERT INTO `st_area` VALUES ('530824', '景谷傣族彝族自治县', '530800');
INSERT INTO `st_area` VALUES ('530825', '镇沅彝族哈尼族拉祜族自治县', '530800');
INSERT INTO `st_area` VALUES ('530826', '江城哈尼族彝族自治县', '530800');
INSERT INTO `st_area` VALUES ('530827', '孟连傣族拉祜族佤族自治县', '530800');
INSERT INTO `st_area` VALUES ('530828', '澜沧拉祜族自治县', '530800');
INSERT INTO `st_area` VALUES ('530829', '西盟佤族自治县', '530800');
INSERT INTO `st_area` VALUES ('530901', '市辖区', '530900');
INSERT INTO `st_area` VALUES ('530902', '临翔区', '530900');
INSERT INTO `st_area` VALUES ('530921', '凤庆县', '530900');
INSERT INTO `st_area` VALUES ('530922', '云　县', '530900');
INSERT INTO `st_area` VALUES ('530923', '永德县', '530900');
INSERT INTO `st_area` VALUES ('530924', '镇康县', '530900');
INSERT INTO `st_area` VALUES ('530925', '双江拉祜族佤族布朗族傣族自治县', '530900');
INSERT INTO `st_area` VALUES ('530926', '耿马傣族佤族自治县', '530900');
INSERT INTO `st_area` VALUES ('530927', '沧源佤族自治县', '530900');
INSERT INTO `st_area` VALUES ('532301', '楚雄市', '532300');
INSERT INTO `st_area` VALUES ('532322', '双柏县', '532300');
INSERT INTO `st_area` VALUES ('532323', '牟定县', '532300');
INSERT INTO `st_area` VALUES ('532324', '南华县', '532300');
INSERT INTO `st_area` VALUES ('532325', '姚安县', '532300');
INSERT INTO `st_area` VALUES ('532326', '大姚县', '532300');
INSERT INTO `st_area` VALUES ('532327', '永仁县', '532300');
INSERT INTO `st_area` VALUES ('532328', '元谋县', '532300');
INSERT INTO `st_area` VALUES ('532329', '武定县', '532300');
INSERT INTO `st_area` VALUES ('532331', '禄丰县', '532300');
INSERT INTO `st_area` VALUES ('532501', '个旧市', '532500');
INSERT INTO `st_area` VALUES ('532502', '开远市', '532500');
INSERT INTO `st_area` VALUES ('532522', '蒙自县', '532500');
INSERT INTO `st_area` VALUES ('532523', '屏边苗族自治县', '532500');
INSERT INTO `st_area` VALUES ('532524', '建水县', '532500');
INSERT INTO `st_area` VALUES ('532525', '石屏县', '532500');
INSERT INTO `st_area` VALUES ('532526', '弥勒县', '532500');
INSERT INTO `st_area` VALUES ('532527', '泸西县', '532500');
INSERT INTO `st_area` VALUES ('532528', '元阳县', '532500');
INSERT INTO `st_area` VALUES ('532529', '红河县', '532500');
INSERT INTO `st_area` VALUES ('532530', '金平苗族瑶族傣族自治县', '532500');
INSERT INTO `st_area` VALUES ('532531', '绿春县', '532500');
INSERT INTO `st_area` VALUES ('532532', '河口瑶族自治县', '532500');
INSERT INTO `st_area` VALUES ('532621', '文山县', '532600');
INSERT INTO `st_area` VALUES ('532622', '砚山县', '532600');
INSERT INTO `st_area` VALUES ('532623', '西畴县', '532600');
INSERT INTO `st_area` VALUES ('532624', '麻栗坡县', '532600');
INSERT INTO `st_area` VALUES ('532625', '马关县', '532600');
INSERT INTO `st_area` VALUES ('532626', '丘北县', '532600');
INSERT INTO `st_area` VALUES ('532627', '广南县', '532600');
INSERT INTO `st_area` VALUES ('532628', '富宁县', '532600');
INSERT INTO `st_area` VALUES ('532801', '景洪市', '532800');
INSERT INTO `st_area` VALUES ('532822', '勐海县', '532800');
INSERT INTO `st_area` VALUES ('532823', '勐腊县', '532800');
INSERT INTO `st_area` VALUES ('532901', '大理市', '532900');
INSERT INTO `st_area` VALUES ('532922', '漾濞彝族自治县', '532900');
INSERT INTO `st_area` VALUES ('532923', '祥云县', '532900');
INSERT INTO `st_area` VALUES ('532924', '宾川县', '532900');
INSERT INTO `st_area` VALUES ('532925', '弥渡县', '532900');
INSERT INTO `st_area` VALUES ('532926', '南涧彝族自治县', '532900');
INSERT INTO `st_area` VALUES ('532927', '巍山彝族回族自治县', '532900');
INSERT INTO `st_area` VALUES ('532928', '永平县', '532900');
INSERT INTO `st_area` VALUES ('532929', '云龙县', '532900');
INSERT INTO `st_area` VALUES ('532930', '洱源县', '532900');
INSERT INTO `st_area` VALUES ('532931', '剑川县', '532900');
INSERT INTO `st_area` VALUES ('532932', '鹤庆县', '532900');
INSERT INTO `st_area` VALUES ('533102', '瑞丽市', '533100');
INSERT INTO `st_area` VALUES ('533103', '潞西市', '533100');
INSERT INTO `st_area` VALUES ('533122', '梁河县', '533100');
INSERT INTO `st_area` VALUES ('533123', '盈江县', '533100');
INSERT INTO `st_area` VALUES ('533124', '陇川县', '533100');
INSERT INTO `st_area` VALUES ('533321', '泸水县', '533300');
INSERT INTO `st_area` VALUES ('533323', '福贡县', '533300');
INSERT INTO `st_area` VALUES ('533324', '贡山独龙族怒族自治县', '533300');
INSERT INTO `st_area` VALUES ('533325', '兰坪白族普米族自治县', '533300');
INSERT INTO `st_area` VALUES ('533421', '香格里拉县', '533400');
INSERT INTO `st_area` VALUES ('533422', '德钦县', '533400');
INSERT INTO `st_area` VALUES ('533423', '维西傈僳族自治县', '533400');
INSERT INTO `st_area` VALUES ('540101', '市辖区', '540100');
INSERT INTO `st_area` VALUES ('540102', '城关区', '540100');
INSERT INTO `st_area` VALUES ('540121', '林周县', '540100');
INSERT INTO `st_area` VALUES ('540122', '当雄县', '540100');
INSERT INTO `st_area` VALUES ('540123', '尼木县', '540100');
INSERT INTO `st_area` VALUES ('540124', '曲水县', '540100');
INSERT INTO `st_area` VALUES ('540125', '堆龙德庆县', '540100');
INSERT INTO `st_area` VALUES ('540126', '达孜县', '540100');
INSERT INTO `st_area` VALUES ('540127', '墨竹工卡县', '540100');
INSERT INTO `st_area` VALUES ('542121', '昌都县', '542100');
INSERT INTO `st_area` VALUES ('542122', '江达县', '542100');
INSERT INTO `st_area` VALUES ('542123', '贡觉县', '542100');
INSERT INTO `st_area` VALUES ('542124', '类乌齐县', '542100');
INSERT INTO `st_area` VALUES ('542125', '丁青县', '542100');
INSERT INTO `st_area` VALUES ('542126', '察雅县', '542100');
INSERT INTO `st_area` VALUES ('542127', '八宿县', '542100');
INSERT INTO `st_area` VALUES ('542128', '左贡县', '542100');
INSERT INTO `st_area` VALUES ('542129', '芒康县', '542100');
INSERT INTO `st_area` VALUES ('542132', '洛隆县', '542100');
INSERT INTO `st_area` VALUES ('542133', '边坝县', '542100');
INSERT INTO `st_area` VALUES ('542221', '乃东县', '542200');
INSERT INTO `st_area` VALUES ('542222', '扎囊县', '542200');
INSERT INTO `st_area` VALUES ('542223', '贡嘎县', '542200');
INSERT INTO `st_area` VALUES ('542224', '桑日县', '542200');
INSERT INTO `st_area` VALUES ('542225', '琼结县', '542200');
INSERT INTO `st_area` VALUES ('542226', '曲松县', '542200');
INSERT INTO `st_area` VALUES ('542227', '措美县', '542200');
INSERT INTO `st_area` VALUES ('542228', '洛扎县', '542200');
INSERT INTO `st_area` VALUES ('542229', '加查县', '542200');
INSERT INTO `st_area` VALUES ('542231', '隆子县', '542200');
INSERT INTO `st_area` VALUES ('542232', '错那县', '542200');
INSERT INTO `st_area` VALUES ('542233', '浪卡子县', '542200');
INSERT INTO `st_area` VALUES ('542301', '日喀则市', '542300');
INSERT INTO `st_area` VALUES ('542322', '南木林县', '542300');
INSERT INTO `st_area` VALUES ('542323', '江孜县', '542300');
INSERT INTO `st_area` VALUES ('542324', '定日县', '542300');
INSERT INTO `st_area` VALUES ('542325', '萨迦县', '542300');
INSERT INTO `st_area` VALUES ('542326', '拉孜县', '542300');
INSERT INTO `st_area` VALUES ('542327', '昂仁县', '542300');
INSERT INTO `st_area` VALUES ('542328', '谢通门县', '542300');
INSERT INTO `st_area` VALUES ('542329', '白朗县', '542300');
INSERT INTO `st_area` VALUES ('542330', '仁布县', '542300');
INSERT INTO `st_area` VALUES ('542331', '康马县', '542300');
INSERT INTO `st_area` VALUES ('542332', '定结县', '542300');
INSERT INTO `st_area` VALUES ('542333', '仲巴县', '542300');
INSERT INTO `st_area` VALUES ('542334', '亚东县', '542300');
INSERT INTO `st_area` VALUES ('542335', '吉隆县', '542300');
INSERT INTO `st_area` VALUES ('542336', '聂拉木县', '542300');
INSERT INTO `st_area` VALUES ('542337', '萨嘎县', '542300');
INSERT INTO `st_area` VALUES ('542338', '岗巴县', '542300');
INSERT INTO `st_area` VALUES ('542421', '那曲县', '542400');
INSERT INTO `st_area` VALUES ('542422', '嘉黎县', '542400');
INSERT INTO `st_area` VALUES ('542423', '比如县', '542400');
INSERT INTO `st_area` VALUES ('542424', '聂荣县', '542400');
INSERT INTO `st_area` VALUES ('542425', '安多县', '542400');
INSERT INTO `st_area` VALUES ('542426', '申扎县', '542400');
INSERT INTO `st_area` VALUES ('542427', '索　县', '542400');
INSERT INTO `st_area` VALUES ('542428', '班戈县', '542400');
INSERT INTO `st_area` VALUES ('542429', '巴青县', '542400');
INSERT INTO `st_area` VALUES ('542430', '尼玛县', '542400');
INSERT INTO `st_area` VALUES ('542521', '普兰县', '542500');
INSERT INTO `st_area` VALUES ('542522', '札达县', '542500');
INSERT INTO `st_area` VALUES ('542523', '噶尔县', '542500');
INSERT INTO `st_area` VALUES ('542524', '日土县', '542500');
INSERT INTO `st_area` VALUES ('542525', '革吉县', '542500');
INSERT INTO `st_area` VALUES ('542526', '改则县', '542500');
INSERT INTO `st_area` VALUES ('542527', '措勤县', '542500');
INSERT INTO `st_area` VALUES ('542621', '林芝县', '542600');
INSERT INTO `st_area` VALUES ('542622', '工布江达县', '542600');
INSERT INTO `st_area` VALUES ('542623', '米林县', '542600');
INSERT INTO `st_area` VALUES ('542624', '墨脱县', '542600');
INSERT INTO `st_area` VALUES ('542625', '波密县', '542600');
INSERT INTO `st_area` VALUES ('542626', '察隅县', '542600');
INSERT INTO `st_area` VALUES ('542627', '朗　县', '542600');
INSERT INTO `st_area` VALUES ('610101', '市辖区', '610100');
INSERT INTO `st_area` VALUES ('610102', '新城区', '610100');
INSERT INTO `st_area` VALUES ('610103', '碑林区', '610100');
INSERT INTO `st_area` VALUES ('610104', '莲湖区', '610100');
INSERT INTO `st_area` VALUES ('610111', '灞桥区', '610100');
INSERT INTO `st_area` VALUES ('610112', '未央区', '610100');
INSERT INTO `st_area` VALUES ('610113', '雁塔区', '610100');
INSERT INTO `st_area` VALUES ('610114', '阎良区', '610100');
INSERT INTO `st_area` VALUES ('610115', '临潼区', '610100');
INSERT INTO `st_area` VALUES ('610116', '长安区', '610100');
INSERT INTO `st_area` VALUES ('610122', '蓝田县', '610100');
INSERT INTO `st_area` VALUES ('610124', '周至县', '610100');
INSERT INTO `st_area` VALUES ('610125', '户　县', '610100');
INSERT INTO `st_area` VALUES ('610126', '高陵县', '610100');
INSERT INTO `st_area` VALUES ('610201', '市辖区', '610200');
INSERT INTO `st_area` VALUES ('610202', '王益区', '610200');
INSERT INTO `st_area` VALUES ('610203', '印台区', '610200');
INSERT INTO `st_area` VALUES ('610204', '耀州区', '610200');
INSERT INTO `st_area` VALUES ('610222', '宜君县', '610200');
INSERT INTO `st_area` VALUES ('610301', '市辖区', '610300');
INSERT INTO `st_area` VALUES ('610302', '渭滨区', '610300');
INSERT INTO `st_area` VALUES ('610303', '金台区', '610300');
INSERT INTO `st_area` VALUES ('610304', '陈仓区', '610300');
INSERT INTO `st_area` VALUES ('610322', '凤翔县', '610300');
INSERT INTO `st_area` VALUES ('610323', '岐山县', '610300');
INSERT INTO `st_area` VALUES ('610324', '扶风县', '610300');
INSERT INTO `st_area` VALUES ('610326', '眉　县', '610300');
INSERT INTO `st_area` VALUES ('610327', '陇　县', '610300');
INSERT INTO `st_area` VALUES ('610328', '千阳县', '610300');
INSERT INTO `st_area` VALUES ('610329', '麟游县', '610300');
INSERT INTO `st_area` VALUES ('610330', '凤　县', '610300');
INSERT INTO `st_area` VALUES ('610331', '太白县', '610300');
INSERT INTO `st_area` VALUES ('610401', '市辖区', '610400');
INSERT INTO `st_area` VALUES ('610402', '秦都区', '610400');
INSERT INTO `st_area` VALUES ('610403', '杨凌区', '610400');
INSERT INTO `st_area` VALUES ('610404', '渭城区', '610400');
INSERT INTO `st_area` VALUES ('610422', '三原县', '610400');
INSERT INTO `st_area` VALUES ('610423', '泾阳县', '610400');
INSERT INTO `st_area` VALUES ('610424', '乾　县', '610400');
INSERT INTO `st_area` VALUES ('610425', '礼泉县', '610400');
INSERT INTO `st_area` VALUES ('610426', '永寿县', '610400');
INSERT INTO `st_area` VALUES ('610427', '彬　县', '610400');
INSERT INTO `st_area` VALUES ('610428', '长武县', '610400');
INSERT INTO `st_area` VALUES ('610429', '旬邑县', '610400');
INSERT INTO `st_area` VALUES ('610430', '淳化县', '610400');
INSERT INTO `st_area` VALUES ('610431', '武功县', '610400');
INSERT INTO `st_area` VALUES ('610481', '兴平市', '610400');
INSERT INTO `st_area` VALUES ('610501', '市辖区', '610500');
INSERT INTO `st_area` VALUES ('610502', '临渭区', '610500');
INSERT INTO `st_area` VALUES ('610521', '华　县', '610500');
INSERT INTO `st_area` VALUES ('610522', '潼关县', '610500');
INSERT INTO `st_area` VALUES ('610523', '大荔县', '610500');
INSERT INTO `st_area` VALUES ('610524', '合阳县', '610500');
INSERT INTO `st_area` VALUES ('610525', '澄城县', '610500');
INSERT INTO `st_area` VALUES ('610526', '蒲城县', '610500');
INSERT INTO `st_area` VALUES ('610527', '白水县', '610500');
INSERT INTO `st_area` VALUES ('610528', '富平县', '610500');
INSERT INTO `st_area` VALUES ('610581', '韩城市', '610500');
INSERT INTO `st_area` VALUES ('610582', '华阴市', '610500');
INSERT INTO `st_area` VALUES ('610601', '市辖区', '610600');
INSERT INTO `st_area` VALUES ('610602', '宝塔区', '610600');
INSERT INTO `st_area` VALUES ('610621', '延长县', '610600');
INSERT INTO `st_area` VALUES ('610622', '延川县', '610600');
INSERT INTO `st_area` VALUES ('610623', '子长县', '610600');
INSERT INTO `st_area` VALUES ('610624', '安塞县', '610600');
INSERT INTO `st_area` VALUES ('610625', '志丹县', '610600');
INSERT INTO `st_area` VALUES ('610626', '吴旗县', '610600');
INSERT INTO `st_area` VALUES ('610627', '甘泉县', '610600');
INSERT INTO `st_area` VALUES ('610628', '富　县', '610600');
INSERT INTO `st_area` VALUES ('610629', '洛川县', '610600');
INSERT INTO `st_area` VALUES ('610630', '宜川县', '610600');
INSERT INTO `st_area` VALUES ('610631', '黄龙县', '610600');
INSERT INTO `st_area` VALUES ('610632', '黄陵县', '610600');
INSERT INTO `st_area` VALUES ('610701', '市辖区', '610700');
INSERT INTO `st_area` VALUES ('610702', '汉台区', '610700');
INSERT INTO `st_area` VALUES ('610721', '南郑县', '610700');
INSERT INTO `st_area` VALUES ('610722', '城固县', '610700');
INSERT INTO `st_area` VALUES ('610723', '洋　县', '610700');
INSERT INTO `st_area` VALUES ('610724', '西乡县', '610700');
INSERT INTO `st_area` VALUES ('610725', '勉　县', '610700');
INSERT INTO `st_area` VALUES ('610726', '宁强县', '610700');
INSERT INTO `st_area` VALUES ('610727', '略阳县', '610700');
INSERT INTO `st_area` VALUES ('610728', '镇巴县', '610700');
INSERT INTO `st_area` VALUES ('610729', '留坝县', '610700');
INSERT INTO `st_area` VALUES ('610730', '佛坪县', '610700');
INSERT INTO `st_area` VALUES ('610801', '市辖区', '610800');
INSERT INTO `st_area` VALUES ('610802', '榆阳区', '610800');
INSERT INTO `st_area` VALUES ('610821', '神木县', '610800');
INSERT INTO `st_area` VALUES ('610822', '府谷县', '610800');
INSERT INTO `st_area` VALUES ('610823', '横山县', '610800');
INSERT INTO `st_area` VALUES ('610824', '靖边县', '610800');
INSERT INTO `st_area` VALUES ('610825', '定边县', '610800');
INSERT INTO `st_area` VALUES ('610826', '绥德县', '610800');
INSERT INTO `st_area` VALUES ('610827', '米脂县', '610800');
INSERT INTO `st_area` VALUES ('610828', '佳　县', '610800');
INSERT INTO `st_area` VALUES ('610829', '吴堡县', '610800');
INSERT INTO `st_area` VALUES ('610830', '清涧县', '610800');
INSERT INTO `st_area` VALUES ('610831', '子洲县', '610800');
INSERT INTO `st_area` VALUES ('610901', '市辖区', '610900');
INSERT INTO `st_area` VALUES ('610902', '汉滨区', '610900');
INSERT INTO `st_area` VALUES ('610921', '汉阴县', '610900');
INSERT INTO `st_area` VALUES ('610922', '石泉县', '610900');
INSERT INTO `st_area` VALUES ('610923', '宁陕县', '610900');
INSERT INTO `st_area` VALUES ('610924', '紫阳县', '610900');
INSERT INTO `st_area` VALUES ('610925', '岚皋县', '610900');
INSERT INTO `st_area` VALUES ('610926', '平利县', '610900');
INSERT INTO `st_area` VALUES ('610927', '镇坪县', '610900');
INSERT INTO `st_area` VALUES ('610928', '旬阳县', '610900');
INSERT INTO `st_area` VALUES ('610929', '白河县', '610900');
INSERT INTO `st_area` VALUES ('611001', '市辖区', '611000');
INSERT INTO `st_area` VALUES ('611002', '商州区', '611000');
INSERT INTO `st_area` VALUES ('611021', '洛南县', '611000');
INSERT INTO `st_area` VALUES ('611022', '丹凤县', '611000');
INSERT INTO `st_area` VALUES ('611023', '商南县', '611000');
INSERT INTO `st_area` VALUES ('611024', '山阳县', '611000');
INSERT INTO `st_area` VALUES ('611025', '镇安县', '611000');
INSERT INTO `st_area` VALUES ('611026', '柞水县', '611000');
INSERT INTO `st_area` VALUES ('620101', '市辖区', '620100');
INSERT INTO `st_area` VALUES ('620102', '城关区', '620100');
INSERT INTO `st_area` VALUES ('620103', '七里河区', '620100');
INSERT INTO `st_area` VALUES ('620104', '西固区', '620100');
INSERT INTO `st_area` VALUES ('620105', '安宁区', '620100');
INSERT INTO `st_area` VALUES ('620111', '红古区', '620100');
INSERT INTO `st_area` VALUES ('620121', '永登县', '620100');
INSERT INTO `st_area` VALUES ('620122', '皋兰县', '620100');
INSERT INTO `st_area` VALUES ('620123', '榆中县', '620100');
INSERT INTO `st_area` VALUES ('620201', '市辖区', '620200');
INSERT INTO `st_area` VALUES ('620301', '市辖区', '620300');
INSERT INTO `st_area` VALUES ('620302', '金川区', '620300');
INSERT INTO `st_area` VALUES ('620321', '永昌县', '620300');
INSERT INTO `st_area` VALUES ('620401', '市辖区', '620400');
INSERT INTO `st_area` VALUES ('620402', '白银区', '620400');
INSERT INTO `st_area` VALUES ('620403', '平川区', '620400');
INSERT INTO `st_area` VALUES ('620421', '靖远县', '620400');
INSERT INTO `st_area` VALUES ('620422', '会宁县', '620400');
INSERT INTO `st_area` VALUES ('620423', '景泰县', '620400');
INSERT INTO `st_area` VALUES ('620501', '市辖区', '620500');
INSERT INTO `st_area` VALUES ('620502', '秦城区', '620500');
INSERT INTO `st_area` VALUES ('620503', '北道区', '620500');
INSERT INTO `st_area` VALUES ('620521', '清水县', '620500');
INSERT INTO `st_area` VALUES ('620522', '秦安县', '620500');
INSERT INTO `st_area` VALUES ('620523', '甘谷县', '620500');
INSERT INTO `st_area` VALUES ('620524', '武山县', '620500');
INSERT INTO `st_area` VALUES ('620525', '张家川回族自治县', '620500');
INSERT INTO `st_area` VALUES ('620601', '市辖区', '620600');
INSERT INTO `st_area` VALUES ('620602', '凉州区', '620600');
INSERT INTO `st_area` VALUES ('620621', '民勤县', '620600');
INSERT INTO `st_area` VALUES ('620622', '古浪县', '620600');
INSERT INTO `st_area` VALUES ('620623', '天祝藏族自治县', '620600');
INSERT INTO `st_area` VALUES ('620701', '市辖区', '620700');
INSERT INTO `st_area` VALUES ('620702', '甘州区', '620700');
INSERT INTO `st_area` VALUES ('620721', '肃南裕固族自治县', '620700');
INSERT INTO `st_area` VALUES ('620722', '民乐县', '620700');
INSERT INTO `st_area` VALUES ('620723', '临泽县', '620700');
INSERT INTO `st_area` VALUES ('620724', '高台县', '620700');
INSERT INTO `st_area` VALUES ('620725', '山丹县', '620700');
INSERT INTO `st_area` VALUES ('620801', '市辖区', '620800');
INSERT INTO `st_area` VALUES ('620802', '崆峒区', '620800');
INSERT INTO `st_area` VALUES ('620821', '泾川县', '620800');
INSERT INTO `st_area` VALUES ('620822', '灵台县', '620800');
INSERT INTO `st_area` VALUES ('620823', '崇信县', '620800');
INSERT INTO `st_area` VALUES ('620824', '华亭县', '620800');
INSERT INTO `st_area` VALUES ('620825', '庄浪县', '620800');
INSERT INTO `st_area` VALUES ('620826', '静宁县', '620800');
INSERT INTO `st_area` VALUES ('620901', '市辖区', '620900');
INSERT INTO `st_area` VALUES ('620902', '肃州区', '620900');
INSERT INTO `st_area` VALUES ('620921', '金塔县', '620900');
INSERT INTO `st_area` VALUES ('620922', '安西县', '620900');
INSERT INTO `st_area` VALUES ('620923', '肃北蒙古族自治县', '620900');
INSERT INTO `st_area` VALUES ('620924', '阿克塞哈萨克族自治县', '620900');
INSERT INTO `st_area` VALUES ('620981', '玉门市', '620900');
INSERT INTO `st_area` VALUES ('620982', '敦煌市', '620900');
INSERT INTO `st_area` VALUES ('621001', '市辖区', '621000');
INSERT INTO `st_area` VALUES ('621002', '西峰区', '621000');
INSERT INTO `st_area` VALUES ('621021', '庆城县', '621000');
INSERT INTO `st_area` VALUES ('621022', '环　县', '621000');
INSERT INTO `st_area` VALUES ('621023', '华池县', '621000');
INSERT INTO `st_area` VALUES ('621024', '合水县', '621000');
INSERT INTO `st_area` VALUES ('621025', '正宁县', '621000');
INSERT INTO `st_area` VALUES ('621026', '宁　县', '621000');
INSERT INTO `st_area` VALUES ('621027', '镇原县', '621000');
INSERT INTO `st_area` VALUES ('621101', '市辖区', '621100');
INSERT INTO `st_area` VALUES ('621102', '安定区', '621100');
INSERT INTO `st_area` VALUES ('621121', '通渭县', '621100');
INSERT INTO `st_area` VALUES ('621122', '陇西县', '621100');
INSERT INTO `st_area` VALUES ('621123', '渭源县', '621100');
INSERT INTO `st_area` VALUES ('621124', '临洮县', '621100');
INSERT INTO `st_area` VALUES ('621125', '漳　县', '621100');
INSERT INTO `st_area` VALUES ('621126', '岷　县', '621100');
INSERT INTO `st_area` VALUES ('621201', '市辖区', '621200');
INSERT INTO `st_area` VALUES ('621202', '武都区', '621200');
INSERT INTO `st_area` VALUES ('621221', '成　县', '621200');
INSERT INTO `st_area` VALUES ('621222', '文　县', '621200');
INSERT INTO `st_area` VALUES ('621223', '宕昌县', '621200');
INSERT INTO `st_area` VALUES ('621224', '康　县', '621200');
INSERT INTO `st_area` VALUES ('621225', '西和县', '621200');
INSERT INTO `st_area` VALUES ('621226', '礼　县', '621200');
INSERT INTO `st_area` VALUES ('621227', '徽　县', '621200');
INSERT INTO `st_area` VALUES ('621228', '两当县', '621200');
INSERT INTO `st_area` VALUES ('622901', '临夏市', '622900');
INSERT INTO `st_area` VALUES ('622921', '临夏县', '622900');
INSERT INTO `st_area` VALUES ('622922', '康乐县', '622900');
INSERT INTO `st_area` VALUES ('622923', '永靖县', '622900');
INSERT INTO `st_area` VALUES ('622924', '广河县', '622900');
INSERT INTO `st_area` VALUES ('622925', '和政县', '622900');
INSERT INTO `st_area` VALUES ('622926', '东乡族自治县', '622900');
INSERT INTO `st_area` VALUES ('622927', '积石山保安族东乡族撒拉族自治县', '622900');
INSERT INTO `st_area` VALUES ('623001', '合作市', '623000');
INSERT INTO `st_area` VALUES ('623021', '临潭县', '623000');
INSERT INTO `st_area` VALUES ('623022', '卓尼县', '623000');
INSERT INTO `st_area` VALUES ('623023', '舟曲县', '623000');
INSERT INTO `st_area` VALUES ('623024', '迭部县', '623000');
INSERT INTO `st_area` VALUES ('623025', '玛曲县', '623000');
INSERT INTO `st_area` VALUES ('623026', '碌曲县', '623000');
INSERT INTO `st_area` VALUES ('623027', '夏河县', '623000');
INSERT INTO `st_area` VALUES ('630101', '市辖区', '630100');
INSERT INTO `st_area` VALUES ('630102', '城东区', '630100');
INSERT INTO `st_area` VALUES ('630103', '城中区', '630100');
INSERT INTO `st_area` VALUES ('630104', '城西区', '630100');
INSERT INTO `st_area` VALUES ('630105', '城北区', '630100');
INSERT INTO `st_area` VALUES ('630121', '大通回族土族自治县', '630100');
INSERT INTO `st_area` VALUES ('630122', '湟中县', '630100');
INSERT INTO `st_area` VALUES ('630123', '湟源县', '630100');
INSERT INTO `st_area` VALUES ('632121', '平安县', '632100');
INSERT INTO `st_area` VALUES ('632122', '民和回族土族自治县', '632100');
INSERT INTO `st_area` VALUES ('632123', '乐都县', '632100');
INSERT INTO `st_area` VALUES ('632126', '互助土族自治县', '632100');
INSERT INTO `st_area` VALUES ('632127', '化隆回族自治县', '632100');
INSERT INTO `st_area` VALUES ('632128', '循化撒拉族自治县', '632100');
INSERT INTO `st_area` VALUES ('632221', '门源回族自治县', '632200');
INSERT INTO `st_area` VALUES ('632222', '祁连县', '632200');
INSERT INTO `st_area` VALUES ('632223', '海晏县', '632200');
INSERT INTO `st_area` VALUES ('632224', '刚察县', '632200');
INSERT INTO `st_area` VALUES ('632321', '同仁县', '632300');
INSERT INTO `st_area` VALUES ('632322', '尖扎县', '632300');
INSERT INTO `st_area` VALUES ('632323', '泽库县', '632300');
INSERT INTO `st_area` VALUES ('632324', '河南蒙古族自治县', '632300');
INSERT INTO `st_area` VALUES ('632521', '共和县', '632500');
INSERT INTO `st_area` VALUES ('632522', '同德县', '632500');
INSERT INTO `st_area` VALUES ('632523', '贵德县', '632500');
INSERT INTO `st_area` VALUES ('632524', '兴海县', '632500');
INSERT INTO `st_area` VALUES ('632525', '贵南县', '632500');
INSERT INTO `st_area` VALUES ('632621', '玛沁县', '632600');
INSERT INTO `st_area` VALUES ('632622', '班玛县', '632600');
INSERT INTO `st_area` VALUES ('632623', '甘德县', '632600');
INSERT INTO `st_area` VALUES ('632624', '达日县', '632600');
INSERT INTO `st_area` VALUES ('632625', '久治县', '632600');
INSERT INTO `st_area` VALUES ('632626', '玛多县', '632600');
INSERT INTO `st_area` VALUES ('632721', '玉树县', '632700');
INSERT INTO `st_area` VALUES ('632722', '杂多县', '632700');
INSERT INTO `st_area` VALUES ('632723', '称多县', '632700');
INSERT INTO `st_area` VALUES ('632724', '治多县', '632700');
INSERT INTO `st_area` VALUES ('632725', '囊谦县', '632700');
INSERT INTO `st_area` VALUES ('632726', '曲麻莱县', '632700');
INSERT INTO `st_area` VALUES ('632801', '格尔木市', '632800');
INSERT INTO `st_area` VALUES ('632802', '德令哈市', '632800');
INSERT INTO `st_area` VALUES ('632821', '乌兰县', '632800');
INSERT INTO `st_area` VALUES ('632822', '都兰县', '632800');
INSERT INTO `st_area` VALUES ('632823', '天峻县', '632800');
INSERT INTO `st_area` VALUES ('640101', '市辖区', '640100');
INSERT INTO `st_area` VALUES ('640104', '兴庆区', '640100');
INSERT INTO `st_area` VALUES ('640105', '西夏区', '640100');
INSERT INTO `st_area` VALUES ('640106', '金凤区', '640100');
INSERT INTO `st_area` VALUES ('640121', '永宁县', '640100');
INSERT INTO `st_area` VALUES ('640122', '贺兰县', '640100');
INSERT INTO `st_area` VALUES ('640181', '灵武市', '640100');
INSERT INTO `st_area` VALUES ('640201', '市辖区', '640200');
INSERT INTO `st_area` VALUES ('640202', '大武口区', '640200');
INSERT INTO `st_area` VALUES ('640205', '惠农区', '640200');
INSERT INTO `st_area` VALUES ('640221', '平罗县', '640200');
INSERT INTO `st_area` VALUES ('640301', '市辖区', '640300');
INSERT INTO `st_area` VALUES ('640302', '利通区', '640300');
INSERT INTO `st_area` VALUES ('640323', '盐池县', '640300');
INSERT INTO `st_area` VALUES ('640324', '同心县', '640300');
INSERT INTO `st_area` VALUES ('640381', '青铜峡市', '640300');
INSERT INTO `st_area` VALUES ('640401', '市辖区', '640400');
INSERT INTO `st_area` VALUES ('640402', '原州区', '640400');
INSERT INTO `st_area` VALUES ('640422', '西吉县', '640400');
INSERT INTO `st_area` VALUES ('640423', '隆德县', '640400');
INSERT INTO `st_area` VALUES ('640424', '泾源县', '640400');
INSERT INTO `st_area` VALUES ('640425', '彭阳县', '640400');
INSERT INTO `st_area` VALUES ('640501', '市辖区', '640500');
INSERT INTO `st_area` VALUES ('640502', '沙坡头区', '640500');
INSERT INTO `st_area` VALUES ('640521', '中宁县', '640500');
INSERT INTO `st_area` VALUES ('640522', '海原县', '640400');
INSERT INTO `st_area` VALUES ('650101', '市辖区', '650100');
INSERT INTO `st_area` VALUES ('650102', '天山区', '650100');
INSERT INTO `st_area` VALUES ('650103', '沙依巴克区', '650100');
INSERT INTO `st_area` VALUES ('650104', '新市区', '650100');
INSERT INTO `st_area` VALUES ('650105', '水磨沟区', '650100');
INSERT INTO `st_area` VALUES ('650106', '头屯河区', '650100');
INSERT INTO `st_area` VALUES ('650107', '达坂城区', '650100');
INSERT INTO `st_area` VALUES ('650108', '东山区', '650100');
INSERT INTO `st_area` VALUES ('650121', '乌鲁木齐县', '650100');
INSERT INTO `st_area` VALUES ('650201', '市辖区', '650200');
INSERT INTO `st_area` VALUES ('650202', '独山子区', '650200');
INSERT INTO `st_area` VALUES ('650203', '克拉玛依区', '650200');
INSERT INTO `st_area` VALUES ('650204', '白碱滩区', '650200');
INSERT INTO `st_area` VALUES ('650205', '乌尔禾区', '650200');
INSERT INTO `st_area` VALUES ('652101', '吐鲁番市', '652100');
INSERT INTO `st_area` VALUES ('652122', '鄯善县', '652100');
INSERT INTO `st_area` VALUES ('652123', '托克逊县', '652100');
INSERT INTO `st_area` VALUES ('652201', '哈密市', '652200');
INSERT INTO `st_area` VALUES ('652222', '巴里坤哈萨克自治县', '652200');
INSERT INTO `st_area` VALUES ('652223', '伊吾县', '652200');
INSERT INTO `st_area` VALUES ('652301', '昌吉市', '652300');
INSERT INTO `st_area` VALUES ('652302', '阜康市', '652300');
INSERT INTO `st_area` VALUES ('652303', '米泉市', '652300');
INSERT INTO `st_area` VALUES ('652323', '呼图壁县', '652300');
INSERT INTO `st_area` VALUES ('652324', '玛纳斯县', '652300');
INSERT INTO `st_area` VALUES ('652325', '奇台县', '652300');
INSERT INTO `st_area` VALUES ('652327', '吉木萨尔县', '652300');
INSERT INTO `st_area` VALUES ('652328', '木垒哈萨克自治县', '652300');
INSERT INTO `st_area` VALUES ('652701', '博乐市', '652700');
INSERT INTO `st_area` VALUES ('652722', '精河县', '652700');
INSERT INTO `st_area` VALUES ('652723', '温泉县', '652700');
INSERT INTO `st_area` VALUES ('652801', '库尔勒市', '652800');
INSERT INTO `st_area` VALUES ('652822', '轮台县', '652800');
INSERT INTO `st_area` VALUES ('652823', '尉犁县', '652800');
INSERT INTO `st_area` VALUES ('652824', '若羌县', '652800');
INSERT INTO `st_area` VALUES ('652825', '且末县', '652800');
INSERT INTO `st_area` VALUES ('652826', '焉耆回族自治县', '652800');
INSERT INTO `st_area` VALUES ('652827', '和静县', '652800');
INSERT INTO `st_area` VALUES ('652828', '和硕县', '652800');
INSERT INTO `st_area` VALUES ('652829', '博湖县', '652800');
INSERT INTO `st_area` VALUES ('652901', '阿克苏市', '652900');
INSERT INTO `st_area` VALUES ('652922', '温宿县', '652900');
INSERT INTO `st_area` VALUES ('652923', '库车县', '652900');
INSERT INTO `st_area` VALUES ('652924', '沙雅县', '652900');
INSERT INTO `st_area` VALUES ('652925', '新和县', '652900');
INSERT INTO `st_area` VALUES ('652926', '拜城县', '652900');
INSERT INTO `st_area` VALUES ('652927', '乌什县', '652900');
INSERT INTO `st_area` VALUES ('652928', '阿瓦提县', '652900');
INSERT INTO `st_area` VALUES ('652929', '柯坪县', '652900');
INSERT INTO `st_area` VALUES ('653001', '阿图什市', '653000');
INSERT INTO `st_area` VALUES ('653022', '阿克陶县', '653000');
INSERT INTO `st_area` VALUES ('653023', '阿合奇县', '653000');
INSERT INTO `st_area` VALUES ('653024', '乌恰县', '653000');
INSERT INTO `st_area` VALUES ('653101', '喀什市', '653100');
INSERT INTO `st_area` VALUES ('653121', '疏附县', '653100');
INSERT INTO `st_area` VALUES ('653122', '疏勒县', '653100');
INSERT INTO `st_area` VALUES ('653123', '英吉沙县', '653100');
INSERT INTO `st_area` VALUES ('653124', '泽普县', '653100');
INSERT INTO `st_area` VALUES ('653125', '莎车县', '653100');
INSERT INTO `st_area` VALUES ('653126', '叶城县', '653100');
INSERT INTO `st_area` VALUES ('653127', '麦盖提县', '653100');
INSERT INTO `st_area` VALUES ('653128', '岳普湖县', '653100');
INSERT INTO `st_area` VALUES ('653129', '伽师县', '653100');
INSERT INTO `st_area` VALUES ('653130', '巴楚县', '653100');
INSERT INTO `st_area` VALUES ('653131', '塔什库尔干塔吉克自治县', '653100');
INSERT INTO `st_area` VALUES ('653201', '和田市', '653200');
INSERT INTO `st_area` VALUES ('653221', '和田县', '653200');
INSERT INTO `st_area` VALUES ('653222', '墨玉县', '653200');
INSERT INTO `st_area` VALUES ('653223', '皮山县', '653200');
INSERT INTO `st_area` VALUES ('653224', '洛浦县', '653200');
INSERT INTO `st_area` VALUES ('653225', '策勒县', '653200');
INSERT INTO `st_area` VALUES ('653226', '于田县', '653200');
INSERT INTO `st_area` VALUES ('653227', '民丰县', '653200');
INSERT INTO `st_area` VALUES ('654002', '伊宁市', '654000');
INSERT INTO `st_area` VALUES ('654003', '奎屯市', '654000');
INSERT INTO `st_area` VALUES ('654021', '伊宁县', '654000');
INSERT INTO `st_area` VALUES ('654022', '察布查尔锡伯自治县', '654000');
INSERT INTO `st_area` VALUES ('654023', '霍城县', '654000');
INSERT INTO `st_area` VALUES ('654024', '巩留县', '654000');
INSERT INTO `st_area` VALUES ('654025', '新源县', '654000');
INSERT INTO `st_area` VALUES ('654026', '昭苏县', '654000');
INSERT INTO `st_area` VALUES ('654027', '特克斯县', '654000');
INSERT INTO `st_area` VALUES ('654028', '尼勒克县', '654000');
INSERT INTO `st_area` VALUES ('654201', '塔城市', '654200');
INSERT INTO `st_area` VALUES ('654202', '乌苏市', '654200');
INSERT INTO `st_area` VALUES ('654221', '额敏县', '654200');
INSERT INTO `st_area` VALUES ('654223', '沙湾县', '654200');
INSERT INTO `st_area` VALUES ('654224', '托里县', '654200');
INSERT INTO `st_area` VALUES ('654225', '裕民县', '654200');
INSERT INTO `st_area` VALUES ('654226', '和布克赛尔蒙古自治县', '654200');
INSERT INTO `st_area` VALUES ('654301', '阿勒泰市', '654300');
INSERT INTO `st_area` VALUES ('654321', '布尔津县', '654300');
INSERT INTO `st_area` VALUES ('654322', '富蕴县', '654300');
INSERT INTO `st_area` VALUES ('654323', '福海县', '654300');
INSERT INTO `st_area` VALUES ('654324', '哈巴河县', '654300');
INSERT INTO `st_area` VALUES ('654325', '青河县', '654300');
INSERT INTO `st_area` VALUES ('654326', '吉木乃县', '654300');
INSERT INTO `st_area` VALUES ('659001', '石河子市', '659000');
INSERT INTO `st_area` VALUES ('659002', '阿拉尔市', '659000');
INSERT INTO `st_area` VALUES ('659003', '图木舒克市', '659000');
INSERT INTO `st_area` VALUES ('659004', '五家渠市', '659000');

-- ----------------------------
-- Table structure for st_city
-- ----------------------------
DROP TABLE IF EXISTS `st_city`;
CREATE TABLE `st_city` (
  `cityid` int(11) NOT NULL,
  `cityname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `provinceid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of st_city
-- ----------------------------
INSERT INTO `st_city` VALUES ('110100', '市辖区', '110000');
INSERT INTO `st_city` VALUES ('120100', '市辖区', '120000');
INSERT INTO `st_city` VALUES ('130100', '石家庄市', '130000');
INSERT INTO `st_city` VALUES ('130200', '唐山市', '130000');
INSERT INTO `st_city` VALUES ('130300', '秦皇岛市', '130000');
INSERT INTO `st_city` VALUES ('130400', '邯郸市', '130000');
INSERT INTO `st_city` VALUES ('130500', '邢台市', '130000');
INSERT INTO `st_city` VALUES ('130600', '保定市', '130000');
INSERT INTO `st_city` VALUES ('130700', '张家口市', '130000');
INSERT INTO `st_city` VALUES ('130800', '承德市', '130000');
INSERT INTO `st_city` VALUES ('130900', '沧州市', '130000');
INSERT INTO `st_city` VALUES ('131000', '廊坊市', '130000');
INSERT INTO `st_city` VALUES ('131100', '衡水市', '130000');
INSERT INTO `st_city` VALUES ('140100', '太原市', '140000');
INSERT INTO `st_city` VALUES ('140200', '大同市', '140000');
INSERT INTO `st_city` VALUES ('140300', '阳泉市', '140000');
INSERT INTO `st_city` VALUES ('140400', '长治市', '140000');
INSERT INTO `st_city` VALUES ('140500', '晋城市', '140000');
INSERT INTO `st_city` VALUES ('140600', '朔州市', '140000');
INSERT INTO `st_city` VALUES ('140700', '晋中市', '140000');
INSERT INTO `st_city` VALUES ('140800', '运城市', '140000');
INSERT INTO `st_city` VALUES ('140900', '忻州市', '140000');
INSERT INTO `st_city` VALUES ('141000', '临汾市', '140000');
INSERT INTO `st_city` VALUES ('141100', '吕梁市', '140000');
INSERT INTO `st_city` VALUES ('150100', '呼和浩特市', '150000');
INSERT INTO `st_city` VALUES ('150200', '包头市', '150000');
INSERT INTO `st_city` VALUES ('150300', '乌海市', '150000');
INSERT INTO `st_city` VALUES ('150400', '赤峰市', '150000');
INSERT INTO `st_city` VALUES ('150500', '通辽市', '150000');
INSERT INTO `st_city` VALUES ('150600', '鄂尔多斯市', '150000');
INSERT INTO `st_city` VALUES ('150700', '呼伦贝尔市', '150000');
INSERT INTO `st_city` VALUES ('150800', '巴彦淖尔市', '150000');
INSERT INTO `st_city` VALUES ('150900', '乌兰察布市', '150000');
INSERT INTO `st_city` VALUES ('152200', '兴安盟', '150000');
INSERT INTO `st_city` VALUES ('152500', '锡林郭勒盟', '150000');
INSERT INTO `st_city` VALUES ('152900', '阿拉善盟', '150000');
INSERT INTO `st_city` VALUES ('210100', '沈阳市', '210000');
INSERT INTO `st_city` VALUES ('210200', '大连市', '210000');
INSERT INTO `st_city` VALUES ('210300', '鞍山市', '210000');
INSERT INTO `st_city` VALUES ('210400', '抚顺市', '210000');
INSERT INTO `st_city` VALUES ('210500', '本溪市', '210000');
INSERT INTO `st_city` VALUES ('210600', '丹东市', '210000');
INSERT INTO `st_city` VALUES ('210700', '锦州市', '210000');
INSERT INTO `st_city` VALUES ('210800', '营口市', '210000');
INSERT INTO `st_city` VALUES ('210900', '阜新市', '210000');
INSERT INTO `st_city` VALUES ('211000', '辽阳市', '210000');
INSERT INTO `st_city` VALUES ('211100', '盘锦市', '210000');
INSERT INTO `st_city` VALUES ('211200', '铁岭市', '210000');
INSERT INTO `st_city` VALUES ('211300', '朝阳市', '210000');
INSERT INTO `st_city` VALUES ('211400', '葫芦岛市', '210000');
INSERT INTO `st_city` VALUES ('220100', '长春市', '220000');
INSERT INTO `st_city` VALUES ('220200', '吉林市', '220000');
INSERT INTO `st_city` VALUES ('220300', '四平市', '220000');
INSERT INTO `st_city` VALUES ('220400', '辽源市', '220000');
INSERT INTO `st_city` VALUES ('220500', '通化市', '220000');
INSERT INTO `st_city` VALUES ('220600', '白山市', '220000');
INSERT INTO `st_city` VALUES ('220700', '松原市', '220000');
INSERT INTO `st_city` VALUES ('220800', '白城市', '220000');
INSERT INTO `st_city` VALUES ('222400', '延边朝鲜族自治州', '220000');
INSERT INTO `st_city` VALUES ('230100', '哈尔滨市', '230000');
INSERT INTO `st_city` VALUES ('230200', '齐齐哈尔市', '230000');
INSERT INTO `st_city` VALUES ('230300', '鸡西市', '230000');
INSERT INTO `st_city` VALUES ('230400', '鹤岗市', '230000');
INSERT INTO `st_city` VALUES ('230500', '双鸭山市', '230000');
INSERT INTO `st_city` VALUES ('230600', '大庆市', '230000');
INSERT INTO `st_city` VALUES ('230700', '伊春市', '230000');
INSERT INTO `st_city` VALUES ('230800', '佳木斯市', '230000');
INSERT INTO `st_city` VALUES ('230900', '七台河市', '230000');
INSERT INTO `st_city` VALUES ('231000', '牡丹江市', '230000');
INSERT INTO `st_city` VALUES ('231100', '黑河市', '230000');
INSERT INTO `st_city` VALUES ('231200', '绥化市', '230000');
INSERT INTO `st_city` VALUES ('232700', '大兴安岭地区', '230000');
INSERT INTO `st_city` VALUES ('310100', '市辖区', '310000');
INSERT INTO `st_city` VALUES ('320100', '南京市', '320000');
INSERT INTO `st_city` VALUES ('320200', '无锡市', '320000');
INSERT INTO `st_city` VALUES ('320300', '徐州市', '320000');
INSERT INTO `st_city` VALUES ('320400', '常州市', '320000');
INSERT INTO `st_city` VALUES ('320500', '苏州市', '320000');
INSERT INTO `st_city` VALUES ('320600', '南通市', '320000');
INSERT INTO `st_city` VALUES ('320700', '连云港市', '320000');
INSERT INTO `st_city` VALUES ('320800', '淮安市', '320000');
INSERT INTO `st_city` VALUES ('320900', '盐城市', '320000');
INSERT INTO `st_city` VALUES ('321000', '扬州市', '320000');
INSERT INTO `st_city` VALUES ('321100', '镇江市', '320000');
INSERT INTO `st_city` VALUES ('321200', '泰州市', '320000');
INSERT INTO `st_city` VALUES ('321300', '宿迁市', '320000');
INSERT INTO `st_city` VALUES ('330100', '杭州市', '330000');
INSERT INTO `st_city` VALUES ('330200', '宁波市', '330000');
INSERT INTO `st_city` VALUES ('330300', '温州市', '330000');
INSERT INTO `st_city` VALUES ('330400', '嘉兴市', '330000');
INSERT INTO `st_city` VALUES ('330500', '湖州市', '330000');
INSERT INTO `st_city` VALUES ('330600', '绍兴市', '330000');
INSERT INTO `st_city` VALUES ('330700', '金华市', '330000');
INSERT INTO `st_city` VALUES ('330800', '衢州市', '330000');
INSERT INTO `st_city` VALUES ('330900', '舟山市', '330000');
INSERT INTO `st_city` VALUES ('331000', '台州市', '330000');
INSERT INTO `st_city` VALUES ('331100', '丽水市', '330000');
INSERT INTO `st_city` VALUES ('340100', '合肥市', '340000');
INSERT INTO `st_city` VALUES ('340200', '芜湖市', '340000');
INSERT INTO `st_city` VALUES ('340300', '蚌埠市', '340000');
INSERT INTO `st_city` VALUES ('340400', '淮南市', '340000');
INSERT INTO `st_city` VALUES ('340500', '马鞍山市', '340000');
INSERT INTO `st_city` VALUES ('340600', '淮北市', '340000');
INSERT INTO `st_city` VALUES ('340700', '铜陵市', '340000');
INSERT INTO `st_city` VALUES ('340800', '安庆市', '340000');
INSERT INTO `st_city` VALUES ('341000', '黄山市', '340000');
INSERT INTO `st_city` VALUES ('341100', '滁州市', '340000');
INSERT INTO `st_city` VALUES ('341200', '阜阳市', '340000');
INSERT INTO `st_city` VALUES ('341300', '宿州市', '340000');
INSERT INTO `st_city` VALUES ('341400', '巢湖市', '340000');
INSERT INTO `st_city` VALUES ('341500', '六安市', '340000');
INSERT INTO `st_city` VALUES ('341600', '亳州市', '340000');
INSERT INTO `st_city` VALUES ('341700', '池州市', '340000');
INSERT INTO `st_city` VALUES ('341800', '宣城市', '340000');
INSERT INTO `st_city` VALUES ('350100', '福州市', '350000');
INSERT INTO `st_city` VALUES ('350200', '厦门市', '350000');
INSERT INTO `st_city` VALUES ('350300', '莆田市', '350000');
INSERT INTO `st_city` VALUES ('350400', '三明市', '350000');
INSERT INTO `st_city` VALUES ('350500', '泉州市', '350000');
INSERT INTO `st_city` VALUES ('350600', '漳州市', '350000');
INSERT INTO `st_city` VALUES ('350700', '南平市', '350000');
INSERT INTO `st_city` VALUES ('350800', '龙岩市', '350000');
INSERT INTO `st_city` VALUES ('350900', '宁德市', '350000');
INSERT INTO `st_city` VALUES ('360100', '南昌市', '360000');
INSERT INTO `st_city` VALUES ('360200', '景德镇市', '360000');
INSERT INTO `st_city` VALUES ('360300', '萍乡市', '360000');
INSERT INTO `st_city` VALUES ('360400', '九江市', '360000');
INSERT INTO `st_city` VALUES ('360500', '新余市', '360000');
INSERT INTO `st_city` VALUES ('360600', '鹰潭市', '360000');
INSERT INTO `st_city` VALUES ('360700', '赣州市', '360000');
INSERT INTO `st_city` VALUES ('360800', '吉安市', '360000');
INSERT INTO `st_city` VALUES ('360900', '宜春市', '360000');
INSERT INTO `st_city` VALUES ('361000', '抚州市', '360000');
INSERT INTO `st_city` VALUES ('361100', '上饶市', '360000');
INSERT INTO `st_city` VALUES ('370100', '济南市', '370000');
INSERT INTO `st_city` VALUES ('370200', '青岛市', '370000');
INSERT INTO `st_city` VALUES ('370300', '淄博市', '370000');
INSERT INTO `st_city` VALUES ('370400', '枣庄市', '370000');
INSERT INTO `st_city` VALUES ('370500', '东营市', '370000');
INSERT INTO `st_city` VALUES ('370600', '烟台市', '370000');
INSERT INTO `st_city` VALUES ('370700', '潍坊市', '370000');
INSERT INTO `st_city` VALUES ('370800', '济宁市', '370000');
INSERT INTO `st_city` VALUES ('370900', '泰安市', '370000');
INSERT INTO `st_city` VALUES ('371000', '威海市', '370000');
INSERT INTO `st_city` VALUES ('371100', '日照市', '370000');
INSERT INTO `st_city` VALUES ('371200', '莱芜市', '370000');
INSERT INTO `st_city` VALUES ('371300', '临沂市', '370000');
INSERT INTO `st_city` VALUES ('371400', '德州市', '370000');
INSERT INTO `st_city` VALUES ('371500', '聊城市', '370000');
INSERT INTO `st_city` VALUES ('371600', '滨州市', '370000');
INSERT INTO `st_city` VALUES ('371700', '荷泽市', '370000');
INSERT INTO `st_city` VALUES ('410100', '郑州市', '410000');
INSERT INTO `st_city` VALUES ('410200', '开封市', '410000');
INSERT INTO `st_city` VALUES ('410300', '洛阳市', '410000');
INSERT INTO `st_city` VALUES ('410400', '平顶山市', '410000');
INSERT INTO `st_city` VALUES ('410500', '安阳市', '410000');
INSERT INTO `st_city` VALUES ('410600', '鹤壁市', '410000');
INSERT INTO `st_city` VALUES ('410700', '新乡市', '410000');
INSERT INTO `st_city` VALUES ('410800', '焦作市', '410000');
INSERT INTO `st_city` VALUES ('410900', '濮阳市', '410000');
INSERT INTO `st_city` VALUES ('411000', '许昌市', '410000');
INSERT INTO `st_city` VALUES ('411100', '漯河市', '410000');
INSERT INTO `st_city` VALUES ('411200', '三门峡市', '410000');
INSERT INTO `st_city` VALUES ('411300', '南阳市', '410000');
INSERT INTO `st_city` VALUES ('411400', '商丘市', '410000');
INSERT INTO `st_city` VALUES ('411500', '信阳市', '410000');
INSERT INTO `st_city` VALUES ('411600', '周口市', '410000');
INSERT INTO `st_city` VALUES ('411700', '驻马店市', '410000');
INSERT INTO `st_city` VALUES ('420100', '武汉市', '420000');
INSERT INTO `st_city` VALUES ('420200', '黄石市', '420000');
INSERT INTO `st_city` VALUES ('420300', '十堰市', '420000');
INSERT INTO `st_city` VALUES ('420500', '宜昌市', '420000');
INSERT INTO `st_city` VALUES ('420600', '襄樊市', '420000');
INSERT INTO `st_city` VALUES ('420700', '鄂州市', '420000');
INSERT INTO `st_city` VALUES ('420800', '荆门市', '420000');
INSERT INTO `st_city` VALUES ('420900', '孝感市', '420000');
INSERT INTO `st_city` VALUES ('421000', '荆州市', '420000');
INSERT INTO `st_city` VALUES ('421100', '黄冈市', '420000');
INSERT INTO `st_city` VALUES ('421200', '咸宁市', '420000');
INSERT INTO `st_city` VALUES ('421300', '随州市', '420000');
INSERT INTO `st_city` VALUES ('422800', '恩施土家族苗族自治州', '420000');
INSERT INTO `st_city` VALUES ('429000', '省直辖行政单位', '420000');
INSERT INTO `st_city` VALUES ('430100', '长沙市', '430000');
INSERT INTO `st_city` VALUES ('430200', '株洲市', '430000');
INSERT INTO `st_city` VALUES ('430300', '湘潭市', '430000');
INSERT INTO `st_city` VALUES ('430400', '衡阳市', '430000');
INSERT INTO `st_city` VALUES ('430500', '邵阳市', '430000');
INSERT INTO `st_city` VALUES ('430600', '岳阳市', '430000');
INSERT INTO `st_city` VALUES ('430700', '常德市', '430000');
INSERT INTO `st_city` VALUES ('430800', '张家界市', '430000');
INSERT INTO `st_city` VALUES ('430900', '益阳市', '430000');
INSERT INTO `st_city` VALUES ('431000', '郴州市', '430000');
INSERT INTO `st_city` VALUES ('431100', '永州市', '430000');
INSERT INTO `st_city` VALUES ('431200', '怀化市', '430000');
INSERT INTO `st_city` VALUES ('431300', '娄底市', '430000');
INSERT INTO `st_city` VALUES ('433100', '湘西土家族苗族自治州', '430000');
INSERT INTO `st_city` VALUES ('440100', '广州市', '440000');
INSERT INTO `st_city` VALUES ('440200', '韶关市', '440000');
INSERT INTO `st_city` VALUES ('440300', '深圳市', '440000');
INSERT INTO `st_city` VALUES ('440400', '珠海市', '440000');
INSERT INTO `st_city` VALUES ('440500', '汕头市', '440000');
INSERT INTO `st_city` VALUES ('440600', '佛山市', '440000');
INSERT INTO `st_city` VALUES ('440700', '江门市', '440000');
INSERT INTO `st_city` VALUES ('440800', '湛江市', '440000');
INSERT INTO `st_city` VALUES ('440900', '茂名市', '440000');
INSERT INTO `st_city` VALUES ('441200', '肇庆市', '440000');
INSERT INTO `st_city` VALUES ('441300', '惠州市', '440000');
INSERT INTO `st_city` VALUES ('441400', '梅州市', '440000');
INSERT INTO `st_city` VALUES ('441500', '汕尾市', '440000');
INSERT INTO `st_city` VALUES ('441600', '河源市', '440000');
INSERT INTO `st_city` VALUES ('441700', '阳江市', '440000');
INSERT INTO `st_city` VALUES ('441800', '清远市', '440000');
INSERT INTO `st_city` VALUES ('441900', '东莞市', '440000');
INSERT INTO `st_city` VALUES ('442000', '中山市', '440000');
INSERT INTO `st_city` VALUES ('445100', '潮州市', '440000');
INSERT INTO `st_city` VALUES ('445200', '揭阳市', '440000');
INSERT INTO `st_city` VALUES ('445300', '云浮市', '440000');
INSERT INTO `st_city` VALUES ('450100', '南宁市', '450000');
INSERT INTO `st_city` VALUES ('450200', '柳州市', '450000');
INSERT INTO `st_city` VALUES ('450300', '桂林市', '450000');
INSERT INTO `st_city` VALUES ('450400', '梧州市', '450000');
INSERT INTO `st_city` VALUES ('450500', '北海市', '450000');
INSERT INTO `st_city` VALUES ('450600', '防城港市', '450000');
INSERT INTO `st_city` VALUES ('450700', '钦州市', '450000');
INSERT INTO `st_city` VALUES ('450800', '贵港市', '450000');
INSERT INTO `st_city` VALUES ('450900', '玉林市', '450000');
INSERT INTO `st_city` VALUES ('451000', '百色市', '450000');
INSERT INTO `st_city` VALUES ('451100', '贺州市', '450000');
INSERT INTO `st_city` VALUES ('451200', '河池市', '450000');
INSERT INTO `st_city` VALUES ('451300', '来宾市', '450000');
INSERT INTO `st_city` VALUES ('451400', '崇左市', '450000');
INSERT INTO `st_city` VALUES ('460100', '海口市', '460000');
INSERT INTO `st_city` VALUES ('460200', '三亚市', '460000');
INSERT INTO `st_city` VALUES ('469000', '省直辖县级行政单位', '460000');
INSERT INTO `st_city` VALUES ('500100', '市辖区', '500000');
INSERT INTO `st_city` VALUES ('510100', '成都市', '510000');
INSERT INTO `st_city` VALUES ('510300', '自贡市', '510000');
INSERT INTO `st_city` VALUES ('510400', '攀枝花市', '510000');
INSERT INTO `st_city` VALUES ('510500', '泸州市', '510000');
INSERT INTO `st_city` VALUES ('510600', '德阳市', '510000');
INSERT INTO `st_city` VALUES ('510700', '绵阳市', '510000');
INSERT INTO `st_city` VALUES ('510800', '广元市', '510000');
INSERT INTO `st_city` VALUES ('510900', '遂宁市', '510000');
INSERT INTO `st_city` VALUES ('511000', '内江市', '510000');
INSERT INTO `st_city` VALUES ('511100', '乐山市', '510000');
INSERT INTO `st_city` VALUES ('511300', '南充市', '510000');
INSERT INTO `st_city` VALUES ('511400', '眉山市', '510000');
INSERT INTO `st_city` VALUES ('511500', '宜宾市', '510000');
INSERT INTO `st_city` VALUES ('511600', '广安市', '510000');
INSERT INTO `st_city` VALUES ('511700', '达州市', '510000');
INSERT INTO `st_city` VALUES ('511800', '雅安市', '510000');
INSERT INTO `st_city` VALUES ('511900', '巴中市', '510000');
INSERT INTO `st_city` VALUES ('512000', '资阳市', '510000');
INSERT INTO `st_city` VALUES ('513200', '阿坝藏族羌族自治州', '510000');
INSERT INTO `st_city` VALUES ('513300', '甘孜藏族自治州', '510000');
INSERT INTO `st_city` VALUES ('513400', '凉山彝族自治州', '510000');
INSERT INTO `st_city` VALUES ('520100', '贵阳市', '520000');
INSERT INTO `st_city` VALUES ('520200', '六盘水市', '520000');
INSERT INTO `st_city` VALUES ('520300', '遵义市', '520000');
INSERT INTO `st_city` VALUES ('520400', '安顺市', '520000');
INSERT INTO `st_city` VALUES ('522200', '铜仁地区', '520000');
INSERT INTO `st_city` VALUES ('522300', '黔西南布依族苗族自治州', '520000');
INSERT INTO `st_city` VALUES ('522400', '毕节地区', '520000');
INSERT INTO `st_city` VALUES ('522600', '黔东南苗族侗族自治州', '520000');
INSERT INTO `st_city` VALUES ('522700', '黔南布依族苗族自治州', '520000');
INSERT INTO `st_city` VALUES ('530100', '昆明市', '530000');
INSERT INTO `st_city` VALUES ('530300', '曲靖市', '530000');
INSERT INTO `st_city` VALUES ('530400', '玉溪市', '530000');
INSERT INTO `st_city` VALUES ('530500', '保山市', '530000');
INSERT INTO `st_city` VALUES ('530600', '昭通市', '530000');
INSERT INTO `st_city` VALUES ('530700', '丽江市', '530000');
INSERT INTO `st_city` VALUES ('530800', '思茅市', '530000');
INSERT INTO `st_city` VALUES ('530900', '临沧市', '530000');
INSERT INTO `st_city` VALUES ('532300', '楚雄彝族自治州', '530000');
INSERT INTO `st_city` VALUES ('532500', '红河哈尼族彝族自治州', '530000');
INSERT INTO `st_city` VALUES ('532600', '文山壮族苗族自治州', '530000');
INSERT INTO `st_city` VALUES ('532800', '西双版纳傣族自治州', '530000');
INSERT INTO `st_city` VALUES ('532900', '大理白族自治州', '530000');
INSERT INTO `st_city` VALUES ('533100', '德宏傣族景颇族自治州', '530000');
INSERT INTO `st_city` VALUES ('533300', '怒江傈僳族自治州', '530000');
INSERT INTO `st_city` VALUES ('533400', '迪庆藏族自治州', '530000');
INSERT INTO `st_city` VALUES ('540100', '拉萨市', '540000');
INSERT INTO `st_city` VALUES ('542100', '昌都地区', '540000');
INSERT INTO `st_city` VALUES ('542200', '山南地区', '540000');
INSERT INTO `st_city` VALUES ('542300', '日喀则地区', '540000');
INSERT INTO `st_city` VALUES ('542400', '那曲地区', '540000');
INSERT INTO `st_city` VALUES ('542500', '阿里地区', '540000');
INSERT INTO `st_city` VALUES ('542600', '林芝地区', '540000');
INSERT INTO `st_city` VALUES ('610100', '西安市', '610000');
INSERT INTO `st_city` VALUES ('610200', '铜川市', '610000');
INSERT INTO `st_city` VALUES ('610300', '宝鸡市', '610000');
INSERT INTO `st_city` VALUES ('610400', '咸阳市', '610000');
INSERT INTO `st_city` VALUES ('610500', '渭南市', '610000');
INSERT INTO `st_city` VALUES ('610600', '延安市', '610000');
INSERT INTO `st_city` VALUES ('610700', '汉中市', '610000');
INSERT INTO `st_city` VALUES ('610800', '榆林市', '610000');
INSERT INTO `st_city` VALUES ('610900', '安康市', '610000');
INSERT INTO `st_city` VALUES ('611000', '商洛市', '610000');
INSERT INTO `st_city` VALUES ('620100', '兰州市', '620000');
INSERT INTO `st_city` VALUES ('620200', '嘉峪关市', '620000');
INSERT INTO `st_city` VALUES ('620300', '金昌市', '620000');
INSERT INTO `st_city` VALUES ('620400', '白银市', '620000');
INSERT INTO `st_city` VALUES ('620500', '天水市', '620000');
INSERT INTO `st_city` VALUES ('620600', '武威市', '620000');
INSERT INTO `st_city` VALUES ('620700', '张掖市', '620000');
INSERT INTO `st_city` VALUES ('620800', '平凉市', '620000');
INSERT INTO `st_city` VALUES ('620900', '酒泉市', '620000');
INSERT INTO `st_city` VALUES ('621000', '庆阳市', '620000');
INSERT INTO `st_city` VALUES ('621100', '定西市', '620000');
INSERT INTO `st_city` VALUES ('621200', '陇南市', '620000');
INSERT INTO `st_city` VALUES ('622900', '临夏回族自治州', '620000');
INSERT INTO `st_city` VALUES ('623000', '甘南藏族自治州', '620000');
INSERT INTO `st_city` VALUES ('630100', '西宁市', '630000');
INSERT INTO `st_city` VALUES ('632100', '海东地区', '630000');
INSERT INTO `st_city` VALUES ('632200', '海北藏族自治州', '630000');
INSERT INTO `st_city` VALUES ('632300', '黄南藏族自治州', '630000');
INSERT INTO `st_city` VALUES ('632500', '海南藏族自治州', '630000');
INSERT INTO `st_city` VALUES ('632600', '果洛藏族自治州', '630000');
INSERT INTO `st_city` VALUES ('632700', '玉树藏族自治州', '630000');
INSERT INTO `st_city` VALUES ('632800', '海西蒙古族藏族自治州', '630000');
INSERT INTO `st_city` VALUES ('640100', '银川市', '640000');
INSERT INTO `st_city` VALUES ('640200', '石嘴山市', '640000');
INSERT INTO `st_city` VALUES ('640300', '吴忠市', '640000');
INSERT INTO `st_city` VALUES ('640400', '固原市', '640000');
INSERT INTO `st_city` VALUES ('640500', '中卫市', '640000');
INSERT INTO `st_city` VALUES ('650100', '乌鲁木齐市', '650000');
INSERT INTO `st_city` VALUES ('650200', '克拉玛依市', '650000');
INSERT INTO `st_city` VALUES ('652100', '吐鲁番地区', '650000');
INSERT INTO `st_city` VALUES ('652200', '哈密地区', '650000');
INSERT INTO `st_city` VALUES ('652300', '昌吉回族自治州', '650000');
INSERT INTO `st_city` VALUES ('652700', '博尔塔拉蒙古自治州', '650000');
INSERT INTO `st_city` VALUES ('652800', '巴音郭楞蒙古自治州', '650000');
INSERT INTO `st_city` VALUES ('652900', '阿克苏地区', '650000');
INSERT INTO `st_city` VALUES ('653000', '克孜勒苏柯尔克孜自治州', '650000');
INSERT INTO `st_city` VALUES ('653100', '喀什地区', '650000');
INSERT INTO `st_city` VALUES ('653200', '和田地区', '650000');
INSERT INTO `st_city` VALUES ('654000', '伊犁哈萨克自治州', '650000');
INSERT INTO `st_city` VALUES ('654200', '塔城地区', '650000');
INSERT INTO `st_city` VALUES ('654300', '阿勒泰地区', '650000');
INSERT INTO `st_city` VALUES ('659000', '省直辖行政单位', '650000');

-- ----------------------------
-- Table structure for st_province
-- ----------------------------
DROP TABLE IF EXISTS `st_province`;
CREATE TABLE `st_province` (
  `provinceid` int(11) NOT NULL,
  `PROVINCENAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of st_province
-- ----------------------------
INSERT INTO `st_province` VALUES ('110000', '北京市');
INSERT INTO `st_province` VALUES ('120000', '天津市');
INSERT INTO `st_province` VALUES ('130000', '河北省');
INSERT INTO `st_province` VALUES ('140000', '山西省');
INSERT INTO `st_province` VALUES ('150000', '内蒙古自治区');
INSERT INTO `st_province` VALUES ('210000', '辽宁省');
INSERT INTO `st_province` VALUES ('220000', '吉林省');
INSERT INTO `st_province` VALUES ('230000', '黑龙江省');
INSERT INTO `st_province` VALUES ('310000', '上海市');
INSERT INTO `st_province` VALUES ('320000', '江苏省');
INSERT INTO `st_province` VALUES ('330000', '浙江省');
INSERT INTO `st_province` VALUES ('340000', '安徽省');
INSERT INTO `st_province` VALUES ('350000', '福建省');
INSERT INTO `st_province` VALUES ('360000', '江西省');
INSERT INTO `st_province` VALUES ('370000', '山东省');
INSERT INTO `st_province` VALUES ('410000', '河南省');
INSERT INTO `st_province` VALUES ('420000', '湖北省');
INSERT INTO `st_province` VALUES ('430000', '湖南省');
INSERT INTO `st_province` VALUES ('440000', '广东省');
INSERT INTO `st_province` VALUES ('450000', '广西壮族自治区');
INSERT INTO `st_province` VALUES ('460000', '海南省');
INSERT INTO `st_province` VALUES ('500000', '重庆市');
INSERT INTO `st_province` VALUES ('510000', '四川省');
INSERT INTO `st_province` VALUES ('520000', '贵州省');
INSERT INTO `st_province` VALUES ('530000', '云南省');
INSERT INTO `st_province` VALUES ('540000', '西藏自治区');
INSERT INTO `st_province` VALUES ('610000', '陕西省');
INSERT INTO `st_province` VALUES ('620000', '甘肃省');
INSERT INTO `st_province` VALUES ('630000', '青海省');
INSERT INTO `st_province` VALUES ('640000', '宁夏回族自治区');
INSERT INTO `st_province` VALUES ('650000', '新疆维吾尔自治区');
INSERT INTO `st_province` VALUES ('710000', '台湾省');
INSERT INTO `st_province` VALUES ('810000', '香港特别行政区');
INSERT INTO `st_province` VALUES ('820000', '澳门特别行政区');

-- ----------------------------
-- Table structure for sys_app_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_app_user`;
CREATE TABLE `sys_app_user` (
  `USER_ID` varchar(100) NOT NULL,
  `USERNAME` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `RIGHTS` varchar(255) DEFAULT NULL,
  `ROLE_ID` varchar(100) DEFAULT NULL,
  `LAST_LOGIN` varchar(255) DEFAULT NULL,
  `IP` varchar(100) DEFAULT NULL,
  `STATUS` varchar(32) DEFAULT NULL,
  `BZ` varchar(255) DEFAULT NULL,
  `PHONE` varchar(100) DEFAULT NULL,
  `SFID` varchar(100) DEFAULT NULL,
  `START_TIME` varchar(100) DEFAULT NULL,
  `END_TIME` varchar(100) DEFAULT NULL,
  `YEARS` int(10) DEFAULT NULL,
  `NUMBER` varchar(100) DEFAULT NULL,
  `EMAIL` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_app_user
-- ----------------------------
INSERT INTO `sys_app_user` VALUES ('1e89e6504be349a68c025976b3ecc1d1', 'a1', '698d51a19d8a121ce581499d7b701668', '会员甲', '', '115b386ff04f4352b060dffcd2b5d1da', '', '', '1', '121', '1212', '1212', '2015-12-02', '2015-12-25', '2', '111', '313596790@qq.com');
INSERT INTO `sys_app_user` VALUES ('55d00299ec76448790e5f38da99b8ed6', 'dd', '698d51a19d8a121ce581499d7b701668', '1212', '', '1b67fc82ce89457a8347ae53e43a347e', '', '', '1', '1213', '213123', '213', '2016-03-30', '2016-03-31', '123', '1121', '213435345@qq.com');

-- ----------------------------
-- Table structure for sys_chat
-- ----------------------------
DROP TABLE IF EXISTS `sys_chat`;
CREATE TABLE `sys_chat` (
  `ID` int(255) NOT NULL AUTO_INCREMENT COMMENT '表主键',
  `CONTENT` text COMMENT '聊天内容',
  `SENDTIME` datetime DEFAULT NULL COMMENT '发送时间',
  `USER` varchar(255) DEFAULT NULL COMMENT '发送人',
  `TOUSER` varchar(255) DEFAULT NULL COMMENT '接收人',
  `CHAT_TYPE` int(1) DEFAULT NULL COMMENT '0表示全局、1表示私信',
  `CREATE_USER` varchar(255) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_chat
-- ----------------------------
INSERT INTO `sys_chat` VALUES ('33', 'WWWWWW', '2017-07-17 09:26:37', 'luopeng', null, '0', 'luopeng', '2017-07-17 09:26:37');
INSERT INTO `sys_chat` VALUES ('34', '12313', '2017-07-17 09:29:30', 'luopeng', null, '0', 'luopeng', '2017-07-17 09:29:30');
INSERT INTO `sys_chat` VALUES ('35', '032', '2017-07-17 09:32:18', 'luopeng', null, '0', 'luopeng', '2017-07-17 09:32:18');
INSERT INTO `sys_chat` VALUES ('36', '321456', '2017-07-17 09:33:11', 'w5', null, '0', 'w5', '2017-07-17 09:33:11');
INSERT INTO `sys_chat` VALUES ('37', '895', '2017-07-17 09:33:19', 'w5', 'luopeng', '1', 'w5', '2017-07-17 09:33:19');
INSERT INTO `sys_chat` VALUES ('38', '000', '2017-07-17 09:34:40', 'w3', 'w5', '1', 'w3', '2017-07-17 09:34:40');
INSERT INTO `sys_chat` VALUES ('39', '5896', '2017-07-17 09:41:38', 'w5', 'luopeng', '1', 'w5', '2017-07-17 09:41:38');
INSERT INTO `sys_chat` VALUES ('40', '96来了', '2017-07-17 09:42:23', 'luopeng', null, '0', 'luopeng', '2017-07-17 09:42:23');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `kee` varchar(255) NOT NULL,
  `value` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`kee`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_config
-- ----------------------------

-- ----------------------------
-- Table structure for sys_createcode
-- ----------------------------
DROP TABLE IF EXISTS `sys_createcode`;
CREATE TABLE `sys_createcode` (
  `CREATECODE_ID` varchar(100) NOT NULL,
  `PACKAGENAME` varchar(50) DEFAULT NULL COMMENT '包名',
  `OBJECTNAME` varchar(50) DEFAULT NULL COMMENT '类名',
  `TABLENAME` varchar(50) DEFAULT NULL COMMENT '表名',
  `FIELDLIST` varchar(5000) DEFAULT NULL COMMENT '属性集',
  `CREATETIME` varchar(100) DEFAULT NULL COMMENT '创建时间',
  `TITLE` varchar(255) DEFAULT NULL COMMENT '描述',
  `FHTYPE` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`CREATECODE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_createcode
-- ----------------------------
INSERT INTO `sys_createcode` VALUES ('002ea762e3e242a7a10ea5ca633701d8', 'system', 'Buttonrights', 'sys_,fh,BUTTONRIGHTS', 'NAME,fh,String,fh,名称,fh,是,fh,无,fh,255Q313596790', '2016-01-16 23:20:36', '按钮权限', 'single');
INSERT INTO `sys_createcode` VALUES ('030019b2dbbf4581a1d76a62d009e9e1', 'system', 'HotelService', 'szjm_,fh,HOTELSERVICE', 'HOTEL_ID,fh,String,fh,酒店编号,fh,是,fh,无,fh,255,fh,0Q313596790SERVICE_ID,fh,String,fh,服务编号,fh,是,fh,无,fh,255,fh,0Q313596790', '2017-08-14 15:09:28', '酒店服务', 'single');
INSERT INTO `sys_createcode` VALUES ('043843a286f84549ad3fa71aac827f6f', 'system', 'FHlog', 'SYS_,fh,FHLOG', 'USERNAME,fh,String,fh,用户名,fh,是,fh,无,fh,100,fh,0Q313596790CZTIME,fh,Date,fh,操作时间,fh,否,fh,无,fh,32,fh,0Q313596790CONTENT,fh,String,fh,事件,fh,是,fh,无,fh,255,fh,0Q313596790', '2016-05-10 21:10:16', '操作日志记录', 'single');
INSERT INTO `sys_createcode` VALUES ('0da35a227da14aa0a17d8241636a5747', 'system', 'Artificer', 'yz_,fh,ARTIFICER', 'ID,fh,Integer,fh,备注1,fh,是,fh,无,fh,11,fh,0Q313596790JS_NUM,fh,Integer,fh,备注2,fh,是,fh,无,fh,11,fh,0Q313596790NAME,fh,String,fh,备注3,fh,是,fh,无,fh,255,fh,0Q313596790SKILL_ID,fh,Integer,fh,备注4,fh,是,fh,无,fh,11,fh,0Q313596790SEX,fh,String,fh,备注5,fh,是,fh,无,fh,255,fh,0Q313596790ICON,fh,String,fh,备注6,fh,是,fh,无,fh,255,fh,0Q313596790WORK_TIME,fh,String,fh,备注7,fh,是,fh,无,fh,12,fh,31Q313596790PER_INTRODUCE,fh,String,fh,备注8,fh,是,fh,无,fh,255,fh,0Q313596790WORKS_ICON,fh,String,fh,备注9,fh,是,fh,无,fh,255,fh,0Q313596790CREATE_TIME,fh,Date,fh,备注10,fh,是,fh,无,fh,19,fh,0Q313596790UPDATE_TIME,fh,Date,fh,备注11,fh,是,fh,无,fh,19,fh,0Q313596790', '2017-11-29 18:44:16', '天天', 'single');
INSERT INTO `sys_createcode` VALUES ('0ee023606efb45b9a3baaa072e502161', 'information', 'FtestMx', 'FH_,fh,FTESTMX', 'TITLE,fh,String,fh,标题,fh,是,fh,无,fh,255,fh,0Q313596790CHANGDU,fh,Integer,fh,长度,fh,是,fh,无,fh,11,fh,0Q313596790', '2016-04-21 01:52:11', '主表测试(明细)', 'sontable');
INSERT INTO `sys_createcode` VALUES ('18d36b70e0fe4d0b9190bc077017137a', 'system', 'OrderDetails', 'yz_,fh,ORDERDETAILS', 'ARTORDER_ID,fh,String,fh,单号,fh,是,fh,无,fh,255,fh,0Q313596790ARTIFICER_ID,fh,String,fh,备注3,fh,是,fh,无,fh,255,fh,0Q313596790SKILL_ID,fh,String,fh,备注4,fh,是,fh,无,fh,255,fh,0Q313596790RAKEPRICE,fh,String,fh,备注5,fh,是,fh,无,fh,11,fh,3Q313596790IS_RECOMMEND,fh,Integer,fh,备注6,fh,是,fh,无,fh,11,fh,0Q313596790', '2017-12-15 16:01:11', '订单详细', 'single');
INSERT INTO `sys_createcode` VALUES ('1be959583e82473b82f6e62087bd0d38', 'information', 'Attached', 'TB_,fh,ATTACHED', 'NAME,fh,String,fh,NAME,fh,是,fh,无,fh,255,fh,0Q313596790FDESCRIBE,fh,String,fh,FDESCRIBE,fh,是,fh,无,fh,255,fh,0Q313596790PRICE,fh,Double,fh,PRICE,fh,是,fh,无,fh,11,fh,2Q313596790CTIME,fh,Date,fh,CTIME,fh,否,fh,无,fh,32,fh,0Q313596790', '2016-04-21 17:07:59', '主表测试', 'fathertable');
INSERT INTO `sys_createcode` VALUES ('1e9720b3293343e489d731d6841d7b10', 'system', 'Hotel', 'szjm_,fh,HOTEL', 'HOTEL_ID,fh,Integer,fh,酒店编号,fh,是,fh,无,fh,11,fh,0Q313596790HOTEL_NAME,fh,String,fh,酒店名称,fh,是,fh,无,fh,255,fh,0Q313596790HOTEL_PHONE,fh,String,fh,酒店电话,fh,是,fh,无,fh,255,fh,0Q313596790PREDETERMINED_PERCENT,fh,String,fh,预定金额,fh,是,fh,无,fh,8,fh,2Q313596790HOTEL_LOGO,fh,String,fh,酒店logo,fh,是,fh,无,fh,255,fh,0Q313596790HOTEL_BACKGROUND,fh,String,fh,首页背景,fh,是,fh,无,fh,255,fh,0Q313596790HOTEL_DESCRIPTION,fh,String,fh,酒店简介,fh,是,fh,无,fh,21845,fh,0Q313596790STATUS,fh,String,fh,状态,fh,是,fh,无,fh,10,fh,0Q313596790CREATE_USER,fh,String,fh,创建人,fh,是,fh,无,fh,255,fh,0Q313596790CREATE_DATE,fh,String,fh,创建日期,fh,是,fh,无,fh,255,fh,0Q313596790MODIFY_USER,fh,String,fh,修改人,fh,是,fh,无,fh,255,fh,0Q313596790MODIFY_DATE,fh,String,fh,修改日期,fh,是,fh,无,fh,255,fh,0Q313596790', '2017-08-14 14:09:57', '酒店信息', 'single');
INSERT INTO `sys_createcode` VALUES ('3da8e8bd757c44148d89931a54d29c88', 'system', 'UserPhoto', 'SYS_,fh,USERPHOTO', 'USERNAME,fh,String,fh,用户名,fh,否,fh,无,fh,30,fh,0Q313596790PHOTO0,fh,String,fh,原图,fh,否,fh,无,fh,100,fh,0Q313596790PHOTO1,fh,String,fh,头像1,fh,否,fh,无,fh,100,fh,0Q313596790PHOTO2,fh,String,fh,头像2,fh,否,fh,无,fh,100,fh,0Q313596790PHOTO3,fh,String,fh,头像3,fh,否,fh,无,fh,100,fh,0Q313596790', '2016-06-05 17:54:25', '用户头像', 'single');
INSERT INTO `sys_createcode` VALUES ('4173a8c56a504dd6b6213d2b9cd3e91b', 'information', 'AttachedMx', 'TB_,fh,ATTACHEDMX', 'NAME,fh,String,fh,NAME,fh,是,fh,无,fh,255,fh,0Q313596790TITLE,fh,String,fh,TITLE,fh,是,fh,无,fh,255,fh,0Q313596790CTIME,fh,Date,fh,CTIME,fh,否,fh,无,fh,32,fh,0Q313596790PRICE,fh,Double,fh,PRICE,fh,是,fh,无,fh,11,fh,2Q313596790', '2016-04-21 17:09:40', '主表测试(明细)', 'sontable');
INSERT INTO `sys_createcode` VALUES ('41e07fb03763434daef41cd99d0406c3', 'system', 'LogInImg', 'SYS_,fh,LOGINIMG', 'NAME,fh,String,fh,文件名,fh,是,fh,无,fh,30,fh,0Q313596790FILEPATH,fh,String,fh,路径,fh,是,fh,无,fh,100,fh,0Q313596790TYPE,fh,Integer,fh,状态,fh,是,fh,无,fh,2,fh,0Q313596790FORDER,fh,Integer,fh,排序,fh,是,fh,无,fh,3,fh,0Q313596790', '2016-06-03 17:53:22', '登录页面背景图片', 'single');
INSERT INTO `sys_createcode` VALUES ('43ec43bae8f64d09809eb6690ff3485c', 'system', 'Pointrecord', 'yz_,fh,POINTRECORD', 'ID,fh,Integer,fh,备注1,fh,是,fh,无,fh,255,fh,0Q313596790USER_ID,fh,Integer,fh,备注2,fh,是,fh,无,fh,255,fh,0Q313596790POINT,fh,Integer,fh,备注3,fh,是,fh,无,fh,255,fh,0Q313596790TYPE,fh,Integer,fh,备注4,fh,是,fh,无,fh,255,fh,0Q313596790DESCRIPTION,fh,String,fh,备注5,fh,是,fh,无,fh,255,fh,0Q313596790CREATE_TIME,fh,Date,fh,备注6,fh,是,fh,无,fh,19,fh,0Q313596790UPDATE_TIME,fh,Date,fh,备注7,fh,是,fh,无,fh,19,fh,0Q313596790', '2017-12-01 14:53:16', '会员模块', 'sontable');
INSERT INTO `sys_createcode` VALUES ('49d985e081ed44e6b34ba1b8c5466e39', 'fhdb', 'TimingBackUp', 'DB_,fh,TIMINGBACKUP', 'JOBNAME,fh,String,fh,任务名称,fh,否,fh,无,fh,50Q313596790CREATE_TIME,fh,Date,fh,创建时间,fh,否,fh,无,fh,32Q313596790TABLENAME,fh,String,fh,表名,fh,是,fh,无,fh,50Q313596790TYPE,fh,Integer,fh,类型,fh,否,fh,无,fh,1Q313596790FHTIME,fh,String,fh,时间规则,fh,是,fh,无,fh,30Q313596790TIMEEXPLAIN,fh,String,fh,规则说明,fh,是,fh,无,fh,100Q313596790BZ,fh,String,fh,备注,fh,是,fh,无,fh,255Q313596790', '2016-04-09 11:53:38', '定时备份', 'single');
INSERT INTO `sys_createcode` VALUES ('4def60c58aa148b7998270978660ef30', 'fhoa', 'Fhfile', 'OA_,fh,FHFILE', 'NAME,fh,String,fh,文件名,fh,是,fh,无,fh,30,fh,0Q313596790FILEPATH,fh,String,fh,路径,fh,是,fh,无,fh,100,fh,0Q313596790CTIME,fh,Date,fh,上传时间,fh,否,fh,无,fh,32,fh,0Q313596790BZ,fh,String,fh,备注,fh,是,fh,无,fh,100,fh,0Q313596790USERNAME,fh,String,fh,长传者,fh,否,fh,无,fh,50,fh,0Q313596790DEPARTMENT_ID,fh,String,fh,部门ID,fh,否,fh,无,fh,100,fh,0Q313596790FILESIZE,fh,String,fh,文件大小,fh,否,fh,无,fh,10,fh,0Q313596790', '2016-05-27 20:52:01', '文件管理', 'single');
INSERT INTO `sys_createcode` VALUES ('53f979db457d4d3080d159c4739f1a54', 'system', 'Room', 'szjm_,fh,ROOM', 'ROOM_ID,fh,String,fh,备注1,fh,是,fh,无,fh,255,fh,0Q313596790HOTEL_ID,fh,String,fh,酒店id,fh,是,fh,无,fh,255,fh,0Q313596790ROOM_NAME,fh,String,fh,房型名称,fh,是,fh,无,fh,255,fh,0Q313596790ROOM_PRICE,fh,String,fh,房型价格,fh,是,fh,无,fh,12,fh,31Q313596790ROOM_GATEPRICE,fh,String,fh,门价,fh,是,fh,无,fh,12,fh,31Q313596790ROOM_COVER,fh,String,fh,封面,fh,是,fh,无,fh,255,fh,0Q313596790ROOM_DESC,fh,String,fh,简介,fh,是,fh,无,fh,21845,fh,0Q313596790STATUS,fh,String,fh,备注8,fh,是,fh,无,fh,10,fh,0Q313596790CREATE_USER,fh,String,fh,备注9,fh,是,fh,无,fh,255,fh,0Q313596790CREATE_DATE,fh,String,fh,备注10,fh,是,fh,无,fh,255,fh,0Q313596790MODIFY_USER,fh,String,fh,备注11,fh,是,fh,无,fh,255,fh,0Q313596790MODIFY_DATE,fh,String,fh,备注12,fh,是,fh,无,fh,255,fh,0Q313596790', '2017-08-14 12:04:04', '房型管理', 'single');
INSERT INTO `sys_createcode` VALUES ('591f297028984dbb874386b3e59593f8', 'system', 'Order', 'szjm_,fh,ORDER', 'ORDER_ID,fh,String,fh,订单编号,fh,是,fh,无,fh,255,fh,0Q313596790ROOM_ID,fh,String,fh,房型编号,fh,是,fh,无,fh,255,fh,0Q313596790COUNT,fh,Integer,fh,数量,fh,是,fh,无,fh,11,fh,0Q313596790BEGIN_TIME,fh,String,fh,入住开始日期,fh,是,fh,无,fh,255,fh,0Q313596790END_TIME,fh,String,fh,入住结束日期,fh,是,fh,无,fh,255,fh,0Q313596790PERSON_NAME,fh,String,fh,入住人,fh,是,fh,无,fh,255,fh,0Q313596790PERSON_PHONE,fh,String,fh,手机号,fh,是,fh,无,fh,255,fh,0Q313596790PLAN_TIME,fh,String,fh,预计到店时间,fh,是,fh,无,fh,255,fh,0Q313596790PREDETERMINED_AMOUNT,fh,String,fh,预定金额,fh,是,fh,无,fh,8,fh,2Q313596790TOTAL_AMOUNT,fh,String,fh,订单金额,fh,是,fh,无,fh,8,fh,2Q313596790OPENID,fh,String,fh,OPENID,fh,是,fh,无,fh,255,fh,0Q313596790ORDER_STATUS,fh,String,fh,订单状态,fh,是,fh,无,fh,255,fh,0Q313596790STATUS,fh,String,fh,状态,fh,是,fh,无,fh,255,fh,0Q313596790CREATE_USER,fh,String,fh,创建人,fh,是,fh,无,fh,255,fh,0Q313596790CREATE_DATE,fh,String,fh,创建日期,fh,是,fh,无,fh,255,fh,0Q313596790MODIFY_USER,fh,String,fh,修改人,fh,是,fh,无,fh,255,fh,0Q313596790MODIFY_DATE,fh,String,fh,修改日期,fh,是,fh,无,fh,255,fh,0Q313596790', '2017-08-16 16:58:30', '订单', 'single');
INSERT INTO `sys_createcode` VALUES ('5c0ad2cbef7b4b1b82598ddd7c838d87', 'systsm', 'ArtOrder', 'yz_,fh,ARTORDER', 'NUMBER,fh,String,fh,备注2,fh,是,fh,无,fh,255,fh,0Q313596790TOTALPRICE,fh,String,fh,备注3,fh,是,fh,无,fh,3,fh,0Q313596790', '2017-12-15 16:03:52', 'order', 'single');
INSERT INTO `sys_createcode` VALUES ('60932e1b26ec48af9de26e131615d14b', 'system', 'JsandSkill', 'yz_,fh,JSANDSKILL', 'JS_ID,fh,String,fh,备注1,fh,是,fh,无,fh,255,fh,0Q313596790SKILL_ID,fh,String,fh,备注2,fh,是,fh,无,fh,255,fh,0Q313596790', '2017-11-30 16:17:04', 'wo', 'single');
INSERT INTO `sys_createcode` VALUES ('75ce1cf88502482082ba4530dc349a8c', 'app', 'AppOrder', 'yz_,fh,APPORDER', 'ID,fh,String,fh,备注1,fh,是,fh,无,fh,255,fh,0Q313596790USER_NAME,fh,String,fh,备注2,fh,是,fh,无,fh,255,fh,0Q313596790OPENID,fh,String,fh,备注3,fh,是,fh,无,fh,255,fh,0Q313596790ARTIFICER_ID,fh,String,fh,备注4,fh,是,fh,无,fh,255,fh,0Q313596790RESERVE_MONEY,fh,String,fh,备注5,fh,是,fh,无,fh,10,fh,2Q313596790ORDER_MONEY,fh,String,fh,备注6,fh,是,fh,无,fh,10,fh,2Q313596790STATUS,fh,Integer,fh,备注7,fh,是,fh,无,fh,11,fh,0Q313596790CREATE_TIME,fh,Date,fh,备注8,fh,是,fh,无,fh,19,fh,0Q313596790', '2017-12-05 14:16:22', 'AppOrder', 'single');
INSERT INTO `sys_createcode` VALUES ('8a0e088551a54b5885bcedf4a87380a3', 'system', 'Hotelservice', ',fh,HOTELSERVICE', 'SERVICE_ID,fh,String,fh,主键,fh,是,fh,无,fh,255,fh,0Q313596790SERVICE_NAME,fh,String,fh,服务名称,fh,是,fh,无,fh,255,fh,0Q313596790SERVICE_PHOTO,fh,String,fh,服务电话,fh,是,fh,无,fh,255,fh,0Q313596790STATUS,fh,String,fh,状态,fh,是,fh,无,fh,10,fh,0Q313596790CREATE_USER,fh,String,fh,创建人,fh,是,fh,无,fh,255,fh,0Q313596790CREATE_DATE,fh,String,fh,创建时间,fh,是,fh,无,fh,255,fh,0Q313596790MODIFY_USER,fh,String,fh,修改人,fh,是,fh,无,fh,255,fh,0Q313596790MODIFY_DATE,fh,String,fh,修改时间,fh,是,fh,无,fh,255,fh,0Q313596790', '2017-08-14 13:57:19', '酒店服务', 'single');
INSERT INTO `sys_createcode` VALUES ('91af9fe509704fa68f6bca121359e3ec', 'fhoa', 'Staff', 'OA_,fh,STAFF', 'NAME,fh,String,fh,姓名,fh,是,fh,无,fh,50,fh,0Q313596790NAME_EN,fh,String,fh,英文,fh,是,fh,无,fh,50,fh,0Q313596790BIANMA,fh,String,fh,编码,fh,是,fh,无,fh,100,fh,0Q313596790DEPARTMENT_ID,fh,String,fh,部门,fh,是,fh,无,fh,100,fh,0Q313596790FUNCTIONS,fh,String,fh,职责,fh,是,fh,无,fh,255,fh,0Q313596790TEL,fh,String,fh,电话,fh,是,fh,无,fh,20,fh,0Q313596790EMAIL,fh,String,fh,邮箱,fh,是,fh,无,fh,50,fh,0Q313596790SEX,fh,String,fh,性别,fh,是,fh,无,fh,10,fh,0Q313596790BIRTHDAY,fh,Date,fh,出生日期,fh,是,fh,无,fh,32,fh,0Q313596790NATION,fh,String,fh,民族,fh,是,fh,无,fh,10,fh,0Q313596790JOBTYPE,fh,String,fh,岗位类别,fh,是,fh,无,fh,30,fh,0Q313596790JOBJOINTIME,fh,Date,fh,参加工作时间,fh,是,fh,无,fh,32,fh,0Q313596790FADDRESS,fh,String,fh,籍贯,fh,是,fh,无,fh,100,fh,0Q313596790POLITICAL,fh,String,fh,政治面貌,fh,是,fh,无,fh,30,fh,0Q313596790PJOINTIME,fh,Date,fh,入团时间,fh,是,fh,无,fh,32,fh,0Q313596790SFID,fh,String,fh,身份证号,fh,是,fh,无,fh,20,fh,0Q313596790MARITAL,fh,String,fh,婚姻状况,fh,是,fh,无,fh,10,fh,0Q313596790DJOINTIME,fh,Date,fh,进本单位时间,fh,是,fh,无,fh,32,fh,0Q313596790POST,fh,String,fh,现岗位,fh,是,fh,无,fh,30,fh,0Q313596790POJOINTIME,fh,Date,fh,上岗时间,fh,是,fh,无,fh,32,fh,0Q313596790EDUCATION,fh,String,fh,学历,fh,是,fh,无,fh,10,fh,0Q313596790SCHOOL,fh,String,fh,毕业学校,fh,是,fh,无,fh,30,fh,0Q313596790MAJOR,fh,String,fh,专业,fh,是,fh,无,fh,30,fh,0Q313596790FTITLE,fh,String,fh,职称,fh,是,fh,无,fh,30,fh,0Q313596790CERTIFICATE,fh,String,fh,职业资格证,fh,是,fh,无,fh,30,fh,0Q313596790CONTRACTLENGTH,fh,Integer,fh,劳动合同时长,fh,是,fh,无,fh,2,fh,0Q313596790CSTARTTIME,fh,Date,fh,签订日期,fh,是,fh,无,fh,32,fh,0Q313596790CENDTIME,fh,Date,fh,终止日期,fh,是,fh,无,fh,32,fh,0Q313596790ADDRESS,fh,String,fh,现住址,fh,是,fh,无,fh,100,fh,0Q313596790USER_ID,fh,String,fh,绑定账号ID,fh,否,fh,无,fh,100,fh,0Q313596790BZ,fh,String,fh,备注,fh,是,fh,无,fh,255,fh,0Q313596790', '2016-04-23 20:44:31', '员工管理', 'single');
INSERT INTO `sys_createcode` VALUES ('931f8eb9e71940b59b563ab6d0a73930', 'system', 'Skill', 'yz_,fh,SKILL', 'ID,fh,String,fh,备注1,fh,是,fh,无,fh,255,fh,0Q313596790NAME,fh,String,fh,备注2,fh,是,fh,无,fh,255,fh,0Q313596790PRICE,fh,String,fh,备注3,fh,是,fh,无,fh,10,fh,0Q313596790CREATE_TIME,fh,Date,fh,备注4,fh,是,fh,无,fh,19,fh,0Q313596790UPDATE_TIME,fh,Date,fh,备注5,fh,是,fh,无,fh,19,fh,0Q313596790', '2017-11-30 14:04:48', 'wo', 'single');
INSERT INTO `sys_createcode` VALUES ('95051eba9e104958ac81fda1f5f5d96e', 'system', 'Department', 'SYS_,fh,DEPARTMENT', 'NAME,fh,String,fh,名称,fh,是,fh,无,fh,30Q313596790NAME_EN,fh,String,fh,英文,fh,是,fh,无,fh,50Q313596790BIANMA,fh,String,fh,编码,fh,是,fh,无,fh,50Q313596790PARENT_ID,fh,String,fh,上级ID,fh,否,fh,无,fh,100Q313596790BZ,fh,String,fh,备注,fh,是,fh,无,fh,255Q313596790HEADMAN,fh,String,fh,负责人,fh,是,fh,无,fh,30Q313596790TEL,fh,String,fh,电话,fh,是,fh,无,fh,50Q313596790FUNCTIONS,fh,String,fh,部门职能,fh,是,fh,无,fh,255Q313596790ADDRESS,fh,String,fh,地址,fh,是,fh,无,fh,255Q313596790', '2017-07-14 17:43:57', '组织机构', 'single');
INSERT INTO `sys_createcode` VALUES ('9cd2291fd3ed41219c0b96683ad3033b', 'system', 'Workicon', 'yz_,fh,WORKICON', 'ID,fh,String,fh,备注1,fh,是,fh,无,fh,255,fh,0Q313596790ART_ID,fh,String,fh,备注2,fh,是,fh,无,fh,255,fh,0Q313596790WORK_ICON,fh,String,fh,备注3,fh,是,fh,无,fh,255,fh,0Q313596790', '2017-11-30 13:52:30', 'wo', 'single');
INSERT INTO `sys_createcode` VALUES ('a0d47a073df54dd39439287c42ebcfc2', 'system', 'Artificer', 'yz_,fh,ARTIFICER', 'TEXTMSG_ID,fh,String,fh,备注1,fh,是,fh,无,fh,100,fh,0Q313596790KEYWORD,fh,String,fh,备注2,fh,是,fh,无,fh,255,fh,0Q313596790CONTENT,fh,String,fh,备注3,fh,是,fh,无,fh,255,fh,0Q313596790CREATETIME,fh,String,fh,备注4,fh,是,fh,无,fh,100,fh,0Q313596790STATUS,fh,Integer,fh,备注5,fh,是,fh,无,fh,2,fh,0Q313596790BZ,fh,String,fh,备注6,fh,是,fh,无,fh,255,fh,0Q313596790', '2017-12-01 14:33:09', 'aa', 'single');
INSERT INTO `sys_createcode` VALUES ('a2fb75ec04b34663b59e4edcfed5bbcb', 'system', 'Skill', 'yz_,fh,SKILL', 'ID,fh,String,fh,备注1,fh,是,fh,无,fh,255,fh,0Q313596790NAME,fh,String,fh,备注2,fh,是,fh,无,fh,255,fh,0Q313596790PRICE,fh,String,fh,备注3,fh,是,fh,无,fh,10,fh,0Q313596790CREATE_TIME,fh,Date,fh,备注4,fh,否,fh,无,fh,19,fh,0Q313596790UPDATE_TIME,fh,Date,fh,备注5,fh,否,fh,无,fh,19,fh,0Q313596790', '2017-12-02 10:46:44', '生成', 'single');
INSERT INTO `sys_createcode` VALUES ('acfdaa711824450fa2f784959ccd277b', 'system', 'CustomerManage', 'yz_,fh,CUSTOMERMANAGE', 'ID,fh,Integer,fh,备注1,fh,是,fh,无,fh,255,fh,0Q313596790OPENID,fh,String,fh,备注2,fh,是,fh,无,fh,255,fh,0Q313596790NAME,fh,String,fh,备注3,fh,是,fh,无,fh,255,fh,0Q313596790NICK_NAME,fh,String,fh,备注4,fh,是,fh,无,fh,255,fh,0Q313596790PHONE_NUMBER,fh,String,fh,备注5,fh,是,fh,无,fh,255,fh,0Q313596790LIKE_HAIRDRESSER,fh,String,fh,备注6,fh,是,fh,无,fh,255,fh,0Q313596790TOKEN,fh,String,fh,备注7,fh,是,fh,无,fh,255,fh,0Q313596790GENDER,fh,Integer,fh,备注8,fh,是,fh,无,fh,255,fh,0Q313596790MONEY,fh,Double,fh,备注9,fh,是,fh,无,fh,255,fh,0Q313596790IMAGE_URL,fh,String,fh,备注10,fh,是,fh,无,fh,255,fh,0Q313596790ISMEMBER,fh,Integer,fh,备注11,fh,是,fh,无,fh,255,fh,0Q313596790CREATE_TIME,fh,Date,fh,备注12,fh,是,fh,无,fh,19,fh,0Q313596790UPDATE_TIME,fh,Date,fh,备注13,fh,是,fh,无,fh,19,fh,0Q313596790', '2017-12-01 17:57:12', '客户表', 'single');
INSERT INTO `sys_createcode` VALUES ('ae92803163ff44539e91711cfbe35411', 'fhoa', 'Datajur', 'OA_,fh,DATAJUR', 'DEPARTMENT_IDS,fh,String,fh,部门ID组合,fh,否,fh,无,fh,5000,fh,0Q313596790STAFF_ID,fh,String,fh,员工ID,fh,否,fh,无,fh,100,fh,0Q313596790DEPARTMENT_ID,fh,String,fh,部门ID,fh,是,fh,无,fh,100,fh,0Q313596790', '2016-04-27 03:49:39', '数据权限表', 'single');
INSERT INTO `sys_createcode` VALUES ('af9023965e5a4bcbbcfe38e26569aea9', 'system', 'Order', 'szjm_,fh,ORDER', 'ORDER_ID,fh,String,fh,备注1,fh,是,fh,无,fh,255,fh,0Q313596790ROOM_ID,fh,String,fh,备注2,fh,是,fh,无,fh,255,fh,0Q313596790COUNT,fh,Integer,fh,备注3,fh,是,fh,无,fh,11,fh,0Q313596790BEGIN_TIME,fh,String,fh,备注4,fh,是,fh,无,fh,255,fh,0Q313596790END_TIME,fh,String,fh,备注5,fh,是,fh,无,fh,255,fh,0Q313596790PERSON_NAME,fh,String,fh,备注6,fh,是,fh,无,fh,255,fh,0Q313596790PLAN_TIME,fh,String,fh,备注7,fh,是,fh,无,fh,255,fh,0Q313596790PREDETERMINED_AMOUNT,fh,String,fh,备注8,fh,是,fh,无,fh,8,fh,2Q313596790TOTAL_AMOUNT,fh,String,fh,备注9,fh,是,fh,无,fh,8,fh,2Q313596790OPENID,fh,String,fh,备注10,fh,是,fh,无,fh,255,fh,0Q313596790ORDER_STATUS,fh,String,fh,备注11,fh,是,fh,无,fh,255,fh,0Q313596790STATUS,fh,String,fh,备注12,fh,是,fh,无,fh,255,fh,0Q313596790CREATE_USER,fh,String,fh,备注13,fh,是,fh,无,fh,255,fh,0Q313596790CREATE_DATE,fh,String,fh,备注14,fh,是,fh,无,fh,255,fh,0Q313596790MODIFY_USER,fh,String,fh,备注15,fh,是,fh,无,fh,255,fh,0Q313596790MODIFY_DATE,fh,String,fh,备注16,fh,是,fh,无,fh,255,fh,0Q313596790', '2017-08-15 15:07:24', '订单管理', 'single');
INSERT INTO `sys_createcode` VALUES ('b36312d9fe3942488388f2978b7e5443', 'system', 'Transaction', 'szjm_,fh,TRANSACTION', 'TRANSACTION_ID,fh,String,fh,备注1,fh,是,fh,无,fh,255,fh,0Q313596790ORDER_ID,fh,String,fh,备注2,fh,是,fh,无,fh,255,fh,0Q313596790TRANSACTION_AMOUNT,fh,String,fh,备注3,fh,是,fh,无,fh,8,fh,2Q313596790TRANSACTION_TYPE,fh,String,fh,备注4,fh,是,fh,无,fh,255,fh,0Q313596790TRANSACTION_STATUS,fh,String,fh,备注5,fh,是,fh,无,fh,255,fh,0Q313596790FINISH_DATE,fh,String,fh,备注6,fh,是,fh,无,fh,255,fh,0Q313596790STATUS,fh,String,fh,备注7,fh,是,fh,无,fh,255,fh,0Q313596790CREATE_USER,fh,String,fh,备注8,fh,是,fh,无,fh,255,fh,0Q313596790CREATE_DATE,fh,String,fh,备注9,fh,是,fh,无,fh,255,fh,0Q313596790MODIFY_USER,fh,String,fh,备注10,fh,是,fh,无,fh,255,fh,0Q313596790MODIFY_DATE,fh,String,fh,备注11,fh,是,fh,无,fh,255,fh,0Q313596790', '2017-08-15 16:16:51', '订单交易记录', 'single');
INSERT INTO `sys_createcode` VALUES ('bf35ab8b2d064bf7928a04bba5e5a6dd', 'system', 'Fhsms', 'SYS_,fh,FHSMS', 'CONTENT,fh,String,fh,内容,fh,是,fh,无,fh,1000Q313596790TYPE,fh,String,fh,类型,fh,否,fh,无,fh,5Q313596790TO_USERNAME,fh,String,fh,收信人,fh,是,fh,无,fh,255Q313596790FROM_USERNAME,fh,String,fh,发信人,fh,是,fh,无,fh,255Q313596790SEND_TIME,fh,String,fh,发信时间,fh,是,fh,无,fh,100Q313596790STATUS,fh,String,fh,状态,fh,否,fh,无,fh,5Q313596790SANME_ID,fh,String,fh,共同ID,fh,是,fh,无,fh,100Q313596790', '2016-03-27 21:39:45', '站内信', 'single');
INSERT INTO `sys_createcode` VALUES ('c2aec97e44ea4671a1e62e52b6f49860', 'system', 'Recharge', 'yz_,fh,RECHARGE', 'ID,fh,Integer,fh,备注1,fh,是,fh,无,fh,255,fh,0Q313596790USER_ID,fh,Integer,fh,备注2,fh,是,fh,无,fh,255,fh,0Q313596790MONEY,fh,Double,fh,备注3,fh,是,fh,无,fh,255,fh,0Q313596790DESCRIPTION,fh,String,fh,备注4,fh,是,fh,无,fh,255,fh,0Q313596790CREATE_TIME,fh,Date,fh,备注5,fh,是,fh,无,fh,19,fh,0Q313596790UPDATE_TIME,fh,Date,fh,备注6,fh,是,fh,无,fh,19,fh,0Q313596790', '2017-12-01 18:16:37', '充值记录', 'single');
INSERT INTO `sys_createcode` VALUES ('c7586f931fd44c61beccd3248774c68c', 'system', 'Department', 'SYS_,fh,DEPARTMENT', 'NAME,fh,String,fh,名称,fh,是,fh,无,fh,30Q313596790NAME_EN,fh,String,fh,英文,fh,是,fh,无,fh,50Q313596790BIANMA,fh,String,fh,编码,fh,是,fh,无,fh,50Q313596790PARENT_ID,fh,String,fh,上级ID,fh,否,fh,无,fh,100Q313596790BZ,fh,String,fh,备注,fh,是,fh,无,fh,255Q313596790HEADMAN,fh,String,fh,负责人,fh,是,fh,无,fh,30Q313596790TEL,fh,String,fh,电话,fh,是,fh,无,fh,50Q313596790FUNCTIONS,fh,String,fh,部门职能,fh,是,fh,无,fh,255Q313596790ADDRESS,fh,String,fh,地址,fh,是,fh,无,fh,255Q313596790', '2015-12-20 01:49:25', '组织机构', 'tree');
INSERT INTO `sys_createcode` VALUES ('c937e21208914e5b8fb1202c685bbf2f', 'fhdb', 'Fhdb', 'DB_,fh,FHDB', 'USERNAME,fh,String,fh,操作用户,fh,否,fh,无,fh,50Q313596790BACKUP_TIME,fh,Date,fh,备份时间,fh,否,fh,无,fh,32Q313596790TABLENAME,fh,String,fh,表名,fh,是,fh,无,fh,50Q313596790SQLPATH,fh,String,fh,存储位置,fh,否,fh,无,fh,300Q313596790TYPE,fh,Integer,fh,类型,fh,是,fh,无,fh,1Q313596790DBSIZE,fh,String,fh,文件大小,fh,否,fh,无,fh,10Q313596790BZ,fh,String,fh,备注,fh,否,fh,无,fh,255Q313596790', '2016-03-30 13:46:54', '数据库管理', 'single');
INSERT INTO `sys_createcode` VALUES ('ca435ed5c89043a4b187ce347c2ddeb8', 'system', 'File', 'szjm_,fh,FILE', 'FILE_ID,fh,String,fh,备注1,fh,是,fh,无,fh,255,fh,0Q313596790FILE_NAME,fh,String,fh,备注2,fh,是,fh,无,fh,255,fh,0Q313596790PROJECT_ID,fh,String,fh,备注3,fh,是,fh,无,fh,255,fh,0Q313596790FILE_TYPE,fh,String,fh,备注4,fh,是,fh,无,fh,255,fh,0Q313596790FILE_PATH,fh,String,fh,备注5,fh,是,fh,无,fh,255,fh,0Q313596790FILE_INFO,fh,String,fh,备注6,fh,是,fh,无,fh,255,fh,0Q313596790CREATE_DATE,fh,String,fh,备注7,fh,是,fh,无,fh,255,fh,0Q313596790CREATE_USER,fh,String,fh,备注8,fh,是,fh,无,fh,255,fh,0Q313596790', '2017-08-14 17:12:32', '酒店或房间图片', 'single');
INSERT INTO `sys_createcode` VALUES ('d1f0fa52968d4cbd95ef7457d0b3bc18', 'system', 'JsandSkill', 'yz_,fh,JSANDSKILL', 'ID,fh,Integer,fh,备注1,fh,是,fh,无,fh,11,fh,0Q313596790JS_ID,fh,String,fh,备注2,fh,是,fh,无,fh,255,fh,0Q313596790SKILL_ID,fh,String,fh,备注3,fh,是,fh,无,fh,255,fh,0Q313596790', '2017-11-30 16:46:04', 'aa', 'single');
INSERT INTO `sys_createcode` VALUES ('d3c924c2d3a64b5684bfb6d02317dfef', 'system', 'HotalLocation', 'szjm_,fh,HOTALLOCATION', 'HOTEL_ID,fh,String,fh,酒店ID,fh,是,fh,无,fh,255,fh,0Q313596790PROVINCEID,fh,String,fh,省份ID,fh,是,fh,无,fh,255,fh,0Q313596790CITYID,fh,String,fh,城市ID,fh,是,fh,无,fh,255,fh,0Q313596790AREAID,fh,String,fh,区级ID,fh,是,fh,无,fh,255,fh,0Q313596790DETAILAREA,fh,String,fh,详细地址,fh,是,fh,无,fh,255,fh,0Q313596790LNG,fh,String,fh,经度,fh,是,fh,无,fh,255,fh,0Q313596790LAT,fh,String,fh,纬度,fh,是,fh,无,fh,255,fh,0Q313596790STATUS,fh,Integer,fh,状态,fh,是,fh,无,fh,11,fh,0Q313596790CREATE_USER,fh,String,fh,创建人,fh,是,fh,无,fh,255,fh,0Q313596790CREATE_DATE,fh,String,fh,创建人,fh,是,fh,无,fh,255,fh,0Q313596790MODIFY_USER,fh,String,fh,修改人,fh,是,fh,无,fh,255,fh,0Q313596790MODIFY_DATE,fh,String,fh,修改时间,fh,是,fh,无,fh,255,fh,0Q313596790', '2017-08-15 14:47:01', '酒店位置', 'single');
INSERT INTO `sys_createcode` VALUES ('d75309153b864a2dadb2f21b764a9028', 'system', 'OrderStatus', 'szjm_,fh,ORDERSTATUS', 'ORDERSTATUS_ID,fh,Integer,fh,备注1,fh,是,fh,无,fh,11,fh,0Q313596790ORDER_ID,fh,String,fh,备注2,fh,是,fh,无,fh,255,fh,0Q313596790STATUS_CODE,fh,String,fh,备注3,fh,是,fh,无,fh,255,fh,0Q313596790STATUS_DESCRIPTION,fh,String,fh,备注4,fh,是,fh,无,fh,255,fh,0Q313596790STATUS,fh,String,fh,备注5,fh,是,fh,无,fh,255,fh,0Q313596790CREATE_USER,fh,String,fh,备注6,fh,是,fh,无,fh,255,fh,0Q313596790CREATE_DATE,fh,String,fh,备注7,fh,是,fh,无,fh,255,fh,0Q313596790MODIFY_USER,fh,String,fh,备注8,fh,是,fh,无,fh,255,fh,0Q313596790MODIFY_DATE,fh,String,fh,备注9,fh,是,fh,无,fh,255,fh,0Q313596790', '2017-08-15 16:11:37', '订单状态记录', 'single');
INSERT INTO `sys_createcode` VALUES ('dcb09015c3b34f5ca02b4fce800e4070', 'system', 'Department', 'SYS_,fh,DEPARTMENT', 'NAME,fh,String,fh,名称,fh,是,fh,无,fh,30Q313596790NAME_EN,fh,String,fh,英文,fh,是,fh,无,fh,50Q313596790BIANMA,fh,String,fh,编码,fh,是,fh,无,fh,50Q313596790PARENT_ID,fh,String,fh,上级ID,fh,否,fh,无,fh,100Q313596790BZ,fh,String,fh,备注,fh,是,fh,无,fh,255Q313596790HEADMAN,fh,String,fh,负责人,fh,是,fh,无,fh,30Q313596790TEL,fh,String,fh,电话,fh,是,fh,无,fh,50Q313596790FUNCTIONS,fh,String,fh,部门职能,fh,是,fh,无,fh,255Q313596790ADDRESS,fh,String,fh,地址,fh,是,fh,无,fh,255Q313596790', '2017-07-10 15:35:33', '组织机构', 'tree');
INSERT INTO `sys_createcode` VALUES ('eac1cd695bb04d8aa5e4fd6d62b5c6ab', 'system', 'OrderList', 'yz_,fh,ORDERLIST', 'ID,fh,String,fh,备注1,fh,是,fh,无,fh,510,fh,0Q313596790USER_NAME,fh,String,fh,备注2,fh,是,fh,无,fh,255,fh,0Q313596790OPENID,fh,String,fh,备注3,fh,是,fh,无,fh,255,fh,0Q313596790ARTIFICER_ID,fh,String,fh,备注4,fh,是,fh,无,fh,255,fh,0Q313596790RESERVE_MONEY,fh,String,fh,备注5,fh,是,fh,无,fh,10,fh,2Q313596790ORDER_MONEY,fh,String,fh,备注6,fh,是,fh,无,fh,10,fh,2Q313596790PERSONNUM,fh,Integer,fh,备注7,fh,是,fh,无,fh,11,fh,0Q313596790SKILL_ID,fh,String,fh,备注8,fh,是,fh,无,fh,255,fh,0Q313596790RESERVE_TIME,fh,Date,fh,备注9,fh,是,fh,无,fh,19,fh,0Q313596790STATUS,fh,Integer,fh,备注10,fh,是,fh,无,fh,11,fh,0Q313596790CREATE_TIME,fh,Date,fh,备注11,fh,是,fh,无,fh,19,fh,0Q313596790', '2017-12-11 10:28:02', '全部订单', 'single');
INSERT INTO `sys_createcode` VALUES ('f1e64da0cc344d2eb84d5d0cc3eed069', 'system', 'ConfigValue', 'yz_,fh,CONFIGVALUE', 'ID,fh,Integer,fh,备注1,fh,是,fh,无,fh,255,fh,0Q313596790NAME,fh,String,fh,备注2,fh,是,fh,无,fh,255,fh,0Q313596790VALUE,fh,String,fh,备注3,fh,是,fh,无,fh,255,fh,0Q313596790CREATE_TIME,fh,Date,fh,备注4,fh,是,fh,无,fh,19,fh,0Q313596790UPDATE_TIME,fh,Date,fh,备注5,fh,是,fh,无,fh,19,fh,0Q313596790', '2017-12-02 11:53:20', '系统谁知项', 'single');
INSERT INTO `sys_createcode` VALUES ('f86d11d62a9c4eb1ab822a0c40f32160', 'system', 'Timeframe', 'yz_,fh,TIMEFRAME', 'ID,fh,String,fh,备注1,fh,是,fh,无,fh,255,fh,0Q313596790TIMEFRAME,fh,String,fh,时段,fh,是,fh,无,fh,255,fh,0Q313596790STATUS,fh,Integer,fh,状态,fh,否,fh,无,fh,10,fh,0Q313596790PERSONNUM,fh,Integer,fh,预约人数,fh,是,fh,无,fh,11,fh,0Q313596790ISAPPOINT,fh,Integer,fh,是否预约,fh,是,fh,无,fh,10,fh,0Q313596790', '2017-12-04 10:17:15', '时段', 'single');
INSERT INTO `sys_createcode` VALUES ('fa0f83db59a0477eb0879272f7362547', 'system', 'Timeframe', 'yz_,fh,TIMEFRAME', 'ID,fh,String,fh,时段,fh,是,fh,无,fh,255,fh,0Q313596790TIMEFRAME,fh,String,fh,备注2,fh,是,fh,无,fh,255,fh,0Q313596790STATUS,fh,String,fh,状态,fh,是,fh,无,fh,10,fh,0Q313596790', '2017-12-04 10:34:31', '预约时段', 'single');
INSERT INTO `sys_createcode` VALUES ('fbdbdc5d4c014e52abb9d109a7f49aaa', 'system', 'AritficerStatistics', 'yz_,fh,ARITFICERSTATISTICS', 'ID,fh,String,fh,备注1,fh,是,fh,无,fh,225,fh,0Q313596790ARTORDER_ID,fh,String,fh,备注2,fh,是,fh,无,fh,255,fh,0Q313596790ARTIFICER_ID,fh,String,fh,备注3,fh,是,fh,无,fh,255,fh,0Q313596790SKILL_ID,fh,String,fh,备注4,fh,是,fh,无,fh,255,fh,0Q313596790RAKEPRICE,fh,String,fh,备注5,fh,是,fh,无,fh,11,fh,3Q313596790IS_RECOMMEND,fh,Integer,fh,备注6,fh,是,fh,无,fh,11,fh,0Q313596790CREATE_TIME,fh,Date,fh,备注7,fh,是,fh,无,fh,19,fh,0Q313596790UPDATE_TIME,fh,Date,fh,备注8,fh,是,fh,无,fh,19,fh,0Q313596790', '2017-12-20 14:13:46', '订单详情', 'single');
INSERT INTO `sys_createcode` VALUES ('fe239f8742194481a5b56f90cad71520', 'system', 'Fhbutton', 'SYS_,fh,FHBUTTON', 'NAME,fh,String,fh,名称,fh,是,fh,无,fh,30Q313596790QX_NAME,fh,String,fh,权限标识,fh,是,fh,无,fh,50Q313596790BZ,fh,String,fh,备注,fh,是,fh,无,fh,255Q313596790', '2016-01-15 18:38:40', '按钮管理', 'single');
INSERT INTO `sys_createcode` VALUES ('fe8e5c4979d6411daf45d43e57fb4c74', 'system', 'A', 'yz_,fh,A', 'JS_ID,fh,String,fh,备注1,fh,是,fh,无,fh,255,fh,0Q313596790SKILL_ID,fh,String,fh,备注2,fh,是,fh,无,fh,255,fh,0Q313596790', '2017-11-30 16:13:19', 'a', 'single');
INSERT INTO `sys_createcode` VALUES ('ff6e6cdc87ba42579b033cf4925d4d70', 'dst', 'DataSource2', 'DS_,fh,DATASOURCE2', 'TITLE,fh,String,fh,标题,fh,是,fh,无,fh,100,fh,0Q313596790CONTENT,fh,String,fh,内容,fh,是,fh,无,fh,255,fh,0Q313596790', '2016-05-23 15:51:46', '第2数据源例子', 'single');

-- ----------------------------
-- Table structure for sys_dictionaries
-- ----------------------------
DROP TABLE IF EXISTS `sys_dictionaries`;
CREATE TABLE `sys_dictionaries` (
  `DICTIONARIES_ID` varchar(100) NOT NULL,
  `NAME` varchar(30) DEFAULT NULL COMMENT '名称',
  `NAME_EN` varchar(50) DEFAULT NULL COMMENT '英文',
  `BIANMA` varchar(50) DEFAULT NULL COMMENT '编码',
  `ORDER_BY` int(11) NOT NULL COMMENT '排序',
  `PARENT_ID` varchar(100) DEFAULT NULL COMMENT '上级ID',
  `BZ` varchar(255) DEFAULT NULL COMMENT '备注',
  `TBSNAME` varchar(100) DEFAULT NULL COMMENT '排查表',
  PRIMARY KEY (`DICTIONARIES_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_dictionaries
-- ----------------------------
INSERT INTO `sys_dictionaries` VALUES ('0193ffbfae1e49e0b7810546cada316a', '济南', 'JiNan', '0030301', '1', '10f46a521ea0471f8d71ee75ac3b5f3a', '济南', '');
INSERT INTO `sys_dictionaries` VALUES ('096e4ec8986149d994b09e604504e38d', '黄浦区', 'huangpu', '0030201', '1', 'f1ea30ddef1340609c35c88fb2919bee', '黄埔', '');
INSERT INTO `sys_dictionaries` VALUES ('10f46a521ea0471f8d71ee75ac3b5f3a', '山东', 'ShanDong', '00303', '3', 'be4a8c5182c744d28282a5345783a77f', '山东省', '');
INSERT INTO `sys_dictionaries` VALUES ('12a62a3e5bed44bba0412b7e6b733c93', '北京', 'beijing', '00301', '1', 'be4a8c5182c744d28282a5345783a77f', '北京', '');
INSERT INTO `sys_dictionaries` VALUES ('507fa87a49104c7c8cdb52fdb297da12', '宣武区', 'xuanwuqu', '0030101', '1', '12a62a3e5bed44bba0412b7e6b733c93', '宣武区', '');
INSERT INTO `sys_dictionaries` VALUES ('66f1ff79b13947da98525aff7380ef50', '高新区', 'gaoxinqu', '003030101', '1', '0193ffbfae1e49e0b7810546cada316a', '高新区', '');
INSERT INTO `sys_dictionaries` VALUES ('8994f5995f474e2dba6cfbcdfe5ea07a', '语文', 'yuwen', '00201', '1', 'fce20eb06d7b4b4d8f200eda623f725c', '语文', '');
INSERT INTO `sys_dictionaries` VALUES ('8ea7c44af25f48b993a14f791c8d689f', '分类', 'fenlei', '001', '1', '0', '分类', '');
INSERT INTO `sys_dictionaries` VALUES ('be4a8c5182c744d28282a5345783a77f', '地区', 'diqu', '003', '3', '0', '地区', '');
INSERT INTO `sys_dictionaries` VALUES ('d428594b0494476aa7338d9061e23ae3', '红色', 'red', '00101', '1', '8ea7c44af25f48b993a14f791c8d689f', '红色', '');
INSERT INTO `sys_dictionaries` VALUES ('de9afadfbed0428fa343704d6acce2c4', '绿色', 'green', '00102', '2', '8ea7c44af25f48b993a14f791c8d689f', '绿色', '');
INSERT INTO `sys_dictionaries` VALUES ('f1ea30ddef1340609c35c88fb2919bee', '上海', 'shanghai', '00302', '2', 'be4a8c5182c744d28282a5345783a77f', '上海', '');
INSERT INTO `sys_dictionaries` VALUES ('fce20eb06d7b4b4d8f200eda623f725c', '课程', 'kecheng', '002', '2', '0', '课程', '');

-- ----------------------------
-- Table structure for sys_fhbutton
-- ----------------------------
DROP TABLE IF EXISTS `sys_fhbutton`;
CREATE TABLE `sys_fhbutton` (
  `FHBUTTON_ID` varchar(100) NOT NULL,
  `NAME` varchar(30) DEFAULT NULL COMMENT '名称',
  `QX_NAME` varchar(50) DEFAULT NULL COMMENT '权限标识',
  `BZ` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`FHBUTTON_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_fhbutton
-- ----------------------------
INSERT INTO `sys_fhbutton` VALUES ('03eff82bae1c4a8aa809b9bbe7c9e980', '确认退款', 'sureRefund', '订单退款');
INSERT INTO `sys_fhbutton` VALUES ('3542adfbda73410c976e185ffe50ad06', '导出EXCEL', 'toExcel', '导出EXCEL');
INSERT INTO `sys_fhbutton` VALUES ('46992ea280ba4b72b29dedb0d4bc0106', '发邮件', 'email', '发送电子邮件');
INSERT INTO `sys_fhbutton` VALUES ('4c7f34b9eed54683957f356afcda24df', '组织机构数据权限', 'Datajur', '组织机构数据权限按钮');
INSERT INTO `sys_fhbutton` VALUES ('4efa162fce8340f0bd2dcd3b11d327ec', '导入EXCEL', 'FromExcel', '导入EXCEL到系统用户');
INSERT INTO `sys_fhbutton` VALUES ('b54c399d72ff4528beaeff82d2f48f5c', '确认核销', 'sureFinished', '订单确订核销');
INSERT INTO `sys_fhbutton` VALUES ('cc51b694d5344d28a9aa13c84b7166cd', '发短信', 'sms', '发送短信');
INSERT INTO `sys_fhbutton` VALUES ('da7fd386de0b49ce809984f5919022b8', '站内信', 'FHSMS', '发送站内信');
INSERT INTO `sys_fhbutton` VALUES ('ef4cd7dd582f4881bc25efc00d818e68', '确认预定', 'surePlan', '订单确订预定');
INSERT INTO `sys_fhbutton` VALUES ('fc5e8767b4564f34a0d2ce2375fcc92e', '绑定用户', 'userBinding', '绑定用户');

-- ----------------------------
-- Table structure for sys_fhlog
-- ----------------------------
DROP TABLE IF EXISTS `sys_fhlog`;
CREATE TABLE `sys_fhlog` (
  `FHLOG_ID` varchar(100) NOT NULL,
  `USERNAME` varchar(100) DEFAULT NULL COMMENT '用户名',
  `CZTIME` varchar(32) DEFAULT NULL COMMENT '操作时间',
  `CONTENT` varchar(255) DEFAULT NULL COMMENT '事件',
  PRIMARY KEY (`FHLOG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_fhlog
-- ----------------------------
INSERT INTO `sys_fhlog` VALUES ('002451922a8e4ee6abe1c995ce01d78c', 'admin', '2017-07-05 14:45:55', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('002ee6be181e4f718b5b32ca16be4578', 'admin', '2017-08-12 10:48:07', '修改cha_qx权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('00349b5e63fe475b9b33ae83354b8c54', 'admin', '2017-08-11 14:19:27', '删除菜单ID31');
INSERT INTO `sys_fhlog` VALUES ('003afbd860824185afe06c1b9855f2e0', 'admin', '2017-07-20 14:33:04', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('003fb7df94ea451ba5b34490854632a7', 'luopeng', '2017-07-17 11:08:16', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('00441800266e4d7c8ebe4e82cd691fac', 'admin', '2017-07-05 16:34:13', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('0080d614b11640cf9d8f371517152f81', 'admin', '2017-12-01 11:36:16', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('008158a22690440fbf0c7293da6e2c05', 'admin', '2017-12-20 13:31:13', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('0095a40cc0864b3683cc0668ec771abb', 'admin', '2017-12-20 14:04:35', '修改cha_qx权限，角色ID为:3');
INSERT INTO `sys_fhlog` VALUES ('00cbf2a9bea8499aaa2c2b0b2b33ce35', 'luopeng', '2017-08-15 09:15:34', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('00cd59cbcbf04d39afe75694af897ff2', 'luopeng', '2017-08-15 15:12:30', '修改add_qx权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('00d08c76c07840269d680c5012ae096e', 'luopeng', '2017-07-12 16:35:51', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('00f1365c4cca44deb830932618727a17', 'admin', '2017-08-15 09:26:27', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('010b3f9fd5754b14b2884139302b6211', 'admin', '2017-08-11 14:21:06', '修改cha_qx权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('010c2507041a45bbb1645ec5ac76d034', 'admin', '2017-07-17 10:39:36', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('01171120ee37411bac486b5d00b4d07c', 'admin', '2017-12-20 09:19:09', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('01263207e1514b9cbbe867fc09b28c91', 'admin', '2017-08-16 10:20:19', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('0192312f71844ecfa9509a283145ad41', 'admin', '2017-12-20 19:33:35', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('019c7c3c05af45179110040bdcf67632', 'luopeng', '2017-08-14 15:26:27', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('01a2537bb05343f6ba22639fa7771c1e', 'admin', '2017-12-02 15:34:34', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('020fbbb1125b43d5b6b9a26a1ff3953d', 'admin', '2018-03-08 10:24:30', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('029e4cdd65b24caaa955fb362edb9cf2', 'csp', '2017-08-15 15:29:46', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('02a46dbc4b124c56a4ab882ce791db90', 'admin', '2017-11-29 14:40:12', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('0300cf3b834e40f8b62e9829f216b77f', 'luopeng', '2017-07-12 11:03:51', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('0337cab024624b90821a697447075c5b', 'admin', '2017-12-11 10:23:51', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('033b952b0ba7480a807a8efd019777c7', 'admin', '2017-11-30 15:27:38', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('03442670249b46d490bb4cfa753f81c5', 'admin', '2017-12-21 09:35:42', '退出');
INSERT INTO `sys_fhlog` VALUES ('039dc755476c416abe18f89dd9d2af37', 'admin', '2017-07-17 10:39:54', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('03dc6af3219d422f8d081d16f847867e', 'admin', '2017-08-11 14:18:56', '删除菜单ID34');
INSERT INTO `sys_fhlog` VALUES ('0404464f91954473803ec480c75b3053', 'admin', '2017-12-01 09:56:17', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('041a84918a9946258f174eda655c2842', 'luopeng', '2017-08-14 18:01:24', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('042c4d754c4c4603ab1a644bddf95c31', 'luopeng', '2017-07-12 16:30:56', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('043c2d50dcbf4ba28843351818d3e86a', 'admin', '2017-07-05 17:26:21', '退出');
INSERT INTO `sys_fhlog` VALUES ('046e55303f354f609a87d0b092a0eee2', 'yz', '2018-04-10 14:14:36', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('048e604168c24b2893991a7d1cbb8e93', 'admin', '2017-07-10 15:03:52', '新增菜单微信菜单设置');
INSERT INTO `sys_fhlog` VALUES ('04b2f2309897428e94b8ff97cbf7ee9f', 'fanbing', '2017-07-04 15:13:01', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('04d6790a079f4ab192b586487e63f9b5', 'admin', '2017-12-20 10:32:49', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('057017e3c9ac4dd9b6976d5053e66c3f', 'admin', '2017-12-19 14:23:55', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('057c319ed9c448229a937597c77f2916', 'admin', '2017-12-01 14:37:14', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('057ca301c72b49078651343c31213679', 'admin', '2017-08-14 13:40:41', '新增菜单房型管理');
INSERT INTO `sys_fhlog` VALUES ('05b3f2066dfa4976a1c7c542931f1b1c', 'admin', '2017-12-15 16:29:59', '修改del_qx权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('05cb269a1037454b9b89efa3e54e2d0e', 'admin', '2017-12-02 10:29:11', '修改角色菜单权限，角色ID为:1');
INSERT INTO `sys_fhlog` VALUES ('05dc7e579b8e4d738307d56440b3a5ea', 'admin', '2017-08-15 18:33:02', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('05e7b68b539242a687650c7400c96b15', 'admin', '2017-07-05 15:42:29', '退出');
INSERT INTO `sys_fhlog` VALUES ('05efeb56270e493397ef21f2bc09c105', 'admin', '2017-05-11 11:45:24', '退出');
INSERT INTO `sys_fhlog` VALUES ('05ff00d49b4a44e2b5f90afe49f99a02', 'admin', '2017-08-16 15:49:17', '退出');
INSERT INTO `sys_fhlog` VALUES ('064961b96a8c4e8ca04c26474afaa0ab', 'admin', '2017-12-02 10:22:30', '修改角色菜单权限，角色ID为:1');
INSERT INTO `sys_fhlog` VALUES ('064c4b37da3e4c928129141f2cac00b5', 'admin', '2017-12-05 10:51:52', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('065830173d344560b34b8a0bf5ebc80d', 'admin', '2017-11-29 16:52:59', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('065a084db2664718b94590843b0856ba', 'admin', '2017-12-15 16:29:35', '修改角色菜单权限，角色ID为:3');
INSERT INTO `sys_fhlog` VALUES ('06aa0306bcf84d169f4c24149525a8c8', 'admin', '2017-12-01 16:24:17', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('07258ca49bb347f98bee20395855a98f', 'admin', '2017-07-10 09:13:06', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('07331936d1944656bf76b9d41c043942', 'admin', '2017-12-02 10:23:45', '修改角色菜单权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('0748fac64e124c3b8363949ac9cb7e39', 'admin', '2017-12-19 15:52:09', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('0750ddab6e85457680d23aef5609bdc6', 'admin', '2017-11-29 15:54:45', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('075cc21164194bc58a3ab1826be8a90d', 'luopeng', '2017-08-15 15:09:47', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('07654468da944a0b88f261263c0c6dc9', 'admin', '2017-07-05 16:32:19', '退出');
INSERT INTO `sys_fhlog` VALUES ('078a862508f64af0b2fd06e551ab30d8', 'admin', '2017-12-02 14:20:31', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('07dc1cea670c43c58830fd78ddbe7a6d', 'luopeng', '2017-08-18 13:59:19', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('07ff847df8434347b518fdc99a95b680', 'admin', '2017-08-11 14:37:07', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('081984c626c648489ec390c14ba5b638', 'admin', '2017-07-17 10:38:43', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('08200c3eb6d446ab8a2618f25803f525', 'admin', '2017-07-10 15:22:00', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('0823ca8080f04164aa640f955d3269e5', 'admin', '2017-12-19 11:35:53', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('084b15f656aa40ba9bd76eee049edaff', 'admin', '2017-07-05 17:30:27', '退出');
INSERT INTO `sys_fhlog` VALUES ('0857b20a5908473e93892df4c52ec1f8', 'admin', '2017-08-12 10:48:43', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('085c6b9cda7745e89e5dfac1e5df3ff8', 'admin', '2017-12-18 11:29:19', '退出');
INSERT INTO `sys_fhlog` VALUES ('0899db49486a4d0e88ef8004e247c829', 'admin', '2017-11-28 17:00:26', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('0900771964c0447e8d686602568a5dfb', 'admin', '2017-12-19 10:40:04', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('0931a28655f84238bfb8b9d0b579f715', 'admin', '2017-07-07 09:39:17', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('0974a956c9de43d0afc6ee7062631122', 'admin', '2017-08-12 10:47:41', '修改菜单酒店信息');
INSERT INTO `sys_fhlog` VALUES ('09abd8caf7fb408fbd65dca297cf201f', '999', '2017-12-20 18:29:26', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('09c1e8651c89445087c646b0c19eb278', 'admin', '2017-07-17 10:40:16', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('09c9d16be91e4807a8c4b8069ec6df42', 'admin', '2017-12-04 17:51:26', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('09de8514acd5448cbc66aecc85a94c3b', 'admin', '2017-12-02 11:02:10', '修改cha_qx权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('09ea1d979a17437386e7eb1064c5ab98', 'admin', '2017-08-14 13:44:27', '修改角色菜单权限，角色ID为:1');
INSERT INTO `sys_fhlog` VALUES ('09f151540b6e4944afb0002b1279252b', 'admin', '2017-12-11 14:12:05', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('0a4ce45b0da54fb8bb8ea5aa295b3e41', 'admin', '2017-12-19 18:08:58', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('0a677e55306e427e9e199949e50f73b6', 'luopeng', '2017-07-12 18:19:35', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('0aa4a530c5b440dea0faabff09f3e821', 'admin', '2017-07-17 10:39:55', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('0aadb7df27c343c2a6d9b007b52d6ae9', 'admin', '2017-12-01 11:41:59', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('0abae22b839b4f848a49cfa4a84cee34', 'luopeng', '2017-07-12 10:22:09', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('0ac20465d2fc45eda2b54f6ac47e2681', 'admin', '2017-08-15 10:18:28', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('0ad0551ad98a4ed585ef08e049a24da9', 'admin', '2017-12-19 09:44:15', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('0b06b973ec184195ad7d37a5cf8bca1b', 'admin', '2017-12-20 18:51:34', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('0b18b57aa39e4d98ad32bb5ed9cee409', 'csp', '2017-08-17 18:14:35', '订单确认预定{tm=1502964875265, ORDER_ID=20170816000001, ORDER_STATUS=2}');
INSERT INTO `sys_fhlog` VALUES ('0b28faceb819483cb3657a63363386a3', 'admin', '2017-08-15 18:19:47', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('0bdf334bd14d4687b9ba04482b7447e0', 'luopeng', '2017-07-12 10:06:41', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('0be545d4706e45d99545e5e47a75943c', 'admin', '2017-12-20 18:25:51', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('0c07872ee3d345d79698783dce3d5ccb', 'luopeng', '2017-08-15 15:09:47', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('0c3e134ff2724e48a33b4d0f13ed4bf9', 'admin', '2017-12-02 11:02:05', '修改edit_qx权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('0cb27733242f470f966c3306068582f7', 'yz123456', '2018-01-02 13:19:30', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('0cc18f74643c4a37b3c15e66c80ffa6d', 'admin', '2017-06-06 16:18:08', '退出');
INSERT INTO `sys_fhlog` VALUES ('0d0a2cbe55694eb281b703a8f809f88f', 'admin', '2017-12-02 10:23:05', '修改cha_qx权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('0d3b5f2c651641cea0e2def067402159', 'luopeng', '2017-08-15 10:30:30', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('0dc2b6c6bfe549589545fea84fa79d72', 'luopeng', '2017-07-12 09:10:01', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('0de452d630d94990b6f642f8e6d6a19b', 'admin', '2017-12-19 14:06:11', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('0e2c48817bab4ac4acf1e222786fe015', 'admin', '2017-12-04 14:51:53', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('0e42b094d4ee4897be88201c778fc000', 'yz123456', '2017-12-19 10:39:51', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('0e5afbf19c5e4c4d84330dd84b8b6f55', 'admin', '2017-12-19 11:02:55', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('0e7fbc76a7d243a5a7048f2760c7bfaf', 'luopeng', '2017-07-12 16:48:14', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('0e83a9df23b347409200c5f25954d694', 'admin', '2017-12-18 11:36:31', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('0e85618e89c045a68820168258734fdd', 'yz0012', '2017-12-20 11:56:30', '新注册');
INSERT INTO `sys_fhlog` VALUES ('0e9019f2f6a64688860cc828800b7d2d', 'luopeng', '2017-08-12 09:25:31', '退出');
INSERT INTO `sys_fhlog` VALUES ('0ee19470616c406ba60446a71c087a3c', 'admin', '2017-12-04 17:38:32', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('0f0f30deed2c4a2292eca35effff275d', 'admin', '2017-07-29 11:38:27', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('0f432a9f95914ce29e0310bb8e90efbf', 'admin', '2017-07-10 15:10:49', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('0f532c191cdd43949d83b4037b0e1eaf', 'admin', '2017-12-05 14:48:57', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('0f70fcf9df68450e97434056a9938e08', 'luopeng', '2017-08-14 18:08:51', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('0f776c16ff804fc4916212568a1dcea5', 'admin', '2017-07-17 10:40:17', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('0f80f7bf79704042b268c5cef0fdc108', 'admin', '2017-08-15 13:53:15', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('0fd458b2dbdc467ba27ecb2af02036f0', 'lisi', '2017-07-10 09:07:22', '退出');
INSERT INTO `sys_fhlog` VALUES ('0ffba76bffa644c780ebc0ce003aa187', 'admin', '2017-12-20 18:27:35', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('100bea34a2e2420fbd3bed966639670f', 'csp', '2017-08-14 14:39:00', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('1026c51e9feb4126a177f75a9e92e41f', 'luopeng', '2017-07-12 13:42:05', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('103f5365101e4d77aae8864a591625ae', 'admin', '2017-12-01 16:26:39', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('1052b471118341bea4fd21221680e620', 'admin', '2017-12-19 11:32:15', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('1095723cdf5d4a1f8694906a67565abc', 'admin', '2017-07-10 15:04:50', '修改del_qx权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('10a3c9b019984cd490739a54a275a9ec', 'yz123456', '2017-12-21 09:35:53', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('10b4b109e81741a2819f7ae19a4545f1', 'csp', '2017-08-14 14:23:09', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('10c3b091b6e94b649ee3aafd35bff804', 'admin', '2017-12-18 13:54:08', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('10e07a9141f547d3af5152a03c7bb782', 'admin', '2017-08-12 10:47:57', '修改角色菜单权限，角色ID为:1');
INSERT INTO `sys_fhlog` VALUES ('10efbc9678a545119bda033743464122', 'lisi', '2017-07-10 09:11:26', '修改系统用户：lisi');
INSERT INTO `sys_fhlog` VALUES ('1127b22ad95c4fa595da19e90f927985', 'admin', '2017-07-17 10:41:16', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('1134e8071ef04c108073e2548cf8dbe4', 'admin', '2017-12-01 19:01:09', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('113a6e68a61f4b02ae987e8a25147633', 'admin', '2017-07-17 10:40:17', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('113ee75b547d4a9cb659bc5c9171266d', 'admin', '2017-12-15 16:59:53', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('11641625a4824de9ad14aa160b50b9c2', 'csp', '2017-08-16 14:08:17', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('117cf3d3171440678ae168c8ae3155cc', 'admin', '2017-07-05 14:56:42', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('118b8f5e367c42afb47f9aa989701f75', 'admin', '2017-08-15 09:58:50', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('11c0a1be55a442b5bcb97bf7fde32123', 'admin', '2017-12-20 11:51:57', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('11f04a4eddc94483bc168bfea5ec7c20', 'admin', '2017-07-17 10:39:53', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('1213af2862a841c492e48b70ce55a95d', 'admin', '2017-12-02 11:37:49', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('1214ece32db847a7b589c4a2927a3f14', 'admin', '2017-12-19 15:10:52', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('12297602edb34e4e88bdfb1fa2f2210a', 'admin', '2017-12-04 18:06:49', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('1261856d234e406eb63f8978852a50fd', 'san', '2016-06-06 03:09:11', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('128d7bc1edf34b2dbb7a61fd58194964', 'w5', '2017-07-12 09:19:55', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('12dc3965c4824b4c88554755c21d6188', 'admin', '2017-12-04 15:12:13', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('1312e9ca36604faab28642400c6b3e8a', 'admin', '2017-06-29 14:37:00', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('13373353502c48bcbef3861db2f0363a', 'admin', '2017-11-30 19:55:34', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('13c28738e96d423ca51341ba86f7786d', 'admin', '2017-12-20 14:18:46', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('13c85d9af4514b8585ce8052548b429a', 'luopeng', '2017-07-11 16:49:24', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('13d8fd4fd1424365908399bba3ad3070', 'san', '2017-07-05 17:30:15', '退出');
INSERT INTO `sys_fhlog` VALUES ('148a2d795c734b03967432e5ad7f973f', 'admin', '2017-11-29 11:27:44', '修改菜单理发店管理');
INSERT INTO `sys_fhlog` VALUES ('1498f8bb568e4dc9837979da0ecfca2d', 'admin', '2017-12-18 11:47:11', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('14c75562542147de98146adcc3e596f6', 'admin', '2017-12-04 17:44:31', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('15261c674b4d44c48398669bc956fd94', 'admin', '2017-08-15 11:46:23', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('1560168259c043a4a520fbf9669d7bb4', 'admin', '2017-12-02 13:44:44', '修改del_qx权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('15e7eeb2353e4586bce267ea1b68b744', 'admin', '2017-07-05 16:28:16', '退出');
INSERT INTO `sys_fhlog` VALUES ('15f2300550034f9eaedcd715e5f2cc9b', 'admin', '2017-07-06 13:53:28', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('1609114619294bea82d88821456a4e81', 'admin', '2017-12-19 15:33:58', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('1614cde2df4049e5805fcc8c599656cc', 'admin', '2017-12-20 18:34:10', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('161e372aef5641fdb7a45957f5e816eb', 'luopeng', '2017-07-12 11:39:15', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('1650a095381e43a9929de2da6fe6a358', 'admin', '2017-07-17 10:39:55', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('1653c01da70f4411b2c5e18aa7ec9dae', 'admin', '2017-07-17 10:40:15', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('167dbc8147d74940a3597107b24725a1', 'admin', '2017-07-07 09:18:13', '修改系统用户：w5');
INSERT INTO `sys_fhlog` VALUES ('16a01e34c8414e9382ae50c40a4147aa', 'admin', '2017-08-15 11:33:32', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('16ee1d01603f4f989b5a02741a3f2996', 'admin', '2017-07-10 17:58:51', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('172768e6ed1a4ab5bec66eb8ac80bf8c', 'admin', '2017-12-04 10:06:33', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('1753273357794ab2b4494dbf8c6a3805', 'admin', '2017-12-01 09:22:25', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('175894256c70471c83c203fd9b352fea', 'luopeng', '2017-07-11 10:50:29', '退出');
INSERT INTO `sys_fhlog` VALUES ('17858e8b0bfa4023ade22e3cdc6ab3b4', 'admin', '2017-12-02 16:05:39', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('178c8919ba884d90a96ee8f74e06bc13', 'admin', '2017-11-29 11:40:16', '修改角色菜单权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('17a4ce0875274fc59c2aca11ea03eac1', 'admin', '2017-07-17 10:40:15', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('18527f0b6b564de4bb1f5acbb26a9074', 'admin', '2017-11-30 17:38:33', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('18713a52c1234a6c8a209300bc206b3d', 'admin', '2017-12-19 11:50:23', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('1874b124d24b4e789f369fc154cd5b69', 'luopeng', '2017-07-12 11:23:23', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('18aa3a7a08674d80a9516fd6f2084c42', 'lisi', '2017-07-11 09:23:00', '修改系统用户：lisi');
INSERT INTO `sys_fhlog` VALUES ('18d1542f8be74e3caf94715ae145ecb5', 'admin', '2017-07-05 15:28:40', '退出');
INSERT INTO `sys_fhlog` VALUES ('18e237723a234d4dad0e6e716facc164', 'admin', '2017-07-17 10:39:36', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('18e96ea4dee94039aaeb7835d7ab97ff', 'admin', '2017-11-29 16:53:24', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('190a2fd6ccfa40a499aa87c0e8a1d100', 'admin', '2017-11-29 16:52:54', '退出');
INSERT INTO `sys_fhlog` VALUES ('1912363f516843968f2a3ce4887e2dca', 'admin', '2017-12-04 17:39:31', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('193b5e57437741548a84c1039697fb84', 'admin', '2017-06-29 14:35:52', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('1964fac768244b00b0abc8c96dc6741c', 'admin', '2017-07-07 11:35:10', '退出');
INSERT INTO `sys_fhlog` VALUES ('196b0d2c8f11494aa18ffd382f054da5', 'admin', '2017-12-20 11:44:11', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('198a736b5c584a16bcba036f0d21b124', 'admin', '2017-08-12 10:36:11', '新增菜单酒店信息');
INSERT INTO `sys_fhlog` VALUES ('19a3fd58a1624572a21afd8abdca8bfd', 'admin', '2017-07-17 10:39:37', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('1a4aafb8dd80477b9574bcf3030b7ab7', 'admin', '2017-12-14 15:10:19', '修改菜单充值记录');
INSERT INTO `sys_fhlog` VALUES ('1a93918a07614871b04b1bc2379e430a', 'admin', '2017-12-07 17:27:30', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('1afef1ac1a1742f3997556cebc4e192f', 'csp', '2017-08-17 13:54:02', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('1b29f5b52a284d388350822c5a951bff', 'admin', '2017-12-01 11:05:05', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('1b39435a28bd41c4afdfbd4238091754', 'csp', '2017-08-14 14:58:51', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('1b88946679fe40d9bd46da75801c5997', 'admin', '2017-11-29 15:53:58', '删除菜单ID185');
INSERT INTO `sys_fhlog` VALUES ('1b90791fd4534656960b29d1f1962e88', 'admin', '2017-12-01 10:33:11', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('1ba00cf1af854d2aabf282f88069a850', 'admin', '2017-08-12 10:48:50', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('1bd210e946a84c0e9a8a41f1e6045249', 'admin', '2017-12-19 17:00:05', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('1bd622f7213e465788f045d4fdb3f329', 'admin', '2017-11-29 15:42:16', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('1be465e29e24495dbca06f7dcf449879', 'admin', '2017-12-01 11:38:25', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('1bf7ec540abc4b09b5b7e373105846d9', 'admin', '2017-08-11 14:19:13', '删除菜单ID46');
INSERT INTO `sys_fhlog` VALUES ('1cf00d200b8841878ff270a91f82fac6', 'csp', '2017-08-17 18:34:26', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('1d1e54e8e1c34cbcbe78f800cd72130e', 'admin', '2017-12-21 09:48:33', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('1d58257159fa46f68acd1fdba873a83b', 'admin', '2017-12-01 11:33:51', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('1d6078e89ed648998e55599bc630abda', 'admin', '2017-08-14 18:02:48', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('1d8599cf80b543a09699705806b4b162', 'admin', '2017-11-29 15:23:59', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('1d9f4f8954d849eca357b209b79eb474', 'admin', '2017-12-18 14:10:21', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('1dd7cfabc63540a2a449ca396fcdb290', 'admin', '2017-07-17 10:39:36', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('1de059dca88b44d4b4550a5e52fd13b3', 'admin', '2017-07-05 15:27:06', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('1df8c490785e439681d260854fb574e0', 'admin', '2017-07-12 17:07:15', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('1e13c9e28d8649c9b6746487235b1e64', 'admin', '2017-12-20 10:12:41', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('1e14b09d59204bac957f0b3387bf885a', 'admin', '2017-11-29 16:41:05', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('1e542f07596a46bd98af317636f362ba', 'admin', '2017-12-02 10:20:57', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('1e5ca56676694455b5092ebe9b95ff46', 'csp', '2017-08-17 10:49:03', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('1e95964ec6534833b4fb1e7c7823ef17', 'w5', '2017-07-12 10:06:31', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('1ee18736dd424529aa504df13e9bf308', 'admin', '2017-07-10 09:46:16', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('1f1ae258e1ae49ff8a40ff876b4ab889', 'san', '2017-07-07 09:37:16', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('1f1d4ff4f6ed47518fcc9e17f1236fbc', 'admin', '2017-12-02 14:45:48', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('1f30e6ad5bb04e5484f18bdcd6dacdc4', 'admin', '2017-07-06 15:47:13', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('1f66f4de3f6a4cb99af29168a9daa76e', 'admin', '2017-11-30 17:03:32', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('1f69044d60ba4449b1b59262c1a17728', 'yz123456', '2017-12-19 10:39:53', '退出');
INSERT INTO `sys_fhlog` VALUES ('1f86eb758a804bdfa7ead9e6501a039b', 'admin', '2017-12-11 10:11:34', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('1fb4f839aabb40f5b4d4f486a4cd87c4', 'admin', '2017-07-10 09:10:50', '退出');
INSERT INTO `sys_fhlog` VALUES ('2096fd593d1b4617a63df66f6718c7a9', 'admin', '2017-07-17 10:39:55', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('20997a4f73cf4ca59efdbfc9400ccaf3', 'admin', '2017-12-20 18:19:13', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('20fa5cd562044017a884f7540500b5a3', 'admin', '2017-12-02 11:07:23', '修改角色菜单权限，角色ID为:1');
INSERT INTO `sys_fhlog` VALUES ('20fb672862f84b3c812b8c4f4f56150c', 'admin', '2017-07-19 17:48:36', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('21bb855ad78e4cfda5adfe2c854bb18c', 'luopeng', '2017-08-14 13:43:39', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('21ca244656da4da9b88c809d73d9b263', 'admin', '2017-07-17 10:40:15', '新增菜单永久图文素材');
INSERT INTO `sys_fhlog` VALUES ('21db4ee6892e4674977dae72e225db79', 'yz123456', '2018-01-08 19:53:49', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('21dead000d3c45b88170ea773317972d', 'admin', '2017-12-20 14:04:31', '修改edit_qx权限，角色ID为:3');
INSERT INTO `sys_fhlog` VALUES ('220b6b0b9052430185dad7b1cf3952fa', 'admin', '2017-07-05 15:42:38', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('221035f5b6ab4f6fb478d7dd428a7fc9', 'csp', '2017-08-15 15:13:34', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('22371434c90a4efaa3f20148a6ba8285', 'lisi', '2017-07-10 09:11:01', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('224341593a744fe69eec2820665024fa', 'admin', '2017-12-02 10:21:22', '修改菜单客户管理');
INSERT INTO `sys_fhlog` VALUES ('226a4df5a4bb42388892d3643c556976', 'luopeng', '2017-07-12 15:14:56', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('228153f5626e455391ff7e12f378eee7', 'admin', '2017-07-05 16:28:36', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('22e21e780e4b4114a11d4dd34ef3cb0d', 'admin', '2017-07-17 10:39:54', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('22f550f5042940129ad5fa609cfe4665', 'admin', '2017-07-17 10:30:35', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('2304582ceed04a3f8c8746faa70dd9bb', 'admin', '2017-08-16 13:48:35', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('231160e234e8423ca5d84d90f23ba0fa', 'lisi', '2017-06-06 16:10:11', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('23217f729be842fd96d5aa871c6c5769', 'admin', '2017-12-19 13:09:37', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('2329a61e73fe43cba4b5c14661a51001', 'admin', '2017-07-17 10:40:17', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('232d6685a8ad4b37b2fce361744f09ab', 'csp', '2017-08-17 11:48:10', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('23cbf0b1c6ac4b7489c04d355e33b9f9', 'admin', '2017-11-29 13:55:36', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('244c7a4341d042fa8a7ca69646ea42f1', 'admin', '2017-12-20 17:06:45', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('2460004fda0d4e8aad9810d9dc8a54cf', 'csp', '2017-08-17 10:46:04', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('247db968e3ab440981ff01bcc322d8c0', 'admin', '2017-12-19 13:11:20', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('24b675a417244731913cb87f64c178cc', 'luopeng', '2017-08-15 15:09:47', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('24cf17cbcdbf48b39b323517f7cc4fc1', 'admin', '2017-11-29 10:39:03', '修改角色菜单权限，角色ID为:1');
INSERT INTO `sys_fhlog` VALUES ('25002df4febb4d60a7f9a0d4e636fdf7', 'admin', '2017-07-10 18:03:29', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('250b919738334366bf6021a03b98b4c3', 'admin', '2017-12-15 16:29:27', '修改角色菜单权限，角色ID为:3');
INSERT INTO `sys_fhlog` VALUES ('2514bab2adc941d887a7eab8565c08e0', 'luopeng', '2017-07-10 09:07:49', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('25309e7010014877b6fca974703623f9', 'yz', '2018-04-10 14:14:42', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('253813156da24208b1abb2a1457c9553', 'admin', '2017-12-20 11:13:09', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('2589ab14716c472e8a61218bf8e18af7', 'luopeng', '2017-08-16 10:49:16', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('25bbf0911b2f47178bdc28b69270f788', 'yz123456', '2018-04-10 08:48:48', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('25bdcc55c28a429582ebe70b8db89b80', 'admin', '2017-12-05 10:42:52', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('25c2a73403504101b50acfad4c9b36cb', 'luopeng', '2017-07-12 11:36:28', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('25e0e57059b344dc9758d7a02369f9cc', 'w5', '2017-07-12 09:10:15', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('260ea01357f84f44ad108cf7cf70f144', 'luopeng', '2017-07-12 15:16:14', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('263baf98694a43cdb9b9ad7970398f3b', 'admin', '2017-07-17 10:39:34', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('2643b0cffb3e47e0ba9b91e0026fe1b7', 'admin', '2017-12-15 15:55:55', '修改cha_qx权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('264f8b81ec6540cd9c9a84349fe12c7e', 'admin', '2017-12-19 13:59:20', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('2668b94234c34b3fb2ae87f3966d5f9f', 'admin', '2017-08-15 10:45:40', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('267cae6cbf6742e89ccff1d1685d86c4', 'admin', '2017-12-15 16:30:03', '修改edit_qx权限，角色ID为:3');
INSERT INTO `sys_fhlog` VALUES ('26a65e80d675434e80477bd59f20be3e', 'csp', '2017-08-15 15:23:56', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('26acd0b7f2de4075ae6ced01dcece557', 'admin', '2017-06-14 09:56:17', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('26c1e2ec12db451c908b27f9abbb830c', 'admin', '2017-12-18 14:47:46', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('26d9ba72a1264e48a2d05a8c57fc6648', 'admin', '2017-12-20 15:12:30', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('26eafca00e1d4c80bd86ea92b56d9194', 'admin', '2017-12-20 14:40:06', '删除系统用户：{tm=1513752006028, USER_ID=ec19632f208f415cb9a2f20986bb09b4}');
INSERT INTO `sys_fhlog` VALUES ('27219058fff14857a99b4c9c67444864', 'admin', '2017-07-06 10:21:40', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('27512de1201641ca9b0135421b3c6364', 'admin', '2017-07-05 15:22:58', '退出');
INSERT INTO `sys_fhlog` VALUES ('2787883aead74cf3b80a5d8dca1018be', 'csp', '2017-08-14 13:55:14', '退出');
INSERT INTO `sys_fhlog` VALUES ('2795bd3022224907b60f0dd54629a5c8', 'admin', '2017-12-11 13:58:40', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('2795c931a64e4dc7969b9ce9a06c022b', 'admin', '2018-01-02 13:28:21', '退出');
INSERT INTO `sys_fhlog` VALUES ('27e2634bfafd4fc39b146ce098ef2134', 'admin', '2017-12-19 13:41:53', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('27ec494af43f4216a0468265c3af918e', 'admin', '2017-12-19 16:42:51', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('2817b4bdc753450c99af4dd5f708940a', 'admin', '2017-07-24 14:49:15', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('28195ba1f7d8472cb9a37f2326aba7b9', 'admin', '2017-12-11 10:45:02', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('289a9b5aeaff439b803a73c9947cee08', 'admin', '2017-11-29 13:55:13', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('28ccf18d5c7840e790b4a2099d4be48e', 'admin', '2017-11-29 10:36:50', '修改菜单理发店管理');
INSERT INTO `sys_fhlog` VALUES ('28dda9205a664ff6848aa83353d267a8', 'admin', '2017-07-07 09:05:32', '修改edit_qx权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('28e0fc68ca314888aec23120358738eb', 'admin', '2017-12-01 10:51:55', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('28e9acbc28c34fa3b368be4a00024be9', 'admin', '2017-12-02 14:15:07', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('28eac80b27994a7c8ff9ea774c46ec93', 'admin', '2017-07-07 11:36:37', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('2925c5653a214510922ddb55edea4e02', 'admin', '2017-11-29 10:35:26', '新增菜单理发店管理');
INSERT INTO `sys_fhlog` VALUES ('292c9e3b371349ac8a0d2c5d4937f083', 'luopeng', '2017-08-15 15:38:55', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('295677eec891429a94f474e8a64024da', 'admin', '2017-07-17 10:39:53', '新增菜单永久素材');
INSERT INTO `sys_fhlog` VALUES ('2957e927ddef484aa480a077446980b0', 'admin', '2017-11-29 16:46:26', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('295ce69cb8144e88936d65bf7d50ff7b', 'admin', '2017-12-01 11:27:23', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('2966f66ec28b4046a11861b3e9c6b28e', 'admin', '2017-11-28 17:09:37', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('296718a998e44adb9970d81f100d2973', 'w5', '2017-07-06 09:46:53', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('2969e20e9961497d880389d619d0cb8d', 'admin', '2017-07-11 11:52:09', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('2970b056b8744d84a94db9a8d13f694a', 'admin', '2017-11-30 09:39:14', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('297996271ca540fca22e57d4540aa4e2', 'luopeng', '2017-08-15 15:09:48', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('297b5e82f19b494793058c266f445be1', 'admin', '2017-12-15 16:27:59', '修改del_qx权限，角色ID为:3');
INSERT INTO `sys_fhlog` VALUES ('29af427539d9413a90aa7d241e249b19', 'admin', '2017-12-02 10:28:49', '新增菜单技能管理');
INSERT INTO `sys_fhlog` VALUES ('29e53d789f134c8ca2848b23ff68cfff', 'admin', '2017-12-20 15:05:45', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('2a07a652571541cea44db84164b959fb', 'luopeng', '2017-07-12 15:55:01', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('2a0d982f34f247fb92501c0ecf925f16', 'admin', '2017-12-04 13:47:19', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('2a22fe69714c4356ab26fc2db654b757', 'luopeng', '2017-07-12 15:22:12', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('2a480829891241818ebef70b9a11a5f4', 'yz123456', '2017-12-19 10:31:36', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('2a4ae77a235b45afbcb07a7d0f091dff', 'admin', '2017-07-17 10:39:54', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('2aa96c47510144d182c94485a06d63ec', 'yz123456', '2017-12-13 09:51:16', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('2add7bf8bb9549eb9daea96c98b88d65', 'luopeng', '2017-08-15 15:09:46', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('2b0bd433f45548ed93205e12d6ddb5ea', 'admin', '2017-07-17 10:39:55', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('2b19173aa2d34fa883577269b1c2c7ef', 'admin', '2017-12-04 15:00:55', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('2b8b51df9d4f4fa69f2cb94c6564077b', 'admin', '2017-12-15 15:51:49', '修改角色菜单权限，角色ID为:1');
INSERT INTO `sys_fhlog` VALUES ('2bb794cc7d17483a80278ef2b1f91504', 'admin', '2017-12-20 18:29:38', '退出');
INSERT INTO `sys_fhlog` VALUES ('2bfc28bc1f264fdebff48809e44aee06', 'admin', '2017-07-06 09:39:11', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('2c44480f27964164a88b77c47a56c9a4', 'w5', '2017-07-17 09:32:51', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('2c4ee6b4e47d471e91df4fefe94b954b', 'luopeng', '2017-07-11 17:06:37', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('2c5201cccc7e4bfda39eb8f38e39c306', 'yz123456', '2018-01-08 10:47:32', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('2c9743ec6d094747aee3bbd15bf6be9b', 'admin', '2017-08-11 14:20:44', '新增系统用户：csp');
INSERT INTO `sys_fhlog` VALUES ('2ccb18a3626f4dc9a41e819d35dca82b', 'admin', '2017-12-20 14:24:17', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('2cdcc550e50f4a61a1413432cab1a2c4', 'luopeng', '2017-07-12 17:38:57', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('2d2f3d34868d4f6c80ce621c2b96194a', 'yz123456', '2017-12-22 18:28:50', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('2d31db2c9955452b99b37273258705c8', 'yz0012', '2017-12-20 11:57:47', '退出');
INSERT INTO `sys_fhlog` VALUES ('2d56c5d0577e4dbaabf829b6ddab1b0e', 'admin', '2017-12-02 13:46:00', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('2d7263f7137d4ce29585c4a935a8aafb', 'admin', '2017-12-20 14:40:33', '删除系统用户：{tm=1513752033450, USER_ID=e4a6c22ca4244d18ab969367677f5d5a}');
INSERT INTO `sys_fhlog` VALUES ('2d88c6421364466fb2fec4abba16a737', 'admin', '2017-11-30 20:19:25', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('2dac8425e1a74bfeaed0d18445902fee', 'admin', '2017-07-04 15:30:47', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('2db58f0124fe46a290ab6a15c72c6424', 'admin', '2017-07-07 17:53:54', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('2e0f7454ef07415bbbca660e17200498', 'admin', '2017-12-19 09:33:09', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('2e283bd244a5472fba223793580590e7', 'yz123456', '2018-01-12 17:43:15', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('2e77b0b3c0954f6794b3b2949b3d8d4c', 'admin', '2017-12-14 12:01:16', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('2eabc08a10644a5da05e9cb813ef9363', 'admin', '2017-12-04 14:35:09', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('2ebcdb767fb547ca961f573b76335ed9', 'luopeng', '2017-08-15 15:09:46', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('2ef661933ddd4b5cb50fb3d477a09acd', 'luopeng', '2017-07-12 17:14:45', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('2f0dc630a5d846579ad3e9ef70613e7a', 'admin', '2017-07-05 17:47:35', '退出');
INSERT INTO `sys_fhlog` VALUES ('2f0ffc5ef77d465b925c568b3db46a2f', 'admin', '2017-12-14 18:24:09', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('2fc10a49617347a69b96bf089975c116', 'admin', '2017-11-29 16:04:33', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('305f661b6c544879b65398014cb238f7', 'yz', '2018-04-10 14:14:42', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('30877717a5c144799c5ce2dc6c0dd35d', 'admin', '2017-12-01 11:41:59', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('308df26000614cb3bf44e1d50d4adc21', 'admin', '2017-08-11 14:19:07', '删除菜单ID47');
INSERT INTO `sys_fhlog` VALUES ('30b9c48a169c47168b805ec4ef8d8872', 'admin', '2017-12-19 18:35:39', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('30efb172cfac4d17be095778ed6a2c28', 'luopeng', '2017-07-12 17:05:31', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('30fe595fa7fb4e4f855e830bda038c50', 'admin', '2017-12-18 15:16:11', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('30feba0e2ff24cef9af4190a1a0e60a9', 'admin', '2017-12-15 16:34:27', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3138272ec72845a7950fc57a94ebcc6b', 'admin', '2017-12-01 18:39:39', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('316700e0e6d74d8da14d37e3bc818642', 'admin', '2017-07-17 10:41:17', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('31bfad0072a946bfbe43724cd82cfe1e', 'yz123456', '2018-04-10 14:14:29', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('31c72c71812c4ee6bd6bb73703289532', 'admin', '2017-12-20 14:04:00', '修改角色菜单权限，角色ID为:1');
INSERT INTO `sys_fhlog` VALUES ('31eb7e2a6aa34afc8bb7ba86dfafa5ae', 'yz123456', '2018-01-07 19:45:02', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('32249de871714f9cb2d853e5d36adc84', 'csp', '2017-08-16 09:21:56', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('32724063dd9d47588b10bde9ee09aa8f', 'admin', '2017-12-04 09:50:58', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('327338ebb5164d228f81fd8950a8fcb8', 'admin', '2017-12-19 17:51:30', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('32b27d7d38f243e986dae61ffe9bc592', 'admin', '2017-12-19 18:22:05', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('32df3e6205b74853a297f1204701f2ed', 'csp', '2017-08-14 14:21:53', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('32e464f7099145f4948101cfc4c9f681', 'w5', '2017-07-12 10:12:30', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('32ed75ddf8324cf6abc45c8cf40f075d', 'admin', '2017-11-30 15:04:23', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('32f7c9d1528445dc8bcc3216bdec00e8', 'admin', '2017-08-17 10:54:55', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('32f993e7680d4862ab83250eafeb3c8b', 'admin', '2017-12-12 17:28:33', '新增系统用户：yz123456');
INSERT INTO `sys_fhlog` VALUES ('32f9a121693e4165994df979c60cddec', 'admin', '2017-11-29 14:04:13', '退出');
INSERT INTO `sys_fhlog` VALUES ('332b41b3bd4045aeab57ceb489ba3686', 'yz123456', '2018-01-11 14:03:22', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('333b1e019ac641e8904baa2b857d3bcb', 'admin', '2017-08-12 13:52:11', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('338fc69d0e4248dfb7314363281b2826', 'admin', '2017-12-15 16:39:05', '退出');
INSERT INTO `sys_fhlog` VALUES ('33c6bfde3fd346079befe2418c0e09c3', 'admin', '2017-11-29 16:53:19', '退出');
INSERT INTO `sys_fhlog` VALUES ('3463e0b449284160ba5b6e073cdbda1d', 'admin', '2017-12-19 15:28:50', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3474e52bd8464317ae92e35933fbf43b', 'admin', '2017-11-29 19:01:59', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('347be125246c4d42949a35cc4826c846', 'admin', '2017-12-01 16:33:05', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('34a7a984b6cf46f7a42b05d86afe1236', 'yz123456', '2017-12-13 15:41:15', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('34c509b4dfa04452b5bd09fbf8a08277', 'admin', '2017-12-15 15:08:01', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('34c97c62865b48dd96ba70ccf78621fb', 'san', '2017-07-04 14:14:32', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('34cdab0459e94746bae3e9dd4833e045', 'luopeng', '2017-08-18 15:47:58', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('354b557d03074b709893365e86b467be', 'admin', '2017-11-30 19:09:55', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('355d3ad16c3141268d7b13b96d0f3780', 'admin', '2017-08-12 10:35:45', '新增菜单酒店分配');
INSERT INTO `sys_fhlog` VALUES ('3570a8164c3943c78ff70ad5cb66c83e', 'admin', '2017-07-12 17:10:23', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3586a7042bf943bc98b5b5a531441fb7', 'admin', '2017-08-15 10:05:56', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3590e344ecf04914a1b7be38bd97a679', 'admin', '2017-12-02 11:43:57', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('35b372be1d094e5eba29382975653cbb', 'csp', '2017-08-21 14:33:41', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('35c06d84d1e7460ca0949d3b18efd9d8', 'admin', '2017-08-11 14:18:39', '删除菜单ID35');
INSERT INTO `sys_fhlog` VALUES ('35cd3855130b42758619788c761375c6', 'admin', '2017-07-05 17:19:14', '退出');
INSERT INTO `sys_fhlog` VALUES ('36018578f7504849b0160b525791ca1c', 'admin', '2017-11-29 16:04:19', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('360ae9030c2247209546d232ca4aa7ad', 'admin', '2017-07-17 10:14:07', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('362de99c3fec401f870965cb140cccde', 'admin', '2017-11-30 14:02:30', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('36423a9138be4190b75223ec570cdcb6', 'admin', '2017-11-30 20:11:24', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('365236e5f74540b89710fb7633330e6e', 'admin', '2017-12-18 11:34:10', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('36b8c88fd59b4d039725b049f36cdee6', 'admin', '2017-12-21 09:34:57', '修改del_qx权限，角色ID为:de9de2f006e145a29d52dfadda295353');
INSERT INTO `sys_fhlog` VALUES ('36c29f3850a646d48590e74cf388e754', 'w5', '2017-07-12 11:42:30', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('36cf81e10a6b4a04a191208fbde29546', 'admin', '2017-12-02 10:29:36', '修改cha_qx权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('36dde9c7ce1f44c3a3417957a68c8aab', 'admin', '2017-12-20 14:55:23', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('36e851e2f9d8425d8792b8c8847bd1ae', 'admin', '2017-11-29 10:50:37', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('36f96979782c4f81a307554592eb872f', 'admin', '2017-08-12 13:54:33', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3700e332950449dbb5c1a68a55976cbc', 'admin', '2017-07-21 09:42:36', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3749d8ffe01548d195b654269e498778', 'luopeng', '2017-07-12 15:58:03', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3757b682ce684e2a998a483c7923cd93', 'admin', '2017-11-29 13:58:15', '退出');
INSERT INTO `sys_fhlog` VALUES ('3767d38cd420490b84b14dced8b01739', 'admin', '2017-12-02 09:57:19', '新增菜单用户管理');
INSERT INTO `sys_fhlog` VALUES ('3796c7ba40494f9daea994360d67d8ad', 'luopeng', '2017-08-15 15:09:46', '新增菜单酒店位置');
INSERT INTO `sys_fhlog` VALUES ('379da35dfc714f4da3c3fb4d4d14ab7f', 'admin', '2017-12-20 19:47:12', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('37a0cb6423e4414680309fdc378aa04c', 'yz123456', '2017-12-21 09:54:42', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('37a1b57a96fc4beaa836a8f9c35f0bb9', 'admin', '2017-07-28 09:49:43', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('37a697a7541d421d9b0613c59e2116c1', 'san', '2017-07-05 17:30:38', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('37cb79c5882f49728c532e5606338c4a', 'san', '2017-06-29 14:27:18', '退出');
INSERT INTO `sys_fhlog` VALUES ('37ee514556c540c688eb3a6112df2f08', 'admin', '2017-12-02 14:16:39', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('37f2e2125b2a44fc8efd3ebb97a67faf', 'admin', '2017-12-15 16:30:25', '修改add_qx权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d');
INSERT INTO `sys_fhlog` VALUES ('37f6f62aa10c480fba16e748a008be52', 'yz', '2018-04-10 14:14:42', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('37faaab38f614f3ca766f83b5cc07c19', 'admin', '2017-12-20 14:44:23', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('37fe9a5eee934aac917fe2f5936a2013', 'admin', '2017-11-29 10:22:31', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('38166060a6874aabaec7e1b40c1f08e9', 'admin', '2017-12-20 17:20:01', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('381e06d6c1614a38b7261f227d661ef4', 'luopeng', '2017-07-12 18:04:31', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('383a880f350445d1bd9f372af6be2b44', 'admin', '2017-12-01 19:12:04', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('385f9e45ddc4431088749d2270b01a5b', 'admin', '2017-08-14 13:44:01', '修改角色菜单权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('38697eeb75474d2a8a7a894289b0bd99', 'admin', '2017-12-19 13:53:38', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('387f1c955377458f8a625e89eadc965e', 'admin', '2017-12-01 11:34:50', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3880661d4050448bba6239cf904f4818', 'admin', '2017-12-02 11:29:13', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3880786ea8664d4286af8991b60d198f', 'admin', '2017-07-17 10:41:16', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('388f96ac36714eddbe89f56e32fd41cb', 'luopeng', '2017-08-14 18:22:51', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('38bf96fbcee64f4187ec76ec3681b78a', 'admin', '2017-07-04 14:53:25', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('38cd510c6268472497e54548f3c32019', 'admin', '2017-12-20 11:45:15', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('38decfde4b4146829e2a9851cd4ca74f', 'admin', '2017-07-13 14:30:20', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('38e3c9c62eae410eaab4ef4c2755191a', 'admin', '2017-12-11 11:03:00', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3938c7ff338846f89039bf81db430208', 'admin', '2017-07-27 17:22:48', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('39800fae48d34111a525462aa7633a77', 'lisi', '2017-07-06 09:33:01', '退出');
INSERT INTO `sys_fhlog` VALUES ('398f2bd467b94c83b24e6ed351dbeb1c', 'admin', '2017-12-21 09:35:19', '修改cha_qx权限，角色ID为:de9de2f006e145a29d52dfadda295353');
INSERT INTO `sys_fhlog` VALUES ('39abdc162e954b0dadd60e22c8d8434c', 'admin', '2017-08-14 13:45:30', '退出');
INSERT INTO `sys_fhlog` VALUES ('39d6de8bfe2d471fab2bab5d54170c42', 'yz123456', '2018-03-08 10:25:31', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('39fc9978a4dc4865880ce85af8468484', '999', '2017-12-20 18:28:54', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('3a026cdae77f47f1b224052c16ddcfde', 'admin', '2017-07-17 10:39:35', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('3a9e90bfb88046e3ab4ea97f0e77de18', 'luopeng', '2017-07-12 15:50:50', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3ac5092258494aaa9b9fd9bf5d76642f', 'luopeng', '2017-07-12 10:12:41', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3aede0d497ca49e18635e39468746d2d', 'admin', '2017-12-19 16:19:32', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3b29cdc273a344f7bd957e98810f5692', 'admin', '2017-07-17 10:40:16', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('3b2bd90a9b824f6885471503e93ba8c9', 'admin', '2017-12-04 11:34:21', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3b2ca85a35404885b278711a385c5ffc', 'admin', '2017-12-15 15:30:28', '新增菜单订单记录管理');
INSERT INTO `sys_fhlog` VALUES ('3b4416fd1dd94cdc96af5d33901ac658', 'yz123456', '2018-01-02 16:57:06', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3b5859d2082845efb8d4229f85d4bf26', 'admin', '2017-11-29 12:00:50', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3bac4a7bd5c045daba5639ca207b0c94', 'admin', '2017-12-19 11:35:06', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3baf298bad6b41c4a3b1e2fffd3e2d0a', 'admin', '2017-12-20 16:34:16', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3bb154b0ffaa48829c41e0aa071e8ab4', 'csp', '2017-08-14 13:55:05', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3bb8f5a237f54dfbb27fa9ea8b65edfb', 'admin', '2017-07-06 09:46:38', '修改系统用户：w5');
INSERT INTO `sys_fhlog` VALUES ('3bc3e0c54914497da7946721d6958d98', 'san', '2017-06-06 16:17:46', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3bc9a1f31660412487d1e741f43e5488', 'admin', '2017-07-17 10:39:37', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('3bd7815d7bdc44209dba2091fb832220', 'san', '2017-07-05 17:50:33', '退出');
INSERT INTO `sys_fhlog` VALUES ('3c022245ad9045f48ecf56cdbacae923', 'admin', '2017-11-30 13:47:35', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3c10eb43872b4c1aab9948a7e497d513', 'yz123456', '2018-03-08 10:24:37', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('3c10f0bdde7a4098bae2b2ca20cd82e6', 'yz123456', '2017-12-23 11:48:38', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3c3912dadc33424e9ca9c876209db127', 'admin', '2017-11-29 10:39:38', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3c3bb3399faf48919e7fcb7bf264c999', 'admin', '2017-07-10 15:20:48', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3c3fe26ffb51490caca0eab3e6b3c144', 'admin', '2017-08-14 13:45:28', '修改角色菜单权限，角色ID为:1');
INSERT INTO `sys_fhlog` VALUES ('3c4b97bd8c554a48bdf9d9bb33be3ed3', 'admin', '2017-06-06 16:02:23', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('3c639122cd494c2b9ae05e5ccdc8395c', 'csp', '2017-08-15 15:49:36', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3c7d31bf3e044fa0a65464b11b8c5cf9', 'csp', '2017-08-14 13:55:29', '退出');
INSERT INTO `sys_fhlog` VALUES ('3ca67a26955c46c687e6ded2c7f23f9f', 'luopeng', '2017-07-12 14:12:21', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3d1d0971992d4d0f9938b6e24d43a0c7', 'admin', '2017-12-02 14:11:06', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3d210d16db4c441eba36fc7e7deb9ea1', 'san', '2017-07-05 17:51:48', '退出');
INSERT INTO `sys_fhlog` VALUES ('3d454c1bbfdc4513bbbfc1a79cd9d4c8', 'admin', '2017-08-15 09:07:51', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3d539acffdaf4b01a552a8db8264c337', 'admin', '2017-11-29 15:23:45', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3da7d95257d64b8188731a081402a0f2', 'luopeng', '2017-07-12 11:14:13', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3e06ee50bc29471f90595f41e2eee75b', 'admin', '2017-12-05 11:08:29', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3e11b68680794e36b51aa090cbab96a1', 'admin', '2017-11-29 16:45:30', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3e18931c7b3144a3a0fca7e7ae7ceca9', 'admin', '2017-06-06 11:23:00', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3e37cb0991f34314824addf6727d41af', 'admin', '2017-07-17 10:39:35', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('3e507722072a43abac61a323d126dc2f', 'admin', '2017-07-07 09:16:53', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3e615739beb049fcbae37a3192e5edbb', 'luopeng', '2017-08-14 18:29:50', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3e6c4c7139d24b2aac01a77dc5b5db04', 'admin', '2017-12-04 15:35:40', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3e77b30b716d48ebadbac5a76ce5c03b', 'admin', '2017-12-02 09:52:46', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3e77b53ea52c4c919f2d33a322983161', 'luopeng', '2017-07-12 15:56:02', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3ea4d8de6afc4adbbc325a9bb2eeb1f1', 'admin', '2017-12-20 14:39:14', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3ec9ae6a951349f99154138e0acd1124', 'admin', '2017-12-19 15:10:14', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3ecc5ec3fc58402b99aeca88329db9df', 'admin', '2017-12-13 16:08:36', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3edb8f63706d4ea79511ed3502cfb66b', 'admin', '2017-12-04 14:17:02', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3edf176e23fc4ceaa53a8ff9fb562d00', 'admin', '2017-11-29 16:44:26', '新增菜单预约管理');
INSERT INTO `sys_fhlog` VALUES ('3ee67510059f4f7eaba7e4b9946fa401', 'admin', '2017-12-01 16:21:00', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3efa4a77390f4209a06e2e63533a6bd4', 'admin', '2017-07-05 15:27:51', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3f211ec882a143f6a219937d85bb7559', 'fanbing', '2017-07-07 09:40:27', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3f317d58f2c9442f91ccd4ea4a99f338', 'admin', '2017-12-18 11:50:51', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3fc62f0d58df471a9be9b408857a1096', 'admin', '2017-07-13 17:28:25', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3fd94713c9784e4c829f5a352251bc05', 'admin', '2017-07-06 13:59:19', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3fe86314d7304c02b3347f991b7b29dc', 'admin', '2017-12-18 15:02:15', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('3ff68ab369014cee9e9772c31e8931fa', 'admin', '2017-12-18 13:38:09', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('4007f9c6070c4c7784a1189644e53496', 'admin', '2017-08-15 14:27:17', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('4020cbbde8974241aa0a3bb95094a17a', 'admin', '2017-12-14 15:03:42', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('405d92d385c24a328dac651bd6414f64', 'luopeng', '2017-07-12 11:28:57', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('40f2b14f92f24d34acaec95bb6472c7d', 'admin', '2017-11-29 13:55:23', '退出');
INSERT INTO `sys_fhlog` VALUES ('412104963c05432c875c5dc6416cbcdf', 'admiin', '2018-01-02 13:22:37', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('414c6133c55b4fafb4046fb9e263802c', 'admin', '2017-08-14 15:20:32', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('417a4c1a76ae477786692c54e9c77b3d', 'admin', '2017-07-20 09:45:07', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('41861bcae10c4455b8b3637030db817f', 'admin', '2017-12-05 10:19:52', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('41af6a3f20674ddd954a9beed1bdb1cf', 'admin', '2017-12-15 16:40:28', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('422c8b2d7485445491efdcd64d9be544', 'admin', '2017-12-02 13:44:22', '修改菜单系统设置');
INSERT INTO `sys_fhlog` VALUES ('42ec13b99793490aa6cdbcfc8d4dea60', 'admin', '2017-07-10 15:38:46', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('4329d2cd08d64d86841d4154881fd4c9', 'lisi', '2017-07-05 16:33:02', '退出');
INSERT INTO `sys_fhlog` VALUES ('4333e30e41ac423cafa14719ecf83c57', 'yz123456', '2018-01-02 13:32:21', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('433be6613bf248d5b4f7cc69d5ca3bc6', 'admin', '2017-12-15 16:29:32', '修改角色菜单权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('435ae373faef46418c51bc2398a98f4f', 'admin', '2017-07-17 10:41:15', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('439209c87e8640b997bd4b3e2ed0e01e', 'yz123456', '2018-01-02 13:47:21', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('43ad98ce956e4d1389de8686ca7c8779', 'admin', '2017-07-14 17:20:51', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('43e7cb949a2146f0803ef08bfa7a3b50', 'admin', '2017-12-21 09:34:48', '修改del_qx权限，角色ID为:de9de2f006e145a29d52dfadda295353');
INSERT INTO `sys_fhlog` VALUES ('43fa4f19cc724be88053225fb7d28256', 'admin', '2017-12-13 15:53:27', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('4403546861bc40c4b794e54ebf832d94', 'admin', '2017-12-11 15:36:05', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('44368668355643939e1bb69becd63141', 'csp', '2017-08-15 18:01:40', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('447a027ac53f456aadac615790aa55fe', 'admin', '2017-11-29 10:07:27', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('447f44cc047b46a7b66dfaa92814b70c', 'admin', '2017-12-18 13:38:00', '退出');
INSERT INTO `sys_fhlog` VALUES ('44911ae8db06470093a2467a78e2937a', 'admin', '2017-07-17 10:39:55', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('44c4803e09e24a23b196db1ce6f19b48', 'admin', '2017-12-21 10:02:01', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('44c7cf32b6ae4176949dd92b12c0d028', 'admin', '2017-07-07 09:39:08', '退出');
INSERT INTO `sys_fhlog` VALUES ('44cfe5f5323c443c9b6ea1b1080369e8', 'admin', '2017-12-21 09:54:09', '修改add_qx权限，角色ID为:de9de2f006e145a29d52dfadda295353');
INSERT INTO `sys_fhlog` VALUES ('44d003a6717f4bf89cf0e1fa93fd72c6', 'admin', '2017-12-04 09:49:56', '新增菜单预约时间管理');
INSERT INTO `sys_fhlog` VALUES ('44e3df7bf862441daee6e98c46668400', 'admin', '2017-12-15 15:56:45', '退出');
INSERT INTO `sys_fhlog` VALUES ('44ee212cb64643188b54c206a629bd06', 'csp', '2017-08-14 14:22:06', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('44fe47a119e8404eb577ba59c559b17e', 'admin', '2017-12-15 15:56:36', '修改角色菜单权限，角色ID为:1');
INSERT INTO `sys_fhlog` VALUES ('450ff4ff9a644a2e8a24278b269c47c4', 'admin', '2017-07-07 10:18:27', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('45498c02d11a4523843ba9f0621e28d8', 'admin', '2017-12-19 10:18:25', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('454c60ffdeec4a6b9031ea0301b85846', 'admin', '2017-12-19 13:28:58', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('4565d4e4b59741da937024b94eb70d64', 'admin', '2017-11-30 20:14:34', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('4596cf64775b4ca7abe962ed60b32f3d', 'admin', '2017-12-21 09:59:04', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('45bf63de128b43e8874fedad14fad355', 'luopeng', '2017-08-14 17:46:44', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('45ddd498d4e34e1abe77c954d0b9765f', 'admin', '2017-12-04 18:00:00', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('45e484da85084180b0e061457e4d213b', 'admin', '2017-12-11 10:11:41', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('4619aee309af41ef8e9a64b89ad9274e', 'admin', '2017-12-15 15:55:43', '修改add_qx权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('4643f62a280546d79456964eca14945a', 'admin', '2017-12-02 13:52:45', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('464cb37e68a044d7895b552a304ca705', 'admin', '2017-12-02 13:34:36', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('465ff23f58164cfaa29717c2a78c4942', 'admin', '2017-12-02 09:37:56', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('466977ff1777427ba95252e900d76501', 'admin', '2017-07-17 10:40:16', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('466d89b333454666bf9e4af76f78002c', 'admin', '2017-07-17 10:40:17', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('46c66768b58b4c8abe415a2acbdeee52', 'admin', '2017-12-20 12:49:28', '修改角色菜单权限，角色ID为:3');
INSERT INTO `sys_fhlog` VALUES ('46c932e307c0406ebf827ab8590e4a14', 'luopeng', '2017-08-15 18:21:45', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('47154a6f4e144844b4bfdaa8c0c9ddc1', 'luopeng', '2017-08-15 15:09:46', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('472ce341a5494961a82a638a80b4ec61', 'admin', '2017-07-05 17:47:54', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('4746fef9f3714cb4bf2b37f7450ed76b', 'admin', '2017-12-20 18:13:08', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('477105c2a9804ccf921abd1efb369100', 'admin', '2017-11-29 13:57:13', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('47938bc97fda4cf196fc90b1264e012d', 'admin', '2017-12-04 10:45:29', '修改菜单预约时间管理');
INSERT INTO `sys_fhlog` VALUES ('47b4505efa6d4147a08a96b085d79fa6', 'csp', '2017-08-14 13:55:32', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('47e4c2c062a3412eba41b995d651dc56', 'admin', '2017-12-05 09:44:16', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('481afd154a204eceb5423feb078c0af8', 'admin', '2017-11-29 11:43:15', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('483721b162784b2ca257b837334a3db7', 'luopeng', '2017-07-11 17:31:46', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('483819950f71424eae74df128110fb7c', 'admin', '2017-12-04 11:56:18', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('4876fd5be80c4bffa0df8af60c7a8546', '999', '2017-12-20 18:30:00', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('4893386a77164e0783024ba57c118941', 'admin', '2017-12-15 16:28:09', '修改add_qx权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('4896ba9bf13d4c879acafcc667d7cd91', 'yz', '2018-04-10 14:18:38', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('489cc9470b084b659e7aafa991670414', 'admin', '2017-12-15 15:56:02', '修改角色菜单权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('48a86867738142ab9a5bc5a0e2aa705b', 'admin', '2017-12-21 09:37:35', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('48b8d6045b4f406d91d15dd5f74d9d7f', 'admin', '2017-07-17 10:41:16', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('49ccca42115145dfb6ec4debbfb899c1', 'csp', '2017-08-14 15:06:53', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('49dc3ceb191d4272afab75ed7ad60d62', 'luopeng', '2017-07-12 16:18:23', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('4a455194437f460d8cb5d1c185d078e1', 'luopeng', '2017-07-12 15:13:05', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('4a5be773e4304944b5708db8a9c92464', 'admin', '2017-12-19 09:22:45', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('4a6378a246d4493c9fedbb0c529813ff', 'admin', '2017-12-01 10:48:07', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('4ae931d533584d77812aaccf29225f26', 'admin', '2017-11-29 13:58:24', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('4aeb13166022438db3bbee32b73ba42e', 'admin', '2017-12-01 17:51:34', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('4b11c4783a95407294be2aae52bb0d1c', 'admin', '2017-12-20 10:34:24', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('4b50216c1dbf47a1afd1f29e33e5411e', 'admin', '2017-08-16 11:43:25', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('4b54beec7a224688991fd95004f2e9f4', 'yz123456', '2017-12-13 15:49:14', '退出');
INSERT INTO `sys_fhlog` VALUES ('4b67170fce5c4c4fa8ff70e315d4671a', 'admin', '2017-07-17 10:40:15', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('4b8b7806b2964714a145b438ff429635', 'yz123456', '2017-12-22 16:25:58', '退出');
INSERT INTO `sys_fhlog` VALUES ('4bb156e949ef4eb9b27e281b9c1b226c', 'admin', '2017-07-17 10:41:15', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('4bbe5a5a2adc44398a6f09b5ff2ffa32', 'admin', '2017-07-17 10:41:16', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('4bd71188b127438487a161912f289df7', 'yz123456', '2017-12-21 09:41:44', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('4c0da30d97bd41a3ae8a873bfba7408f', 'admin', '2017-07-17 10:41:16', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('4c1d6584184a42b4b4d4d1cbe659873a', 'admin', '2017-12-02 13:46:53', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('4c2c76e2fa444c1caa588941ea21a792', 'luopeng', '2017-08-15 15:09:48', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('4c6a87d18a3245389ec9bd4f77cb4a95', 'admin', '2017-11-29 15:41:34', '退出');
INSERT INTO `sys_fhlog` VALUES ('4c9bf81ecca24cd4a1e66163e9b94e36', 'csp', '2017-08-16 15:06:26', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('4ccca0e0e6d243de82b97e68c2fd6e15', 'lisi', '2017-07-06 09:45:23', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('4cde8cfbb39649058f8e89b62419a006', 'admin', '2017-12-19 11:00:12', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('4d007560195b4898ac663e807de31c77', 'admin', '2017-11-29 11:38:37', '修改del_qx权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('4d0d3cac1c704115b5f5f3826d944aff', 'admin', '2017-12-02 09:20:19', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('4dea842d069e4c33b28a42f171c48fe8', 'admin', '2017-12-21 09:48:38', '退出');
INSERT INTO `sys_fhlog` VALUES ('4e11458e7f4c421da85b9dae76bb8f45', 'admin', '2017-11-30 11:51:53', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('4e2a6f0964f34db09267953276f283fd', 'admin', '2017-12-19 18:09:56', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('4e50fd6513904041a7ea0bcb02e0bced', 'admin', '2017-12-20 16:36:10', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('4e54b72525654d718851836abfcc9376', 'admin', '2017-12-01 16:12:52', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('4e65ae71410841979fe89f366838e3be', 'admin', '2017-08-14 17:28:57', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('4ed540118776472393b8a5281be40187', 'luopeng', '2017-07-12 10:09:49', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('4edd759f907d43d7adcf2b9876647a21', 'admin', '2017-12-18 16:12:17', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('4f06ad0390164810a91d24e5059ea41f', 'luopeng', '2017-07-12 11:24:09', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('4f10fcf3794347ccb22bb795ba5ff917', 'yz123456', '2018-04-10 14:18:49', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('4f6f8d3bf15c4f0ca9ff30a7731f2394', 'fanbing', '2017-07-10 11:44:49', '退出');
INSERT INTO `sys_fhlog` VALUES ('4f7db8f5671944a28ea525d8455f32a1', 'admin', '2017-12-02 11:16:22', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('4fc17da9ce364ec995245fef7253e08c', 'luopeng', '2017-07-12 11:18:09', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('4fca2945d58a404fb7d23a7260c1d949', 'admin', '2017-08-11 14:19:16', '删除菜单ID45');
INSERT INTO `sys_fhlog` VALUES ('4ff31998185a4eecb83649ba6f3ab2c6', 'yz123456', '2018-01-02 13:27:16', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('501d6fb875d4433ebb941cc17adcbe72', 'san', '2017-07-05 16:36:08', '退出');
INSERT INTO `sys_fhlog` VALUES ('5030e3b720c1489ca1313e7e75ec5e09', 'admin', '2017-12-01 15:45:52', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('503566c6373445328030ef6a66811f2e', 'admin', '2017-12-11 15:35:21', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('506fb98786454793a0ca7222f62ff1bc', 'admin', '2017-12-18 13:45:58', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('50846101f18f47eebe58a886bebb6b68', 'admin', '2017-11-29 10:45:46', '新增菜单在线预约');
INSERT INTO `sys_fhlog` VALUES ('5097c2ee86ce48f4bad66e9272bd549c', 'luopeng', '2017-07-10 09:08:00', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('50a721d04405448a9cf5d47ecafc9f30', 'yz123456', '2017-12-23 14:52:38', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('50dcf500dc6241e2b10aaf9ff39f0da9', 'csp', '2017-08-17 17:28:21', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('50f0c1d1bae247d2b11a631ed0ad7fdf', 'admin', '2017-07-06 09:33:12', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('510ee3c2720049358c8186980d5de2f0', 'admin', '2017-08-15 18:07:48', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('5116737833cc44568dd5a0f0d84df67b', 'admin', '2017-12-02 18:03:28', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('512df56b079047e9ae11abaf968ff7d0', 'admin', '2017-11-30 21:06:00', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('518b895855ad443cbdb0a48a94f2d9cd', 'admin', '2017-12-20 17:03:56', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('51a2e5efd9e545659ece44c34f701a5e', 'admin', '2017-12-02 11:05:55', '修改菜单系统设置');
INSERT INTO `sys_fhlog` VALUES ('520cd0725b4d486fb08f40eef7ea4fed', 'csp', '2017-08-17 16:44:07', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('52547e2be3e64a24a31bfe621d9694ca', 'admin', '2017-12-19 17:58:47', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('5290c55f42854207a3e4183ac3cf2110', 'admin', '2017-08-15 17:54:25', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('52baa3b972cb43bdb397b33544210a57', 'admin', '2017-06-29 14:36:39', '退出');
INSERT INTO `sys_fhlog` VALUES ('52c4db04679d487dba0bd75d8bd3437d', 'admin', '2017-12-14 12:01:07', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('52dd553e960249f1876acfb960ee41f7', 'admin', '2017-08-15 10:51:56', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('52fa6c04574945b3aac6d191c49eca18', 'admin', '2017-12-18 14:21:50', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('5322e95a106f41209bc4d8bfe6a19701', 'admin', '2017-11-29 11:32:03', '修改菜单酒店管理');
INSERT INTO `sys_fhlog` VALUES ('53d1fbd520b84943921aa1b9bf58856b', 'admin', '2017-07-05 15:26:58', '退出');
INSERT INTO `sys_fhlog` VALUES ('53e2a610687c453899a71c65e33a8332', 'csp', '2017-08-16 15:43:23', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('5414ad82f2ff4593b4b057edf308ba6d', 'yz123456', '2018-01-08 19:47:52', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('542b5ed1face4a0699e3e5f4b8e1150a', 'admin', '2017-07-10 11:45:35', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('543459afeb4d4a7282230e6ccba44651', 'admin', '2017-12-20 16:29:26', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('5445ec1f21ba46fd995d18f9ba6f0d99', 'admin', '2017-12-02 11:41:45', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('544e1e6074e6427dafd6931a86a49208', 'csp', '2017-08-17 11:14:51', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('545e7adbe81e4f5c9b290ef0859ab3de', 'csp', '2017-08-14 17:29:43', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('546e299b8e73447c9a5cbbce5e23433c', 'admin', '2017-07-05 16:32:16', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('5473c51828a64ac29a99180e4ec6885b', 'chenshipeng', '2017-07-04 14:52:45', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('549b7e7d13eb496eb6537dd2a8b31336', 'admin', '2017-08-15 15:04:42', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('54ca965874cb4e7abf699aa995b89be6', 'csp', '2017-08-17 11:02:32', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('54d23df2adc245ce8a919d56340cb953', 'admin', '2017-12-21 09:48:33', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('54e3c9d1e7bd4b9ca347c504a5fc6af7', 'admin', '2017-07-07 16:56:20', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('54eeb6eef7ff40d1992190bba1be2374', 'w5', '2017-07-17 09:41:11', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('54fd2555187c47e797aba1c25b17b281', 'admin', '2017-12-02 11:49:17', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('550fb1165aef4a839a3c394cfb8feff2', 'lisi', '2017-07-11 09:21:04', '修改系统用户：lisi');
INSERT INTO `sys_fhlog` VALUES ('55115b731f3c4de9a8ab5cd8d6cea3bc', 'admin', '2017-12-15 16:14:08', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('5522a8e350d743cabe26ee80dd660e8f', 'admin', '2017-12-19 10:07:26', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('552ca287b79f479aa9f995eec341e9a5', 'admin', '2017-12-01 10:55:41', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('553b13a448534e8299850b7f9d659db4', 'admin', '2017-11-29 11:40:42', '修改角色菜单权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('555b221c8aae40f988f2204c23224a09', 'luopeng', '2017-07-17 11:07:39', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('557a3910b94b49c3a6335106d4b856e7', 'admin', '2017-12-04 15:25:14', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('5597d9aca64144ab8dd8d16ac4de16a9', 'admin', '2017-08-14 09:16:32', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('559858d8f861408e884a7dd4c96ad599', 'admin', '2017-12-02 10:52:19', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('55a7989f8c9f4ea099e60537980d4c24', 'admin', '2017-07-17 10:41:15', '新增菜单用户管理');
INSERT INTO `sys_fhlog` VALUES ('55a8272a135a474f8924400907d158b7', 'admin', '2017-07-05 15:36:06', '修改系统用户：w5');
INSERT INTO `sys_fhlog` VALUES ('55dd7e9edc934a6c97a8a7ea1619087b', 'admin', '2017-08-12 10:48:15', '修改del_qx权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('55df9dbccd7f49ce869303816b607495', 'yz123456', '2017-12-12 17:34:43', '退出');
INSERT INTO `sys_fhlog` VALUES ('5614e65184f64f3bada4e3de6b775b88', 'admin', '2017-11-30 16:45:02', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('5615bc14ef9f477aa8379c7a7845040d', 'luopeng', '2017-07-11 18:05:10', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('5623ff1ae771401abaef7cee2ca51d80', 'luopeng', '2017-08-15 15:11:42', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('563a2300c6f54fd9940b13d728324efb', 'admin', '2017-11-30 17:41:52', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('56611800390f494e8dcc8148e6c8e264', 'admin', '2017-08-16 16:47:45', '新增系统用户：323');
INSERT INTO `sys_fhlog` VALUES ('56658e21a8f4406f91a58a167f928370', 'admin', '2017-12-01 17:55:47', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('56b3e3491e974d538edf59da3bff3cd4', 'admin', '2017-12-18 11:32:19', '退出');
INSERT INTO `sys_fhlog` VALUES ('56b438dc96884e4a86d356d0a05750a4', 'admin', '2017-12-02 13:42:15', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('56f7718228f24b8d876260fdc9f38b31', 'admin', '2017-08-15 17:54:10', '修改角色菜单权限，角色ID为:1');
INSERT INTO `sys_fhlog` VALUES ('56ffe1568ff840d0b3fdb8808ecbd237', 'yz123456', '2017-12-23 17:58:19', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('571df63fabb84af8bcd6c787054641e2', 'admin', '2017-07-10 15:04:36', '修改角色菜单权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('5728dc5a592e4e29abc181d849a2c17f', 'admin', '2017-12-15 16:30:14', '修改del_qx权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('578f5eb4481d4ec49a624c1ab392d4e3', 'admin', '2017-06-29 14:35:29', '退出');
INSERT INTO `sys_fhlog` VALUES ('57c7ed91eab5467db85fb959eddffe24', 'admin', '2017-07-17 10:48:43', '修改cha_qx权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('57d134e47f684c4c8482efd567c1bf03', '999', '2017-12-20 18:29:48', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('57d97d9d6546449bb55814a2539cee10', 'admin', '2017-07-17 10:41:17', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('5835b0eae18948afb6936139085e648d', 'admin', '2017-07-04 14:56:48', '退出');
INSERT INTO `sys_fhlog` VALUES ('587354a013be4c69abc32353f6e8d989', 'admin', '2017-11-29 11:38:46', '修改cha_qx权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('587ed1cac4c44da9b3e0de06dd6dd766', 'csp', '2017-08-17 13:45:21', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('58a24eacfcdd47e1a45772776bd71d43', 'admin', '2017-11-29 17:29:35', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('58aa47f006d84bfab885ed85666759ca', 'luopeng', '2017-08-15 14:07:26', '退出');
INSERT INTO `sys_fhlog` VALUES ('58d54fd855a544b59f8509289d6d2aa9', 'admin', '2017-11-29 14:05:26', '删除菜单ID186');
INSERT INTO `sys_fhlog` VALUES ('59706c41e6a441b0af37bd73d7bafee0', 'admin', '2017-12-04 11:03:55', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('597aa33591354476a9ff71b93528a040', 'admin', '2017-12-15 16:29:55', '修改add_qx权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('59d9b0d27c0444aa9652013f09d8a624', 'luopeng', '2017-07-12 17:40:53', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('59ee9938c56d4bd29644bd0ea5929783', 'admin', '2017-12-20 09:28:21', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('59f30064caec4b41ab65bc6c50d2d296', 'admin', '2017-12-15 16:38:22', '修改角色菜单权限，角色ID为:1');
INSERT INTO `sys_fhlog` VALUES ('59fc6409c8dd46d8b59fdcb03110796e', 'admin', '2017-12-15 15:56:14', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('59fd2c6cda474a338867caa9454fd6a2', 'admin', '2017-07-05 15:00:06', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('5a02a0753b244c47af8386ddffc5a3f5', 'admin', '2017-12-05 11:16:34', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('5a1f6c8dbd7448eabce43964c8bc1999', 'admin', '2017-08-16 15:59:44', '退出');
INSERT INTO `sys_fhlog` VALUES ('5a8b56991f1447e3b486887bf878df5e', 'admin', '2017-07-06 16:54:44', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('5a9232960cb949dbb15cc5b3af1eaa43', 'admin', '2017-12-20 13:49:08', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('5aa2c29bf5d74ed3a1ad36ba74d03c94', 'admin', '2017-12-04 17:25:24', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('5ac4c4f7c5814ed7a6b51c425ed05d9f', 'luopeng', '2017-07-11 17:42:58', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('5b3e7a4cdc2544daad8e338ff4ceee2c', 'admin', '2017-12-02 13:37:16', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('5b58e10f65d9463b8d23d5a7e3a1ad90', 'admin', '2017-12-20 13:43:36', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('5b6fc7bc7b034301bcb9f30f12a7e8d2', 'admin', '2017-12-20 17:53:13', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('5b81509c583e4c228ab654766a4c8965', 'san', '2017-06-06 16:17:20', '退出');
INSERT INTO `sys_fhlog` VALUES ('5b827779bed44b548a185d0869b01c81', 'admin', '2017-08-15 14:13:12', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('5b8beb241925424fa7abbc53cb41ab33', 'luopeng', '2017-07-17 10:56:43', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('5ba4ceb0d0d44ca2ab90fad7f47d58fd', 'admin', '2017-07-17 10:40:16', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('5bc8338aad9e4e299932b84ad8d89c9e', 'admin', '2017-07-17 10:39:54', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('5bc89e38c4684fe4affeddf9241c6aea', 'csp', '2017-08-17 11:41:33', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('5bd40b79882e4f5cac51cf801d9a5a30', 'admin', '2017-07-11 13:43:29', '修改菜单二级菜单');
INSERT INTO `sys_fhlog` VALUES ('5bd4519f02954450b30d5783193b0eb8', 'admin', '2017-07-10 11:45:09', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('5c0bf57133bf4d598fa93004078591ee', 'admin', '2017-12-20 14:56:06', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('5c1b3de3997c4d1da2611a1cef99cd7c', 'admin', '2017-11-29 14:37:27', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('5c25c472a5e0490ea6fd845da1fd4013', 'yz123456', '2018-04-16 11:04:52', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('5c2cb152010e4074bb2b2b36017ecb08', 'admin', '2017-12-20 19:31:12', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('5c490c9ef378464e94e70c1fb9f28c7e', 'admin', '2017-07-17 10:48:32', '修改add_qx权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('5c4eb7d278344735b84dadecef84e208', 'lisi', '2017-07-11 09:18:34', '修改系统用户：lisi');
INSERT INTO `sys_fhlog` VALUES ('5c6c358e21d14d05b8fc0e2aabf927eb', 'admin', '2017-07-17 10:39:35', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('5c975409567242efbd6e417011980001', 'luopeng', '2017-08-14 14:24:18', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('5cbe8a9a0c694453bf892928b71d7eef', 'admin', '2017-07-10 15:04:54', '修改add_qx权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('5cc88b8a3f7d4f858de24ad6f00dc5ab', 'admin', '2017-07-06 16:55:31', '修改系统用户：w5');
INSERT INTO `sys_fhlog` VALUES ('5cd038290c174df6b3a77625e63b5060', 'admin', '2017-12-14 15:09:35', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('5d2e487177dc44dc9c54b7e3a94725a9', 'admin', '2017-12-04 13:50:06', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('5d4f28e5ce83408196b49ecd5b27d1d3', 'admin', '2017-12-01 19:20:06', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('5d69e573292c4afdb206b731217dba98', 'admin', '2017-11-29 15:55:27', '新增菜单App后台管理');
INSERT INTO `sys_fhlog` VALUES ('5d74c3ea813e45aeb23f318ba77d1e4b', 'luopeng', '2017-08-15 15:09:48', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('5d7851f4c0f6486da630932e450e894e', 'admin', '2017-07-11 13:44:29', '删除菜单ID68');
INSERT INTO `sys_fhlog` VALUES ('5db0e35e64654c2891ec86514e2fbe7f', 'san', '2016-06-06 02:28:46', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('5db61110e9d34befaca27f10fd53913d', 'csp', '2017-08-17 11:24:06', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('5dfa55095a514b68b81fccee8df144fa', 'yz', '2018-04-10 14:18:38', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('5e2dfcac00dc4162a78e4ea96379f7e4', 'yz123456', '2018-04-10 14:13:43', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('5e4c69fdf6c243df9ae621810726c7be', 'yz123456', '2018-01-05 20:02:14', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('5e5f7daad0054b4597908b87de01077f', 'admin', '2017-08-15 15:51:17', '修改菜单订单管理');
INSERT INTO `sys_fhlog` VALUES ('5ecb0f015e6046388b31f81fdeae3684', 'luopeng', '2017-07-12 11:44:18', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('5edcfafecce548a0a5bbe1a726e1ac30', 'admin', '2017-08-17 14:39:28', '退出');
INSERT INTO `sys_fhlog` VALUES ('5f07e887904144d5ba74af6a23c7dd4a', 'admin', '2017-12-02 10:24:24', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('5f14c50600d64ac1bdbbcfa9a3903807', 'luopeng', '2017-08-14 17:26:04', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('5f1d75b1093b4b9f8166ab83a42681a1', '1111', '2017-12-20 18:31:33', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('5f5e6b651f1e438484bf07f8b3937eff', 'admin', '2017-07-10 15:40:20', '修改菜单微信菜单设置');
INSERT INTO `sys_fhlog` VALUES ('5f74e2f861cc43deb08c0ee2183aba45', 'csp', '2017-08-17 11:57:01', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('5f76d320361a432c843e9ce0f071177b', 'admin', '2017-11-30 17:11:54', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('5f80a9fc2ca2488bbf70d7a182cb9136', 'admin', '2017-07-21 09:42:36', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('5f8bcd2bb3f64f099bd06125978d9701', 'admin', '2017-12-15 16:08:15', '退出');
INSERT INTO `sys_fhlog` VALUES ('5f9c2accd6b44d80863abaa1c13659a0', 'admin', '2017-07-07 11:27:30', '退出');
INSERT INTO `sys_fhlog` VALUES ('5fa00250df6047a7b0c6863dfc2cc759', 'admin', '2017-12-19 18:06:16', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('5fabdc16df3a4283b0c3d5dc3184eb73', 'admin', '2017-12-15 16:30:22', '修改cha_qx权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('5fff991d6c3f43ceaa22befb5c1a3b4c', 'admin', '2017-07-17 10:48:26', '修改角色菜单权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('60426a84bf1c4d77b5aebad30ac3b941', 'admin', '2017-12-19 16:29:51', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('607c35f9792a432f9241374b2d117f88', 'luopeng', '2017-07-11 10:19:26', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('60eec25703044c75ba2fc0d0a6c31c3c', 'luopeng', '2017-07-12 16:00:00', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('60f37f969b3b41bb8785a3a5c42a08c2', 'luopeng', '2017-07-12 18:23:52', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('612fcea6a280424bad5a9cbb41a60f19', 'admin', '2017-08-12 14:09:40', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('619f3a43330248a7934a3b317088c007', 'admin', '2017-12-02 10:29:25', '修改edit_qx权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('61f87e3b5efe476a8a9f6bd784591fc7', 'admin', '2017-08-15 14:43:53', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('6287ee3326644c889037a45bed32e513', 'admin', '2017-08-15 15:50:29', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('628e14f3895841c78e96756b10396b9f', 'admin', '2017-12-11 10:36:10', '修改菜单订单管理');
INSERT INTO `sys_fhlog` VALUES ('6291e655dccb47d492c31ab3a1d4616e', 'admin', '2017-07-20 14:48:18', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('62d0947ef2df4e0caf6cf8964ecdd279', '1111', '2017-12-20 18:32:57', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('62e4d667aec54247990ad18b22d16844', 'w5', '2017-07-12 16:05:54', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('630e91da5ce94f0dae5a0f9db59ffe5d', 'luopeng', '2017-08-15 15:09:47', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('638a6cf9a880451b961f6d1044aa6f99', 'luopeng', '2017-07-12 13:43:56', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('63af0ac1c96942a3bc7ad33f1fe75653', 'admin', '2017-08-14 13:44:31', '退出');
INSERT INTO `sys_fhlog` VALUES ('63d79c32f1a0417993aeaba384c71fd5', 'admin', '2017-12-02 09:49:53', '修改菜单会员管理');
INSERT INTO `sys_fhlog` VALUES ('63d9fa0e74194b3684a2eee7bebe6c88', 'admin', '2017-12-19 15:55:06', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('63fccce636024f1b8a931886bbdde8d1', 'admin', '2017-12-19 17:53:48', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('641c1b6bbd2144f49947857aeb412883', 'admin', '2017-07-05 15:23:53', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('6421456643f54e3aa93587a2f2e9c7b2', 'admin', '2017-07-04 16:55:25', '退出');
INSERT INTO `sys_fhlog` VALUES ('645105bbd1d344a0b75a449ba3bdb717', 'csp', '2017-08-15 14:42:50', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('647d0fe9435b466ba67c1efb42aa6c58', 'admin', '2017-05-06 11:54:57', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('648e938ff90945b784f35eb6e426d260', 'admin', '2017-11-29 10:53:52', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('64a44ce27dc8451da3b650f3a90ac027', 'admin', '2017-12-02 09:34:15', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('64a7849cd284487692c48fa71138f4bc', 'admin', '2017-12-11 10:35:39', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('64aa82b937bc4d43bc15b6f8c6476a69', 'admin', '2017-12-01 14:30:18', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('64c501a81bc545faaed12b819adb1834', 'admin', '2017-12-20 14:40:11', '删除系统用户：{tm=1513752011852, USER_ID=9991f4d7782a4ccfb8a65bd96ea7aafa}');
INSERT INTO `sys_fhlog` VALUES ('64c6e322c4d0440c9596f1f55f389f29', 'admin', '2017-07-17 10:39:54', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('651863dae04b45d78a1e58259d6731b4', 'admin', '2017-08-11 14:19:32', '删除菜单ID30');
INSERT INTO `sys_fhlog` VALUES ('653065fb6bc94daf84507c305abd9f72', 'admin', '2017-12-02 11:33:48', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('657a1a0a169a4ba5abe4bbfe99be17bb', 'admin', '2017-12-18 14:01:07', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('658d63e3a3c745f0b3731793bff1b58d', 'luopeng', '2017-08-14 18:04:20', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('65b995b38d194db89d260d7837e7de95', 'admin', '2017-07-05 15:29:13', '退出');
INSERT INTO `sys_fhlog` VALUES ('65d72779b99f46a492a8d8b407cadfc9', 'admin', '2017-12-04 13:43:13', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('65f9a406699e4c50b1d502850137ce9b', 'admin', '2017-07-17 10:38:37', '退出');
INSERT INTO `sys_fhlog` VALUES ('66181bcbdffa4e0f8d6be60a82686e35', 'luopeng', '2017-07-12 17:34:33', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('662b07d3cbef4d709ed3c65aa0e7a8a2', 'admin', '2017-12-20 11:49:30', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('66326c5fa6814142905d3ab6805decd7', 'admin', '2017-06-06 16:18:32', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('6674fba562ca413da10c604a5b2f5180', 'admin', '2017-08-14 18:13:22', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('6699712150804ac6ba5b85cc21167a68', 'admin', '2017-12-20 14:40:46', '删除系统用户：{tm=1513752045923, USER_ID=9a89f6cd9b654b71b39c6f8c6a54d6df}');
INSERT INTO `sys_fhlog` VALUES ('66a0bd3690a04212a66942f5b1f0d21f', 'luopeng', '2017-07-12 11:40:52', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('66d8ada08d814ca3ae2f4762a46d28b9', 'admin', '2017-12-20 19:04:09', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('66e4049525704287aec67ff5a9cf5c86', 'admin', '2017-07-06 14:08:39', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('66f60bcc34e14b77a0e2fac3c5f0239d', 'admin', '2017-12-18 09:31:08', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('671b958166bb473dbdd5fa7d496d7bc4', 'admin', '2017-12-04 17:17:08', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('673ae1818436401ead5c9f79ff9880bd', '1111', '2017-12-20 18:30:47', '新注册');
INSERT INTO `sys_fhlog` VALUES ('6744580726ca4a1182cb5fdc0432ca8e', 'luopeng', '2017-07-10 09:07:44', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('675d786eebe94d9f9d49f2577192f0f1', 'admin', '2017-11-30 14:55:32', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('677a854ac7904779be51644058813570', 'admin', '2017-08-11 14:21:02', '修改角色菜单权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('679485fe9edb49b89b87fc522e854a9f', 'admin', '2017-07-06 16:45:52', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('67a386bb150f47f8a036fc19e4552d36', 'admin', '2017-08-14 13:45:15', '修改菜单房型管理');
INSERT INTO `sys_fhlog` VALUES ('67ab5df6e6104e2d9ca9bf7397a59ee8', 'admin', '2017-12-11 10:23:44', '修改角色菜单权限，角色ID为:1');
INSERT INTO `sys_fhlog` VALUES ('67bbd1893618473a9e5fa280f270c8b8', 'admin', '2017-11-30 14:44:09', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('67d0bac365ae43cda7cf8e4ad4b1b029', 'admin', '2017-12-19 09:22:45', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('67e730a09c9847c2a9963c2a971b574f', 'admin', '2017-11-29 14:31:27', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('682259853a0a4a1caac111cfb9cf1f6a', 'admin', '2017-07-05 17:26:32', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('686187d2414b40a089a36ceb2cb589fd', 'admin', '2017-06-27 16:42:02', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('689a270eaf4c4c22921060cf7f41d591', 'admin', '2017-07-17 10:30:33', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('68a5ae8390684c208092893eea457d8a', 'admin', '2017-11-29 10:34:55', '删除菜单ID184');
INSERT INTO `sys_fhlog` VALUES ('68c219fa836e429097784298555956dd', 'admin', '2017-12-15 15:51:14', '修改角色菜单权限，角色ID为:1');
INSERT INTO `sys_fhlog` VALUES ('68c8949832ec4184af4cbd883ea03c88', 'csp', '2017-08-15 17:37:44', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('68df1a3b42c74bc4b9a9802517373e72', 'admin', '2017-12-02 13:48:15', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('68ee98c62f1048e58f03b71db4790310', 'san', '2017-06-29 14:27:30', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('69152d3e67a1433b802b973bbe65d7c8', 'admin', '2017-11-30 20:43:39', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('6920b686529d418a8ca7e80b2b7419dd', 'csp', '2017-08-16 09:59:20', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('693c940dac4944a4acb84950e966f8ff', 'admin', '2017-12-04 09:50:31', '修改edit_qx权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('694019e29ba946c59200ca7cc8c6f35b', 'admin', '2017-12-15 16:28:06', '修改cha_qx权限，角色ID为:3');
INSERT INTO `sys_fhlog` VALUES ('69576cd2dd7a4728baa230669f07f079', 'yz123456', '2017-12-22 18:12:23', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('696763c179994314af1891625fd27fc7', 'admin', '2017-07-17 10:39:37', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('69677d75aea048c58e3bf40813170677', 'admin', '2017-08-14 15:29:45', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('69b0dc3d26f54a9ca3d2aa891604f88c', 'admin', '2017-11-29 15:01:46', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('69c91cb6b830422e95733e0b5bf1d055', 'admin', '2017-07-17 10:39:37', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('69ca3a3a796e46e08346142449ae5b72', 'admin', '2017-07-06 11:11:03', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('69e2ab947b604b5c88ab2d7e24c9db4d', 'admin', '2017-12-02 10:22:51', '修改add_qx权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('69ed180bbc8d48e5aee21dfed0aa54d5', 'admin', '2017-12-11 14:09:50', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('6a3bf4ed0f7f463890a9dbc56dabb8a3', 'csp', '2017-08-17 16:58:24', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('6a74cb5174d048828cc76a01eaec5797', 'admin', '2017-07-13 13:41:37', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('6b02a3bdf3f14901a6b7f84a4a0c456e', 'admin', '2017-06-22 17:30:02', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('6b35f79f8c7342098c3287cb1d32f1a6', 'admin', '2017-12-20 18:29:33', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('6b5677dc72954f73a35045b60dcab28a', 'luopeng', '2017-07-11 16:53:02', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('6ba33c1101d74116aae4b0cbe1b293b2', 'admin', '2017-12-19 14:20:02', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('6bd25bc2b6494c699195dd642bcdc5d4', 'admin', '2017-08-16 15:47:10', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('6c163abe611a4a5a92d37979de115219', 'admin', '2017-08-18 17:00:10', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('6c2539ee6a8641689792fd6db4a5b132', 'luopeng', '2017-08-18 17:56:24', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('6c30f0fe4b9f419e99dc7e8d81127fca', 'admin', '2017-11-29 15:54:06', '删除菜单ID184');
INSERT INTO `sys_fhlog` VALUES ('6c4c46e49cec42089e9e756510a2824c', 'admin', '2017-12-11 10:37:42', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('6c54e30b6d534fc4aed317d070d1b046', 'admin', '2017-12-20 16:37:11', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('6c894f68b6e4454db9f62403b4d76030', 'yz123456', '2018-04-12 08:42:41', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('6d3206ee8c364dc9873d95cff44985f7', 'admin', '2017-12-22 16:34:08', '退出');
INSERT INTO `sys_fhlog` VALUES ('6d6b1aedf68c41c38ee38e486f1c4755', 'admin', '2017-12-02 11:40:50', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('6d7ad925929e4c08af66fe606024db81', 'yz123456', '2018-04-10 14:14:24', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('6d87fb2cd6954436ada4982776d992cb', 'admin', '2017-12-02 10:33:41', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('6d9ae3a674854578b449dfa5b7f98029', 'admin', '2017-07-24 09:15:29', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('6dad6ccdc7734b1b9b87bbbdba9cd391', 'csp', '2017-08-17 18:22:45', '订单确认退款{tm=1502965365256, ORDER_ID=20170816000001, ORDER_STATUS=5}');
INSERT INTO `sys_fhlog` VALUES ('6dc541d560a04ba684e5f2a60c41e2e2', 'yz', '2018-04-10 14:14:38', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('6dc9cc531506433d9bd54b58faf4704b', 'csp', '2017-08-16 14:17:27', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('6df12a88eff64469b47cd79965391e2d', 'admin', '2017-12-19 18:32:52', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('6dfab3371907463599eab8c48f8b3a21', 'admin', '2017-12-15 16:29:03', '修改角色菜单权限，角色ID为:3');
INSERT INTO `sys_fhlog` VALUES ('6e04b76673bf4ccda7a5411ce22a171f', 'admin', '2017-05-11 11:57:28', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('6e2b414548cb4470b1a4edfb4b584886', 'csp', '2017-08-15 14:07:14', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('6e4af5829bb140deb409bf1bcba0a746', 'admin', '2017-12-19 17:52:16', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('6e7dc037016c4a2794454841434e0969', 'admin', '2017-12-21 09:58:55', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('6ec017fe56e843e89e6277df95b9a6c0', 'admin', '2017-08-11 14:21:16', '修改add_qx权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('6eca80f141f54e72800635fb6d89cc60', 'admin', '2017-12-04 17:41:19', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('6f56dde5512149e4962ccdc2b6b9b6a4', 'csp', '2017-08-15 15:25:53', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('6f73e1ddcced48249c6c50ced1111f1c', 'admin', '2017-07-17 10:40:17', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('6f9bed1d62d14233903df123746cad59', 'admin', '2017-11-29 15:55:36', '退出');
INSERT INTO `sys_fhlog` VALUES ('6f9cead15c814d8bac79b52b5c91c0dc', 'admin', '2017-07-08 14:56:06', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('6faa5cd822844a358f239e9c54c5ff5e', 'w5', '2017-07-11 16:50:18', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('6fdfc926fb4a4f5aa925b09d71d12bc9', 'admin', '2017-07-17 10:39:54', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('702861cf46d747d98eb88024f3077f06', 'admin', '2017-07-17 10:41:15', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('709bd1e04bab4496809c78db94cf2d2a', 'admin', '2017-07-07 15:05:46', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('70ae9595b3604b54922343ab2741f1ba', 'admin', '2017-11-29 16:51:58', '新增菜单会员管理');
INSERT INTO `sys_fhlog` VALUES ('70ba7c196e2f47e7bcadc96086dbe73a', 'yz123456', '2017-12-13 10:02:37', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('70e0d39ea4f740ff8695b8080e0ae6b8', 'admin', '2017-08-17 14:59:31', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('70e3aded21c747f7ab537f45170bde04', 'admin', '2017-12-15 16:27:19', '新增菜单技师抽成管理');
INSERT INTO `sys_fhlog` VALUES ('70f5dc6f6bf94150b8ff364bbaee6b4b', 'admin', '2017-12-20 13:58:51', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('711f85308dc7465da473edf74cfa8798', 'lisi', '2017-07-11 09:17:55', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('711fb61c0f4f44c38add99c0338aa7af', 'admin', '2017-12-02 14:04:54', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('713796e5641b4d95af6cfdfa5514b4b6', 'admin', '2017-11-29 16:50:34', '退出');
INSERT INTO `sys_fhlog` VALUES ('714f3e5393214bc1a793bfd901aff416', 'admin', '2017-12-19 10:25:22', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('7178a498210d4272b505da40db344562', 'admin', '2017-12-15 15:13:28', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('7188f6e312c843b89ec7914b2796d4c4', 'admin', '2017-12-02 15:32:46', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('71aac9f1d4aa4164a264501805c74fe3', 'admin', '2017-12-04 09:50:27', '修改del_qx权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('71c98d48d4b549a2be14613c8d8ce8d5', 'csp', '2017-08-15 14:34:33', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('71f805a0229949679607893283fd24d3', 'admin', '2017-06-06 16:09:46', '修改系统用户：lisi');
INSERT INTO `sys_fhlog` VALUES ('7215316c292f49109393aa6f158e6d68', 'admin', '2017-08-12 11:23:25', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('723209d94d6e4bab9312a60fa9763c1f', 'csp', '2017-08-17 18:12:04', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('72622a29090f4f38948b4fcdece2f161', 'admin', '2017-08-15 11:53:14', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('7272bef8ad0c46b1948c104fb2163af1', 'admin', '2017-11-29 15:55:44', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('72922ccfd24447e8b59529c477a71ab7', 'admin', '2017-07-10 17:36:00', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('729420dd26f34920b1057770379351b3', 'admin', '2017-08-12 10:33:03', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('729c9147dcf84adaa016a5c5c9fb5aa0', 'admin', '2017-12-19 13:11:15', '退出');
INSERT INTO `sys_fhlog` VALUES ('72a5a5dccb694044bd6368156d4295dd', 'luopeng', '2017-07-12 09:49:38', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('72af2cf0bf5a4274b8c2018294407ce8', 'admin', '2017-12-20 16:53:53', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('72b4915f2d094663b67944c7757e8cfe', 'admin', '2017-08-11 14:37:34', '修改系统用户：admin');
INSERT INTO `sys_fhlog` VALUES ('72dc6cde3b3e4792a08f6761188ce05d', 'admin', '2017-08-14 15:39:33', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('7353eb5b778f45a7ae28c3f19f1949c9', 'admin', '2017-12-04 09:50:06', '修改角色菜单权限，角色ID为:1');
INSERT INTO `sys_fhlog` VALUES ('7373ed68262647958423a47f872d221d', 'admin', '2017-06-29 14:25:25', '修改角色菜单权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('738ce4ca6d9f4a87a8732e00720f7af8', 'admin', '2017-11-28 17:01:43', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('73aebf474857450b84dff79269f8b93e', 'admin', '2017-06-29 14:25:09', '新增按钮权限pd{guid=1498717509565, BUTTON_ID=cc51b694d5344d28a9aa13c84b7166cd, RB_ID=83a82c2e934a4456bdb65fa3d87e0907, ROLE_ID=3264c8e83d0248bb9e3ea6195b4c0216}');
INSERT INTO `sys_fhlog` VALUES ('73bc6640a23942c38497e6106b9d9851', 'admin', '2017-08-14 11:51:07', '新增菜单酒店服务管理');
INSERT INTO `sys_fhlog` VALUES ('73ed9181992247139916dfb7694a1157', 'admin', '2017-12-15 16:39:10', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('7498076703c74b118919ef658a6e6701', 'luopeng', '2017-08-14 16:24:19', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('74d5ceee8d734727bec63ec237232d0e', 'admin', '2017-12-11 14:20:35', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('74e286d9e7024bec94abb265985aa0fd', 'admin', '2017-12-15 16:27:56', '修改add_qx权限，角色ID为:3');
INSERT INTO `sys_fhlog` VALUES ('75129256e0d048478435faeee35bbbd8', 'admin', '2017-12-04 10:46:22', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('759d76f591064d439c39a5fa51882a89', 'yz123456', '2018-01-07 20:13:04', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('75e9ef7a564f43148acb70d2881a8a6e', 'admin', '2017-07-05 16:33:35', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('75ede9b6fa484ef1bf5caa0d127e954e', 'admin', '2017-12-02 11:06:43', '修改del_qx权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('75fe5597642a4ca9805256d3715b2652', 'admin', '2017-12-14 15:17:32', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('765de6c4d034473eace0fadb4a20f084', 'admin', '2017-12-18 14:09:29', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('767ca5aed004437abdcc4f3af7e82d49', 'admin', '2017-07-06 10:18:41', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('76826e8a8f7c4f37854a58656829a175', 'admin', '2017-12-04 09:44:33', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('76a7713e49da467fb8398e1ef574e0a2', 'admin', '2017-11-29 16:44:37', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('76e53357776c44c88c4b623a69346c3d', 'admin', '2017-12-21 09:38:13', '修改角色菜单权限，角色ID为:de9de2f006e145a29d52dfadda295353');
INSERT INTO `sys_fhlog` VALUES ('76e756a940894717a23de7897bfa535d', 'admin', '2017-12-01 13:45:39', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('7761b93c08d04b1a9fff506330135e41', 'admin', '2017-12-02 10:26:20', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('7764de19bd9547c688cc7d293ec9af22', 'admin', '2017-12-02 10:29:30', '修改角色菜单权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('77be2fe4afe6477dbf8c4c9b1cb764ea', 'luopeng', '2017-08-15 17:08:11', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('77e3ad47c2614b1db07b194492b4b68a', 'admin', '2017-12-15 16:37:25', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('77eecd6c11234eb7b5ad6a3b62300f85', 'w5', '2017-07-12 10:02:50', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('7812edc5c88c4266b3afbd4d596fe995', 'admin', '2017-12-05 14:22:54', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('78214c73af194583b52d2993bdb0db8a', 'admin', '2017-11-29 15:57:05', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('787ddf8b6b1c4709a8bd8ce8dd4acf28', 'admin', '2017-12-11 10:14:42', '新增菜单订单管理');
INSERT INTO `sys_fhlog` VALUES ('7890e5a0b9094945a5cc5400f852237a', 'admin', '2017-12-11 14:20:09', '退出');
INSERT INTO `sys_fhlog` VALUES ('789bf5314e3349b2a601f19e0e65814e', 'luopeng', '2017-07-17 09:29:11', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('78d76f7c803547a89a19d005ea0d429f', 'admin', '2017-07-07 15:23:00', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('79062e1dcffc4b399155c6b95683082f', 'admin', '2017-07-10 15:45:05', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('796251dc94de46cda162d66ce0372ef4', 'luopeng', '2017-08-14 17:06:01', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('79928467ef104babad63006eebfd9086', 'csp', '2017-08-14 18:17:56', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('79978ca523a44a3db49af932a116f0af', 'admin', '2017-05-06 10:19:57', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('799ff73472ac4772a5f87b73a15b0f78', 'admin', '2017-11-29 14:02:21', '删除菜单ID187');
INSERT INTO `sys_fhlog` VALUES ('79b82066de9048f486fc31e9cc7a40c6', 'admin', '2017-07-07 11:29:38', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('79d6dfb12eef4f70909e3a9b00413d44', 'admin', '2017-12-15 16:28:24', '修改del_qx权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d');
INSERT INTO `sys_fhlog` VALUES ('79e9ff89a3104a0aba8ac9e9f5a6de01', 'admin', '2017-12-20 18:24:31', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('79efcae5168d446ebe3601ee4548e7d0', 'admin', '2017-12-14 18:21:25', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('79f5ee9aadd64a6cb22ceec35bac6439', 'admin', '2017-08-11 15:49:32', '退出');
INSERT INTO `sys_fhlog` VALUES ('7a263eda08454a33b751dd97f386a525', 'admin', '2017-08-14 09:16:46', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('7a2b975a4ad84ebd8afe11727ce900e7', 'admin', '2017-12-20 14:17:15', '修改菜单抽成统计');
INSERT INTO `sys_fhlog` VALUES ('7a4e395abc714a93b5aa2d3c295f74e4', 'luopeng', '2017-08-15 18:22:46', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('7a54390b49a14e45922c1d12049377ea', 'admin', '2017-07-10 15:40:24', '退出');
INSERT INTO `sys_fhlog` VALUES ('7a7f981fdfe1484c9d530f8be9b1c6b5', 'admin', '2017-12-20 14:35:53', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('7a952f769d8c4f978e937cac0f800de4', 'yz', '2018-04-10 14:14:42', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('7aac44e954ca4200b8596ddad2aa9947', 'admin', '2017-07-05 15:32:34', '修改系统用户：lisi');
INSERT INTO `sys_fhlog` VALUES ('7aead064235e4bd8a3a3caadd4a17a58', 'admin', '2017-08-16 17:10:19', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('7b0c278a823e49818797f122920e7f1d', 'admin', '2017-08-12 10:48:22', '退出');
INSERT INTO `sys_fhlog` VALUES ('7b0e5970b4234205bd4dc3b1ad2460f2', 'admin', '2017-08-16 10:10:22', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('7b19f41086184115a136bbfda6990373', 'admin', '2017-12-20 16:25:38', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('7b1b8cf846884b798d0cef6e6a6da6db', 'yz123456', '2018-01-02 16:57:29', '退出');
INSERT INTO `sys_fhlog` VALUES ('7b2cb5c36f5f438096de1a18a5923989', 'admin', '2017-12-02 11:01:55', '修改add_qx权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('7b2e7ccec46c4bd79ff84cbaf2f98f2f', 'admin', '2017-07-17 10:39:34', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('7b345c3512e0457d8be1cf54adfdfac0', 'admin', '2017-08-15 09:57:14', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('7b5c4a46da5e475685d84a7d70446c6e', 'csp', '2017-08-17 11:30:34', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('7b6634bb17e747169155c5c8c31e71fa', 'admin', '2017-11-29 15:34:17', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('7be0dfab63744d1abaf0c6b7a435c678', 'admin', '2017-12-20 18:29:02', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('7c24b5a06010456c9c3ef4487648e2e6', 'admin', '2017-12-06 10:10:27', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('7c67efe09dc241f387e288fa6a9a4e6a', 'admin', '2017-11-30 17:04:49', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('7c8036c5e5fe4b8f9d7417c985cb7c2d', 'luopeng', '2017-07-11 14:50:59', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('7c93adf57a90436ca3f2aa92b4b7fb36', 'admin', '2017-08-17 14:59:38', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('7cbf21a01d7c4348b5152ff455726027', 'admin', '2017-07-05 14:51:12', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('7cf73bfe00ab4428b2d99da340ac6067', 'luopeng', '2017-07-12 16:37:02', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('7d1d7778ffc441cf968d60205acce179', 'admin', '2017-11-29 15:34:03', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('7d6e0002f1734f8fb296f5890d284f5f', 'admin', '2017-08-11 14:19:23', '删除菜单ID33');
INSERT INTO `sys_fhlog` VALUES ('7d9b385282fc47db985b1395af89cc7c', 'admin', '2017-12-21 09:58:57', '退出');
INSERT INTO `sys_fhlog` VALUES ('7dac59fc06694b3e8c2cf5bbc719cb30', 'admin', '2017-11-29 14:05:11', '修改菜单拼购');
INSERT INTO `sys_fhlog` VALUES ('7ddd5bcc0a064cc8a539fe482f2a2b4e', 'admin', '2017-07-07 11:04:25', '退出');
INSERT INTO `sys_fhlog` VALUES ('7de166bbed304b43b9619fb822906b32', 'admin', '2017-12-04 17:53:07', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('7df794f28da2428daddcacbcf6b2957a', 'admin', '2017-12-20 16:26:50', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('7e40b303f6154c85b8ac0bdb07340d5f', 'luopeng', '2017-08-15 15:12:35', '退出');
INSERT INTO `sys_fhlog` VALUES ('7e749eb75e5d499eb70c7287c381053d', 'admin', '2018-01-02 13:22:50', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('7ea4c7b3edb8461899d15aa0d9fd5abd', 'luopeng', '2017-07-12 13:49:57', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('7ec14f1846474c88a9b0370160dcd2c7', 'luopeng', '2017-07-11 16:58:36', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('7ece1e17174144e980b7d5f9faa4e367', 'admin', '2017-07-15 16:04:43', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('7ee0c1f5743e4da0bfb7e42c445a8a4f', 'admin', '2017-08-16 16:46:01', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('7f2471adef20482195f345734f7856af', 'admin', '2017-12-20 18:07:31', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('7f4ff1bf06ad454a81760cc97693d0fb', 'lisi', '2017-07-11 09:18:43', '退出');
INSERT INTO `sys_fhlog` VALUES ('7f748623c06d4223bdaed96d5f8c9097', 'admin', '2017-12-01 18:26:58', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('7f771133b9db4a3fa3ef7d9f917d22b7', 'admin', '2017-12-19 15:35:30', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('7f7953434bee4e79a6ed18b43e88f3b8', 'yz123456', '2017-12-12 17:31:03', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('7f7cc91c77f0419884a501f79f194da3', 'admin', '2017-12-21 09:35:11', '修改edit_qx权限，角色ID为:de9de2f006e145a29d52dfadda295353');
INSERT INTO `sys_fhlog` VALUES ('7f903cec36144caab88a602bd994f094', 'admin', '2017-12-05 09:55:06', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('7f944036184a4d43a711063445a9b757', 'luopeng', '2017-07-17 10:38:37', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('7f996f9c55084ba3881c77b790dd2fc6', 'admin', '2017-07-17 10:41:36', '退出');
INSERT INTO `sys_fhlog` VALUES ('7fa302e551024dd7bc1cfb4df8e7c52a', 'csp', '2017-08-17 18:25:26', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('7fc79373b6e34d44a560f39fa05d14b1', 'admin', '2017-07-04 14:53:05', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('80215195e1484b2abd241d70aa5d2242', 'admin', '2017-12-02 11:19:54', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8022a011ddf14b4da55691ae23924f25', 'admin', '2017-12-04 09:37:25', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('80408d31854e4b9c8ed861837f1dc403', 'admin', '2017-05-06 11:45:48', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8091fb2e8c63480a96c06ea1cd3af782', 'admin', '2017-12-02 11:04:02', '修改角色菜单权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('80a11b1da54b4e248de746822fa8434e', 'admin', '2017-07-05 16:28:39', '退出');
INSERT INTO `sys_fhlog` VALUES ('80b1c3cf348f4c1792f5f4a22292ef27', 'admin', '2017-07-17 10:48:35', '修改del_qx权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('80b4a50b0f5c4268819fe10f26b22673', 'yz123456', '2017-12-21 09:49:10', '退出');
INSERT INTO `sys_fhlog` VALUES ('80b4d753b8924e6396ee028cbbe1b771', 'admin', '2017-12-19 16:11:21', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('80bf77bab6574fe2b22c7f59014bba7a', 'admin', '2017-12-12 17:29:06', '修改edit_qx权限，角色ID为:3');
INSERT INTO `sys_fhlog` VALUES ('80c0cbe3cc374e90af916710985b202b', 'admin', '2017-12-15 15:56:50', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('810663db77d746e6bbf01802cc055c9f', 'luopeng', '2017-08-15 15:09:46', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('810c6510dfc44abe896c7bd282740fdd', 'csp', '2017-08-14 15:42:18', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('81241d14e2854c1889927dfeb88406e0', 'admin', '2017-07-11 13:43:49', '新增菜单a');
INSERT INTO `sys_fhlog` VALUES ('813c1d6a7aff49c48e060f6827772e98', 'admin', '2017-08-11 14:18:00', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('813c5c15acae40a99ef8763a9ae739f3', 'yz123456', '2018-01-07 20:30:47', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('816adb943edb47afa66cf405e9e55a82', 'admin', '2017-12-01 18:05:20', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8176040551a44f48b69cc36dfeae1e74', 'admin', '2017-12-18 11:29:00', '修改菜单技师抽成管理');
INSERT INTO `sys_fhlog` VALUES ('81b17e59492a4d34a6c16a26406cc0ca', 'admin', '2017-12-11 10:15:13', '修改add_qx权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('81c3394104b74174bfc0e3cfb66a3402', 'admin', '2017-08-15 10:00:26', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('81c487c271094bce97e8286644051960', 'admin', '2017-11-29 14:02:25', '删除菜单ID184');
INSERT INTO `sys_fhlog` VALUES ('820361e4562945139f05f69f8a6009ab', 'admin', '2017-07-05 15:22:01', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8212ec697717489087f97a73b3203fa6', 'admin', '2017-12-05 10:36:28', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('825e87d18d1f4e69ad3c581a34c3737b', 'luopeng', '2017-08-14 16:23:56', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8260c28c5825436b91576fc10cca2403', 'admin', '2017-08-11 14:37:00', '退出');
INSERT INTO `sys_fhlog` VALUES ('827d48ed969e414fbe6ca008e0aef97d', 'admin', '2017-12-20 14:40:54', '删除系统用户：{tm=1513752054464, USER_ID=896496bf0906410d8495110e1b14f69e}');
INSERT INTO `sys_fhlog` VALUES ('82dab596868d45f8a8ed53f8794e1218', 'admin', '2017-12-20 09:33:35', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('82e7f8b87c3341b5baeef28237350f86', 'admin', '2017-12-02 14:13:08', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('82fece441a944fbeb7f175923e1932ef', 'admin', '2017-11-29 09:24:54', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('83591df3f7de4132bec0a49a72f916f9', 'admin', '2017-12-04 14:34:04', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('835b8ce7076049c0936cb48a67d27d99', 'csp', '2017-08-16 15:47:59', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('836aa490e78741daa2d36c5507787031', 'luopeng', '2017-08-15 15:09:47', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('83bf971e0094435492b0eb957c17b606', 'luopeng', '2017-08-16 08:59:29', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('83feb75e957c4a0b8601226a275acefb', 'luopeng', '2017-07-13 17:32:46', '退出');
INSERT INTO `sys_fhlog` VALUES ('84191d7415fd41b49978edd0719e9f50', 'admin', '2017-05-06 11:48:33', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('841ed70cfb9c4b46b4a9ccd5105e1a7f', 'admin', '2017-08-21 11:34:49', '删除菜单ID158');
INSERT INTO `sys_fhlog` VALUES ('84550b8e8e2043fbb76ea53da1c4908a', 'admin', '2017-11-30 17:09:27', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8468c52c95e94eee9dfd6e5123a92a7e', 'admin', '2017-07-17 10:21:55', '新增菜单素材管理');
INSERT INTO `sys_fhlog` VALUES ('8479316b530f4da0b90bfa20c05ac933', 'admin', '2017-08-11 14:43:10', '新增菜单酒店管理');
INSERT INTO `sys_fhlog` VALUES ('84af1587440e4a70b8abd76fa67e2ea3', 'admin', '2017-12-01 09:37:19', '修改房型：{ROOM_DESC=weq, ROOM_PRICE=12.0, imageStrArr=, ROOM_ID=3a61b4b56eae41a79e3a84cecd170138, ROOM_GATEPRICE=23.0, HOTEL_ID=cb6b3251aff144cfbc9d2fe7efa0d848, ROOM_NAME=12, photoStrArr=, DELETE_IDS=, MODIFY_DATE=2017-12-01 09:37:19, MODIFY_USER=admin}');
INSERT INTO `sys_fhlog` VALUES ('84d94d80245847bcaf2a6aee88f1792a', 'luopeng', '2017-07-12 15:10:40', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('84dda8c35f214eae92b7fb6d73369d72', 'yz123456', '2017-12-23 17:03:17', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('84e122ea92234053ac3bbf2e861c4fd8', 'luopeng', '2017-08-14 14:30:09', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('84e4f7f5268c45ce8a31e7a093ba7fa2', 'admin', '2017-08-14 09:16:38', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('8504f3e915d84bf5a83b60fcdc05d97a', 'admin', '2017-12-04 09:50:21', '修改add_qx权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('852a8f7b0e3247a3ba8d41edb72a9d28', 'admin', '2016-06-06 02:28:38', '退出');
INSERT INTO `sys_fhlog` VALUES ('859c161830dc4d94b41e8952afcd3d2a', 'admin', '2017-12-19 13:56:29', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('85ca1e657b304b3d9e83461d6e776035', 'admin', '2017-12-19 09:39:47', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('861adfb55c3b4815a6f510921574735b', 'admin', '2017-12-01 10:44:25', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8624beabfdb143b09389cbaaed095b8b', 'luopeng', '2017-08-15 15:12:23', '修改edit_qx权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('863352847112434aa0cd039b7faeef5c', 'admin', '2017-07-10 17:51:05', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('864a6705935c4d3793b7a7a6ee7aa074', 'luopeng', '2017-07-10 09:17:01', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('867fbeba1c12475ca275d1768ed6e6f0', 'admin', '2017-07-10 15:04:30', '修改角色菜单权限，角色ID为:1');
INSERT INTO `sys_fhlog` VALUES ('8707f98cb2074bab847eafed43533266', 'admin', '2017-07-07 09:19:38', '修改系统用户：san');
INSERT INTO `sys_fhlog` VALUES ('872cbb986190481dafde4766b84026ab', 'admin', '2017-12-19 19:07:55', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('874afff7b3654c0888afd8e99b0c54ee', 'admin', '2017-08-15 10:51:56', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('877b90f2dcf7496aa574d26b5632c476', 'luopeng', '2017-07-13 17:38:42', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('87844f79e71146258f326607be49db81', 'admin', '2017-12-20 18:59:06', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('87c0f6780082456bb7dafc12f8d0d7b3', 'admin', '2017-08-14 13:50:18', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('87c7f863a2e64c98a314d7f3c584f3ac', 'admin', '2016-06-06 02:27:47', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8805cafa85a24eacb40282a6514a92cb', 'yz123456', '2018-04-10 14:14:03', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('88225e6f5cb7481688fa086e6cbf6264', 'admin', '2017-08-14 11:50:39', '新增菜单订单管理');
INSERT INTO `sys_fhlog` VALUES ('882597f48bc0426f8fd7e3fec2c6bab0', 'admin', '2017-08-11 15:06:41', '修改系统用户：luopeng');
INSERT INTO `sys_fhlog` VALUES ('8839e150890242f49b1315b3b8922e17', 'csp', '2017-08-17 17:42:49', '订单确认预定{tm=1502962967028, ORDER_ID=20170816000001, ORDER_STATUS=2}');
INSERT INTO `sys_fhlog` VALUES ('88b82ac35f8242fbbff4968e9c1b6277', 'admin', '2017-12-02 11:01:43', '新增菜单系统设置');
INSERT INTO `sys_fhlog` VALUES ('88bfc51921df411ea341d5460add6e11', 'admin', '2017-07-04 14:13:28', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('88fd1d47bc574f909f4ee65d0793f546', 'admin', '2017-07-17 10:41:15', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('897bc4f849654ebcace7404aca8f3371', 'luopeng', '2017-08-14 15:26:54', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('898e55944e6f4ce181a4cb85837bd62a', 'csp', '2017-08-14 16:50:09', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('899dcc27544d4acdb09e1a0b558dee4a', 'luopeng', '2017-07-11 10:50:04', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('89c0a75e996b405faecd500d8b189020', 'admin', '2017-08-15 14:03:13', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('89c7168e287e476e806081acc7e1515b', 'admin', '2017-08-12 13:52:06', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('89f19626d82247619a4b1ff1a11e24a2', 'lisi', '2017-07-05 15:33:40', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8a489c6f614a4d46a0a3978e6ffcb5f2', 'admin', '2017-07-04 16:45:29', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8a9a3a3ce9a4445293fa45ebd29e94cd', 'admin', '2017-12-19 18:29:01', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8abf1c39672b412a87a53ae227de7e20', 'yz123456', '2017-12-19 10:40:09', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8ac01815c2d744108fb49169c1016390', 'admin', '2017-12-02 13:38:53', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8adb0e6b137547399ee64d44469ec885', 'admin', '2017-07-17 10:30:34', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('8adc06c998bc4073be885dad60917e0f', 'admin', '2017-07-06 10:27:21', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8aeb94545faf46c68d6f14cddd2c1786', 'csp', '2017-08-17 09:43:24', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8b21445a75594d61acfe47e1ef2c9b1f', 'admin', '2017-12-18 13:59:15', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8b283ef5dd30436da7896b7360234a55', 'admin', '2017-07-17 10:40:16', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('8b3489c554974981ae9b9a2c6e8f31b2', 'admin', '2017-12-15 16:28:11', '修改del_qx权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('8b441009d34e44f78cc1d3ecce24ae86', 'admin', '2017-07-10 09:10:35', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8b444b04ac6046f7a83b5118d2322d2e', 'admin', '2017-07-06 14:00:25', '新增系统用户：fanbing');
INSERT INTO `sys_fhlog` VALUES ('8b54ef8478ce488a97a4664ce84f97a8', 'w5', '2017-07-12 08:59:00', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8b5a1fb632e448cc8d5a291e50f371eb', 'admin', '2017-12-20 15:03:54', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8b863fbb82b34a588cc92626d1a9191d', 'admin', '2017-12-15 15:51:57', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8b944a7e42b241558968deece1677d73', 'admin', '2017-12-20 16:50:47', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8c270f0535af4bf3927e16f434fed49a', 'admin', '2017-12-05 09:51:42', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8c2d4f56600f4c56b74ffda2505871a5', 'luopeng', '2017-07-10 09:16:35', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('8c439eba22584fd69039c15fe4e5ce87', 'admin', '2017-12-04 14:26:52', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8c4d48e0c5d840b697cdd30dc4341bf0', 'admi', '2017-08-17 14:59:27', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('8c63c473447744fd9e006f47dc8c360d', 'admin', '2017-07-15 17:33:29', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8c8d9784e58e45668d42b67c9cb493b5', 'w5', '2017-07-11 17:24:38', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8c98ce6f1286451781717bea154334ec', 'admin', '2017-07-15 10:13:14', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8ce232b9dc1a4550a5ef60d206c0b205', 'admin', '2017-11-29 10:49:23', '修改菜单在线预约');
INSERT INTO `sys_fhlog` VALUES ('8d299168d96a403393795f7f2612fc81', 'admin', '2017-12-11 10:42:13', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8d2de39aabb84de88fff79ff136edcb9', 'admin', '2017-08-14 11:50:03', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8d2fda742b3044f88baf28aca32a1ffc', 'admin', '2017-11-30 16:10:29', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8d71b5fd06c14d02b480e145ba807a83', 'admin', '2017-12-19 15:52:30', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8d819ca907c247ddae6d00f70737df5f', 'admin', '2017-12-11 10:40:55', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8d9af4a3177d4f52a83c857541e34ccb', 'admin', '2017-12-01 10:18:15', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8dac8972a34444259d829f1033c907fb', 'admin', '2017-12-20 14:40:40', '删除系统用户：{tm=1513752040417, USER_ID=e29149962e944589bb7da23ad18ddeed}');
INSERT INTO `sys_fhlog` VALUES ('8dda9a9d65d84dd6adbb080a2c56e98c', 'admin', '2017-12-11 11:52:52', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8df353f324534455b72032507983670b', 'admin', '2017-07-04 15:13:08', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8e1cc118066b4f4cb1ccccb199eaafb3', 'admin', '2017-07-14 17:43:27', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8e2f8a1bc6fb41d4b13ddf73d9e9ff18', 'admin', '2017-12-02 15:25:57', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8e7e169e2b9a4b3c9435eb8170641008', 'admin', '2017-12-20 14:40:57', '删除系统用户：{tm=1513752057882, USER_ID=8bd9f3888cbd4409a663a32a50f60616}');
INSERT INTO `sys_fhlog` VALUES ('8eaec017b908435fae667c8255480655', 'admin', '2017-12-15 16:30:29', '修改del_qx权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d');
INSERT INTO `sys_fhlog` VALUES ('8ec6787755fe4e4981e008ee2120eb33', 'admin', '2017-12-19 15:27:35', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8eca65ebf3944131b52011f8fe598edd', 'admin', '2017-12-15 16:31:29', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8ed1f1bac59c4d7db13b698a792ecb8d', 'admin', '2017-08-12 11:11:25', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8efedaf570564757a0bedf7da5c4d7de', 'admin', '2017-12-04 11:24:25', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8f21bd005bbc483cb6bbe584d1c338cd', 'admin', '2017-07-05 14:50:23', '退出');
INSERT INTO `sys_fhlog` VALUES ('8f3c6e7296a446fb93f64d362fb205ff', 'luopeng', '2017-07-12 15:23:40', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8f725f0d67b0486f9fddc0e71234e492', 'yz123456', '2017-12-21 09:33:41', '退出');
INSERT INTO `sys_fhlog` VALUES ('8f76e293c670442ea574d85bb82afca4', 'admin', '2017-12-20 11:52:49', '退出');
INSERT INTO `sys_fhlog` VALUES ('8fa45d5981114fb2a7f2b3153039b076', 'admin', '2017-12-20 11:59:00', '修改角色菜单权限，角色ID为:de9de2f006e145a29d52dfadda295353');
INSERT INTO `sys_fhlog` VALUES ('8fafde4a4d164498a2f5ee7d786e1abe', 'w5', '2017-07-06 09:51:46', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('8fd348aeabda4518a440e32e5c5a00ff', 'admin', '2017-11-28 17:00:46', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('8fdbfd5a35e848e3a30cb0d6b8879368', 'admin', '2017-12-15 15:55:51', '修改edit_qx权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('8fe6f2d1889c4ac4a25d39e6bcf50e57', 'admin', '2017-11-29 11:38:43', '修改edit_qx权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('8fea5004074e4209834428fff987ab7f', 'admin', '2017-12-02 11:06:18', '修改菜单系统设置');
INSERT INTO `sys_fhlog` VALUES ('8ff777d1513e4c95956482117c30e7fb', 'admin', '2017-12-20 18:13:08', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('9045bfd01bcb46ebb090f1392c34ab2e', 'admin', '2017-12-15 16:28:21', '修改add_qx权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d');
INSERT INTO `sys_fhlog` VALUES ('905cadd055b847cb9dce295861a1dbf2', 'san', '2016-06-06 02:29:18', '修改角色菜单权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('90928b01bd72401280808879ac39ba94', 'csp', '2017-08-16 14:52:34', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('90a1a1d75c9f4b06a299574d8dbf39ef', 'admin', '2017-12-02 13:44:55', '修改角色菜单权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('90a2312507e340e2a1287c8db5e9b0f5', 'admin', '2017-12-02 11:02:01', '修改del_qx权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('90b335453772474b98fdead94df22e91', 'admin', '2017-12-20 14:40:43', '删除系统用户：{tm=1513752043018, USER_ID=e6314055d8ce40b1810bf18f45c00fcd}');
INSERT INTO `sys_fhlog` VALUES ('90fa480e7fbb4577b52cbdcedebb1c73', 'admin', '2017-11-30 17:45:08', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('90ff189ed275494a97f299a8c2804441', 'dfs', '2017-07-04 14:56:58', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('910a77023ff14c7098f90765b0b6c6be', 'luopeng', '2017-08-12 09:22:01', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('91208c1e150a4c799bf0cab59fd9e910', 'yz123456', '2017-12-21 09:32:40', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('91506fbf5f80497092b68c37f0b14340', 'yz123456', '2018-01-08 09:41:41', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('915f17d1c7d24fe4b27695d38ba441e8', 'admin', '2017-11-30 17:14:40', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('9162664bd18748bc9ee0cc7d2ef1374d', 'admin', '2017-11-29 14:05:32', '退出');
INSERT INTO `sys_fhlog` VALUES ('918e204852f64babb2beb64a926c56c4', 'admin', '2017-07-05 15:23:42', '退出');
INSERT INTO `sys_fhlog` VALUES ('91ab39fb72de4c9a94c74bbb29bdf086', 'admin', '2017-07-10 18:19:15', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('91fb9f7da6284625a9e3c2aef60714fc', 'admin', '2017-12-04 14:28:53', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('91fda1a0525a434b98dedf11809417ba', 'admin', '2017-07-05 16:33:37', '退出');
INSERT INTO `sys_fhlog` VALUES ('92049795823748c9b0a65bfd3de21ed9', 'admin', '2017-12-01 11:29:40', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('92451fb3a3064552b59a06ffcc32bcd5', 'csp', '2017-08-14 17:40:47', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('9278e3b35b3e420e94f7de99a13b80fe', 'admin', '2017-12-11 13:55:00', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('92deb6a54c524d1aa5713355b04572bf', 'lisi', '2017-07-11 09:18:58', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('92f507adb7274f36a45a24d4b54780a2', 'admin', '2017-07-17 10:41:17', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('93037641fd7242bcb33edcc71d1f9d59', 'admin', '2017-12-20 14:40:51', '删除系统用户：{tm=1513752051632, USER_ID=e128d0b8807b4a128d6390c44a6accef}');
INSERT INTO `sys_fhlog` VALUES ('931bf873b6c44693811ec7374f978162', 'admin', '2017-12-02 13:44:48', '修改edit_qx权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('9353a6d310864f1283b4bab9968d5409', 'admin', '2017-12-15 15:55:21', '新增菜单技师订单详细');
INSERT INTO `sys_fhlog` VALUES ('938e2df380744f35998f13533c2965a0', 'admin', '2017-08-15 11:40:48', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('93ca158c24a046fba4a4d1a5b9ad9a7d', 'admin', '2017-12-15 16:29:05', '修改角色菜单权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('93e722e705d545a4a163de89370255d0', 'admin', '2017-07-17 10:41:16', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('9411b1992eb74a38a184a4a79f8d7cfa', 'luopeng', '2017-08-15 15:09:47', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('946a8acf5f86488cbc4c2cbe887f2d6d', 'admin', '2017-12-05 10:31:38', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('946d4863009a483388dc410d32c0270e', 'luopeng', '2017-07-12 11:56:19', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('94ae568ddedd4c1299ba63deb233e748', 'yz', '2018-04-10 14:14:39', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('94cd3e4695264f22abae94a1ebc2d2a1', 'admin', '2017-12-15 16:08:24', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('94feeb11b5964060b5b9016aa12f662a', 'csp', '2017-08-14 17:21:27', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('950919de8bab413abafdece911f7cb49', 'admin', '2017-12-07 09:30:56', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('957203924f1b4560baf943d03c856471', 'admin', '2017-12-02 10:22:56', '修改del_qx权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('9593d64de9134b3087aba5e62ea9495d', 'san', '2017-06-29 14:24:11', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('9595d51af1fd42f19a7edb55e418facc', 'admin', '2017-07-04 15:10:05', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('959a1dd4f43f4da8ab9f221574498101', 'admin', '2017-11-29 14:03:53', '新增菜单拼购');
INSERT INTO `sys_fhlog` VALUES ('95ae7c86a5c945079e8e21fd46d8ffd8', 'admin', '2017-12-01 11:40:23', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('95f8efe93c09459da974bb29363b8892', 'luopeng', '2017-07-12 10:03:05', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('95fc895a224c46dea843d12589a4717a', 'csp', '2017-08-14 14:23:03', '退出');
INSERT INTO `sys_fhlog` VALUES ('967a8e94f517434582fe2340999a932b', 'admin', '2018-04-16 11:04:41', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('9684463b8ba04f4a9c369a24905f81f2', 'admin', '2017-11-29 16:45:59', '修改角色菜单权限，角色ID为:1');
INSERT INTO `sys_fhlog` VALUES ('96baa8272b1a415b9d2ae1bc643d6090', 'admin', '2017-12-05 09:32:10', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('96cfaf4128f64361a127ac9496667f94', 'admin', '2017-12-02 09:44:11', '修改菜单会员管理');
INSERT INTO `sys_fhlog` VALUES ('96d65ccc5ca440bbb3db3dc6f39814b1', 'admin', '2017-12-20 14:41:00', '删除系统用户：{tm=1513752060316, USER_ID=065202edd0cc44188e9c59c07b4742e1}');
INSERT INTO `sys_fhlog` VALUES ('97129287ef104a5ab2c6f0a8261e6927', 'admin', '2017-12-02 13:34:36', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('9732736f353141f7bdcead5e6a20bfb0', 'csp', '2017-08-21 14:38:12', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('9768fdb6b77a4b26a3b0e2b87cf2498b', 'admin', '2017-12-02 15:31:16', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('9772f62f8b3a4932a3aa1cf2c0d91c98', 'admin', '2017-12-18 16:03:33', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('97ba2d0636ac47f999865a3bcc1096e5', 'admin', '2017-07-17 10:41:16', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('97bb670d3ccf4b88a4af925196a1a312', 'admin', '2017-07-17 10:40:16', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('97bf1e2bf2804800b5783b93313e3257', 'admin', '2017-08-16 10:24:04', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('97c5060cb42b423d9a9291351c65f81c', 'admin', '2017-12-04 14:03:51', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('981911a909ea492aa794c33ab46883d0', 'luopeng', '2017-08-14 17:31:58', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('981a2846032f4141ad15866de7cda051', 'admin', '2017-05-02 14:11:51', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('98570bd37cd847bea1061b11ec17a0ae', 'admin', '2017-07-17 10:39:53', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('985b6c0a4692449f8c8003d80de8da2a', 'luopeng', '2017-08-14 15:53:26', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('986846f3648e419c9d513f12c3607612', 'admin', '2017-07-05 15:30:33', '退出');
INSERT INTO `sys_fhlog` VALUES ('9876e3cbea634968bf80bf94fb8c58bc', 'csp', '2017-08-17 17:25:16', '新增按钮权限pd{guid=1502961916308, BUTTON_ID=03eff82bae1c4a8aa809b9bbe7c9e980, RB_ID=9cf9f6a047f14353863b623603a1413c, ROLE_ID=3264c8e83d0248bb9e3ea6195b4c0216}');
INSERT INTO `sys_fhlog` VALUES ('988b993922714b5c8a155d76dd932fc1', 'lisi', '2017-07-06 09:42:15', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('988f0ebe1e534bcfbfcba41130715559', 'admin', '2017-08-14 13:44:41', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('98acea0b7c174726b56aac2bcddab2d9', 'luopeng', '2017-08-15 09:40:14', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('997074a0b62b476cbed0af7353213ead', 'luopeng', '2017-08-15 15:09:48', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('99719e513d06467ab9450b4ac576f932', 'admin', '2017-07-19 14:06:39', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('99a3dd7a1ab548829dd85decb9d9e4b9', 'fanbing', '2017-07-05 17:47:49', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('99b9555245494f2aaf7dbfdcca6410e6', 'admin', '2017-11-30 14:51:44', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('99e8fc22c9c245ec8d9b2fa5376694ac', 'admin', '2017-12-12 17:32:50', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('99f13e1f734444ce85364af12abf787b', 'csp', '2017-08-16 10:16:49', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('9a126a431ad84e77b7e71368c44b662b', 'luopeng', '2017-07-12 15:08:16', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('9a1cb757d40847a3bae525754b38cc39', 'admin', '2017-12-20 11:57:54', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('9a3a5c7900c448f2b26600450c446f8a', 'admin', '2017-12-20 14:40:21', '删除系统用户：{tm=1513752021147, USER_ID=280417faf62348ad82de85fa82206c85}');
INSERT INTO `sys_fhlog` VALUES ('9a3d76530efb4b7a834a990486422d51', 'admin', '2017-11-29 16:40:51', '退出');
INSERT INTO `sys_fhlog` VALUES ('9a8090240b2a4068a2c66c42eac520c0', 'admin', '2017-07-04 15:06:41', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('9a972b7bca3346968649740bff62cbee', 'admin', '2017-11-30 18:46:15', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('9aaf649489e044288cf20e3fb4fa5da7', 'admin', '2017-12-15 16:38:30', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('9b01cd7f26984b9e8fc6fa3a4030ea8e', 'csp', '2017-08-15 14:38:16', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('9b10b8698fe44a1e91dd9442d1f73d1c', 'admin', '2017-12-19 16:01:44', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('9b812e6e2461441eb7f6de3c414d2107', 'luopeng', '2017-07-12 14:59:00', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('9bcf7480c5374a8baa65c004d54229be', 'csp', '2017-08-14 14:36:37', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('9be2430626ce4915a9b3553357cfc9a4', 'admin', '2017-07-17 10:39:37', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('9bfb192babef41348cb2eb5767c27f28', 'admin', '2017-11-29 11:38:32', '修改add_qx权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('9c25d6adc9304ee89e36048fd4685679', 'admin', '2017-08-16 09:06:11', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('9cb9c3b973004dffb3af45bdea22bfcf', 'admin', '2017-12-05 10:48:14', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('9cf8a1339e6a419cb5aab16c6f936fa2', 'yz123456', '2018-04-11 13:18:31', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('9d03dbcfb55e4d35acc139f2a782621e', 'admin', '2017-12-20 14:04:06', '修改角色菜单权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('9d54a1409ca24a54b32473bc26bf2f66', 'admin', '2017-08-14 17:55:58', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('9d6618698d314e4a9167480bae394c50', 'admin', '2017-11-28 17:09:24', '退出');
INSERT INTO `sys_fhlog` VALUES ('9d6a42ccb0d245cd9f6f0f95782048d3', 'admin', '2017-12-02 10:05:09', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('9da86c757b24482692ac66f4e23a195a', 'admin', '2017-12-15 15:46:28', '修改菜单订单记录管理');
INSERT INTO `sys_fhlog` VALUES ('9de1887e29654809a44720a6bff05d0a', 'admin', '2017-08-11 14:19:42', '删除菜单ID23');
INSERT INTO `sys_fhlog` VALUES ('9e9f42ce984e4a29902b1637d2a85f5a', 'admin', '2017-07-17 10:40:16', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('9edb12bd8bd649dd9b34397b7b06ae2a', 'san', '2017-07-05 15:43:44', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('9eff36cc5bb246bd8eb165f324101c79', 'admin', '2017-07-04 16:52:56', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('9f2bacaa1a2e4b469b61d36f696ed014', 'admin', '2017-12-20 19:07:45', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('9f96dbc259644738b00e065513316cb4', 'luopeng', '2017-08-14 17:40:47', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('9f97f5dd68e4418890336268704a5445', 'csp', '2017-08-14 16:27:20', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('9fa4553bd5a542908e3ba2c43ed011d9', 'admin', '2017-07-05 14:56:30', '退出');
INSERT INTO `sys_fhlog` VALUES ('9fc1231a98914c2c8854117037a9ad56', 'admin', '2017-07-07 09:18:27', '修改系统用户：lisi');
INSERT INTO `sys_fhlog` VALUES ('9ffadb903de742b6a917dd5e67cb709b', 'admin', '2017-12-12 18:29:29', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a01b88d9fa5e4187a169cab4578cdc72', 'lisi', '2017-07-05 16:36:29', '退出');
INSERT INTO `sys_fhlog` VALUES ('a0369054de0146208b8cb9115b6e6f2d', 'csp', '2017-08-14 17:50:15', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a0509b08f28146ed962945b2b75f304e', 'admin', '2017-06-29 14:25:09', '新增按钮权限pd{guid=1498717508714, BUTTON_ID=4c7f34b9eed54683957f356afcda24df, RB_ID=96100cb325bc44a38918aff3a9818268, ROLE_ID=3264c8e83d0248bb9e3ea6195b4c0216}');
INSERT INTO `sys_fhlog` VALUES ('a07f7d93b99a498c9b6bfa32f9409591', 'admin', '2017-12-05 15:04:26', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a0913afc14014fa887e2a70feb7ab44d', 'luopeng', '2017-07-12 08:56:58', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a0ac6312d8a44a94b03e52dae8099652', 'luopeng', '2017-07-12 13:58:17', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a0b063a3c18141c4a84100eae4b37489', 'admin', '2017-07-17 10:39:55', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('a0ba257fe84e4d419c7b40963ff4df45', 'admin', '2017-08-14 14:41:05', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a1010f1b7b224eaba8100ba3d0a78c3b', 'admin', '2017-08-17 14:02:36', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a116e106432f475ca24884c278790251', 'csp', '2017-08-14 14:16:30', '退出');
INSERT INTO `sys_fhlog` VALUES ('a128ee7638634e3389ebb14bf3339314', 'admin', '2017-12-19 18:18:20', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a13b24496d514414bb6f119477cf852c', 'luopeng', '2017-07-12 09:56:04', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a16466602bca4e83a4ddf4ed5f39e6b0', 'admin', '2017-12-19 14:15:36', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a169982fd72d416fa5c525361b91f3a3', 'admin', '2017-07-24 15:01:37', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a177375543e04a5eb9c3d09dac5ca84e', 'csp', '2017-08-16 16:45:07', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a1afc29ce6ce47648146aba968976bfc', 'admin', '2017-12-20 10:49:41', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a1d54744e10f4eab8ff54669aabc6df5', 'admin', '2017-12-05 10:55:20', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a1df7cc2d47048a4a75d44947bd903fb', 'admin', '2017-12-18 14:04:59', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a1e23757805b4d9a9a4bd5f238feefee', 'admin', '2017-12-18 15:05:38', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a2272ca8424f40ae9bf5c91420ed6840', 'csp', '2017-08-15 17:12:28', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a29e258f132145f8ad2864af6207d157', 'admin', '2017-08-12 14:18:13', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a2a65abef43649dfa7ed245633a35910', 'admin', '2017-12-21 10:02:01', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a2acd70ee4174708968ea390384c9688', 'admin', '2017-12-19 14:30:09', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a2c457a653e247d48d2590b294c91a2f', 'admin', '2017-06-06 09:48:07', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a2d185c09cb6417a897b8db14f5f4aff', 'admin', '2017-11-29 16:49:02', '删除菜单ID186');
INSERT INTO `sys_fhlog` VALUES ('a2fba3fcf31d4be8a3f9f2aabb2a149d', 'csp', '2017-08-14 16:53:37', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a308ddf4fed04f6dbbe9a3a7e4dd8afa', 'admin', '2017-07-05 15:27:41', '退出');
INSERT INTO `sys_fhlog` VALUES ('a313dd8adbdb418b8e47799afe0368b8', 'luopeng', '2017-07-11 18:15:16', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a33fb022028240b0b1adabfc0bb2cf23', 'admin', '2017-07-05 15:23:09', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a3585a5e2e204b78921ea8c3d77e2b0c', 'lisi', '2017-07-05 16:35:17', '退出');
INSERT INTO `sys_fhlog` VALUES ('a3b838237cc842818bcadff494739fcc', 'admin', '2017-12-19 16:09:10', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a3dcc1edc45149c7b3eadf158d2c71e3', 'admin', '2017-12-18 15:22:56', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a425a9374bb14be6957075438b77154a', 'admin', '2017-08-15 18:29:18', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a425d40667244061bd560616a4f992e0', 'admin', '2017-12-04 10:44:53', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a44c3e5db68d4bdfbd19c09cb850cd88', 'admin', '2017-11-29 16:49:05', '删除菜单ID185');
INSERT INTO `sys_fhlog` VALUES ('a45aa7fe206f41e6bd44f0939d244a13', 'admin', '2017-05-22 17:58:07', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a45cd41dbba04858a82becba0ea151db', 'csp', '2017-08-14 13:55:25', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a4d0827367504e6995195eab8a23d685', 'admin', '2017-08-15 10:51:56', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a4ec4803788a4dcc99ae8d1df2d3481e', 'admin', '2017-07-29 09:32:15', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a4efc13af5344503844bacdac43f944f', 'lisi', '2017-07-10 09:11:47', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a50cee1dcd0044aba57d4f017106be44', 'chenshipeng', '2017-07-04 14:52:37', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('a5160e1994b64cfc98d1872869eb5f50', 'admin', '2017-08-15 10:51:56', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a535100cdc944b78b9d6b899148eec05', 'admin', '2017-12-12 17:34:53', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a540c1facc32477cb79c588b34e4af22', 'san', '2017-06-06 16:06:49', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a58d048839ce420b9349ba38a425ced0', 'admin', '2017-12-19 15:41:37', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a5c16071503948cf93e8b5d29821846b', 'admin', '2017-12-19 10:57:59', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a5fd174084204f93b54abdfa4c86f6d4', 'admin', '2017-12-05 10:09:56', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a62f741b174b43319b96f8ca998b3e0b', 'yz123456', '2017-12-23 14:01:47', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a64f6e13898c43fc8c0997c4b28e84c9', 'admin', '2017-08-12 10:48:19', '修改add_qx权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('a65a18d7eb58469cb831ef90745d6ec1', 'luopeng', '2017-08-16 09:13:45', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a688d42cb64d4db39234b9aca877c2d4', 'yz123456', '2017-12-22 17:42:10', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a6b30878361c4975803c96fff7e349e3', 'admin', '2017-12-19 11:50:23', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a6ec2ae5aca1431bb3b8eb6dde55c9a7', 'lisi', '2017-07-05 16:36:27', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a716069375a54ef2aa4c94be1d36384a', 'admin', '2017-12-02 10:37:03', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a72da0e28466474c9c4ff3bda14641a3', 'yz123456', '2018-01-08 19:52:55', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a77a88ba2df6435c9d964bfe8504f447', 'csp', '2017-08-17 17:21:15', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a7a61e7eb10d4ef691dd6dacc7204d47', 'luopeng', '2017-08-15 15:09:47', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('a7b6f4e0072a44e088e6d1b6ec7345b6', 'csp', '2017-08-14 15:50:58', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a832cb25226446169ac94151b2c01f57', 'admin', '2017-07-07 09:05:25', '修改cha_qx权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('a843e508647d4163a768b6dee12d78b0', 'yz123456', '2017-12-13 09:35:14', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a913ea40db394978a24425f629b0cffd', 'admin', '2017-12-05 11:11:40', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a917d25afe6041f9892d12a28dd87c13', 'admin', '2017-12-20 15:06:52', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a9310b52b9aa48ea925fe38c1d6e723e', 'admin', '2017-07-28 11:26:23', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a9dfb0c6215241ab8013bd766f76c76b', 'admin', '2017-12-04 09:50:14', '修改角色菜单权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('a9ea348832c141a9b9ccbfff76955b5e', 'admin', '2017-08-15 09:31:32', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a9ebb93412904743a54aaaa6391a3216', 'yz123456', '2017-12-22 16:34:22', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a9eda360a91b418ea8c7abf179fb6604', 'csp', '2017-08-15 16:08:25', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a9f522cdf8ef491193e496f7a6480b86', 'admin', '2017-12-01 18:07:08', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('a9fcc6eb5b3443bba0ce64f65dfd75bc', 'w5', '2017-07-06 09:49:36', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('aa3df885de7f4d7a8a30d689560bca94', 'admin', '2017-11-29 15:24:10', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('aa481ef0d4d444bf8ca9882e6b1ddda3', 'yz123456', '2017-12-22 16:25:05', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('aa61e0d0273c4a5382a6b5c64c0fce42', 'admin', '2017-12-18 15:57:13', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('aa97b8f1c3384ae7a4e2ccd825b07664', 'admin', '2017-07-28 11:26:59', '新增系统用户：yandan');
INSERT INTO `sys_fhlog` VALUES ('aab15fb8f89345dba946dbcfbe2dab3f', 'admin', '2017-12-04 11:58:11', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('aac2c35a7a284e49b4e286e5e6159bbc', 'admin', '2017-12-02 10:39:27', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('aad3a0e8dc744d169725c53edcebaadd', 'admin', '2017-07-05 17:19:11', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ab08268ea30f4f4997fa9f4ee53be103', 'admin', '2017-07-04 16:11:42', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ab2a8670dc4f48bb876b5ddac17d71d0', 'admin', '2017-12-20 14:04:26', '修改del_qx权限，角色ID为:3');
INSERT INTO `sys_fhlog` VALUES ('ab4fdfb608a94429878fa221df44cf99', 'csp', '2017-08-14 17:47:00', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ab704471b9be4e93a2cff3794036da98', 'admin', '2017-12-19 15:44:22', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ab81fb6ea1f4407c84bf40403c7532bb', 'admin', '2017-12-15 16:30:10', '修改add_qx权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('aba81d58b30e41bda9d2175de604386f', 'csp', '2017-08-14 14:21:56', '退出');
INSERT INTO `sys_fhlog` VALUES ('abbe2cef4e8a4bc7aeaa0c799033f598', 'admin', '2017-12-01 11:35:57', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('abc32541e6ac4e22866cba75c2871aa9', 'admin', '2017-06-06 16:05:09', '修改系统用户：san');
INSERT INTO `sys_fhlog` VALUES ('abe68144b2114eda8f51c45da8573df7', 'admin', '2017-12-12 18:32:33', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('abe71b7fab2444d3bd7e19208fc003f5', 'admin', '2017-08-15 16:09:56', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ac7c98b6464a456ea1c9b32c480802b9', 'admin', '2017-07-05 15:28:50', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ac906f54b6ba41269e6e001ec3fb031d', 'admin', '2017-12-13 13:59:13', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('acf8a746149c4490a206995a67d59745', 'admin', '2017-12-04 15:51:40', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ad0ce51b305d405cb2c8c835cfe02e6c', 'admin', '2017-12-02 09:46:47', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ad1db1d2ad3144c59a495fee68dc1045', 'admin', '2017-11-29 16:50:17', '新增菜单技师管理');
INSERT INTO `sys_fhlog` VALUES ('ad6bd60eae9745138111a5e5913d2b78', 'admin', '2017-11-29 15:18:16', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('adbef84d123b4a7ebf1fa5ee6517431a', 'admin', '2017-12-04 15:49:16', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ae37224491694db3a498ac96b47a8012', 'csp', '2017-08-15 14:29:19', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ae3e329b9b2140038753ff7a1fd0d820', 'admin', '2017-05-11 11:32:21', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ae5641393b8e4af283e26b196a416cdf', 'luopeng', '2017-08-15 15:13:26', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ae5df53087ac4d808c72a1491e12a5d4', 'admin', '2017-12-12 18:36:32', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ae70b1e33dc34516bb06a3a69cfd58cd', 'admin', '2017-12-20 14:40:49', '删除系统用户：{tm=1513752049094, USER_ID=69a8805832814c78b61563b6e787bd40}');
INSERT INTO `sys_fhlog` VALUES ('ae8bb54994ef4b22b71f93fa6d24b286', 'admin', '2017-11-29 14:05:46', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('aec97d0b55ae49248651b29841023f51', 'admin', '2017-08-15 18:24:41', '退出');
INSERT INTO `sys_fhlog` VALUES ('af094e58336849969d65076f17319106', 'admin', '2017-12-11 10:15:08', '修改角色菜单权限，角色ID为:1');
INSERT INTO `sys_fhlog` VALUES ('af41162788a64654a2b6456f8604a581', 'admin', '2017-07-17 10:41:15', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('af4aee65e0f14c869db350c4bd4c1bf7', 'admin', '2016-06-06 00:15:44', '退出');
INSERT INTO `sys_fhlog` VALUES ('af674f92711649d7b0e361e772be6986', 'admin', '2017-12-18 11:32:23', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('af9599c4600b497ebab544ad395493d3', 'w5', '2017-07-12 09:49:20', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('afcc9aaf3c9d456a89a56d71ce310f7c', 'admin', '2017-12-04 10:44:53', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('afd47e3ea60f4850ad795d8a817a338e', 'admin', '2017-11-29 16:04:20', '退出');
INSERT INTO `sys_fhlog` VALUES ('b060738994f240069444e565476c1f14', 'luopeng', '2017-07-11 17:51:25', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b13152db90c44a7ebad0a23b6dd2554b', 'admin', '2017-12-19 16:34:23', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b14f31dccf8e42beb02dbd51e46c75d7', 'admin', '2017-12-04 17:55:13', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b1d1e6fa15354735966d95887eee041c', 'admin', '2017-12-19 11:52:13', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b20b770e361a4c67b410ecee04571cc7', 'admin', '2017-06-06 16:07:50', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b23dfd6995d044f18ceab15bc9777721', 'yZ123456', '2017-12-19 10:31:31', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('b24a9b4a1d504ea6a77e7880576a6118', 'luopeng', '2017-07-12 16:59:21', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b2657c393e0a41fd8365f4a48a6f79ac', 'admin', '2017-08-14 16:29:20', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b2766a49110f4807af7a0bb75d7b4149', 'admin', '2017-12-19 17:07:17', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b2a172466c3f408d9e2f3e9921d1de82', 'luopeng', '2017-08-15 14:07:22', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b2cbebe2b0174d609ba8806753bcfeda', 'lisi', '2017-07-07 09:46:00', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b2e1350c9be94c1aa690b4338c203d19', 'admin', '2017-12-05 11:32:58', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b31487d01d814e5fbbbd706e78e76ecd', 'chenshipeng', '2017-07-05 15:41:54', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('b31c01d6b1ed4ebb8835a7b01ffe2704', 'admin', '2017-12-11 10:23:15', '修改角色菜单权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('b3414996e7d44a73ac2597c0a1859440', 'admin', '2017-07-05 15:29:48', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b349e89987904505b15ee136bf7d3303', 'luopeng', '2017-08-15 09:46:41', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b3604dd486a1457fb8f06249d07edf8b', 'admin', '2017-12-15 16:28:16', '修改cha_qx权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('b37633d7657045c9881d60702809871b', 'admin', '2017-12-02 11:08:23', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b3881894fddd4c10a2a4a45a4a8a3021', 'luopeng', '2017-07-12 09:20:11', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b396eb4b8f8c4935b1b553f796d0fba6', 'admin', '2017-07-05 17:32:56', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b3d79d8b84af46c6ae618b830b3a57f0', 'admin', '2017-07-06 17:54:49', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b3f96dc315bc43aca3ed58b403c3cea1', 'admin', '2017-12-04 09:50:52', '退出');
INSERT INTO `sys_fhlog` VALUES ('b42baeee24904d078a93164354131fc0', 'luopeng', '2017-07-12 13:56:44', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b43f0f8ffcc14efc97e606f56caef123', 'admin', '2017-08-16 11:57:12', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b44137e1cb3a46cc9d19f115292713c4', 'admin', '2017-12-05 10:39:44', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b467ee22253047d79e1c6e63ca0c79fb', 'admin', '2017-11-30 19:19:38', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b467fc65a5eb412da65ac344421cb2a3', 'admin', '2017-07-17 10:40:17', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('b483e65cecad444e8a50f204895807da', 'admin', '2017-12-14 09:31:15', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b48d24df9155480eb32b116a68ba99fd', 'luopeng', '2017-07-12 16:24:03', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b4ba2dd696a4464c91db5528c88e96e6', 'lisi', '2017-07-06 09:32:35', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b4dcdeaf17d94aa1a7d93e25f50f059b', 'admin', '2017-08-16 11:17:43', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b4f4a048972445b5bf3f76f2e5f52833', 'admin', '2017-07-07 11:27:28', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b4fa0afb39b94607bc8cb67f68c716fa', 'admin', '2017-11-29 15:56:41', '新增菜单积分');
INSERT INTO `sys_fhlog` VALUES ('b50d6874fe3e437f8d4eccf5deb98595', 'w3', '2017-07-17 09:34:29', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b59b8fdcd93e4ade9dc3ef067ef45410', 'admin', '2017-11-30 17:26:53', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b5c4b7d3e0004ba78daee3eb2de1ec25', 'csp', '2017-08-15 15:41:53', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b621d805c2894737af87b359c00d71da', 'admin', '2017-07-06 16:34:44', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b62f0ebbc7804635a0248a6799743d02', 'admin', '2017-12-20 14:51:11', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b66b013d87c74b0e909a12889b42f07a', 'admin', '2017-12-20 18:49:28', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b67db6bed2dd4403986333dc701cccca', 'luopeng', '2017-08-14 15:00:28', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b6a8eed047234f0381bca97d5ec7e593', 'admin', '2017-12-20 14:41:03', '删除系统用户：{tm=1513752062945, USER_ID=456a34455b1241ebb7c373e4a245694c}');
INSERT INTO `sys_fhlog` VALUES ('b6ce116d679242eaa1d124615fc8d490', 'admin', '2017-12-19 13:35:35', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b6d0335802cb44ae990c9888072a1da9', 'csp', '2017-08-17 17:25:13', '新增按钮权限pd{guid=1502961913180, BUTTON_ID=b54c399d72ff4528beaeff82d2f48f5c, RB_ID=e593aa2a633447b3ba4f864290672967, ROLE_ID=3264c8e83d0248bb9e3ea6195b4c0216}');
INSERT INTO `sys_fhlog` VALUES ('b705cc7625fc4c33b86d815df7470ad0', 'admin', '2017-12-19 16:57:36', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b7ae83eb55474e5ead54f842f9e9521b', 'yz123456', '2018-01-31 15:01:34', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b7cd77892cce4b1c84d724aa9be0d692', 'admin', '2017-12-11 14:37:43', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b7d61dc8d36a47ec8c1f0aa15ea3eef0', 'admin', '2017-07-17 10:39:34', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('b7dd69d21af643efaa185cb3a73cb417', 'admin', '2017-07-12 09:59:28', '退出');
INSERT INTO `sys_fhlog` VALUES ('b7eca368af0b42bcbeace35a40f3f94c', 'admin', '2017-12-02 10:54:26', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b7f52c5ceec347a096a82d3712a6614a', 'admin', '2017-12-12 17:29:11', '修改cha_qx权限，角色ID为:3');
INSERT INTO `sys_fhlog` VALUES ('b818b623e88843369b350caa1ed1ae15', 'lisi', '2017-07-17 09:34:00', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('b826a5863e234e0c8c986247cacad29e', 'admin', '2017-11-29 16:40:24', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b849ecc60ea7422f8d067e8fb572ee7a', 'admin', '2017-07-06 16:54:32', '退出');
INSERT INTO `sys_fhlog` VALUES ('b8627acd36044605a7587594e5f3f796', 'san', '2017-07-05 15:34:40', '退出');
INSERT INTO `sys_fhlog` VALUES ('b87302b8449146e19ac18852243f774e', 'admin', '2017-12-01 11:39:17', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b8747e74285c4ca4afed265560a02444', 'admin', '2017-12-20 09:25:06', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b8af1e6d2e7946f68dd9e454067d3e86', 'admin', '2017-08-14 17:16:06', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b8e83b6fc33345598f63575e5ec65835', 'admin', '2017-12-08 09:32:57', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b8ff7693cf5840e88020708adf0323ec', 'admin', '2017-08-12 10:33:14', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b91d8d78cf164976a5c40ea47f0d9fdc', 'admin', '2017-12-20 16:37:14', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b9267c58160045bc8811d149114243d8', 'admin', '2017-07-05 17:30:25', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b93ef0d6b090446192d549589592eed7', 'admin', '2017-07-10 15:20:48', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b95ce250491043dbbe010aadc99cd28a', 'admin', '2017-07-17 10:39:53', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('b99eedb70921492cbf2ec59c264e4407', 'admin', '2017-07-12 09:15:18', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b9b44813b8d74a8ba53a6027d0e1641f', 'admin', '2017-12-04 13:54:33', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b9c567bbf1f542a98f296167302f0a5b', 'admin', '2017-12-02 09:45:38', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('b9dd294da9f648fd8a7a5bf21275a681', 'admin', '2017-11-29 14:06:19', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ba0af40db72a4193bdb8bd33f3c15ab8', 'admin', '2017-12-20 12:48:56', '修改系统用户：yz123456');
INSERT INTO `sys_fhlog` VALUES ('ba20303d2fe945e2bbbe955097fc6661', 'admin', '2017-11-29 10:34:16', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ba448cbb0dcd449e9e068b4e053f2f18', 'admin', '2017-12-02 11:05:33', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ba66e134c35e4abc8337c0d32cb44eae', 'san', '2017-06-29 14:25:57', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ba70c4e3cce145f2ada492d81f4e11cb', 'admin', '2017-12-15 15:56:09', '退出');
INSERT INTO `sys_fhlog` VALUES ('baa538e6a1c146b9bba9968d7ba0278e', 'luopeng', '2017-08-16 09:14:03', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('bab091d7b30b48fdbff47b76cdb043b0', '999', '2017-12-20 18:29:58', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('badaea33197d484aa773668b63a4fa0b', 'luopeng', '2017-07-12 16:12:43', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('bafc7548bca2403c9fbddeee2fc971e3', 'admin', '2017-12-11 10:23:06', '修改edit_qx权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('baffe8892b64493f920e69db7eb3d822', 'yz123456', '2017-12-21 09:58:42', '退出');
INSERT INTO `sys_fhlog` VALUES ('bb5673db79b44cd88dbdf94f583c4ce4', 'admin', '2017-12-13 13:59:48', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('bb69eaa5f6ac4254baea5582697cbf05', 'admin', '2017-12-11 10:24:15', '修改角色菜单权限，角色ID为:1');
INSERT INTO `sys_fhlog` VALUES ('bb70077fe85845d79a4f3b58d7e8b789', 'luopeng', '2017-07-29 17:37:27', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('bb7b7fadaf5244dd8148ec15a5473bca', 'admin', '2017-12-15 15:50:29', '新增菜单抽成管理');
INSERT INTO `sys_fhlog` VALUES ('bb8c4c9a450641aa8d077ac2b10cccff', 'admin', '2017-07-07 09:04:49', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('bbc4f12ed82d458082ba6b24d0f42f26', 'admin', '2017-11-29 10:53:12', '新增菜单拼购');
INSERT INTO `sys_fhlog` VALUES ('bbde1659aab14f18a06ea03f44276696', 'san', '2017-07-05 17:26:47', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('bbf1ef7ff031448b9875d8dddb6fe1d5', 'lisi', '2017-07-10 09:10:25', '退出');
INSERT INTO `sys_fhlog` VALUES ('bc2daf8ed03a454a88202f4590c4870c', 'admin', '2017-12-19 19:18:00', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('bc32dc696c834250bf1db679265920b5', 'luopeng', '2017-08-15 09:53:50', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('bc365dbb6eb54a58b0d6b057fcf14be7', 'admin', '2017-12-15 16:28:14', '修改edit_qx权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('bcaa6e701a6d47aa831f476305e2cf4c', 'admin', '2017-07-29 11:38:21', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('bcabda92dc9846a5b468480906effbcc', 'admin', '2017-07-17 10:39:54', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('bcccf76575844fc3b32c0e8c73b06f6b', 'luopeng', '2017-08-15 09:24:13', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('bcd73070704345998953ca2709aa04f0', 'admin', '2017-12-20 14:40:17', '删除系统用户：{tm=1513752017821, USER_ID=151aeac5570e4059b06329b65095f6a6}');
INSERT INTO `sys_fhlog` VALUES ('bcd7e25faa9c475c9a50b8278b0bb047', 'luopeng', '2017-08-15 14:11:17', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('bce019ea089e4c0a8291545d8215c104', 'yz123456', '2018-04-10 14:13:41', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('bd0456be72224d899702d99c567c04f8', 'luopeng', '2017-07-10 09:09:49', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('bd25e8bd802440ff9bc6c28574f1bdab', 'luopeng', '2017-08-14 15:26:46', '退出');
INSERT INTO `sys_fhlog` VALUES ('bd2c24b8c3044fa9a0a7b7ba28880324', 'admin', '2017-12-02 10:29:16', '修改add_qx权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('bd30d4d9666d40e4b47212a63b836c67', 'admin', '2017-12-19 17:54:03', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('bde44c9c65a84969a5cc198a47698b49', 'admin', '2017-12-11 10:23:01', '修改cha_qx权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('bdf33e594d324841ad6325fa2cc86e76', 'yz123456', '2017-12-13 10:15:54', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('bdfe406f96f44ae5833b07710210a866', 'admin', '2017-12-19 18:34:34', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('be1e0b143deb40bfa048e4c95c666f45', 'admin', '2017-07-10 15:04:41', '修改cha_qx权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('be287c1c3bf0493da0b358857b7c386b', 'admin', '2017-12-21 09:35:37', '修改角色菜单权限，角色ID为:de9de2f006e145a29d52dfadda295353');
INSERT INTO `sys_fhlog` VALUES ('be2fc22d19ff4eaebead79d3e2e72421', 'admin', '2017-12-04 11:52:37', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('be7547aa633e4735b78fd906ca4d4b58', 'w5', '2017-07-11 14:52:44', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('be79464432344d0a9e76f136dc68c693', 'admin', '2017-08-15 14:59:48', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('be9cedd6fb3f4723bdf3834afa12d01e', 'admin', '2017-07-17 10:37:18', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('bea7fff52dd345aba5b34e3540b83ac9', 'admin', '2017-12-19 15:35:30', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('beb0814101544489af78a9c24bf3c6d3', 'admin', '2017-07-10 17:47:30', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('bebc971460f14dbcb6c71cea6c3af0c6', 'luopeng', '2017-07-17 09:32:08', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('bf0e079baa684564ba3273305ab49daf', 'admin', '2017-12-01 10:07:40', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('bf2fd2c21d654d7eb7bb0bc98b0b587b', 'admin', '2017-08-14 13:44:21', '修改add_qx权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('bf4f9d8e04e9408aa4c30e30c8a5cda8', 'yz123456', '2017-12-12 17:29:50', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('bf549bc9d5e9425298d262f93f2a9b2d', 'admin', '2017-12-15 16:30:07', '修改cha_qx权限，角色ID为:3');
INSERT INTO `sys_fhlog` VALUES ('bfa83c9f3d8f439fad9a8f7545e38c6e', 'admin', '2017-07-20 13:51:22', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('bfb27112c08d491580dcff5b66fee094', 'admin', '2017-12-02 11:02:15', '修改角色菜单权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('c03dba9e948c4abd8b4380dd0b623da1', 'admin', '2017-07-17 10:39:54', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('c04c5640e4d348c3849232223ce90145', 'admin', '2017-12-02 11:06:33', '修改角色菜单权限，角色ID为:1');
INSERT INTO `sys_fhlog` VALUES ('c0a74e3e4bcf4a17bd16823c78cd3b8b', 'admin', '2017-12-15 16:38:51', '修改角色菜单权限，角色ID为:1');
INSERT INTO `sys_fhlog` VALUES ('c0ba4655c51547e3861c463af849f10c', 'admin', '2017-07-12 17:22:16', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c0c044eb52be491999c517c459a6059a', 'luopeng', '2017-07-11 18:41:05', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c0e22d45b58b4d3d9d37e67f3b2cdf87', 'admin', '2017-07-17 10:39:36', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('c0e31e4779854827b2c8a754d56c065f', 'admin', '2017-12-01 14:37:14', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c0ea7790db164fc5955c77c414c93f4a', 'admin', '2017-07-10 15:04:45', '修改edit_qx权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('c0f57c1389824bf2a9967186b5f1f683', 'yz123456', '2018-01-31 15:46:47', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c143093644534d6fb633ac975e2d4bf7', 'admin', '2017-12-15 16:30:18', '修改edit_qx权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('c199f8695faa43cd8b5c2fbf67c0f40f', 'admin', '2017-12-20 19:12:36', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c1a06f001e4d4f839c9ef0a583fe3435', 'admin', '2017-12-20 18:12:28', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c1b90db324674eda8792d672eef7084a', 'admin', '2017-08-12 10:48:38', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('c21a7b2881ec44f2b2974fadc014c761', 'admin', '2017-07-10 11:29:41', '退出');
INSERT INTO `sys_fhlog` VALUES ('c229fbd5ca53487c8e68a5c93016c716', 'admin', '2017-08-15 13:47:26', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c22daa942a6e476d91b67dbb410fd7b9', 'admin', '2017-12-11 10:15:21', '修改del_qx权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('c24f88af7638476e84481e65ffb3b7d3', 'san', '2016-06-06 02:29:23', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c2502f35d4fa4d26a694d5ed060089bf', 'luopeng', '2017-07-12 15:52:49', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c285a415f22d4351a3f2b21c8eecba3e', 'admin', '2017-07-05 15:30:53', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c28f9fb8474646c9b147d9bb0b7a84a2', 'csp', '2017-08-17 11:05:09', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c2a6c0671dbc4c8b947460397cc5d0fd', 'admin', '2017-07-13 14:28:36', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c2aa016b9c8d4938807cc5e51b8fe4bc', 'admin', '2017-11-29 15:56:59', '退出');
INSERT INTO `sys_fhlog` VALUES ('c2b73372e4c74c488dc3ee70f4dfb441', 'admin', '2017-12-01 18:51:23', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c2e08d9532e641d49d1fa3662104d8dc', 'admin', '2017-12-20 18:31:24', '修改角色菜单权限，角色ID为:3');
INSERT INTO `sys_fhlog` VALUES ('c2ef7b247f62486ca48a3e68a54223a6', 'luopeng', '2017-07-13 17:29:44', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c3069cc4fbf94aeb983646faf62f409a', 'admin', '2017-08-14 17:26:14', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c3204765debd430baf753f68ca662537', 'admin', '2017-07-20 10:40:34', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c336f57c3adb4704b31281c17b75c340', 'admin', '2017-07-10 15:58:15', '退出');
INSERT INTO `sys_fhlog` VALUES ('c347dff30d9745638cf19808e7d81917', 'admin', '2017-07-07 09:05:40', '修改del_qx权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('c35543f6ecbf45e7bad43299d1c4c3f0', 'admin', '2017-08-16 11:45:35', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c371631ec3f243d28ec16e06c7a16182', 'w5', '2017-07-11 18:11:56', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c3fac6a1fd2f49a28f93ee3392e3319e', '1111', '2017-12-20 18:30:56', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c4344ca042844865be3b6191117d4f29', 'admin', '2017-12-18 17:34:54', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c437c760f17b42d19889baee4eedfe96', 'luopeng', '2017-07-11 17:24:09', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c438e9e5b87844df870bd6025bf94be8', 'admin', '2017-08-14 17:08:39', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c4390d3780934c58a8a63f6272a6dea9', 'lisi', '2017-07-11 10:01:31', '修改系统用户：luopeng');
INSERT INTO `sys_fhlog` VALUES ('c45398b889ff4128aaf42be448bd9e3d', 'admin', '2017-12-02 14:04:09', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c45ed4e38e874f3ba59d00ef271b15c5', 'csp', '2017-08-14 16:40:17', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c46a559c2b20444f91083a504970f532', 'admin', '2017-12-20 19:28:19', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c47ace50948a479da71aeb29baad05b5', 'lisi', '2017-07-11 10:00:43', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c4863474e2ab400f87ce4d18dcbedf16', 'admin', '2017-12-19 13:56:29', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c4b34fc92ed24b4dba6dfcd2be6e2c27', 'admin', '2017-07-17 10:40:16', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('c4bbe016cc294e84ae1425dfd072531c', 'w5', '2017-07-12 09:39:40', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c4c1eda015b84e5ba3dae1f2213d459e', 'admin', '2017-06-29 14:25:10', '新增按钮权限pd{guid=1498717510162, BUTTON_ID=da7fd386de0b49ce809984f5919022b8, RB_ID=cfcda227784546709de71ae8025cd29c, ROLE_ID=3264c8e83d0248bb9e3ea6195b4c0216}');
INSERT INTO `sys_fhlog` VALUES ('c5060f1ebb8547dcb2cf765ef9ec7fdb', 'admin', '2017-12-20 14:04:45', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c50c180811594f77a52884b338f23834', 'admin', '2017-12-21 09:54:23', '退出');
INSERT INTO `sys_fhlog` VALUES ('c551341ae4384dd79b14034fd8368e3b', 'admin', '2017-12-19 10:16:09', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c55d906b53904947986c6a64a8d96e78', 'admin', '2017-08-14 13:43:43', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c56234f7b4954fcc92e977b7a67eb017', 'csp', '2017-08-17 17:35:11', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c57079022155499ea862600a979de24b', 'admin', '2017-12-02 15:03:54', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c5d4210464da4a5884cb701b589a16fc', 'admin', '2017-12-02 11:06:39', '修改add_qx权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('c5ee5d6ca6a845238d55073be61370f0', 'csp', '2017-08-15 18:21:58', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c5f7ffaffa5a47d38d82bcb0099b0d2c', 'admin', '2017-12-19 17:42:28', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c5f9062be049471b8465454c306fc1af', 'luopeng', '2017-08-14 16:23:49', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('c60f40db61ef49da8b51787d6897d888', 'admin', '2017-07-17 10:39:35', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('c617f2563cf84bc0ab316ba5ff240fa5', 'admin', '2017-11-29 11:33:35', '修改菜单数据库管理');
INSERT INTO `sys_fhlog` VALUES ('c676f989252d49f6a7a5f898773cf8eb', 'csp', '2017-08-17 17:42:55', '订单确认核销{tm=1502962975791, ORDER_ID=20170816000001, ORDER_STATUS=3}');
INSERT INTO `sys_fhlog` VALUES ('c67873de66464e8ca774b564c47c2f15', 'yz123456', '2018-04-10 14:13:37', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('c6e1c84e18ed4e6584510b4f6daf7ded', 'csp', '2017-08-17 17:36:25', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c6f36bca90ca426ca29adb41d59f671f', 'admin', '2017-12-02 09:37:40', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c735a91cf1d5469890661e3af6c7261f', 'admin', '2017-08-14 09:17:32', '修改菜单酒店信息');
INSERT INTO `sys_fhlog` VALUES ('c73c5608aaba41ac93a44fe53cb0c672', 'admin', '2017-12-02 11:23:37', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c75eeabb862f40f888463c3d6c03dc09', 'admin', '2017-12-04 17:30:48', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c77a9afc4b0f4d2494313acfbfd29ca4', 'admin', '2017-11-29 11:45:45', '新增按钮权限pd{guid=1511927144944, BUTTON_ID=4c7f34b9eed54683957f356afcda24df, RB_ID=ffcbd03ac1854ab9b406977fb9b09b49, ROLE_ID=5466347ac07044cb8d82990ec7f3a90e}');
INSERT INTO `sys_fhlog` VALUES ('c7b3f6f898e64b3485f97aed59a8bf33', 'luopeng', '2017-08-14 15:00:18', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('c7df698e5faa4a30aeda803623572124', 'luopeng', '2017-07-12 14:00:14', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c7dff50a5ff34f7f9565fcc1b003355f', 'admin', '2017-08-11 14:19:37', '删除菜单ID24');
INSERT INTO `sys_fhlog` VALUES ('c7ee3b37b9ab4f56877308b59bd7b422', 'admin', '2017-07-06 16:04:32', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c82307669416486f9483cb3e737d9a14', 'admin', '2017-12-20 18:27:57', '退出');
INSERT INTO `sys_fhlog` VALUES ('c83987e326f149edb696dd9ec0ba1591', 'admin', '2017-11-28 17:01:05', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('c858b3009c7d4f6f88a36425962eda7c', 'admin', '2017-11-29 15:03:07', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c8ba13d1b507422e96dbbfa7f5e792d4', 'admin', '2017-12-05 14:57:52', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c91d1214102a4841a9112918b83f22d9', 'luopeng', '2017-08-15 15:12:12', '修改角色菜单权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('c936163c625a4755bdec2eb56ddeef35', 'admin', '2017-07-17 10:39:35', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('c95b7441a9b34fa69be604973af79ac8', 'admin', '2017-12-19 18:14:49', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('c9bc0aadfd3c4fe2a3e4538d4e2f85f4', 'admin', '2017-07-17 10:41:16', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('c9e386b75fd54c2a88a7007a9869a04f', 'admin', '2017-08-15 17:54:13', '退出');
INSERT INTO `sys_fhlog` VALUES ('ca2cf0aefab64623810da07db84d8aff', 'admin', '2017-11-29 14:02:19', '删除菜单ID186');
INSERT INTO `sys_fhlog` VALUES ('ca344fc14ed34ea69fbb2438c18c1d8c', 'luopeng', '2017-07-13 17:32:36', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ca5b74aec3474e1db776994b3f5be18c', 'yz123456', '2018-01-02 13:28:29', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ca6972fda4b64902bd37bc04de76ba34', 'csp', '2017-08-14 16:38:47', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ca726fe1171242f08baa409d664d9b54', 'admin', '2017-12-20 09:38:05', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ca8fdbcf544d406794cf134b95820f70', 'luopeng', '2017-07-12 18:22:53', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('cadab9698060492bb287508c0a3c42ad', 'admin', '2017-12-18 14:17:44', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('cb0ea5b687d240fcb2dcd6bc91b02985', 'admin', '2017-07-14 17:20:58', '退出');
INSERT INTO `sys_fhlog` VALUES ('cb32a295256443f4bd430949e057cbb2', 'w5', '2017-07-12 11:04:04', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('cb4414b003a9427fb983202953e41a33', 'admin', '2017-12-02 13:44:51', '修改cha_qx权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('cb4737bbdebf43e083df648d718efcc7', 'admin', '2017-12-20 12:49:09', '修改角色菜单权限，角色ID为:de9de2f006e145a29d52dfadda295353');
INSERT INTO `sys_fhlog` VALUES ('cb5206a47b06449b9859e7ec1365adf0', 'admin', '2017-07-10 15:21:51', '退出');
INSERT INTO `sys_fhlog` VALUES ('cc1233cf8bed49d0a1ed84c81f9aab6c', 'admin', '2017-12-20 11:45:06', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('cc4834fc81a14a06a06fc8cc2fadb376', 'admin', '2017-05-11 11:57:32', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('cc89cb61d26d4a98be2b6b11fe1630ee', 'admin', '2017-07-10 17:30:22', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('cc91f680299645a0b27c5a860563d9b1', 'admin', '2017-12-20 18:31:26', '退出');
INSERT INTO `sys_fhlog` VALUES ('ccaf4a6fb577416081a0dc6bd330dd86', 'admin', '2017-12-02 09:36:44', '修改菜单会员管理');
INSERT INTO `sys_fhlog` VALUES ('ccafc54387ff4b9a8d424b38c961af67', 'admin', '2017-12-20 14:53:13', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ccb39e79e92d49b1bf81c9d9d0fe78b5', 'admin', '2017-12-01 16:17:16', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('cd1458ebac0f4e608451ed7d0dcf4cd5', 'san', '2017-07-05 17:48:25', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('cd172acce70a4ca88255ce500d571a1d', 'w5', '2017-07-12 09:54:56', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('cd31c990cbb94e08a31de04098032e58', 'admin', '2017-12-02 13:39:25', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('cd3eb49f8d224957bb9881d65955748c', 'admin', '2017-12-01 14:14:47', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('cd8cf5166eb04ed1a84127b939c942d5', 'w5', '2017-07-12 10:09:30', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('cd9c223f0838463194913820b7dfa618', 'admin', '2017-12-20 10:14:59', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('cdc702b0303e4208b564c9055b2c1bfb', 'admin', '2017-12-23 09:40:27', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('cdc89b891c0e441f8eb7efee3f7360be', 'admin', '2017-07-13 17:32:56', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('cdcdef405a894300b79918e45111e2bf', 'admin', '2017-12-02 09:36:11', '修改菜单会员管理');
INSERT INTO `sys_fhlog` VALUES ('ce3f537d22a44add9cd57b043cdd2030', 'admin', '2017-07-10 15:10:49', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ce61cdf695de416388f7786faceb3aa3', 'admin', '2017-12-18 11:29:23', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ce65ac17a6714bf8b71ea50cc84ad449', 'admin', '2017-12-19 10:11:38', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ce75c7fdbb5e41ac93e35cd4a90f9c4b', 'admin', '2017-08-15 11:49:33', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ce7cb4ab038f41c9af1f486b89647733', 'csp', '2017-08-17 11:35:00', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ce99695fd7684047aee950375ecf1d77', 'admin', '2017-11-29 16:40:47', '修改角色菜单权限，角色ID为:1');
INSERT INTO `sys_fhlog` VALUES ('ceb11faf9dce4220997ef27314e8ac93', 'admin', '2017-08-17 14:59:34', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('cee8aba23dab483dbae6e2335dff62ec', 'csp', '2017-08-14 18:29:26', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('cef1514e9c8e4a95a4c9c02539b10ba0', 'admin', '2017-07-15 17:13:43', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('cf1418623df44b7ca38790c63b8df755', 'admin', '2017-07-17 10:41:15', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('cf165e524e8e4a7cbb3826f87e8ff848', 'admin', '2017-12-15 16:30:37', '修改cha_qx权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d');
INSERT INTO `sys_fhlog` VALUES ('cf1fb3e71914491d8f0d16dedbab29d8', 'admin', '2017-12-20 10:54:01', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('cf67e9ebdee04b228f8ed7826ac42ff5', '999', '2017-12-20 18:30:00', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('cfaf44838bca440d9c1053c8d592eeea', 'admin', '2017-11-29 16:53:12', '修改角色菜单权限，角色ID为:1');
INSERT INTO `sys_fhlog` VALUES ('cfbe340627d44c88a2ba6810c1155a96', 'admin', '2017-07-17 10:41:15', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('cfc93a968c4e4645b5b8e39d49dbd7cd', 'admin', '2017-07-17 10:39:53', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('cfd22f9aa2a04aa38500f53fac637238', 'admin', '2017-08-14 13:44:08', '修改cha_qx权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('d00d584fd17042c6bed2c31e0eed977e', 'admin', '2017-11-29 16:44:34', '退出');
INSERT INTO `sys_fhlog` VALUES ('d01b65cbc4864328a6dc2e249ef12ce9', 'yz', '2018-04-10 14:14:42', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('d09a3db2b42b4c28b7bdd8ee150bbf01', 'luopeng', '2017-07-12 18:12:31', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('d09ff775845946efbfc006facfd4818f', 'admin', '2017-12-21 09:50:55', '修改角色菜单权限，角色ID为:de9de2f006e145a29d52dfadda295353');
INSERT INTO `sys_fhlog` VALUES ('d0a1c40ba1ff42e1aef14eb3a09d3893', 'lisi', '2017-07-07 10:11:00', '退出');
INSERT INTO `sys_fhlog` VALUES ('d0b0615fb2f6431193d73e68e715b8ba', 'admin', '2017-11-29 14:04:55', '新增菜单积分');
INSERT INTO `sys_fhlog` VALUES ('d1147ced954546568c0feb3347082f2c', 'admin', '2017-07-10 14:31:33', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('d134cd9a28474b368b4cf37b031375e3', 'csp', '2017-08-14 18:34:49', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('d136518c18944f3c84f8507b0713b6e6', 'admin', '2017-12-19 15:28:05', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('d13a799bed014f12a44a819a542560b5', 'luopeng', '2017-07-12 17:30:25', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('d1493172bf1f4d69bcf5a994253b57fb', 'admin', '2017-07-17 10:39:36', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('d14a682474464ca1b5ba97c1e36dc9db', 'yz123456', '2017-12-21 09:37:24', '退出');
INSERT INTO `sys_fhlog` VALUES ('d1c0c81ff50e4fb1b25d09f2ce76f6cf', 'luopeng', '2017-08-15 15:09:48', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('d1c38b40818045f28c24700105b6141a', 'luopeng', '2017-07-12 16:32:37', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('d23a990cd7c04056bf00087e2f2434e5', 'admin', '2017-07-14 09:39:26', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('d23d9c54e13b45c885b5a630e724a562', 'fanbing', '2017-07-10 17:18:50', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('d256e5fffd0e47b597dda2021b307664', 'admin', '2017-12-21 09:33:53', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('d311222ce5894a66b40231ee2cc932b6', 'yz123456', '2018-01-11 13:23:05', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('d32f1e79f9ad43c7ace7827c294ecafc', 'admin', '2017-12-01 11:45:31', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('d3327bb4c7a7413baf40fccbdfea10f2', 'admin', '2017-12-18 13:51:32', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('d3944438576442d48a841bedde277cd8', 'admin', '2017-07-10 11:50:41', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('d3b2f28889704e26a6dde5cbccd2775d', 'admin', '2017-07-07 09:05:47', '修改add_qx权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('d3c870e88a8046d0a7d4ca4e9d9617c0', 'admin', '2017-07-05 17:57:31', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('d3d8374cfdc340f3a4deb51c5286b4c2', '1111', '2017-12-20 18:31:05', '退出');
INSERT INTO `sys_fhlog` VALUES ('d422b839cc51426d869fb88c53caec7e', 'admin', '2017-07-17 10:41:34', '修改角色菜单权限，角色ID为:1');
INSERT INTO `sys_fhlog` VALUES ('d473c4eeecae4bc383fb3ba2efe02c37', 'admin', '2017-12-18 13:54:35', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('d485e69c6b2f43d494d96977b6c427cc', 'admin', '2017-12-15 16:09:40', '删除菜单ID192');
INSERT INTO `sys_fhlog` VALUES ('d49f2ea977d14136a5fa61fddefba30e', 'admin', '2017-12-05 10:17:48', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('d4ab4842dcff4ca3afb2ced53cefc60a', 'luopeng', '2017-07-12 18:00:31', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('d4b304864f24432b844edd42036207c5', 'admin', '2017-12-19 10:48:41', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('d51fb9e4810c4c3b8571bc25e3c43028', 'admin', '2017-12-18 15:12:46', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('d572831d06c74552b3504768f4c5ccf3', 'chenshipeng', '2017-07-04 14:52:52', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('d5818f50dcd5429fa128be3ed9bec867', 'admin', '2017-12-05 14:14:56', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('d59fab8c52f2434689e9c57593e7808e', 'admin', '2017-12-15 15:51:51', '退出');
INSERT INTO `sys_fhlog` VALUES ('d60ef9a129154ad1ae5260b723cb59fd', 'luopeng', '2017-08-14 16:49:03', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('d63059a65fc44054b9985bfe8fd0b4bf', 'admin', '2017-12-02 15:29:44', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('d642cd1554f34fdfacffcc0e2f0b8af4', 'yz123456', '2018-01-11 14:46:00', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('d66c7e77794c49509c5f20688e5ffc93', 'admin', '2017-12-19 16:21:30', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('d68f12e6d5114f99b18556b4b2796f29', 'admin', '2017-12-02 10:29:21', '修改del_qx权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('d6ad98afcce24262a7e1079c9e5032f7', 'yz123456', '2017-12-21 09:48:51', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('d6b1d8d783564009bed0efc1dbc8e621', 'admin', '2017-12-20 15:31:10', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('d70debeefd454ebf9051a994df33c35e', 'admin', '2017-11-29 14:04:19', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('d730254ffda84095975dcad7d9706cff', 'san', '2017-07-05 17:50:42', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('d76393c291024d4e95ada5030aafc003', 'admin', '2017-12-20 14:04:41', '退出');
INSERT INTO `sys_fhlog` VALUES ('d7a6fdb8e8484f1194caac16d05fc210', 'admin', '2017-11-30 17:59:57', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('d7aeb62935194bfeb484c157c3253817', 'admin', '2017-08-16 15:57:12', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('d7de807984b24c8bb6febd9df07a97f3', 'admin', '2017-08-14 15:41:54', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('d7f6bb4e1f5243179ecf57d62523aac9', 'admin', '2017-12-04 17:14:02', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('d83c168bb16e4936855b5a2eadbbebbf', 'admin', '2017-12-19 15:10:33', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('d8af0353660d4667aee45a54f5910ad2', 'admin', '2017-12-12 17:29:01', '修改del_qx权限，角色ID为:3');
INSERT INTO `sys_fhlog` VALUES ('d8e7a93663ff4a618235796d0f1791d8', 'luopeng', '2017-08-15 17:14:27', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('d9135194b0c341e69322d7bc87d79963', 'luopeng', '2017-07-11 17:37:17', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('d9ad3816f7d44954b7a9a8a6a126b969', 'csp', '2017-08-15 14:00:17', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('d9b2c9b9aa304ec4a5fe8603758dcefe', 'admin', '2017-07-17 10:40:17', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('d9db2e1f4e754c62b30a17a89a4e6213', 'admin', '2017-12-20 14:40:29', '删除系统用户：{tm=1513752029723, USER_ID=69177258a06e4927b4639ab1684c3320}');
INSERT INTO `sys_fhlog` VALUES ('d9f9b9a4f42948f1933d6d394abf2041', 'lisi', '2017-07-10 09:11:30', '退出');
INSERT INTO `sys_fhlog` VALUES ('d9ff17eb567e4fb19be2e047e24e2fb8', 'admin', '2017-12-18 17:28:59', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('da1e4016aeb84fbc9d56830a85c896cc', 'admin', '2017-12-12 17:29:34', '退出');
INSERT INTO `sys_fhlog` VALUES ('da3a82d02d5a48e1801de5d85f2d5c27', 'admin', '2017-12-15 15:55:47', '修改del_qx权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('da8fde09231640c886c066385d334036', 'admin', '2017-12-20 18:31:12', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('daa04ae5dcc2436488dac6d2e0b3dc01', 'luopeng', '2017-07-10 09:07:37', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('db2becfb5f0141e28f75a3a08e400db9', 'admin', '2017-08-16 10:42:46', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('db4f6702ca8b4c1893fa4ec99a465f0e', 'admin', '2017-12-02 15:22:46', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('db54f43b9ae146cd9454997145478ebe', 'san', '2017-07-04 14:15:50', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('db821b32fd0e494281d2ce8ae333cc2f', 'admin', '2017-12-19 11:11:18', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('dba416cdaca842ad9299e5df6f816d24', 'admin', '2017-12-11 14:20:07', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('dc545ec88f5b44788fd32e9bacc5bfaa', 'admin', '2017-08-15 18:24:17', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('dc6eacc10f4c44df8dc907fe0efab57d', 'admin', '2017-06-29 14:28:18', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('dc8594a0956f4b9b92dd57c529ba640c', 'admin', '2017-07-20 13:51:26', '退出');
INSERT INTO `sys_fhlog` VALUES ('dc8e2677d1034b07bebef44ce2386a15', 'admin', '2017-11-29 10:41:02', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('dc8fb4ef8fb14b95b2c522a994eef0f7', 'yz123456', '2017-12-22 17:31:02', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('dcb8618e82de4766a7da0ad72dbc71e0', 'yz123456', '2017-12-23 18:03:41', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('dcd8031c8fe14a6c85cd7caf9d9a4877', 'admin', '2018-01-02 13:22:53', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('dcdf6e14477f475c94461a2401b7b0b2', 'admin', '2017-08-11 14:18:48', '删除菜单ID32');
INSERT INTO `sys_fhlog` VALUES ('dce28b1c4ba94e32aa0b89615aeb0ce2', 'admin', '2017-12-19 16:19:32', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('dd0cc7db5be746ab9254ec25dab88f9a', 'lisi', '2017-07-10 09:16:22', '退出');
INSERT INTO `sys_fhlog` VALUES ('dd11846069694ff196c1cfae5fffe303', 'admin', '2017-07-17 10:41:15', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('dd648d844e854d65ae17c67412bd2d7d', 'admin', '2017-12-14 14:41:04', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('dd6c2fbfa4c34eea92c3cdc71a3b7fa8', 'admin', '2017-12-02 13:44:00', '修改菜单系统设置');
INSERT INTO `sys_fhlog` VALUES ('ddb22627a06c4d0eb325c39ee30b6304', 'admin', '2017-06-28 13:41:05', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ddc15165f86f4c62ae68e67e774568a9', 'admin', '2017-11-29 15:24:35', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ddd4ef508a0e49aa853d62ebf4736b96', 'admin', '2017-07-10 15:40:33', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ddde7d6cd88047098b76d0e2c1c1106e', 'luopeng', '2017-08-15 15:09:47', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('de01f85bb6c944ad9a8a07d0316d6663', 'admin', '2017-12-20 18:04:53', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('de0b7ca0cdd14cf5a85a262a7d9c0e38', 'admin', '2017-08-12 10:48:11', '修改edit_qx权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('de2506e9e3514857ad5493e769b0ed76', 'admin', '2017-12-02 09:50:01', '修改菜单会员管理');
INSERT INTO `sys_fhlog` VALUES ('de30b9d4cd6a4b95bddfe394603c330e', 'admin', '2017-12-02 13:44:41', '修改add_qx权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('de4d444b93fa487fab905f5eb267748f', 'admin', '2017-05-06 13:40:46', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('de6ba6c321ba4f65aa6b8afb6e470a5f', 'luopeng', '2017-08-15 15:09:46', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('dee12c6c2ef444569ca7574236504f72', 'luopeng', '2017-07-12 09:40:00', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('def23539984147a78770a62ad1fdb9e0', 'admin', '2017-07-17 10:39:35', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('defbe0c2f1e844e3af8dfb5e8becdf6e', 'admin', '2017-07-05 17:46:48', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('df2395e66aed4cde8c4a8b616305d67e', 'admin', '2017-07-17 10:39:34', '新增菜单临时素材');
INSERT INTO `sys_fhlog` VALUES ('df28bcabbb9e4edb8fb444a6a7a94aa5', 'admin', '2017-11-30 19:00:30', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('df59088fb94c41d79953bdfe0afc5581', 'csp', '2017-08-14 17:08:49', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('df7ac2d9b7e3434fba8d767eebfb9179', 'admin', '2017-08-11 14:19:50', '删除菜单ID22');
INSERT INTO `sys_fhlog` VALUES ('df82ad380aae4bfa9f0a28cd1c96af13', 'admin', '2017-12-11 10:23:11', '修改del_qx权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('df9587fd75f046c68a63f1ea96148c00', 'admin', '2017-11-29 11:45:45', '删除按钮权限{guid=1511927145589, BUTTON_ID=4c7f34b9eed54683957f356afcda24df, ROLE_ID=5466347ac07044cb8d82990ec7f3a90e}');
INSERT INTO `sys_fhlog` VALUES ('dfb40de5e135464ea59ec569fb6c5b0c', 'admin', '2017-12-02 13:49:24', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('dfc5d7e40d1c4614bcae8177bf1c862e', 'admin', '2017-06-06 16:02:27', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('dff6127bc5dd4550b973df415e47db03', 'luopeng', '2017-07-11 10:50:42', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('dffd48141c954a8bb4393d9a40d18927', 'admin', '2017-12-11 10:25:13', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e01759f1092a45559ab7d8dd0f6b6fa7', 'admin', '2017-11-30 11:19:05', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e02130427f9f42ccbaafba2f51c4169d', 'admin', '2017-11-29 16:50:26', '修改角色菜单权限，角色ID为:1');
INSERT INTO `sys_fhlog` VALUES ('e02a6200031e49b4abc26a73f084533c', 'admin', '2017-11-29 18:24:28', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e02ab3b1125745a0bcb7b047ce2b5819', 'admin', '2017-07-11 09:10:04', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e02d701c2471427493148c1c27db5dd5', 'luopeng', '2017-07-12 13:45:25', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e06ce2f7dbaf4d42bd35032ca4722799', 'admin', '2017-11-29 11:33:26', '修改菜单酒店管理');
INSERT INTO `sys_fhlog` VALUES ('e080185061564ecf87245b935bd6931c', 'luopeng', '2017-08-14 14:07:41', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e108be4d5a3b4eb985e527a1bd3fa6ed', 'admin', '2017-12-11 11:27:55', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e1449f9b5cc047bc8a6dab830967c9e8', 'admin', '2017-11-29 14:37:18', '退出');
INSERT INTO `sys_fhlog` VALUES ('e21244017c5944d1ad5389c0b3059951', 'admin', '2017-07-17 10:41:15', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('e213891707e140cd9227ff01f053f2be', 'lisi', '2017-07-05 16:32:59', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e213c2ec089f4437a4deba8ee838f885', 'w5', '2017-07-12 18:34:04', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e22ed3cc293e4a32a40cf817ce965cae', 'san', '2017-07-05 16:28:50', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e2412a3d46c74f0da2aca30607311e96', 'admin', '2017-12-20 15:49:06', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e24387cd3fb64d11b9d6b664f3210213', 'yz123456', '2017-12-13 10:04:51', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e2541604fb444794a028b0ecdeb3889a', 'luopeng', '2017-07-11 10:23:47', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e25507fe84474bbc9bae71192a091b4d', 'admin', '2017-12-23 15:25:45', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e257d8452f0f49b085dcac87f388f8a3', 'admin', '2017-12-05 14:52:29', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e2889605d8784378a4a4f57b92e5d3df', 'admin', '2017-12-12 15:20:43', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e2a4d60f039c4f09b03d0b219e898897', 'luopeng', '2017-07-17 10:52:26', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e2a580378e2e4e7b9c5b00143065b966', 'csp', '2017-08-14 14:32:55', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e2af73bdef3e43df9f4eb5b3151e96a6', 'admin', '2017-07-06 09:30:22', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e2c89c1f58b248ec97e9540d153db271', 'admin', '2017-11-29 14:03:12', '新增菜单App后台');
INSERT INTO `sys_fhlog` VALUES ('e2e9610ac96e43b4b40564e0d1de74e6', 'admin', '2017-08-12 14:21:00', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e31b6dfa26274bac98d55a913bd46d66', 'admin', '2017-07-10 15:21:49', '修改菜单微信菜单设置');
INSERT INTO `sys_fhlog` VALUES ('e3494f0138bb410b95625a10fa09f8ae', 'admin', '2017-08-11 14:21:13', '修改del_qx权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('e38a975d185c402c8a74bd40d84494ea', 'admin', '2017-12-12 17:43:09', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e38ec5b96c354a87b834cb7ac6bffa45', 'csp', '2017-08-16 14:49:15', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e3b38890a4474912b4ad0b4f03185ac0', 'admin', '2017-12-15 16:38:25', '退出');
INSERT INTO `sys_fhlog` VALUES ('e3bccbe69ae14e7b80a83663e872c36a', 'admin', '2017-08-14 13:44:12', '修改edit_qx权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('e3c9756ab55e456996c35ab203521122', 'admin', '2017-08-17 09:26:54', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e3ef7dfd4b6545bc9fc18f38771bf33a', 'admin', '2017-07-10 11:45:12', '退出');
INSERT INTO `sys_fhlog` VALUES ('e3f485a932a64ef68c63b65a03a22ed6', 'admin', '2017-12-19 13:51:06', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e4118bf714fb4556894a39f91d48bc31', 'admin', '2017-07-04 16:57:44', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e43ae42ecabe424480846897c616fbfb', 'admin', '2017-11-29 18:59:42', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e464cb8ac45b43e69c6ba4aabe1a2933', 'admin', '2017-12-12 17:29:20', '修改角色菜单权限，角色ID为:3');
INSERT INTO `sys_fhlog` VALUES ('e46bc8d06d0544ea83f87096800f97a6', 'yz123456', '2018-01-07 16:59:14', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e4702d6921ab4d37b7eff28cf078fab9', 'admin', '2017-08-16 15:59:56', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e49a2077129841af886b6f4f3ede21a8', 'admin', '2017-12-20 14:40:37', '删除系统用户：{tm=1513752036860, USER_ID=eded77bdf35347249b2bacfa181c869d}');
INSERT INTO `sys_fhlog` VALUES ('e4a52c4b9db942fdaee9cfc09a33ee89', 'admin', '2017-12-20 16:41:46', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e4e819788a7e4e11b9e445161758d837', 'admin', '2017-07-12 17:11:57', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e580d73804224034896071d878f64597', 'admin', '2017-12-19 18:31:04', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e643a6b97b9b427ea920b12a355596a3', 'admin', '2017-12-11 14:20:21', '退出');
INSERT INTO `sys_fhlog` VALUES ('e692aedf39b54be3bf0cef04ba132a26', 'admin', '2017-12-15 15:51:27', '修改角色菜单权限，角色ID为:1');
INSERT INTO `sys_fhlog` VALUES ('e6aa9f7b9f5d4ffa993a0ac6e6cb0084', 'admin', '2017-12-20 14:04:22', '修改add_qx权限，角色ID为:3');
INSERT INTO `sys_fhlog` VALUES ('e6e6246ebe254c77872f7f7221204de4', 'admin', '2017-07-06 14:13:56', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e6e9fb78faee4ecb8f861c85ad7dbbe9', 'luopeng', '2017-07-12 11:22:43', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e6f0f2c2f9d648e6824a6ba707e2684d', 'san', '2017-07-05 17:33:13', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e7134c4f36fc4b06b4192d4a08675fc3', 'admin', '2017-11-29 11:23:15', '修改菜单拼购');
INSERT INTO `sys_fhlog` VALUES ('e71ae554d7f3473693b85e3e05bc88fb', 'admin', '2017-07-06 18:21:04', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e73b0d7bd261421f86f7396aa21398f1', 'admin', '2017-12-18 16:02:29', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e79b328d096441bfb801cf967f7a4c87', 'admin', '2017-07-20 10:40:01', '退出');
INSERT INTO `sys_fhlog` VALUES ('e7bf3ac392954e509e4c0341f4869a95', 'san', '2016-06-06 02:29:19', '退出');
INSERT INTO `sys_fhlog` VALUES ('e837afe6c88e4348ab45aabd8e8015c0', 'admin', '2017-07-17 10:39:35', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('e849ac354dc64f57b8dd695a7063ad31', 'admin', '2017-12-02 11:39:54', '修改菜单系统设置');
INSERT INTO `sys_fhlog` VALUES ('e85a1ccd94a346a7a80f5401e47e2339', 'admin', '2017-08-12 10:48:02', '修改角色菜单权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('e89d862a597944819623e0f2da182a7c', 'admin', '2017-11-29 11:32:45', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e8c3ee99f60a4190b6e083867b36957d', 'admin', '2017-12-01 13:41:22', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e910ce53ce604a3e801c2b487d729607', 'admin', '2017-12-02 10:59:33', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e91fc6433e92405bb8161ba9faf3e902', 'admin', '2017-07-20 14:21:17', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e9399d216ab94a9ebecb297d42a9889e', 'admin', '2017-12-08 16:33:51', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e989d63a47d942b7a4a74d63d67ba64e', 'admin', '2017-12-02 13:44:58', '修改角色菜单权限，角色ID为:1');
INSERT INTO `sys_fhlog` VALUES ('e9a9255e77ca4648a0f3fc6674f2589c', 'admin', '2017-12-11 14:51:23', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e9b232e74bfb4f6e875648a4d6c344e9', 'admin', '2017-05-06 11:52:42', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e9c3729ed18e48929c5d1c79f812e341', 'admin', '2017-06-29 14:23:51', '修改系统用户：san');
INSERT INTO `sys_fhlog` VALUES ('e9cc4a9a125a4a6fb57b2cde372096db', 'admin', '2017-12-04 14:24:53', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('e9e5e597ae8e40a4a0bda66c22616c81', 'san', '2017-07-04 14:15:34', '退出');
INSERT INTO `sys_fhlog` VALUES ('e9e6c2088cfd46bc8ac3e942ec43ecba', 'admin', '2017-07-17 10:39:55', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('e9ea06a1f49049e7b2d3d4d2b8afc28c', 'admin', '2017-12-19 11:11:37', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ea0580c5d3a14c96a841b4d856c3072c', 'admin', '2017-07-17 10:40:18', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('ea2d8f6f070a449987244a67cdc4dd84', 'fanbing', '2017-07-10 17:20:39', '退出');
INSERT INTO `sys_fhlog` VALUES ('ea3dc933c05b45c1819d46656663d662', 'admin', '2017-12-02 11:06:09', '修改菜单系统设置');
INSERT INTO `sys_fhlog` VALUES ('ea4342d468e042669ac78ea4aecb9308', 'luopeng', '2017-07-12 11:22:06', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ea829a7e96a4466d8eaf3cc231131042', 'admin', '2017-07-17 10:56:52', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('eaf93b4ee98e4930974da96ab75097a5', 'san', '2017-07-05 15:33:26', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('eb16962a966447389937f294ae6f2771', 'admin', '2017-11-29 16:03:56', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('eb4f216245c54a29a203b00eabec538c', 'yz0012', '2017-12-20 11:56:41', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('eb7cfeca69db4411917552c2374a4091', 'luopeng', '2017-07-12 14:39:56', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('eb8bc9a1b6cb48ada20cc2ec63199280', 'admin', '2017-12-20 14:40:24', '删除系统用户：{tm=1513752024604, USER_ID=59f1fd9d4d3146e894e40a5286745507}');
INSERT INTO `sys_fhlog` VALUES ('ebd417e8db474963b79aaff59afe6a55', 'admin', '2017-11-29 10:36:42', '修改菜单理发店管理');
INSERT INTO `sys_fhlog` VALUES ('ebe1651a820a42ab95ff7b6beb7c750e', 'admin', '2017-12-04 11:28:59', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ec143cffafe5491cbfe945d5fc60332a', 'admin', '2017-07-06 10:36:10', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ec2f8a5e6f314f66ac449bf1e7a63010', 'admin', '2017-12-02 11:03:32', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ecaa6f10f1174192835236c63d0036bd', 'admin', '2017-12-19 13:52:47', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ecb30e4cfb384635b2efabe8fed93acd', 'admin', '2017-11-30 20:33:00', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ecf3e419bc5b4be9ace496b5bbb09237', 'admin', '2017-07-10 15:07:54', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ed0b8520e5194895a49959580b22f90a', 'admin', '2017-11-30 18:53:43', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ed20e71079fc4b61aa22ea858853df57', 'yz123456', '2018-01-02 16:04:43', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('edf0962c9daf4147a3e4c70e5f17f961', 'admin', '2017-11-29 11:44:14', '新增菜单积分管理');
INSERT INTO `sys_fhlog` VALUES ('edf2d6fa97244b21a1ead6de840e5d5d', 'admin', '2017-07-29 17:23:48', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('edf741f9708c458f92af465a2499e003', 'admin', '2017-11-29 16:46:18', '退出');
INSERT INTO `sys_fhlog` VALUES ('ee07dc0ffbbd482190c097c16ef0488c', 'luopeng', '2017-08-15 15:12:26', '修改del_qx权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('ee4eb837ff3c44588fed97b32f2e9d54', 'admin', '2017-11-29 14:31:21', '退出');
INSERT INTO `sys_fhlog` VALUES ('ee6a3b8820c24964bce486d777511b35', 'admin', '2017-12-22 16:34:06', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('eefb034095e84f2bb8b3bf7f8ea34f18', 'admin', '2017-12-02 11:32:50', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ef0a68c7445c446c98a41d14007327fa', 'admin', '2017-05-06 11:58:30', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ef82fa73d36a462ca389db6115d43e69', 'admin', '2017-12-01 10:17:16', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ef8e47ff1d444fca976190f5e868dea0', 'admin', '2017-12-12 17:28:55', '修改add_qx权限，角色ID为:3');
INSERT INTO `sys_fhlog` VALUES ('efd295a41193461dbe2780a62bf29408', 'admin', '2017-08-16 09:49:32', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f0275559e5fe440db0f8690374eaad14', 'admin', '2017-11-30 19:07:11', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f02a78b0cc4749fa819c5de73aaf275d', 'admin', '2017-11-30 15:16:16', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f07716f348e04acbba857ede75ef0af1', 'w5', '2017-07-12 10:21:59', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f083b04def75462d88f254a04427b510', 'admin', '2017-12-02 10:23:00', '修改edit_qx权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('f0bc42b78bd045caa91b80a1e809cc4d', 'admin', '2017-07-07 09:05:16', '修改角色菜单权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('f0c6ef5a3d174936af09d99fd8ec98e9', 'admin', '2017-12-04 13:41:05', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f0ca21c80ec640d28ebc1cdb39dd2966', 'admin', '2017-07-17 10:30:34', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('f0dc62f74a3c4f9d8ca0bc8e321b3548', 'admin', '2017-12-08 17:02:09', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f1397962882c46d698fad20eb30ee2e4', 'admin', '2017-07-17 10:40:17', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('f1850f05e6e14bfea90b5318ed2ebf0d', 'admin', '2017-07-05 17:31:06', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f1a5d5e4ce484bad80d1becbfbfa2935', 'csp', '2017-08-16 09:02:44', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f1b4ee56ba5e4f6dac51437b2855714d', 'csp', '2017-08-17 17:25:17', '新增按钮权限pd{guid=1502961917398, BUTTON_ID=ef4cd7dd582f4881bc25efc00d818e68, RB_ID=96f3196e49f0471bb81bd5cb48511ea7, ROLE_ID=3264c8e83d0248bb9e3ea6195b4c0216}');
INSERT INTO `sys_fhlog` VALUES ('f1d980e82ba14f728914374b0693a9b3', 'admin', '2017-12-02 11:06:49', '修改edit_qx权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('f1e471320b3f462d8ecc82c9a60a7e97', 'admin', '2017-07-10 17:21:02', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f1fd06727c014bc5ac4a781a8cbf55fd', 'yz', '2018-04-10 14:18:38', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('f204a1b0d7534fa6be0c56a6fd4b281a', 'admin', '2017-08-14 13:45:41', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f2085a1653ce400a9ac2ef0cf0ec267b', 'admin', '2017-12-18 11:26:47', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f20bee459680422e8eaf176f06bd2260', 'luopeng', '2017-07-12 15:48:43', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f20ce76990e0470db0bc48b7987d5d1b', 'admin', '2017-07-05 17:30:48', '退出');
INSERT INTO `sys_fhlog` VALUES ('f214901f645b46f7a8caa4bd92a808ed', 'luopeng', '2017-07-12 16:14:37', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f27428970319464f86dc8fc97f3f82b1', 'admin', '2017-06-29 14:11:21', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f2ad829d9f7b47d2a00f1053315402d5', 'admin', '2017-11-29 10:21:45', '新增菜单理发店管理');
INSERT INTO `sys_fhlog` VALUES ('f2e07fc50f7b47a48130e4942e48acfb', 'admin', '2017-12-23 13:58:05', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f33e2124c3104416b02ed26bf0954785', 'admin', '2017-06-29 14:25:08', '新增按钮权限pd{guid=1498717507708, BUTTON_ID=46992ea280ba4b72b29dedb0d4bc0106, RB_ID=33f41aadd4914921b8de0cc6f7e0aee7, ROLE_ID=3264c8e83d0248bb9e3ea6195b4c0216}');
INSERT INTO `sys_fhlog` VALUES ('f36b79a0886c48e1b5928cb7a2eaa993', 'yz123456', '2018-01-12 17:53:25', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f37cc17e10e6480fa45a5d9d6e616cce', 'admin', '2017-12-05 15:01:30', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f37ce56676404a1a900ffa0ef5ef88a3', 'admin', '2017-07-17 10:48:39', '修改edit_qx权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('f37f053373a048ce99733f6ed91ea965', 'admin', '2017-12-20 14:03:35', '新增菜单抽成统计');
INSERT INTO `sys_fhlog` VALUES ('f39c0125036a4b69bb2ec206de696248', 'admin', '2017-08-12 11:10:59', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('f3c6d59f50ff4c98a9b83184bc43386f', 'admin', '2017-12-04 13:54:33', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f3e18238cda4439a81e4e8625ff28376', 'admin', '2017-12-20 18:51:34', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f425a4a2ebc647db8e86e80a62f11282', 'admin', '2017-06-06 16:05:56', '退出');
INSERT INTO `sys_fhlog` VALUES ('f425bf09f3634b59ae6b1a8240838bbc', 'admin', '2017-11-29 11:30:36', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f446d2ad10f44b688f16ceccbfe3bbe6', 'admin', '2017-08-15 17:52:07', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f4974c281c30421e948170658d689be6', 'luopeng', '2017-07-12 11:33:56', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f4a613c9f33a495e977261e0029805a2', 'lisi', '2017-07-10 09:10:18', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f4d1f5b355234e3194866a9529d44df3', 'admin', '2017-12-19 16:38:48', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f4d44516869c4079a92b17bc387a0e2e', 'luopeng', '2017-08-15 15:09:47', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('f5289d584eae443192fc2660334dcf16', 'admin', '2017-11-30 19:26:31', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f52e2cb1f0a74c17ab63341254da280e', 'W5', '2017-07-11 18:11:50', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('f5530e7713ef40d2afcd64b55d7a87ce', 'admin', '2017-07-17 10:39:54', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('f58ee296dcaa41e49fac4345c22f1656', 'admin', '2017-11-29 13:55:15', '退出');
INSERT INTO `sys_fhlog` VALUES ('f5937d378167490d85a2eaf6206f3e8d', 'admin', '2017-08-11 14:21:09', '修改edit_qx权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('f5f1a7f634094150b45a6f2255c62f9e', 'admin', '2017-08-14 13:43:39', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('f5fe682683c34fd792abdaead4b556b0', 'luopeng', '2017-07-12 15:09:01', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f60875462ec74519b10d2ba7a120ab2a', 'admin', '2017-12-04 18:27:38', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f612076254cd44d2a084b9dbd57ed1c7', 'admin', '2017-11-29 14:02:17', '删除菜单ID185');
INSERT INTO `sys_fhlog` VALUES ('f61ffb1e9c4f42a1a22bd1cc740e32c5', 'luopeng', '2017-08-14 17:57:34', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f6397708947a4bee9a326ef3234e93b0', 'admin', '2017-11-30 14:39:01', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f63c2533b1f640a4bdadf32f05ff754f', 'admin', '2017-07-17 10:41:43', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f644ef67ee6344edae4c221c55757625', 'csp', '2017-08-15 18:05:47', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f72b2bc41dc64130a33a9e5f0fb91c6b', 'lisi', '2017-07-05 16:30:57', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f77ef66e3ed1442c9f3a4c2e1b2d7bfd', 'admin', '2017-11-29 10:47:00', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f7a89778fca44c9a9595876496fe65d0', 'admin', '2017-11-29 15:18:16', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f7ec22b7dfea402e9d94363f2963976c', 'admin', '2017-08-14 13:44:17', '修改del_qx权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('f7f08a91abca4719a417eaeecc3ea99e', 'admin', '2017-11-29 16:50:42', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f810f514b9174142bc4edfc876945d6a', 'admin', '2017-12-15 16:28:03', '修改edit_qx权限，角色ID为:3');
INSERT INTO `sys_fhlog` VALUES ('f87e7bd48dfb4b02ac981efe659572c8', 'admin', '2017-12-20 09:22:03', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f8922ee56bd145909d38f1577f081c1a', 'admin', '2017-08-21 11:34:03', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f8b438c6b9d24bd49b465d05486da073', 'fanbing', '2017-07-10 11:44:46', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f8cf47ae517340f59311f376c96cc750', 'lisi', '2017-07-10 09:04:14', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f8dbc2207334472f98fe0aed328498bb', 'admin', '2017-12-21 09:49:33', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f924603679904dc0855aaf3b80993e50', 'luopeng', '2017-07-12 13:55:40', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f98dbfec5ee24b25abed676d14ca2e52', 'admin', '2017-08-12 13:58:46', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('f9c526c85e644864b838c0b226eb63ea', 'luopeng', '2017-07-17 09:26:21', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('fa5ca08cd9c14ea6b4c88e470f1a7135', 'admin', '2017-12-04 09:50:36', '修改cha_qx权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('fa74be69551643c899369c9d832472e1', 'admin', '2017-07-17 10:38:23', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('fa8023b7d9884f0cb8bf2606c31a86da', 'luopeng', '2017-08-15 16:46:37', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('fa9c112819524f2cbad549e6ab69a489', 'luopeng', '2017-07-12 16:29:14', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('faad4b9516d74533a88173824bbbb0f1', 'admin', '2017-12-05 11:10:01', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('faafc20d12bf43f19619c84c81374bbc', 'luopeng', '2017-07-12 16:46:39', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('fae63f363d4b450eb5cf96236adf4105', 'admin', '2017-07-29 09:41:49', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('fae7814cd51f49f69716f3bb44b0cc8f', 'luopeng', '2017-07-11 18:11:33', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('fb24bb998e7843cb98155ca43382eb59', 'luopeng', '2017-07-11 13:34:33', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('fb2e39915150484f901571e396628291', 'luopeng', '2017-08-14 15:28:59', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('fb501a0bc7604dc2b0135e457f6e79db', 'admin', '2017-12-23 13:44:20', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('fbaa888756fd4d4491ab2c0e88eddd9c', 'admin', '2017-08-16 15:59:40', '删除菜单ID162');
INSERT INTO `sys_fhlog` VALUES ('fbb88565cf7c4c49a43a659ad2302406', 'admin', '2017-12-02 14:07:42', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('fbcdb9024daa43c6a6ed6eca1b7001c6', 'admin', '2017-08-16 17:10:10', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('fbcede65e9ff4a56a79592ca87f6583a', 'admin', '2017-08-18 14:26:08', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('fbea15e4fe7d450bbdac505306faec4d', 'luopeng', '2017-07-12 15:09:34', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('fc0d127267544f4e8b138c75f1664341', 'luopeng', '2017-07-12 15:18:58', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('fc1a6981cd4143988f7e91a27a7a4fa3', 'admin', '2017-12-15 16:37:54', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('fc3241644602453e835703818fb0ae6a', 'luopeng', '2017-08-15 15:12:18', '修改cha_qx权限，角色ID为:3264c8e83d0248bb9e3ea6195b4c0216');
INSERT INTO `sys_fhlog` VALUES ('fc3fb736425c484c972f1813b8370c61', 'admin', '2017-12-02 11:33:48', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('fc6bd57a3fe94989810d4b49b87f49ac', 'admin', '2017-12-15 15:50:43', '修改菜单抽成管理');
INSERT INTO `sys_fhlog` VALUES ('fc860811c74448a990e6f75eeee5d479', 'admin', '2017-12-02 11:04:12', '修改角色菜单权限，角色ID为:1');
INSERT INTO `sys_fhlog` VALUES ('fcba7f8f5d29493d8bc7b9f3b39309ec', 'yz123456', '2018-01-02 16:59:07', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('fcffc91b2c18469a8ab7a1d6c82cb623', 'admin', '2017-08-16 17:03:38', '退出');
INSERT INTO `sys_fhlog` VALUES ('fd8bab0f90e9453ea4cdf4b866c0a7b8', 'admin', '2017-12-19 10:35:05', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('fd9d48902a6541b0a9fe441826de3a98', 'admin', '2017-12-14 12:00:44', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('fe15b3bad17046d08264b67c580cc7fc', 'luopeng', '2017-08-15 15:09:48', '新增菜单null');
INSERT INTO `sys_fhlog` VALUES ('fe73d1f741b944a18c71bed276ccaa01', 'admin', '2017-12-19 18:39:34', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('fe75f2fe37034ac89fcc9b99ab7afa41', 'admin', '2017-05-11 10:58:41', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('fef1561e32354434b0ea505ee63c5b57', 'admin', '2017-12-02 09:22:31', '修改菜单会员管理');
INSERT INTO `sys_fhlog` VALUES ('ff1fff898723442a89142b1d8066b7f2', 'admin', '2017-07-17 10:13:59', '登录系统密码或用户名错误');
INSERT INTO `sys_fhlog` VALUES ('ff46a8c7905346b7965f71b7d4c542df', 'csp', '2017-08-15 08:57:27', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ff9be61cd4cd4913a79018ea1e6e1acb', 'admin', '2017-07-13 10:33:28', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ffa6984f843c42518e9e79ee4034aba7', 'admin', '2017-12-12 17:26:53', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ffd76fbee55d40b9ae1100ed768a4d37', 'admin', '2017-12-18 11:28:41', '登录系统');
INSERT INTO `sys_fhlog` VALUES ('ffe9124561024826904908b7dee6d880', 'admin', '2017-12-02 14:00:27', '登录系统');

-- ----------------------------
-- Table structure for sys_fhsms
-- ----------------------------
DROP TABLE IF EXISTS `sys_fhsms`;
CREATE TABLE `sys_fhsms` (
  `FHSMS_ID` varchar(100) NOT NULL,
  `CONTENT` varchar(1000) DEFAULT NULL COMMENT '内容',
  `TYPE` varchar(5) DEFAULT NULL COMMENT '类型',
  `TO_USERNAME` varchar(255) DEFAULT NULL COMMENT '收信人',
  `FROM_USERNAME` varchar(255) DEFAULT NULL COMMENT '发信人',
  `SEND_TIME` varchar(100) DEFAULT NULL COMMENT '发信时间',
  `STATUS` varchar(5) DEFAULT NULL COMMENT '状态',
  `SANME_ID` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`FHSMS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_fhsms
-- ----------------------------
INSERT INTO `sys_fhsms` VALUES ('05879f5868824f35932ee9f2062adc03', '你好', '2', 'admin', 'san', '2016-01-25 14:05:31', '1', 'b311e893228f42d5a05dbe16917fd16f');
INSERT INTO `sys_fhsms` VALUES ('25a50eae4b524b76b1698720b798762d', '<p><img src=\"/szjiemai/plugins/ueditor/jsp/upload1/20170706/81911499307582244.jpg\"/></p>', '2', 'san', 'admin', '2017-07-06 10:19:47', '2', '704e05547a244aacac8cd0c346164152');
INSERT INTO `sys_fhsms` VALUES ('2635dd035c6f4bb5a091abdd784bd899', '你好', '2', 'san', 'admin', '2016-01-25 14:05:02', '1', '1b7637306683460f89174c2b025862b5');
INSERT INTO `sys_fhsms` VALUES ('52378ccd4e2d4fe08994d1652af87c68', '你好', '1', 'admin', 'san', '2016-01-25 16:26:44', '1', '920b20dafdfb4c09b560884eb277c51d');
INSERT INTO `sys_fhsms` VALUES ('59f475e856304f3e93f9a350f52baa47', '<p><img src=\"/szjiemai/plugins/ueditor/jsp/upload1/20170706/49941499304957119.png\"/></p>', '2', 'san', 'admin', '2017-07-06 09:36:03', '2', '203149a0bbde415b9f9f4cd1581a3944');
INSERT INTO `sys_fhsms` VALUES ('5fa80bf1e93c4eca9b88aa985de04cad', '<p><img src=\"/szjiemai/plugins/ueditor/jsp/upload1/20170706/49941499304957119.png\"/></p>', '1', 'admin', 'san', '2017-07-06 09:36:03', '2', '203149a0bbde415b9f9f4cd1581a3944');
INSERT INTO `sys_fhsms` VALUES ('77ed13f9c49a4c4bb460c41b8580dd36', 'gggg', '2', 'admin', 'san', '2016-01-24 21:22:43', '2', 'dd9ee339576e48c5b046b94fa1901d00');
INSERT INTO `sys_fhsms` VALUES ('8755dbda1a7c4a94b5e30775e751a5be', '<p>aaaa<img src=\"/szjiemai/plugins/ueditor/jsp/upload1/20170706/67121499304895294.png\"/></p>', '1', 'admin', 'f1', '2017-07-06 09:34:57', '2', '5cd363bfd73540a5867806271731d496');
INSERT INTO `sys_fhsms` VALUES ('8be127897a284b85b9adbf6a2a4dbf1d', '<p><img src=\"/szjiemai/plugins/ueditor/jsp/upload1/20170706/91221499307720249.png\"/></p>', '1', 'admin', 'san', '2017-07-06 10:22:02', '2', 'c5e95222416f4a3aaeecc848c8fa02e6');
INSERT INTO `sys_fhsms` VALUES ('98a6869f942042a1a037d9d9f01cb50f', '你好', '1', 'admin', 'san', '2016-01-25 14:05:02', '1', '1b7637306683460f89174c2b025862b5');
INSERT INTO `sys_fhsms` VALUES ('9e00295529014b6e8a27019cbccb3da1', '柔柔弱弱', '1', 'admin', 'san', '2016-01-24 21:22:57', '1', 'a29603d613ea4e54b5678033c1bf70a6');
INSERT INTO `sys_fhsms` VALUES ('a88c2cfb39fc42a3a1d758f9eecf610a', '<p>aaaa<img src=\"/szjiemai/plugins/ueditor/jsp/upload1/20170706/67121499304895294.png\"/></p>', '2', 'f1', 'admin', '2017-07-06 09:34:57', '2', '5cd363bfd73540a5867806271731d496');
INSERT INTO `sys_fhsms` VALUES ('be6698ce0b864ae8aba6771e8c6f8058', '<p><img src=\"/szjiemai/plugins/ueditor/jsp/upload1/20170706/91221499307720249.png\"/></p>', '2', 'san', 'admin', '2017-07-06 10:22:02', '2', 'c5e95222416f4a3aaeecc848c8fa02e6');
INSERT INTO `sys_fhsms` VALUES ('c32850cc2ce54530a66b74d1aeaf584b', '<p><img src=\"/szjiemai/plugins/ueditor/jsp/upload1/20170706/26911499307540650.jpg\"/></p>', '2', 'f1', 'admin', '2017-07-06 10:19:09', '2', 'e33946b091fc41f393eb71f52969814b');
INSERT INTO `sys_fhsms` VALUES ('d3575fe1663d4d73863dac3145b11ddb', '<p><img src=\"/szjiemai/plugins/ueditor/jsp/upload1/20170706/81911499307582244.jpg\"/></p>', '1', 'admin', 'san', '2017-07-06 10:19:47', '2', '704e05547a244aacac8cd0c346164152');
INSERT INTO `sys_fhsms` VALUES ('d3aedeb430f640359bff86cd657a8f59', '你好', '1', 'admin', 'san', '2016-01-24 21:22:12', '1', 'f022fbdce3d845aba927edb698beb90b');
INSERT INTO `sys_fhsms` VALUES ('d5dfce6387d9455390ff53c194fd9351', '<p><img src=\"/szjiemai/plugins/ueditor/jsp/upload1/20170706/26911499307540650.jpg\"/></p>', '1', 'admin', 'f1', '2017-07-06 10:19:09', '2', 'e33946b091fc41f393eb71f52969814b');
INSERT INTO `sys_fhsms` VALUES ('e5376b1bd54b489cb7f2203632bd74ec', '管理员好', '2', 'admin', 'san', '2016-01-25 14:06:13', '2', 'b347b2034faf43c79b54be4627f3bd2b');
INSERT INTO `sys_fhsms` VALUES ('e613ac0fcc454f32895a70b747bf4fb5', '你也好', '2', 'admin', 'san', '2016-01-25 16:27:54', '2', 'ce8dc3b15afb40f28090f8b8e13f078d');
INSERT INTO `sys_fhsms` VALUES ('f25e00cfafe741a3a05e3839b66dc7aa', '你好', '2', 'san', 'admin', '2016-01-25 16:26:44', '1', '920b20dafdfb4c09b560884eb277c51d');

-- ----------------------------
-- Table structure for sys_loginimg
-- ----------------------------
DROP TABLE IF EXISTS `sys_loginimg`;
CREATE TABLE `sys_loginimg` (
  `LOGINIMG_ID` varchar(100) NOT NULL,
  `NAME` varchar(30) DEFAULT NULL COMMENT '文件名',
  `FILEPATH` varchar(100) DEFAULT NULL COMMENT '路径',
  `TYPE` int(2) NOT NULL COMMENT '状态',
  `FORDER` int(3) NOT NULL COMMENT '排序',
  PRIMARY KEY (`LOGINIMG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_loginimg
-- ----------------------------

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `MENU_ID` int(11) NOT NULL,
  `MENU_NAME` varchar(255) DEFAULT NULL,
  `MENU_URL` varchar(255) DEFAULT NULL,
  `PARENT_ID` varchar(100) DEFAULT NULL,
  `MENU_ORDER` varchar(100) DEFAULT NULL,
  `MENU_ICON` varchar(60) DEFAULT NULL,
  `MENU_TYPE` varchar(10) DEFAULT NULL,
  `MENU_STATE` int(1) DEFAULT NULL,
  PRIMARY KEY (`MENU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '系统管理', '#', '0', '1', 'menu-icon fa fa-desktop blue', '2', '1');
INSERT INTO `sys_menu` VALUES ('2', '权限管理', '#', '1', '1', 'menu-icon fa fa-lock black', '1', '1');
INSERT INTO `sys_menu` VALUES ('3', '日志管理', 'fhlog/list.do', '1', '6', 'menu-icon fa fa-book blue', '1', '1');
INSERT INTO `sys_menu` VALUES ('4', '文件管理', 'fhfile/list.do', '59', '3', 'menu-icon fa fa-folder-open purple', '1', '1');
INSERT INTO `sys_menu` VALUES ('6', '信息管理', '#', '0', '5', 'menu-icon fa fa-credit-card green', '2', '1');
INSERT INTO `sys_menu` VALUES ('7', '图片管理', '#', '6', '1', 'menu-icon fa fa-folder-o pink', '2', '1');
INSERT INTO `sys_menu` VALUES ('8', '性能监控', 'druid/index.html', '9', '8', 'menu-icon fa fa-tachometer red', '1', '1');
INSERT INTO `sys_menu` VALUES ('9', '系统工具', '#', '0', '3', 'menu-icon fa fa-cog black', '2', '1');
INSERT INTO `sys_menu` VALUES ('10', '接口测试', 'tool/interfaceTest.do', '9', '2', 'menu-icon fa fa-exchange green', '1', '1');
INSERT INTO `sys_menu` VALUES ('11', '发送邮件', 'tool/goSendEmail.do', '9', '3', 'menu-icon fa fa-envelope-o green', '1', '1');
INSERT INTO `sys_menu` VALUES ('12', '置二维码', 'tool/goTwoDimensionCode.do', '9', '4', 'menu-icon fa fa-barcode green', '1', '1');
INSERT INTO `sys_menu` VALUES ('14', '地图工具', 'tool/map.do', '9', '6', 'menu-icon fa fa-globe black', '1', '1');
INSERT INTO `sys_menu` VALUES ('15', '微信管理', '#', '0', '4', 'menu-icon fa fa-comments purple', '2', '1');
INSERT INTO `sys_menu` VALUES ('16', '文本回复', 'textmsg/list.do', '15', '2', 'menu-icon fa fa-comment green', '2', '1');
INSERT INTO `sys_menu` VALUES ('17', '应用命令', 'command/list.do', '15', '4', 'menu-icon fa fa-comment grey', '2', '1');
INSERT INTO `sys_menu` VALUES ('18', '图文回复', 'imgmsg/list.do', '15', '3', 'menu-icon fa fa-comment pink', '2', '1');
INSERT INTO `sys_menu` VALUES ('19', '关注回复', 'textmsg/goSubscribe.do', '15', '1', 'menu-icon fa fa-comment orange', '2', '1');
INSERT INTO `sys_menu` VALUES ('20', '在线管理', 'onlinemanager/list.do', '1', '5', 'menu-icon fa fa-laptop green', '1', '1');
INSERT INTO `sys_menu` VALUES ('21', '打印测试', 'tool/printTest.do', '9', '7', 'menu-icon fa fa-hdd-o grey', '1', '1');
INSERT INTO `sys_menu` VALUES ('36', '角色(基础权限)', 'role.do', '2', '1', 'menu-icon fa fa-key orange', '1', '1');
INSERT INTO `sys_menu` VALUES ('37', '按钮权限', 'buttonrights/list.do', '2', '2', 'menu-icon fa fa-key green', '1', '1');
INSERT INTO `sys_menu` VALUES ('38', '菜单管理', 'menu/listAllMenu.do', '1', '3', 'menu-icon fa fa-folder-open-o brown', '1', '1');
INSERT INTO `sys_menu` VALUES ('39', '按钮管理', 'fhbutton/list.do', '1', '2', 'menu-icon fa fa-download orange', '1', '1');
INSERT INTO `sys_menu` VALUES ('40', '用户管理', '#', '0', '2', 'menu-icon fa fa-users blue', '2', '1');
INSERT INTO `sys_menu` VALUES ('41', '系统用户', 'user/listUsers.do', '40', '1', 'menu-icon fa fa-users green', '1', '1');
INSERT INTO `sys_menu` VALUES ('43', '数据字典', 'dictionaries/listAllDict.do?DICTIONARIES_ID=0', '1', '4', 'menu-icon fa fa-book purple', '1', '1');
INSERT INTO `sys_menu` VALUES ('44', '代码生成器', '#', '9', '0', 'menu-icon fa fa-cogs brown', '1', '1');
INSERT INTO `sys_menu` VALUES ('48', '图表报表', ' tool/fusionchartsdemo.do', '9', '5', 'menu-icon fa fa-bar-chart-o black', '1', '1');
INSERT INTO `sys_menu` VALUES ('50', '站内信', 'fhsms/list.do', '6', '3', 'menu-icon fa fa-envelope green', '1', '1');
INSERT INTO `sys_menu` VALUES ('51', '图片列表', 'pictures/list.do', '7', '1', 'menu-icon fa fa-folder-open-o green', '1', '1');
INSERT INTO `sys_menu` VALUES ('52', '图片爬虫', 'pictures/goImageCrawler.do', '7', '2', 'menu-icon fa fa-cloud-download green', '1', '1');
INSERT INTO `sys_menu` VALUES ('53', '表单构建器', 'tool/goFormbuilder.do', '9', '1', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('54', '数据库管理', '#', '0', '9', 'menu-icon fa fa-hdd-o blue', '2', '1');
INSERT INTO `sys_menu` VALUES ('55', '数据库备份', 'brdb/listAllTable.do', '54', '1', 'menu-icon fa fa-cloud-upload blue', '1', '1');
INSERT INTO `sys_menu` VALUES ('56', '数据库还原', 'brdb/list.do', '54', '3', 'menu-icon fa fa-cloud-download blue', '1', '1');
INSERT INTO `sys_menu` VALUES ('57', '备份定时器', 'timingbackup/list.do', '54', '2', 'menu-icon fa fa-tachometer blue', '1', '1');
INSERT INTO `sys_menu` VALUES ('58', 'SQL编辑器', 'sqledit/view.do', '54', '4', 'menu-icon fa fa-pencil-square-o blue', '1', '1');
INSERT INTO `sys_menu` VALUES ('59', 'OA办公', '#', '0', '6', 'menu-icon fa fa-laptop pink', '2', '1');
INSERT INTO `sys_menu` VALUES ('60', '组织机构', 'department/listAllDepartment.do?DEPARTMENT_ID=0', '59', '1', 'menu-icon fa fa-users green', '1', '1');
INSERT INTO `sys_menu` VALUES ('61', '反向生成', 'recreateCode/list.do', '44', '2', 'menu-icon fa fa-cogs blue', '1', '1');
INSERT INTO `sys_menu` VALUES ('62', '正向生成', 'createCode/list.do', '44', '1', 'menu-icon fa fa-cogs green', '1', '1');
INSERT INTO `sys_menu` VALUES ('63', '主附结构', 'attached/list.do', '6', '2', 'menu-icon fa fa-folder-open blue', '1', '1');
INSERT INTO `sys_menu` VALUES ('64', '员工管理', 'staff/list.do', '59', '2', 'menu-icon fa fa-users blue', '1', '1');
INSERT INTO `sys_menu` VALUES ('65', '多数据源', 'datasource2/list.do', '6', '4', 'menu-icon fa fa-folder-open-o purple', '1', '1');
INSERT INTO `sys_menu` VALUES ('66', '下拉联动', 'linkage/view.do', '6', '5', 'menu-icon fa fa-exchange green', '1', '1');
INSERT INTO `sys_menu` VALUES ('67', '微信菜单设置', 'WeixinMenu/listAllDict.do?DICTIONARIES_ID=0', '15', '4', 'menu-icon fa fa-comment purple', '1', '1');
INSERT INTO `sys_menu` VALUES ('68', '素材管理', '#', '15', '6', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('69', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('70', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('71', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('72', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('73', '临时素材', 'wechatmedia/list.do', '68', '1', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('74', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('75', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('76', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('77', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('78', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('79', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('80', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('81', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('82', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('83', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('84', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('85', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('86', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('87', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('88', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('89', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('90', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('91', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('92', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('93', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('94', '永久素材', 'wechatmaterialmedia/list.do', '68', '2', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('95', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('96', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('97', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('98', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('99', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('100', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('101', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('102', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('103', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('104', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('105', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('106', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('107', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('108', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('109', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('110', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('111', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('112', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('113', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('114', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('115', '永久图文素材', 'wechatnews/list.do', '68', '3', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('116', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('117', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('118', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('119', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('120', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('121', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('122', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('123', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('124', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('125', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('126', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('127', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('128', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('129', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('130', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('131', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('132', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('133', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('134', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('135', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('136', '用户管理', 'wechatuser/list.do', '15', '1', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('137', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('138', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('139', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('140', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('141', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('142', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('143', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('144', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('145', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('146', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('147', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('148', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('149', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('150', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('151', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('152', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('153', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('154', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('155', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('156', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('157', '酒店管理', '#', '0', '9', 'menu-icon fa fa-leaf black', '2', '1');
INSERT INTO `sys_menu` VALUES ('159', '酒店信息', 'hotel/list.do', '157', '2', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('160', '订单管理', 'order/list.do', '157', '3', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('161', '酒店服务管理', 'service/list.do', '157', '4', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('163', '酒店位置', 'hotallocation/list.do', '157', '7', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('164', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('165', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('166', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('167', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('168', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('169', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('170', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('171', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('172', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('173', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('174', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('175', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('176', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('177', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('178', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('179', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('180', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('181', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('182', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('183', null, null, null, null, 'menu-icon fa fa-leaf black', null, null);
INSERT INTO `sys_menu` VALUES ('184', 'App后台管理', '#', '0', '10', 'menu-icon fa fa-leaf black', '2', '1');
INSERT INTO `sys_menu` VALUES ('185', '技师管理', 'artificer/list.do', '184', '1', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('186', '充值记录', 'recharge/list.do', '184', '2', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('187', '客户管理', 'customermanage/list.do', '184', '3', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('188', '技能管理', 'skill/list.do', '184', '4', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('189', '系统设置', 'configvalue/list.do', '184', '5', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('190', '预约时间管理', 'timeframe/list.do', '184', '6', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('191', '订单管理', 'orderlist/list.do', '184', '7', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('193', '抽成管理', '#', '0', '10', 'menu-icon fa fa-leaf black', '2', '1');
INSERT INTO `sys_menu` VALUES ('194', '技师订单详细', 'orderdetails/list.do', '193', '1', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('195', '技师抽成管理', 'artificerPercentage/list.do', '193', '2', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('196', '抽成统计', 'aritficerstatistics/list.do', '193', '3', 'menu-icon fa fa-leaf black', '1', '1');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `ROLE_ID` varchar(100) NOT NULL,
  `ROLE_NAME` varchar(100) DEFAULT NULL,
  `RIGHTS` varchar(255) DEFAULT NULL,
  `PARENT_ID` varchar(100) DEFAULT NULL,
  `ADD_QX` varchar(255) DEFAULT NULL,
  `DEL_QX` varchar(255) DEFAULT NULL,
  `EDIT_QX` varchar(255) DEFAULT NULL,
  `CHA_QX` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '系统管理组', '194565633885323206078259812461276012108470430849222706192350', '0', '1', '1', '1', '1');
INSERT INTO `sys_role` VALUES ('115b386ff04f4352b060dffcd2b5d1da', '中级会员', '', '2', '0', '0', '0', '0');
INSERT INTO `sys_role` VALUES ('1b67fc82ce89457a8347ae53e43a347e', '初级会员', '', '2', '0', '0', '0', '0');
INSERT INTO `sys_role` VALUES ('2', '会员组', '', '0', '0', '0', '0', '1');
INSERT INTO `sys_role` VALUES ('3', '注册用户', '112987831236960253749044209617737995489842398000352621232128', '1', '194565633868333249457175738567003253952235118952430132264960', '194565633868333249457175738567003253952235118952430132264960', '194565633868333249457175738567003253952235118952430132264960', '194565633868333249457175738567003253952235118952430132264960');
INSERT INTO `sys_role` VALUES ('3264c8e83d0248bb9e3ea6195b4c0216', '一级管理员', '194565633885323206078259812461276012108470430849222706192350', '1', '94132006119136313856887181689953349450832743737798153986014', '94132006119136313856887181689953349450832743737798153986014', '94132006119136313856887181689953349450832743737798153986014', '94132006119136313856887181689953349450832743737798153986014');
INSERT INTO `sys_role` VALUES ('46294b31a71c4600801724a6eb06bb26', '职位组', '', '0', '0', '0', '0', '0');
INSERT INTO `sys_role` VALUES ('5466347ac07044cb8d82990ec7f3a90e', '主管', '', '46294b31a71c4600801724a6eb06bb26', '0', '0', '0', '0');
INSERT INTO `sys_role` VALUES ('68f8e4a39efe47c7bb869e9d15ab925d', '二级管理员', '73786413343844589510', '1', '87879424295413530693701051924907329825432976222496483180544', '87879424295413530693701051924907329825432976222496483180544', '2251798773489606', '87879424295413530693701051924907329825432976222496483180544');
INSERT INTO `sys_role` VALUES ('856849f422774ad390a4e564054d8cc8', '经理', '', '46294b31a71c4600801724a6eb06bb26', '0', '0', '0', '0');
INSERT INTO `sys_role` VALUES ('8b70a7e67f2841e7aaba8a4d92e5ff6f', '高级会员', '', '2', '0', '0', '0', '0');
INSERT INTO `sys_role` VALUES ('c21cecf84048434b93383182b1d98cba', '组长', '', '46294b31a71c4600801724a6eb06bb26', '0', '0', '0', '0');
INSERT INTO `sys_role` VALUES ('d449195cd8e7491080688c58e11452eb', '总监', '', '46294b31a71c4600801724a6eb06bb26', '0', '0', '0', '0');
INSERT INTO `sys_role` VALUES ('de9de2f006e145a29d52dfadda295353', '三级管理员', '194565633868333249457175738567003253952235118955728667148288', '1', '194565633868333249457175738567003253952235118955728667148288', '194565633868333249457175738567003253952235118955728667148288', '194565633868333249457175738567003253952235118955728667148288', '194565633868333249457175738567003253952235118955728667148288');

-- ----------------------------
-- Table structure for sys_role_fhbutton
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_fhbutton`;
CREATE TABLE `sys_role_fhbutton` (
  `RB_ID` varchar(100) NOT NULL,
  `ROLE_ID` varchar(100) DEFAULT NULL,
  `BUTTON_ID` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`RB_ID`),
  KEY `角色表外键` (`ROLE_ID`) USING BTREE,
  KEY `fbutton` (`BUTTON_ID`),
  CONSTRAINT `fbutton` FOREIGN KEY (`BUTTON_ID`) REFERENCES `sys_fhbutton` (`FHBUTTON_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `frole` FOREIGN KEY (`ROLE_ID`) REFERENCES `sys_role` (`ROLE_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role_fhbutton
-- ----------------------------
INSERT INTO `sys_role_fhbutton` VALUES ('1743733f366240c693c4295b527d1b0e', 'de9de2f006e145a29d52dfadda295353', '4efa162fce8340f0bd2dcd3b11d327ec');
INSERT INTO `sys_role_fhbutton` VALUES ('33f41aadd4914921b8de0cc6f7e0aee7', '3264c8e83d0248bb9e3ea6195b4c0216', '46992ea280ba4b72b29dedb0d4bc0106');
INSERT INTO `sys_role_fhbutton` VALUES ('469ffb4848ad49c389867d99560a4698', 'de9de2f006e145a29d52dfadda295353', '46992ea280ba4b72b29dedb0d4bc0106');
INSERT INTO `sys_role_fhbutton` VALUES ('4ee1e2bc03a64ef1bc578fcf2e2ea2c1', '68f8e4a39efe47c7bb869e9d15ab925d', '3542adfbda73410c976e185ffe50ad06');
INSERT INTO `sys_role_fhbutton` VALUES ('5669c8754b4d4e368365ed5065f9fc10', '3264c8e83d0248bb9e3ea6195b4c0216', '3542adfbda73410c976e185ffe50ad06');
INSERT INTO `sys_role_fhbutton` VALUES ('6cc655a1f9b746eea6af9df540f8e743', '3', 'da7fd386de0b49ce809984f5919022b8');
INSERT INTO `sys_role_fhbutton` VALUES ('74203935bfa34ce3b9b80e81f2a2bcfe', '68f8e4a39efe47c7bb869e9d15ab925d', '4efa162fce8340f0bd2dcd3b11d327ec');
INSERT INTO `sys_role_fhbutton` VALUES ('81d31bc5bf02490a85ce496b6755ef26', '3', '46992ea280ba4b72b29dedb0d4bc0106');
INSERT INTO `sys_role_fhbutton` VALUES ('8231c216fb514b4188e4162e629c6237', '3264c8e83d0248bb9e3ea6195b4c0216', '4efa162fce8340f0bd2dcd3b11d327ec');
INSERT INTO `sys_role_fhbutton` VALUES ('83a82c2e934a4456bdb65fa3d87e0907', '3264c8e83d0248bb9e3ea6195b4c0216', 'cc51b694d5344d28a9aa13c84b7166cd');
INSERT INTO `sys_role_fhbutton` VALUES ('88f66a65ee1642bea7979e0e1050ac5f', '3', '4efa162fce8340f0bd2dcd3b11d327ec');
INSERT INTO `sys_role_fhbutton` VALUES ('8e478e8615ee455e95671ba05a29e457', 'de9de2f006e145a29d52dfadda295353', '3542adfbda73410c976e185ffe50ad06');
INSERT INTO `sys_role_fhbutton` VALUES ('91958c938bfe4a5fb7b18c7c6a871848', '3264c8e83d0248bb9e3ea6195b4c0216', 'fc5e8767b4564f34a0d2ce2375fcc92e');
INSERT INTO `sys_role_fhbutton` VALUES ('96100cb325bc44a38918aff3a9818268', '3264c8e83d0248bb9e3ea6195b4c0216', '4c7f34b9eed54683957f356afcda24df');
INSERT INTO `sys_role_fhbutton` VALUES ('96f3196e49f0471bb81bd5cb48511ea7', '3264c8e83d0248bb9e3ea6195b4c0216', 'ef4cd7dd582f4881bc25efc00d818e68');
INSERT INTO `sys_role_fhbutton` VALUES ('9c30cc6b58da480b83c8566f83f9f639', '3', 'fc5e8767b4564f34a0d2ce2375fcc92e');
INSERT INTO `sys_role_fhbutton` VALUES ('9cf9f6a047f14353863b623603a1413c', '3264c8e83d0248bb9e3ea6195b4c0216', '03eff82bae1c4a8aa809b9bbe7c9e980');
INSERT INTO `sys_role_fhbutton` VALUES ('a45f54074f634b698038455f204faf26', 'de9de2f006e145a29d52dfadda295353', 'da7fd386de0b49ce809984f5919022b8');
INSERT INTO `sys_role_fhbutton` VALUES ('cebf4460cdb64161aa158baae84962fa', 'de9de2f006e145a29d52dfadda295353', 'fc5e8767b4564f34a0d2ce2375fcc92e');
INSERT INTO `sys_role_fhbutton` VALUES ('cfcda227784546709de71ae8025cd29c', '3264c8e83d0248bb9e3ea6195b4c0216', 'da7fd386de0b49ce809984f5919022b8');
INSERT INTO `sys_role_fhbutton` VALUES ('d51dc41918b040a78a021c9a43caf8d5', '68f8e4a39efe47c7bb869e9d15ab925d', 'da7fd386de0b49ce809984f5919022b8');
INSERT INTO `sys_role_fhbutton` VALUES ('d80abc961d594f75b65e90d5b7437aa9', '3', 'cc51b694d5344d28a9aa13c84b7166cd');
INSERT INTO `sys_role_fhbutton` VALUES ('e593aa2a633447b3ba4f864290672967', '3264c8e83d0248bb9e3ea6195b4c0216', 'b54c399d72ff4528beaeff82d2f48f5c');
INSERT INTO `sys_role_fhbutton` VALUES ('f0329033d0914faf8ea6e9ff252cc5e6', '68f8e4a39efe47c7bb869e9d15ab925d', '46992ea280ba4b72b29dedb0d4bc0106');
INSERT INTO `sys_role_fhbutton` VALUES ('f627982cc9d4479dbc03af726dc6ac58', 'de9de2f006e145a29d52dfadda295353', 'cc51b694d5344d28a9aa13c84b7166cd');
INSERT INTO `sys_role_fhbutton` VALUES ('f919c1f620634bdaa353a9f63194a2e0', '3', '3542adfbda73410c976e185ffe50ad06');

-- ----------------------------
-- Table structure for sys_sms
-- ----------------------------
DROP TABLE IF EXISTS `sys_sms`;
CREATE TABLE `sys_sms` (
  `sms_id` int(255) NOT NULL AUTO_INCREMENT,
  `sms_text` text,
  `receiver` varchar(200) DEFAULT NULL,
  `statue` varchar(11) DEFAULT NULL,
  `create_user` varchar(255) DEFAULT NULL,
  `create_date` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sms_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_sms
-- ----------------------------
INSERT INTO `sys_sms` VALUES ('1', '您的验证码是：12358 。请不要把验证码泄露给其他人。', '17688754263', '0', 'admin', '2017-07-06 16:46:55');
INSERT INTO `sys_sms` VALUES ('2', '您的验证码是：12358 。请不要把验证码泄露给其他人。', '17688754263', '0', 'admin', '2017-07-06 16:49:25');
INSERT INTO `sys_sms` VALUES ('3', '您的验证码是：12358 。请不要把验证码泄露给其他人。', '18227819303', '0', 'admin', '2017-07-07 09:19:53');
INSERT INTO `sys_sms` VALUES ('4', '您的验证码是：12358 。请不要把验证码泄露给其他人。', '17688754263', '0', 'admin', '2017-07-07 09:19:53');
INSERT INTO `sys_sms` VALUES ('5', '您的验证码是：12358 。请不要把验证码泄露给其他人。', '13790445950', '0', 'admin', '2017-07-07 09:19:53');
INSERT INTO `sys_sms` VALUES ('6', '您的验证码是：12358 。请不要把验证码泄露给其他人。', '13098867294', '0', 'admin', '2017-07-27 17:23:11');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `USER_ID` varchar(100) NOT NULL,
  `USERNAME` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `RIGHTS` varchar(255) DEFAULT NULL,
  `ROLE_ID` varchar(100) DEFAULT NULL,
  `LAST_LOGIN` varchar(255) DEFAULT NULL,
  `IP` varchar(100) DEFAULT NULL,
  `STATUS` varchar(32) DEFAULT NULL,
  `BZ` varchar(255) DEFAULT NULL,
  `SKIN` varchar(100) DEFAULT NULL,
  `EMAIL` varchar(32) DEFAULT NULL,
  `NUMBER` varchar(100) DEFAULT NULL,
  `PHONE` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', 'dd94709528bb1c83d08f3088d4043f4742891f4f', 'admin', '1133671055321055258374707980945218933803269864762743594642571294', '1', '2018-01-02 13:22:53', '175.10.167.124', '0', 'admin', 'default', 'QQ313596790@main.com', '001', '18788888888');
INSERT INTO `sys_user` VALUES ('61f3596ad28d4f4caead5409271d10fc', '1111', 'b3bdd4d2a35f43f879bc23247af088a109cc78f7', 'asdas', '', '3', '2017-12-20 18:32:57', '0:0:0:0:0:0:0:1', '0', '注册用户', 'default', '123@16.com', '', '');
INSERT INTO `sys_user` VALUES ('d187446b50a14683813ef74cc2abe69d', 'yz123456', '7dc344fdedf31f6d9aa90606d5d64505187fdd76', '莹姿', '', 'de9de2f006e145a29d52dfadda295353', '2018-04-16 11:04:52', '113.91.43.110', '0', '', 'default', 'yz@163.com', 'yz123456', '15899776132');
INSERT INTO `sys_user` VALUES ('ea4ef383e1974be4b941c46f3cbbfa51', '999', 'dd94709528bb1c83d08f3088d4043f4742891f4f', '莹姿', '', '3', '2017-12-20 11:56:41', '127.0.0.1', '0', '注册用户', 'default', '3149258741@qq.com', '', '');

-- ----------------------------
-- Table structure for sys_userphoto
-- ----------------------------
DROP TABLE IF EXISTS `sys_userphoto`;
CREATE TABLE `sys_userphoto` (
  `USERPHOTO_ID` varchar(100) NOT NULL,
  `USERNAME` varchar(30) DEFAULT NULL COMMENT '用户名',
  `PHOTO0` varchar(255) DEFAULT NULL COMMENT '原图',
  `PHOTO1` varchar(100) DEFAULT NULL COMMENT '头像1',
  `PHOTO2` varchar(100) DEFAULT NULL COMMENT '头像2',
  `PHOTO3` varchar(100) DEFAULT NULL COMMENT '头像3',
  PRIMARY KEY (`USERPHOTO_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_userphoto
-- ----------------------------

-- ----------------------------
-- Table structure for sys_wechat_media
-- ----------------------------
DROP TABLE IF EXISTS `sys_wechat_media`;
CREATE TABLE `sys_wechat_media` (
  `wechat_media_id` int(11) NOT NULL AUTO_INCREMENT,
  `media_id` varchar(255) DEFAULT NULL COMMENT '获取标识',
  `type` varchar(255) DEFAULT NULL COMMENT '媒体文件类型',
  `created_at` varchar(255) DEFAULT NULL COMMENT '媒体文件上传时间戳',
  `location` varchar(255) DEFAULT NULL COMMENT '本地保存位置',
  `url` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL COMMENT '永久视频素材标题',
  `introduction` varchar(255) DEFAULT NULL COMMENT '永久视频素材介绍',
  `temporaryOrMaterial` varchar(255) DEFAULT NULL COMMENT '0为临时，1为永久',
  `UPDATE_TIME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`wechat_media_id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_wechat_media
-- ----------------------------
INSERT INTO `sys_wechat_media` VALUES ('97', 'kNBZsdanUiP-TvVnYHJxqXvfEGiRI7CkpT_3qe08M0s', 'news', null, null, null, null, null, '1', '1497506325');
INSERT INTO `sys_wechat_media` VALUES ('98', 'kNBZsdanUiP-TvVnYHJxqZt9Pd9iIsVVZ5PKfmVAtsY', 'news', null, null, null, null, null, '1', '1479104027');
INSERT INTO `sys_wechat_media` VALUES ('99', 'kNBZsdanUiP-TvVnYHJxqXS2KFGZgKsOCag8uxpaTUg', 'news', null, null, null, null, null, '1', '1479097057');
INSERT INTO `sys_wechat_media` VALUES ('100', 'PwZpO9iqbLFKXU3hP1AYaKeEwBbwSrTqvWhY3P3ys4U', 'news', null, null, null, null, null, '1', '1427614549');
INSERT INTO `sys_wechat_media` VALUES ('101', 'oiTaPQTUzDFpC1qbmr_jjsgIHxIWD-OOnBUcph6e-aY', 'news', null, null, null, null, null, '1', '1421581722');
INSERT INTO `sys_wechat_media` VALUES ('102', 'sweBknvMiKNC3QPhW8y4qfCwEp-ffqD11RthqlIlfVQ', 'news', null, null, null, null, null, '1', '1455861644');
INSERT INTO `sys_wechat_media` VALUES ('103', 'kNBZsdanUiP-TvVnYHJxqR1gCeBsswEKHWTEQ84P5LQ', 'image', '1500459228546', 'd:/upload/temp/1e7bb846-3f5e-4510-916f-3e44778cc4c3.png', 'http://mmbiz.qpic.cn/mmbiz_png/5ic4GqbFCCHVtNm0ZOxC1obteSoXcVKfNNBJlkd7pVfMDWfSdaU7IWkfWLNbiaZhAia919SHcIYkwGIhbv8ppo7Rw/0?wx_fmt=png', null, null, '1', null);

-- ----------------------------
-- Table structure for sys_wechat_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_wechat_menu`;
CREATE TABLE `sys_wechat_menu` (
  `DICTIONARIES_ID` varchar(100) NOT NULL,
  `NAME_EN` varchar(50) DEFAULT NULL COMMENT '英文',
  `BIANMA` varchar(50) DEFAULT NULL COMMENT '编码',
  `BZ` varchar(255) DEFAULT NULL COMMENT '备注',
  `TBSNAME` varchar(100) DEFAULT NULL COMMENT '排查表',
  `NAME` varchar(30) DEFAULT NULL COMMENT '名称',
  `PARENT_ID` varchar(100) DEFAULT NULL COMMENT '上级ID',
  `ORDER_BY` int(11) DEFAULT NULL COMMENT '排序',
  `TYPE` varchar(255) DEFAULT NULL,
  `KEE` varchar(255) DEFAULT NULL,
  `URL` varchar(255) DEFAULT NULL,
  `MEDIA_ID` varchar(255) DEFAULT NULL,
  `APPID` varchar(255) DEFAULT NULL,
  `PAGEPATH` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`DICTIONARIES_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_wechat_menu
-- ----------------------------

-- ----------------------------
-- Table structure for sys_wechat_news
-- ----------------------------
DROP TABLE IF EXISTS `sys_wechat_news`;
CREATE TABLE `sys_wechat_news` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '图文消息的标题',
  `thumb_media_id` varchar(255) DEFAULT NULL COMMENT '图文消息的封面图片素材id（必须是永久mediaID）',
  `show_cover_pic` varchar(255) DEFAULT NULL COMMENT '是否显示封面，0为false，即不显示，1为true，即显示',
  `author` varchar(255) DEFAULT NULL COMMENT '作者',
  `digest` varchar(255) DEFAULT NULL COMMENT '图文消息的摘要，仅有单图文消息才有摘要，多图文此处为空',
  `content` text COMMENT '图文消息的具体内容，支持HTML标签，必须少于2万字符，小于1M，且此处会去除JS',
  `url` varchar(255) DEFAULT NULL COMMENT '图文页的URL，或者，当获取的列表是图片素材列表时，该字段是图片的URL',
  `content_source_url` varchar(255) DEFAULT NULL COMMENT '图文消息的原文地址，即点击“阅读原文”后的URL',
  `media_id` varchar(255) DEFAULT NULL,
  `order_by` int(11) DEFAULT NULL,
  `wechat_media_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB AUTO_INCREMENT=457 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_wechat_news
-- ----------------------------
INSERT INTO `sys_wechat_news` VALUES ('450', '星超越', 'kNBZsdanUiP-TvVnYHJxqRb33Nuuws1iR8Jd882kg5Q', '1', '', '樱花高尔夫抢购活动', '<p><span style=\"color: rgb(32, 77, 15); font-family: calibri, verdana, ����; font-size: 12px; white-space: normal;\">湖北省五乐台度假区有限公司是集高球、餐饮、水上娱乐、有机农场、度假酒店、地产为一体的综合性旅游项目，立志于打造“华中顶级”的旅游品牌。度假区位于素有“千湖之省”著称的湖北省仙桃市（古称“沔阳”），其地理位置得天独厚，东邻华中首府武汉，西接历史文化名城荆州；神龙架国家森林公园，宜昌三峡大坝等著名自然人文景观环绕其左右。</span></p>', 'http://mp.weixin.qq.com/s?__biz=MzAxNTE4NjMzMQ==&mid=501398434&idx=1&sn=9e751b15d202697754f94e63e7fdacda&chksm=0391fb5634e67240421a39c17be21fd992e1eee9fb686f2221fedea286bbbba536d3edbbad97#rd', 'http://www.baidu.com', 'kNBZsdanUiP-TvVnYHJxqXvfEGiRI7CkpT_3qe08M0s', '0', '97');
INSERT INTO `sys_wechat_news` VALUES ('451', 'test', 'qmN2lW9s-7QEkwdi5lMDKuCx_VbfWa7e-ob8_hrH1ys', '0', 'test', 'test', '<p><img data-s=\"300,640\" data-type=\"jpeg\" data-src=\"http://mmbiz.qpic.cn/mmbiz/5ic4GqbFCCHWGmTmKSGMsicWDSXYJvBTy4WdGcxwd3KPBFJgmf4Z52eY2iaejFUbySAltLkfgsXrJpNukjFhj3PCw/0?wx_fmt=jpeg\" data-ratio=\"0.9375\" data-w=\"256\"  /><br  /><img data-type=\"gif\" data-src=\"http://mmbiz.qpic.cn/mmbiz/5ic4GqbFCCHWGmTmKSGMsicWDSXYJvBTy4oaCTypJJic2AzyQLDaic9KQE0BcX0QTYD0icl0NMKUoSfzjib7HfHamUQA/0?wx_fmt=gif\" data-ratio=\"0.9872881355932204\" data-w=\"236\"  /><br  />test</p>', 'http://mp.weixin.qq.com/s?__biz=MzAxNTE4NjMzMQ==&mid=501398429&idx=1&sn=68b1fa86f085c013cd324246467216c9&chksm=0391fb6934e6727f53f31217741919b86fd788babe39d43a79259049b396f40f314211a8d615#rd', '', 'kNBZsdanUiP-TvVnYHJxqZt9Pd9iIsVVZ5PKfmVAtsY', '0', '98');
INSERT INTO `sys_wechat_news` VALUES ('452', 'test', 'qmN2lW9s-7QEkwdi5lMDKuCx_VbfWa7e-ob8_hrH1ys', '0', 'test', 'test', '<p><img data-type=\"gif\" data-src=\"http://mmbiz.qpic.cn/mmbiz/5ic4GqbFCCHWGmTmKSGMsicWDSXYJvBTy4oaCTypJJic2AzyQLDaic9KQE0BcX0QTYD0icl0NMKUoSfzjib7HfHamUQA/0?wx_fmt=gif\" data-ratio=\"0.9872881355932204\" data-w=\"236\" style=\"width: 100%; height: auto;\"  /></p><p><img data-s=\"300,640\" data-type=\"jpeg\" data-src=\"http://mmbiz.qpic.cn/mmbiz/5ic4GqbFCCHWGmTmKSGMsicWDSXYJvBTy4WdGcxwd3KPBFJgmf4Z52eY2iaejFUbySAltLkfgsXrJpNukjFhj3PCw/0?wx_fmt=jpeg\" style=\"width: 100%; height: auto;\" data-ratio=\"0.9375\" data-w=\"256\"  /><br  /></p><p>test<br  /><img data-s=\"300,640\" data-type=\"jpeg\" data-src=\"http://mmbiz.qpic.cn/mmbiz/5ic4GqbFCCHVeKrjJFic47ODiaRJ7ibzY3WiaLdeVC4LHjC2ztLvJzs2PWyEJMsVIPD2nBtQxktr9TglxSHYaHRWQKg/0\" data-ratio=\"1.4148936170212767\" data-w=\"940\"  /><br  /></p>', 'http://mp.weixin.qq.com/s?__biz=MzAxNTE4NjMzMQ==&mid=501398428&idx=1&sn=4d6ca5e749f6254c98ed15fe63fbf6b2&chksm=0391fb6834e6727e9f9b5ec90a6d94983cf8593b93a830433c8d90b0fad9936011c636935f86#rd', '', 'kNBZsdanUiP-TvVnYHJxqXS2KFGZgKsOCag8uxpaTUg', '0', '99');
INSERT INTO `sys_wechat_news` VALUES ('453', 'test', 'kNBZsdanUiP-TvVnYHJxqRshpOCyKVNECO5seE5MG7g', '0', '', 'test', '<p>test</p><p><img data-s=\"300,640\" data-type=\"jpeg\" data-src=\"http://mmbiz.qpic.cn/mmbiz/5ic4GqbFCCHVuSdPMYUMYvzvf5DuQX1P2ibBhQfd0wia8hP9lXjq7qdWmpTW7I4r6Ea93Lv3bYwkaqRmOK3FBdhgg/0?wx_fmt=jpeg\" style=\"\" data-ratio=\"0.9971181556195965\" data-w=\"347\"  /></p><p><img data-type=\"gif\" data-src=\"http://mmbiz.qpic.cn/mmbiz/5ic4GqbFCCHWGmTmKSGMsicWDSXYJvBTy4oaCTypJJic2AzyQLDaic9KQE0BcX0QTYD0icl0NMKUoSfzjib7HfHamUQA/0?wx_fmt=gif\" style=\"\" data-ratio=\"0.9872881355932204\" data-w=\"236\"  /></p><p><img data-s=\"300,640\" data-type=\"jpeg\" data-src=\"http://mmbiz.qpic.cn/mmbiz/5ic4GqbFCCHVeKrjJFic47ODiaRJ7ibzY3WiaLdeVC4LHjC2ztLvJzs2PWyEJMsVIPD2nBtQxktr9TglxSHYaHRWQKg/0\" style=\"\" data-ratio=\"1.4148936170212767\" data-w=\"940\"  /></p><p><br  /></p><p><br  /></p>', 'http://mp.weixin.qq.com/s?__biz=MzAxNTE4NjMzMQ==&mid=501398428&idx=2&sn=8acf2917763125e3f4ce097be566082a&chksm=0391fb6834e6727e10cabebb63afdeaf687508424ce36d4ae79d392ff76697d976d9788c24e8#rd', '', 'kNBZsdanUiP-TvVnYHJxqXS2KFGZgKsOCag8uxpaTUg', '1', '99');
INSERT INTO `sys_wechat_news` VALUES ('454', '\"F-SHOW\"--IPAD家居导购', 'PwZpO9iqbLFKXU3hP1AYaK5t9b04EDyTSiSeJg0YnLU', '0', '', '\"F-SHOW\"--IPAD家居导购', '<p style=\"text-align: center;\"><span style=\"font-size: 18px;\"><strong><span style=\"color: rgb(255, 0, 0);\">&quot;F-SHOW&quot;--IPAD家居导购</span></strong></span></p><p><img data-src=\"http://mmbiz.qpic.cn/mmbiz/5ic4GqbFCCHVeKrjJFic47ODiaRJ7ibzY3WiasEvYESEibzwsePrMmoqV5qxiciar5ibGlrgQ0lfMjkMV4Ipib8QcJGrwM5A/0\" data-type=\"jpeg\" data-s=\"300,640\" data-ratio=\"3.893069306930693\" data-w=\"\"  /><br  /> </p>', 'http://mp.weixin.qq.com/s?__biz=MzAxNTE4NjMzMQ==&mid=203932595&idx=1&sn=444f526de660c5fd948c3d98e3b33558#rd', '', 'PwZpO9iqbLFKXU3hP1AYaKeEwBbwSrTqvWhY3P3ys4U', '0', '100');
INSERT INTO `sys_wechat_news` VALUES ('455', '据说，这是自己眼中和别人眼中的家乡', 'oiTaPQTUzDFpC1qbmr_jjiTAqbIbK6ZJOVzthSou43o', '0', '', '中国领土北起漠河以北的黑龙江江心（北纬53°30′），南到南沙群岛南端的曾母暗沙（北纬4°），跨纬度49度多；东起黑龙江与乌苏里江汇合处（东经135°05′），西到帕米尔高原（东经73°40′），跨经度60多度。', '<p style=\"text-align: left;\"></p><p><article style=\" display: block;  min-height: 100px; \"><img style=\"border: 0px currentColor; width: 600px; display: block;\" id=\"c1421581311539\" class=\"lazys\" data-src=\"http://mmbiz.qpic.cn/mmbiz/5ic4GqbFCCHVXWmpaAON6Hx3PxHDZKjh30d3zPoRY1a4yAdg1Nfml0Qzr08Vu79WWOFWGsLlDoJicCicEq7cLVYjA/0\" original=\"http://d.ifengimg.com/mw640_q95/y0.ifengimg.com/ifengimcp/pic/20150118/9b2ed8b267af0b44dbd0_size187_w600_h435.jpg\" data-type=\"jpeg\" data-ratio=\"0.7247524752475247\" data-w=\"505\"  /></article><p></p><p> </p><p>甘肃人眼中的家乡</p><p><p><article style=\" display: block;  min-height: 100px; \"><img style=\"border: 0px currentColor; width: 600px; display: block;\" id=\"c1421581311540\" class=\"lazys\" data-src=\"http://mmbiz.qpic.cn/mmbiz/5ic4GqbFCCHVXWmpaAON6Hx3PxHDZKjh3QmrxIvnbLIL8XgfBSPXxh3xD95R8eVkvMgXf52W7ibV0gmkYXC6k6pw/0\" original=\"http://d.ifengimg.com/mw640_q95/y1.ifengimg.com/ifengimcp/pic/20150118/c2cac12a4baaf5689048_size138_w600_h400.jpg\" data-type=\"jpeg\" data-ratio=\"0.6673267326732674\" data-w=\"505\"  /></article><p></p><p> </p><p>其他省市人民眼中的甘肃</p><p><p><article style=\" display: block;  min-height: 100px; \"><img style=\"border: 0px currentColor; width: 600px; display: block;\" id=\"c1421581311541\" class=\"lazys\" data-src=\"http://mmbiz.qpic.cn/mmbiz/5ic4GqbFCCHVXWmpaAON6Hx3PxHDZKjh3Lbc4Iziaiby3UQQjUNKibJLOav4JfSNTKx92RQKo2lfMlfKezK6X9NZVg/0\" original=\"http://d.ifengimg.com/mw640_q95/y3.ifengimg.com/ifengimcp/pic/20150118/9a1b72b08808f04e96bc_size238_w600_h397.jpg\" data-type=\"jpeg\" data-ratio=\"0.6613861386138614\" data-w=\"505\"  /></article><p></p><p> </p><p>四川人眼中的家乡</p><p><p><article style=\" display: block;  min-height: 100px; \"><img style=\"border: 0px currentColor; width: 600px; display: block;\" id=\"c1421581311542\" class=\"lazys\" data-src=\"http://mmbiz.qpic.cn/mmbiz/5ic4GqbFCCHVXWmpaAON6Hx3PxHDZKjh3vzr8fFlMWJu6R3LvV5js5y056vmhicwOIA70Z9z5m4hkPaJmouzyWDQ/0\" original=\"http://d.ifengimg.com/mw640_q95/y1.ifengimg.com/ifengimcp/pic/20150118/45d64f4bb07d95b2c67e_size232_w600_h434.jpg\" data-type=\"jpeg\" data-ratio=\"0.7247524752475247\" data-w=\"505\"  /></article><p></p><p> </p><p>其他省市人民眼中的四川</p><p><p><article style=\" display: block;  min-height: 100px; \"><img style=\"border: 0px currentColor; width: 600px; display: block;\" id=\"c1421581311543\" class=\"lazys\" data-src=\"http://mmbiz.qpic.cn/mmbiz/5ic4GqbFCCHVXWmpaAON6Hx3PxHDZKjh3zKOS0f8Vj0sf0zOTmcGUkhbic1rqFvkdLXu8CayQa1Q9BMjMxVvEhpw/0\" original=\"http://d.ifengimg.com/mw640_q95/y2.ifengimg.com/ifengimcp/pic/20150118/4e5c26e3a974f14a8e7b_size122_w500_h295.jpg\" data-type=\"jpeg\" data-ratio=\"0.5900990099009901\" data-w=\"505\"  /></article><p></p><p> </p><p>辽宁人眼中的家乡</p><p><p><article style=\" display: block;  min-height: 100px; \"><img style=\"border: 0px currentColor; width: 600px; display: block;\" id=\"c1421581311544\" class=\"lazys\" data-src=\"http://mmbiz.qpic.cn/mmbiz/5ic4GqbFCCHVXWmpaAON6Hx3PxHDZKjh3QI1ngxqXhbaJbS2CEd7iaRlktMTMXibxoZ9oXgEBsiazfQlqBHibc6r52w/0\" original=\"http://d.ifengimg.com/mw640_q95/y2.ifengimg.com/ifengimcp/pic/20150118/4f2df3d1fe3e467b3912_size162_w600_h381.jpg\" data-type=\"jpeg\" data-ratio=\"0.6356435643564356\" data-w=\"505\"  /></article><p></p><p> </p><p>其他省市人民眼中的辽宁</p><p><p><article style=\" display: block;  min-height: 100px; \"><img style=\"border: 0px currentColor; width: 600px; display: block;\" id=\"c1421581311545\" class=\"lazys\" data-src=\"http://mmbiz.qpic.cn/mmbiz/5ic4GqbFCCHVXWmpaAON6Hx3PxHDZKjh3zekFJ36yT7TdpRBlgzs1skOdoyROw7CHWyfuhB2BNjCe1tcBycaU0Q/0\" original=\"http://d.ifengimg.com/mw640_q95/y1.ifengimg.com/ifengimcp/pic/20150118/2afa164b2d985b0ba5e6_size168_w600_h401.jpg\" data-type=\"jpeg\" data-ratio=\"0.6693069306930693\" data-w=\"505\"  /></article><p></p><p> </p><p>山东人眼中的家乡</p><p><p><article style=\" display: block;  min-height: 100px; \"><img style=\"border: 0px currentColor; width: 600px; display: block;\" id=\"c1421581311546\" class=\"lazys\" data-src=\"http://mmbiz.qpic.cn/mmbiz/5ic4GqbFCCHVXWmpaAON6Hx3PxHDZKjh3Yv2ykvntUVhzM1kicIlo13CB3S4yze36KQSyIiaIRy7SpNunG7CqcwDQ/0\" original=\"http://d.ifengimg.com/mw640_q95/y3.ifengimg.com/ifengimcp/pic/20150118/f6cff8925bec87f5be85_size191_w600_h420.jpg\" data-type=\"jpeg\" data-ratio=\"0.700990099009901\" data-w=\"505\"  /></article><p></p><p> </p><p>其他省市人民眼中的山东</p><p><p><article style=\" display: block;  min-height: 100px; \"><img style=\"border: 0px currentColor; width: 600px; display: block;\" id=\"c1421581311547\" class=\"lazys\" data-src=\"http://mmbiz.qpic.cn/mmbiz/5ic4GqbFCCHVXWmpaAON6Hx3PxHDZKjh3ywAFzneKG0xZQsoWURmrJpOiajbib67ibJB4AWuBMNNrqj8dSSwwc8uVA/0\" original=\"http://d.ifengimg.com/mw640_q95/y3.ifengimg.com/ifengimcp/pic/20150118/e769fae7623a7431069a_size229_w600_h382.jpg\" data-type=\"jpeg\" data-ratio=\"0.6376237623762376\" data-w=\"505\"  /></article><p></p><p> </p><p>重庆人眼中的家乡</p><p><p><article style=\" display: block;  min-height: 100px; \"><img style=\"border: 0px currentColor; width: 600px; display: block;\" id=\"c1421581311548\" class=\"lazys\" data-src=\"http://mmbiz.qpic.cn/mmbiz/5ic4GqbFCCHVXWmpaAON6Hx3PxHDZKjh3Yia3Q8gJiaYvrxYHX8jtpfzXnZ07gnZbrN916ZIL6FNjUj4qySwKicKKQ/0\" original=\"http://d.ifengimg.com/mw640_q95/y2.ifengimg.com/ifengimcp/pic/20150118/bd3092bcf812987e074b_size188_w500_h331.jpg\" data-type=\"jpeg\" data-ratio=\"0.6633663366336634\" data-w=\"505\"  /></article><p></p><p> </p><p>其他省市人民眼中的重庆</p><p><p><article style=\" display: block;  min-height: 100px; \"><img style=\"border: 0px currentColor; width: 600px; display: block;\" id=\"c1421581311549\" class=\"lazys\" data-src=\"http://mmbiz.qpic.cn/mmbiz/5ic4GqbFCCHVXWmpaAON6Hx3PxHDZKjh3AURK1DEMFe1WFdS5oQoeeTDXDw1sIUlrDNOEJGWpjMtFpTKpjYNfZA/0\" original=\"http://d.ifengimg.com/mw640_q95/y3.ifengimg.com/ifengimcp/pic/20150118/4084706fd31082e7ff3f_size228_w640_h425.jpg\" data-type=\"jpeg\" data-ratio=\"0.6653465346534654\" data-w=\"505\"  /></article><p></p><p> </p><p>台湾人眼中的家乡</p><p><p><article style=\" display: block;  min-height: 100px; \"><img style=\"border: 0px currentColor; width: 600px; display: block;\" id=\"c1421581311550\" class=\"lazys\" data-src=\"http://mmbiz.qpic.cn/mmbiz/5ic4GqbFCCHVXWmpaAON6Hx3PxHDZKjh31lfmGJmuoxVLQaRECicPJSkOWfD5XnagkcYKicpoEKMXC1IMtAXwqVtA/0\" original=\"http://d.ifengimg.com/mw640_q95/y0.ifengimg.com/ifengimcp/pic/20150118/45de7112a2c3490a9e37_size136_w600_h395.jpg\" data-type=\"jpeg\" data-ratio=\"0.6594059405940594\" data-w=\"505\"  /></article><p></p><p> </p><p>其他省市人民眼中的台湾</p><p><p><article style=\" display: block;  min-height: 100px; \"><img style=\"border: 0px currentColor; width: 600px; display: block;\" id=\"c1421581311551\" class=\"lazys\" data-src=\"http://mmbiz.qpic.cn/mmbiz/5ic4GqbFCCHVXWmpaAON6Hx3PxHDZKjh3I15ZbQq7d5gwoM9Io3UGhx9zyZiblz9cCGtiaWn8jZYKA3fCAMW44hibg/0\" original=\"http://d.ifengimg.com/mw640_q95/y2.ifengimg.com/ifengimcp/pic/20150118/23b1c23725570ad487ba_size91_w550_h356.jpg\" data-type=\"jpeg\" data-ratio=\"0.6475247524752475\" data-w=\"505\"  /></article><p></p><p> </p><p>上海人眼中的家乡</p><p><p><article style=\" display: block;  min-height: 100px; \"><img style=\"border: 0px currentColor; width: 600px; display: block;\" id=\"c1421581311552\" class=\"lazys\" data-src=\"http://mmbiz.qpic.cn/mmbiz/5ic4GqbFCCHVXWmpaAON6Hx3PxHDZKjh3ib7H1Vh09IVKoCGtSYVEAvjHgic4iam2MU518OKD2XLQYkyQ2TrzbibqgA/0\" original=\"http://d.ifengimg.com/mw640_q95/y3.ifengimg.com/ifengimcp/pic/20150118/9c85ba6e2a14f04b4c83_size41_w400_h268.jpg\" data-type=\"jpeg\" data-ratio=\"0.6712871287128713\" data-w=\"505\"  /></article><p></p><p> </p><p>其他省市人民眼中的上海</p><p><p><article style=\" display: block;  min-height: 100px; \"><img style=\"border: 0px currentColor; width: 600px; display: block;\" id=\"c1421581311553\" class=\"lazys\" data-src=\"http://mmbiz.qpic.cn/mmbiz/5ic4GqbFCCHVXWmpaAON6Hx3PxHDZKjh3blG8cUf0qa18IlLmMq1CfbmwhaNopsJjlfqmc60jS9eFlLbJ2VhwAw/0\" original=\"http://d.ifengimg.com/mw640_q95/y1.ifengimg.com/ifengimcp/pic/20150118/4a9b5937aeb95d4d02fd_size119_w500_h315.jpg\" data-type=\"jpeg\" data-ratio=\"0.6297029702970297\" data-w=\"505\"  /></article><p></p><p> </p><p>陕西人眼中的家乡</p><p><p><article style=\" display: block;  min-height: 100px; \"><img style=\"border: 0px currentColor; width: 600px; display: block;\" id=\"c1421581311554\" class=\"lazys\" data-src=\"http://mmbiz.qpic.cn/mmbiz/5ic4GqbFCCHVXWmpaAON6Hx3PxHDZKjh3M1cQVNy20u4CKaF35HVG6hzzbPjVuOUIInQ0qG8JT35z9rrl71BNEA/0\" original=\"http://d.ifengimg.com/mw640_q95/y1.ifengimg.com/ifengimcp/pic/20150118/3e92ec54619057744dd4_size102_w500_h252.jpg\" data-type=\"jpeg\" data-ratio=\"0.504950495049505\" data-w=\"505\"  /></article><p></p><p> </p><p>其他省市人民眼中的陕西</p><p><p><article style=\" display: block;  min-height: 100px; \"><img style=\"border: 0px currentColor; width: 600px; display: block;\" id=\"c1421581311555\" class=\"lazys\" data-src=\"http://mmbiz.qpic.cn/mmbiz/5ic4GqbFCCHVXWmpaAON6Hx3PxHDZKjh3iapw00ib0KhDkNolrOm0NPVphXqxhia0vgH3XEl4IkvbAoZL3v8o1kQ6A/0\" original=\"http://d.ifengimg.com/mw640_q95/y3.ifengimg.com/ifengimcp/pic/20150118/bea54468d5f33c575958_size179_w600_h399.jpg\" data-type=\"jpeg\" data-ratio=\"0.6653465346534654\" data-w=\"505\"  /></article><p></p><p> </p><p>江西人眼中的家乡</p><p><p><article style=\" display: block;  min-height: 100px; \"><img style=\"border: 0px currentColor; width: 600px; display: block;\" id=\"c1421581311556\" class=\"lazys\" data-src=\"http://mmbiz.qpic.cn/mmbiz/5ic4GqbFCCHVXWmpaAON6Hx3PxHDZKjh3mgzu8H1XFGW281xSibfeqIoxoayj39BOzFLnBHtrofLbjegruJZGk3A/0\" original=\"http://d.ifengimg.com/mw640_q95/y3.ifengimg.com/ifengimcp/pic/20150118/886547e3a56519b22309_size198_w600_h324.jpg\" data-type=\"jpeg\" data-ratio=\"0.5405940594059406\" data-w=\"505\"  /></article><p></p><p> </p><p>其他省市人民眼中的江西</p><p><p><article style=\" display: block;  min-height: 100px; \"><img style=\"border: 0px currentColor; width: 600px; display: block;\" id=\"c1421581311557\" class=\"lazys\" data-src=\"http://mmbiz.qpic.cn/mmbiz/5ic4GqbFCCHVXWmpaAON6Hx3PxHDZKjh3H33e6Xpf9hCxg6q8jeeKyz2H4y5Y83niaHwXuXIWtzCCwS6B67epOoQ/0\" original=\"http://d.ifengimg.com/mw640_q95/y3.ifengimg.com/ifengimcp/pic/20150118/536dbfa6bbdaca96c05d_size179_w600_h390.jpg\" data-type=\"jpeg\" data-ratio=\"0.6495049504950495\" data-w=\"505\"  /></article><p></p><p> </p><p>内蒙古人眼中的家乡</p><p><p><article style=\" display: block;  min-height: 100px; \"><img style=\"border: 0px currentColor; width: 600px; display: block;\" id=\"c1421581311558\" class=\"lazys\" data-src=\"http://mmbiz.qpic.cn/mmbiz/5ic4GqbFCCHVXWmpaAON6Hx3PxHDZKjh3A6ibBnibQ6iceTUXDz7QPicRfdwMicjer5nJQ14Bx2E8hXfpLuJVxU5lSHA/0\" original=\"http://d.ifengimg.com/mw640_q95/y2.ifengimg.com/ifengimcp/pic/20150118/5570d514b1d97e80d2a6_size131_w600_h374.jpg\" data-type=\"jpeg\" data-ratio=\"0.6237623762376238\" data-w=\"505\"  /></article><p></p><p> </p><p>其他省市人民眼中的内蒙古</p><p><p><article style=\" display: block;  min-height: 100px; \"><img style=\"border: 0px currentColor; width: 600px; display: block;\" id=\"c1421581311559\" class=\"lazys\" data-src=\"http://mmbiz.qpic.cn/mmbiz/5ic4GqbFCCHVXWmpaAON6Hx3PxHDZKjh3wDmXibl63ydRsGw9PCqHedyoCHic8pI6vvNVoCFVYibr9iax2LK7yiagBmQ/0\" original=\"http://d.ifengimg.com/mw640_q95/y2.ifengimg.com/ifengimcp/pic/20150118/e0fe15441ee66e579307_size202_w600_h411.jpg\" data-type=\"jpeg\" data-ratio=\"0.6851485148514852\" data-w=\"505\"  /></article><p></p><p> </p><p>山西人眼中的家乡</p><p><p><article style=\" display: block;  min-height: 100px; \"><img style=\"border: 0px currentColor; width: 600px; display: block;\" id=\"c1421581311560\" class=\"lazys\" data-src=\"http://mmbiz.qpic.cn/mmbiz/5ic4GqbFCCHVXWmpaAON6Hx3PxHDZKjh3QzwJK8e6yELhiaFUZu8AhYB7uFUKUKHMrF9SaPXlicoibh6H6TzhpG0Cw/0\" original=\"http://d.ifengimg.com/mw640_q95/y1.ifengimg.com/ifengimcp/pic/20150118/ba4c396f78777a89cfdd_size143_w500_h375.jpg\" data-type=\"jpeg\" data-ratio=\"0.7504950495049505\" data-w=\"505\"  /></article><p></p><p> </p><p>其他省市人民眼中的山西</p><p><p><article style=\" display: block;  min-height: 100px; \"><img style=\"border: 0px currentColor; width: 600px; display: block;\" id=\"c1421581311561\" class=\"lazys\" data-src=\"http://mmbiz.qpic.cn/mmbiz/5ic4GqbFCCHVXWmpaAON6Hx3PxHDZKjh3icemJFicT8BVkGDS80pTxibdU787DOCmtjEMdg4mic7clxJmovrrPnmz5Q/0\" original=\"http://d.ifengimg.com/mw640_q95/y1.ifengimg.com/ifengimcp/pic/20150118/497897fa435bb233c2c1_size172_w600_h431.jpg\" data-type=\"jpeg\" data-ratio=\"0.7188118811881188\" data-w=\"505\"  /></article><p></p><p> </p><p>新疆人眼中的家乡</p><p><p><article style=\" display: block;  min-height: 100px; \"><img style=\"border: 0px currentColor; width: 600px; display: block;\" id=\"c1421581311562\" class=\"lazys\" data-src=\"http://mmbiz.qpic.cn/mmbiz/5ic4GqbFCCHVXWmpaAON6Hx3PxHDZKjh3avkicicg0N0ej4ibkkbMoic5qjvwkEByBZv5Ksk7vIFxwEc7HUiafZeNibRQ/0\" original=\"http://d.ifengimg.com/mw640_q95/y2.ifengimg.com/ifengimcp/pic/20150118/0527b684d48d9ad0716d_size137_w500_h297.jpg\" data-type=\"jpeg\" data-ratio=\"0.594059405940594\" data-w=\"505\"  /></article><p></p><p> </p><p>其他省市人民眼中的新疆</p><p><p><article style=\" display: block;  min-height: 100px; \"><img style=\"border: 0px currentColor; width: 600px; display: block;\" id=\"c1421581311563\" class=\"lazys\" data-src=\"http://mmbiz.qpic.cn/mmbiz/5ic4GqbFCCHVXWmpaAON6Hx3PxHDZKjh3Mqz1EhMMGLBjdPFOVLJDGZT2mRKtpNbP8I1iatpaibVoWhCDY7vrxW3g/0\" original=\"http://d.ifengimg.com/mw640_q95/y1.ifengimg.com/ifengimcp/pic/20150118/180d5b57b6288b1c5c05_size93_w600_h400.jpg\" data-type=\"jpeg\" data-ratio=\"0.6673267326732674\" data-w=\"505\"  /></article><p></p><p> </p><p>广东人眼中的家乡</p><p><p><article style=\" display: block;  min-height: 100px; \"><img style=\"border: 0px currentColor; width: 600px; display: block;\" id=\"c1421581311564\" class=\"lazys\" data-src=\"http://mmbiz.qpic.cn/mmbiz/5ic4GqbFCCHVXWmpaAON6Hx3PxHDZKjh3qUmmnR7PXO2UupGv3zU3uszL8WEmOdQMVzUdFKDhCHJXYzPterCtzA/0\" original=\"http://d.ifengimg.com/mw640_q95/y2.ifengimg.com/ifengimcp/pic/20150118/c5cc51fb9e5ee00e6741_size61_w428_h256.jpg\" data-type=\"jpeg\" data-ratio=\"0.598019801980198\" data-w=\"505\"  /></article><p></p><p> </p><p>其他省市人民眼中的广东</p><p><p><article style=\" display: block;  min-height: 100px; \"><img style=\"border: 0px currentColor; width: 600px; display: block;\" id=\"c1421581311565\" class=\"lazys\" data-src=\"http://mmbiz.qpic.cn/mmbiz/5ic4GqbFCCHVXWmpaAON6Hx3PxHDZKjh3OuOtO738iakwzibX9nD2DicdFcotwC7DVAPMWvJl9u38iaYXJWuAb91nicw/0\" original=\"http://d.ifengimg.com/mw640_q95/y3.ifengimg.com/ifengimcp/pic/20150118/b7ec3cd7a872b03e4414_size210_w600_h422.jpg\" data-type=\"jpeg\" data-ratio=\"0.7029702970297029\" data-w=\"505\"  /></article><p></p><p> </p><p>湖南人眼中的家乡</p><p><p><article style=\" display: block;  min-height: 100px; \"><img style=\"border: 0px currentColor; width: 600px; display: block;\" id=\"c1421581311566\" class=\"lazys\" data-src=\"http://mmbiz.qpic.cn/mmbiz/5ic4GqbFCCHVXWmpaAON6Hx3PxHDZKjh3GgzI13VmEeqZJXiaBfiaM5uPhc4LM6mlKDFJ2QV1Pr3Kks16W36vyicEw/0\" original=\"http://d.ifengimg.com/mw640_q95/y3.ifengimg.com/ifengimcp/pic/20150118/108a3ec8c9801cf7a81a_size121_w600_h374.jpg\" data-type=\"jpeg\" data-ratio=\"0.6237623762376238\" data-w=\"505\"  /></article><p></p><p> </p><p>其他省市人民眼中的湖南</p><p><p><article style=\" display: block;  min-height: 100px; \"><img style=\"border: 0px currentColor; width: 600px; display: block;\" id=\"c1421581311567\" class=\"lazys\" data-src=\"http://mmbiz.qpic.cn/mmbiz/5ic4GqbFCCHVXWmpaAON6Hx3PxHDZKjh3gia5Y3yqOx5xfia9cD3KHypojNCiaqjhYJicqXV6QiazibRiafqcm1vATEOng/0\" original=\"http://d.ifengimg.com/mw640_q95/y1.ifengimg.com/ifengimcp/pic/20150118/6d3fb18da1df97b5aa9a_size168_w600_h398.jpg\" data-type=\"jpeg\" data-ratio=\"0.6633663366336634\" data-w=\"505\"  /></article><p></p><p> </p><p>北京人眼中的家乡</p><p><p><article style=\" display: block;  min-height: 100px; \"><img style=\"border: 0px currentColor; width: 600px; display: block;\" id=\"c1421581311568\" class=\"lazys\" data-src=\"http://mmbiz.qpic.cn/mmbiz/5ic4GqbFCCHVXWmpaAON6Hx3PxHDZKjh3x9DZVs7RVSZZaetXuuF5Kn3HicOtyIJy2Tgd21Z3mEVmFnWILYT5QhQ/0\" original=\"http://d.ifengimg.com/mw640_q95/y2.ifengimg.com/ifengimcp/pic/20150118/8e9c165f9ba13ed04e5a_size29_w469_h257.jpg\" data-type=\"jpeg\" data-ratio=\"0.5485148514851486\" data-w=\"505\"  /></article><p></p><p> </p><p><span style=\" padding: 8px 5px 0px 0px; left: 0px; top: 2px; color: rgb(0, 0, 0); font-size: 16px;  \"></span>其他省市人民眼中的北京</p><p><p><article style=\" display: block;  min-height: 100px; \"><img style=\"border: 0px currentColor; width: 600px; display: block;\" id=\"c1421581311569\" class=\"lazys\" data-src=\"http://mmbiz.qpic.cn/mmbiz/5ic4GqbFCCHVXWmpaAON6Hx3PxHDZKjh3T0IvDIFsNZGEMiaI3M7VQr11p6GQwLu2WhbSBdKgsdob7V6oLCqx4Zw/0\" original=\"http://d.ifengimg.com/mw640_q95/y3.ifengimg.com/ifengimcp/pic/20150118/347e9c206b40f11ae9a6_size153_w640_h455.jpg\" data-type=\"jpeg\" data-ratio=\"0.7108910891089109\" data-w=\"505\"  /></article><p></p><p> </p><p><span style=\" padding: 8px 5px 0px 0px; left: 0px; top: 2px; color: rgb(0, 0, 0); font-size: 16px;  \"></span>天津人眼中的家乡</p><p><p><article style=\" display: block;  min-height: 100px; \"><img style=\"border: 0px currentColor; width: 600px; display: block;\" id=\"c1421581311570\" class=\"lazys\" data-src=\"http://mmbiz.qpic.cn/mmbiz/5ic4GqbFCCHVXWmpaAON6Hx3PxHDZKjh3lFWghwWlDQ24nb2oTu8S3G4kccegk3HRQ23j7eUmanwsN4AswWqIhQ/0\" original=\"http://d.ifengimg.com/mw640_q95/y2.ifengimg.com/ifengimcp/pic/20150118/7bf3276b766d9cb74eac_size89_w550_h297.jpg\" data-type=\"jpeg\" data-ratio=\"0.5405940594059406\" data-w=\"505\"  /></article><p></p><p> </p><p>其他省市人民眼中的天津</p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p></p></p></p></p></p></p></p></p></p></p></p></p></p></p></p></p></p></p></p></p></p></p></p></p></p></p></p></p></p></p></p></p></p></p></p></p></p></p></p></p></p></p></p></p></p></p></p></p></p></p></p></p></p></p></p></p></p></p></p></p></p></p></p>', 'http://mp.weixin.qq.com/s?__biz=MzAxNTE4NjMzMQ==&mid=202457216&idx=1&sn=32c52de74a0a8563c5d157585e5a117d#rd', '', 'oiTaPQTUzDFpC1qbmr_jjsgIHxIWD-OOnBUcph6e-aY', '0', '101');
INSERT INTO `sys_wechat_news` VALUES ('456', '张万年与姚贝娜', 'sweBknvMiKNC3QPhW8y4qVAL3gqpx02agGCBADXGSt8', '0', '', '姚贝娜离开了，无情的病魔夺取了她宝贵的生命。MusicRadio中国排行榜年度最佳女歌手城市至尊音乐榜至尊女歌手......', '<p><span class=\"vote_area\"><iframe scrolling=\"no\" class=\"vote_iframe js_editor_vote_card\" data-display-style=\"height: 348px;\" data-display-src=\"/cgi-bin/readtemplate?t=vote/vote-new_tmpl&amp;__biz=MzAxNTE4NjMzMQ==&amp;supervoteid=2769076&amp;token=1646480131&amp;lang=zh_CN\" data-src=\"/mp/newappmsgvote?action=show&amp;__biz=MzAxNTE4NjMzMQ==&amp;supervoteid=2769076#wechat_redirect\" data-supervoteid=\"2769076\" allowfullscreen=\"\" frameborder=\"0\"></iframe><span class=\"vote_box skin_help po_left\"></span><span class=\"vote_box skin_help po_right\"></span></span> <img data-src=\"http://mmbiz.qpic.cn/mmbiz/5ic4GqbFCCHVXWmpaAON6Hx3PxHDZKjh3ZGd9G2VYO6OVO6N8QoWUc9Bm2BVa74xHGgF1YVrb2CfGrIq5ZGicQOQ/0\" data-type=\"gif\" data-ratio=\"0.21903052064631956\" data-w=\"\"  /></p><p></p><p><img style=\"width: auto !important; height: auto !important; visibility: visible !important;\" data-src=\"http://mmbiz.qpic.cn/mmbiz/TRIMuDXaGK5vfGsqOU2OvyezXqF4kwVK3nfqbee72FRy4zTgs8YNiacqfmDql4ib8QbwqnojTvuqW4rB3kVicaobg/0\" data-src=\"http://mmbiz.qpic.cn/mmbiz/TRIMuDXaGK5vfGsqOU2OvyezXqF4kwVK3nfqbee72FRy4zTgs8YNiacqfmDql4ib8QbwqnojTvuqW4rB3kVicaobg/0\" data-type=\"jpeg\" data-s=\"300,640\" data-ratio=\"0.6672727272727272\" data-w=\"550\"  /></p><p>姚贝娜离开了，无情的病魔夺取了她宝贵的生命。</p><p><span style=\"color: rgb(255, 0, 0); font-size: 16px;\">MusicRadio中国Top排行榜<span style=\"line-height: 26px; font-family: arial, 宋体, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255);\">年度最佳女歌手</span></span></p><p><span style=\"color: rgb(255, 0, 0); line-height: 26px; font-family: arial, 宋体, sans-serif; font-size: 18px; background-color: rgb(255, 255, 255);\">城市至尊音乐榜年度至尊女歌手</span></p><p><span style=\"color: rgb(255, 0, 0); line-height: 26px; font-family: arial, 宋体, sans-serif; font-size: 18px; background-color: rgb(255, 255, 255);\">CCTV-MTV音乐盛典内地最受欢迎潜力歌手</span></p><p><span style=\"color: rgb(255, 0, 0); line-height: 26px; font-family: arial, 宋体, sans-serif; font-size: 18px; background-color: rgb(255, 255, 255);\">安徽卫视<span style=\"line-height: 26px; font-family: arial, 宋体, sans-serif; font-size: 18px; background-color: rgb(255, 255, 255);\"></span>国剧盛典观众喜爱的影视歌曲演唱人</span></p><p><span style=\"color: rgb(255, 0, 0); line-height: 26px; font-family: arial, 宋体, sans-serif; font-size: 18px; background-color: rgb(255, 255, 255);\">第十三届<span style=\"line-height: 26px; font-family: arial, 宋体, sans-serif; font-size: 18px; background-color: rgb(255, 255, 255);\"></span>青歌赛流行唱法冠军</span></p><p><span style=\"color: rgb(0, 0, 0); line-height: 26px; font-family: arial, 宋体, sans-serif; font-size: 18px; background-color: rgb(255, 255, 255);\">这鲜红的而显著的成就说明了，姚贝娜为中国音乐界付出了自己的青春和努力并且在他离开的时候，人们都在通过各种方式缅怀和悼念。她的粉丝们被亲切的称为『贝壳』，贝娜一路走好、贝娜天堂没有病痛、愿您在天堂快快乐乐的。这些都是你的贝壳们发自内心的祝福。</span></p><p><span style=\"color: rgb(0, 0, 0); line-height: 26px; font-family: arial, 宋体, sans-serif; font-size: 18px; background-color: rgb(255, 255, 255);\"><img style=\"width: auto !important; height: auto !important; visibility: visible !important;\" data-src=\"http://mmbiz.qpic.cn/mmbiz/TRIMuDXaGK5vfGsqOU2OvyezXqF4kwVKg8eHhubIKmmOLbkGeVEQoichrh1icoQMYofnZjdEic0JaOibibl6qJRDGew/0\" data-src=\"http://mmbiz.qpic.cn/mmbiz/TRIMuDXaGK5vfGsqOU2OvyezXqF4kwVKg8eHhubIKmmOLbkGeVEQoichrh1icoQMYofnZjdEic0JaOibibl6qJRDGew/0\" data-type=\"jpeg\" data-s=\"300,640\" data-ratio=\"1.416256157635468\" data-w=\"406\"  /></span></p><p><span style=\"color: rgb(0, 0, 0); line-height: 26px; font-family: arial, 宋体, sans-serif; font-size: 18px; background-color: rgb(255, 255, 255);\"> &nbsp; &nbsp; &nbsp; &nbsp;亲，您知道就再贝娜离开的48小时之前吗？有个叫张万年的人也离开了我们。可能您不太熟悉这个人，我给您介绍一下。</span></p><p><span style=\"line-height: 26px; font-family: arial, 宋体, sans-serif; font-size: 18px; background-color: rgb(255, 255, 255);\">姓名：张万年 &nbsp; 出生日期：1928年8月</span></p><p><span style=\"color: rgb(0, 0, 0); line-height: 26px; font-family: arial, 宋体, sans-serif; font-size: 18px; background-color: rgb(255, 255, 255);\">职业：<strong><span style=\"color: rgb(31, 73, 125); line-height: 26px; font-family: arial, 宋体, sans-serif; font-size: 18px; background-color: rgb(255, 255, 255);\">军人 </span></strong> &nbsp;主要成就：中央军委副主席</span></p><p><span style=\"color: rgb(0, 0, 0); line-height: 26px; font-family: arial, 宋体, sans-serif; font-size: 18px; background-color: rgb(255, 255, 255);\"><span style=\"line-height: 28px; text-indent: 31.99px; font-family: 宋体, Arial, sans-serif; background-color: rgb(255, 255, 255);\"> &nbsp; &nbsp; &nbsp; &nbsp;1944年8月参加八路军，1945年8月加入中国共产党。战争年代，他先后参加胶东抗日、<span style=\"color: rgb(0, 0, 0); line-height: 28px; text-indent: 31.99px; font-family: 宋体, Arial, sans-serif; font-size: 18px; background-color: rgb(255, 255, 255);\">本溪保卫战</span>（<span style=\"line-height: 28px; text-indent: 31.99px; font-family: 宋体, Arial, sans-serif; background-color: rgb(255, 255, 255);\">本溪是南满的工业中心之一，连接南满路和安（东）沈（阳）的交通要点，是沈阳的门户，安东（今丹东）的重要屏障。</span>）、<span style=\"color: rgb(0, 0, 0); line-height: 28px; text-indent: 31.99px; font-family: 宋体, Arial, sans-serif; font-size: 18px; background-color: rgb(255, 255, 255);\">新开岭战役</span>（<span style=\"line-height: 28px; text-indent: 31.99px; font-family: 宋体, Arial, sans-serif; background-color: rgb(255, 255, 255);\">在这次战役中，四纵一举歼灭号称“千里驹”的国民党军精锐第五十二军第二十五师8900余人</span>）、<span style=\"color: rgb(0, 0, 0); line-height: 28px; text-indent: 31.99px; font-family: 宋体, Arial, sans-serif; font-size: 18px; background-color: rgb(255, 255, 255);\">四保临江战役</span>、辽沈战役、平津战役、衡宝战役、广西战役等，作战英勇，不怕牺牲，五次荣立大功。</span></span></p><p><span style=\"color: rgb(192, 0, 0); line-height: 26px; text-indent: 31.99px; font-family: arial, 宋体, sans-serif; font-size: 18px; background-color: rgb(255, 255, 255);\">这几次战役不打赢的话，估计您不一定能听到姚贝娜的歌声。</span></p><p><span style=\"color: rgb(0, 0, 0); line-height: 26px; text-indent: 31.99px; font-family: arial, 宋体, sans-serif; font-size: 18px; background-color: rgb(255, 255, 255);\">但是就在这位中国共产党的优秀党员，久经考验的忠诚共产主义战士，无产阶级革命家、军事家，中国人民解放军的卓越领导人，中国共产党第十五届中央政治局委员、书记处书记，中央军委原副主席张万年同志，因病医治无效，于2015年1月14日17时在北京逝世的时候，我并没有看到朋友圈里有悼念他的消息，但是在48小时之后，一位歌手的离去，我的朋友圈里却多了无尽的缅怀。<span style=\"color: rgb(255, 255, 0); line-height: 26px; text-indent: 31.99px; font-family: arial, 宋体, sans-serif; font-size: 18px; background-color: rgb(192, 0, 0);\">我想说一句，我们是中国人。我们不应该忘本，我们今天的幸福生活是用先辈们的鲜血换来的。今天我们可以无视革命者，将来我们的子女将再次用鲜血去续写革命道路。</span></span></p><p><span style=\"color: rgb(0, 0, 0); line-height: 26px; text-indent: 31.99px; font-family: arial, 宋体, sans-serif; font-size: 18px;\">人最基本的感恩、感谢还有吗？人最基本的良知还在吗？钓鱼岛是中国的只是口号吗？我们这样去对待一位军人，寒了一个军人的心。我是小懒猪生活圈的主编—大头。如果您还是中国人，转发悼念一下吧！</span></p><p><span style=\"color: rgb(192, 0, 0); line-height: 26px; text-indent: 31.99px; font-family: arial, 宋体, sans-serif; font-size: 18px; background-color: rgb(255, 255, 255);\">冲锋陷阵的是军人</span></p><p><span style=\"color: rgb(192, 0, 0); line-height: 26px; text-indent: 31.99px; font-family: arial, 宋体, sans-serif; font-size: 18px; background-color: rgb(255, 255, 255);\"><img style=\"width: auto !important; height: auto !important; visibility: visible !important;\" data-src=\"http://mmbiz.qpic.cn/mmbiz/TRIMuDXaGK5vfGsqOU2OvyezXqF4kwVKuibQjU5uX6TKQueicw5BHtWdf4sJyfA3aNmWKfCUAwjQH31IFOwXmPaQ/0\" data-src=\"http://mmbiz.qpic.cn/mmbiz/TRIMuDXaGK5vfGsqOU2OvyezXqF4kwVKuibQjU5uX6TKQueicw5BHtWdf4sJyfA3aNmWKfCUAwjQH31IFOwXmPaQ/0\" data-type=\"jpeg\" data-s=\"300,640\" data-ratio=\"1\" data-w=\"24\"  /></span></p><p><span style=\"color: rgb(192, 0, 0); line-height: 26px; text-indent: 31.99px; font-family: arial, 宋体, sans-serif; font-size: 18px; background-color: rgb(255, 255, 255);\">抵御洪水的是军人</span></p><p><span style=\"color: rgb(192, 0, 0); line-height: 26px; text-indent: 31.99px; font-family: arial, 宋体, sans-serif; font-size: 18px; background-color: rgb(255, 255, 255);\"><img style=\"width: auto !important; height: auto !important; visibility: visible !important;\" data-src=\"http://mmbiz.qpic.cn/mmbiz/TRIMuDXaGK5vfGsqOU2OvyezXqF4kwVKZ9N6icvYRxVjp3icJdD1qDQsIejWeN6Aa2FwFMhZlK7iakGx9LEBMlFRA/0\" data-src=\"http://mmbiz.qpic.cn/mmbiz/TRIMuDXaGK5vfGsqOU2OvyezXqF4kwVKZ9N6icvYRxVjp3icJdD1qDQsIejWeN6Aa2FwFMhZlK7iakGx9LEBMlFRA/0\" data-type=\"jpeg\" data-s=\"300,640\" data-ratio=\"0.75\" data-w=\"400\"  /></span></p><p><span style=\"color: rgb(192, 0, 0); line-height: 26px; text-indent: 31.99px; font-family: arial, 宋体, sans-serif; font-size: 18px; background-color: rgb(255, 255, 255);\">抗震救灾的是军人</span></p><p><span style=\"color: rgb(192, 0, 0); line-height: 26px; text-indent: 31.99px; font-family: arial, 宋体, sans-serif; font-size: 18px; background-color: rgb(255, 255, 255);\"><img style=\"width: auto !important; height: auto !important; visibility: visible !important;\" data-src=\"http://mmbiz.qpic.cn/mmbiz/TRIMuDXaGK5vfGsqOU2OvyezXqF4kwVKQYicJicUWXGofvsyhjbgBrLlDEFhribU67yPTK3DuBf4ozU9fu5Nia4Rbg/0\" data-src=\"http://mmbiz.qpic.cn/mmbiz/TRIMuDXaGK5vfGsqOU2OvyezXqF4kwVKQYicJicUWXGofvsyhjbgBrLlDEFhribU67yPTK3DuBf4ozU9fu5Nia4Rbg/0\" data-type=\"jpeg\" data-s=\"300,640\" data-ratio=\"0.6660682226211849\" data-w=\"\"  /></span></p><p><span style=\"color: rgb(192, 0, 0); line-height: 26px; text-indent: 31.99px; font-family: arial, 宋体, sans-serif; font-size: 18px; background-color: rgb(255, 255, 255);\">守卫边疆的还是军人</span></p><p><span style=\"color: rgb(192, 0, 0); line-height: 26px; text-indent: 31.99px; font-family: arial, 宋体, sans-serif; font-size: 18px; background-color: rgb(255, 255, 255);\"><img style=\"width: auto !important; height: auto !important; visibility: visible !important;\" data-src=\"http://mmbiz.qpic.cn/mmbiz/TRIMuDXaGK5vfGsqOU2OvyezXqF4kwVKpOjPvQib8ffgrwkdbkQIKURmK7fib0BsYnGCbicslFM4pQ5qDRGLBo8Mg/0\" data-src=\"http://mmbiz.qpic.cn/mmbiz/TRIMuDXaGK5vfGsqOU2OvyezXqF4kwVKpOjPvQib8ffgrwkdbkQIKURmK7fib0BsYnGCbicslFM4pQ5qDRGLBo8Mg/0\" data-type=\"jpeg\" data-s=\"300,640\" data-ratio=\"0.6624775583482945\" data-w=\"\"  /></span></p><p><span style=\"color: rgb(192, 0, 0); line-height: 26px; text-indent: 31.99px; font-family: arial, 宋体, sans-serif; font-size: 18px; background-color: rgb(255, 255, 255);\">让我们大家一对对张万年同志的离去表示沉痛的悼念</span></p><p><span style=\"color: rgb(192, 0, 0); line-height: 26px; text-indent: 31.99px; font-family: arial, 宋体, sans-serif; font-size: 18px; background-color: rgb(255, 255, 255);\"><img data-src=\"http://mmbiz.qpic.cn/mmbiz/5ic4GqbFCCHVXWmpaAON6Hx3PxHDZKjh3f4WKYCNr0zPTibRtbpVfwdFUyOYqwtuJQiaWHPUIfMAI2jAfoic47NItw/0\" data-type=\"gif\" data-ratio=\"0.027210884353741496\" data-w=\"294\"  /></span></p><p><span style=\"color: rgb(192, 0, 0); line-height: 26px; text-indent: 31.99px; font-family: arial, 宋体, sans-serif; font-size: 18px; background-color: rgb(255, 255, 255);\"><strong><span style=\"margin: 0px; padding: 0px; color: rgb(0, 176, 80); line-height: 28px; font-family: 新宋体; font-size: 14pt; word-wrap: break-word !important; max-width: 100%; box-sizing: border-box !important;\">【温馨提示】</span><span style=\"margin: 0px; padding: 0px; color: rgb(255, 0, 0); line-height: 28px; font-family: 新宋体; font-size: 14pt; word-wrap: break-word !important; max-width: 100%; box-sizing: border-box !important;\">阅读是一种成长，转载是一种智慧，分享是一种美德，赠人玫瑰，手有余香！</span></strong></span></p><p><span style=\"color: rgb(192, 0, 0); line-height: 26px; text-indent: 31.99px; font-family: arial, 宋体, sans-serif; font-size: 18px; background-color: rgb(255, 255, 255);\"><img data-src=\"http://mmbiz.qpic.cn/mmbiz/5ic4GqbFCCHVXWmpaAON6Hx3PxHDZKjh3f4WKYCNr0zPTibRtbpVfwdFUyOYqwtuJQiaWHPUIfMAI2jAfoic47NItw/0\" data-type=\"gif\" data-ratio=\"0.027210884353741496\" data-w=\"294\"  /></span></p><p><span style=\"color: rgb(192, 0, 0); line-height: 26px; text-indent: 31.99px; font-family: arial, 宋体, sans-serif; font-size: 18px; background-color: rgb(255, 255, 255);\"></span> </p><p><br  /></p>', 'http://mp.weixin.qq.com/s?__biz=MzAxNTE4NjMzMQ==&mid=202447818&idx=1&sn=ab90fdb5274d8468683dd0ebc370fe53#rd', '', 'sweBknvMiKNC3QPhW8y4qfCwEp-ffqD11RthqlIlfVQ', '0', '102');

-- ----------------------------
-- Table structure for sys_wechat_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_wechat_user`;
CREATE TABLE `sys_wechat_user` (
  `openid` varchar(28) NOT NULL DEFAULT '',
  `subscribe` int(11) DEFAULT NULL,
  `nickname` varchar(32) CHARACTER SET utf8mb4 DEFAULT NULL,
  `sex` int(1) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `city` varchar(32) DEFAULT NULL,
  `province` varchar(16) DEFAULT NULL,
  `country` varchar(32) DEFAULT NULL,
  `headimgurl` varchar(512) DEFAULT NULL,
  `subscribe_time` bigint(20) DEFAULT NULL,
  `unionid` varchar(64) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `groupid` int(11) DEFAULT NULL,
  `tagid_list` varchar(255) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`openid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_wechat_user
-- ----------------------------
INSERT INTO `sys_wechat_user` VALUES ('omxe4s-Bj4hFrmrp2JsJWlZ9Zq2w', '1', null, '1', 'zh_CN', '南充', '四川', '中国', 'http://wx.qlogo.cn/mmopen/R9Mnj8iav98ibbiatVZ7jdphzicc7eicUba5RajstST8x0eFN3dayV5dmCgJaluh1l0Mpcco8ibADAyhDSIGdibxQsuh5GZSibx01vJy/0', '1440476123', 'oTWrxvw2POommpgoCPkwhGDtpgfM', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4s-bvTbRh2HqHbbF6N1CDJm8', '1', null, '2', 'zh_CN', '深圳', '广东', '中国', 'http://wx.qlogo.cn/mmopen/8icbicwopSYVVQGAta8xicmlZ3gDd792hKQjBE84xgzWZ0YvkaVeGevZ5N86B9ZHhmAe5MtQslLgXPFXV5TSiadUpFmNA4EnQH0n/0', '1483694813', 'oTWrxv1lvcJUOlQiPPnWP6bs0fFU', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4s-iXrMww0yP2nWH8798qIJk', '1', null, '1', 'zh_CN', '南充', '四川', '中国', 'http://wx.qlogo.cn/mmopen/icJUncV1QI4YV3xkTcLgAiareDiaoNYib00ibYBnsvOEicAF8P154mTLwQicFKsTGNVd3nQLPqzkicyhBq7MraibPYRce3dVDiaEpibwvJh/0', '1446200854', 'oTWrxvwFEVkAi6Th0v0UVoVC7gCI', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4s-LmRXIlckp6DfkBeXIx75Y', '1', null, '1', 'zh_CN', '呼和浩特', '内蒙古', '中国', 'http://wx.qlogo.cn/mmopen/SshnrughgZMbRz1bjL8hhDpJySM8fnz9dOEm1UG5YsCLf2JBlopra4HdW5prgpDgT3nygMMmgL3Ufg95ibQFVZ5ic9kB7DCN4G/0', '1483694864', 'oTWrxv6Ve_w0mmCOYeleLD2tRy58', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4s-mfKZJ1Odf62A8C69g_yRs', '1', null, '2', 'zh_CN', null, null, '巴巴多斯岛', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEIibwf0V9dLzhTmAk9dVVibCic60BXJvPvBIE4Ik1CibaibyAquS4pA6uP5VELq3y4Grp6PEUStKfNTJIA/0', '1483517946', 'oTWrxv6_QJj_qPGV1JIOBeZKmSIA', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4s-ZUwy_gGw063c-srH50k8w', '1', null, '1', 'zh_CN', '沧州', '河北', '中国', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEJurTicxYicNF06FMX4o2lmWQv99zbhGmwEHKGZmGiaKXHSnX8UmQu8rzXXETNgWEICaIniaHTIZvle7w/0', '1460356478', 'oTWrxvxzZgTl4VyyaXwYYy5YrRUg', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4s00NTIXoHRCpX9owN01BpS4', '1', null, '1', 'zh_CN', null, null, '中国', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEKmLn9a9n1kOQbvv0yiby6ZiaHjWeK8g1qN6ZJwKQGJ6xickB3H4Ouj4RzynKicwBAxvXiaPBBu1yfm9nw/0', '1462415000', 'oTWrxv8NxOVFfxO51FmNJUdienNk', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4s0Fc3j947MZJYHgADegSB-U', '1', null, '2', 'zh_CN', '深圳', '广东', '中国', 'http://wx.qlogo.cn/mmopen/icJUncV1QI4ZgTIH4MKILlHtO1TialvCNp6WEYQaaVnXa5gkvoHMibUTt8uB4jCl4u1aLiaHC1AEGNEsBicJs5qF4BNgFEx1cT4Ln/0', '1496214379', 'oTWrxvwySsdjA8amXllVcIZChJXA', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4s0HjqbQnByI7pbyTmzfu5Yo', '1', null, '1', 'zh_CN', '温州', '浙江', '中国', 'http://wx.qlogo.cn/mmopen/icJUncV1QI4YV3xkTcLgAiaiaFKVkohPnXOmfZMMwLiaO4l4zapBbMJlzjPC0a8wpP6Mape6gYgbDvhQ6eAXDomLsNDxzicfjwGnM/0', '1487431012', 'oTWrxv7_C3hBu4w4vPgU0YoSXb2o', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4s0itPlPtvCJDjQdBUGwoafY', '1', null, '1', 'zh_CN', '长沙', '湖南', '中国', 'http://wx.qlogo.cn/mmopen/8icbicwopSYVWTr1ibIvmfwdfaDNt2PMu0nxx8wMWSUqfXvn4RzdibX46QqOBOMvqCATibicWF0iaFTXyGmbibRfPvgcVCcGtDUEPzqJ/0', '1474682059', 'oTWrxvxuiQN_qjFI96pIGCt4vb4w', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4s0kPiYYDgtnVovIDhUlEoD4', '1', null, '1', 'zh_CN', null, null, '布隆迪', 'http://wx.qlogo.cn/mmopen/e5TgULticSeW4wzDaegI2aMIdiaPAuYzOYxWvIGQtS39pjyNiaVZYdQnWc37yF4ibhSYMrNZFn0GW1evH8r1qC4m2UT5hicTWTsbf/0', '1439519759', 'oTWrxvwp9MzNoVAzzSs7dhtEn5RQ', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4s0phOtgtHihNrJ26m315FDc', '1', null, '1', 'zh_CN', '深圳', '广东', '中国', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM5GMzxJxLHQ0FbaSwWwiblbm4JeAib7vZbzIicS0cKW93fSajy2miaGDWbTPG5GLKiaJnrqGclw5qubUKPibP5iahrRZb4n2Obib9SLqyk/0', '1489061278', 'oTWrxv-sSR81fx0XPhFnWr2Tf-TA', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4s0Vhfe_WMSvB-dD-Lkqngiw', '1', null, '2', 'zh_CN', '宜昌', '湖北', '中国', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEIJy7iaGula9M4xZRTeiaGs7l44rogJgCr2Kv6ibNfuvfic2Tf5Ly3jePk7cP4I8usFuIvWEJnDkVZSSQ/0', '1492931674', 'oTWrxv03NqjSNjIN0cj7y3eEZCYA', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4s0W67CgVeT5twOdxBR-NWxI', '1', null, '1', 'zh_CN', '昆明', '云南', '中国', 'http://wx.qlogo.cn/mmopen/8icbicwopSYVUhKib5RN6licAPJtVbLY8Kx10OIBOw0ax5LEicYMXhTyPJflTRVf8JBQvxOzTKxyjBWIN4e12XHibQIaPrADt5NmEic/0', '1483694901', 'oTWrxvz-UjjRHFhIroWjhd5Y_rVU', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4s14hEO4XsCmBPoMhNBnulFU', '1', null, '2', 'zh_CN', '信阳', '河南', '中国', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaELnsBLIEVcDhcpNqBTMsVPiaibdulCEjd4FKAjt1m14bicJrEYjJtrwvicn86wuOx1wynX8ibj8xUDy6iaQ/0', '1461723349', 'oTWrxv2ScYbOLmCoNJknmXBzHLjU', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4s1e2Zc6NQKNULznI238eh0E', '1', null, '1', 'zh_CN', null, '加利福尼亚', '美国', 'http://wx.qlogo.cn/mmopen/8icbicwopSYVVQGAta8xicmlf76TssY3bX4EFuz5IVsZiaIXdpFKJ2ZL8SGV7fjH1YayWAM8skSD9nQdiahzUuOYfmIUUlRvYIuIR/0', '1488764382', 'oTWrxv2u0TPhCuLQWUifbCNkIy7k', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4s25ajzQcAF1NKGFSk2LLXd8', '1', null, '2', 'zh_CN', '齐齐哈尔', '黑龙江', '中国', 'http://wx.qlogo.cn/mmopen/icJUncV1QI4aFSGb0H99Tv9aSdib0rtZAFeYlINq3nRvXicm3FkKDOLib1XUmqo4vkUwfwSvfGicibaI7AqvCiaeLQbcQ/0', '1460356478', 'oTWrxvzujyBKGYO_3ubJ2T1L6Bus', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4s25VZLmfZoDrdZ5bHBlqDJI', '1', null, '1', 'zh_CN', '漳州', '福建', '中国', 'http://wx.qlogo.cn/mmopen/icJUncV1QI4YV3xkTcLgAiaiaMFqK9V7lcLt2qSocvC8woz4bSyhzsy64NISsib7nBYbRNSFZCaicNHrvRCjzBkAlAUvK92o1m0g1/0', '1438429909', 'oTWrxv3LN5XVOeOP-0XxtK5YJBVY', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4s26dUOnyY9Oy4pHjQhkCbb8', '1', null, '1', 'zh_CN', '深圳', '广东', '中国', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLC7TqH2eqUH7NhsM8P65UGw5aZuEhlc4DicAAzB3K4AbarOzAVZSSLH8nKNtG2mNOD2eJZjfNoHZPA/0', '1487410933', 'oTWrxv5gf7VnDa4pGUPK4n1YA0pA', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4s2A1_sSoZvsffln-WOV81Cs', '1', null, '1', 'zh_CN', '深圳', '广东', '中国', 'http://wx.qlogo.cn/mmopen/8icbicwopSYVUVWXh9ynbo2hRwMX0Mic5o84urDO5PNHCU6FjVBChId9ibB78ibQEbToNhaTiabynfTrcQ91RPUXogyp8sKMEpIOjt/0', '1445330405', 'oTWrxv-KpHiLiaxUpiSaAAf4Qc-o', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4s2D4aUV8ZDvVcFaVLL5XWpQ', '1', null, '2', 'zh_CN', null, null, '中国', 'http://wx.qlogo.cn/mmopen/e5TgULticSeU2QicazaHkwcu8IM47TSZrhU1X5HUmEvNkSVIdpmhqOoqzTYXnbdDwPDstUBc23d4vJDcZQ98TiasMFdHz3BO4FC/0', '1440481877', 'oTWrxv7c28zPYV5Rz1oYvIn3HAC4', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4s2XhQZZ1wkhLTWrEFXBCL7w', '1', null, '0', 'zh_CN', null, null, null, 'http://wx.qlogo.cn/mmopen/icJUncV1QI4ZKicLTd6wbz5XwtaibM2LoU26K8tQNmV4BbUPRmsrDx2PW8Af3BC2OQtQDJVTrm2HgB96Sib8NqXAVH43S0K8QLTA/0', '1498804462', 'oTWrxv0XtumdfTlZcSVkmciz8jsI', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4s36CzJdiI1XdNVRXQyJ0C7o', '1', null, '1', 'zh_CN', '深圳', '广东', '中国', 'http://wx.qlogo.cn/mmopen/R9Mnj8iav98ibbiatVZ7jdphicicWkGCTJx1UK9mehowia4IbWicynMqdeUQKNWzUFjbtuE4DXBhVsnCqP28uF3tgic840NjNsMdOFUic/0', '1440482645', 'oTWrxv58UdEZsoYsMVvqyOsh_J30', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4s3ncriLtSvG-m9U-7bWB5uo', '1', null, '1', 'zh_CN', '东莞', '广东', '中国', 'http://wx.qlogo.cn/mmopen/8icbicwopSYVUUBXweHJxssPFLRgUFb1TyZqaGwvwqzHlp5voSRzs5ZYWNic0Cibag98DjtMvJxRCzalfOQFBgoiciaicBicQh8Yia76I/0', '1495696643', 'oTWrxvzTdXPM2J73DX7-BN2JUTow', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4s3ziRywEqlyD5PX2PtH3EP0', '1', null, '1', 'zh_CN', '深圳', '广东', '中国', 'http://wx.qlogo.cn/mmopen/ZnRLYqpv1bjOhabdib295BvIQHK421y9O2C44VbgDRj9pZA43H7IznWfmZxiazHPd5fatwMpzd24nLUUg5yBUmwicoicjdr6zCnG/0', '1439555454', 'oTWrxv1IjNI_gjZr-By99QA-6SRQ', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4s44uTZrgKjpPyuwYOE9rfy0', '1', null, '0', 'zh_CN', null, null, null, 'http://wx.qlogo.cn/mmopen/e5TgULticSeUqjUHMEvfbia76oawQyfHD3vJUtHJAP5nMsuMMEkkZaQjVW8UibEDLs4Qv9vf4TWFm6SekNqBDwGO109ibgjKb0zn/0', '1440482491', 'oTWrxv3wyH0L_I3e0JZP_z8dIOL4', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4s45ZaJi9ojXJr9jbUFxd0hs', '1', null, '1', 'zh_CN', '深圳', '广东', '中国', 'http://wx.qlogo.cn/mmopen/8icbicwopSYVW7W1LX31Xkj96SfXUtQO4d7m91ysPVs0cXZu2yTR7HOngwJpszbt2emLUZkM1fKfkkrR5nSv7eWhsU0kEk3rmU/0', '1455416785', 'oTWrxv04Df8IHaIwuZUt2ay9qfjU', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4s4uOVI8X-zfh3v4YIXCbT4M', '1', null, '1', 'zh_CN', '赣州', '江西', '中国', 'http://wx.qlogo.cn/mmopen/icJUncV1QI4YV3xkTcLgAiagboosoVFL9qU7hfnWg4bo015WjMZ8Tn2PGpa9ib8d8AdxsE5qX0QmFh7Dre8bqoib2944rN2Q8pBB/0', '1499839403', 'oTWrxvyHpTApoGk3LveRl3CdjS68', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4s55_PuprzibuleCpYOklhU8', '1', null, '1', 'zh_CN', '东莞', '广东', '中国', 'http://wx.qlogo.cn/mmopen/e5TgULticSeU1wYlghbYKjoOwibSzIIHaWiaibVOu4sgA4v0pkoSic2YsONTdfqhwrpHxt1HXf578mAvpVrkBfO9UHqmI13rsrmcG/0', '1440473661', 'oTWrxv7Za9d3vJOJJdIvowmbyjdc', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4s5FLUmLeLtoJifQaCiAa4r8', '1', null, '1', 'zh_CN', null, '奥克兰', '新西兰', 'http://wx.qlogo.cn/mmopen/9fLXQiciaf28QF3DibeicBGXwHD7o2sDCzMXPFH4piapT5jeqy5rI1nE1SV1xwJHOzeib8Na7hu4FFn0ibhLAchGcbglAGkgnR7w7Lr/0', '1487226885', 'oTWrxvzcIPrflRrVbeAOxrbLd1Aw', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4s5IAVYYacZ-4oqLAa5OdErY', '1', null, '1', 'zh_CN', '宜春', '江西', '中国', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLDY0QmH3ZSVZcSx3nT5BaktDkD67icrIBbeeq9WRJyJA7E1QiacUyPviaxRztuzuJ50MM3d8zGRuqoibw/0', '1440483869', 'oTWrxv6y61hHuAzv-DmS_e-MkHbA', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4s5lvm_nwBm7pFkzYrFuUyj4', '1', null, '1', 'zh_CN', '深圳', '广东', '中国', 'http://wx.qlogo.cn/mmopen/8icbicwopSYVWkHEJ5v30NG1ia8kkrewFhhT9qHgPVQ6JSq6NA53P1icMXHn0537ggYUfia0VticrRZQO6ySzVC4rQVZZ2N2smOrDD/0', '1478964484', 'oTWrxv9oMicyTqBDnZyR5lYKxGkE', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4s5Q2HXnMm512Q5pHlXwhAzs', '1', null, '1', 'zh_CN', '深圳', '广东', '中国', 'http://wx.qlogo.cn/mmopen/QzPtZqIzA0noT2lNSP5Tia4vOibnqvcY7RhCvicJpXRiaf6v7Xxoic7WL4TgnvZOC11WbEiaJ6A9XWkFIRr8jibFxHHSNXfia3FDbmBo/0', '1440476793', 'oTWrxv83Xfs-NbE3yDNslAY4MusY', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4s5T538UMylsp_vGRgoJ3rEs', '1', null, '2', 'zh_CN', '宜昌', '湖北', '中国', 'http://wx.qlogo.cn/mmopen/tPTsUaYYvBoKDaxC3jem9IzeEA2J67nkqE4Ydswqt7iatXv1O2PvM9ib97kv1TpZ219A4kK79ydUBvLx5IRJOLf2FpicX5sCIc1/0', '1492931502', 'oTWrxv4PF5VgFZCBhwHDMalk6hcM', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4s5Xf6-sYC5b5VaMmaCXJDAc', '1', null, '1', 'zh_CN', '深圳', '广东', '中国', 'http://wx.qlogo.cn/mmopen/8icbicwopSYVVQGAta8xicmldoelavR3N8c2VE4YZTv6KTMOgvYzLCJRNq4kv8kwpACMv9ppo6Qd8KAjIbn3SM7TGvLfgI1weLY/0', '1439455403', 'oTWrxv76Me2GWLau8nHnmEboBtvg', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4s5XYrO_BBNaXcYqB9mlQ7ZA', '1', null, '1', 'zh_CN', '深圳', '广东', '中国', 'http://wx.qlogo.cn/mmopen/QzPtZqIzA0kx3eDr64dKc2GHUMqEGlpu8FDEzLVjwXxZM3DgcPfbiacpVwIMx9LHVnJbv9iaICZTbPJ3yQ8gRqKvpI7fDc4x9H/0', '1440555307', 'oTWrxv9N3gdaRZEZeiUcMsrEro30', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4s5YFoIv-1AM1Gi6xiDx_l5Q', '1', null, '1', 'zh_CN', '黄石', '湖北', '中国', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEL52atk8cnysvJ972iaNTTyAkbNfZz8LDGgtyLLiaqeafl4F5jCWrjlZqJnJ2vISFLAicSIibDJuedgkQ/0', '1495615902', 'oTWrxv7XjsbNj1O9AS-I-8gVK_Gs', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4s68feflourn2-tVBuh56VD8', '1', null, '1', 'zh_CN', '温州', '浙江', '中国', 'http://wx.qlogo.cn/mmopen/e5TgULticSeWhokV3xbFUHV0y3DHkdYWUYJQLgVbLxjrKxXkprMM1fzO5O2iapnxlFcwBM1X0YuPMcwaVHXUMdXTfwrBFOM40Y/0', '1487431500', 'oTWrxv2BkjXTG4yMIbf9Y9srkSJY', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4s6a51t9kAXSLR7JeKDAJfZc', '1', null, '2', 'zh_CN', '黄冈', '湖北', '中国', 'http://wx.qlogo.cn/mmopen/e5TgULticSeXth10RI06pKJfLMjAoo4gKu5LYiclbGia2htIpWIV7CdjJVZ1C2c6OI0veP2pBEe0HmE3EEAZuZHZQ/0', '1483517850', 'oTWrxv5j5dZ-liy3TAI680HA_JvE', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4s6GcMiqwalsZL3mQUwmsES8', '1', null, '1', 'zh_CN', '深圳', '广东', '中国', 'http://wx.qlogo.cn/mmopen/QzPtZqIzA0l4uSl5y3U6mYv8R33be0ibpGE2v3O0CdCcgbyq2ibpiaQQmEZSib6kCZrjkcg5I6tv9ThazZjPt8LAqw/0', '1479096580', 'oTWrxvy9zVPv81L4KbhQVKrzkZM8', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4s75gBnCfY0MBGZrBTNHju1M', '1', null, '1', 'zh_CN', null, '重庆', '中国', 'http://wx.qlogo.cn/mmopen/QzPtZqIzA0kSOqktT2IN7mCeyYlqib2ZuNzIqX2KC3noxq0qVZibqwbc9yRsJgKFkXP09ht3ybUQrDAXHibt6ujtozrM878MuRX/0', '1447119648', 'oTWrxv7hbTgyntfkH1Fua48A5eWQ', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4s7hAkEjEA798J_bpR6jnQLg', '1', null, '1', 'zh_CN', '深圳', '广东', '中国', 'http://wx.qlogo.cn/mmopen/icJUncV1QI4Y7EicrvCg4ytWtK4iaYGpTXD6UNw6PuoI5b5BKkKS3pUylFbTEcuHxwBtsaLYzeG7drnBuha6D9YvKIKsiaPARXIt/0', '1427452212', 'oTWrxvwplgPPc3QptManuQbxtjxM', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4s7PtDU1NnVcLfpsCY5a6B14', '1', null, '0', 'zh_CN', null, null, null, 'http://wx.qlogo.cn/mmopen/icJUncV1QI4YV3xkTcLgAiaspUjj5Jn0uLLFDsGRFmibKjV5dHPic0ODyTDNvVnACAksGTaYXmrPPweuBTHy90Mj3pib7nZrmIcLR/0', '1483694906', 'oTWrxvxqGREd_wddL1Eq2eP_ao5A', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4s7VXjfL67xmvQnU8niqsZZw', '1', null, '1', 'zh_CN', '深圳', '广东', '中国', 'http://wx.qlogo.cn/mmopen/e5TgULticSeULhvIKshD1gjMzDfdUkMPWhtEnnpVJQFpT9Wia7VgxnNTABxyia9zicKlHZMKSyrIEtB0RRXtBZb8AjSqHSH0M8Q8/0', '1487226886', 'oTWrxvwAjaD2SjPRMmAQNdzxcwY0', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4s7xJ_p3pMfuQvDPMMEDWJ-A', '1', null, '2', 'zh_CN', '深圳', '广东', '中国', 'http://wx.qlogo.cn/mmopen/icJUncV1QI4YV3xkTcLgAiaulgUkCia1ibn1jibwFQuaiaic4rv2T1nhucDbYf0C4Q5LA1d44pqkbU0Pw8X186VaswEH6D8ohPk8G7J/0', '1477621007', 'oTWrxv6mPd5PoFZwNZ3aQ_-4wfZc', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4s84slHIgQ1T3omj1ixG4T8A', '1', null, '0', 'zh_CN', null, null, null, 'http://wx.qlogo.cn/mmopen/e5TgULticSeWhokV3xbFUHVvfibTlsaiaiatF867XhuCurs6y3rm293QQRibHicMxjmnY6KLOPQtoC89ibNYx5oC9Nwicft9Zet8JU4F/0', '1440483272', 'oTWrxv6BfbNaD8xo58Mll1Nk_kho', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4s8EFvKwb2ZPptSrWYE6bFyI', '1', null, '1', 'zh_CN', '梧州', '广西', '中国', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM5GMzxJxLHQ0FbaSwWwiblbmpf0ZexZ4BkeUib6znynSoIrLXLMUDWdyiaI2pxoLhBs5LR7k8TjibOBLA23AGUc4xGISW2Gx9YexeU/0', '1495007176', 'oTWrxv69qhE6KsVXAyGy1FdcFW80', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4s8WT7XQPNvlFmlvBRzVKATw', '1', null, '1', 'zh_CN', '深圳', '广东', '中国', 'http://wx.qlogo.cn/mmopen/9fLXQiciaf28QF3DibeicBGXwMdVaK4vibzuALT29ia5W5Y1vjZLl5L6ep4lQSy7swOGsze8MjfIyomy9ibSdvhvWHb9lmEk1jCWibQr/0', '1460165894', 'oTWrxvzb_0xUW74UurOHf3CqPJQk', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4s9cr4DdT7pMIH40zgRvOB6o', '1', null, '1', 'zh_CN', '玉林', '广西', '中国', 'http://wx.qlogo.cn/mmopen/icJUncV1QI4b5aQ0ibkP5N9m6NPpwW8T3muWAdKOt8nEaUsBFH7YOdlyxhB0kUsMbrGVw7BD6mqRMh0w9zVfBokVP2BowY3qPA/0', '1458544933', 'oTWrxv-fTBrU7LAdPOY7P7Y_hNpk', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4s9FW6eakUuvIjIK8sj3wYL0', '1', null, '2', 'zh_CN', '武汉', '湖北', '中国', 'http://wx.qlogo.cn/mmopen/icJUncV1QI4Y0Phic9tJX8NZEpOibCLQrluVkO53uEu7vHX7InoNUwFI6rznO1ERHsMVDOXeL2woT8BIqHv58c7Yw/0', '1498620369', 'oTWrxv8xfRXyUd9tH2aujVrf2ixE', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4s9mci2JWb2DU5_QdBmsT8Ss', '1', null, '1', 'zh_CN', '深圳', '广东', '中国', 'http://wx.qlogo.cn/mmopen/8icbicwopSYVUCQxzic4twn3VtTOPjTyllSNOjmeia7uBU6IJhBqYdmzia46NwPWFiaPQlTtg9GrlNbkGrDCtEdz0ThmoLQS1oHWvu/0', '1483347920', 'oTWrxv6YOiqUJe4ubPVLvWjri0Jk', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4s9ozHNMYclnqf9u6j-iHt_k', '1', null, '1', 'zh_CN', '深圳', '广东', '中国', 'http://wx.qlogo.cn/mmopen/R9Mnj8iav98ibbiatVZ7jdph5LCghnzmFDibdsy7PVo7RHmWLicguCyAVeBAv5pxVQsgElLT0l7WlCg5biby2ZgnpiciawUicdNOyC8rb/0', '1437632145', 'oTWrxv-yCvK3WCv3Qocvvacw65ZM', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4s9UiqECVwML16RvZ1xSlsA8', '1', null, '1', 'zh_CN', '广州', '广东', '中国', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM7rUTwR3VicqJobcviaNHuPh2WI7tTR32gqMD5OU2KibmQ3oBgZToYpVK4RxpOMv5VGOcskprTKHJY599RQk9TejC8cNXUFNP8IRs/0', '1431503708', 'oTWrxv8yuPIKhpeUdP7XW0ZJIKaA', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4swdz2NY0BuDl3qG_wl5nLQA', '1', null, '1', 'zh_CN', '菏泽', '山东', '中国', 'http://wx.qlogo.cn/mmopen/icJUncV1QI4YV3xkTcLgAiahdatIeNztzgv6Udh2tbe6rQ3F0kkTUxy1toha7icwibm67IawmSaEms6h2JapCiarrLOibzalYg3zC5/0', '1437980362', 'oTWrxv-gezulrvytwSl7AviXXSS4', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4swJEBZ5wsv0nyU8PetUvMZA', '1', null, '2', 'zh_CN', '茂名', '广东', '中国', 'http://wx.qlogo.cn/mmopen/e5TgULticSeUmbDLVSibRvZiaPHKBzoSXjYNLKRzPHwvMx1dCRGeBHsxOficRQe3ItaTv1Pice9wNXec1jZI2fuWjyb318AoaJbYia/0', '1487226839', 'oTWrxv-DlUz46Brp_uVr66jo5xwk', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4swkH9ezPxRemG9WdZ4P7bcU', '1', null, '2', 'zh_CN', null, null, '冰岛', 'http://wx.qlogo.cn/mmopen/icJUncV1QI4YV3xkTcLgAiasITdtsCpmfbRYMsHy18w1KIwf7pyrSSVrVEoib26tYdEzdPaicLvGsqWGKpgWEGIicVNJ30WHsvicvH/0', '1495007234', 'oTWrxv6cR3xOfgC6t2ooxGU-vw90', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4swOZyiFASlJLVuSdl2vghdI', '1', null, '1', 'zh_CN', '珠海', '广东', '中国', 'http://wx.qlogo.cn/mmopen/QzPtZqIzA0nw50aJxFSgebcJAXIgdC560gCdmn79kNrx7YLicIG453gh2fARDMTobRY8kow4tE1xaROzbzfYiaPZN5HYzC5B3n/0', '1421377934', 'oTWrxv0UoExl_hAPnEft1-nCH87s', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4swRDMAehQBoEeWVeY30m0Tk', '1', null, '1', 'zh_CN', null, '巴黎', '法国', 'http://wx.qlogo.cn/mmopen/icJUncV1QI4YV3xkTcLgAiarNG08hm7ZuvywDdvXA8icujwLFSE1iaabz8nNTMa3Mv6EDIqXiaI1VR5vzh3ZOiaowxDEOELxTZaHDC/0', '1468068080', 'oTWrxv2BO12EMXtKR5-Vrr2yFmJw', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4swUiuCWoRXi0wgNsTv64gIs', '1', null, '1', 'zh_CN', '深圳', '广东', '中国', null, '1495447124', 'oTWrxv2mildtZh_bnXErSOHDWLrM', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4swxHtGjhQM4drEN6DYPr66I', '1', null, '1', 'zh_CN', '永州', '湖南', '中国', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM75oEA6MnDmib5nclRZ2zZOynor6FSOTfyiaW093cMALYOA0Z01IibPn5Peia7I6ib3DJyODlx9WUz8YrEKJ93QI34QeQfZNTdXzjAA/0', '1440480611', 'oTWrxv-xlbogLCarvpYEPEIdUOnk', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4swyAafnAB5PvSkzmXC_Ig0M', '1', null, '1', 'zh_CN', null, null, null, 'http://wx.qlogo.cn/mmopen/e5TgULticSeWn4jYta99rjFvpH2ehOdfMNGrxWGmUabez3sib0z4n2XQk8BJnGPcLNGayE4VvxBfGNZrR7BOI5ywoGIAgibDH25/0', '1440475349', 'oTWrxv4OaQYlU2hu26ALYsuUpvcY', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4sx1LJLM5cs3lzKqWgD8f2iE', '1', null, '1', 'zh_CN', '深圳', '广东', '中国', 'http://wx.qlogo.cn/mmopen/8icbicwopSYVWmYSJWGA5FArddrs1KUcicusUxExN2OCibmnX3DyXwicqsxkmXSNY4YR1Qo0TjnPR36oQBFwsvRAj4FBeJicmuvy6t/0', '1494695970', 'oTWrxv5tBaVOy6prU5Ml5-g-WaPY', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4sx61x_0UeK1G6FlJ6W0KA0Y', '1', null, '1', 'zh_CN', '深圳', '广东', '中国', 'http://wx.qlogo.cn/mmopen/icJUncV1QI4Y7EicrvCg4ytaiba4d6vlAUSrmlyh1NBNia8rWXNo2RmJicthgTS02RxVj43PDyHjOT5Tepbelic1jEsp75BMsvIBOo/0', '1489484450', 'oTWrxv-8ndBf8FJfr4Pdg5QRXd_s', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4sx64o0EFq4vk46Aa8yjrntY', '1', null, '1', 'zh_CN', '成都', '四川', '中国', 'http://wx.qlogo.cn/mmopen/8icbicwopSYVVQGAta8xicmlVT8WcqOEgBXPEZM1IX6Wrp2ghQ4Mlem7ORJ42JxdtnzCLADY17lnXW4U51oC4Mf5P4VSf7TTtiaQ/0', '1440555694', 'oTWrxv3GYH3koTOmGTw5MMhxH0z8', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4sxE7l8uwV_FeCiNPt4GC91U', '1', null, '1', 'zh_CN', '深圳', '广东', '中国', 'http://wx.qlogo.cn/mmopen/e5TgULticSeXjQtvciclWTibI3WmWtK7nVj5s6GBUnPJ8qmXsbR9Xc2crfUt25zbwont7aibiba4A8GeD9icGbUa30r32P5ia42iazpN/0', '1440477619', 'oTWrxv2D8vQDCbWmY_swyZBrnqQs', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4sxm8tHge78qtCG6_G9B4Rko', '1', null, '2', 'zh_CN', '宜昌', '湖北', '中国', 'http://wx.qlogo.cn/mmopen/8icbicwopSYVVLeqSL17kMK0HHxQ6vrPnuZRqXD0dibCBYNZfn1kwslnsDQYrKtqMKES0uXbIG8lEKVx47jqr9zzO8vokmUel4Q/0', '1492931663', 'oTWrxvzwvbhC8BQ0k9QwrpmblriY', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4sxnqYAEeW3P2F44ltZ9Bb60', '1', null, '1', 'zh_CN', '深圳', '广东', '中国', 'http://wx.qlogo.cn/mmopen/8icbicwopSYVUOvAFNCRCpn40zhjv6NxNURl0g7WmY0f7SeicAox17kTB1vqp234xic9aad08haEs2PzNst8bWDSV4JjjGBqicxic0/0', '1440479310', 'oTWrxv3OPiD-WWw3ojWPG2ctvhV4', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4sxO5q_EHPfzIVqLQ8wIUc4o', '1', null, '1', 'zh_CN', '成都', '四川', '中国', 'http://wx.qlogo.cn/mmopen/e5TgULticSeW3eVCo3I0iaXKJRcedpG5k7taFVISnd3VPVPsmN9nmez0S3FgoibfL8uibPesOGjwiaX9M8Mcj69rI062qhgV4CxXE/0', '1447127815', 'oTWrxv8eh_e7BkELBpYvXcNTVA7I', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4sxXDL6i_yX0gpV7Wn3WoJkg', '1', null, '0', 'zh_CN', null, null, null, 'http://wx.qlogo.cn/mmopen/QzPtZqIzA0l38HllsTKbFTdl2cYCNv3zMRcG5KXh04lE4wicSQglictgKQpa0N23VTOCeFHU8C6mmllC8hjicTSfE8n2Ep5CyWh/0', '1427952431', 'oTWrxv80q_sMJB3FHTQ711zF2aW4', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4sxZl1HVeQ-5ohQOlufrWgQo', '1', null, '1', 'zh_CN', '深圳', '广东', '中国', 'http://wx.qlogo.cn/mmopen/icJUncV1QI4ZRNENxJVVRsGhZ6Ax1htWEcE02NwX6wRf7aU0uoEpwMe1W1DPrMB4UKv2NJMp5xv9jiceL03R27DQGLU3icdQmj6/0', '1444872161', 'oTWrxv0Cc4KxcpqravSv_TzH_Dbs', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4sy-SLEsCrT0AGk1xra0te9U', '1', null, '1', 'zh_CN', '深圳', '广东', '中国', 'http://wx.qlogo.cn/mmopen/ITB44z1Qv8ZxJhHibep5ZqVzYiabwMAHiaXvYCDJ6Us3RSibd1ZSndnpJCYZpMYHJVefF5WsDiapI3fUMbOC6R5BVbXZibCkZibPMUr/0', '1440484659', 'oTWrxv1S2UMsxmwdreqeJ7aKUUoY', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4syP_hgxDXFnV484ZeX_o75M', '1', null, '1', 'zh_CN', null, '迪拜', '阿拉伯联合酋长国', 'http://wx.qlogo.cn/mmopen/8icbicwopSYVVy8T7icJdMdPtDM8kTw0ApBTfpwn8yG2qR4jz9cEMalV7VH5MnyulzN8V0KvJf8eM6NAGUz8quViaoaBRIYUgBGB/0', '1498575670', 'oTWrxv03T1YoNp4-mW5vlyAGrHLo', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4sz-RAzZKtN73pG2y8OnZh8I', '1', null, '1', 'zh_CN', '深圳', '广东', '中国', 'http://wx.qlogo.cn/mmopen/FNbA14p9jgeg7QS6nslL38JibFwiaUGBqdICqYdBkic40NA59ibK4vM0O5afQHbVZZf5qaAnZv4Ue8caueb1DaReMjFxJ3uf5ujg/0', '1489112109', 'oTWrxv-GjbiIsjpJlgskp3Npc7wk', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4szA6qDaBeihts7f4qda6q4E', '1', null, '1', 'zh_CN', '广州', '广东', '中国', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM5GMzxJxLHQ0FbaSwWwiblbmfMKap9x5AsweYEAJeF5Iqo8KPmpVaA4gH1uqBxT8NNaVsIpRbayjb2PdSx8LxQgo42MQC0zt59o/0', '1440484053', 'oTWrxvxgnFv-QM1ySIvDgXcq-iLM', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4s_B8Jui1CqUk3r6LSW0AgZ4', '1', null, '1', 'zh_CN', null, '柏林', '德国', 'http://wx.qlogo.cn/mmopen/e5TgULticSeWhokV3xbFUHRtgsecblu8tUQt786DNMuf8UlMOAYl3zTiaWNGTaTdDcW9bVruofBpYlo0jNONRqXT6APqAvWURZ/0', '1499159707', 'oTWrxv-uqIQAuG2VVjm5OLYrk2eM', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4s_BSdr_KQSaL47Y2RMnEsQ8', '1', null, '1', 'zh_CN', '深圳', '广东', '中国', 'http://wx.qlogo.cn/mmopen/icJUncV1QI4Y7EicrvCg4ytX5kFwx8doicJxia9iaSfcEdibRjfHRwicGMW2HGPmodwicgrbZz0mPMdOhiaOic5PBxz3trsHiczk33yvU7H/0', '1496744382', 'oTWrxvxUQjIrHugSOuVgzShaJD38', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4s_oEStGWsR91usrHAupHjww', '1', null, '0', 'zh_CN', null, null, null, 'http://wx.qlogo.cn/mmopen/icJUncV1QI4aadLhdpTvvv8tAftV5EQhWBGRMJaibiabKx1KdT1PAubwkgtpKFDVgiaVZU9ooiaV8NricyNBf5vdUX429ibgTUDNDZ4/0', '1462198005', 'oTWrxv8gecc3WlhMOf-liZ7Sk7FQ', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4s_p1dEqiTs5Ykvkk_NQ2KVI', '1', null, '0', 'zh_CN', null, null, null, 'http://wx.qlogo.cn/mmopen/ibaSlgs3DVTiccKspoRibwoAsJu3WibbhasCRCCmA5GLqictQgcLmckpsZWTXdmvPgBa6f70K3LG6xiadogOvYk0nEK2uYRpIS17RF/0', '1427034997', 'oTWrxvzzXMB6DQTQUs_c1VQm-6nE', null, '0', '[]', null);
INSERT INTO `sys_wechat_user` VALUES ('omxe4s_QnSYsD4Kqpfo_S1cQ9434', '1', null, '2', 'zh_CN', '常德', '湖南', '中国', 'http://wx.qlogo.cn/mmopen/8icbicwopSYVVljKddqcD8woZVrzpV0QXsJUTTanTXda50LnOD49nWy4bwWIDFNrnB1kPicU8Hua9C71QHo6IGDrK9G5yt4JG36/0', '1467981299', 'oTWrxv0Db8gxIZlA1O-ErCoXKC7o', null, '0', '[]', null);

-- ----------------------------
-- Table structure for sys_weixinmenu
-- ----------------------------
DROP TABLE IF EXISTS `sys_weixinmenu`;
CREATE TABLE `sys_weixinmenu` (
  `DICTIONARIES_ID` varchar(100) NOT NULL,
  `NAME_EN` varchar(50) DEFAULT NULL COMMENT '英文',
  `BIANMA` varchar(50) DEFAULT NULL COMMENT '编码',
  `BZ` varchar(255) DEFAULT NULL COMMENT '备注',
  `TBSNAME` varchar(100) DEFAULT NULL COMMENT '排查表',
  `NAME` varchar(30) DEFAULT NULL COMMENT '名称',
  `PARENT_ID` varchar(100) DEFAULT NULL COMMENT '上级ID',
  `ORDER_BY` int(11) DEFAULT NULL COMMENT '排序',
  `TYPE` varchar(255) DEFAULT NULL,
  `KEE` varchar(255) DEFAULT NULL,
  `URL` varchar(255) DEFAULT NULL,
  `MEDIA_ID` varchar(255) DEFAULT NULL,
  `APPID` varchar(255) DEFAULT NULL,
  `PAGEPATH` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`DICTIONARIES_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_weixinmenu
-- ----------------------------
INSERT INTO `sys_weixinmenu` VALUES ('10f46a521ea0471f8d71ee75ac3b5f3a', null, '00303', null, null, '安装员通道', 'be4a8c5182c744d28282a5345783a77f', '3', 'view', '', 'http://java.app88.cn/123jkpt/appwechat/installer/installerCenter.do', '', '', '');
INSERT INTO `sys_weixinmenu` VALUES ('12a62a3e5bed44bba0412b7e6b733c93', null, '00301', null, null, '个人中心', 'be4a8c5182c744d28282a5345783a77f', '1', 'view', '', 'http://java.app88.cn/123jkpt/appwechat/appusercenter/gerenzhognxin.do', '', '', '');
INSERT INTO `sys_weixinmenu` VALUES ('354b2aaebcd34d78bbd9b40eeae30b2a', null, null, null, null, '统一入口', '8ea7c44af25f48b993a14f791c8d689f', '1', 'view', '', 'http://java.app88.cn/123jkpt/appwechat/apporder/unionOrderEntrance.do', '', '', '');
INSERT INTO `sys_weixinmenu` VALUES ('71225ce5cc0546adb1f3ba16a00553a9', null, null, null, null, '安装视频', 'be4a8c5182c744d28282a5345783a77f', '4', 'view', '', 'http://www.sina.com.cn/', '', '', '');
INSERT INTO `sys_weixinmenu` VALUES ('8994f5995f474e2dba6cfbcdfe5ea07a', null, '00201', null, null, '禹涧商城', 'fce20eb06d7b4b4d8f200eda623f725c', '1', 'view', '', 'http://java.app88.cn/123jkpt/appwechat/appmall/list.do', '', '', '');
INSERT INTO `sys_weixinmenu` VALUES ('8ea7c44af25f48b993a14f791c8d689f', null, '001', null, null, '快捷服务', '0', '1', 'view', '', 'http://demo.app88.cn/weixinPay1/strepair/wechat/user/afterSale/sureOrders.act', '', '', '');
INSERT INTO `sys_weixinmenu` VALUES ('be4a8c5182c744d28282a5345783a77f', null, '003', null, null, '我', '0', '3', 'view', '', 'http://demo.app88.cn/weixinPay1/strepair/wechat/user/afterSale/sureOrders.act', '2', '', '');
INSERT INTO `sys_weixinmenu` VALUES ('d403389974164a16ac82662da24618f4', null, null, null, null, '我要查询', '8ea7c44af25f48b993a14f791c8d689f', '5', 'view', 'kkk', 'http://demo.app88.cn/weixinPay1/strepair/wechat/user/afterSale/sureOrders.act', 'ee', 'ee4', 'ww');
INSERT INTO `sys_weixinmenu` VALUES ('d76bf3c1da714e2592f512619c56a61a', null, null, null, null, '常见问题', 'be4a8c5182c744d28282a5345783a77f', '5', 'scancode_push', 'r', '', '', '', '');
INSERT INTO `sys_weixinmenu` VALUES ('f1ea30ddef1340609c35c88fb2919bee', null, '00302', null, null, '我的订单', 'be4a8c5182c744d28282a5345783a77f', '2', 'view', '', 'http://java.app88.cn/123jkpt/appwechat/apporder/list.do', '', '', '');
INSERT INTO `sys_weixinmenu` VALUES ('f7e9732090d541c5bfb35a63741aaecd', null, null, null, null, '服务中心', 'fce20eb06d7b4b4d8f200eda623f725c', '3', 'view', '', 'http://java.app88.cn/123jkpt/appwechat/service/toserviceList.do', '', '', '');
INSERT INTO `sys_weixinmenu` VALUES ('fce20eb06d7b4b4d8f200eda623f725c', null, '002', null, null, '禹涧商城', '0', '2', 'view', '', 'http://demo.app88.cn/weixinPay1/strepair/wechat/user/afterSale/sureOrders.act', '', '', '');

-- ----------------------------
-- Table structure for szjm_file
-- ----------------------------
DROP TABLE IF EXISTS `szjm_file`;
CREATE TABLE `szjm_file` (
  `file_id` varchar(255) NOT NULL,
  `File_Name` varchar(255) DEFAULT NULL,
  `project_id` varchar(255) DEFAULT NULL COMMENT '酒店或房间编号',
  `file_type` varchar(255) DEFAULT NULL COMMENT '1为酒店，2为房间',
  `file_path` varchar(255) DEFAULT NULL,
  `file_info` varchar(255) DEFAULT NULL,
  `create_date` varchar(255) DEFAULT NULL,
  `create_user` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of szjm_file
-- ----------------------------
INSERT INTO `szjm_file` VALUES ('1d1a158bb89e453ebc008ed47930fa4f', null, '611dea95ba6546469a8722112b38d7ee', '1', '/upload/dcaec480-afe9-49b4-85df-1f819e285c26.jpg', null, '2017-08-15 16:28:47', 'csp');
INSERT INTO `szjm_file` VALUES ('0e757b81e1a1404e9cdb86ca68299fdf', null, '307ba1702b164e41826c4f7c604e4986', '1', '/upload/24d6a3a6-4344-48e7-8e76-0d892e017df7.jpg', null, '2017-08-15 16:19:28', 'csp');
INSERT INTO `szjm_file` VALUES ('0e052a2e74bf458e8e982f620b87c507', null, '3deeac914ef947e19ae487a944e47ef1', '1', '/upload/74b40442-4af9-4c08-8998-ec4507fc6875.jpg', null, '2017-08-15 17:24:17', 'csp');
INSERT INTO `szjm_file` VALUES ('7e70b3d57a374e11bf8f07c50cc4f0e6', null, '611dea95ba6546469a8722112b38d7ee', '1', '/upload/336bdf5b-3ca2-4374-a96b-21b0f9503def.jpg', null, '2017-08-15 17:15:54', 'csp');
INSERT INTO `szjm_file` VALUES ('d865bf36613e48fcb9724b3b1d91346c', null, '307ba1702b164e41826c4f7c604e4986', '1', '/upload/8ff1fc62-e27a-4a32-bcd0-086fa254a3d2.jpg', null, '2017-08-15 16:17:14', 'csp');
INSERT INTO `szjm_file` VALUES ('c1fb6b124b144efa8cf4fd5a8635dd3b', null, '1e42e5bc1e5846029f3deb95dd1021bb', '1', 'F:/develop/upload/temp/4f19e050-c677-48df-ba27-b8d5f9ded8b4.jpg', null, '2017-08-15 12:04:09', 'csp');
INSERT INTO `szjm_file` VALUES ('fd3a2f0516bf4d1e84eb12233aa6c31a', null, '1e42e5bc1e5846029f3deb95dd1021bb', '1', 'F:/develop/upload/temp/7f6b8009-cd61-4b07-b4d4-97871e892535.jpg', null, '2017-08-15 12:04:11', 'csp');
INSERT INTO `szjm_file` VALUES ('5b7389785a3b4f8b89553c00f20000bb', null, '1e42e5bc1e5846029f3deb95dd1021bb', '1', 'F:/develop/upload/temp/93db384e-5d71-451a-bb44-fe1ade30fc42.jpg', null, '2017-08-15 12:04:12', 'csp');
INSERT INTO `szjm_file` VALUES ('545df90ecafe401b85edf24e72bf6894', null, '3deeac914ef947e19ae487a944e47ef1', '1', '/upload/36001ce6-dbe5-4c8a-852f-460605360b7d.jpg', null, '2017-08-15 17:24:16', 'csp');
INSERT INTO `szjm_file` VALUES ('e2fb70907bbd4ca7ade6d24b2697a15c', null, '3deeac914ef947e19ae487a944e47ef1', '1', '/upload/1d050f99-fd42-4af8-85e5-7b5ba5c6bf66.png', null, '2017-08-15 17:24:17', 'csp');
INSERT INTO `szjm_file` VALUES ('0b55fec0bec1432a8d3a73e54091a945', '房型4', '6eb33357660c4d15b5be059bb914010f', '2', '14b93a77630841a9939548d20221cfd7.jpg', '房型模块图片', '2017-08-15 14:04:40', 'admin');
INSERT INTO `szjm_file` VALUES ('5fb478236d3246acbfd9e217aeea19fe', '房型4', '6eb33357660c4d15b5be059bb914010f', '2', '6b0e3080043d4562b6552ea9d7f7ee37.jpg', '房型模块图片', '2017-08-15 14:04:40', 'admin');
INSERT INTO `szjm_file` VALUES ('00128eece7a44c188f723d8445eedd2f', '房型4', '6eb33357660c4d15b5be059bb914010f', '2', 'c8a340c3d5d743fa8b01b7ccd2611c36.jpg', '房型模块图片', '2017-08-15 14:04:41', 'admin');
INSERT INTO `szjm_file` VALUES ('c0099f9323d7488b80cc91dcb99d101e', '房屋', '51354a88ef5b4641a041a70ffb9da9af', '2', 'a42096d222c0463b9030554cbf044f73.jpg', '房型模块图片', '2017-08-15 14:05:43', 'admin');
INSERT INTO `szjm_file` VALUES ('9a6e0f5a2a20477186e46de8a9a7e76e', '房屋', '51354a88ef5b4641a041a70ffb9da9af', '2', '2e574e7f12674e50a4440e89a9f7d0a2.jpg', '房型模块图片', '2017-08-15 14:05:44', 'admin');
INSERT INTO `szjm_file` VALUES ('a1f96065d293438e948840611ad7ae32', '房屋', '51354a88ef5b4641a041a70ffb9da9af', '2', '1fc6bb598b7e4ec282a95edb2ba602e5.jpg', '房型模块图片', '2017-08-15 14:05:44', 'admin');
INSERT INTO `szjm_file` VALUES ('1a1542b0af0448b89056bd894adb4572', '豪华总统套房', '01ede1cc490f476daf9225837ed16b04', '2', 'f241d049a714451ba72c9cfdc9e5a403.jpg', '房型模块图片', '2017-08-16 11:23:49', 'admin');
INSERT INTO `szjm_file` VALUES ('1b89f19631ef402a9e7c2e1a24b8bd49', '3', '0d6405ccc20e40d5ae0aac222488db98', '2', 'b26aac2c2efc4027856fc9078cfd3574.jpg', '房型模块图片', '2017-08-16 16:50:37', 'admin');
INSERT INTO `szjm_file` VALUES ('991da153814149579aa01d2bfa1190ac', null, 'f8ca974bd49c4a1a8a61990372f0e452', '1', '/upload/8b945c32-c4f5-4e1d-b1f0-740f3ea930f1.jpg', null, '2017-08-15 16:30:41', 'csp');
INSERT INTO `szjm_file` VALUES ('5252a6b43395457ab2e8e2c0975ff4cc', '5', 'd1df3d32cd2043e6aa4e63c826a5c105', '2', '2074a730d27b40c8be3e64c18ef7bcae.jpg', '房型模块图片', '2017-08-16 16:50:20', 'admin');
INSERT INTO `szjm_file` VALUES ('9fe466fd77654634b17a2e7546606ed8', '2', 'cbafdc2f51074051afa15cec42cfc06a', '2', '6c874d1e6a5949c5908d4e71bfb1ca4b.jpg', '房型模块图片', '2017-08-15 14:08:38', 'admin');
INSERT INTO `szjm_file` VALUES ('dbfceed21b614e76afa57d574b6684f7', '2', 'cbafdc2f51074051afa15cec42cfc06a', '2', 'c4b5c61ac11d48d692e284b5423538c0.jpg', '房型模块图片', '2017-08-15 14:08:38', 'admin');
INSERT INTO `szjm_file` VALUES ('e171039d9dbe4816bc56b1e5efca0f79', null, 'fb887006b23b4078a30d44e1ff56ecc9', '1', 'F:/develop/upload/temp/cfff6fc3-8312-40a3-887c-3f2ac1862b83.jpg', null, '2017-08-15 14:36:20', 'csp');
INSERT INTO `szjm_file` VALUES ('6124e50dead74e2eabbfbbf1b2fe8a8f', null, 'fb887006b23b4078a30d44e1ff56ecc9', '1', 'F:/develop/upload/temp/63e0425b-d186-4a35-8216-187a6c0d25c3.jpg', null, '2017-08-15 14:36:25', 'csp');
INSERT INTO `szjm_file` VALUES ('70d928e453754427bdffcf071e5a0e16', null, '307ba1702b164e41826c4f7c604e4986', '1', '/upload/dd2af9a2-3920-4b54-ba83-4b3b5fa4aaef.jpg', null, '2017-08-15 16:19:20', 'csp');
INSERT INTO `szjm_file` VALUES ('80182749e43844fc8b00a664bdf7bea8', 'a', '84a69808149c4ff0880ba5b0ebbe375e', '2', '4bdb37c39847425db7909c814ff2247a.jpg', '房型模块图片', '2017-08-16 16:49:45', 'admin');
INSERT INTO `szjm_file` VALUES ('0bf4c58ca03d4de7b3e4d1792f161c5a', 'ye', 'b4b7600745b945a1bac87fb527066be9', '2', 'd3a48be5a23b4beaa69a6a83aff0fa7b.jpg', '房型模块图片', '2017-08-16 16:50:04', 'admin');
INSERT INTO `szjm_file` VALUES ('6d4f554a14be4ea09e188dd04872900b', '房10', 'a40a1600f5ea4e42af9f4ed7cd4e6530', '2', '09246d9e4bb542d19d0d0efb2ea25b2d.jpg', '房型模块图片', '2017-08-16 10:11:42', 'admin');
INSERT INTO `szjm_file` VALUES ('10e4bcd03162436d82b2d63a076a3530', '房10', 'a40a1600f5ea4e42af9f4ed7cd4e6530', '2', '38f6702801d7458f90cd903027957747.jpg', '房型模块图片', '2017-08-16 10:11:43', 'admin');
INSERT INTO `szjm_file` VALUES ('d9273cdf286340be9d4fb12f4d67bdc9', '房10', 'a40a1600f5ea4e42af9f4ed7cd4e6530', '2', '77a320268a3a4c2a8ad7a559823bde46.jpg', '房型模块图片', '2017-08-16 10:44:18', 'admin');
INSERT INTO `szjm_file` VALUES ('d44485bd1fd845b9ad47d9c7879d5818', '34', '339482a990164d828aeca6d1f6c31ad2', '2', '948d1d693ad14a0cb3f7361a5684a82c.jpg', '房型模块图片', '2017-08-16 16:51:22', 'admin');
INSERT INTO `szjm_file` VALUES ('a00fb678e81a4b16981a2046766c732d', '12', '3a61b4b56eae41a79e3a84cecd170138', '2', '33a7b0c5c1e845f68c0488773dc07f2e.jpg', '房型模块图片', '2017-08-16 16:52:20', 'admin');
INSERT INTO `szjm_file` VALUES ('e49306941aa446af9c197c2e26bc70fb', null, 'cb6b3251aff144cfbc9d2fe7efa0d848', '1', '5a5edc95-6034-4da0-8c7f-909604f461c1.png', null, '2017-12-01 16:02:50', 'admin');
INSERT INTO `szjm_file` VALUES ('8bb114a503484883b405042494e00dee', null, '4b829b5439e84d6f89331ed894b02bee', '1', 'c5287d92-85b3-45b3-bcad-80efca4cb2e0.png', null, '2017-11-29 11:20:01', 'admin');
INSERT INTO `szjm_file` VALUES ('9e6f4971054b485c925a690ad0b737ef', null, 'cb6b3251aff144cfbc9d2fe7efa0d848', '1', 'cc2315cb-eef6-4303-9268-55e71f9ae02c.png', null, '2017-12-01 16:02:50', 'admin');

-- ----------------------------
-- Table structure for szjm_hotallocation
-- ----------------------------
DROP TABLE IF EXISTS `szjm_hotallocation`;
CREATE TABLE `szjm_hotallocation` (
  `HOTALLOCATION_ID` varchar(100) NOT NULL,
  `HOTEL_ID` varchar(255) DEFAULT NULL COMMENT '酒店ID',
  `PROVINCEID` varchar(255) DEFAULT NULL COMMENT '省份ID',
  `CITYID` varchar(255) DEFAULT NULL COMMENT '城市ID',
  `AREAID` varchar(255) DEFAULT NULL COMMENT '区级ID',
  `DETAILAREA` varchar(255) DEFAULT NULL COMMENT '详细地址',
  `LNG` varchar(255) DEFAULT NULL COMMENT '经度',
  `LAT` varchar(255) DEFAULT NULL COMMENT '纬度',
  `STATUS` int(11) NOT NULL COMMENT '状态',
  `CREATE_USER` varchar(255) DEFAULT NULL COMMENT '创建人',
  `CREATE_DATE` varchar(255) DEFAULT NULL COMMENT '创建人',
  `MODIFY_USER` varchar(255) DEFAULT NULL COMMENT '修改人',
  `MODIFY_DATE` varchar(255) DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`HOTALLOCATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of szjm_hotallocation
-- ----------------------------
INSERT INTO `szjm_hotallocation` VALUES ('68027ff52b284712b6d114ec364670b1', 'cb6b3251aff144cfbc9d2fe7efa0d848', '140000', '140200', '140203', '锦联大厦', '113.872909', '22.61358', '0', 'admin', '2017-08-17 09:35:42', null, null);

-- ----------------------------
-- Table structure for szjm_hotel
-- ----------------------------
DROP TABLE IF EXISTS `szjm_hotel`;
CREATE TABLE `szjm_hotel` (
  `hotel_id` varchar(255) NOT NULL,
  `hotel_name` varchar(255) DEFAULT NULL COMMENT '酒店名称',
  `hotel_phone` varchar(255) DEFAULT NULL COMMENT '酒店联系电话',
  `predetermined_percent` float(8,2) DEFAULT NULL COMMENT '预定百分比',
  `hotel_logo` varchar(255) DEFAULT NULL COMMENT '酒店logo',
  `hotel_background` varchar(255) DEFAULT NULL COMMENT '酒店背景图',
  `hotel_description` text COMMENT '简介',
  `status` varchar(10) DEFAULT NULL,
  `create_user` varchar(255) DEFAULT NULL COMMENT '创建人',
  `create_date` varchar(255) DEFAULT NULL COMMENT '创建时间',
  `modify_user` varchar(255) DEFAULT NULL COMMENT '修改人',
  `modify_date` varchar(255) DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`hotel_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of szjm_hotel
-- ----------------------------
INSERT INTO `szjm_hotel` VALUES ('cb6b3251aff144cfbc9d2fe7efa0d848', '特殊服务啊', '135477889724', '33.00', null, '46888454-89d5-4c2e-9ea7-920ef220a8f7.png', '6666666', '1', 'csp', '2017-08-16 14:50:47', null, null);

-- ----------------------------
-- Table structure for szjm_hotel_service
-- ----------------------------
DROP TABLE IF EXISTS `szjm_hotel_service`;
CREATE TABLE `szjm_hotel_service` (
  `hotelservice_id` varchar(255) DEFAULT NULL,
  `hotel_id` varchar(255) DEFAULT NULL,
  `service_id` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of szjm_hotel_service
-- ----------------------------
INSERT INTO `szjm_hotel_service` VALUES ('427f5f9d8caa44eebf8e8b7954d06dd1', 'f60cb48112cd4bbbad3f5e9273456d15', 'c4522a9e83c241eab5dd1c40579ab1d5');
INSERT INTO `szjm_hotel_service` VALUES ('215da74ee02245e5a126e08139b0bc6b', 'f60cb48112cd4bbbad3f5e9273456d15', '942f512f81b2411296eba604add7057c');
INSERT INTO `szjm_hotel_service` VALUES ('dc65ef154c1b4fd3b79ca2931ef2bf66', '1e42e5bc1e5846029f3deb95dd1021bb', 'd43e56e0fbe24a19af57b222868743bc');
INSERT INTO `szjm_hotel_service` VALUES ('2828670de6b446e1989e86fc13167a18', 'fb887006b23b4078a30d44e1ff56ecc9', 'd43e56e0fbe24a19af57b222868743bc');
INSERT INTO `szjm_hotel_service` VALUES ('60346b244f2d47c5bdcae705a8ab6a20', 'f8ca974bd49c4a1a8a61990372f0e452', 'd43e56e0fbe24a19af57b222868743bc');
INSERT INTO `szjm_hotel_service` VALUES ('079f7461648249abb908df119b2cfe3f', '307ba1702b164e41826c4f7c604e4986', 'd43e56e0fbe24a19af57b222868743bc');
INSERT INTO `szjm_hotel_service` VALUES ('bcab51892b8946e497ce1cec4783bb34', '611dea95ba6546469a8722112b38d7ee', '13e0cdd82ab24c15927f89f77a8f7d86');
INSERT INTO `szjm_hotel_service` VALUES ('b44ba284b17f411f9160bfd253c27e1a', '3deeac914ef947e19ae487a944e47ef1', 'd43e56e0fbe24a19af57b222868743bc');
INSERT INTO `szjm_hotel_service` VALUES ('9737d87e97924109a63c6d5770d96faa', '611dea95ba6546469a8722112b38d7ee', 'd43e56e0fbe24a19af57b222868743bc');
INSERT INTO `szjm_hotel_service` VALUES ('285f4fb14a5c4bc09c0d0cbe56228575', '16a627a9952543e29bc5f3084d986868', '13e0cdd82ab24c15927f89f77a8f7d86');
INSERT INTO `szjm_hotel_service` VALUES ('75170f44954646f5b928bb39bdf4786e', 'c736edf1a0404ac38841de7fa82e93d0', '34a61cc021b44fdab6742f8b2221921c');
INSERT INTO `szjm_hotel_service` VALUES ('5d173668bb4f40e9893e50f3be4fa938', '16a627a9952543e29bc5f3084d986868', '34a61cc021b44fdab6742f8b2221921c');
INSERT INTO `szjm_hotel_service` VALUES ('8bbab700321d4e88930706955615de96', '7fde16d758b54a7c911dba8bab4cf4d4', '13e0cdd82ab24c15927f89f77a8f7d86');
INSERT INTO `szjm_hotel_service` VALUES ('3a17b3097b324533bf17f12fb4eb565b', '7fde16d758b54a7c911dba8bab4cf4d4', '34a61cc021b44fdab6742f8b2221921c');
INSERT INTO `szjm_hotel_service` VALUES ('4c7234645fed4e3197dfc9dcc56767a2', '71f564bd1c124005847cd0d00a69dc2b', '13e0cdd82ab24c15927f89f77a8f7d86');
INSERT INTO `szjm_hotel_service` VALUES ('08c7a16068954658ad78c5771dfce042', '71f564bd1c124005847cd0d00a69dc2b', '34a61cc021b44fdab6742f8b2221921c');
INSERT INTO `szjm_hotel_service` VALUES ('2f894ca997ed4ecd8a1b77be14312360', 'cb6b3251aff144cfbc9d2fe7efa0d848', 'd43e56e0fbe24a19af57b222868743bc');
INSERT INTO `szjm_hotel_service` VALUES ('b72f3235803b4da48a4129bb872e93ea', 'cb6b3251aff144cfbc9d2fe7efa0d848', '34a61cc021b44fdab6742f8b2221921c');

-- ----------------------------
-- Table structure for szjm_order
-- ----------------------------
DROP TABLE IF EXISTS `szjm_order`;
CREATE TABLE `szjm_order` (
  `order_id` varchar(255) NOT NULL COMMENT '订单编号',
  `room_id` varchar(255) DEFAULT NULL COMMENT '预定房型编号',
  `count` int(11) DEFAULT NULL COMMENT '预定数量',
  `days` int(11) DEFAULT '1' COMMENT '住的晚数',
  `begin_time` varchar(255) DEFAULT NULL COMMENT '入住开始日期',
  `end_time` varchar(255) DEFAULT NULL COMMENT '入住结束日期',
  `person_name` varchar(255) DEFAULT NULL COMMENT '入住人',
  `person_phone` varchar(255) DEFAULT NULL COMMENT '入住人 手机号',
  `plan_time` varchar(255) DEFAULT NULL COMMENT '预计到店时间',
  `predetermined_amount` float(8,2) DEFAULT NULL COMMENT '预定金额',
  `total_amount` float(8,2) DEFAULT NULL COMMENT '订单金额',
  `openid` varchar(255) DEFAULT NULL COMMENT '微信OPENID',
  `order_status` varchar(255) DEFAULT NULL COMMENT '状态0为支付中1为待预定 2为预定中  3为已完成 4为已取消 5为退款中 6为退款失败 7为已退款',
  `status` varchar(255) DEFAULT NULL COMMENT '状态 0禁用 1启用 2删除 ',
  `create_user` varchar(255) DEFAULT NULL COMMENT '创建人',
  `create_date` varchar(255) DEFAULT NULL COMMENT '创建日期',
  `modify_user` varchar(255) DEFAULT NULL COMMENT '修改人',
  `modify_date` varchar(255) DEFAULT NULL COMMENT '修改日期',
  `pay_first_gold` varchar(255) DEFAULT NULL COMMENT '是否支付第一笔钱（0为未支付，1为已支付）',
  `pay_second_gold` varchar(255) DEFAULT NULL COMMENT '是否支付第二笔钱（0为未支付，1为已支付）',
  `refund_first_gold` varchar(255) DEFAULT NULL COMMENT '是否退款第一笔钱（0为未支付，1为已支付）',
  `refund_second_gold` varchar(255) DEFAULT NULL COMMENT '是否退款第二笔钱（0为未支付，1为已支付）',
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of szjm_order
-- ----------------------------
INSERT INTO `szjm_order` VALUES ('20170816000001', '01ede1cc490f476daf9225837ed16b04', '2', '1', '2017-08-17', '2017-08-18', '陈仕鹏', '13790445950', '2017-08-18 15:15:11', '2.00', '254.00', 'omxe4s1e2Zc6NQKNULznI238eh0E', '5', '1', 'csp', '2017-08-18 15:15:11', null, null, null, null, null, null);
INSERT INTO `szjm_order` VALUES ('20170818000001', '01ede1cc490f476daf9225837ed16b04', '3', '1', '2017-08-17', '2017-08-19', '陈仕鹏', '13790445950', '2017-08-18 15:15:11', '2.00', '254.00', 'omxe4s1e2Zc6NQKNULznI238eh0E', '3', '1', 'csp', '2017-08-18 15:15:11', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for szjm_order_status
-- ----------------------------
DROP TABLE IF EXISTS `szjm_order_status`;
CREATE TABLE `szjm_order_status` (
  `orderstatus_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '状态编号',
  `order_id` varchar(255) DEFAULT NULL COMMENT '订单编号',
  `status_code` varchar(255) DEFAULT NULL COMMENT '状态编码1为预定中 2为待预定 3为已完成 4为已取消',
  `status_description` varchar(255) DEFAULT NULL COMMENT '状态码描述',
  `status` varchar(255) DEFAULT '1' COMMENT '状态 0禁用 1启用 2删除 ',
  `create_user` varchar(255) DEFAULT NULL COMMENT '创建人',
  `create_date` varchar(255) DEFAULT NULL COMMENT '创建日期',
  `modify_user` varchar(255) DEFAULT NULL COMMENT '修改人',
  `modify_date` varchar(255) DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`orderstatus_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of szjm_order_status
-- ----------------------------
INSERT INTO `szjm_order_status` VALUES ('1', '20170816000001', '2', '预定中', '1', 'csp', '2017-08-17 18:14:35', null, null);
INSERT INTO `szjm_order_status` VALUES ('2', '20170816000001', '5', '退款中', '1', 'csp', '2017-08-17 18:22:45', null, null);

-- ----------------------------
-- Table structure for szjm_room
-- ----------------------------
DROP TABLE IF EXISTS `szjm_room`;
CREATE TABLE `szjm_room` (
  `room_id` varchar(255) NOT NULL,
  `hotel_id` varchar(255) DEFAULT NULL,
  `room_name` varchar(255) DEFAULT NULL COMMENT '房型名称',
  `room_price` float DEFAULT NULL COMMENT '房型价格',
  `room_GatePrice` float DEFAULT NULL COMMENT '门价',
  `room_cover` varchar(255) DEFAULT NULL COMMENT '封面',
  `room_desc` text COMMENT '简介',
  `status` varchar(10) DEFAULT NULL,
  `create_user` varchar(255) DEFAULT NULL,
  `create_date` varchar(255) DEFAULT NULL,
  `modify_user` varchar(255) DEFAULT NULL,
  `modify_date` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`room_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of szjm_room
-- ----------------------------
INSERT INTO `szjm_room` VALUES ('01ede1cc490f476daf9225837ed16b04', 'cb6b3251aff144cfbc9d2fe7efa0d848', '豪华总统套房', '850', '250', '8372548044ac40d38833603fca35e5e0.jpg', '内耗', '1', 'admin', '2017-08-16 11:23:46', 'admin', '2017-08-16 11:27:48');
INSERT INTO `szjm_room` VALUES ('e58be81419ae4470ad08380fcfa11fdc', 'cb6b3251aff144cfbc9d2fe7efa0d848', '房3', '343', '345', 'bf2c6d08c8824c85b8b3b09bc270b7c3.jpg', '本地', '1', 'admin', '2017-08-15 11:14:05', null, null);
INSERT INTO `szjm_room` VALUES ('6eb33357660c4d15b5be059bb914010f', 'cb6b3251aff144cfbc9d2fe7efa0d848', '房型4', '12', '21', 'ec5bd54e989545299047069ed4e16fd6.jpg', '发到', '1', 'admin', '2017-08-15 14:04:35', null, null);
INSERT INTO `szjm_room` VALUES ('51354a88ef5b4641a041a70ffb9da9af', 'cb6b3251aff144cfbc9d2fe7efa0d848', '房屋', '12', '32', 'd64ad942300f47b0adfcd52f832a1e83.jpg', '发大水', '1', 'admin', '2017-08-15 14:05:42', null, null);
INSERT INTO `szjm_room` VALUES ('a40a1600f5ea4e42af9f4ed7cd4e6530', 'cb6b3251aff144cfbc9d2fe7efa0d848', '房10', '343', '43', 'fc473bb0c34f41e38331c4ed87e86b58.jpg', 'f', '1', 'admin', '2017-08-16 09:50:45', 'admin', '2017-08-16 10:44:18');
INSERT INTO `szjm_room` VALUES ('84a69808149c4ff0880ba5b0ebbe375e', 'cb6b3251aff144cfbc9d2fe7efa0d848', 'a', '12', '123', 'ca3b12db5434438f9ebb979e89a94881.jpg', 'sf', '1', 'admin', '2017-08-16 16:49:43', null, null);
INSERT INTO `szjm_room` VALUES ('b4b7600745b945a1bac87fb527066be9', 'cb6b3251aff144cfbc9d2fe7efa0d848', 'ye', '4', '34', 'e32386d4a8754cb088e8a7134945ec2f.jpg', '63', '1', 'admin', '2017-08-16 16:50:03', null, null);
INSERT INTO `szjm_room` VALUES ('d1df3d32cd2043e6aa4e63c826a5c105', 'cb6b3251aff144cfbc9d2fe7efa0d848', '5', '460', '4', '893953a21a9743089e90421cfee0daf8.jpg', '54', '1', 'admin', '2017-08-16 16:50:20', null, null);
INSERT INTO `szjm_room` VALUES ('0d6405ccc20e40d5ae0aac222488db98', 'cb6b3251aff144cfbc9d2fe7efa0d848', '3', '343', '34', '1e95acae951c4bde9e262a8c2be2e963.jpg', 'tsr', '1', 'admin', '2017-08-16 16:50:37', null, null);
INSERT INTO `szjm_room` VALUES ('339482a990164d828aeca6d1f6c31ad2', 'cb6b3251aff144cfbc9d2fe7efa0d848', '34', '34', '34', 'aa2ecde260e7474ca187cff9c7fa95af.jpg', 'bvhhj', '1', 'admin', '2017-08-16 16:51:22', null, null);
INSERT INTO `szjm_room` VALUES ('3a61b4b56eae41a79e3a84cecd170138', 'cb6b3251aff144cfbc9d2fe7efa0d848', '12', '12', '23', '4f0c54a6108b4b98ba7c2a669d69698e.jpg', 'weq', '1', 'admin', '2017-08-16 16:52:20', 'admin', '2017-12-01 09:37:19');

-- ----------------------------
-- Table structure for szjm_service
-- ----------------------------
DROP TABLE IF EXISTS `szjm_service`;
CREATE TABLE `szjm_service` (
  `service_id` varchar(255) DEFAULT NULL,
  `service_name` varchar(255) DEFAULT NULL,
  `service_photo` varchar(255) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `create_user` varchar(255) DEFAULT NULL,
  `create_date` varchar(255) DEFAULT NULL,
  `modify_user` varchar(255) DEFAULT NULL,
  `modify_date` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of szjm_service
-- ----------------------------
INSERT INTO `szjm_service` VALUES ('34a61cc021b44fdab6742f8b2221921c', '暴力服务', '175176293c3d4c7ab303210e7fe0af62.jpg', '1', 'csp', '2017-08-15 18:03:59', null, null);
INSERT INTO `szjm_service` VALUES ('d43e56e0fbe24a19af57b222868743bc', '特殊服务', '928ac3f67f55476584584bb898d942b5.jpg', '1', 'luopeng', '2017-08-15 09:47:11', 'luopeng', '2017-08-15 09:50:20');
INSERT INTO `szjm_service` VALUES ('13e0cdd82ab24c15927f89f77a8f7d86', '激情服务', '7a4e407e2ab04019b1e6a9ef850b4831.jpg', '1', 'admin', '2017-08-15 17:53:07', null, null);

-- ----------------------------
-- Table structure for szjm_transaction
-- ----------------------------
DROP TABLE IF EXISTS `szjm_transaction`;
CREATE TABLE `szjm_transaction` (
  `transaction_id` varchar(255) NOT NULL COMMENT '交易记录编号',
  `order_id` varchar(255) DEFAULT NULL COMMENT '订单编号',
  `transaction_amount` float(8,2) DEFAULT NULL COMMENT '交易金额',
  `transaction_type` varchar(255) DEFAULT NULL COMMENT '交易类型1为订单收款2为订单退款',
  `transaction_status` varchar(255) DEFAULT NULL COMMENT '交易状态 0为进行中，1为成功 2为失败',
  `finish_date` varchar(255) DEFAULT NULL COMMENT '交易完成时间',
  `status` varchar(255) DEFAULT NULL COMMENT '状态 0禁用 1启用 2删除 ',
  `create_user` varchar(255) DEFAULT NULL COMMENT '创建人',
  `create_date` varchar(255) DEFAULT NULL COMMENT '创建日期',
  `modify_user` varchar(255) DEFAULT NULL COMMENT '修改人',
  `modify_date` varchar(255) DEFAULT NULL COMMENT '修改日期',
  `first_second_pay_flag` varchar(255) DEFAULT NULL COMMENT '1为第一笔钱，2为第二笔钱',
  PRIMARY KEY (`transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of szjm_transaction
-- ----------------------------

-- ----------------------------
-- Table structure for szjm_wechatuser
-- ----------------------------
DROP TABLE IF EXISTS `szjm_wechatuser`;
CREATE TABLE `szjm_wechatuser` (
  `openid` varchar(255) NOT NULL DEFAULT '',
  `sex` int(1) DEFAULT NULL,
  `nickname` varchar(32) CHARACTER SET utf8mb4 DEFAULT NULL,
  `province` varchar(16) DEFAULT NULL,
  `city` varchar(32) DEFAULT NULL,
  `country` varchar(32) DEFAULT NULL,
  `headimgurl` varchar(512) DEFAULT NULL,
  `unionid` varchar(64) DEFAULT NULL,
  `privilegeStr` varchar(1024) DEFAULT NULL,
  `inviteCode` varchar(64) DEFAULT NULL COMMENT '推荐码',
  `integration` double DEFAULT NULL,
  `subscribe` int(11) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `phoneNumber` varchar(255) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`openid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of szjm_wechatuser
-- ----------------------------

-- ----------------------------
-- Table structure for tb_attached
-- ----------------------------
DROP TABLE IF EXISTS `tb_attached`;
CREATE TABLE `tb_attached` (
  `ATTACHED_ID` varchar(100) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL COMMENT '名称',
  `hotel_name` varchar(255) DEFAULT NULL COMMENT '酒店名称',
  `hotel_logo` varchar(255) DEFAULT NULL,
  `hotel_phone` varchar(255) DEFAULT NULL COMMENT '酒店电话',
  `Reserve_money` bigint(20) DEFAULT NULL COMMENT '预约价格',
  `FDESCRIBE` varchar(255) DEFAULT NULL COMMENT '描述',
  `PRICE` double(11,2) DEFAULT NULL COMMENT '价格',
  `CTIME` varchar(32) DEFAULT NULL COMMENT '创建时间',
  `CREATE_DATE` varchar(200) DEFAULT NULL,
  `CREATE_USER` varchar(255) DEFAULT NULL,
  `MODIFY_USER` varchar(255) DEFAULT NULL,
  `MODIFY_DATE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ATTACHED_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_attached
-- ----------------------------
INSERT INTO `tb_attached` VALUES ('60d05d8e7d9046a4893f8bdaa34d6488', 'eee', null, null, null, null, 'ee', '22.00', '2016-04-22 15:33:23', null, null, null, null);
INSERT INTO `tb_attached` VALUES ('d74b6f507e784607b8f85e31e3cfad22', 'AA', null, null, null, null, 'aaa', '222.00', '2016-04-17 18:20:41', null, null, null, null);

-- ----------------------------
-- Table structure for tb_attachedmx
-- ----------------------------
DROP TABLE IF EXISTS `tb_attachedmx`;
CREATE TABLE `tb_attachedmx` (
  `ATTACHEDMX_ID` varchar(100) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL COMMENT '名称',
  `TITLE` varchar(255) DEFAULT NULL COMMENT '标题',
  `CTIME` varchar(32) DEFAULT NULL COMMENT '创建日期',
  `PRICE` double(11,2) DEFAULT NULL COMMENT '单价',
  `ATTACHED_ID` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ATTACHEDMX_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_attachedmx
-- ----------------------------
INSERT INTO `tb_attachedmx` VALUES ('04717d1a034c4e51aacd5e062a4c63bd', 'ddd', 'ddd', '2016-03-29', '11122.00', 'd74b6f507e784607b8f85e31e3cfad22');
INSERT INTO `tb_attachedmx` VALUES ('7992c783fd0b476d90be363858a941ba', 'ddd', 'ddsds', '2016-04-06', '222.00', 'd74b6f507e784607b8f85e31e3cfad22');
INSERT INTO `tb_attachedmx` VALUES ('ab76d8fce67b4814802386780dcbbd51', '1`', '1', '2017-07-04', '1.00', '60d05d8e7d9046a4893f8bdaa34d6488');

-- ----------------------------
-- Table structure for tb_pictures
-- ----------------------------
DROP TABLE IF EXISTS `tb_pictures`;
CREATE TABLE `tb_pictures` (
  `PICTURES_ID` varchar(100) NOT NULL,
  `TITLE` varchar(255) DEFAULT NULL COMMENT '标题',
  `NAME` varchar(255) DEFAULT NULL COMMENT '文件名',
  `PATH` varchar(255) DEFAULT NULL COMMENT '路径',
  `CREATETIME` varchar(100) DEFAULT NULL COMMENT '创建时间',
  `MASTER_ID` varchar(255) DEFAULT NULL COMMENT '属于',
  `BZ` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`PICTURES_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_pictures
-- ----------------------------
INSERT INTO `tb_pictures` VALUES ('63ae36f54aae4cb4b760a5324e163b02', '图片', '597035ad75c74562a954bdbd30b8750a.jpg', '', '2017-07-06 18:24:34', '1', '图片管理处上传');
INSERT INTO `tb_pictures` VALUES ('6d8dd6603bad48f79693fd137a731c92', '图片', '718618bc1c4d4c15a9ef1cf6979416c6.png', '20170706/718618bc1c4d4c15a9ef1cf6979416c6.png', '2017-06-22 17:34:15', '45', '图片管理处上传');
INSERT INTO `tb_pictures` VALUES ('8385d29f01814e0db85fd528db4691fe', '图片', '3ca8f6c22526408aa0d9d53a08ad21bc.jpg', '20170622/3ca8f6c22526408aa0d9d53a08ad21bc.jpg', '2017-06-22 17:34:15', '1', '图片管理处上传');
INSERT INTO `tb_pictures` VALUES ('c09277f91225404ca8a8f9278ce65dec', '图片', 'fad39e823abf4a568f19d79d770b68be.png', '20170622/fad39e823abf4a568f19d79d770b68be.png', '2017-06-22 17:34:15', '1', '图片管理处上传');
INSERT INTO `tb_pictures` VALUES ('f72934403a334041aab51981944cb70d', '图片', '13e9ac59ff08499fa5d1c92129ea1230.jpg', '20170706/13e9ac59ff08499fa5d1c92129ea1230.jpg', '2017-07-06 18:24:34', '1', '图片管理处上传');

-- ----------------------------
-- Table structure for weixin_command
-- ----------------------------
DROP TABLE IF EXISTS `weixin_command`;
CREATE TABLE `weixin_command` (
  `COMMAND_ID` varchar(100) NOT NULL,
  `KEYWORD` varchar(255) DEFAULT NULL COMMENT '关键词',
  `COMMANDCODE` varchar(255) DEFAULT NULL COMMENT '应用路径',
  `CREATETIME` varchar(255) DEFAULT NULL COMMENT '创建时间',
  `STATUS` int(1) NOT NULL COMMENT '状态',
  `BZ` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`COMMAND_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_command
-- ----------------------------
INSERT INTO `weixin_command` VALUES ('2636750f6978451b8330874c9be042c2', '锁定服务器', 'rundll32.exe user32.dll,LockWorkStation', '2015-05-10 21:25:06', '1', '锁定计算机');
INSERT INTO `weixin_command` VALUES ('46217c6d44354010823241ef484f7214', '打开浏览器', 'C:/Program Files/Internet Explorer/iexplore.exe', '2015-05-09 02:43:02', '1', '打开浏览器操作');
INSERT INTO `weixin_command` VALUES ('576adcecce504bf3bb34c6b4da79a177', '关闭浏览器', 'taskkill /f /im iexplore.exe', '2015-05-09 02:36:48', '2', '关闭浏览器操作');
INSERT INTO `weixin_command` VALUES ('854a157c6d99499493f4cc303674c01f', '关闭QQ', 'taskkill /f /im qq.exe', '2015-05-10 21:25:46', '1', '关闭QQ');
INSERT INTO `weixin_command` VALUES ('ab3a8c6310ca4dc8b803ecc547e55ae7', '打开QQ', 'D:/SOFT/QQ/QQ/Bin/qq.exe', '2015-05-10 21:25:25', '1', '打开QQ');

-- ----------------------------
-- Table structure for weixin_imgmsg
-- ----------------------------
DROP TABLE IF EXISTS `weixin_imgmsg`;
CREATE TABLE `weixin_imgmsg` (
  `IMGMSG_ID` varchar(100) NOT NULL,
  `KEYWORD` varchar(255) DEFAULT NULL COMMENT '关键词',
  `CREATETIME` varchar(100) DEFAULT NULL COMMENT '创建时间',
  `STATUS` int(11) NOT NULL COMMENT '状态',
  `BZ` varchar(255) DEFAULT NULL COMMENT '备注',
  `TITLE1` varchar(255) DEFAULT NULL COMMENT '标题1',
  `DESCRIPTION1` varchar(255) DEFAULT NULL COMMENT '描述1',
  `IMGURL1` varchar(255) DEFAULT NULL COMMENT '图片地址1',
  `TOURL1` varchar(255) DEFAULT NULL COMMENT '超链接1',
  `TITLE2` varchar(255) DEFAULT NULL COMMENT '标题2',
  `DESCRIPTION2` varchar(255) DEFAULT NULL COMMENT '描述2',
  `IMGURL2` varchar(255) DEFAULT NULL COMMENT '图片地址2',
  `TOURL2` varchar(255) DEFAULT NULL COMMENT '超链接2',
  `TITLE3` varchar(255) DEFAULT NULL COMMENT '标题3',
  `DESCRIPTION3` varchar(255) DEFAULT NULL COMMENT '描述3',
  `IMGURL3` varchar(255) DEFAULT NULL COMMENT '图片地址3',
  `TOURL3` varchar(255) DEFAULT NULL COMMENT '超链接3',
  `TITLE4` varchar(255) DEFAULT NULL COMMENT '标题4',
  `DESCRIPTION4` varchar(255) DEFAULT NULL COMMENT '描述4',
  `IMGURL4` varchar(255) DEFAULT NULL COMMENT '图片地址4',
  `TOURL4` varchar(255) DEFAULT NULL COMMENT '超链接4',
  `TITLE5` varchar(255) DEFAULT NULL COMMENT '标题5',
  `DESCRIPTION5` varchar(255) DEFAULT NULL COMMENT '描述5',
  `IMGURL5` varchar(255) DEFAULT NULL COMMENT '图片地址5',
  `TOURL5` varchar(255) DEFAULT NULL COMMENT '超链接5',
  `TITLE6` varchar(255) DEFAULT NULL COMMENT '标题6',
  `DESCRIPTION6` varchar(255) DEFAULT NULL COMMENT '描述6',
  `IMGURL6` varchar(255) DEFAULT NULL COMMENT '图片地址6',
  `TOURL6` varchar(255) DEFAULT NULL COMMENT '超链接6',
  `TITLE7` varchar(255) DEFAULT NULL COMMENT '标题7',
  `DESCRIPTION7` varchar(255) DEFAULT NULL COMMENT '描述7',
  `IMGURL7` varchar(255) DEFAULT NULL COMMENT '图片地址7',
  `TOURL7` varchar(255) DEFAULT NULL COMMENT '超链接7',
  `TITLE8` varchar(255) DEFAULT NULL COMMENT '标题8',
  `DESCRIPTION8` varchar(255) DEFAULT NULL COMMENT '描述8',
  `IMGURL8` varchar(255) DEFAULT NULL COMMENT '图片地址8',
  `TOURL8` varchar(255) DEFAULT NULL COMMENT '超链接8',
  PRIMARY KEY (`IMGMSG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_imgmsg
-- ----------------------------
INSERT INTO `weixin_imgmsg` VALUES ('380b2cb1f4954315b0e20618f7b5bd8f', '首页', '2015-05-10 20:51:09', '1', '图文回复', '图文回复标题', '图文回复描述', 'http://a.hiphotos.baidu.com/image/h%3D360/sign=c6c7e73ebc389b5027ffe654b535e5f1/a686c9177f3e6709392bb8df3ec79f3df8dc55e3.jpg', 'www.baidu.com', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for weixin_textmsg
-- ----------------------------
DROP TABLE IF EXISTS `weixin_textmsg`;
CREATE TABLE `weixin_textmsg` (
  `TEXTMSG_ID` varchar(100) NOT NULL,
  `KEYWORD` varchar(255) DEFAULT NULL COMMENT '关键词',
  `CONTENT` varchar(255) DEFAULT NULL COMMENT '内容',
  `CREATETIME` varchar(100) DEFAULT NULL COMMENT '创建时间',
  `STATUS` int(2) DEFAULT NULL COMMENT '状态',
  `BZ` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`TEXTMSG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixin_textmsg
-- ----------------------------
INSERT INTO `weixin_textmsg` VALUES ('695cd74779734231928a253107ab0eeb', '吃饭', '吃了噢噢噢噢', '2015-05-10 22:52:27', '1', '文本回复');
INSERT INTO `weixin_textmsg` VALUES ('d4738af7aea74a6ca1a5fb25a98f9acb', '关注', '这里是关注后回复的内容', '2015-05-11 02:12:36', '1', '关注回复');

-- ----------------------------
-- Table structure for yz_appointinfo
-- ----------------------------
DROP TABLE IF EXISTS `yz_appointinfo`;
CREATE TABLE `yz_appointinfo` (
  `id` varchar(255) NOT NULL,
  `timeframe_id` varchar(255) DEFAULT NULL COMMENT '时段表id',
  `personnum` int(11) DEFAULT NULL COMMENT '预约人数',
  `isappoint` varchar(255) DEFAULT NULL COMMENT '这个时段是否被预约',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yz_appointinfo
-- ----------------------------

-- ----------------------------
-- Table structure for yz_artificer
-- ----------------------------
DROP TABLE IF EXISTS `yz_artificer`;
CREATE TABLE `yz_artificer` (
  `id` varchar(255) NOT NULL,
  `js_num` varchar(255) DEFAULT NULL COMMENT '技师编号',
  `name` varchar(255) DEFAULT NULL COMMENT '姓名',
  `skill_id` int(11) DEFAULT NULL COMMENT '技能id',
  `sex` varchar(255) DEFAULT NULL COMMENT '性别 1:男 0：女',
  `percentage` float(11,2) DEFAULT NULL COMMENT '技师提成比例',
  `icon` varchar(255) DEFAULT NULL COMMENT '头像',
  `work_time` float(11,2) DEFAULT NULL,
  `per_introduce` text,
  `works_icon` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yz_artificer
-- ----------------------------
INSERT INTO `yz_artificer` VALUES ('0e1bf6d4fc2d4de298a3fb073d78f5be', '300209', 'yao yao', null, '1', null, 'cdeb81b8-207d-4033-8a31-9a696a2e2b06.jpg', '12.00', '美发总监，具有13年工作经验，不断学习深造，对发艺有独特的见解和创意，在美发、烫染、直发、造型设计上有较深的造诣。人帅技术好，体贴口才棒，剪发过程行云流水，剪发完毕惊呆地球。妖妖总监理发师，美发界的战斗机！', null, '2017-12-20 19:47:57', '2018-01-07 19:39:57');
INSERT INTO `yz_artificer` VALUES ('37b6d3ab705b4b85b9ab25308ba177ad', '300205', 'LUO', null, '1', null, '1d69367a-88a7-4015-a852-e433ce09ea8b.jpg', '4.00', '1.技艺好，对造型、拉发、梁发、卷发，有较深的理解力，剪发过程行云流水，笔走龙蛇，烫染工作认真，细心让每一位客户满意，做客户的身边的形象师，深得客户的好评。\r\n3.形象气质佳，帅是美发界的潘安，玉树临风英俊潇洒\r\n', null, '2017-12-20 19:34:05', '2018-04-11 13:19:56');
INSERT INTO `yz_artificer` VALUES ('a91d8767d36e4be4bde1963b9ea2ac2b', '300217', '小磊 Leo Chen', null, '1', '2.00', '0c22ab82-7ae8-4e5b-99bb-5d2dea1c2cd5.jpg', '2.00', '烫染师晓磊，自小对美业有着浓厚兴趣，经历过拜师学艺，跟随师傅刻苦学习技术，现在对于调色、染发、直发、护发、有着成熟、稳定的经验，热情、体贴、勤奋、好学、幽默风趣，深得客户的一致好评！', null, '2017-12-02 10:06:29', '2018-01-08 19:49:39');
INSERT INTO `yz_artificer` VALUES ('b47c362823f64cffaec338a0f9eb1f1f', '300208', 'OWEN', null, '1', '8.00', '56395261-266e-41e8-8383-bef2e5b5d9b0.jpg', '6.00', '理发师是指经历过拜师学艺，跟随师傅刻苦学习技术被师傅认可后，出师。自立门户的人，理发师的职业道德一般都很高，对与发型技术的熟练度，对发型的热情度，对发型技术钻研度都是很高，自发型技术在30年代从欧美传入中国，从那时起人们就将这个职业称为“理发师”。', null, '2017-12-04 14:12:27', '2018-04-11 13:21:01');
INSERT INTO `yz_artificer` VALUES ('c5b7e282fec5410eb9eb63719f314988', '300216', '玉洁 Yuki', null, '0', '10.35', '7a51960d-53e9-41ca-94bd-7f0b6d70d84c.jpg', '2.00', '对於各种皮肤的美容，养护，身体亚健康理疗，有着丰富经验，手法好，服务， 热情\r\n深得客户的一致好评。', null, '2017-12-01 19:24:09', '2018-01-08 19:51:10');
INSERT INTO `yz_artificer` VALUES ('d5cba53bfb6a4a27bfd2287ffe50d6c8', '300226', '梦娜  Mona', null, '0', '30.00', 'f17bca91-f636-46f8-890c-59a0cd568172.jpg', '2.00', '对於各种皮肤的美容，养护，身体亚健康调养、理疗，有着丰富经验，手法好，服务， 热情\r\n深得客户的一致好评。', null, '2017-12-02 14:25:31', '2018-01-08 19:50:52');
INSERT INTO `yz_artificer` VALUES ('f7d4b6e8454c4d5bbaaf9e1df9c6dbc4', '300201', '米莉Emily', null, '0', '10.00', '28846096-5a1f-46f8-b4d3-016d691ed8aa.jpg', '2.00', '对於各种皮肤的美容，养护，身体亚健康理疗、中频肩颈、肝肾、足底、暖宫针灸、热疗有着丰富经验，手法好，服务， 热情\r\n深得客户的一致好评。', null, '2017-12-02 10:08:15', '2018-01-08 19:51:36');

-- ----------------------------
-- Table structure for yz_artorder
-- ----------------------------
DROP TABLE IF EXISTS `yz_artorder`;
CREATE TABLE `yz_artorder` (
  `id` varchar(255) NOT NULL COMMENT '技师工资发放表',
  `number` varchar(255) DEFAULT NULL COMMENT '单号，自填',
  `totalprice` float(3,0) DEFAULT NULL COMMENT '总价格',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yz_artorder
-- ----------------------------
INSERT INTO `yz_artorder` VALUES ('067f57493d6f456485bfdfd84d260f3e', '99999', '242', '2017-12-20 16:29:34', '2017-12-20 16:29:34');
INSERT INTO `yz_artorder` VALUES ('214289f9ee9248b3833e1f89f77542de', '22222', '322', '2017-12-20 16:24:58', '2017-12-20 16:24:58');
INSERT INTO `yz_artorder` VALUES ('b8449d296807430d86f8b01c405389f5', '101010', '412', '2017-12-20 16:28:59', '2017-12-20 16:28:59');
INSERT INTO `yz_artorder` VALUES ('c10fcd54372249aa82bcaec3d3c09113', '3245640687', '303', '2017-12-23 11:59:00', '2017-12-23 11:59:00');
INSERT INTO `yz_artorder` VALUES ('fe6410611fc848ba9213fe1e50d57664', '10000', '250', '2017-12-22 17:42:32', '2017-12-22 17:42:32');

-- ----------------------------
-- Table structure for yz_artwork_icon
-- ----------------------------
DROP TABLE IF EXISTS `yz_artwork_icon`;
CREATE TABLE `yz_artwork_icon` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `art_id` varchar(255) DEFAULT NULL COMMENT '技师id',
  `work_icon` varchar(255) DEFAULT NULL COMMENT '工作图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=178 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yz_artwork_icon
-- ----------------------------
INSERT INTO `yz_artwork_icon` VALUES ('137', '35ed1a1866434cc8a0f0e56031f0dd36', '803024cd-93d9-44f6-9cd2-96b2946a3e81.png');
INSERT INTO `yz_artwork_icon` VALUES ('138', '2ba6b5294ef6404e9daaadd17a1ae355', 'd90b214b-01d7-47ad-a948-1589f68ca53f.png');
INSERT INTO `yz_artwork_icon` VALUES ('142', '0e1bf6d4fc2d4de298a3fb073d78f5be', '177e3a29-3aad-4db4-97a3-55bd3bb9d444.jpg');
INSERT INTO `yz_artwork_icon` VALUES ('143', '0e1bf6d4fc2d4de298a3fb073d78f5be', '9d62acd7-d578-4fd3-9dd6-952fcf35a1c0.jpg');
INSERT INTO `yz_artwork_icon` VALUES ('144', '0e1bf6d4fc2d4de298a3fb073d78f5be', '243d9859-53ba-405a-b51c-68bd200fce1d.jpg');
INSERT INTO `yz_artwork_icon` VALUES ('146', '37b6d3ab705b4b85b9ab25308ba177ad', 'e6f0479f-0d74-4214-9b90-be8c8b492087.jpg');
INSERT INTO `yz_artwork_icon` VALUES ('147', '37b6d3ab705b4b85b9ab25308ba177ad', 'a6d03846-205e-4755-b6cd-434735edb64e.jpg');
INSERT INTO `yz_artwork_icon` VALUES ('148', '37b6d3ab705b4b85b9ab25308ba177ad', '9dc7fc4f-de44-40bc-91a1-cc2d38a91c50.jpg');
INSERT INTO `yz_artwork_icon` VALUES ('149', '37b6d3ab705b4b85b9ab25308ba177ad', 'cdb5e42c-e41c-4da2-b24c-19f573ff6580.jpg');
INSERT INTO `yz_artwork_icon` VALUES ('150', '37b6d3ab705b4b85b9ab25308ba177ad', '9b21456f-40cc-4fb9-a844-1e096215855f.jpg');
INSERT INTO `yz_artwork_icon` VALUES ('151', 'a91d8767d36e4be4bde1963b9ea2ac2b', 'f2088d5c-b840-4e7a-b65f-cc4bbb8b9b3d.jpg');
INSERT INTO `yz_artwork_icon` VALUES ('152', 'a91d8767d36e4be4bde1963b9ea2ac2b', '781a1bb9-2c9b-457a-a041-f042a79a0b10.jpg');
INSERT INTO `yz_artwork_icon` VALUES ('153', 'a91d8767d36e4be4bde1963b9ea2ac2b', '691b059d-a445-48cb-a698-a3af96658521.jpg');
INSERT INTO `yz_artwork_icon` VALUES ('154', 'c5b7e282fec5410eb9eb63719f314988', 'b39185c4-3ffa-4a8a-b1de-cdbef07fd24c.jpg');
INSERT INTO `yz_artwork_icon` VALUES ('155', 'c5b7e282fec5410eb9eb63719f314988', 'b4ae1537-6f19-4007-baa2-04e4bf0266ae.jpg');
INSERT INTO `yz_artwork_icon` VALUES ('156', 'c5b7e282fec5410eb9eb63719f314988', 'd6220796-8703-4257-b7c9-1e3f446fdf1b.jpg');
INSERT INTO `yz_artwork_icon` VALUES ('157', 'c5b7e282fec5410eb9eb63719f314988', '1c857d17-c746-4631-a902-fdf759960daa.jpg');
INSERT INTO `yz_artwork_icon` VALUES ('161', 'b47c362823f64cffaec338a0f9eb1f1f', '1e26b322-31e6-437b-9202-8d6f2e9dccff.jpg');
INSERT INTO `yz_artwork_icon` VALUES ('163', 'd5cba53bfb6a4a27bfd2287ffe50d6c8', 'b9a1f62d-a890-4cc9-bb15-6b51413f5606.jpg');
INSERT INTO `yz_artwork_icon` VALUES ('164', 'd5cba53bfb6a4a27bfd2287ffe50d6c8', 'f6cbd750-289e-4ed6-ba55-f8381f602866.jpg');
INSERT INTO `yz_artwork_icon` VALUES ('165', 'd5cba53bfb6a4a27bfd2287ffe50d6c8', '3b663d11-21ce-44b3-b119-88c8600f3ac6.jpg');
INSERT INTO `yz_artwork_icon` VALUES ('166', 'd5cba53bfb6a4a27bfd2287ffe50d6c8', 'efc1e4f8-9eab-487e-b558-8c2cebb9943c.jpg');
INSERT INTO `yz_artwork_icon` VALUES ('167', 'd5cba53bfb6a4a27bfd2287ffe50d6c8', '8285e5f0-b4e4-4c7b-860b-c0f666fcea27.jpg');
INSERT INTO `yz_artwork_icon` VALUES ('168', 'f7d4b6e8454c4d5bbaaf9e1df9c6dbc4', '88607d11-3ad4-46e7-999d-2dbcf70eb9cf.jpg');
INSERT INTO `yz_artwork_icon` VALUES ('169', 'f7d4b6e8454c4d5bbaaf9e1df9c6dbc4', '847b44b6-af58-4392-b091-196e1644a624.jpg');
INSERT INTO `yz_artwork_icon` VALUES ('170', 'f7d4b6e8454c4d5bbaaf9e1df9c6dbc4', 'd745fedd-7511-4f10-bc6e-bf587596976a.jpg');
INSERT INTO `yz_artwork_icon` VALUES ('171', 'b47c362823f64cffaec338a0f9eb1f1f', 'cfb722d3-b793-4295-b418-5802a9f80829.jpg');
INSERT INTO `yz_artwork_icon` VALUES ('172', 'b47c362823f64cffaec338a0f9eb1f1f', 'c34cd4cb-07ee-47f1-89b3-cddc9f81af30.jpg');
INSERT INTO `yz_artwork_icon` VALUES ('173', 'b47c362823f64cffaec338a0f9eb1f1f', 'ffe22415-cb48-4786-a039-5e4c34100bbd.jpg');
INSERT INTO `yz_artwork_icon` VALUES ('174', 'f7d4b6e8454c4d5bbaaf9e1df9c6dbc4', 'f4c68307-cd23-49f6-82b1-928f92ecfc33.jpg');
INSERT INTO `yz_artwork_icon` VALUES ('175', 'f7d4b6e8454c4d5bbaaf9e1df9c6dbc4', 'c62277e6-ae94-4850-9da9-83c7619ce750.jpg');
INSERT INTO `yz_artwork_icon` VALUES ('176', '0e1bf6d4fc2d4de298a3fb073d78f5be', '976e1563-607f-4245-a309-fcb77944e361.jpg');
INSERT INTO `yz_artwork_icon` VALUES ('177', '0e1bf6d4fc2d4de298a3fb073d78f5be', 'a82875d8-54a0-47d8-9ac7-f4508af7d815.jpg');

-- ----------------------------
-- Table structure for yz_configvalue
-- ----------------------------
DROP TABLE IF EXISTS `yz_configvalue`;
CREATE TABLE `yz_configvalue` (
  `id` int(255) NOT NULL AUTO_INCREMENT COMMENT '系统配置表',
  `name` varchar(255) DEFAULT NULL COMMENT '系统设置名',
  `value` varchar(200) DEFAULT NULL COMMENT '系统设置值',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yz_configvalue
-- ----------------------------
INSERT INTO `yz_configvalue` VALUES ('1', '充值赠送比例', '0.1', '2017-11-30 16:56:22', '2017-11-30 16:56:22');
INSERT INTO `yz_configvalue` VALUES ('2', '可充值金额', '200000', '2017-12-04 14:55:53', '2017-12-04 14:55:55');
INSERT INTO `yz_configvalue` VALUES ('3', '公司地址', '东莞市长安镇德政西路十号金牛花苑一号商铺', '2017-12-08 17:22:24', '2017-12-08 17:22:27');
INSERT INTO `yz_configvalue` VALUES ('4', '公司名称', '莹姿烫染养生馆-造型-美颜-养生专家', '2017-12-08 17:22:53', '2017-12-08 17:22:55');
INSERT INTO `yz_configvalue` VALUES ('5', '公司电话', '13711852126', '2017-12-08 17:44:47', '2017-12-08 17:44:50');
INSERT INTO `yz_configvalue` VALUES ('6', '发廊简介', '莹姿烫染养生馆美发、烫染、美容养生的综合店。来了绝对不会后悔的，信我，这里我们的服务样样到位，不满意的不用钱！听到没有，不用钱啊！你值得拥有啊！', '2017-12-13 14:11:03', '2017-12-13 14:11:06');

-- ----------------------------
-- Table structure for yz_customermanage
-- ----------------------------
DROP TABLE IF EXISTS `yz_customermanage`;
CREATE TABLE `yz_customermanage` (
  `id` int(255) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `openid` varchar(255) DEFAULT NULL COMMENT '用户唯一标识',
  `name` varchar(255) DEFAULT NULL COMMENT '用户姓名（注册会员时填写）',
  `nick_name` varchar(255) DEFAULT NULL COMMENT '用户昵称(微信上的昵称)',
  `phone_number` varchar(255) DEFAULT NULL COMMENT '手机号（注册会员时填写）',
  `like_hairdresser` varchar(255) DEFAULT NULL COMMENT '喜欢的理发师',
  `token` varchar(255) DEFAULT NULL,
  `gender` int(255) DEFAULT NULL COMMENT '性别（男：1；女：2）',
  `money` double(255,3) DEFAULT NULL COMMENT '用户余额',
  `image_url` varchar(255) DEFAULT NULL COMMENT '用户头像地址',
  `ismember` int(255) DEFAULT NULL COMMENT '是否会员（是：1；否：0）',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=232 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yz_customermanage
-- ----------------------------
INSERT INTO `yz_customermanage` VALUES ('1', '34234235', '洪彩霞', '小红', '13562410254', '烫发好的', '435', '2', '300.000', '#', '1', '2017-11-29 12:27:07', '2017-12-05 14:52:29');
INSERT INTO `yz_customermanage` VALUES ('2', 'f546376586654', '陈奕迅', 'Eason', '13589652145', '泡面头专师', '5435356', '1', '25500.230', '#', '0', '2017-12-02 10:05:55', '2017-12-02 10:05:58');
INSERT INTO `yz_customermanage` VALUES ('7', 'ferhyrtdjndjuylk4515', '罗志祥', '小猪', '12354896542', '染发', '687461564864', '1', '499.000', '#', '0', '2017-12-08 00:00:00', '2017-12-08 00:00:00');
INSERT INTO `yz_customermanage` VALUES ('8', 'obI8U0epZu2qxShFl7aoFcp2Wbzw', null, null, null, null, '2c4d8552-48ce-46ef-9609-9dc03933b9ab', null, '1.320', null, '0', null, null);
INSERT INTO `yz_customermanage` VALUES ('9', 'obI8U0Ypxc8q4jZwv2ZEc4tnW1FA', null, null, null, null, 'a2547d92-7258-42f3-95d6-25a95f99ff90', null, '0.000', null, '1', '2017-12-22 16:35:32', null);
INSERT INTO `yz_customermanage` VALUES ('10', 'obI8U0fPLCeSQrAenPBNTnYOn_SQ', null, null, null, null, '551a3a21-311a-49d5-bf1e-ce17cae39e80', null, '91.992', null, '1', '2017-12-22 16:47:31', null);
INSERT INTO `yz_customermanage` VALUES ('12', 'obI8U0bXDplk2MpL8M2TEHTFF5oM', null, null, null, null, '5e6894f0-135b-461e-bf99-d108ef46164b', null, '0.000', null, '0', '2017-12-22 18:48:15', null);
INSERT INTO `yz_customermanage` VALUES ('13', 'obI8U0f3pSJ8syqzHE7wxVfkN_2o', null, null, null, null, '2af92812-5fbe-42d3-b4b4-f50c1f694b20', null, '0.000', null, '0', '2017-12-23 09:08:58', null);
INSERT INTO `yz_customermanage` VALUES ('14', 'obI8U0fJPibwd17N6goOzAsHLOBg', null, null, null, null, 'cb619b76-66b7-4faf-86ff-3fc0a826716d', null, '0.000', null, '0', '2017-12-23 18:06:27', null);
INSERT INTO `yz_customermanage` VALUES ('15', 'obI8U0SstlAQaJHDpV0OLk-bJDt8', null, null, null, null, '0e80c124-24f1-4622-a817-3e4638306bdf', null, '0.000', null, '0', '2017-12-23 18:57:25', null);
INSERT INTO `yz_customermanage` VALUES ('16', 'obI8U0RUUnJLfD1KDzYuLjIkgowo', null, null, null, null, '5d53fdf3-3392-4b5b-913b-1b7d0b0b75d2', null, '0.000', null, '0', '2017-12-23 19:09:03', null);
INSERT INTO `yz_customermanage` VALUES ('17', 'obI8U0S4R01ZA-sOBui7LbjtBXqw', null, null, null, null, 'e484166d-21f1-48d3-9fc4-6e0fa61d38b9', null, '0.000', null, '0', '2017-12-29 23:41:38', null);
INSERT INTO `yz_customermanage` VALUES ('18', 'obI8U0VCM8uwdoy7vPcTI_GWNRLM', null, null, null, null, 'f65b418d-1bbb-4b2f-a7f0-ef763ca804cb', null, '0.000', null, '0', '2018-01-02 20:36:28', null);
INSERT INTO `yz_customermanage` VALUES ('19', 'obI8U0XLfW6cZ1HIkgUyBkK2Mohs', null, null, null, null, '50b78b40-98e0-40eb-9af3-a21a96a5dd16', null, '1.200', null, '0', '2018-01-04 08:01:08', null);
INSERT INTO `yz_customermanage` VALUES ('20', 'obI8U0SRJjnh63MIlJZZV4qWt_WU', null, null, null, null, '4fe2cecb-e1b9-43e4-9a92-dcebfd0a0762', null, '0.000', null, '0', '2018-01-04 11:08:18', null);
INSERT INTO `yz_customermanage` VALUES ('21', 'obI8U0faUDqRyecAd6mCiWMSaPKc', null, null, null, null, '1d8a2be4-c80c-4888-a8e8-44a426539f77', null, '0.000', null, '0', '2018-01-07 18:24:59', null);
INSERT INTO `yz_customermanage` VALUES ('22', 'obI8U0YhhDD0oXUfRc1GGZ8uB6AI', null, null, null, null, 'be16c093-bb6e-46be-b939-2c7f86ae1056', null, '0.000', null, '0', '2018-01-07 18:46:31', null);
INSERT INTO `yz_customermanage` VALUES ('23', 'obI8U0ZSwlOO1d0DhCw0f_myw7E8', null, null, null, null, 'aa8c85ac-5de0-4854-82e1-17dfb5785c0e', null, '0.000', null, '0', '2018-01-07 18:47:23', null);
INSERT INTO `yz_customermanage` VALUES ('24', 'obI8U0TO7PUIwZmFdNYLoJMAJRBg', null, null, null, null, 'eed76b01-acd3-481b-bc2c-dc9fcdcd9335', null, '0.000', null, '0', '2018-01-07 19:29:00', null);
INSERT INTO `yz_customermanage` VALUES ('25', 'obI8U0UKiYQVS-fxNXCElI7mGnVo', null, null, null, null, 'ceb5ab32-a20c-4bf8-88b8-1a1a0c7ca921', null, '0.000', null, '0', '2018-01-07 20:14:09', null);
INSERT INTO `yz_customermanage` VALUES ('26', 'obI8U0WIVXMpDWhqzehkEOHp2f0E', null, null, null, null, '371befe8-8b99-48b1-9a40-7dac62ebb600', null, '0.000', null, '0', '2018-01-07 23:09:49', null);
INSERT INTO `yz_customermanage` VALUES ('27', 'obI8U0bgyDc7bzqhja4odCynb6QE', null, null, null, null, '5272324b-d6f5-4b17-bf34-e880d2eb7663', null, '0.000', null, '0', '2018-01-07 23:10:09', null);
INSERT INTO `yz_customermanage` VALUES ('28', 'obI8U0c-j_9P0O684g9rwcnS_zsA', null, null, null, null, 'cf45a254-35e5-437e-ae61-1169810ce98c', null, '0.000', null, '0', '2018-01-07 23:11:23', null);
INSERT INTO `yz_customermanage` VALUES ('29', 'obI8U0Z5JUWowZZQ_7TVH-vcA--s', null, null, null, null, 'b430be66-0908-4939-9eb5-f5f05c51090a', null, '0.000', null, '0', '2018-01-08 02:39:55', null);
INSERT INTO `yz_customermanage` VALUES ('30', 'obI8U0dIizt6WwxH2hFK0XahCug8', null, null, null, null, 'eeef14e8-b460-4eea-9cc0-634730d8b812', null, '0.000', null, '0', '2018-01-08 20:33:42', null);
INSERT INTO `yz_customermanage` VALUES ('31', 'obI8U0SEhD1DRtcEt6Y8GgzHi2sY', null, null, null, null, '3d53419a-3ad4-4eae-86c2-046f2004874b', null, '0.000', null, '0', '2018-01-08 21:18:29', null);
INSERT INTO `yz_customermanage` VALUES ('32', 'obI8U0YNsVRHsRzV2xaPfG3C1x_M', null, null, null, null, 'c61fe2d9-f913-48d1-a3bf-e64245e577a3', null, '0.000', null, '0', '2018-01-08 21:19:05', null);
INSERT INTO `yz_customermanage` VALUES ('33', 'obI8U0eNK7JdC0rVn14VB0XNgYQg', null, null, null, null, 'fd7c2987-d920-4549-baac-4f0843a17108', null, '0.000', null, '0', '2018-01-08 21:22:02', null);
INSERT INTO `yz_customermanage` VALUES ('34', 'obI8U0blU0MI4W_elisi5QUnxPbU', null, null, null, null, '70d13cc9-7a02-4639-9225-65089b5449b2', null, '0.000', null, '0', '2018-01-08 21:42:38', null);
INSERT INTO `yz_customermanage` VALUES ('35', 'obI8U0bL0BJz_2t_hcUshrHjGtNo', null, null, null, null, '5ec2511f-2adc-456b-848d-b8c28850114c', null, '0.000', null, '0', '2018-01-08 21:51:04', null);
INSERT INTO `yz_customermanage` VALUES ('36', 'obI8U0YlMo41QiApRVhTRmM-L6a0', null, null, null, null, 'abb54594-b238-4677-a304-71c1cca34354', null, '0.000', null, '0', '2018-01-08 22:24:39', null);
INSERT INTO `yz_customermanage` VALUES ('37', 'obI8U0Rn2xk13cfEHg_koHu6rwRA', null, null, null, null, '885f33c3-3cb1-441e-9322-5d6d21b0dd20', null, '0.000', null, '0', '2018-01-08 22:38:58', null);
INSERT INTO `yz_customermanage` VALUES ('38', 'obI8U0XgKdZ8WXRuiMf3n0HIJsFs', null, null, null, null, 'fb19d2bd-7e07-416e-8ff8-41b82e833365', null, '0.000', null, '0', '2018-01-08 23:50:10', null);
INSERT INTO `yz_customermanage` VALUES ('39', 'obI8U0WP5c59Da7vZOtZMY5TTUo8', null, null, null, null, '6a2c2696-f540-4434-955c-a417af315de5', null, '0.000', null, '0', '2018-01-09 03:05:25', null);
INSERT INTO `yz_customermanage` VALUES ('40', 'obI8U0fVhNLZZLBmrHzYlGkvX0NI', null, null, null, null, 'b6de767b-5b7e-48c7-b51c-2ce3067eee59', null, '0.000', null, '0', '2018-01-09 09:05:04', null);
INSERT INTO `yz_customermanage` VALUES ('41', 'obI8U0Ux6lh8A4Je-kyv17kRULzo', null, null, null, null, '0dff903f-fe31-407a-88f5-0f1d6f1ec8d3', null, '0.000', null, '0', '2018-01-09 10:56:50', null);
INSERT INTO `yz_customermanage` VALUES ('42', 'obI8U0TwafgzFMt8BvUIRUTks0t0', null, null, null, null, 'a23b708d-5b38-4913-96d0-899d5eebd477', null, '0.000', null, '0', '2018-01-09 13:30:59', null);
INSERT INTO `yz_customermanage` VALUES ('43', 'obI8U0Z-Kjbz2rf1FIeXYbbZz_YA', null, null, null, null, '1e099c59-d677-4e3d-8db2-dc3bfd27bfab', null, '0.000', null, '0', '2018-01-09 15:11:12', null);
INSERT INTO `yz_customermanage` VALUES ('44', 'obI8U0btTFm9VX7KkEPPt3UYJ4-8', null, null, null, null, '9241c3bd-cc3f-444a-8454-651c8e14bbe6', null, '0.000', null, '0', '2018-01-09 18:38:21', null);
INSERT INTO `yz_customermanage` VALUES ('45', 'obI8U0UWuXbHEj2V1sSStb8C74Io', null, null, null, null, '43289d29-f8ac-4fd1-91e3-2e216ad832fa', null, '0.000', null, '0', '2018-01-10 14:26:10', null);
INSERT INTO `yz_customermanage` VALUES ('46', 'obI8U0emy99AwabjvO8XxP1YThMA', null, null, null, null, 'e87d8efe-a1d3-4628-be12-206452078275', null, '0.000', null, '0', '2018-01-10 14:51:46', null);
INSERT INTO `yz_customermanage` VALUES ('47', 'obI8U0ZiV-k6N3OezpTTvBWM4Tw4', null, null, null, null, '9ee6b461-257b-449c-b4d7-68ae425ce23f', null, '0.000', null, '0', '2018-01-11 01:10:10', null);
INSERT INTO `yz_customermanage` VALUES ('48', 'obI8U0aPd8XWuNWB-IinjAPqsYpI', null, null, null, null, '23de47da-92d2-4bb8-9a70-7ae8c49c32e2', null, '0.000', null, '0', '2018-01-11 14:52:27', null);
INSERT INTO `yz_customermanage` VALUES ('49', 'obI8U0QlYfKmcHj9MObLjPFmv9r0', null, null, null, null, '964494d2-0ce7-4e46-bd30-c9b0be1b27f4', null, '0.000', null, '0', '2018-01-11 18:53:12', null);
INSERT INTO `yz_customermanage` VALUES ('50', 'obI8U0SCbhMBSvsxFZ4b7uqsqNNs', null, null, null, null, '056ff75b-689d-4254-9123-d648b31ba831', null, '0.000', null, '0', '2018-01-12 12:31:29', null);
INSERT INTO `yz_customermanage` VALUES ('51', 'obI8U0e_Dj2jgfBVvr1y1VA6emEY', null, null, null, null, '3a967d51-14cf-4f81-aa94-7e72cca48d82', null, '0.000', null, '0', '2018-01-12 19:02:20', null);
INSERT INTO `yz_customermanage` VALUES ('52', 'obI8U0QHC2KKBYySrWalBBJQm408', null, null, null, null, 'eafa2c38-7ceb-4446-88c7-a98fc8cb5d0d', null, '0.000', null, '0', '2018-01-13 19:14:09', null);
INSERT INTO `yz_customermanage` VALUES ('53', 'obI8U0dqxl8wBBDrOJfi9NdKIkXc', null, null, null, null, '4f4312d9-512d-439c-a3ff-249b535a1cab', null, '0.000', null, '0', '2018-01-14 07:32:10', null);
INSERT INTO `yz_customermanage` VALUES ('54', 'obI8U0cqabNTKO1ZKB79taz6x5Ek', null, null, null, null, '29bb59ff-f090-4d3b-a5b2-b426f2653ab9', null, '0.000', null, '0', '2018-01-14 14:10:01', null);
INSERT INTO `yz_customermanage` VALUES ('55', 'obI8U0doHMiM8g6XSZ6QR__vEIyc', null, null, null, null, '3b8a7b4c-ddab-4ab5-89ee-2de11813d57c', null, '0.000', null, '0', '2018-01-14 21:15:24', null);
INSERT INTO `yz_customermanage` VALUES ('56', 'obI8U0UMYSaogMt6eenZop0Q9VP0', null, null, null, null, '75ddcc4e-0528-4199-b64e-842e1d0a32bb', null, '0.000', null, '0', '2018-01-15 00:52:47', null);
INSERT INTO `yz_customermanage` VALUES ('57', 'obI8U0TeEhg1wL5nTj7NU6-bS1P8', null, null, null, null, '8580387f-a692-4cb8-b2f9-14c8b27c2081', null, '0.000', null, '0', '2018-01-15 17:09:14', null);
INSERT INTO `yz_customermanage` VALUES ('58', 'obI8U0flWO-dyKltQ4GIJPPiySQw', null, null, null, null, 'e1336ff4-e88b-4367-8416-0c291986ccdb', null, '0.000', null, '0', '2018-01-15 21:38:22', null);
INSERT INTO `yz_customermanage` VALUES ('59', 'obI8U0ewGaCfJKhqGqnUtOnoJmtU', null, null, null, null, '75bf61e9-f3bc-4344-8357-ea62a8641fbd', null, '0.000', null, '0', '2018-01-16 03:24:32', null);
INSERT INTO `yz_customermanage` VALUES ('60', 'obI8U0cK30SEek3NkJRDaSFd_ucU', null, null, null, null, '8be80c10-3390-4ffb-a053-afa34ce35f74', null, '0.000', null, '0', '2018-01-16 10:15:19', null);
INSERT INTO `yz_customermanage` VALUES ('61', 'obI8U0SFowT4NkcC_vQik17CGSqU', null, null, null, null, '0d72a295-4c4a-41d3-a8c2-ef222398d751', null, '0.000', null, '0', '2018-01-16 22:19:46', null);
INSERT INTO `yz_customermanage` VALUES ('62', 'obI8U0YHA19htUz3VIhTz25UVrRQ', null, null, null, null, '60b5ee1c-059d-4122-917d-21496a1555fe', null, '0.000', null, '0', '2018-01-17 01:01:24', null);
INSERT INTO `yz_customermanage` VALUES ('63', 'obI8U0Uzlpf2UzzfrLbY-nGjUAfw', null, null, null, null, 'c912c0e5-d804-4d4d-86a4-58e22eeeeb3b', null, '0.000', null, '0', '2018-01-17 21:05:34', null);
INSERT INTO `yz_customermanage` VALUES ('64', 'obI8U0XT1KpU_GrTOvVSnegJDg6U', null, null, null, null, 'bfa26016-9e4c-4a46-92bc-b2a496d6bd5a', null, '0.000', null, '0', '2018-01-18 00:28:18', null);
INSERT INTO `yz_customermanage` VALUES ('65', 'obI8U0X2mQgHHxzAdePcqbyIVvEY', null, null, null, null, 'f00a2fca-1113-41de-ae5d-d1fe618360f7', null, '0.000', null, '0', '2018-01-18 20:42:26', null);
INSERT INTO `yz_customermanage` VALUES ('66', 'obI8U0U2fAuIcTQ5FSUqYtPk7OVI', null, null, null, null, 'c5214634-60ac-4735-924c-d2880da05661', null, '0.000', null, '0', '2018-01-19 01:04:41', null);
INSERT INTO `yz_customermanage` VALUES ('67', 'obI8U0e2QY6aE-rflbUUwoCbLP8A', null, null, null, null, '2b01d8b8-dedd-406e-abf7-0642c13a2467', null, '0.000', null, '0', '2018-01-20 00:31:01', null);
INSERT INTO `yz_customermanage` VALUES ('68', 'obI8U0fm6q4z6cHlQ9Um7AWywsBE', null, null, null, null, '910744ba-bf3a-44bb-8a1c-4fc01c0d6e88', null, '0.000', null, '0', '2018-01-21 02:52:04', null);
INSERT INTO `yz_customermanage` VALUES ('69', 'obI8U0SQ3hATd11v_I9jADFt5lu0', null, null, null, null, '2b7ddf2e-56d1-4345-ad79-9db5be919ae0', null, '0.000', null, '0', '2018-01-21 18:42:44', null);
INSERT INTO `yz_customermanage` VALUES ('70', 'obI8U0c5-oa9baTkwuQouru1RhFw', null, null, null, null, 'c2df9d83-7873-4af5-80ea-c048634c503e', null, '0.000', null, '0', '2018-01-22 00:00:00', null);
INSERT INTO `yz_customermanage` VALUES ('71', 'obI8U0anYC4UywIBMHhMHjidrjh8', null, null, null, null, '26d09b5c-4682-41dc-b561-eb9acd164200', null, '0.000', null, '0', '2018-01-22 07:52:18', null);
INSERT INTO `yz_customermanage` VALUES ('72', 'obI8U0Xr9g0oON5fFap5_RfDnkCI', null, null, null, null, 'c8ad2ffb-5982-45bd-8250-76f1a6178860', null, '0.000', null, '0', '2018-01-22 09:13:20', null);
INSERT INTO `yz_customermanage` VALUES ('73', 'obI8U0Qir2B5ReYoH-fUCHq4QIBk', null, null, null, null, '6b58659c-a392-47bf-b8a6-3e80d562fd34', null, '0.000', null, '0', '2018-01-22 22:35:26', null);
INSERT INTO `yz_customermanage` VALUES ('74', 'obI8U0eCeWcvAfrb9dux8v57QGbQ', null, null, null, null, 'd11ffa75-f03f-4322-a194-959c9c6c4405', null, '0.000', null, '0', '2018-01-23 08:16:20', null);
INSERT INTO `yz_customermanage` VALUES ('75', 'obI8U0fhCMbzcoB6CP-hdaH6bFlk', null, null, null, null, '79429ab2-c2d8-4b3c-a599-2e58b05443b2', null, '0.000', null, '0', '2018-01-23 09:31:33', null);
INSERT INTO `yz_customermanage` VALUES ('76', 'obI8U0SQv71YK2gE8EDgaiRMNJHs', null, null, null, null, '53141576-7418-47fb-8173-3743a313d61c', null, '0.000', null, '0', '2018-01-23 10:31:04', null);
INSERT INTO `yz_customermanage` VALUES ('77', 'obI8U0XfNW2zaVC4JWin4U4Ci3yQ', null, null, null, null, '5f156913-f16e-4c9d-99af-9e0e53dd877d', null, '0.000', null, '0', '2018-01-23 11:21:55', null);
INSERT INTO `yz_customermanage` VALUES ('78', 'obI8U0U46WsVlkMqqf8Tnx8fUpDE', null, null, null, null, 'b9034fcb-559c-4af1-b35f-01be4382a79b', null, '0.000', null, '0', '2018-01-23 14:36:16', null);
INSERT INTO `yz_customermanage` VALUES ('79', 'obI8U0XzivIs9lplYZRd55XVgq-c', null, null, null, null, 'a8437b5d-ab51-46b2-b177-8ba511d37812', null, '0.000', null, '0', '2018-01-24 11:35:29', null);
INSERT INTO `yz_customermanage` VALUES ('80', 'obI8U0WQ2NrRcCLLjrf1eoP2H0ys', null, null, null, null, '3c3d3e68-77dd-46dd-959e-566d91aeed27', null, '0.000', null, '0', '2018-01-24 14:33:43', null);
INSERT INTO `yz_customermanage` VALUES ('81', 'obI8U0fD-rQLYY-BhcmbzWpAKFnI', null, null, null, null, 'b4383199-6528-476c-bcfe-1912eb44d30e', null, '0.000', null, '0', '2018-01-24 20:40:50', null);
INSERT INTO `yz_customermanage` VALUES ('82', 'obI8U0U3O8rbBF56FZ8aLV89ni-c', null, null, null, null, '7085d693-ae20-4f83-93fc-595423026fd5', null, '0.000', null, '0', '2018-01-25 14:30:31', null);
INSERT INTO `yz_customermanage` VALUES ('83', 'obI8U0W64f7uyUAmKT62Y9aNIrdg', null, null, null, null, 'ad1fbb09-b681-4737-90ef-a12967df2061', null, '0.000', null, '0', '2018-01-25 14:31:37', null);
INSERT INTO `yz_customermanage` VALUES ('84', 'obI8U0XyE_JSiKlbZgc9YS3_NbsI', null, null, null, null, 'b15290ac-ba24-44ec-aa73-42185d8d4b73', null, '0.000', null, '0', '2018-01-25 16:36:20', null);
INSERT INTO `yz_customermanage` VALUES ('85', 'obI8U0f5T7hXypRkvZYXpoNxqiCw', null, null, null, null, '24efcf70-5c17-4824-b702-0cb84a561070', null, '0.000', null, '0', '2018-01-26 15:42:53', null);
INSERT INTO `yz_customermanage` VALUES ('86', 'obI8U0aLScp0__GTm5uKfaWAcmfE', null, null, null, null, '647c9432-9019-4e08-acad-2baba26ecb7b', null, '0.000', null, '0', '2018-01-26 16:39:55', null);
INSERT INTO `yz_customermanage` VALUES ('87', 'obI8U0Um6XOP4cPORPqWwHXL1wIw', null, null, null, null, 'c802c5d6-0b99-429d-8b3a-4ff461ec7e52', null, '0.000', null, '0', '2018-01-27 20:53:55', null);
INSERT INTO `yz_customermanage` VALUES ('88', 'obI8U0ZdUq2cY2ACDFL1RYvoE2t4', null, null, null, null, '426d3a44-4481-410c-ad50-bbca04017e39', null, '0.000', null, '0', '2018-01-28 23:10:32', null);
INSERT INTO `yz_customermanage` VALUES ('89', 'obI8U0Tt2ALyKCu0lAqkG5PS7MLM', null, null, null, null, '417b1c08-55e6-4de2-8adb-f70fd7a8bf18', null, '0.000', null, '0', '2018-01-29 20:11:02', null);
INSERT INTO `yz_customermanage` VALUES ('90', 'obI8U0XFo1kVRoATnpudKYZ0KNAc', null, null, null, null, '33c78bad-3b8a-4bb1-86e0-61e6af946102', null, '0.000', null, '0', '2018-02-01 10:24:55', null);
INSERT INTO `yz_customermanage` VALUES ('91', 'obI8U0dQ6_uf5bCHMeRRaB9XDkks', null, null, null, null, '8ac410d1-a6ba-4a1b-b469-030f34e18079', null, '0.000', null, '0', '2018-02-01 10:45:00', null);
INSERT INTO `yz_customermanage` VALUES ('92', 'obI8U0bsF1ATeKT8vE9ECfO-YZXU', null, null, null, null, 'e109e9f6-982c-4726-8510-ce5682dcbf11', null, '0.000', null, '0', '2018-02-03 14:35:50', null);
INSERT INTO `yz_customermanage` VALUES ('93', 'obI8U0Y_Zu8VhvZqm4TjkN6wRSPQ', null, null, null, null, '34bf03e6-30cc-4a1b-a5c8-6ad1db9e0088', null, '0.000', null, '0', '2018-02-04 01:09:40', null);
INSERT INTO `yz_customermanage` VALUES ('94', 'obI8U0egxu1WT84LwWXPmy1HsWCM', null, null, null, null, '9176bfd1-fa5f-4569-9099-5dac30bf3810', null, '0.000', null, '0', '2018-02-05 15:47:08', null);
INSERT INTO `yz_customermanage` VALUES ('95', 'obI8U0eqQYa9ZmoaNvzksEdJO8AA', null, null, null, null, '3a80183c-5d22-42c3-abf7-90f923109702', null, '0.000', null, '0', '2018-02-05 18:45:00', null);
INSERT INTO `yz_customermanage` VALUES ('96', 'obI8U0Wyjq7-_kv_apHrOlbM3mPg', null, null, null, null, 'adc6dae7-16ee-4017-ba33-d119265f5f36', null, '0.000', null, '0', '2018-02-05 21:22:26', null);
INSERT INTO `yz_customermanage` VALUES ('97', 'obI8U0d43WhcQC_xAVHyoG8C2WTg', null, null, null, null, '4b7856c7-644e-4c85-9a89-718c099694eb', null, '0.000', null, '0', '2018-02-06 00:03:00', null);
INSERT INTO `yz_customermanage` VALUES ('98', 'obI8U0Tyw13_Ivo1GwF8K1TTOUxs', null, null, null, null, '2fc213cf-f79d-4eb8-a916-d26981212895', null, '0.000', null, '0', '2018-02-06 01:05:14', null);
INSERT INTO `yz_customermanage` VALUES ('99', 'obI8U0VntcGL3SmJi-l3MJ-Hf8F4', null, null, null, null, '06894b3e-84a3-4b4a-b339-79bfa5aadeed', null, '0.000', null, '0', '2018-02-06 14:59:46', null);
INSERT INTO `yz_customermanage` VALUES ('100', 'obI8U0ZUTKMEzHRVi-MqL_uI6N_c', null, null, null, null, '6ebee016-fd7d-411d-8f93-f2952add8f6b', null, '0.000', null, '0', '2018-02-06 23:03:40', null);
INSERT INTO `yz_customermanage` VALUES ('101', 'obI8U0Td75Kido6XXzNeMAbbIP5Y', null, null, null, null, 'df8a4dce-c424-4b28-bd01-72db87a928df', null, '0.000', null, '0', '2018-02-07 10:16:05', null);
INSERT INTO `yz_customermanage` VALUES ('102', 'obI8U0emtf3DSpnY6ljOBjfPV3XU', null, null, null, null, 'a4582c75-7d59-4f29-82d8-42d963b9799b', null, '0.000', null, '0', '2018-02-08 17:01:06', null);
INSERT INTO `yz_customermanage` VALUES ('103', 'obI8U0b4METHuoa95mmF8nOHgRuw', null, null, null, null, 'd166502b-2b75-4fbe-a724-99d3129417cb', null, '0.000', null, '0', '2018-02-09 08:47:51', null);
INSERT INTO `yz_customermanage` VALUES ('104', 'obI8U0dLEa_RK0f-9NRrQm28Slds', null, null, null, null, '47e62fa2-167e-45b6-8522-9bd0d210fd04', null, '0.000', null, '0', '2018-02-10 16:35:31', null);
INSERT INTO `yz_customermanage` VALUES ('105', 'obI8U0ZTRs8HdBi0GH-U3lXuJsTg', null, null, null, null, '2bf1f9fe-7576-4272-abbc-c103e01e6815', null, '0.000', null, '0', '2018-02-11 14:43:20', null);
INSERT INTO `yz_customermanage` VALUES ('106', 'obI8U0VVGnLspPqjUOmvbECgZ0EM', null, null, null, null, 'f5f7ec66-ce89-41fb-b622-87bde254cbf5', null, '0.000', null, '0', '2018-02-11 18:55:30', null);
INSERT INTO `yz_customermanage` VALUES ('107', 'obI8U0VwDVMDzcPYrEyWZ2s3uRPI', null, null, null, null, 'e31579b0-6134-495d-94ca-8fa9b0d62daf', null, '0.000', null, '0', '2018-02-13 23:56:02', null);
INSERT INTO `yz_customermanage` VALUES ('108', 'obI8U0aYdIHXrc20sAmi1HiQB9Gs', null, null, null, null, '3ad5e446-1c0c-4872-8ed3-266bfdf13d77', null, '0.000', null, '0', '2018-02-14 20:20:13', null);
INSERT INTO `yz_customermanage` VALUES ('109', 'obI8U0fX-N0EtRf9-MLboODYB9cA', null, null, null, null, 'c4c71acd-10bd-49db-bf69-54e9d76ba2f9', null, '0.000', null, '0', '2018-02-16 10:34:50', null);
INSERT INTO `yz_customermanage` VALUES ('110', 'obI8U0XavkAYEh7iEbKc2LP6PBpE', null, null, null, null, '6082533e-a61d-4425-a524-6ee51e5c5a41', null, '0.000', null, '0', '2018-02-18 21:10:59', null);
INSERT INTO `yz_customermanage` VALUES ('111', 'obI8U0d9NW_QXczyy6wY40j03ilc', null, null, null, null, '8d73a89e-eb4b-4aae-8e7b-658490982c02', null, '0.000', null, '0', '2018-02-21 18:58:25', null);
INSERT INTO `yz_customermanage` VALUES ('112', 'obI8U0SGRKrySOooyXkqk5MpNNJ8', null, null, null, null, '5bbfe493-814d-4e06-bff9-a2b754f127b2', null, '0.000', null, '0', '2018-02-22 06:03:54', null);
INSERT INTO `yz_customermanage` VALUES ('113', 'obI8U0TN3SNtKELKb2zSNycejZEM', null, null, null, null, 'ba455a05-b2de-4f8b-97a9-c7aab07b0ff5', null, '0.000', null, '0', '2018-02-22 15:24:13', null);
INSERT INTO `yz_customermanage` VALUES ('114', 'obI8U0aXol6V5W_axewB_eHBjztQ', null, null, null, null, '87353b22-7d73-4591-9e15-9bd129f9f8a4', null, '0.000', null, '0', '2018-02-23 15:20:15', null);
INSERT INTO `yz_customermanage` VALUES ('115', 'obI8U0fPq0HeQphz7PlohDLKqqmA', null, null, null, null, 'ca3d9b34-d8dd-4230-87cf-e0bce85d7877', null, '0.000', null, '0', '2018-02-23 18:10:06', null);
INSERT INTO `yz_customermanage` VALUES ('116', 'obI8U0fVCuIAmDlC8TnmEMH23XaE', null, null, null, null, '7c2b618f-9c9f-4893-afd6-72cf20d94402', null, '0.000', null, '0', '2018-02-23 22:19:40', null);
INSERT INTO `yz_customermanage` VALUES ('117', 'obI8U0dPcvGZC5oGaYJO69rRKaIM', null, null, null, null, '8966250e-e318-4342-aef9-68800cf94046', null, '0.000', null, '0', '2018-02-24 18:47:17', null);
INSERT INTO `yz_customermanage` VALUES ('118', 'obI8U0cYhZ65fMHPmkb8H4C7kOpQ', null, null, null, null, 'dcc5d317-56b8-49e7-9bf0-4da7757f86bb', null, '0.000', null, '0', '2018-02-24 22:15:58', null);
INSERT INTO `yz_customermanage` VALUES ('119', 'obI8U0V1PqVNTrLjR6GAfq9y6Ysk', null, null, null, null, '59b7e27b-3e34-4f41-a1ba-a083fabc2330', null, '0.000', null, '0', '2018-02-25 02:01:16', null);
INSERT INTO `yz_customermanage` VALUES ('120', 'obI8U0ZfFXF-6hRksEGiSTgpgrFw', null, null, null, null, '3fad5488-82eb-4cbb-9c2c-52a80b7adccf', null, '0.000', null, '0', '2018-02-26 00:04:30', null);
INSERT INTO `yz_customermanage` VALUES ('121', 'obI8U0drN3l2sRe5KXGaKJ3Nru90', null, null, null, null, 'f61f79c5-4dfe-4295-8e18-444ae3669d52', null, '0.000', null, '0', '2018-02-26 21:56:17', null);
INSERT INTO `yz_customermanage` VALUES ('122', 'obI8U0f2Zfwk4Q74f3F5X0gx09i4', null, null, null, null, 'b6921119-16bf-40d2-8c42-f301eacd3044', null, '0.000', null, '0', '2018-02-27 02:22:58', null);
INSERT INTO `yz_customermanage` VALUES ('123', 'obI8U0bCRMIaXcFFmVjrYPrXl_Vs', null, null, null, null, '257fcfc4-c95e-4f4f-93d4-069e1b6de108', null, '0.000', null, '0', '2018-02-27 11:32:04', null);
INSERT INTO `yz_customermanage` VALUES ('124', 'obI8U0X81cMYFjdYivoAHxNWg01A', null, null, null, null, '3a93bb68-c86b-4566-a112-33dfed8899fe', null, '0.000', null, '0', '2018-02-27 19:11:33', null);
INSERT INTO `yz_customermanage` VALUES ('125', 'obI8U0cM6LS2mfcFl_iE56ofvB1Y', null, null, null, null, 'c0cc205d-04d5-4bf2-815e-42520f43b8bc', null, '0.000', null, '0', '2018-02-28 21:37:52', null);
INSERT INTO `yz_customermanage` VALUES ('126', 'obI8U0d6ok_Cq_xiyS4CR7RY_PF4', null, null, null, null, '35f0588f-2fa0-481c-af12-8134ecbb6daf', null, '0.000', null, '0', '2018-03-04 11:07:29', null);
INSERT INTO `yz_customermanage` VALUES ('127', 'obI8U0TBv84bOAyy-u4gkwevFOdU', null, null, null, null, 'f7d197ae-8d8a-4678-8296-c3da6ebbd9c6', null, '0.000', null, '0', '2018-03-05 00:44:27', null);
INSERT INTO `yz_customermanage` VALUES ('128', 'obI8U0T4vVsJrbssTW_B4lFwu0yE', null, null, null, null, 'cd9ddcfb-e333-4fca-91a3-65b4e161cca7', null, '0.000', null, '0', '2018-03-05 16:01:16', null);
INSERT INTO `yz_customermanage` VALUES ('129', 'obI8U0TtbbawmUUeXzwY5LuYz0iE', null, null, null, null, '2bcb92f5-2b21-4d58-9f49-e1d8cb2ec700', null, '0.000', null, '0', '2018-03-06 01:30:56', null);
INSERT INTO `yz_customermanage` VALUES ('130', 'obI8U0cagmMXy9UA0mXVR8j3Gg_A', null, null, null, null, '8d5a29c1-893a-4e32-8ef1-df7ace664cc4', null, '0.000', null, '0', '2018-03-06 07:01:17', null);
INSERT INTO `yz_customermanage` VALUES ('131', 'obI8U0Wu4h2Z3_YwfyUlAPO8qJb8', null, null, null, null, '6429f4f0-023c-4644-a0c0-0cfaf95cc906', null, '0.000', null, '0', '2018-03-06 10:00:13', null);
INSERT INTO `yz_customermanage` VALUES ('132', 'obI8U0dDPGEZR0RUEhEjrpF0TpFE', null, null, null, null, '9558ed21-54a5-4941-b4e2-9950c8805fcb', null, '0.000', null, '0', '2018-03-08 06:07:56', null);
INSERT INTO `yz_customermanage` VALUES ('133', 'obI8U0Xqcmgw969-yreKXWb2nXLk', null, null, null, null, '4a30401c-224e-44aa-815e-adec4177af10', null, '0.000', null, '0', '2018-03-08 19:39:50', null);
INSERT INTO `yz_customermanage` VALUES ('134', 'obI8U0UZI0AdCV3uFq8Jri4oq1GA', null, null, null, null, 'e2dbe2f1-d287-4f8f-84b1-46976877c9b7', null, '0.000', null, '0', '2018-03-09 11:26:09', null);
INSERT INTO `yz_customermanage` VALUES ('135', 'obI8U0ZG7Wopvuej9OrYWRTfPabU', null, null, null, null, '1010260a-94a9-457c-ae02-e978f5bc7d84', null, '0.000', null, '0', '2018-03-10 05:46:51', null);
INSERT INTO `yz_customermanage` VALUES ('136', 'obI8U0WRc6t8p1XRyWC-ftbeIshI', null, null, null, null, '7ccbfabc-51c6-4812-860b-a7458f8944dd', null, '0.000', null, '0', '2018-03-10 08:47:53', null);
INSERT INTO `yz_customermanage` VALUES ('137', 'obI8U0TsKkDiZl3BO2ajK1q9C_zQ', null, null, null, null, '53b0be68-0238-4a2e-a53a-b2e28ee7ddef', null, '0.000', null, '0', '2018-03-10 16:11:56', null);
INSERT INTO `yz_customermanage` VALUES ('138', 'obI8U0dWkI_tdbol4MCnibH6bGd4', null, null, null, null, 'cdeeaf0a-e9a1-4927-8792-ad7645414533', null, '0.000', null, '0', '2018-03-10 19:04:34', null);
INSERT INTO `yz_customermanage` VALUES ('139', 'obI8U0bU4m_E_44E1QKf6vR4e-Uw', null, null, null, null, 'abf66c81-35e0-4f3a-b637-57d4fdecaab3', null, '0.000', null, '0', '2018-03-11 16:24:35', null);
INSERT INTO `yz_customermanage` VALUES ('140', 'obI8U0Rm9fx2EpkljBKWKxdfWR_U', null, null, null, null, '3d5c1fcd-7919-4da9-a883-0f139ea87774', null, '0.000', null, '0', '2018-03-12 02:44:50', null);
INSERT INTO `yz_customermanage` VALUES ('141', 'obI8U0fxDXMtlAwQF35k_6wNowDQ', null, null, null, null, '3b36fb34-c310-434f-a7a6-29e7c092bb78', null, '0.000', null, '0', '2018-03-12 14:29:21', null);
INSERT INTO `yz_customermanage` VALUES ('142', 'obI8U0W2pir9ZNC0CqztdL8ExAMU', null, null, null, null, 'd87caa8f-08c5-49f7-ba03-0e1ccddd98f5', null, '0.000', null, '0', '2018-03-12 19:12:45', null);
INSERT INTO `yz_customermanage` VALUES ('143', 'obI8U0TsQWdZEbIdZVhzrtCakiH4', null, null, null, null, '5d7e354c-3847-4ce7-978c-8f59c361b9c2', null, '0.000', null, '0', '2018-03-13 15:44:21', null);
INSERT INTO `yz_customermanage` VALUES ('144', 'obI8U0RSEVUWtlJ6Mi7TAc0uEzFo', null, null, null, null, '0163c3bd-bc20-47b3-b46e-46160a580ca9', null, '0.000', null, '0', '2018-03-14 13:17:28', null);
INSERT INTO `yz_customermanage` VALUES ('145', 'obI8U0S1kjhrTACF80Yn2WJz-pqk', null, null, null, null, 'dd3094c8-d65f-451b-9091-0b4d7ff55ae0', null, '0.000', null, '0', '2018-03-14 14:43:15', null);
INSERT INTO `yz_customermanage` VALUES ('146', 'obI8U0RIE44iARan7Qmsp-zjQN_M', null, null, null, null, '34e7b01e-efde-42c4-86ca-0a63952e11ba', null, '0.000', null, '0', '2018-03-16 15:35:39', null);
INSERT INTO `yz_customermanage` VALUES ('147', 'obI8U0QTqG6yX9Dc5KROPXS5U8Ec', null, null, null, null, '1ab1ae60-51d9-4f7e-b47b-b2c280f73238', null, '0.000', null, '0', '2018-03-16 21:48:05', null);
INSERT INTO `yz_customermanage` VALUES ('148', 'obI8U0TKumgUCnodBuY4qXRCvSvA', null, null, null, null, 'e1127a6a-8679-4ec7-a9ec-dd4b99b8a3a7', null, '0.000', null, '0', '2018-03-18 12:19:12', null);
INSERT INTO `yz_customermanage` VALUES ('149', 'obI8U0Rjhb_uCDukXtnyiLe8FxWA', null, null, null, null, 'cc295673-4298-4695-becf-2be839c6df83', null, '0.000', null, '0', '2018-03-19 19:18:34', null);
INSERT INTO `yz_customermanage` VALUES ('150', 'obI8U0QmVX7gltBsfSXd1MBYWYOk', null, null, null, null, 'da37d8ee-9a88-43c1-a936-8758ff8c3c7a', null, '0.000', null, '0', '2018-03-20 14:33:34', null);
INSERT INTO `yz_customermanage` VALUES ('151', 'obI8U0SUmhFWQEz3hjCU9NZ8-Y04', null, null, null, null, '942129fe-bf91-494a-93bd-a2d3d46d92a7', null, '0.000', null, '0', '2018-03-20 20:55:11', null);
INSERT INTO `yz_customermanage` VALUES ('152', 'obI8U0arXiTI5Ja0XLzktuHzqV1U', null, null, null, null, '830072fa-aec2-4990-a7dc-872ea8229dba', null, '0.000', null, '0', '2018-03-22 19:48:12', null);
INSERT INTO `yz_customermanage` VALUES ('153', 'obI8U0XPk_3_cAilEvSnwPd9_RzI', null, null, null, null, '56d2f15f-e179-40dd-a092-f114f6c92191', null, '0.000', null, '0', '2018-03-25 18:13:52', null);
INSERT INTO `yz_customermanage` VALUES ('154', 'obI8U0QAMGiW9GfcKFzJ88GR_jik', null, null, null, null, '5dbb14f9-f81d-47c0-a24a-60eb67987ac7', null, '0.000', null, '0', '2018-03-27 23:53:14', null);
INSERT INTO `yz_customermanage` VALUES ('155', 'obI8U0RyGsQheL-hUS8rWTYTDzKE', null, null, null, null, '93d6ec88-d16a-464e-9fae-12b9d1dd1e4d', null, '0.000', null, '0', '2018-03-29 02:51:51', null);
INSERT INTO `yz_customermanage` VALUES ('156', 'obI8U0QZ2Wqq2-vy0Gog5OC3JrrE', null, null, null, null, 'acef953b-7950-4a9a-a11f-702dbfd2861c', null, '0.000', null, '0', '2018-04-01 21:33:57', null);
INSERT INTO `yz_customermanage` VALUES ('157', 'obI8U0ZqPAGoxF4N6KeHp604V8So', null, null, null, null, 'e50e21f7-0edf-42d4-b922-c25b99b0c08f', null, '0.000', null, '0', '2018-04-01 22:40:30', null);
INSERT INTO `yz_customermanage` VALUES ('158', 'obI8U0YWixOrBHzdtTqaSmDXkVTQ', null, null, null, null, '55220af2-9ead-4037-b837-7b44ceb2d623', null, '0.000', null, '0', '2018-04-02 12:26:13', null);
INSERT INTO `yz_customermanage` VALUES ('159', 'obI8U0RDxHnfHAWYk9vgePYp5Z5s', null, null, null, null, '2128e706-feb4-48ff-a567-407ba770c3f6', null, '0.000', null, '0', '2018-04-03 08:59:53', null);
INSERT INTO `yz_customermanage` VALUES ('160', 'obI8U0Q-dnRtDRl54EyaZVcPo-xA', null, null, null, null, '5ce0967f-db87-4268-b4e7-46b6b7160a86', null, '0.000', null, '0', '2018-04-04 22:46:37', null);
INSERT INTO `yz_customermanage` VALUES ('161', 'obI8U0Rc8qZXbhJ07oHacKqApe9s', null, null, null, null, '20e2bfa5-d370-4666-97bd-110bcf5f4f8e', null, '0.000', null, '0', '2018-04-05 05:27:04', null);
INSERT INTO `yz_customermanage` VALUES ('162', 'obI8U0WlqBTlrB4NivjrvImC_Wj8', null, null, null, null, '23184e49-6d52-4c51-a6b6-abee0bfa3b18', null, '0.000', null, '0', '2018-04-06 15:08:14', null);
INSERT INTO `yz_customermanage` VALUES ('163', 'obI8U0cGi7kX0AzhdBUp4NizM0To', null, null, null, null, 'e94e363e-3bb4-4993-a5b8-d7e281a4bf20', null, '0.000', null, '0', '2018-04-07 21:44:41', null);
INSERT INTO `yz_customermanage` VALUES ('164', 'obI8U0ccwVS-_-IuAyY9dI0B6Ok4', null, null, null, null, '1a90bc54-28f7-4240-8b9c-c01ce1908ef1', null, '0.000', null, '0', '2018-04-08 00:28:36', null);
INSERT INTO `yz_customermanage` VALUES ('165', 'obI8U0dN_TfjpCydOPGNdOSnyS9I', null, null, null, null, 'bed224b5-236e-4e1e-9aa2-d18e1149ab99', null, '0.000', null, '0', '2018-04-08 20:07:08', null);
INSERT INTO `yz_customermanage` VALUES ('166', 'obI8U0VELnZIn1qRgYwYqFV89XVs', null, null, null, null, '9e991eee-aadf-4bb8-b27f-872808b4db1b', null, '0.000', null, '0', '2018-04-09 03:37:15', null);
INSERT INTO `yz_customermanage` VALUES ('167', 'obI8U0aya5DKgWrJDPYp2kW67uBA', null, null, null, null, 'ac57a7b1-8758-467d-9f08-6cb5eb987779', null, '0.000', null, '0', '2018-04-09 23:37:04', null);
INSERT INTO `yz_customermanage` VALUES ('168', 'obI8U0RX5tnygBabSud_hYTpuGZE', null, null, null, null, '281604dc-d08e-4ab4-8b08-28068a04cb15', null, '0.000', null, '0', '2018-04-11 13:17:34', null);
INSERT INTO `yz_customermanage` VALUES ('169', 'obI8U0QI2h8pJlRamBd8GfdG8Hzw', null, null, null, null, '2acd8575-313f-42fa-a0ec-44a41e6418be', null, '0.000', null, '0', '2018-04-12 15:23:29', null);
INSERT INTO `yz_customermanage` VALUES ('170', 'obI8U0WAW24PzMUL6gfOvB6bffM8', null, null, null, null, '207e87ca-61f5-4384-a486-d13929b3e58a', null, '0.000', null, '0', '2018-04-13 09:21:53', null);
INSERT INTO `yz_customermanage` VALUES ('171', 'obI8U0bpb6LDvvXyJanq3e4TQmHU', null, null, null, null, '90dcce66-9f28-4b3d-97a1-63c71f1ba69b', null, '0.000', null, '0', '2018-04-16 06:43:35', null);
INSERT INTO `yz_customermanage` VALUES ('172', 'obI8U0Wm989zlC-UXFlNfb_YM7tc', null, null, null, null, '04ec5e50-91fe-4c97-909b-ead22cc24f09', null, '0.000', null, '0', '2018-04-17 18:14:46', null);
INSERT INTO `yz_customermanage` VALUES ('173', 'obI8U0XYR_GZ_lEs2MQ5T6NHf4KI', null, null, null, null, 'b9e2a96c-375b-4c71-96c1-71674aa3d771', null, '0.000', null, '0', '2018-04-17 21:50:14', null);
INSERT INTO `yz_customermanage` VALUES ('174', 'obI8U0U2bGvt0I_Lvsdrz0Oi82P0', null, null, null, null, 'a19c8dd6-eb3c-4702-8eca-5087a982c904', null, '0.000', null, '0', '2018-04-20 09:31:57', null);
INSERT INTO `yz_customermanage` VALUES ('175', 'obI8U0TsTuvNaYQtNmVuWO_n4j9I', null, null, null, null, '1da1b4bc-ec7f-49ad-b062-7038adf7f11e', null, '0.000', null, '0', '2018-04-20 21:11:35', null);
INSERT INTO `yz_customermanage` VALUES ('176', 'obI8U0ey61okgvX-ztR6w4I1GmqY', null, null, null, null, '1b590f9c-ff20-4f3c-b9e4-406e57f1ac26', null, '0.000', null, '0', '2018-04-21 13:32:28', null);
INSERT INTO `yz_customermanage` VALUES ('177', 'obI8U0Ra2sG51qxawz3nTJ6qhX3k', null, null, null, null, 'ebb84df6-7d5a-407c-968a-a8f26dadbe76', null, '0.000', null, '0', '2018-04-22 22:38:17', null);
INSERT INTO `yz_customermanage` VALUES ('178', 'obI8U0fwz6BYtzwEUtENwk22NTGo', null, null, null, null, '7e89bfc1-0afd-4cb9-9d02-8fe7add75ec0', null, '0.000', null, '0', '2018-04-23 09:23:15', null);
INSERT INTO `yz_customermanage` VALUES ('179', 'obI8U0SuxaLIR7lcTJLFUZu-8IbA', null, null, null, null, 'd70d5bc3-3388-47af-a260-2cae3ae9db8c', null, '0.000', null, '0', '2018-04-24 18:11:47', null);
INSERT INTO `yz_customermanage` VALUES ('180', 'obI8U0Vr99cwEZ1UU0KVmwdBXA9w', null, null, null, null, '9a1cc48b-ca7e-41cf-933d-9927daf22cb9', null, '0.000', null, '0', '2018-04-24 22:23:48', null);
INSERT INTO `yz_customermanage` VALUES ('181', 'obI8U0QRm4ShE7hvi-YP2AW_mdxI', null, null, null, null, 'b8aee620-8e94-4879-81fe-b4cc5639b618', null, '0.000', null, '0', '2018-04-25 23:19:42', null);
INSERT INTO `yz_customermanage` VALUES ('182', 'obI8U0QBUklrOD-Hub-4TLB-jVzQ', null, null, null, null, 'a88fb2f5-71ca-41fa-87db-722d0e13621a', null, '0.000', null, '0', '2018-04-26 16:42:56', null);
INSERT INTO `yz_customermanage` VALUES ('183', 'obI8U0XswRY7sfGXsxUD3lrLxhyY', null, null, null, null, '60feac88-3a0a-4fbd-8ac8-6957c97c3e87', null, '0.000', null, '0', '2018-04-26 19:03:59', null);
INSERT INTO `yz_customermanage` VALUES ('184', 'obI8U0W6pau1UzusSrzHUJl6tGOg', null, null, null, null, 'f7770e39-8b25-4483-8175-98e1f84f8c2a', null, '0.000', null, '0', '2018-04-29 06:45:45', null);
INSERT INTO `yz_customermanage` VALUES ('185', 'obI8U0cyMws6ZgKhBj5Glm11H7xg', null, null, null, null, '7acb4e75-7882-46a1-8171-e1b569b44b97', null, '0.000', null, '0', '2018-04-30 13:44:00', null);
INSERT INTO `yz_customermanage` VALUES ('186', 'obI8U0dFs1AKnhWBpHp2qi8OTXyI', null, null, null, null, '35da282f-4af1-457a-a7f3-9e0aa716f8dd', null, '0.000', null, '0', '2018-05-01 14:32:40', null);
INSERT INTO `yz_customermanage` VALUES ('187', 'obI8U0bK0My5hakwGJmudkmOclX8', null, null, null, null, '31f03591-ef5a-4d0f-8f20-3bed5ff7da54', null, '0.000', null, '0', '2018-05-02 04:40:47', null);
INSERT INTO `yz_customermanage` VALUES ('188', 'obI8U0f631dNT1bucLKX8SUzi-8o', null, null, null, null, '66d610d3-ed14-41bb-855b-25ce163e0c15', null, '0.000', null, '0', '2018-05-02 07:08:37', null);
INSERT INTO `yz_customermanage` VALUES ('189', 'obI8U0Zrt-4rthQVLUZhJaspQ-pI', null, null, null, null, '5a4a4f65-a2c4-4e4c-9145-bba1f30162d8', null, '0.000', null, '0', '2018-05-04 09:06:07', null);
INSERT INTO `yz_customermanage` VALUES ('190', 'obI8U0Wkamhyybjcu2EAxUQ8VuQc', null, null, null, null, '537f3788-fccd-4667-af55-c5249c5f52ce', null, '0.000', null, '0', '2018-05-04 18:08:25', null);
INSERT INTO `yz_customermanage` VALUES ('191', 'obI8U0dLWXt0roR9Ra7aypD7jhlg', null, null, null, null, 'd63daf39-daa4-40bd-bcf3-12e16013dee8', null, '0.000', null, '0', '2018-05-04 22:31:24', null);
INSERT INTO `yz_customermanage` VALUES ('192', 'obI8U0ftXtJxiIpte7-YouVTnXv0', null, null, null, null, 'ccfce292-68e2-4da1-8645-3fb84eeaeca6', null, '0.000', null, '0', '2018-05-04 23:16:02', null);
INSERT INTO `yz_customermanage` VALUES ('193', 'obI8U0UGrJUiyymcrEkBeGXigkSA', null, null, null, null, 'e4ccaedd-ee97-4109-a822-64672aad0502', null, '0.000', null, '0', '2018-05-05 12:21:22', null);
INSERT INTO `yz_customermanage` VALUES ('194', 'obI8U0RQfaSA-lSJTU0qYEG4YOl0', null, null, null, null, '92fbc0f3-72b7-4ba5-bb94-0de20c692058', null, '0.000', null, '0', '2018-05-05 22:21:45', null);
INSERT INTO `yz_customermanage` VALUES ('195', 'obI8U0R4mqalhA-TybFup9EyWyb8', null, null, null, null, '70b14ed5-cc9c-4007-b2ef-87901571d935', null, '0.000', null, '0', '2018-05-06 15:09:51', null);
INSERT INTO `yz_customermanage` VALUES ('196', 'obI8U0YJAkshCYfWv7UEpo6Hf2nY', null, null, null, null, '44c0582b-45b4-4cf8-81a3-56030ce74f9f', null, '0.000', null, '0', '2018-05-07 10:41:01', null);
INSERT INTO `yz_customermanage` VALUES ('197', 'obI8U0Ql1m28WKs_IL90QG7VlQP0', null, null, null, null, '092ca26a-08fe-4f03-bb7b-1db81b1b73bd', null, '0.000', null, '0', '2018-05-08 15:36:10', null);
INSERT INTO `yz_customermanage` VALUES ('198', 'obI8U0QW_u6eBDXLhtN14hLGRQ1o', null, null, null, null, '72043494-eb2c-4098-bb1e-daae9e1a3dd8', null, '0.000', null, '0', '2018-05-10 13:00:15', null);
INSERT INTO `yz_customermanage` VALUES ('199', 'obI8U0YDRHcQ-mgAPjmnc3uOS71U', null, null, null, null, '3f6b8413-5bb1-4e22-9a09-d7852306ace6', null, '0.000', null, '0', '2018-05-10 14:36:27', null);
INSERT INTO `yz_customermanage` VALUES ('200', 'obI8U0XUirquM7z5sJLSQr5PDHhU', null, null, null, null, 'ea522cc9-c36b-463f-a64b-0df764bdc232', null, '0.000', null, '0', '2018-05-10 23:18:37', null);
INSERT INTO `yz_customermanage` VALUES ('201', 'obI8U0Q2ZXBl08-HNPGmrVk9rK5A', null, null, null, null, '321ce45e-3266-4edc-b8df-e6ac1b51ce56', null, '0.000', null, '0', '2018-05-11 21:08:32', null);
INSERT INTO `yz_customermanage` VALUES ('202', 'obI8U0Z1ki539EbxaglGJ21PaEM4', null, null, null, null, 'a2deabeb-696d-445b-8327-0c7e6bb3ae5f', null, '0.000', null, '0', '2018-05-12 11:38:18', null);
INSERT INTO `yz_customermanage` VALUES ('203', 'obI8U0beCU2tgA62E3KxmIjaEuME', null, null, null, null, '7349477e-db89-4d68-876a-718dc2df5d1a', null, '0.000', null, '0', '2018-05-13 16:18:25', null);
INSERT INTO `yz_customermanage` VALUES ('204', 'obI8U0WACnadBvNsQXgUez8hlVds', null, null, null, null, 'cbc35b72-d774-45b6-8e81-6c7fcd820afa', null, '0.000', null, '0', '2018-05-14 15:37:58', null);
INSERT INTO `yz_customermanage` VALUES ('205', 'obI8U0QJEIIxGBO3jSw9G4xir9EY', null, null, null, null, 'd9b1fccd-e362-4127-ad3b-517681325b47', null, '0.000', null, '0', '2018-05-15 17:30:12', null);
INSERT INTO `yz_customermanage` VALUES ('206', 'obI8U0XGXOa7MJZh4xxmyr9DqFPk', null, null, null, null, 'c7316fac-df46-4e63-b4d8-0290a124b2c3', null, '0.000', null, '0', '2018-05-16 13:34:26', null);
INSERT INTO `yz_customermanage` VALUES ('207', 'obI8U0SFoSGwRdR58yW1oYYfv4zA', null, null, null, null, '82360df3-051c-4e47-b471-9dd86f0d75bf', null, '0.000', null, '0', '2018-05-17 08:05:40', null);
INSERT INTO `yz_customermanage` VALUES ('208', 'obI8U0aDjfVsvQmKD_ybUhfWBBi0', null, null, null, null, '40aba599-27a5-4a8e-80ac-6613c6e21cd1', null, '0.000', null, '0', '2018-05-17 14:57:49', null);
INSERT INTO `yz_customermanage` VALUES ('209', 'obI8U0Y2qcEQ5ojLsU2xvH4waEUo', null, null, null, null, 'ef44b428-c2f4-482a-8c79-92b33fc08b18', null, '0.000', null, '0', '2018-05-17 23:28:35', null);
INSERT INTO `yz_customermanage` VALUES ('210', 'obI8U0Vwk_A_gxjQBq5xyqTB4Fh4', null, null, null, null, 'c01ce33b-81c2-4036-abbe-52a0eefb1ae2', null, '0.000', null, '0', '2018-05-18 08:25:44', null);
INSERT INTO `yz_customermanage` VALUES ('211', 'obI8U0ceWC8ByCHfH_8KzVvM5KXM', null, null, null, null, '24fdb5c6-e52e-45ab-adf0-f940258cdb8c', null, '0.000', null, '0', '2018-05-18 11:21:25', null);
INSERT INTO `yz_customermanage` VALUES ('212', 'obI8U0U8GlJhxWE0RMxzmKAVrVas', null, null, null, null, '9b204cc8-01a4-4ade-bfc7-f4e091ed50a1', null, '0.000', null, '0', '2018-05-20 13:45:29', null);
INSERT INTO `yz_customermanage` VALUES ('213', 'obI8U0WX6Y1Y_KvxwDiZJU2OdRc0', null, null, null, null, 'fda4afeb-f59a-4e4e-b590-e30e21d7f79d', null, '0.000', null, '0', '2018-05-21 11:54:06', null);
INSERT INTO `yz_customermanage` VALUES ('214', 'obI8U0avFW750aMPNXiKZSr5eL44', null, null, null, null, '9926d14b-6d9a-46c5-afb5-825ec4293ce8', null, '0.000', null, '0', '2018-05-22 12:43:19', null);
INSERT INTO `yz_customermanage` VALUES ('215', 'obI8U0UYQYU_Hyb7o-w3N5Ft8XJ0', null, null, null, null, 'd2a668a6-2b05-4c4a-bd1c-ef44d00b783c', null, '0.000', null, '0', '2018-05-22 13:43:19', null);
INSERT INTO `yz_customermanage` VALUES ('216', 'obI8U0aLJ3RusDoLXUG_R8UtXkwc', null, null, null, null, '2cc55e3a-a1ba-48da-a7cf-90b2f625d4ee', null, '0.000', null, '0', '2018-05-23 00:37:55', null);
INSERT INTO `yz_customermanage` VALUES ('217', 'obI8U0dAzGAa93012tBP8R0Lndqw', null, null, null, null, '2cb38533-e8aa-46c1-aaab-0e5ff6b65be2', null, '0.000', null, '0', '2018-05-24 08:54:05', null);
INSERT INTO `yz_customermanage` VALUES ('218', 'obI8U0R6WcTEcqo9T_ap3tzX10FU', null, null, null, null, '0bf329ff-8204-4d32-b19b-a3c26403c54d', null, '0.000', null, '0', '2018-05-26 12:56:29', null);
INSERT INTO `yz_customermanage` VALUES ('219', 'obI8U0adITkaqZXgLyUJgKc_KDs4', null, null, null, null, '0cb17f24-e655-4a07-bf75-0456e5e98a39', null, '0.000', null, '0', '2018-05-26 15:16:13', null);
INSERT INTO `yz_customermanage` VALUES ('220', 'obI8U0edyYsrelBsWDgTfm_kyeIQ', null, null, null, null, '8cbb8a0d-11b3-405f-ad45-dc3076d789ef', null, '0.000', null, '0', '2018-05-26 18:16:11', null);
INSERT INTO `yz_customermanage` VALUES ('221', 'obI8U0Znz1LCouoG5m59TytUVquA', null, null, null, null, 'fed0028e-3c30-4872-81e4-9d6485c2982c', null, '0.000', null, '0', '2018-05-26 18:42:25', null);
INSERT INTO `yz_customermanage` VALUES ('222', 'obI8U0XBCFg8_c5c5Dbra5jRUQds', null, null, null, null, '8f0b81ed-0031-4459-917f-4471605816a8', null, '0.000', null, '0', '2018-05-27 06:25:54', null);
INSERT INTO `yz_customermanage` VALUES ('223', 'obI8U0SpBcUWfkmEgSz8ushV9_v8', null, null, null, null, 'fb0a5ba4-abf4-498a-89f2-bb1f19f5a624', null, '0.000', null, '0', '2018-05-28 10:53:13', null);
INSERT INTO `yz_customermanage` VALUES ('224', 'obI8U0W9EtkaWlGNeo1irpQuAl2A', null, null, null, null, 'c217242b-8148-4a1e-b226-716fb2868375', null, '0.000', null, '0', '2018-05-30 01:00:45', null);
INSERT INTO `yz_customermanage` VALUES ('225', 'obI8U0fXC9KMZMm_RbvVkYOCP_5g', null, null, null, null, '7cfdb9b0-36bf-4aef-95ba-dc9f1b7eafca', null, '0.000', null, '0', '2018-05-31 15:41:59', null);
INSERT INTO `yz_customermanage` VALUES ('226', 'obI8U0UzK77cDIYEe2iTeXiTncyg', null, null, null, null, '19512f77-7994-4119-b23b-d6dc051102a9', null, '0.000', null, '0', '2018-05-31 16:32:18', null);
INSERT INTO `yz_customermanage` VALUES ('227', 'obI8U0bYytTW74cjs00GsIhATjz8', null, null, null, null, '89b43f2b-889d-40ad-9d21-7ded846e27f3', null, '0.000', null, '0', '2018-05-31 17:24:40', null);
INSERT INTO `yz_customermanage` VALUES ('228', 'obI8U0UAFL2Kpt6FVL-SydwvGuL0', null, null, null, null, '32eccb0c-ea6c-4a47-bd17-f60bf8ddef3f', null, '0.000', null, '0', '2018-06-02 00:52:32', null);
INSERT INTO `yz_customermanage` VALUES ('229', 'obI8U0U3PBax-7HYZbKNo_fQk3yI', null, null, null, null, '719f6f82-a8f0-4c07-885a-e2c954d6555c', null, '0.000', null, '0', '2018-06-03 07:46:17', null);
INSERT INTO `yz_customermanage` VALUES ('230', 'obI8U0R85j7a6nYQc5ArFig45dFw', null, null, null, null, '51338fac-ea0c-4285-b0e7-a5764d476364', null, '0.000', null, '0', '2018-06-05 07:24:52', null);
INSERT INTO `yz_customermanage` VALUES ('231', 'obI8U0RstwMB8CrfWVyG-CmNC4NA', null, null, null, null, 'cefe9e3b-c294-4036-aadb-8fc98ee637c7', null, '0.000', null, '0', '2018-06-06 17:25:05', null);

-- ----------------------------
-- Table structure for yz_jsskll_id
-- ----------------------------
DROP TABLE IF EXISTS `yz_jsskll_id`;
CREATE TABLE `yz_jsskll_id` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `js_id` varchar(255) DEFAULT NULL,
  `skill_id` varchar(255) DEFAULT NULL,
  `takePercentage` varchar(255) DEFAULT NULL COMMENT '抽成',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1018 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yz_jsskll_id
-- ----------------------------
INSERT INTO `yz_jsskll_id` VALUES ('221', '35ed1a1866434cc8a0f0e56031f0dd36', '1', null);
INSERT INTO `yz_jsskll_id` VALUES ('222', '2ba6b5294ef6404e9daaadd17a1ae355', '1', null);
INSERT INTO `yz_jsskll_id` VALUES ('778', '0e1bf6d4fc2d4de298a3fb073d78f5be', '4', null);
INSERT INTO `yz_jsskll_id` VALUES ('779', '0e1bf6d4fc2d4de298a3fb073d78f5be', '8', null);
INSERT INTO `yz_jsskll_id` VALUES ('780', '0e1bf6d4fc2d4de298a3fb073d78f5be', '15', null);
INSERT INTO `yz_jsskll_id` VALUES ('781', '0e1bf6d4fc2d4de298a3fb073d78f5be', '18', null);
INSERT INTO `yz_jsskll_id` VALUES ('782', '0e1bf6d4fc2d4de298a3fb073d78f5be', '19', null);
INSERT INTO `yz_jsskll_id` VALUES ('783', '0e1bf6d4fc2d4de298a3fb073d78f5be', '20', null);
INSERT INTO `yz_jsskll_id` VALUES ('784', '0e1bf6d4fc2d4de298a3fb073d78f5be', '21', null);
INSERT INTO `yz_jsskll_id` VALUES ('785', '0e1bf6d4fc2d4de298a3fb073d78f5be', '22', null);
INSERT INTO `yz_jsskll_id` VALUES ('786', '0e1bf6d4fc2d4de298a3fb073d78f5be', '23', null);
INSERT INTO `yz_jsskll_id` VALUES ('787', '0e1bf6d4fc2d4de298a3fb073d78f5be', '39', null);
INSERT INTO `yz_jsskll_id` VALUES ('788', '0e1bf6d4fc2d4de298a3fb073d78f5be', '40', null);
INSERT INTO `yz_jsskll_id` VALUES ('789', '0e1bf6d4fc2d4de298a3fb073d78f5be', '41', null);
INSERT INTO `yz_jsskll_id` VALUES ('790', '0e1bf6d4fc2d4de298a3fb073d78f5be', '42', null);
INSERT INTO `yz_jsskll_id` VALUES ('791', '0e1bf6d4fc2d4de298a3fb073d78f5be', '43', null);
INSERT INTO `yz_jsskll_id` VALUES ('792', '0e1bf6d4fc2d4de298a3fb073d78f5be', '44', null);
INSERT INTO `yz_jsskll_id` VALUES ('793', '0e1bf6d4fc2d4de298a3fb073d78f5be', '45', null);
INSERT INTO `yz_jsskll_id` VALUES ('794', '0e1bf6d4fc2d4de298a3fb073d78f5be', '46', null);
INSERT INTO `yz_jsskll_id` VALUES ('795', '0e1bf6d4fc2d4de298a3fb073d78f5be', '47', null);
INSERT INTO `yz_jsskll_id` VALUES ('796', '0e1bf6d4fc2d4de298a3fb073d78f5be', '48', null);
INSERT INTO `yz_jsskll_id` VALUES ('797', '0e1bf6d4fc2d4de298a3fb073d78f5be', '51', null);
INSERT INTO `yz_jsskll_id` VALUES ('798', '0e1bf6d4fc2d4de298a3fb073d78f5be', '52', null);
INSERT INTO `yz_jsskll_id` VALUES ('799', '0e1bf6d4fc2d4de298a3fb073d78f5be', '53', null);
INSERT INTO `yz_jsskll_id` VALUES ('800', '0e1bf6d4fc2d4de298a3fb073d78f5be', '54', null);
INSERT INTO `yz_jsskll_id` VALUES ('801', '0e1bf6d4fc2d4de298a3fb073d78f5be', '55', null);
INSERT INTO `yz_jsskll_id` VALUES ('802', '0e1bf6d4fc2d4de298a3fb073d78f5be', '56', null);
INSERT INTO `yz_jsskll_id` VALUES ('803', '0e1bf6d4fc2d4de298a3fb073d78f5be', '57', null);
INSERT INTO `yz_jsskll_id` VALUES ('804', '0e1bf6d4fc2d4de298a3fb073d78f5be', '58', null);
INSERT INTO `yz_jsskll_id` VALUES ('805', '0e1bf6d4fc2d4de298a3fb073d78f5be', '59', null);
INSERT INTO `yz_jsskll_id` VALUES ('806', '0e1bf6d4fc2d4de298a3fb073d78f5be', '60', null);
INSERT INTO `yz_jsskll_id` VALUES ('807', '0e1bf6d4fc2d4de298a3fb073d78f5be', '61', null);
INSERT INTO `yz_jsskll_id` VALUES ('808', '0e1bf6d4fc2d4de298a3fb073d78f5be', '62', null);
INSERT INTO `yz_jsskll_id` VALUES ('809', '0e1bf6d4fc2d4de298a3fb073d78f5be', '63', null);
INSERT INTO `yz_jsskll_id` VALUES ('810', '0e1bf6d4fc2d4de298a3fb073d78f5be', '64', null);
INSERT INTO `yz_jsskll_id` VALUES ('844', 'a91d8767d36e4be4bde1963b9ea2ac2b', '15', null);
INSERT INTO `yz_jsskll_id` VALUES ('845', 'a91d8767d36e4be4bde1963b9ea2ac2b', '18', null);
INSERT INTO `yz_jsskll_id` VALUES ('846', 'a91d8767d36e4be4bde1963b9ea2ac2b', '20', null);
INSERT INTO `yz_jsskll_id` VALUES ('847', 'a91d8767d36e4be4bde1963b9ea2ac2b', '21', null);
INSERT INTO `yz_jsskll_id` VALUES ('848', 'a91d8767d36e4be4bde1963b9ea2ac2b', '24', null);
INSERT INTO `yz_jsskll_id` VALUES ('849', 'a91d8767d36e4be4bde1963b9ea2ac2b', '39', null);
INSERT INTO `yz_jsskll_id` VALUES ('850', 'a91d8767d36e4be4bde1963b9ea2ac2b', '40', null);
INSERT INTO `yz_jsskll_id` VALUES ('851', 'a91d8767d36e4be4bde1963b9ea2ac2b', '41', null);
INSERT INTO `yz_jsskll_id` VALUES ('852', 'a91d8767d36e4be4bde1963b9ea2ac2b', '42', null);
INSERT INTO `yz_jsskll_id` VALUES ('853', 'a91d8767d36e4be4bde1963b9ea2ac2b', '43', null);
INSERT INTO `yz_jsskll_id` VALUES ('854', 'a91d8767d36e4be4bde1963b9ea2ac2b', '44', null);
INSERT INTO `yz_jsskll_id` VALUES ('855', 'a91d8767d36e4be4bde1963b9ea2ac2b', '46', null);
INSERT INTO `yz_jsskll_id` VALUES ('856', 'a91d8767d36e4be4bde1963b9ea2ac2b', '47', null);
INSERT INTO `yz_jsskll_id` VALUES ('857', 'a91d8767d36e4be4bde1963b9ea2ac2b', '48', null);
INSERT INTO `yz_jsskll_id` VALUES ('858', 'a91d8767d36e4be4bde1963b9ea2ac2b', '49', null);
INSERT INTO `yz_jsskll_id` VALUES ('859', 'a91d8767d36e4be4bde1963b9ea2ac2b', '50', null);
INSERT INTO `yz_jsskll_id` VALUES ('860', 'a91d8767d36e4be4bde1963b9ea2ac2b', '51', null);
INSERT INTO `yz_jsskll_id` VALUES ('861', 'a91d8767d36e4be4bde1963b9ea2ac2b', '52', null);
INSERT INTO `yz_jsskll_id` VALUES ('862', 'a91d8767d36e4be4bde1963b9ea2ac2b', '53', null);
INSERT INTO `yz_jsskll_id` VALUES ('863', 'a91d8767d36e4be4bde1963b9ea2ac2b', '54', null);
INSERT INTO `yz_jsskll_id` VALUES ('864', 'a91d8767d36e4be4bde1963b9ea2ac2b', '55', null);
INSERT INTO `yz_jsskll_id` VALUES ('865', 'a91d8767d36e4be4bde1963b9ea2ac2b', '56', null);
INSERT INTO `yz_jsskll_id` VALUES ('866', 'a91d8767d36e4be4bde1963b9ea2ac2b', '57', null);
INSERT INTO `yz_jsskll_id` VALUES ('867', 'a91d8767d36e4be4bde1963b9ea2ac2b', '58', null);
INSERT INTO `yz_jsskll_id` VALUES ('868', 'a91d8767d36e4be4bde1963b9ea2ac2b', '59', null);
INSERT INTO `yz_jsskll_id` VALUES ('869', 'a91d8767d36e4be4bde1963b9ea2ac2b', '60', null);
INSERT INTO `yz_jsskll_id` VALUES ('870', 'a91d8767d36e4be4bde1963b9ea2ac2b', '61', null);
INSERT INTO `yz_jsskll_id` VALUES ('871', 'a91d8767d36e4be4bde1963b9ea2ac2b', '62', null);
INSERT INTO `yz_jsskll_id` VALUES ('872', 'a91d8767d36e4be4bde1963b9ea2ac2b', '63', null);
INSERT INTO `yz_jsskll_id` VALUES ('873', 'a91d8767d36e4be4bde1963b9ea2ac2b', '64', null);
INSERT INTO `yz_jsskll_id` VALUES ('891', 'd5cba53bfb6a4a27bfd2287ffe50d6c8', '23', null);
INSERT INTO `yz_jsskll_id` VALUES ('892', 'd5cba53bfb6a4a27bfd2287ffe50d6c8', '24', null);
INSERT INTO `yz_jsskll_id` VALUES ('893', 'd5cba53bfb6a4a27bfd2287ffe50d6c8', '25', null);
INSERT INTO `yz_jsskll_id` VALUES ('894', 'd5cba53bfb6a4a27bfd2287ffe50d6c8', '26', null);
INSERT INTO `yz_jsskll_id` VALUES ('895', 'd5cba53bfb6a4a27bfd2287ffe50d6c8', '27', null);
INSERT INTO `yz_jsskll_id` VALUES ('896', 'd5cba53bfb6a4a27bfd2287ffe50d6c8', '28', null);
INSERT INTO `yz_jsskll_id` VALUES ('897', 'd5cba53bfb6a4a27bfd2287ffe50d6c8', '29', null);
INSERT INTO `yz_jsskll_id` VALUES ('898', 'd5cba53bfb6a4a27bfd2287ffe50d6c8', '30', null);
INSERT INTO `yz_jsskll_id` VALUES ('899', 'd5cba53bfb6a4a27bfd2287ffe50d6c8', '31', null);
INSERT INTO `yz_jsskll_id` VALUES ('900', 'd5cba53bfb6a4a27bfd2287ffe50d6c8', '32', null);
INSERT INTO `yz_jsskll_id` VALUES ('901', 'd5cba53bfb6a4a27bfd2287ffe50d6c8', '33', null);
INSERT INTO `yz_jsskll_id` VALUES ('902', 'd5cba53bfb6a4a27bfd2287ffe50d6c8', '34', null);
INSERT INTO `yz_jsskll_id` VALUES ('903', 'd5cba53bfb6a4a27bfd2287ffe50d6c8', '35', null);
INSERT INTO `yz_jsskll_id` VALUES ('904', 'd5cba53bfb6a4a27bfd2287ffe50d6c8', '36', null);
INSERT INTO `yz_jsskll_id` VALUES ('905', 'd5cba53bfb6a4a27bfd2287ffe50d6c8', '37', null);
INSERT INTO `yz_jsskll_id` VALUES ('906', 'd5cba53bfb6a4a27bfd2287ffe50d6c8', '39', null);
INSERT INTO `yz_jsskll_id` VALUES ('907', 'd5cba53bfb6a4a27bfd2287ffe50d6c8', '40', null);
INSERT INTO `yz_jsskll_id` VALUES ('908', 'd5cba53bfb6a4a27bfd2287ffe50d6c8', '65', null);
INSERT INTO `yz_jsskll_id` VALUES ('909', 'd5cba53bfb6a4a27bfd2287ffe50d6c8', '66', null);
INSERT INTO `yz_jsskll_id` VALUES ('910', 'd5cba53bfb6a4a27bfd2287ffe50d6c8', '67', null);
INSERT INTO `yz_jsskll_id` VALUES ('911', 'd5cba53bfb6a4a27bfd2287ffe50d6c8', '68', null);
INSERT INTO `yz_jsskll_id` VALUES ('912', 'c5b7e282fec5410eb9eb63719f314988', '20', null);
INSERT INTO `yz_jsskll_id` VALUES ('913', 'c5b7e282fec5410eb9eb63719f314988', '21', null);
INSERT INTO `yz_jsskll_id` VALUES ('914', 'c5b7e282fec5410eb9eb63719f314988', '24', null);
INSERT INTO `yz_jsskll_id` VALUES ('915', 'c5b7e282fec5410eb9eb63719f314988', '25', null);
INSERT INTO `yz_jsskll_id` VALUES ('916', 'c5b7e282fec5410eb9eb63719f314988', '26', null);
INSERT INTO `yz_jsskll_id` VALUES ('917', 'c5b7e282fec5410eb9eb63719f314988', '27', null);
INSERT INTO `yz_jsskll_id` VALUES ('918', 'c5b7e282fec5410eb9eb63719f314988', '28', null);
INSERT INTO `yz_jsskll_id` VALUES ('919', 'c5b7e282fec5410eb9eb63719f314988', '29', null);
INSERT INTO `yz_jsskll_id` VALUES ('920', 'c5b7e282fec5410eb9eb63719f314988', '30', null);
INSERT INTO `yz_jsskll_id` VALUES ('921', 'c5b7e282fec5410eb9eb63719f314988', '31', null);
INSERT INTO `yz_jsskll_id` VALUES ('922', 'c5b7e282fec5410eb9eb63719f314988', '32', null);
INSERT INTO `yz_jsskll_id` VALUES ('923', 'c5b7e282fec5410eb9eb63719f314988', '33', null);
INSERT INTO `yz_jsskll_id` VALUES ('924', 'c5b7e282fec5410eb9eb63719f314988', '34', null);
INSERT INTO `yz_jsskll_id` VALUES ('925', 'c5b7e282fec5410eb9eb63719f314988', '35', null);
INSERT INTO `yz_jsskll_id` VALUES ('926', 'c5b7e282fec5410eb9eb63719f314988', '36', null);
INSERT INTO `yz_jsskll_id` VALUES ('927', 'c5b7e282fec5410eb9eb63719f314988', '37', null);
INSERT INTO `yz_jsskll_id` VALUES ('928', 'c5b7e282fec5410eb9eb63719f314988', '39', null);
INSERT INTO `yz_jsskll_id` VALUES ('929', 'c5b7e282fec5410eb9eb63719f314988', '65', null);
INSERT INTO `yz_jsskll_id` VALUES ('930', 'c5b7e282fec5410eb9eb63719f314988', '66', null);
INSERT INTO `yz_jsskll_id` VALUES ('931', 'c5b7e282fec5410eb9eb63719f314988', '67', null);
INSERT INTO `yz_jsskll_id` VALUES ('932', 'c5b7e282fec5410eb9eb63719f314988', '68', null);
INSERT INTO `yz_jsskll_id` VALUES ('933', 'f7d4b6e8454c4d5bbaaf9e1df9c6dbc4', '21', null);
INSERT INTO `yz_jsskll_id` VALUES ('934', 'f7d4b6e8454c4d5bbaaf9e1df9c6dbc4', '22', null);
INSERT INTO `yz_jsskll_id` VALUES ('935', 'f7d4b6e8454c4d5bbaaf9e1df9c6dbc4', '23', null);
INSERT INTO `yz_jsskll_id` VALUES ('936', 'f7d4b6e8454c4d5bbaaf9e1df9c6dbc4', '24', null);
INSERT INTO `yz_jsskll_id` VALUES ('937', 'f7d4b6e8454c4d5bbaaf9e1df9c6dbc4', '25', null);
INSERT INTO `yz_jsskll_id` VALUES ('938', 'f7d4b6e8454c4d5bbaaf9e1df9c6dbc4', '26', null);
INSERT INTO `yz_jsskll_id` VALUES ('939', 'f7d4b6e8454c4d5bbaaf9e1df9c6dbc4', '27', null);
INSERT INTO `yz_jsskll_id` VALUES ('940', 'f7d4b6e8454c4d5bbaaf9e1df9c6dbc4', '28', null);
INSERT INTO `yz_jsskll_id` VALUES ('941', 'f7d4b6e8454c4d5bbaaf9e1df9c6dbc4', '29', null);
INSERT INTO `yz_jsskll_id` VALUES ('942', 'f7d4b6e8454c4d5bbaaf9e1df9c6dbc4', '30', null);
INSERT INTO `yz_jsskll_id` VALUES ('943', 'f7d4b6e8454c4d5bbaaf9e1df9c6dbc4', '31', null);
INSERT INTO `yz_jsskll_id` VALUES ('944', 'f7d4b6e8454c4d5bbaaf9e1df9c6dbc4', '32', null);
INSERT INTO `yz_jsskll_id` VALUES ('945', 'f7d4b6e8454c4d5bbaaf9e1df9c6dbc4', '33', null);
INSERT INTO `yz_jsskll_id` VALUES ('946', 'f7d4b6e8454c4d5bbaaf9e1df9c6dbc4', '34', null);
INSERT INTO `yz_jsskll_id` VALUES ('947', 'f7d4b6e8454c4d5bbaaf9e1df9c6dbc4', '35', null);
INSERT INTO `yz_jsskll_id` VALUES ('948', 'f7d4b6e8454c4d5bbaaf9e1df9c6dbc4', '36', null);
INSERT INTO `yz_jsskll_id` VALUES ('949', 'f7d4b6e8454c4d5bbaaf9e1df9c6dbc4', '37', null);
INSERT INTO `yz_jsskll_id` VALUES ('950', 'f7d4b6e8454c4d5bbaaf9e1df9c6dbc4', '65', null);
INSERT INTO `yz_jsskll_id` VALUES ('951', 'f7d4b6e8454c4d5bbaaf9e1df9c6dbc4', '66', null);
INSERT INTO `yz_jsskll_id` VALUES ('952', 'f7d4b6e8454c4d5bbaaf9e1df9c6dbc4', '67', null);
INSERT INTO `yz_jsskll_id` VALUES ('953', 'f7d4b6e8454c4d5bbaaf9e1df9c6dbc4', '68', null);
INSERT INTO `yz_jsskll_id` VALUES ('954', '37b6d3ab705b4b85b9ab25308ba177ad', '15', null);
INSERT INTO `yz_jsskll_id` VALUES ('955', '37b6d3ab705b4b85b9ab25308ba177ad', '18', null);
INSERT INTO `yz_jsskll_id` VALUES ('956', '37b6d3ab705b4b85b9ab25308ba177ad', '19', null);
INSERT INTO `yz_jsskll_id` VALUES ('957', '37b6d3ab705b4b85b9ab25308ba177ad', '20', null);
INSERT INTO `yz_jsskll_id` VALUES ('958', '37b6d3ab705b4b85b9ab25308ba177ad', '21', null);
INSERT INTO `yz_jsskll_id` VALUES ('959', '37b6d3ab705b4b85b9ab25308ba177ad', '23', null);
INSERT INTO `yz_jsskll_id` VALUES ('960', '37b6d3ab705b4b85b9ab25308ba177ad', '38', null);
INSERT INTO `yz_jsskll_id` VALUES ('961', '37b6d3ab705b4b85b9ab25308ba177ad', '39', null);
INSERT INTO `yz_jsskll_id` VALUES ('962', '37b6d3ab705b4b85b9ab25308ba177ad', '40', null);
INSERT INTO `yz_jsskll_id` VALUES ('963', '37b6d3ab705b4b85b9ab25308ba177ad', '41', null);
INSERT INTO `yz_jsskll_id` VALUES ('964', '37b6d3ab705b4b85b9ab25308ba177ad', '42', null);
INSERT INTO `yz_jsskll_id` VALUES ('965', '37b6d3ab705b4b85b9ab25308ba177ad', '43', null);
INSERT INTO `yz_jsskll_id` VALUES ('966', '37b6d3ab705b4b85b9ab25308ba177ad', '44', null);
INSERT INTO `yz_jsskll_id` VALUES ('967', '37b6d3ab705b4b85b9ab25308ba177ad', '45', null);
INSERT INTO `yz_jsskll_id` VALUES ('968', '37b6d3ab705b4b85b9ab25308ba177ad', '46', null);
INSERT INTO `yz_jsskll_id` VALUES ('969', '37b6d3ab705b4b85b9ab25308ba177ad', '47', null);
INSERT INTO `yz_jsskll_id` VALUES ('970', '37b6d3ab705b4b85b9ab25308ba177ad', '48', null);
INSERT INTO `yz_jsskll_id` VALUES ('971', '37b6d3ab705b4b85b9ab25308ba177ad', '49', null);
INSERT INTO `yz_jsskll_id` VALUES ('972', '37b6d3ab705b4b85b9ab25308ba177ad', '50', null);
INSERT INTO `yz_jsskll_id` VALUES ('973', '37b6d3ab705b4b85b9ab25308ba177ad', '51', null);
INSERT INTO `yz_jsskll_id` VALUES ('974', '37b6d3ab705b4b85b9ab25308ba177ad', '52', null);
INSERT INTO `yz_jsskll_id` VALUES ('975', '37b6d3ab705b4b85b9ab25308ba177ad', '53', null);
INSERT INTO `yz_jsskll_id` VALUES ('976', '37b6d3ab705b4b85b9ab25308ba177ad', '54', null);
INSERT INTO `yz_jsskll_id` VALUES ('977', '37b6d3ab705b4b85b9ab25308ba177ad', '55', null);
INSERT INTO `yz_jsskll_id` VALUES ('978', '37b6d3ab705b4b85b9ab25308ba177ad', '56', null);
INSERT INTO `yz_jsskll_id` VALUES ('979', '37b6d3ab705b4b85b9ab25308ba177ad', '57', null);
INSERT INTO `yz_jsskll_id` VALUES ('980', '37b6d3ab705b4b85b9ab25308ba177ad', '58', null);
INSERT INTO `yz_jsskll_id` VALUES ('981', '37b6d3ab705b4b85b9ab25308ba177ad', '59', null);
INSERT INTO `yz_jsskll_id` VALUES ('982', '37b6d3ab705b4b85b9ab25308ba177ad', '60', null);
INSERT INTO `yz_jsskll_id` VALUES ('983', '37b6d3ab705b4b85b9ab25308ba177ad', '61', null);
INSERT INTO `yz_jsskll_id` VALUES ('984', '37b6d3ab705b4b85b9ab25308ba177ad', '62', null);
INSERT INTO `yz_jsskll_id` VALUES ('985', '37b6d3ab705b4b85b9ab25308ba177ad', '63', null);
INSERT INTO `yz_jsskll_id` VALUES ('986', '37b6d3ab705b4b85b9ab25308ba177ad', '64', null);
INSERT INTO `yz_jsskll_id` VALUES ('987', 'b47c362823f64cffaec338a0f9eb1f1f', '15', null);
INSERT INTO `yz_jsskll_id` VALUES ('988', 'b47c362823f64cffaec338a0f9eb1f1f', '18', null);
INSERT INTO `yz_jsskll_id` VALUES ('989', 'b47c362823f64cffaec338a0f9eb1f1f', '21', null);
INSERT INTO `yz_jsskll_id` VALUES ('990', 'b47c362823f64cffaec338a0f9eb1f1f', '22', null);
INSERT INTO `yz_jsskll_id` VALUES ('991', 'b47c362823f64cffaec338a0f9eb1f1f', '23', null);
INSERT INTO `yz_jsskll_id` VALUES ('992', 'b47c362823f64cffaec338a0f9eb1f1f', '39', null);
INSERT INTO `yz_jsskll_id` VALUES ('993', 'b47c362823f64cffaec338a0f9eb1f1f', '40', null);
INSERT INTO `yz_jsskll_id` VALUES ('994', 'b47c362823f64cffaec338a0f9eb1f1f', '41', null);
INSERT INTO `yz_jsskll_id` VALUES ('995', 'b47c362823f64cffaec338a0f9eb1f1f', '42', null);
INSERT INTO `yz_jsskll_id` VALUES ('996', 'b47c362823f64cffaec338a0f9eb1f1f', '43', null);
INSERT INTO `yz_jsskll_id` VALUES ('997', 'b47c362823f64cffaec338a0f9eb1f1f', '44', null);
INSERT INTO `yz_jsskll_id` VALUES ('998', 'b47c362823f64cffaec338a0f9eb1f1f', '45', null);
INSERT INTO `yz_jsskll_id` VALUES ('999', 'b47c362823f64cffaec338a0f9eb1f1f', '46', null);
INSERT INTO `yz_jsskll_id` VALUES ('1000', 'b47c362823f64cffaec338a0f9eb1f1f', '47', null);
INSERT INTO `yz_jsskll_id` VALUES ('1001', 'b47c362823f64cffaec338a0f9eb1f1f', '48', null);
INSERT INTO `yz_jsskll_id` VALUES ('1002', 'b47c362823f64cffaec338a0f9eb1f1f', '49', null);
INSERT INTO `yz_jsskll_id` VALUES ('1003', 'b47c362823f64cffaec338a0f9eb1f1f', '50', null);
INSERT INTO `yz_jsskll_id` VALUES ('1004', 'b47c362823f64cffaec338a0f9eb1f1f', '51', null);
INSERT INTO `yz_jsskll_id` VALUES ('1005', 'b47c362823f64cffaec338a0f9eb1f1f', '52', null);
INSERT INTO `yz_jsskll_id` VALUES ('1006', 'b47c362823f64cffaec338a0f9eb1f1f', '53', null);
INSERT INTO `yz_jsskll_id` VALUES ('1007', 'b47c362823f64cffaec338a0f9eb1f1f', '54', null);
INSERT INTO `yz_jsskll_id` VALUES ('1008', 'b47c362823f64cffaec338a0f9eb1f1f', '55', null);
INSERT INTO `yz_jsskll_id` VALUES ('1009', 'b47c362823f64cffaec338a0f9eb1f1f', '56', null);
INSERT INTO `yz_jsskll_id` VALUES ('1010', 'b47c362823f64cffaec338a0f9eb1f1f', '57', null);
INSERT INTO `yz_jsskll_id` VALUES ('1011', 'b47c362823f64cffaec338a0f9eb1f1f', '58', null);
INSERT INTO `yz_jsskll_id` VALUES ('1012', 'b47c362823f64cffaec338a0f9eb1f1f', '59', null);
INSERT INTO `yz_jsskll_id` VALUES ('1013', 'b47c362823f64cffaec338a0f9eb1f1f', '60', null);
INSERT INTO `yz_jsskll_id` VALUES ('1014', 'b47c362823f64cffaec338a0f9eb1f1f', '61', null);
INSERT INTO `yz_jsskll_id` VALUES ('1015', 'b47c362823f64cffaec338a0f9eb1f1f', '62', null);
INSERT INTO `yz_jsskll_id` VALUES ('1016', 'b47c362823f64cffaec338a0f9eb1f1f', '63', null);
INSERT INTO `yz_jsskll_id` VALUES ('1017', 'b47c362823f64cffaec338a0f9eb1f1f', '64', null);

-- ----------------------------
-- Table structure for yz_order
-- ----------------------------
DROP TABLE IF EXISTS `yz_order`;
CREATE TABLE `yz_order` (
  `id` varchar(255) NOT NULL COMMENT '订单id',
  `user_name` varchar(255) DEFAULT NULL COMMENT '订单用户姓名',
  `openid` varchar(255) DEFAULT NULL,
  `artificer_id` varchar(255) DEFAULT NULL COMMENT '技师id',
  `reserve_money` double(255,3) DEFAULT NULL COMMENT '预定金额',
  `TimeSlot` varchar(255) DEFAULT NULL COMMENT '预定时间段',
  `personnum` int(11) DEFAULT NULL COMMENT '预约人数',
  `skill_id` varchar(255) DEFAULT NULL COMMENT '技能id（预约的服务项目：剪头发，拉头发等）',
  `reserve_time` datetime DEFAULT NULL COMMENT '预约时间',
  `paystatus` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '订单状态：0为待付款  1为预定中  2为已完成   3为已取消',
  `create_time` datetime DEFAULT NULL COMMENT '订单创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yz_order
-- ----------------------------
INSERT INTO `yz_order` VALUES ('151532539696269052', '???', '551a3a21-311a-49d5-bf1e-ce17cae39e80', '0e1bf6d4fc2d4de298a3fb073d78f5be', '28.000', '10:00-11:00', '1', '20', '2018-01-07 00:00:00', '0', '1', '2018-01-07 19:43:16');
INSERT INTO `yz_order` VALUES ('151539558313636972', '???', '2c4d8552-48ce-46ef-9609-9dc03933b9ab', '0e1bf6d4fc2d4de298a3fb073d78f5be', '198.000', '10:00-11:00', '1', '15', '2018-01-07 00:00:00', null, '0', '2018-01-08 15:13:03');
INSERT INTO `yz_order` VALUES ('151548200089381016', '???', '1e099c59-d677-4e3d-8db2-dc3bfd27bfab', '0e1bf6d4fc2d4de298a3fb073d78f5be', '6142.000', '10:00-11:00', '1', '15,18,19,20,21,22,23,39,40,41,42,43,44,45,46,47,48,51,52,53,54,55,56,57,58,59,60,61,62,63,64', '2018-01-09 00:00:00', null, '0', '2018-01-09 15:13:20');
INSERT INTO `yz_order` VALUES ('151555989624953392', '???', '2c4d8552-48ce-46ef-9609-9dc03933b9ab', '0e1bf6d4fc2d4de298a3fb073d78f5be', '864.000', '10:00-11:00', '2', '15,60,62,64', '2018-01-10 00:00:00', null, '0', '2018-01-10 12:51:36');
INSERT INTO `yz_order` VALUES ('151556716190356409', '???', 'e87d8efe-a1d3-4628-be12-206452078275', 'a91d8767d36e4be4bde1963b9ea2ac2b', '960.000', '10:00-11:00', '1', '15,18,20,21,24,41,42', '2018-01-10 00:00:00', null, '0', '2018-01-10 14:52:41');
INSERT INTO `yz_order` VALUES ('151565728394264594', '???', '2c4d8552-48ce-46ef-9609-9dc03933b9ab', 'f7d4b6e8454c4d5bbaaf9e1df9c6dbc4', '270.000', '18:00-19:00', '6', '21,34', '2018-01-11 00:00:00', null, '0', '2018-01-11 15:54:43');
INSERT INTO `yz_order` VALUES ('151572959768656842', '???', '2c4d8552-48ce-46ef-9609-9dc03933b9ab', 'c5b7e282fec5410eb9eb63719f314988', '24.000', '18:00-19:00', '1', '25', '2018-01-12 00:00:00', null, '0', '2018-01-12 11:59:57');
INSERT INTO `yz_order` VALUES ('151574427656950022', '???', '2c4d8552-48ce-46ef-9609-9dc03933b9ab', 'd5cba53bfb6a4a27bfd2287ffe50d6c8', '30.000', '18:00-19:00', '1', '35', '2018-01-12 00:00:00', null, '0', '2018-01-12 16:04:36');
INSERT INTO `yz_order` VALUES ('151575167012758773', '???', '2c4d8552-48ce-46ef-9609-9dc03933b9ab', '0e1bf6d4fc2d4de298a3fb073d78f5be', '28.000', '18:00-19:00', '1', '20', '2018-01-12 00:00:00', null, '0', '2018-01-12 18:07:50');
INSERT INTO `yz_order` VALUES ('151715221788971166', '???', '551a3a21-311a-49d5-bf1e-ce17cae39e80', '0e1bf6d4fc2d4de298a3fb073d78f5be', '28.000', '18:00-19:00', '1', '22', '2018-01-28 00:00:00', '0', '1', '2018-01-28 23:10:17');
INSERT INTO `yz_order` VALUES ('151747146710946802', '???', '8ac410d1-a6ba-4a1b-b469-030f34e18079', 'a91d8767d36e4be4bde1963b9ea2ac2b', '1154.000', '18:00-19:00', '1', '15,18,20,21,24,39,40,41,42', '2018-02-01 00:00:00', null, '0', '2018-02-01 15:51:07');
INSERT INTO `yz_order` VALUES ('151763980011044319', '???', 'e109e9f6-982c-4726-8510-ce5682dcbf11', '37b6d3ab705b4b85b9ab25308ba177ad', '236.000', '18:00-19:00', '1', '15,19,38', '2018-02-03 00:00:00', null, '0', '2018-02-03 14:36:40');
INSERT INTO `yz_order` VALUES ('151834654757734283', '???', 'f5f7ec66-ce89-41fb-b622-87bde254cbf5', '0e1bf6d4fc2d4de298a3fb073d78f5be', '341.000', '18:00-19:00', '1', '15,18,23', '2018-02-11 00:00:00', null, '0', '2018-02-11 18:55:47');
INSERT INTO `yz_order` VALUES ('151946932607947540', '???', '8966250e-e318-4342-aef9-68800cf94046', '37b6d3ab705b4b85b9ab25308ba177ad', '15.000', '18:00-19:00', '1', '21', '2018-02-24 00:00:00', null, '0', '2018-02-24 18:48:46');
INSERT INTO `yz_order` VALUES ('152162275756069154', '???', '5d53fdf3-3392-4b5b-913b-1b7d0b0b75d2', '37b6d3ab705b4b85b9ab25308ba177ad', '198.000', '18:00-19:00', '1', '15', '2018-03-21 00:00:00', null, '0', '2018-03-21 16:59:17');
INSERT INTO `yz_order` VALUES ('152784040014448017', '???', '5d53fdf3-3392-4b5b-913b-1b7d0b0b75d2', 'b47c362823f64cffaec338a0f9eb1f1f', '2376.000', '18:00-19:00', '12', '15', '2018-06-01 00:00:00', null, '0', '2018-06-01 16:06:40');

-- ----------------------------
-- Table structure for yz_orderdetails
-- ----------------------------
DROP TABLE IF EXISTS `yz_orderdetails`;
CREATE TABLE `yz_orderdetails` (
  `id` varchar(225) NOT NULL COMMENT '技师订单详细表',
  `artorder_id` varchar(255) NOT NULL COMMENT '技师订单表id',
  `ARTIFICER_ID` varchar(255) DEFAULT NULL COMMENT '技师id',
  `skill_id` varchar(255) DEFAULT NULL COMMENT '技能id',
  `rakeprice` float(11,3) DEFAULT NULL COMMENT '抽成金额',
  `is_recommend` int(11) DEFAULT NULL COMMENT '是否是该技师推荐',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yz_orderdetails
-- ----------------------------
INSERT INTO `yz_orderdetails` VALUES ('214289f9ee9248b3833e1f89f77542de', '22222', '333', '15', '0.000', '0', '2017-12-20 16:24:58', null);
INSERT INTO `yz_orderdetails` VALUES ('b8449d296807430d86f8b01c405389f5', '101010', '222', '18', '80.000', '0', '2017-11-01 16:28:59', null);
INSERT INTO `yz_orderdetails` VALUES ('b8449d296807430d86f8b01c405389f5', '101010', '1111', '19', '10.000', '0', '2017-11-01 16:28:59', null);
INSERT INTO `yz_orderdetails` VALUES ('b8449d296807430d86f8b01c405389f5', '101010', '333', '20', '0.000', '1', '2017-11-01 16:28:59', null);
INSERT INTO `yz_orderdetails` VALUES ('b8449d296807430d86f8b01c405389f5', '101010', '123', '15', '10.000', '0', '2017-11-01 16:28:59', null);
INSERT INTO `yz_orderdetails` VALUES ('067f57493d6f456485bfdfd84d260f3e', '99999', '1111', '15', '0.000', '1', '2017-11-01 16:29:34', null);
INSERT INTO `yz_orderdetails` VALUES ('c10fcd54372249aa82bcaec3d3c09113', '3245640687', '123', '18', '0.000', '0', '2017-12-23 11:59:00', null);

-- ----------------------------
-- Table structure for yz_recharge
-- ----------------------------
DROP TABLE IF EXISTS `yz_recharge`;
CREATE TABLE `yz_recharge` (
  `id` int(255) NOT NULL AUTO_INCREMENT COMMENT '用户充值记录表id',
  `user_id` varchar(255) DEFAULT NULL COMMENT '对应用户id',
  `openid` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `money` double(65,3) DEFAULT NULL COMMENT '充值金额',
  `isSuccess` int(11) DEFAULT '1' COMMENT '充值记录的描述（如：下了订单，扣除积分；完成点单，增加积分）',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=699 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yz_recharge
-- ----------------------------
INSERT INTO `yz_recharge` VALUES ('651', '2017122217541765156154', null, '00127e40-7b10-4499-b01d-921e9ccbabc9', '0.100', '0', '2017-12-22 17:54:17', '2017-12-22 17:54:17');
INSERT INTO `yz_recharge` VALUES ('657', '2017122218161180247611', null, '00127e40-7b10-4499-b01d-921e9ccbabc9', '0.100', '0', '2017-12-22 18:16:11', '2017-12-22 18:16:11');
INSERT INTO `yz_recharge` VALUES ('658', '2017122218293014434857', null, '00127e40-7b10-4499-b01d-921e9ccbabc9', '100.000', '1', '2017-12-22 18:29:30', '2017-12-22 18:29:30');
INSERT INTO `yz_recharge` VALUES ('659', '2017122218294876507433', null, '00127e40-7b10-4499-b01d-921e9ccbabc9', '0.100', '0', '2017-12-22 18:29:48', '2017-12-22 18:29:48');
INSERT INTO `yz_recharge` VALUES ('660', '2017122218485827182415', null, '5e6894f0-135b-461e-bf99-d108ef46164b', '123.000', '1', '2017-12-22 18:48:58', '2017-12-22 18:48:58');
INSERT INTO `yz_recharge` VALUES ('661', '2017122310542452656623', null, '00127e40-7b10-4499-b01d-921e9ccbabc9', '0.100', '0', '2017-12-23 10:54:25', '2017-12-23 10:54:25');
INSERT INTO `yz_recharge` VALUES ('662', '2017122311083953856167', null, '00127e40-7b10-4499-b01d-921e9ccbabc9', '0.100', '0', '2017-12-23 11:08:39', '2017-12-23 11:08:39');
INSERT INTO `yz_recharge` VALUES ('663', '2017122311100437871586', null, '00127e40-7b10-4499-b01d-921e9ccbabc9', '0.100', '0', '2017-12-23 11:10:04', '2017-12-23 11:10:04');
INSERT INTO `yz_recharge` VALUES ('664', '2017122311123415420656', null, '00127e40-7b10-4499-b01d-921e9ccbabc9', '0.100', '0', '2017-12-23 11:12:34', '2017-12-23 11:12:34');
INSERT INTO `yz_recharge` VALUES ('665', '2017122311181620607446', null, '00127e40-7b10-4499-b01d-921e9ccbabc9', '0.100', '0', '2017-12-23 11:18:17', '2017-12-23 11:18:17');
INSERT INTO `yz_recharge` VALUES ('666', '2017122311205057164321', null, '00127e40-7b10-4499-b01d-921e9ccbabc9', '0.100', '0', '2017-12-23 11:20:50', '2017-12-23 11:20:50');
INSERT INTO `yz_recharge` VALUES ('667', '2017122311260823474545', null, '00127e40-7b10-4499-b01d-921e9ccbabc9', '0.100', '0', '2017-12-23 11:26:08', '2017-12-23 11:26:08');
INSERT INTO `yz_recharge` VALUES ('668', '2017122311283760643601', null, '00127e40-7b10-4499-b01d-921e9ccbabc9', '0.100', '0', '2017-12-23 11:28:37', '2017-12-23 11:28:37');
INSERT INTO `yz_recharge` VALUES ('669', '2017122313424903658537', null, '00127e40-7b10-4499-b01d-921e9ccbabc9', '0.100', '0', '2017-12-23 13:42:49', '2017-12-23 13:42:49');
INSERT INTO `yz_recharge` VALUES ('670', '2017122313571623062240', null, '00127e40-7b10-4499-b01d-921e9ccbabc9', '0.100', '0', '2017-12-23 13:57:17', '2017-12-23 13:57:17');
INSERT INTO `yz_recharge` VALUES ('671', '2017122314035410850677', null, '00127e40-7b10-4499-b01d-921e9ccbabc9', '0.100', '0', '2017-12-23 14:03:54', '2017-12-23 14:03:54');
INSERT INTO `yz_recharge` VALUES ('672', '2017122314133548103136', null, '00127e40-7b10-4499-b01d-921e9ccbabc9', '0.100', '0', '2017-12-23 14:13:35', '2017-12-23 14:13:35');
INSERT INTO `yz_recharge` VALUES ('673', '2017122314285888572701', null, '00127e40-7b10-4499-b01d-921e9ccbabc9', '0.100', '0', '2017-12-23 14:28:58', '2017-12-23 14:28:58');
INSERT INTO `yz_recharge` VALUES ('674', '2017122314332925707678', null, '00127e40-7b10-4499-b01d-921e9ccbabc9', '0.100', '0', '2017-12-23 14:33:29', '2017-12-23 14:33:29');
INSERT INTO `yz_recharge` VALUES ('675', '2017122314371723703372', null, '00127e40-7b10-4499-b01d-921e9ccbabc9', '0.100', '0', '2017-12-23 14:37:17', '2017-12-23 14:37:17');
INSERT INTO `yz_recharge` VALUES ('676', '2017122314402765660507', null, '00127e40-7b10-4499-b01d-921e9ccbabc9', '0.100', '0', '2017-12-23 14:40:27', '2017-12-23 14:40:27');
INSERT INTO `yz_recharge` VALUES ('677', '2017122315113451534227', null, '00127e40-7b10-4499-b01d-921e9ccbabc9', '0.100', '0', '2017-12-23 15:11:34', '2017-12-23 15:11:34');
INSERT INTO `yz_recharge` VALUES ('678', '2017122315204327657828', null, '00127e40-7b10-4499-b01d-921e9ccbabc9', '0.100', '1', '2017-12-23 15:20:43', '2017-12-23 15:20:43');
INSERT INTO `yz_recharge` VALUES ('679', '2017122315221586088470', null, '00127e40-7b10-4499-b01d-921e9ccbabc9', '1.000', '1', '2017-12-23 15:22:16', '2017-12-23 15:22:16');
INSERT INTO `yz_recharge` VALUES ('680', '2017122315235584673536', null, '00127e40-7b10-4499-b01d-921e9ccbabc9', '0.100', '0', '2017-12-23 15:23:55', '2017-12-23 15:23:55');
INSERT INTO `yz_recharge` VALUES ('681', '2017122316085878418775', null, '2c4d8552-48ce-46ef-9609-9dc03933b9ab', '0.100', '1', '2017-12-23 16:08:58', '2017-12-23 16:08:58');
INSERT INTO `yz_recharge` VALUES ('682', '2017122316302504066416', null, '00127e40-7b10-4499-b01d-921e9ccbabc9', '0.100', '0', '2017-12-23 16:30:25', '2017-12-23 16:30:25');
INSERT INTO `yz_recharge` VALUES ('683', '2017122316422552432800', null, '00127e40-7b10-4499-b01d-921e9ccbabc9', '0.100', '0', '2017-12-23 16:42:25', '2017-12-23 16:42:25');
INSERT INTO `yz_recharge` VALUES ('684', '2017122316504753648478', null, '00127e40-7b10-4499-b01d-921e9ccbabc9', '0.100', '0', '2017-12-23 16:50:47', '2017-12-23 16:50:47');
INSERT INTO `yz_recharge` VALUES ('685', '2017122317070041043487', null, '00127e40-7b10-4499-b01d-921e9ccbabc9', '0.100', '0', '2017-12-23 17:07:00', '2017-12-23 17:07:00');
INSERT INTO `yz_recharge` VALUES ('690', '2018010716330252684178', null, '551a3a21-311a-49d5-bf1e-ce17cae39e80', '10.000', '0', '2018-01-07 16:33:03', '2018-01-07 16:33:03');
INSERT INTO `yz_recharge` VALUES ('691', '2018010716333875886760', null, '551a3a21-311a-49d5-bf1e-ce17cae39e80', '10.000', '0', '2018-01-07 16:33:38', '2018-01-07 16:33:38');
INSERT INTO `yz_recharge` VALUES ('692', '2018010819290070022617', null, '551a3a21-311a-49d5-bf1e-ce17cae39e80', '100.000', '0', '2018-01-08 19:29:01', '2018-01-08 19:29:01');
INSERT INTO `yz_recharge` VALUES ('694', '2018010819571647728185', null, '551a3a21-311a-49d5-bf1e-ce17cae39e80', '6.660', '0', '2018-01-08 19:57:16', '2018-01-08 19:57:16');
INSERT INTO `yz_recharge` VALUES ('696', '2018011114480433141161', null, '2c4d8552-48ce-46ef-9609-9dc03933b9ab', '0.100', '0', '2018-01-11 14:48:04', '2018-01-11 14:48:04');
INSERT INTO `yz_recharge` VALUES ('697', '2018011114490673584101', null, '2c4d8552-48ce-46ef-9609-9dc03933b9ab', '1.000', '0', '2018-01-11 14:49:06', '2018-01-11 14:49:06');
INSERT INTO `yz_recharge` VALUES ('698', '2018011114572618608063', null, '50b78b40-98e0-40eb-9af3-a21a96a5dd16', '1.000', '0', '2018-01-11 14:57:26', '2018-01-11 14:57:26');

-- ----------------------------
-- Table structure for yz_skill
-- ----------------------------
DROP TABLE IF EXISTS `yz_skill`;
CREATE TABLE `yz_skill` (
  `id` int(255) NOT NULL AUTO_INCREMENT COMMENT '技能表',
  `name` varchar(255) DEFAULT NULL COMMENT '技能名称',
  `price` double(10,2) DEFAULT NULL COMMENT '预约价格',
  `realprice` double(10,2) DEFAULT NULL COMMENT '实际价格',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yz_skill
-- ----------------------------
INSERT INTO `yz_skill` VALUES ('15', '卷发5', '198.00', '298.00', '2017-12-02 16:02:22', '2018-01-07 17:44:11');
INSERT INTO `yz_skill` VALUES ('18', '染发', '98.00', '158.00', '2017-12-04 14:29:09', '2018-01-07 17:43:50');
INSERT INTO `yz_skill` VALUES ('19', '接发', '20.00', '80.00', '2017-12-04 15:02:55', null);
INSERT INTO `yz_skill` VALUES ('20', '养生洗吹', '28.00', '35.00', '2017-12-20 09:28:38', '2018-01-07 17:43:31');
INSERT INTO `yz_skill` VALUES ('21', '商务洗吹', '15.00', '20.00', '2018-01-07 17:37:33', null);
INSERT INTO `yz_skill` VALUES ('22', '商务洗剪吹', '28.00', '35.00', '2018-01-07 17:38:01', null);
INSERT INTO `yz_skill` VALUES ('23', '养生洗剪吹', '45.00', '55.00', '2018-01-07 17:39:24', '2018-01-07 17:45:31');
INSERT INTO `yz_skill` VALUES ('24', '洗脸', '35.00', '28.00', '2018-01-07 17:40:20', null);
INSERT INTO `yz_skill` VALUES ('25', '面膜', '24.00', '30.00', '2018-01-07 17:45:59', null);
INSERT INTO `yz_skill` VALUES ('26', '去角质', '20.00', '25.00', '2018-01-07 17:46:20', null);
INSERT INTO `yz_skill` VALUES ('27', '眼膜', '20.00', '25.00', '2018-01-07 17:46:37', null);
INSERT INTO `yz_skill` VALUES ('28', '鼻膜', '20.00', '25.00', '2018-01-07 17:47:05', null);
INSERT INTO `yz_skill` VALUES ('29', '精油推背', '55.00', '68.00', '2018-01-07 17:47:34', null);
INSERT INTO `yz_skill` VALUES ('30', '火山热石', '31.00', '39.00', '2018-01-07 17:48:01', null);
INSERT INTO `yz_skill` VALUES ('31', '经络刮痧', '38.00', '48.00', '2018-01-07 17:48:35', null);
INSERT INTO `yz_skill` VALUES ('32', '肩颈理疗', '50.00', '68.00', '2018-01-07 17:49:38', null);
INSERT INTO `yz_skill` VALUES ('33', '火罐', '30.00', '39.00', '2018-01-07 17:50:11', null);
INSERT INTO `yz_skill` VALUES ('34', '宫庭火疗', '30.00', '39.00', '2018-01-07 17:50:42', null);
INSERT INTO `yz_skill` VALUES ('35', '姜疗', '30.00', '38.00', '2018-01-07 17:51:22', null);
INSERT INTO `yz_skill` VALUES ('36', '耳烛', '20.00', '26.00', '2018-01-07 17:51:53', null);
INSERT INTO `yz_skill` VALUES ('37', '水疗', '32.00', '40.00', '2018-01-07 17:52:33', null);
INSERT INTO `yz_skill` VALUES ('38', '单剪', '18.00', '20.00', '2018-01-07 17:52:53', null);
INSERT INTO `yz_skill` VALUES ('39', '一次性造型', '15.00', '20.00', '2018-01-07 17:53:19', null);
INSERT INTO `yz_skill` VALUES ('40', '哥帝活力胶原烫', '179.00', '258.00', '2018-01-07 17:54:49', '2018-01-07 18:08:46');
INSERT INTO `yz_skill` VALUES ('41', '魅卷莹润水果陶瓷烫', '258.00', '368.00', '2018-01-07 17:55:49', '2018-01-07 18:08:38');
INSERT INTO `yz_skill` VALUES ('42', '佳露丝水果奇迹精油烫', '328.00', '468.00', '2018-01-07 17:56:45', null);
INSERT INTO `yz_skill` VALUES ('43', '软黄金抛光陶瓷烫', '418.00', '598.00', '2018-01-07 17:57:44', null);
INSERT INTO `yz_skill` VALUES ('44', '威娜珍珠蛋白陶瓷烫', '518.00', '788.00', '2018-01-07 17:58:30', null);
INSERT INTO `yz_skill` VALUES ('45', '黑人头营养抛光烫（直发）', '578.00', '888.00', '2018-01-07 17:59:18', '2018-01-07 18:07:51');
INSERT INTO `yz_skill` VALUES ('46', 'V5柔魅活线条离子烫（直发）', '198.00', '258.00', '2018-01-07 18:00:27', '2018-01-07 18:07:36');
INSERT INTO `yz_skill` VALUES ('47', '鲁斯特缤纷水疗离子烫（直发）', '258.00', '368.00', '2018-01-07 18:01:20', '2018-01-07 18:07:42');
INSERT INTO `yz_skill` VALUES ('48', '佳露丝水果奇迹精油离子烫（直发）', '328.00', '468.00', '2018-01-07 18:02:06', '2018-01-07 18:07:17');
INSERT INTO `yz_skill` VALUES ('49', '欧丽雅多效修复离子烫（直发）', '398.00', '598.00', '2018-01-07 18:03:28', '2018-01-07 18:06:17');
INSERT INTO `yz_skill` VALUES ('50', '威娜滋养润滑离子烫（直发）', '498.00', '788.00', '2018-01-07 18:04:24', '2018-01-07 20:28:54');
INSERT INTO `yz_skill` VALUES ('51', '黑人头营养抛光直线烫（直发）', '528.00', '888.00', '2018-01-07 18:05:11', '2018-01-07 18:06:30');
INSERT INTO `yz_skill` VALUES ('52', '特价活力烫发', '148.00', '158.00', '2018-01-07 18:09:35', null);
INSERT INTO `yz_skill` VALUES ('53', '特价柔顺直发', '148.00', '158.00', '2018-01-07 18:10:18', null);
INSERT INTO `yz_skill` VALUES ('54', '特价活力染发', '88.00', '98.00', '2018-01-07 18:10:51', '2018-01-07 20:28:12');
INSERT INTO `yz_skill` VALUES ('55', 'AKCC魅力染发', '148.00', '168.00', '2018-01-07 18:11:54', '2018-01-07 20:28:27');
INSERT INTO `yz_skill` VALUES ('56', '怡美姿活力染发', '228.00', '288.00', '2018-01-07 18:12:48', null);
INSERT INTO `yz_skill` VALUES ('57', '迪丝美迷人染发', '288.00', '388.00', '2018-01-07 18:13:40', null);
INSERT INTO `yz_skill` VALUES ('58', '欧亚露贵人染发', '328.00', '488.00', '2018-01-07 18:15:39', null);
INSERT INTO `yz_skill` VALUES ('59', '施华蔻豪门染发', '368.00', '588.00', '2018-01-07 18:16:49', null);
INSERT INTO `yz_skill` VALUES ('60', '水疗氨基酸修复（护发）', '48.00', '58.00', '2018-01-07 18:17:35', null);
INSERT INTO `yz_skill` VALUES ('61', '特价预顺护发', '38.00', '35.00', '2018-01-07 18:18:00', null);
INSERT INTO `yz_skill` VALUES ('62', '东霸水果营养发膜', '68.00', '88.00', '2018-01-07 18:19:06', null);
INSERT INTO `yz_skill` VALUES ('63', '巴黎欧莱雅修复发膜', '88.00', '118.00', '2018-01-07 18:20:03', null);
INSERT INTO `yz_skill` VALUES ('64', '圣威娜烫染修复发膜', '118.00', '168.00', '2018-01-07 18:21:02', null);
INSERT INTO `yz_skill` VALUES ('65', '颈肩中频理疗', '38.00', '68.00', '2018-01-07 18:59:39', '2018-01-07 19:02:46');
INSERT INTO `yz_skill` VALUES ('66', '肝肾俞中频理疗', '48.00', '78.00', '2018-01-07 19:01:16', '2018-01-07 19:02:36');
INSERT INTO `yz_skill` VALUES ('67', '足部中频理疗', '38.00', '68.00', '2018-01-07 19:02:11', null);
INSERT INTO `yz_skill` VALUES ('68', '暖宫中频理疗', '28.00', '58.00', '2018-01-07 19:03:33', null);

-- ----------------------------
-- Table structure for yz_timeframe
-- ----------------------------
DROP TABLE IF EXISTS `yz_timeframe`;
CREATE TABLE `yz_timeframe` (
  `id` varchar(255) NOT NULL COMMENT '预约时间id',
  `timeframe` varchar(255) DEFAULT NULL COMMENT '预约时段',
  `status` varchar(10) DEFAULT NULL COMMENT '状态(:1:已被预约 0：空闲)',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yz_timeframe
-- ----------------------------
INSERT INTO `yz_timeframe` VALUES ('06b769eaa8934846b79ca241cc63898b', '18:00-19:00', '1', '2018-01-11 13:26:20', null);
INSERT INTO `yz_timeframe` VALUES ('1', '10:00-11:00', '1', '2017-12-04 13:50:33', '2018-01-07 17:41:25');
INSERT INTO `yz_timeframe` VALUES ('11fbb1198616441ea37b845c07df0d99', '11:00-12:00', '1', '2017-12-23 18:05:59', '2018-01-07 17:41:50');
INSERT INTO `yz_timeframe` VALUES ('2', '12:00-13:00', '1', '2017-12-11 19:07:24', '2018-01-07 17:42:04');
INSERT INTO `yz_timeframe` VALUES ('3', '13:00-14:00', '1', '2017-12-11 19:06:21', '2018-01-07 17:42:12');
INSERT INTO `yz_timeframe` VALUES ('3335fc231514472f9bd5cedeb5f6d68c', '15:00-16:00', '1', '2018-01-11 13:25:32', null);
INSERT INTO `yz_timeframe` VALUES ('4e772aa189a242de9a50e39b808729ce', '14:00-15:00', '1', '2018-01-11 13:27:00', null);
INSERT INTO `yz_timeframe` VALUES ('4fd80379afe04a36b8d3174d63a6c351', '17:00-18:00', '1', '2018-01-11 13:26:04', null);
INSERT INTO `yz_timeframe` VALUES ('679ca7130dc2423b9eff7c8ff2e37898', '16:00-17:00', '1', '2017-12-23 18:07:05', '2018-01-11 13:25:48');
