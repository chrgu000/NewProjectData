/*
Navicat MySQL Data Transfer

Source Server         : 120.78.58.110
Source Server Version : 50547
Source Host           : 120.78.58.110:3306
Source Database       : qlh_shoes

Target Server Type    : MYSQL
Target Server Version : 50547
File Encoding         : 65001

Date: 2018-07-02 15:37:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for acc_property
-- ----------------------------
DROP TABLE IF EXISTS `acc_property`;
CREATE TABLE `acc_property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `propertyId` int(11) DEFAULT NULL COMMENT '规格id',
  `name` varchar(100) DEFAULT NULL COMMENT '子属性名称',
  `remark` varchar(100) DEFAULT NULL COMMENT '子属性备注',
  `paixu` varchar(10) DEFAULT NULL COMMENT '排序',
  `dateAdd` datetime DEFAULT NULL,
  `userId` varchar(11) DEFAULT NULL,
  `isUse` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acc_property
-- ----------------------------
INSERT INTO `acc_property` VALUES ('16', '13', '红色', '', '0', '2017-11-22 11:29:33', 'wangjianlin', '1');
INSERT INTO `acc_property` VALUES ('17', '8', '40', '', '0', '2017-11-22 11:30:12', 'wangjianlin', '1');
INSERT INTO `acc_property` VALUES ('18', '8', '41', '', '1', '2017-11-22 11:30:32', 'wangjianlin', '1');
INSERT INTO `acc_property` VALUES ('19', '8', '42', '', '2', '2017-11-22 11:30:46', 'wangjianlin', '1');
INSERT INTO `acc_property` VALUES ('20', '13', '绿色', '', '0', '2017-11-22 11:31:15', 'wangjianlin', '1');
INSERT INTO `acc_property` VALUES ('21', '14', '大码', '大码', '0', '2017-11-23 18:03:47', 'wangjianlin', '1');
INSERT INTO `acc_property` VALUES ('22', '14', '中码', '中码', '1', '2017-11-23 18:03:56', 'wangjianlin', '1');
INSERT INTO `acc_property` VALUES ('23', '14', '小码', '小码', '2', '2017-11-23 18:04:11', 'wangjianlin', '1');
INSERT INTO `acc_property` VALUES ('24', '15', '1', '1', '1', '2017-11-23 19:08:34', 'wangjianlin', '1');
INSERT INTO `acc_property` VALUES ('150', '13', '黄色', '', '1', '2017-11-21 18:55:16', 'wangjianlin', '1');
INSERT INTO `acc_property` VALUES ('151', '8', '43', '', '3', '2018-01-11 14:38:22', 'wangjianlin', '1');
INSERT INTO `acc_property` VALUES ('152', '13', '黑色', '', '5', '2018-01-11 14:39:34', 'wangjianlin', '1');

-- ----------------------------
-- Table structure for banners
-- ----------------------------
DROP TABLE IF EXISTS `banners`;
CREATE TABLE `banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `linkUrl` varchar(255) DEFAULT NULL COMMENT '图片跳转地址',
  `picUrl` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `status` int(10) DEFAULT NULL,
  `statusStr` varchar(10) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL COMMENT '图片类型',
  `userId` varchar(50) DEFAULT NULL,
  `dateAdd` datetime DEFAULT NULL,
  `paixu` int(11) DEFAULT NULL,
  `businessId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of banners
-- ----------------------------
INSERT INTO `banners` VALUES ('1', '', '/qlhxcx/main/upload/20180116142556_962.jpg', '', '奥康冬季热卖', '1', '显示', null, 'wangjianlin', '2018-01-16 14:30:17', '1', null);
INSERT INTO `banners` VALUES ('2', '', '/qlhxcx/main/upload/20180116143047_251.jpg', '', '今日最大牌', '1', '显示', null, 'wangjianlin', '2018-01-16 14:31:00', '3', null);

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL COMMENT '分类名称',
  `type` varchar(32) DEFAULT NULL COMMENT '分类类型',
  `keyy` varchar(32) DEFAULT NULL COMMENT '分类编号',
  `icon` varchar(225) DEFAULT NULL COMMENT '分类图片',
  `isUse` varchar(10) DEFAULT NULL COMMENT '是否启用',
  `paixu` int(10) DEFAULT NULL COMMENT '排序',
  `dateAdd` datetime DEFAULT NULL COMMENT '添加时间',
  `userId` int(50) DEFAULT NULL COMMENT '用户id',
  `levels` int(20) DEFAULT NULL COMMENT '等级',
  `pid` int(20) DEFAULT NULL COMMENT '父类型id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('11', '运动鞋', ' 9991      ', ' 9991       ', '/qlhxcx/main/upload/20171128102714_991.png', '0', '1', '2017-11-20 14:59:20', null, '2', '1');
INSERT INTO `category` VALUES ('17', '帆布鞋', '34235  ', '34235   ', '/qlhxcx/main/upload/20171128102708_165.png', '0', '3', '2017-11-20 16:07:12', null, '2', null);
INSERT INTO `category` VALUES ('19', '休闲鞋', '', '12344', '', '0', '4', '2018-01-11 10:35:17', null, '1', null);
INSERT INTO `category` VALUES ('20', '高跟鞋', '', '', '', '0', '5', '2018-01-11 10:35:41', null, '1', null);
INSERT INTO `category` VALUES ('21', '平底鞋', '', '', '', '0', '6', '2018-01-11 10:36:41', null, '1', null);
INSERT INTO `category` VALUES ('22', '跑鞋', '跑鞋', '1', '/qlhxcx/main/upload/20180118110725_963.jpg', '1', '1', '2018-01-18 11:07:38', null, '1', null);
INSERT INTO `category` VALUES ('23', '板鞋', '板鞋', '2', '/qlhxcx/main/upload/20180118110825_827.jpg', '1', '2', '2018-01-18 11:08:33', null, '1', null);
INSERT INTO `category` VALUES ('24', '帆布鞋', '帆布鞋', '3', '/qlhxcx/main/upload/20180118110912_970.jpg', '1', '3', '2018-01-18 11:09:22', null, '1', null);
INSERT INTO `category` VALUES ('25', '高跟鞋', '高跟鞋', '4', '', '1', '4', '2018-01-18 11:11:12', null, '1', null);

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int(15) NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `categoryId` varchar(50) DEFAULT NULL COMMENT '类型id',
  `name` varchar(100) DEFAULT NULL COMMENT '商品名字',
  `characteristic` varchar(255) DEFAULT NULL COMMENT '商品特色',
  `paixu` varchar(10) DEFAULT NULL COMMENT '商品排序',
  `recommendStatus` varchar(10) DEFAULT NULL COMMENT '是否推荐',
  `status` varchar(10) DEFAULT NULL COMMENT '商品状态',
  `pic` varchar(255) DEFAULT NULL COMMENT '商品图片',
  `content` text COMMENT '商品介绍',
  `originalPrice` float(10,2) DEFAULT NULL COMMENT '商品原价',
  `minPrice` float(10,2) DEFAULT NULL COMMENT '商品现价',
  `stores` int(20) DEFAULT NULL COMMENT '商品库存',
  `weight` float(20,0) DEFAULT NULL COMMENT '商品重量',
  `propertyIds` varchar(20) DEFAULT NULL COMMENT '商品规格尺寸',
  `barCode` varchar(50) DEFAULT NULL COMMENT '商品条码',
  `commission` float(10,0) DEFAULT NULL COMMENT '分享奖励',
  `commissionType` int(10) DEFAULT NULL,
  `dateAdd` datetime DEFAULT NULL,
  `dateStart` datetime DEFAULT NULL COMMENT '开售时间',
  `dateUpdate` datetime DEFAULT NULL COMMENT '修改时间',
  `logisticsId` int(10) DEFAULT NULL COMMENT '物流id',
  `numberOrders` int(10) DEFAULT NULL COMMENT '订单数量',
  `shopId` int(10) DEFAULT NULL,
  `statusStr` varchar(255) DEFAULT NULL,
  `userId` varchar(50) DEFAULT NULL COMMENT '用户id',
  `videoId` varchar(50) DEFAULT NULL COMMENT '视频id',
  `views` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=669512940 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('122175887', '22', '林宁跑鞋', '轻便，好穿', '1', '1', '1', '/qlhxcx/main/upload/20180118112602_18.jpg', '<img src=\"/qlhxcx/main/upload/productDetailsimage/20180118/20180118111938_670.jpg\" alt=\"\" /><img src=\"/qlhxcx/main/upload/productDetailsimage/20180118/20180118111949_665.jpg\" alt=\"\" /><img src=\"/qlhxcx/main/upload/productDetailsimage/20180118/20180118111953_161.jpg\" alt=\"\" /><img src=\"/qlhxcx/main/upload/productDetailsimage/20180118/20180118111958_97.jpg\" alt=\"\" /><img src=\"/qlhxcx/main/upload/productDetailsimage/20180118/20180118112003_343.jpg\" alt=\"\" /><img src=\"/qlhxcx/main/upload/productDetailsimage/20180118/20180118112008_12.jpg\" alt=\"\" /><img src=\"/qlhxcx/main/upload/productDetailsimage/20180118/20180118112012_0.jpg\" alt=\"\" /><img src=\"/qlhxcx/main/upload/productDetailsimage/20180118/20180118112018_315.jpg\" alt=\"\" /><img src=\"/qlhxcx/main/upload/productDetailsimage/20180118/20180118112024_537.jpg\" alt=\"\" /><img src=\"/qlhxcx/main/upload/productDetailsimage/20180118/20180118112030_254.jpg\" alt=\"\" />', '230.00', '200.00', '1600', '25', '8,13', null, null, null, '2018-01-18 11:20:30', null, '2018-01-18 11:26:05', '-140502077', null, null, null, 'wangjianlin', null, null);
INSERT INTO `goods` VALUES ('122312860', '22', 'Adidas三叶草系列ZX755', '好穿没话说啊', '2', '1', '1', '/qlhxcx/main/upload/20180118112110_276.jpg', '<img src=\"/qlhxcx/main/upload/productDetailsimage/20180118/20180118112228_202.jpg\" alt=\"\" /><img src=\"/qlhxcx/main/upload/productDetailsimage/20180118/20180118112232_846.jpg\" alt=\"\" /><img src=\"/qlhxcx/main/upload/productDetailsimage/20180118/20180118112237_191.jpg\" alt=\"\" /><img src=\"/qlhxcx/main/upload/productDetailsimage/20180118/20180118112242_578.jpg\" alt=\"\" /><img src=\"/qlhxcx/main/upload/productDetailsimage/20180118/20180118112247_17.jpg\" alt=\"\" />', '888.00', '669.00', '1600', '50', '8,13', null, null, null, '2018-01-18 11:22:48', null, null, '-140502077', null, null, null, 'wangjianlin', null, null);
INSERT INTO `goods` VALUES ('122761208', '25', '高跟鞋', '高僧', '4', '1', '1', '/qlhxcx/main/upload/20180118113344_199.jpg', '<img src=\"/qlhxcx/main/upload/productDetailsimage/20180118/20180118112944_442.jpg\" alt=\"\" /><img src=\"/qlhxcx/main/upload/productDetailsimage/20180118/20180118112950_909.jpg\" alt=\"\" /><img src=\"/qlhxcx/main/upload/productDetailsimage/20180118/20180118112959_262.jpg\" alt=\"\" /><img src=\"/qlhxcx/main/upload/productDetailsimage/20180118/20180118113007_801.jpg\" alt=\"\" /><img src=\"/qlhxcx/main/upload/productDetailsimage/20180118/20180118113015_687.jpg\" alt=\"\" />', '200.00', '159.00', '1600', '50', '8,13', null, null, null, '2018-01-18 11:30:16', null, '2018-01-18 11:33:46', '-140502077', null, null, null, 'wangjianlin', null, null);
INSERT INTO `goods` VALUES ('669512939', '24', '骆驼牌男士休闲鞋', '6', '6', '1', '1', '/qlhxcx/main/upload/20180130171040_189.jpg', '<img src=\"/qlhxcx/main/upload/productDetailsimage/20180130/20180130171520_678.jpg\" alt=\"\" /><img src=\"/qlhxcx/main/upload/productDetailsimage/20180130/20180130171530_320.jpg\" alt=\"\" /><img src=\"/qlhxcx/main/upload/productDetailsimage/20180130/20180130171540_248.jpg\" alt=\"\" /><img src=\"/qlhxcx/main/upload/productDetailsimage/20180130/20180130171557_731.jpg\" alt=\"\" />', '129.00', '129.00', '355', '0', '8', null, null, null, '2018-01-24 19:22:49', null, '2018-01-30 17:16:04', '-140502077', null, null, null, 'wangjianlin', null, null);

-- ----------------------------
-- Table structure for pic
-- ----------------------------
DROP TABLE IF EXISTS `pic`;
CREATE TABLE `pic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goodsId` int(15) DEFAULT NULL,
  `pic` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pic
-- ----------------------------
INSERT INTO `pic` VALUES ('24', '1001', '/qlhxcx/main/upload/20171127161956_250.png', 'wangjianlin');
INSERT INTO `pic` VALUES ('29', '1002', '/qlhxcx/main/upload/20180111104928_540.jpg', 'wangjianlin');
INSERT INTO `pic` VALUES ('32', '1003', '/qlhxcx/main/upload/20180111105051_175.jpg', 'wangjianlin');
INSERT INTO `pic` VALUES ('33', '1004', '/qlhxcx/main/upload/20180111110416_213.png', 'wangjianlin');
INSERT INTO `pic` VALUES ('92', '1005', '', 'wangjianlin');
INSERT INTO `pic` VALUES ('93', '122175887', '', 'wangjianlin');
INSERT INTO `pic` VALUES ('94', '122312860', '/qlhxcx/main/upload/20180118112110_276.jpg', 'wangjianlin');
INSERT INTO `pic` VALUES ('95', '122761208', '/qlhxcx/main/upload/20180118112727_313.jpg', 'wangjianlin');
INSERT INTO `pic` VALUES ('96', '669234032', '/qlhxcx/main/upload/20180124191740_163.jpg', 'wangjianlin');
INSERT INTO `pic` VALUES ('97', '669240942', '/qlhxcx/main/upload/20180124191740_163.jpg', 'wangjianlin');
INSERT INTO `pic` VALUES ('98', '669248714', '/qlhxcx/main/upload/20180124191740_163.jpg', 'wangjianlin');
INSERT INTO `pic` VALUES ('99', '669512939', '/qlhxcx/main/upload/20180124191740_163.jpg', 'wangjianlin');
INSERT INTO `pic` VALUES ('100', '1760093171', '', 'wangjianlin');
INSERT INTO `pic` VALUES ('101', '1760109865', '', 'wangjianlin');
INSERT INTO `pic` VALUES ('102', '1760116536', '', 'wangjianlin');
INSERT INTO `pic` VALUES ('103', '1760128165', '/qlhxcx/main/upload/20180206101940_177.jpg', 'wangjianlin');
INSERT INTO `pic` VALUES ('104', '1760143426', '/qlhxcx/main/upload/20180206101940_177.jpg', 'wangjianlin');
INSERT INTO `pic` VALUES ('105', '1760211653', '/qlhxcx/main/upload/20180206101940_177.jpg', 'wangjianlin');
INSERT INTO `pic` VALUES ('106', '1760273951', '/qlhxcx/main/upload/20180206101940_177.jpg', 'wangjianlin');

-- ----------------------------
-- Table structure for qlh_backstage_user_t
-- ----------------------------
DROP TABLE IF EXISTS `qlh_backstage_user_t`;
CREATE TABLE `qlh_backstage_user_t` (
  `BACKSTAGE_USER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_NAME` varchar(100) NOT NULL,
  `PASSWORD` varchar(300) NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `ADDRESS` varchar(500) NOT NULL,
  `CITY` varchar(300) NOT NULL,
  `COLUMNS1` varchar(2000) DEFAULT NULL,
  `COLUMNS2` varchar(2000) DEFAULT NULL,
  `COLUMNS3` varchar(2000) DEFAULT NULL,
  `COLUMNS4` varchar(2000) DEFAULT NULL,
  `COLUMNS5` varchar(2000) DEFAULT NULL,
  `NAME` varchar(300) DEFAULT NULL,
  `PHONE_NUMBER` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`BACKSTAGE_USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1008 DEFAULT CHARSET=utf8 COMMENT='后台管理用户表';

-- ----------------------------
-- Records of qlh_backstage_user_t
-- ----------------------------
INSERT INTO `qlh_backstage_user_t` VALUES ('1001', 'wangjianlin', 'e10adc3949ba59abbe56e057f20f883e', '2017-09-21 17:35:52', '啊', '重庆市', '', '', '', '', '', '王建林', '15818790222');
INSERT INTO `qlh_backstage_user_t` VALUES ('1002', 'wangsicong', 'e10adc3949ba59abbe56e057f20f883e', '2017-09-21 17:35:52', '', '大连市', '', '', '', '', '', '王思聪', '15818790201');
INSERT INTO `qlh_backstage_user_t` VALUES ('1003', 'wangjunkai', 'e10adc3949ba59abbe56e057f20f883e', '2017-09-21 17:35:52', '', '北京市', '', '', '', '', '', '王俊凯', '15818790202');
INSERT INTO `qlh_backstage_user_t` VALUES ('1004', '13467396891', '202cb962ac59075b964b07152d234b70', '2017-11-14 16:00:11', '123213', '重庆市', null, null, null, null, null, '123213', '13467396891');
INSERT INTO `qlh_backstage_user_t` VALUES ('1005', '13725447440', '202cb962ac59075b964b07152d234b70', '2017-11-14 16:02:10', '123', '朝阳市', null, null, null, null, null, '123', '13725447440');
INSERT INTO `qlh_backstage_user_t` VALUES ('1006', '15874615860', '202cb962ac59075b964b07152d234b70', '2017-11-14 16:15:58', '213', '朔州市', null, null, null, null, null, '213', '15874615860');
INSERT INTO `qlh_backstage_user_t` VALUES ('1007', '15899776132', '202cb962ac59075b964b07152d234b70', '2017-11-28 09:54:28', '1', '上海市', null, null, null, null, null, '1', '15899776132');

-- ----------------------------
-- Table structure for qlh_role_t
-- ----------------------------
DROP TABLE IF EXISTS `qlh_role_t`;
CREATE TABLE `qlh_role_t` (
  `ROLE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ROLE_NAME` varchar(100) NOT NULL,
  `ROLE_DESC` varchar(500) DEFAULT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `COLUMNS1` varchar(2000) DEFAULT NULL,
  `COLUMNS2` varchar(2000) DEFAULT NULL,
  `COLUMNS3` varchar(2000) DEFAULT NULL,
  `COLUMNS4` varchar(2000) DEFAULT NULL,
  `COLUMNS5` varchar(2000) DEFAULT NULL,
  `ROLE_CODE` varchar(500) NOT NULL,
  PRIMARY KEY (`ROLE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10003 DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of qlh_role_t
-- ----------------------------
INSERT INTO `qlh_role_t` VALUES ('10001', '店铺', '店铺角色', '2017-09-21 17:35:52', '', '', '', '', '', 'DLS');
INSERT INTO `qlh_role_t` VALUES ('10002', '总公司', '总公司角色', '2017-09-21 17:35:52', '', '', '', '', '', 'ZGS');

-- ----------------------------
-- Table structure for qlh_user_role_t
-- ----------------------------
DROP TABLE IF EXISTS `qlh_user_role_t`;
CREATE TABLE `qlh_user_role_t` (
  `USER_ROLE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `BACKSTAGE_USER_ID` int(11) NOT NULL,
  `ROLE_ID` int(11) NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `COLUMNS1` varchar(2000) DEFAULT NULL,
  `COLUMNS2` varchar(2000) DEFAULT NULL,
  `COLUMNS3` varchar(2000) DEFAULT NULL,
  `COLUMNS4` varchar(2000) DEFAULT NULL,
  `COLUMNS5` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`USER_ROLE_ID`),
  KEY `FK_Reference_1` (`BACKSTAGE_USER_ID`),
  KEY `FK_Reference_2` (`ROLE_ID`),
  CONSTRAINT `qlh_user_role_t_ibfk_1` FOREIGN KEY (`BACKSTAGE_USER_ID`) REFERENCES `qlh_backstage_user_t` (`BACKSTAGE_USER_ID`),
  CONSTRAINT `qlh_user_role_t_ibfk_2` FOREIGN KEY (`ROLE_ID`) REFERENCES `qlh_role_t` (`ROLE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='用户角色表';

-- ----------------------------
-- Records of qlh_user_role_t
-- ----------------------------
INSERT INTO `qlh_user_role_t` VALUES ('1', '1001', '10002', '2017-09-21 17:35:52', '', '', '', '', '');
INSERT INTO `qlh_user_role_t` VALUES ('2', '1002', '10001', '2017-09-21 17:35:52', '', '', '', '', '');
INSERT INTO `qlh_user_role_t` VALUES ('3', '1003', '10001', '2017-09-21 17:35:52', '', '', '', '', '');
INSERT INTO `qlh_user_role_t` VALUES ('4', '1004', '10001', '2017-11-14 16:00:11', null, null, null, null, null);
INSERT INTO `qlh_user_role_t` VALUES ('5', '1005', '10001', '2017-11-14 16:02:11', null, null, null, null, null);
INSERT INTO `qlh_user_role_t` VALUES ('6', '1006', '10001', '2017-11-14 16:15:58', null, null, null, null, null);
INSERT INTO `qlh_user_role_t` VALUES ('7', '1007', '10001', '2017-11-28 09:54:28', null, null, null, null, null);

-- ----------------------------
-- Table structure for specs
-- ----------------------------
DROP TABLE IF EXISTS `specs`;
CREATE TABLE `specs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `paixu` int(10) DEFAULT NULL,
  `userId` varchar(50) DEFAULT NULL,
  `dateAdd` datetime DEFAULT NULL,
  `dateUpdate` datetime DEFAULT NULL,
  `isUse` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of specs
-- ----------------------------
INSERT INTO `specs` VALUES ('8', '尺码', '1', 'wangjianlin', '2017-11-21 10:32:50', '2018-01-18 10:58:52', '1');
INSERT INTO `specs` VALUES ('13', '颜色', '2', 'wangjianlin', '2017-11-21 11:00:59', '2018-01-18 10:58:58', '1');

-- ----------------------------
-- Table structure for spguige
-- ----------------------------
DROP TABLE IF EXISTS `spguige`;
CREATE TABLE `spguige` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品规格 的价格信息',
  `goodsId` varchar(50) DEFAULT NULL,
  `minPrice` float(11,2) DEFAULT NULL,
  `originalPrice` float(11,2) DEFAULT NULL,
  `stores` int(11) DEFAULT NULL,
  `sonSpeId` varchar(50) DEFAULT NULL COMMENT '规格子表',
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1292 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of spguige
-- ----------------------------
INSERT INTO `spguige` VALUES ('981', '-113783699', '129.00', '229.00', '10', '16', '-红色');
INSERT INTO `spguige` VALUES ('982', '-113783699', '129.00', '229.00', '0', '20', '-绿色');
INSERT INTO `spguige` VALUES ('983', '-113783699', '129.00', '229.00', '1', '150', '-黄色');
INSERT INTO `spguige` VALUES ('984', '-113783699', '129.00', '229.00', '22', '152', '-黑色');
INSERT INTO `spguige` VALUES ('985', '-113783002', '129.00', '229.00', '10', '16', '-红色');
INSERT INTO `spguige` VALUES ('986', '-113783002', '129.00', '229.00', '0', '20', '-绿色');
INSERT INTO `spguige` VALUES ('987', '-113783002', '129.00', '229.00', '1', '150', '-黄色');
INSERT INTO `spguige` VALUES ('988', '-113783002', '129.00', '229.00', '22', '152', '-黑色');
INSERT INTO `spguige` VALUES ('989', '-113782750', '129.00', '229.00', '10', '16', '-红色');
INSERT INTO `spguige` VALUES ('990', '-113782750', '129.00', '229.00', '0', '20', '-绿色');
INSERT INTO `spguige` VALUES ('991', '-113782750', '129.00', '229.00', '1', '150', '-黄色');
INSERT INTO `spguige` VALUES ('992', '-113782750', '129.00', '229.00', '22', '152', '-黑色');
INSERT INTO `spguige` VALUES ('993', '-113782557', '129.00', '229.00', '10', '16', '-红色');
INSERT INTO `spguige` VALUES ('994', '-113782557', '129.00', '229.00', '0', '20', '-绿色');
INSERT INTO `spguige` VALUES ('995', '-113782557', '129.00', '229.00', '1', '150', '-黄色');
INSERT INTO `spguige` VALUES ('996', '-113782557', '129.00', '229.00', '22', '152', '-黑色');
INSERT INTO `spguige` VALUES ('997', '-113782322', '129.00', '229.00', '10', '16', '-红色');
INSERT INTO `spguige` VALUES ('998', '-113782322', '129.00', '229.00', '0', '20', '-绿色');
INSERT INTO `spguige` VALUES ('999', '-113782322', '129.00', '229.00', '1', '150', '-黄色');
INSERT INTO `spguige` VALUES ('1000', '-113782322', '129.00', '229.00', '22', '152', '-黑色');
INSERT INTO `spguige` VALUES ('1001', '-113782120', '129.00', '229.00', '10', '16', '-红色');
INSERT INTO `spguige` VALUES ('1002', '-113782120', '129.00', '229.00', '0', '20', '-绿色');
INSERT INTO `spguige` VALUES ('1003', '-113782120', '129.00', '229.00', '1', '150', '-黄色');
INSERT INTO `spguige` VALUES ('1004', '-113782120', '129.00', '229.00', '22', '152', '-黑色');
INSERT INTO `spguige` VALUES ('1005', '-113781947', '129.00', '229.00', '10', '16', '-红色');
INSERT INTO `spguige` VALUES ('1006', '-113781947', '129.00', '229.00', '0', '20', '-绿色');
INSERT INTO `spguige` VALUES ('1007', '-113781947', '129.00', '229.00', '1', '150', '-黄色');
INSERT INTO `spguige` VALUES ('1008', '-113781947', '129.00', '229.00', '22', '152', '-黑色');
INSERT INTO `spguige` VALUES ('1009', '-113781733', '129.00', '229.00', '10', '16', '-红色');
INSERT INTO `spguige` VALUES ('1010', '-113781733', '129.00', '229.00', '0', '20', '-绿色');
INSERT INTO `spguige` VALUES ('1011', '-113781733', '129.00', '229.00', '1', '150', '-黄色');
INSERT INTO `spguige` VALUES ('1012', '-113781733', '129.00', '229.00', '22', '152', '-黑色');
INSERT INTO `spguige` VALUES ('1013', '-113781528', '129.00', '229.00', '10', '16', '-红色');
INSERT INTO `spguige` VALUES ('1014', '-113781528', '129.00', '229.00', '0', '20', '-绿色');
INSERT INTO `spguige` VALUES ('1015', '-113781528', '129.00', '229.00', '1', '150', '-黄色');
INSERT INTO `spguige` VALUES ('1016', '-113781528', '129.00', '229.00', '22', '152', '-黑色');
INSERT INTO `spguige` VALUES ('1017', '-113781308', '129.00', '229.00', '10', '16', '-红色');
INSERT INTO `spguige` VALUES ('1018', '-113781308', '129.00', '229.00', '0', '20', '-绿色');
INSERT INTO `spguige` VALUES ('1019', '-113781308', '129.00', '229.00', '1', '150', '-黄色');
INSERT INTO `spguige` VALUES ('1020', '-113781308', '129.00', '229.00', '22', '152', '-黑色');
INSERT INTO `spguige` VALUES ('1021', '-113781106', '129.00', '229.00', '10', '16', '-红色');
INSERT INTO `spguige` VALUES ('1022', '-113781106', '129.00', '229.00', '0', '20', '-绿色');
INSERT INTO `spguige` VALUES ('1023', '-113781106', '129.00', '229.00', '1', '150', '-黄色');
INSERT INTO `spguige` VALUES ('1024', '-113781106', '129.00', '229.00', '22', '152', '-黑色');
INSERT INTO `spguige` VALUES ('1025', '-113780821', '129.00', '229.00', '10', '16', '-红色');
INSERT INTO `spguige` VALUES ('1026', '-113780821', '129.00', '229.00', '0', '20', '-绿色');
INSERT INTO `spguige` VALUES ('1027', '-113780821', '129.00', '229.00', '1', '150', '-黄色');
INSERT INTO `spguige` VALUES ('1028', '-113780821', '129.00', '229.00', '22', '152', '-黑色');
INSERT INTO `spguige` VALUES ('1029', '-113780609', '129.00', '229.00', '10', '16', '-红色');
INSERT INTO `spguige` VALUES ('1030', '-113780609', '129.00', '229.00', '0', '20', '-绿色');
INSERT INTO `spguige` VALUES ('1031', '-113780609', '129.00', '229.00', '1', '150', '-黄色');
INSERT INTO `spguige` VALUES ('1032', '-113780609', '129.00', '229.00', '22', '152', '-黑色');
INSERT INTO `spguige` VALUES ('1033', '-113780265', '129.00', '229.00', '10', '16', '-红色');
INSERT INTO `spguige` VALUES ('1034', '-113780265', '129.00', '229.00', '0', '20', '-绿色');
INSERT INTO `spguige` VALUES ('1035', '-113780265', '129.00', '229.00', '1', '150', '-黄色');
INSERT INTO `spguige` VALUES ('1036', '-113780265', '129.00', '229.00', '22', '152', '-黑色');
INSERT INTO `spguige` VALUES ('1037', '-113780033', '129.00', '229.00', '10', '16', '-红色');
INSERT INTO `spguige` VALUES ('1038', '-113780033', '129.00', '229.00', '0', '20', '-绿色');
INSERT INTO `spguige` VALUES ('1039', '-113780033', '129.00', '229.00', '1', '150', '-黄色');
INSERT INTO `spguige` VALUES ('1040', '-113780033', '129.00', '229.00', '22', '152', '-黑色');
INSERT INTO `spguige` VALUES ('1041', '-113779838', '129.00', '229.00', '10', '16', '-红色');
INSERT INTO `spguige` VALUES ('1042', '-113779838', '129.00', '229.00', '0', '20', '-绿色');
INSERT INTO `spguige` VALUES ('1043', '-113779838', '129.00', '229.00', '1', '150', '-黄色');
INSERT INTO `spguige` VALUES ('1044', '-113779838', '129.00', '229.00', '22', '152', '-黑色');
INSERT INTO `spguige` VALUES ('1045', '-113779281', '129.00', '229.00', '10', '16', '-红色');
INSERT INTO `spguige` VALUES ('1046', '-113779281', '129.00', '229.00', '0', '20', '-绿色');
INSERT INTO `spguige` VALUES ('1047', '-113779281', '129.00', '229.00', '1', '150', '-黄色');
INSERT INTO `spguige` VALUES ('1048', '-113779281', '129.00', '229.00', '22', '152', '-黑色');
INSERT INTO `spguige` VALUES ('1049', '-113778504', '129.00', '229.00', '10', '16', '-红色');
INSERT INTO `spguige` VALUES ('1050', '-113778504', '129.00', '229.00', '0', '20', '-绿色');
INSERT INTO `spguige` VALUES ('1051', '-113778504', '129.00', '229.00', '1', '150', '-黄色');
INSERT INTO `spguige` VALUES ('1052', '-113778504', '129.00', '229.00', '22', '152', '-黑色');
INSERT INTO `spguige` VALUES ('1053', '-113777771', '129.00', '229.00', '10', '16', '-红色');
INSERT INTO `spguige` VALUES ('1054', '-113777771', '129.00', '229.00', '0', '20', '-绿色');
INSERT INTO `spguige` VALUES ('1055', '-113777771', '129.00', '229.00', '1', '150', '-黄色');
INSERT INTO `spguige` VALUES ('1056', '-113777771', '129.00', '229.00', '22', '152', '-黑色');
INSERT INTO `spguige` VALUES ('1057', '-113776595', '129.00', '229.00', '10', '16', '-红色');
INSERT INTO `spguige` VALUES ('1058', '-113776595', '129.00', '229.00', '0', '20', '-绿色');
INSERT INTO `spguige` VALUES ('1059', '-113776595', '129.00', '229.00', '1', '150', '-黄色');
INSERT INTO `spguige` VALUES ('1060', '-113776595', '129.00', '229.00', '22', '152', '-黑色');
INSERT INTO `spguige` VALUES ('1124', '122312860', '669.00', '888.00', '100', '17-16', '-40-红色');
INSERT INTO `spguige` VALUES ('1125', '122312860', '669.00', '888.00', '100', '17-20', '-40-绿色');
INSERT INTO `spguige` VALUES ('1126', '122312860', '669.00', '888.00', '100', '17-150', '-40-黄色');
INSERT INTO `spguige` VALUES ('1127', '122312860', '669.00', '888.00', '100', '17-152', '-40-黑色');
INSERT INTO `spguige` VALUES ('1128', '122312860', '669.00', '888.00', '100', '18-16', '-41-红色');
INSERT INTO `spguige` VALUES ('1129', '122312860', '669.00', '888.00', '100', '18-20', '-41-绿色');
INSERT INTO `spguige` VALUES ('1130', '122312860', '669.00', '888.00', '100', '18-150', '-41-黄色');
INSERT INTO `spguige` VALUES ('1131', '122312860', '669.00', '888.00', '100', '18-152', '-41-黑色');
INSERT INTO `spguige` VALUES ('1132', '122312860', '669.00', '888.00', '100', '19-16', '-42-红色');
INSERT INTO `spguige` VALUES ('1133', '122312860', '669.00', '888.00', '100', '19-20', '-42-绿色');
INSERT INTO `spguige` VALUES ('1134', '122312860', '669.00', '888.00', '100', '19-150', '-42-黄色');
INSERT INTO `spguige` VALUES ('1135', '122312860', '669.00', '888.00', '100', '19-152', '-42-黑色');
INSERT INTO `spguige` VALUES ('1136', '122312860', '669.00', '888.00', '100', '151-16', '-43-红色');
INSERT INTO `spguige` VALUES ('1137', '122312860', '669.00', '888.00', '100', '151-20', '-43-绿色');
INSERT INTO `spguige` VALUES ('1138', '122312860', '669.00', '888.00', '100', '151-150', '-43-黄色');
INSERT INTO `spguige` VALUES ('1139', '122312860', '669.00', '888.00', '100', '151-152', '-43-黑色');
INSERT INTO `spguige` VALUES ('1156', '122175887', '200.00', '230.00', '100', '17-16', '-40-红色');
INSERT INTO `spguige` VALUES ('1157', '122175887', '200.00', '230.00', '100', '17-20', '-40-绿色');
INSERT INTO `spguige` VALUES ('1158', '122175887', '200.00', '230.00', '100', '17-150', '-40-黄色');
INSERT INTO `spguige` VALUES ('1159', '122175887', '200.00', '230.00', '100', '17-152', '-40-黑色');
INSERT INTO `spguige` VALUES ('1160', '122175887', '200.00', '230.00', '100', '18-16', '-41-红色');
INSERT INTO `spguige` VALUES ('1161', '122175887', '200.00', '230.00', '100', '18-20', '-41-绿色');
INSERT INTO `spguige` VALUES ('1162', '122175887', '200.00', '230.00', '100', '18-150', '-41-黄色');
INSERT INTO `spguige` VALUES ('1163', '122175887', '200.00', '230.00', '100', '18-152', '-41-黑色');
INSERT INTO `spguige` VALUES ('1164', '122175887', '200.00', '230.00', '100', '19-16', '-42-红色');
INSERT INTO `spguige` VALUES ('1165', '122175887', '200.00', '230.00', '100', '19-20', '-42-绿色');
INSERT INTO `spguige` VALUES ('1166', '122175887', '200.00', '230.00', '100', '19-150', '-42-黄色');
INSERT INTO `spguige` VALUES ('1167', '122175887', '200.00', '230.00', '100', '19-152', '-42-黑色');
INSERT INTO `spguige` VALUES ('1168', '122175887', '200.00', '230.00', '100', '151-16', '-43-红色');
INSERT INTO `spguige` VALUES ('1169', '122175887', '200.00', '230.00', '100', '151-20', '-43-绿色');
INSERT INTO `spguige` VALUES ('1170', '122175887', '200.00', '230.00', '100', '151-150', '-43-黄色');
INSERT INTO `spguige` VALUES ('1171', '122175887', '200.00', '230.00', '100', '151-152', '-43-黑色');
INSERT INTO `spguige` VALUES ('1204', '122761208', '159.00', '200.00', '100', '17-16', '-40-红色');
INSERT INTO `spguige` VALUES ('1205', '122761208', '159.00', '200.00', '100', '17-20', '-40-绿色');
INSERT INTO `spguige` VALUES ('1206', '122761208', '159.00', '200.00', '100', '17-150', '-40-黄色');
INSERT INTO `spguige` VALUES ('1207', '122761208', '159.00', '200.00', '100', '17-152', '-40-黑色');
INSERT INTO `spguige` VALUES ('1208', '122761208', '159.00', '200.00', '100', '18-16', '-41-红色');
INSERT INTO `spguige` VALUES ('1209', '122761208', '159.00', '200.00', '100', '18-20', '-41-绿色');
INSERT INTO `spguige` VALUES ('1210', '122761208', '159.00', '200.00', '100', '18-150', '-41-黄色');
INSERT INTO `spguige` VALUES ('1211', '122761208', '159.00', '200.00', '100', '18-152', '-41-黑色');
INSERT INTO `spguige` VALUES ('1212', '122761208', '159.00', '200.00', '100', '19-16', '-42-红色');
INSERT INTO `spguige` VALUES ('1213', '122761208', '159.00', '200.00', '100', '19-20', '-42-绿色');
INSERT INTO `spguige` VALUES ('1214', '122761208', '159.00', '200.00', '100', '19-150', '-42-黄色');
INSERT INTO `spguige` VALUES ('1215', '122761208', '159.00', '200.00', '100', '19-152', '-42-黑色');
INSERT INTO `spguige` VALUES ('1216', '122761208', '159.00', '200.00', '100', '151-16', '-43-红色');
INSERT INTO `spguige` VALUES ('1217', '122761208', '159.00', '200.00', '100', '151-20', '-43-绿色');
INSERT INTO `spguige` VALUES ('1218', '122761208', '159.00', '200.00', '100', '151-150', '-43-黄色');
INSERT INTO `spguige` VALUES ('1219', '122761208', '159.00', '200.00', '100', '151-152', '-43-黑色');
INSERT INTO `spguige` VALUES ('1288', '669512939', '129.00', '129.00', '62', '17', '-40');
INSERT INTO `spguige` VALUES ('1289', '669512939', '129.00', '129.00', '95', '18', '-41');
INSERT INTO `spguige` VALUES ('1290', '669512939', '129.00', '129.00', '98', '19', '-42');
INSERT INTO `spguige` VALUES ('1291', '669512939', '129.00', '129.00', '100', '151', '-43');

-- ----------------------------
-- Table structure for tb_addres
-- ----------------------------
DROP TABLE IF EXISTS `tb_addres`;
CREATE TABLE `tb_addres` (
  `ID` int(13) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ISDEFAULT` varchar(20) DEFAULT NULL COMMENT '是否默认',
  `LINKMAN` varchar(50) DEFAULT NULL COMMENT '姓名',
  `MOBILE` varchar(15) DEFAULT NULL COMMENT '手机号码',
  `ADDRESS` varchar(500) DEFAULT NULL COMMENT '详细地址',
  `CODE` varchar(10) DEFAULT NULL COMMENT '邮政编码',
  `CITYID` varchar(10) DEFAULT NULL COMMENT '省份编码',
  `PROVINCEID` varchar(10) DEFAULT NULL COMMENT '城市编码',
  `AREAID` varchar(10) DEFAULT NULL COMMENT '区编码',
  `PROVINCESTR` varchar(100) DEFAULT NULL COMMENT '省份',
  `CITYSTR` varchar(100) DEFAULT NULL COMMENT '城市',
  `AREASTR` varchar(100) DEFAULT NULL COMMENT '区',
  `USERID` varchar(50) DEFAULT NULL COMMENT '创建地址人员',
  `TOKEN` varchar(50) DEFAULT NULL COMMENT '小程序token值',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_addres
-- ----------------------------
INSERT INTO `tb_addres` VALUES ('70', 'true', '张三', '13442255522', '解放东路205号', '211004', '120104', '120000', '', '120000', '120104', '', 'undefined', 'undefined');
INSERT INTO `tb_addres` VALUES ('80', 'active', '张三', '13124567890', '中山路123号', '333333', '140300', '140000', '140303', '140000', '140300', '140303', '806c29c2-4ad8-4e09-8ef1-94f8ed527e0f', '806c29c2-4ad8-4e09-8ef1-94f8ed527e0f');
INSERT INTO `tb_addres` VALUES ('81', 'true', '洪彩霞', '13526587452', '龙华新区深海大厦2033', '518000', '440300', '440000', '440307', '440000', '440300', '440307', '8847c38e-62b3-4801-89ce-c551267576d3', '8847c38e-62b3-4801-89ce-c551267576d3');
INSERT INTO `tb_addres` VALUES ('82', 'true', '李四', '13123456789', '南京东路236号', '123456', '330400', '330000', '330421', '330000', '330400', '330421', '806c29c2-4ad8-4e09-8ef1-94f8ed527e0f', '806c29c2-4ad8-4e09-8ef1-94f8ed527e0f');
INSERT INTO `tb_addres` VALUES ('83', 'true', '严海涛', '13530779548', '民治街道南景新村', '518000', '440300', '440000', '440306', '440000', '440300', '440306', '33dccc35-6458-455d-b5ca-48657c95047c', '33dccc35-6458-455d-b5ca-48657c95047c');

-- ----------------------------
-- Table structure for tb_detail
-- ----------------------------
DROP TABLE IF EXISTS `tb_detail`;
CREATE TABLE `tb_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `logistics_id` int(15) DEFAULT NULL COMMENT '物流id',
  `firstNumber` int(11) DEFAULT NULL COMMENT '多少件',
  `firstAmount` float(11,0) DEFAULT NULL COMMENT '多少元',
  `addNumber` int(11) DEFAULT NULL COMMENT '增加多少件',
  `addAmount` float(11,0) DEFAULT NULL COMMENT '增加多少元',
  `type` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_detail
-- ----------------------------
INSERT INTO `tb_detail` VALUES ('19', '-140502077', '5', '0', '1', '2', '快递');
INSERT INTO `tb_detail` VALUES ('20', '-49754200', '2', '5', '2', '5', '快递');
INSERT INTO `tb_detail` VALUES ('21', '-49729213', '2', '10', '1', '5', '快递');

-- ----------------------------
-- Table structure for tb_logistics
-- ----------------------------
DROP TABLE IF EXISTS `tb_logistics`;
CREATE TABLE `tb_logistics` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL COMMENT '物流名称',
  `isFree` int(11) DEFAULT NULL COMMENT '1包邮 0不包邮',
  `isFreeStr` varchar(11) DEFAULT NULL COMMENT '是否包邮中文',
  `shipMode` varchar(255) DEFAULT NULL COMMENT '占时没用',
  `dateAdd` datetime DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_logistics
-- ----------------------------
INSERT INTO `tb_logistics` VALUES ('-140502077', '普通快递', '1', '包邮', null, '2018-01-16 11:23:55');
INSERT INTO `tb_logistics` VALUES ('-49754200', 'EMS', '0', '不包邮', null, '2018-01-16 11:35:02');
INSERT INTO `tb_logistics` VALUES ('-49729213', '顺丰', '0', '不包邮', null, '2018-01-16 11:35:27');

-- ----------------------------
-- Table structure for tb_order
-- ----------------------------
DROP TABLE IF EXISTS `tb_order`;
CREATE TABLE `tb_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ordernumber` varchar(50) DEFAULT NULL COMMENT '订单单号',
  `statusStr` varchar(20) DEFAULT NULL COMMENT '状态中文',
  `status` int(11) DEFAULT NULL COMMENT '状态数字    0：待付款 1：待发货 2：待收货 3：已完成',
  `amountReal` float(10,2) DEFAULT NULL COMMENT '总数量',
  `dateAdd` datetime DEFAULT NULL COMMENT '添加时间',
  `dateUpdate` datetime DEFAULT NULL COMMENT '修改时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '订单备注',
  `address` varchar(255) DEFAULT NULL COMMENT '订单备注',
  `cityId` varchar(255) DEFAULT NULL COMMENT '所属城市',
  `code` varchar(255) DEFAULT NULL COMMENT '邮编',
  `goodsJsonStr` varchar(255) DEFAULT NULL,
  `linkMan` varchar(50) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL COMMENT '电话',
  `provinceId` varchar(255) DEFAULT NULL COMMENT '省份',
  `token` varchar(50) DEFAULT NULL COMMENT '编码',
  `amountLogistics` float(11,0) DEFAULT NULL COMMENT '运费',
  `districtId` varchar(255) DEFAULT NULL COMMENT '区县',
  `amountTotle` float(11,2) DEFAULT NULL COMMENT '价格',
  `isNeedLogistics` int(11) DEFAULT NULL COMMENT '快递或者包邮',
  `goodsSpecifications` varchar(255) DEFAULT NULL COMMENT '商品规格信息',
  `goodCounts` int(255) DEFAULT NULL COMMENT '购买的商品数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=253 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_order
-- ----------------------------
INSERT INTO `tb_order` VALUES ('204', 'XHDG1516255954350', '待付款', '0', '1069.00', '2018-01-18 14:12:33', null, '', '深海大厦2033', '440300', '518000', '[{\"goodsId\":122312860,\"number\":1,\"propertyChildIds\":\"8:18,13:20,\",\"logisticsType\":0, \"inviter_id\":0},{\"goodsId\":122175887,\"number\":2,\"propertyChildIds\":\"8:19,13:150,\",\"logisticsType\":0, \"inviter_id\":0}]', '洪彩霞', '13368598742', '440000', 'undefined', '0', null, '1069.00', '1', null, null);
INSERT INTO `tb_order` VALUES ('205', 'XHDG1516261894475', '待付款', '0', '828.00', '2018-01-18 15:51:33', null, '', '深海大厦2033', '440300', '518000', '[{\"goodsId\":122761208,\"number\":1,\"propertyChildIds\":\"8:17,13:16,\",\"logisticsType\":0, \"inviter_id\":0},{\"goodsId\":122312860,\"number\":1,\"propertyChildIds\":\"8:18,13:20,\",\"logisticsType\":0, \"inviter_id\":0}]', '洪彩霞', '13368598742', '440000', 'undefined', '0', null, '828.00', '1', null, null);
INSERT INTO `tb_order` VALUES ('206', 'XHDG1516262523446', '待付款', '0', '318.00', '2018-01-18 16:02:02', null, '', '深海大厦2033', '440300', '518000', '[{\"goodsId\":122761208,\"number\":2,\"propertyChildIds\":\"8:17,13:20,\",\"logisticsType\":0, \"inviter_id\":0}]', '洪彩霞', '13368598742', '440000', 'undefined', '0', null, '318.00', '1', null, null);
INSERT INTO `tb_order` VALUES ('207', 'XHDG1516602646753', '已完成', '3', '1497.00', '2018-01-22 14:30:46', null, '', '中山路123号', '140300', '333333', '[{\"goodsId\":122761208,\"number\":1,\"propertyChildIds\":\"8:18,13:20,\",\"logisticsType\":0, \"inviter_id\":0},{\"goodsId\":122312860,\"number\":2,\"propertyChildIds\":\"8:19,13:150,\",\"logisticsType\":0, \"inviter_id\":0}]', '张三', '13124567890', '140000', '806c29c2-4ad8-4e09-8ef1-94f8ed527e0f', '0', null, '1497.00', '1', null, null);
INSERT INTO `tb_order` VALUES ('208', 'XHDG1516606242408', '已完成', '3', '669.00', '2018-01-22 15:30:42', null, '', '中山路123号', '140300', '333333', '[{\"goodsId\":122312860,\"number\":1,\"propertyChildIds\":\"8:19,13:20,\",\"logisticsType\":0, \"inviter_id\":0}]', '张三', '13124567890', '140000', '806c29c2-4ad8-4e09-8ef1-94f8ed527e0f', '0', null, '669.00', '1', null, null);
INSERT INTO `tb_order` VALUES ('209', 'XHDG1516606383362', '已完成', '3', '200.00', '2018-01-22 15:33:03', null, '', '中山路123号', '140300', '333333', '[{\"goodsId\":122175887,\"number\":1,\"propertyChildIds\":\"8:19,13:20,\",\"logisticsType\":0, \"inviter_id\":0}]', '张三', '13124567890', '140000', '806c29c2-4ad8-4e09-8ef1-94f8ed527e0f', '0', null, '200.00', '1', null, null);
INSERT INTO `tb_order` VALUES ('240', 'XHDG1517207567487', '待发货', '1', '0.01', '2018-01-29 14:32:47', null, '', '龙华新区深海大厦2033', '440300', '518000', '[{\"goodsId\":669512939,\"number\":1,\"propertyChildIds\":\"8:17,\",\"logisticsType\":0, \"inviter_id\":0}]', '洪彩霞', '13526587452', '440000', '8847c38e-62b3-4801-89ce-c551267576d3', '0', null, '0.01', '1', null, null);
INSERT INTO `tb_order` VALUES ('242', 'XHDG1517208384564', '待发货', '1', '0.01', '2018-01-29 14:46:24', null, '', '龙华新区深海大厦2033', '440300', '518000', '[{\"goodsId\":669512939,\"number\":1,\"propertyChildIds\":\"8:17,\",\"logisticsType\":0, \"inviter_id\":0}]', '洪彩霞', '13526587452', '440000', '8847c38e-62b3-4801-89ce-c551267576d3', '0', null, '0.01', '1', null, null);
INSERT INTO `tb_order` VALUES ('243', 'XHDG1517277863098', '待发货', '2', '0.01', '2018-01-30 10:04:23', null, '', '中山路123号', '140300', '333333', '[{\"goodsId\":669512939,\"number\":1,\"propertyChildIds\":\"8:19,\",\"logisticsType\":0, \"inviter_id\":0}]', '张三', '13124567890', '140000', '806c29c2-4ad8-4e09-8ef1-94f8ed527e0f', '0', null, '0.01', '1', null, null);
INSERT INTO `tb_order` VALUES ('244', 'XHDG1517300152075', '待发货', '1', '0.01', '2018-01-30 16:15:52', null, '', '南京东路236号', '330400', '123456', '[{\"goodsId\":669512939,\"number\":1,\"propertyChildIds\":\"8:19,\",\"logisticsType\":0, \"inviter_id\":0}]', '李四', '13123456789', '330000', '806c29c2-4ad8-4e09-8ef1-94f8ed527e0f', '0', null, '0.01', '1', null, null);
INSERT INTO `tb_order` VALUES ('247', 'XHDG1517304176745', '待付款', '0', '129.00', '2018-01-30 17:22:56', null, '', '龙华新区深海大厦2033', '440300', '518000', '[{\"goodsId\":669512939,\"number\":1,\"propertyChildIds\":\"8:19,\",\"logisticsType\":0, \"inviter_id\":0}]', '洪彩霞', '13526587452', '440000', '8847c38e-62b3-4801-89ce-c551267576d3', '0', null, '129.00', '1', null, null);
INSERT INTO `tb_order` VALUES ('248', 'XHDG1517304273621', '待付款', '0', '129.00', '2018-01-30 17:24:33', null, '', '南京东路236号', '330400', '123456', '[{\"goodsId\":669512939,\"number\":1,\"propertyChildIds\":\"8:19,\",\"logisticsType\":0, \"inviter_id\":0}]', '李四', '13123456789', '330000', '806c29c2-4ad8-4e09-8ef1-94f8ed527e0f', '0', null, '129.00', '1', null, null);
INSERT INTO `tb_order` VALUES ('250', 'XHDG1518241798982', '待付款', '0', '200.00', '2018-02-10 13:49:58', null, '', '深海大厦2033', '440300', '518000', '[{\"goodsId\":122175887,\"number\":1,\"propertyChildIds\":\"8:18,13:152,\",\"logisticsType\":0, \"inviter_id\":0}]', '洪彩霞', '13368598742', '440000', 'undefined', '0', null, '200.00', '1', null, null);
INSERT INTO `tb_order` VALUES ('251', 'XHDG1519395128248', '待付款', '0', '200.00', '2018-02-23 22:12:08', null, '', '民治街道南景新村', '440300', '518000', '[{\"goodsId\":122175887,\"number\":1,\"propertyChildIds\":\"8:151,13:152,\",\"logisticsType\":0, \"inviter_id\":0}]', '严海涛', '13530779548', '440000', '33dccc35-6458-455d-b5ca-48657c95047c', '0', null, '200.00', '1', null, null);
INSERT INTO `tb_order` VALUES ('252', 'XHDG1525935887896', '待付款', '0', '129.00', '2018-05-10 15:04:47', null, '', '南京东路236号', '330400', '123456', '[{\"goodsId\":669512939,\"number\":1,\"propertyChildIds\":\"8:19,\",\"logisticsType\":0, \"inviter_id\":0}]', '李四', '13123456789', '330000', '806c29c2-4ad8-4e09-8ef1-94f8ed527e0f', '0', null, '129.00', '1', null, null);

-- ----------------------------
-- Table structure for tb_wx_setting
-- ----------------------------
DROP TABLE IF EXISTS `tb_wx_setting`;
CREATE TABLE `tb_wx_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `appid` varchar(255) DEFAULT NULL,
  `appsecret` varchar(255) DEFAULT NULL,
  `partner` varchar(255) DEFAULT NULL,
  `partnerkey` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL COMMENT '域名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_wx_setting
-- ----------------------------
INSERT INTO `tb_wx_setting` VALUES ('1', 'wxce1f9c5216fb7404', 'f1fc3ea7662ec986f83a6d7f667e0563', '13366701', 'yqkj1100yqkj1100yqkj1100yqkj1100', 'http://www.huangtao.s1.natapp.cc/chihaodian/');

-- ----------------------------
-- Table structure for tb_wx_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_wx_user`;
CREATE TABLE `tb_wx_user` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 用户表',
  `NAME` varchar(50) DEFAULT NULL COMMENT '用户名',
  `APPID` varchar(50) DEFAULT NULL COMMENT '用户标识',
  `TOKEN` varchar(40) DEFAULT NULL COMMENT '微信登陆返回参数',
  `UID` varchar(50) DEFAULT NULL COMMENT '微信传参数标识',
  `MONEY` float DEFAULT NULL COMMENT '余额',
  `DATAADD` timestamp NULL DEFAULT NULL COMMENT '第一次创建时间',
  `CODE` varchar(50) DEFAULT NULL COMMENT '微信登陆返回参数',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_wx_user
-- ----------------------------
INSERT INTO `tb_wx_user` VALUES ('1', null, 'od0sA5QEu1TeUck1ToSmYgKZOAuA', '806c29c2-4ad8-4e09-8ef1-94f8ed527e0f', '806c29c2-4ad8-4e09-8ef1-94f8ed527e0f', null, '2018-01-22 14:28:52', null);
INSERT INTO `tb_wx_user` VALUES ('2', null, 'od0sA5Ug4E32VPof81mTIs6ddqL8', '8847c38e-62b3-4801-89ce-c551267576d3', '8847c38e-62b3-4801-89ce-c551267576d3', null, '2018-01-25 11:54:46', null);
INSERT INTO `tb_wx_user` VALUES ('3', null, 'od0sA5avQEZAGwCcSN-wZWPGbDec', 'c281f61b-0e23-47e4-8fb8-1a565660f1f5', 'c281f61b-0e23-47e4-8fb8-1a565660f1f5', null, '2018-02-06 16:42:32', null);
INSERT INTO `tb_wx_user` VALUES ('4', null, 'od0sA5Rpu9wH__EWYIr9oP2M1hAA', '02328b6c-b18d-40f4-8f5f-500b09ee5005', '02328b6c-b18d-40f4-8f5f-500b09ee5005', null, '2018-02-07 15:16:34', null);
INSERT INTO `tb_wx_user` VALUES ('5', null, 'od0sA5WtADXVTLpviZnTD97gSWTI', '17b16d0c-c939-4d14-a942-1331fa8b1882', '17b16d0c-c939-4d14-a942-1331fa8b1882', null, '2018-02-07 17:33:13', null);
INSERT INTO `tb_wx_user` VALUES ('6', null, 'od0sA5WV3O8RE6xJ0qTksnfzPluU', '28d56afc-ae7b-4e61-b9fc-722b1305e56a', '28d56afc-ae7b-4e61-b9fc-722b1305e56a', null, '2018-02-08 06:34:49', null);
INSERT INTO `tb_wx_user` VALUES ('7', null, 'od0sA5X2emNQeKEZG4mgrK-pcCl0', '2d9f6519-6e04-426f-a044-7d98b198f473', '2d9f6519-6e04-426f-a044-7d98b198f473', null, '2018-02-10 21:47:42', null);
INSERT INTO `tb_wx_user` VALUES ('8', null, 'od0sA5W0yJ2NFYQ_tsF2Jf2XrsoA', 'e71b22a5-1b8e-4ed3-87f9-5d51147679f2', 'e71b22a5-1b8e-4ed3-87f9-5d51147679f2', null, '2018-02-11 22:17:39', null);
INSERT INTO `tb_wx_user` VALUES ('9', null, 'od0sA5d5sRX5FxR0qZlsSdyyQ3bQ', 'f065e1eb-a058-41d7-9f4e-fbb77964e82a', 'f065e1eb-a058-41d7-9f4e-fbb77964e82a', null, '2018-02-13 15:17:33', null);
INSERT INTO `tb_wx_user` VALUES ('10', null, 'od0sA5ZZUfR5bsYs1ba2_0yVio3E', '86ea04fe-5255-4bce-aa9d-731283c5711f', '86ea04fe-5255-4bce-aa9d-731283c5711f', null, '2018-02-16 10:02:27', null);
INSERT INTO `tb_wx_user` VALUES ('11', null, 'od0sA5bEH4RnWtD7CRAwq59wGGBM', 'c89ce9a3-3fac-4e91-9a22-b6da321b01fc', 'c89ce9a3-3fac-4e91-9a22-b6da321b01fc', null, '2018-02-21 23:51:16', null);
INSERT INTO `tb_wx_user` VALUES ('12', null, 'od0sA5X8l33fQnWcgeRmeQydYPcI', 'f84124f0-f4fa-45b2-91ec-f1beb7e27d8b', 'f84124f0-f4fa-45b2-91ec-f1beb7e27d8b', null, '2018-02-23 01:42:47', null);
INSERT INTO `tb_wx_user` VALUES ('13', null, 'od0sA5QK7VHgDS85721RmdRls030', '33dccc35-6458-455d-b5ca-48657c95047c', '33dccc35-6458-455d-b5ca-48657c95047c', null, '2018-02-23 21:44:04', null);
INSERT INTO `tb_wx_user` VALUES ('14', null, 'od0sA5TFAA-pXAkgS83y5rxTBaaQ', '87d13061-d28f-4afc-9401-4c3689c5a927', '87d13061-d28f-4afc-9401-4c3689c5a927', null, '2018-02-25 13:15:01', null);
INSERT INTO `tb_wx_user` VALUES ('15', null, 'od0sA5WxCb-2CZZFqZgRZftPBCKg', 'eba6e763-b9e7-415e-a567-20ae74bb6f6b', 'eba6e763-b9e7-415e-a567-20ae74bb6f6b', null, '2018-02-25 18:24:27', null);
INSERT INTO `tb_wx_user` VALUES ('16', null, 'od0sA5VxlRJy3FvlJZ03bUe1RxUI', 'f8d1d352-fbfa-4df1-8e06-fe1a3e77fd4b', 'f8d1d352-fbfa-4df1-8e06-fe1a3e77fd4b', null, '2018-02-27 10:09:23', null);
INSERT INTO `tb_wx_user` VALUES ('17', null, 'od0sA5dgjbmHlSjGLpVFEQXGluHM', '0ebe5e12-3ee1-4136-afa1-ebf2f8e070f0', '0ebe5e12-3ee1-4136-afa1-ebf2f8e070f0', null, '2018-02-27 22:00:25', null);
INSERT INTO `tb_wx_user` VALUES ('18', null, 'od0sA5V4jq6H2KELdlTcK9OwebBw', 'f0216662-8fce-4914-8f2f-c9a95e11e531', 'f0216662-8fce-4914-8f2f-c9a95e11e531', null, '2018-02-28 13:44:33', null);
INSERT INTO `tb_wx_user` VALUES ('19', null, 'od0sA5Q4o4W2LmFiAqeICB0HpYlw', '224a81bb-b02b-429b-83cf-abad2c80dadf', '224a81bb-b02b-429b-83cf-abad2c80dadf', null, '2018-02-28 17:21:00', null);
INSERT INTO `tb_wx_user` VALUES ('20', null, 'od0sA5Zp6I_y8DPqEOpcTwQS7sv4', '107733d7-02b9-419c-959e-fbd41a7e6c91', '107733d7-02b9-419c-959e-fbd41a7e6c91', null, '2018-03-01 07:05:33', null);
INSERT INTO `tb_wx_user` VALUES ('21', null, 'od0sA5bKQSx3gsmy2YJCaFbf1FBQ', '60f23637-e01c-436e-836a-340c3b2c1c92', '60f23637-e01c-436e-836a-340c3b2c1c92', null, '2018-03-01 18:23:46', null);
INSERT INTO `tb_wx_user` VALUES ('22', null, 'od0sA5cbt_B0T6cNIgDTBWsqBG6o', '9eca4ad6-f3bb-4c1e-9693-8a8dbf771a70', '9eca4ad6-f3bb-4c1e-9693-8a8dbf771a70', null, '2018-03-02 18:22:14', null);
INSERT INTO `tb_wx_user` VALUES ('23', null, 'od0sA5RI2dFTAZyLfRX9VyTrnYPM', '7c138e24-2c9e-4b57-9dbe-54c143a61e95', '7c138e24-2c9e-4b57-9dbe-54c143a61e95', null, '2018-03-03 20:13:27', null);
INSERT INTO `tb_wx_user` VALUES ('24', null, 'od0sA5ZeO9jOEsSxA7HU3WPZCneE', '17034b4e-fe9b-4bce-b3f2-10167582d328', '17034b4e-fe9b-4bce-b3f2-10167582d328', null, '2018-03-04 11:33:00', null);
INSERT INTO `tb_wx_user` VALUES ('25', null, 'od0sA5UEplhCOLxs4omnanZa01VY', '4bdd8054-3851-4620-8f44-eb9b07663829', '4bdd8054-3851-4620-8f44-eb9b07663829', null, '2018-03-04 15:05:34', null);
INSERT INTO `tb_wx_user` VALUES ('26', null, 'od0sA5fVqI6mg8dlDy80CDyqrgdI', '23399cc7-4116-4ba9-9ea0-b038b2ca09cb', '23399cc7-4116-4ba9-9ea0-b038b2ca09cb', null, '2018-03-04 20:43:21', null);
INSERT INTO `tb_wx_user` VALUES ('27', null, 'od0sA5Y9XGK-Hzf57-Vp5wwAcylg', '46ffe425-a8f7-47df-8de0-fed1dfb6812e', '46ffe425-a8f7-47df-8de0-fed1dfb6812e', null, '2018-03-05 17:45:30', null);
INSERT INTO `tb_wx_user` VALUES ('28', null, 'od0sA5dF0RTxvilQJ4qNxFkXlog4', 'fe9e471e-d27f-4ac9-b65d-ebf092fb21fb', 'fe9e471e-d27f-4ac9-b65d-ebf092fb21fb', null, '2018-03-05 17:52:35', null);
INSERT INTO `tb_wx_user` VALUES ('29', null, 'od0sA5RVH--aK4ehmTVbA5Dw7Cjg', 'fc7eb5cd-4c50-4a3b-944f-c66558e3b714', 'fc7eb5cd-4c50-4a3b-944f-c66558e3b714', null, '2018-03-05 18:23:31', null);
INSERT INTO `tb_wx_user` VALUES ('30', null, 'od0sA5RxLaDjAMgiwOIiUAfHtM9w', '5146cb5d-6f06-4918-b1e1-399b5a54c20e', '5146cb5d-6f06-4918-b1e1-399b5a54c20e', null, '2018-03-05 18:53:44', null);
INSERT INTO `tb_wx_user` VALUES ('31', null, 'od0sA5S1WJhWM07t0O8kiX5LTym0', 'b494c7b2-e265-4230-974f-12030cda7a6a', 'b494c7b2-e265-4230-974f-12030cda7a6a', null, '2018-03-05 19:05:24', null);
INSERT INTO `tb_wx_user` VALUES ('32', null, 'od0sA5Yx5qiuUI253f0eG5DOZWdY', '34f56bff-9ee8-4a05-bbbc-0e704ee8f000', '34f56bff-9ee8-4a05-bbbc-0e704ee8f000', null, '2018-03-06 18:51:33', null);
INSERT INTO `tb_wx_user` VALUES ('33', null, 'od0sA5fnG_2azJN8TUNZfostYJuM', 'f9bdc3e8-5e91-42ca-b708-4b2868d01112', 'f9bdc3e8-5e91-42ca-b708-4b2868d01112', null, '2018-03-06 22:03:42', null);
INSERT INTO `tb_wx_user` VALUES ('34', null, 'od0sA5SlM4PVEKcVnZAIyRwJm5y8', '4d6969e7-e055-4334-8fa3-f1fbdcc07e66', '4d6969e7-e055-4334-8fa3-f1fbdcc07e66', null, '2018-03-07 12:58:07', null);
INSERT INTO `tb_wx_user` VALUES ('35', null, 'od0sA5RVVWsSSdNg4qQaK484dBfg', 'f986d044-d79f-4842-be88-fdab8d8265ab', 'f986d044-d79f-4842-be88-fdab8d8265ab', null, '2018-03-07 23:35:44', null);
INSERT INTO `tb_wx_user` VALUES ('36', null, 'od0sA5XqnaTdwSRji8ew8gUGQHCc', '1301c35a-227a-4444-a5fc-f1b42fc13005', '1301c35a-227a-4444-a5fc-f1b42fc13005', null, '2018-03-08 15:37:18', null);
INSERT INTO `tb_wx_user` VALUES ('37', null, 'od0sA5emxvm-p3GrXhVYKkWv5daE', 'f65a565f-5edb-41ed-a3a8-08babf1c1851', 'f65a565f-5edb-41ed-a3a8-08babf1c1851', null, '2018-03-09 07:53:03', null);
INSERT INTO `tb_wx_user` VALUES ('38', null, 'od0sA5YMVSOhz6OqjKaQs_bt03Kw', 'b257f8cf-cf0b-4187-8b2e-68b084626486', 'b257f8cf-cf0b-4187-8b2e-68b084626486', null, '2018-03-10 17:18:38', null);
INSERT INTO `tb_wx_user` VALUES ('39', null, 'od0sA5SUsRBYPoLwpFmwXd-WSlFk', 'b1947999-5968-4857-8f29-44a479663bd6', 'b1947999-5968-4857-8f29-44a479663bd6', null, '2018-03-12 15:50:31', null);
INSERT INTO `tb_wx_user` VALUES ('40', null, 'od0sA5WprMZoumQb16sd3cbI9eKQ', '8a9aad43-fbcc-4605-8b99-b12affe33eb7', '8a9aad43-fbcc-4605-8b99-b12affe33eb7', null, '2018-03-12 20:06:30', null);
INSERT INTO `tb_wx_user` VALUES ('41', null, 'od0sA5ZhthGl9cbeo26pwXcg1s1E', '0d35354a-4913-4f37-8f58-8687b5004145', '0d35354a-4913-4f37-8f58-8687b5004145', null, '2018-03-16 17:07:46', null);
INSERT INTO `tb_wx_user` VALUES ('42', null, 'od0sA5a48uhFkri_r9JKM_ffE4z0', 'b5ab9af7-1b8c-4507-947f-81e25c5d7885', 'b5ab9af7-1b8c-4507-947f-81e25c5d7885', null, '2018-03-16 18:28:32', null);
INSERT INTO `tb_wx_user` VALUES ('43', null, 'od0sA5WUnmLFHBqyAp-eDVAgr02I', '553446ab-8feb-4f3c-810c-68a36357e016', '553446ab-8feb-4f3c-810c-68a36357e016', null, '2018-03-16 20:28:55', null);
INSERT INTO `tb_wx_user` VALUES ('44', null, 'od0sA5bJpdSxnyGes-cXkNPXIf-g', 'b3756601-86a6-4add-b7b8-c377d7cc4707', 'b3756601-86a6-4add-b7b8-c377d7cc4707', null, '2018-03-16 21:57:44', null);
INSERT INTO `tb_wx_user` VALUES ('45', null, 'od0sA5T9oXIqQY-9w5U52B89yELQ', '1a291ffa-9de2-49e9-821a-f827154674f5', '1a291ffa-9de2-49e9-821a-f827154674f5', null, '2018-03-17 14:03:05', null);
INSERT INTO `tb_wx_user` VALUES ('46', null, 'od0sA5U2bi_Vmr_hRYmbaDAR15IM', '7c012fdb-f851-49ea-8afa-18d51c6d5bf6', '7c012fdb-f851-49ea-8afa-18d51c6d5bf6', null, '2018-03-17 18:01:30', null);
INSERT INTO `tb_wx_user` VALUES ('47', null, 'od0sA5V67Kn8dJ-Q4xydFTUdXLJg', '5d82fe27-fd25-4ac3-aa18-d857301c1682', '5d82fe27-fd25-4ac3-aa18-d857301c1682', null, '2018-03-18 01:08:23', null);
INSERT INTO `tb_wx_user` VALUES ('48', null, 'od0sA5ZmU_4vWQkIXs7GBF2VtNlY', '45f82754-2212-4feb-b6cb-fc2d6e60b55a', '45f82754-2212-4feb-b6cb-fc2d6e60b55a', null, '2018-03-19 09:41:05', null);
INSERT INTO `tb_wx_user` VALUES ('49', null, 'od0sA5ZvsTcQplN2Df0mFsS59vSs', '87e80933-09ff-4852-81ee-64f6b0595c4f', '87e80933-09ff-4852-81ee-64f6b0595c4f', null, '2018-03-19 23:49:53', null);
INSERT INTO `tb_wx_user` VALUES ('50', null, 'od0sA5dXz4HKUauUPLkSWlIF6gDY', '94cfae1a-f0d5-4192-96a6-4546c8d6d83b', '94cfae1a-f0d5-4192-96a6-4546c8d6d83b', null, '2018-03-20 10:55:00', null);
INSERT INTO `tb_wx_user` VALUES ('51', null, 'od0sA5TIHJe-bMrLlzkXpTL9G9H0', 'b811a776-df41-4aba-9e81-8f82ac89f105', 'b811a776-df41-4aba-9e81-8f82ac89f105', null, '2018-03-20 11:17:09', null);
INSERT INTO `tb_wx_user` VALUES ('52', null, 'od0sA5cRX-xBpGOKY4O8mHsw7TTE', '8f95dde8-d0ce-45bf-9cde-e08f80a6242b', '8f95dde8-d0ce-45bf-9cde-e08f80a6242b', null, '2018-03-20 14:40:30', null);
INSERT INTO `tb_wx_user` VALUES ('53', null, 'od0sA5ekAWzOMlf5L6hAuzJRSGDk', '0ad37540-3ccc-482b-8214-1b3186e44fb1', '0ad37540-3ccc-482b-8214-1b3186e44fb1', null, '2018-03-20 20:14:08', null);
INSERT INTO `tb_wx_user` VALUES ('54', null, 'od0sA5RKw5M7JnZfLdloKuq9_9BY', 'dcc83aeb-ee4e-4c47-81e2-c0cc262332c6', 'dcc83aeb-ee4e-4c47-81e2-c0cc262332c6', null, '2018-03-20 21:28:14', null);
INSERT INTO `tb_wx_user` VALUES ('55', null, 'od0sA5XLP-KF28-syRUwIyg0ohcA', '143a9e30-2659-430f-96d0-7fd5d5a766bf', '143a9e30-2659-430f-96d0-7fd5d5a766bf', null, '2018-03-21 14:21:06', null);
INSERT INTO `tb_wx_user` VALUES ('56', null, 'od0sA5WtgT55ob5KQHE6GCRZxsC0', '76257fe9-81e7-42fc-bd8b-89e78f517665', '76257fe9-81e7-42fc-bd8b-89e78f517665', null, '2018-03-22 01:52:37', null);
INSERT INTO `tb_wx_user` VALUES ('57', null, 'od0sA5ezYWxakISlG0sZSxUYdB3Q', '1631954f-237c-47e4-a060-d07140de6034', '1631954f-237c-47e4-a060-d07140de6034', null, '2018-03-23 11:09:35', null);
INSERT INTO `tb_wx_user` VALUES ('58', null, 'od0sA5fX9RC5f95O1y4R0KeEOea8', '2c61c89d-0105-40b2-b997-7a4cb1eaff03', '2c61c89d-0105-40b2-b997-7a4cb1eaff03', null, '2018-03-23 11:18:20', null);
INSERT INTO `tb_wx_user` VALUES ('59', null, 'od0sA5ZTfornd6xn5MV-oU_z0B8s', '6c0a2779-9647-40da-8e3f-364de9d17a97', '6c0a2779-9647-40da-8e3f-364de9d17a97', null, '2018-03-23 11:32:29', null);
INSERT INTO `tb_wx_user` VALUES ('60', null, 'od0sA5Z8gyR19qDAxZDM6MlWBfyI', 'ee3f0913-8c56-4516-a5c0-49ab72d0d9cc', 'ee3f0913-8c56-4516-a5c0-49ab72d0d9cc', null, '2018-03-23 13:58:35', null);
INSERT INTO `tb_wx_user` VALUES ('61', null, 'od0sA5Y_PIEWhLK3oPD8ExCEksX4', '9273cfc9-bb59-4bb9-ac72-146a1d1cb31b', '9273cfc9-bb59-4bb9-ac72-146a1d1cb31b', null, '2018-03-23 16:16:50', null);
INSERT INTO `tb_wx_user` VALUES ('62', null, 'od0sA5fa70b3X-nvSSWLLPEhh67c', '7ba5f2a4-ee5d-4fdc-a1c0-cc7258830271', '7ba5f2a4-ee5d-4fdc-a1c0-cc7258830271', null, '2018-03-23 17:42:01', null);
INSERT INTO `tb_wx_user` VALUES ('63', null, 'od0sA5cfovQm4kTQkM-ITRy96nmc', '5500cf15-e25c-4ecc-98cd-c88b9ea75bf3', '5500cf15-e25c-4ecc-98cd-c88b9ea75bf3', null, '2018-03-24 18:13:08', null);
INSERT INTO `tb_wx_user` VALUES ('64', null, 'od0sA5b27ztdh8RURVJCRwmocxBM', 'ace0fd92-1e41-4cef-a240-1e12b498e424', 'ace0fd92-1e41-4cef-a240-1e12b498e424', null, '2018-03-25 23:25:04', null);
INSERT INTO `tb_wx_user` VALUES ('65', null, 'od0sA5YLFYy9P0Tfin4wg0MbSc-Q', 'b6dc2cf5-fe09-4623-9c85-1d0db3d00a24', 'b6dc2cf5-fe09-4623-9c85-1d0db3d00a24', null, '2018-03-26 16:42:49', null);
INSERT INTO `tb_wx_user` VALUES ('66', null, 'od0sA5XNPzN5wScicNVLbcaw83Hk', '4a2fc1d2-ffe1-4e7d-abe4-3c6b64bbbd7c', '4a2fc1d2-ffe1-4e7d-abe4-3c6b64bbbd7c', null, '2018-03-26 21:53:43', null);
INSERT INTO `tb_wx_user` VALUES ('67', null, 'od0sA5R6i7A4yAL32YGGOdmj4g9U', '546d715e-8f50-4c53-bc9d-8349f6c37387', '546d715e-8f50-4c53-bc9d-8349f6c37387', null, '2018-03-28 02:16:30', null);
INSERT INTO `tb_wx_user` VALUES ('68', null, 'od0sA5VJ1OUFlAY2VqHObVJzwJgk', 'a02d8a97-0959-4d5b-86ab-cd42e82b9bea', 'a02d8a97-0959-4d5b-86ab-cd42e82b9bea', null, '2018-03-28 06:58:26', null);
INSERT INTO `tb_wx_user` VALUES ('69', null, 'od0sA5TlfwH-ktRLFJujvv3y3YoY', '6c7883eb-264a-4806-8086-6f6f24692629', '6c7883eb-264a-4806-8086-6f6f24692629', null, '2018-03-28 23:38:17', null);
INSERT INTO `tb_wx_user` VALUES ('70', null, 'od0sA5Z483gBXQ9IW2Ea4YV2TJfc', '6ef0aac5-a67f-46a9-a26e-79b44dc99f94', '6ef0aac5-a67f-46a9-a26e-79b44dc99f94', null, '2018-03-29 02:30:03', null);
INSERT INTO `tb_wx_user` VALUES ('71', null, 'od0sA5T7hjtwjYObi6pk9FLoaXsE', '7784d757-d37c-45e1-99ae-f79f25db396e', '7784d757-d37c-45e1-99ae-f79f25db396e', null, '2018-03-30 09:34:46', null);
INSERT INTO `tb_wx_user` VALUES ('72', null, 'od0sA5Vd0QmyUNQyE-uClbsPsVM0', '2bde87c1-9dc7-4cb3-8bc0-1fadc49f3f8b', '2bde87c1-9dc7-4cb3-8bc0-1fadc49f3f8b', null, '2018-03-31 00:38:24', null);
INSERT INTO `tb_wx_user` VALUES ('73', null, 'od0sA5Ujmro0mt3IOe_qyZMSv6lw', 'f0ebe6b3-1499-4b30-8dc8-51922272bec4', 'f0ebe6b3-1499-4b30-8dc8-51922272bec4', null, '2018-03-31 10:29:21', null);
INSERT INTO `tb_wx_user` VALUES ('74', null, 'od0sA5b5OgHPNHPDBx8iDT1Ybdvs', '67ca01cc-28b4-4f2b-b26a-4382330e72a6', '67ca01cc-28b4-4f2b-b26a-4382330e72a6', null, '2018-03-31 14:47:55', null);
INSERT INTO `tb_wx_user` VALUES ('75', null, 'od0sA5Te0vBuPdfL9zDxg8_IO-ac', 'ed095600-1815-48f0-9ab8-2f4ef33176d8', 'ed095600-1815-48f0-9ab8-2f4ef33176d8', null, '2018-03-31 22:48:43', null);
INSERT INTO `tb_wx_user` VALUES ('76', null, 'od0sA5excTAi2rk6Vu2OAD8c5wFY', '072c9b53-5be4-4808-96d4-a79d92c211c3', '072c9b53-5be4-4808-96d4-a79d92c211c3', null, '2018-04-01 15:03:10', null);
INSERT INTO `tb_wx_user` VALUES ('77', null, 'od0sA5WU0FSkM8GfvkRJbIC1T08I', '2a14dbb7-618d-403b-8faf-7520b9fec068', '2a14dbb7-618d-403b-8faf-7520b9fec068', null, '2018-04-01 20:10:01', null);
INSERT INTO `tb_wx_user` VALUES ('78', null, 'od0sA5WBySClYytXkAA4tbJ9UYlI', '75f380ee-1224-46eb-a077-20707046fd17', '75f380ee-1224-46eb-a077-20707046fd17', null, '2018-04-02 11:18:56', null);
INSERT INTO `tb_wx_user` VALUES ('79', null, 'od0sA5e8UQn7x2PUDiUjQPae4Pm4', 'f29dcf22-40c4-4c91-8e83-194c57480ff9', 'f29dcf22-40c4-4c91-8e83-194c57480ff9', null, '2018-04-02 19:23:48', null);
INSERT INTO `tb_wx_user` VALUES ('80', null, 'od0sA5bRcfshbj5XMlrsVvvNvcF4', '2ff7ad6f-3c5e-4cbe-9a03-09605f95274e', '2ff7ad6f-3c5e-4cbe-9a03-09605f95274e', null, '2018-04-03 01:46:57', null);
INSERT INTO `tb_wx_user` VALUES ('81', null, 'od0sA5YlR36kOtK2ALdxsxYXrZc0', '60590fc3-6dee-47ef-8314-cf6d4819cba0', '60590fc3-6dee-47ef-8314-cf6d4819cba0', null, '2018-04-03 10:12:00', null);
INSERT INTO `tb_wx_user` VALUES ('82', null, 'od0sA5Smj45Anb2jc53GVjBU6PhU', 'a4d620c3-01f1-41cb-a664-4c2ee21160b7', 'a4d620c3-01f1-41cb-a664-4c2ee21160b7', null, '2018-04-04 15:48:08', null);
INSERT INTO `tb_wx_user` VALUES ('83', null, 'od0sA5Sy_oA-YJQ4fbDo73XBf-s0', 'f7ab4657-aa4d-4dbb-8359-7ce195f98962', 'f7ab4657-aa4d-4dbb-8359-7ce195f98962', null, '2018-04-05 11:21:56', null);
INSERT INTO `tb_wx_user` VALUES ('84', null, 'od0sA5WPkiZvc-62Do1qajHD24FQ', '54152137-5349-4184-901c-714f960c9a91', '54152137-5349-4184-901c-714f960c9a91', null, '2018-04-05 17:29:07', null);
INSERT INTO `tb_wx_user` VALUES ('85', null, 'od0sA5caO6I6UzCxy3yoRe58In9w', '4dcf3255-ad52-4330-9528-0146a10340d3', '4dcf3255-ad52-4330-9528-0146a10340d3', null, '2018-04-07 15:59:22', null);
INSERT INTO `tb_wx_user` VALUES ('86', null, 'od0sA5UvoR3WcJhebliOyn6EaQcU', '48e33b4f-2f05-4350-8043-faacd76d4100', '48e33b4f-2f05-4350-8043-faacd76d4100', null, '2018-04-07 22:34:49', null);
INSERT INTO `tb_wx_user` VALUES ('87', null, 'od0sA5UH6xG-SMVArfeFm_7G7In4', '0ca7c935-c74f-41d5-ad97-57d0ccbd7d31', '0ca7c935-c74f-41d5-ad97-57d0ccbd7d31', null, '2018-04-08 05:51:15', null);
INSERT INTO `tb_wx_user` VALUES ('88', null, 'od0sA5X9hPP8HP-q4iGjan99z4BI', '24d1bdfc-db1d-4f8c-93e1-8e3e268cc70f', '24d1bdfc-db1d-4f8c-93e1-8e3e268cc70f', null, '2018-04-08 14:40:45', null);
INSERT INTO `tb_wx_user` VALUES ('89', null, 'od0sA5XtrLs2bEjBPCtjf69M5Lq4', 'c38502d8-7fe1-42cf-83f1-1586391088c7', 'c38502d8-7fe1-42cf-83f1-1586391088c7', null, '2018-04-08 14:58:16', null);
INSERT INTO `tb_wx_user` VALUES ('90', null, 'od0sA5XyuZkcIs6zLdncP3U_pkUA', '82f1eb56-bf26-4dc8-a509-d7b5bd24e635', '82f1eb56-bf26-4dc8-a509-d7b5bd24e635', null, '2018-04-08 20:55:11', null);
INSERT INTO `tb_wx_user` VALUES ('91', null, 'od0sA5deiuBCnrhMoNzes-Zi7ofk', '05530448-406a-4086-b1c6-35722fd6d2d3', '05530448-406a-4086-b1c6-35722fd6d2d3', null, '2018-04-09 01:43:44', null);
INSERT INTO `tb_wx_user` VALUES ('92', null, 'od0sA5c5_iJUkgHqlF-4paQv3mDo', 'f452e99b-7514-4ff0-814a-a81fa8d8a6ec', 'f452e99b-7514-4ff0-814a-a81fa8d8a6ec', null, '2018-04-09 12:14:44', null);
INSERT INTO `tb_wx_user` VALUES ('93', null, 'od0sA5SfQ2X_4YrVYuSjfvR46vWk', 'f522e545-a21d-4d27-8cf2-dd24d430e9e0', 'f522e545-a21d-4d27-8cf2-dd24d430e9e0', null, '2018-04-09 22:22:24', null);
INSERT INTO `tb_wx_user` VALUES ('94', null, 'od0sA5eLJ-jTvlvscY5VHsRCBKRo', 'a7a4b682-bf88-4143-bc13-8b3dfc0e8aa3', 'a7a4b682-bf88-4143-bc13-8b3dfc0e8aa3', null, '2018-04-11 09:06:25', null);
INSERT INTO `tb_wx_user` VALUES ('95', null, 'od0sA5Xrr7F8yYHxeMqW92Kd6ugY', '0a1f523b-2c3f-40cc-8219-d53f92fecc3a', '0a1f523b-2c3f-40cc-8219-d53f92fecc3a', null, '2018-04-11 15:27:16', null);
INSERT INTO `tb_wx_user` VALUES ('96', null, 'od0sA5eOlKvwpOp9O_NiICQ9T-ek', '854ac66a-738a-4bf9-ad34-662ae76a7caf', '854ac66a-738a-4bf9-ad34-662ae76a7caf', null, '2018-04-11 20:02:36', null);
INSERT INTO `tb_wx_user` VALUES ('97', null, 'od0sA5RtaHKDUUtZBFlqomuT54BM', 'fc2fecf6-86b1-4828-95c8-beb2c5e162f9', 'fc2fecf6-86b1-4828-95c8-beb2c5e162f9', null, '2018-04-11 20:39:37', null);
INSERT INTO `tb_wx_user` VALUES ('98', null, 'od0sA5UwnfrCPN3QBJiLzMo0sf0k', '639aaee5-3a4e-4a51-b206-7fdd6ca08a33', '639aaee5-3a4e-4a51-b206-7fdd6ca08a33', null, '2018-04-12 06:09:40', null);
INSERT INTO `tb_wx_user` VALUES ('99', null, 'od0sA5f0_vNPD2f23I8HlJ-leuB4', '6ddfc77e-4179-4df2-87c1-67f84e63f646', '6ddfc77e-4179-4df2-87c1-67f84e63f646', null, '2018-04-12 06:57:53', null);
INSERT INTO `tb_wx_user` VALUES ('100', null, 'od0sA5WOCTd5Y1ChnQfBsRP5iQJM', '22451afc-5444-43eb-826d-25acaee7c720', '22451afc-5444-43eb-826d-25acaee7c720', null, '2018-04-13 10:07:22', null);
INSERT INTO `tb_wx_user` VALUES ('101', null, 'od0sA5dNO1HLQhOUU2vdivwy_nEU', 'ee5bf9fa-c517-47f7-8457-659a97fe21e8', 'ee5bf9fa-c517-47f7-8457-659a97fe21e8', null, '2018-04-13 11:08:49', null);
INSERT INTO `tb_wx_user` VALUES ('102', null, 'od0sA5Uz8Qi_DNfWFPRtFn9sTtJ0', 'd2139120-9216-405c-a76a-e67f3021c82d', 'd2139120-9216-405c-a76a-e67f3021c82d', null, '2018-04-17 11:36:08', null);
INSERT INTO `tb_wx_user` VALUES ('103', null, 'od0sA5XhNNC5c76SFGw0TfIN4dPA', '3d312ee8-157a-4532-88a4-417b2e9c7939', '3d312ee8-157a-4532-88a4-417b2e9c7939', null, '2018-04-18 03:25:26', null);
INSERT INTO `tb_wx_user` VALUES ('104', null, 'od0sA5QCES_q1nZP4aRKdXAFuRBM', '0d00a219-5293-4e23-8168-ace3400a5788', '0d00a219-5293-4e23-8168-ace3400a5788', null, '2018-04-18 11:21:38', null);
INSERT INTO `tb_wx_user` VALUES ('105', null, 'od0sA5bAyDTdmImQgytdjluRCCx0', '3dcdd619-6455-4e5a-98b6-f045aea3b0d6', '3dcdd619-6455-4e5a-98b6-f045aea3b0d6', null, '2018-04-18 13:35:34', null);
INSERT INTO `tb_wx_user` VALUES ('106', null, 'od0sA5cjEko598Q2zz4oeypJhy9A', 'cd387c9a-0043-4306-9ac0-a1b645ba17ba', 'cd387c9a-0043-4306-9ac0-a1b645ba17ba', null, '2018-04-21 14:39:59', null);
INSERT INTO `tb_wx_user` VALUES ('107', null, 'od0sA5RrHiPJu1UFZ1mcg2mg3tos', 'bc283cc5-2af2-4f00-9986-e26f849e27b9', 'bc283cc5-2af2-4f00-9986-e26f849e27b9', null, '2018-04-22 15:48:11', null);
INSERT INTO `tb_wx_user` VALUES ('108', null, 'od0sA5RDZ0iLjCCw46IqWQsdqtD4', '4cf0e68a-97ee-43f7-bdce-a6073ee4fd83', '4cf0e68a-97ee-43f7-bdce-a6073ee4fd83', null, '2018-04-23 10:18:01', null);
INSERT INTO `tb_wx_user` VALUES ('109', null, 'od0sA5S5NgWusbR2v0OKHq4zv_no', '59e46a3f-c6b3-4c12-8a52-dac7560255cf', '59e46a3f-c6b3-4c12-8a52-dac7560255cf', null, '2018-04-24 09:34:30', null);
INSERT INTO `tb_wx_user` VALUES ('110', null, 'od0sA5TFTaTzqNm37p4vce6MXYHc', '27a6f920-f979-43a5-b7e8-42e921dc89a9', '27a6f920-f979-43a5-b7e8-42e921dc89a9', null, '2018-04-27 15:17:29', null);
INSERT INTO `tb_wx_user` VALUES ('111', null, 'od0sA5W_aDi6JaCk_VluhN_d7g5A', '497ec8f4-dddb-4f45-9f0d-801eac8d63ea', '497ec8f4-dddb-4f45-9f0d-801eac8d63ea', null, '2018-04-27 17:01:24', null);
INSERT INTO `tb_wx_user` VALUES ('112', null, 'od0sA5TXyWNqaMUwv2_jNULayRxQ', 'ff5e2087-f2ea-4c0e-9d5e-82f5a7635282', 'ff5e2087-f2ea-4c0e-9d5e-82f5a7635282', null, '2018-04-28 11:09:22', null);
INSERT INTO `tb_wx_user` VALUES ('113', null, 'od0sA5YdC1rmmfrUj4HyCVu6lodE', 'dc2a5bf7-d531-4489-8e35-425e52a37fb4', 'dc2a5bf7-d531-4489-8e35-425e52a37fb4', null, '2018-04-29 16:03:22', null);
INSERT INTO `tb_wx_user` VALUES ('114', null, 'od0sA5d-9OmWXIQnBdzF2VRA9gaY', '04c8ae2d-2bfc-418a-826b-1daa4ab6f638', '04c8ae2d-2bfc-418a-826b-1daa4ab6f638', null, '2018-04-29 19:53:45', null);
INSERT INTO `tb_wx_user` VALUES ('115', null, 'od0sA5R1u6V1IvFW2e7uqMkC_P7w', '3fd69f94-abc2-40b7-aee6-f27aa34d9bca', '3fd69f94-abc2-40b7-aee6-f27aa34d9bca', null, '2018-04-29 23:36:45', null);
INSERT INTO `tb_wx_user` VALUES ('116', null, 'od0sA5QI2lcflJZia-DCfWXu5_GM', '2d9501e1-df78-45d0-8392-0de9da44f00e', '2d9501e1-df78-45d0-8392-0de9da44f00e', null, '2018-04-30 18:41:21', null);
INSERT INTO `tb_wx_user` VALUES ('117', null, 'od0sA5SduBEaincGzve7TuVVYd8c', 'fb00d584-8bf3-48e1-a60f-ea363972650c', 'fb00d584-8bf3-48e1-a60f-ea363972650c', null, '2018-04-30 20:37:22', null);
INSERT INTO `tb_wx_user` VALUES ('118', null, 'od0sA5QsfMbi6Jt_SEQqft1n19Uw', '32780533-77d2-45fb-a366-bedc92da573a', '32780533-77d2-45fb-a366-bedc92da573a', null, '2018-05-01 15:36:39', null);
INSERT INTO `tb_wx_user` VALUES ('119', null, 'od0sA5XRZLFOimbemXrbzDX4l1PU', 'c14cbcd9-0272-4ab8-8989-d2778c0c985c', 'c14cbcd9-0272-4ab8-8989-d2778c0c985c', null, '2018-05-01 16:08:45', null);
INSERT INTO `tb_wx_user` VALUES ('120', null, 'od0sA5TBoy4SG3K06wGB4yiDQo18', '590093db-ac0f-48cd-8b85-6e2bc44d3f0d', '590093db-ac0f-48cd-8b85-6e2bc44d3f0d', null, '2018-05-01 20:52:03', null);
INSERT INTO `tb_wx_user` VALUES ('121', null, 'od0sA5RB1NwKOOisa7Vc0T3bjtPQ', 'bfc553ff-e3e9-43fb-bae5-295621fd0cf1', 'bfc553ff-e3e9-43fb-bae5-295621fd0cf1', null, '2018-05-01 23:50:18', null);
INSERT INTO `tb_wx_user` VALUES ('122', null, 'od0sA5ekPWW5AhQHc8R6E8kSeo3E', '669f8f9b-2896-4191-8afb-3befe4019e14', '669f8f9b-2896-4191-8afb-3befe4019e14', null, '2018-05-02 00:03:24', null);
INSERT INTO `tb_wx_user` VALUES ('123', null, 'od0sA5QJm0Avbtt8lz4YI19HCHhM', 'a984a1e5-1bb9-44df-a8c4-d60fcfbcd2e1', 'a984a1e5-1bb9-44df-a8c4-d60fcfbcd2e1', null, '2018-05-02 01:17:22', null);
INSERT INTO `tb_wx_user` VALUES ('124', null, 'od0sA5TcGHFXPz_FUsIJty_rwPWE', '3d4d5f12-52ee-432d-aef7-d78b81bdb744', '3d4d5f12-52ee-432d-aef7-d78b81bdb744', null, '2018-05-02 10:15:11', null);
INSERT INTO `tb_wx_user` VALUES ('125', null, 'od0sA5U9lsLFcip076COgVyLOCtk', 'df8ed90b-44c3-401a-93a0-27b25ade2414', 'df8ed90b-44c3-401a-93a0-27b25ade2414', null, '2018-05-03 20:13:47', null);
INSERT INTO `tb_wx_user` VALUES ('126', null, 'od0sA5V9cMf0FNoiR57qToAw1ubQ', '70f73bef-8c9b-4370-ac0b-fc6588858581', '70f73bef-8c9b-4370-ac0b-fc6588858581', null, '2018-05-04 07:24:33', null);
INSERT INTO `tb_wx_user` VALUES ('127', null, 'od0sA5TZRau8mzyfr6iTlprAvGNY', '4df21864-6cb8-4fe1-a385-f36b9494f6e7', '4df21864-6cb8-4fe1-a385-f36b9494f6e7', null, '2018-05-04 15:33:38', null);
INSERT INTO `tb_wx_user` VALUES ('128', null, 'od0sA5XEGyPpsplsenqVr2NLuRxU', '7a8a8a5b-992d-4388-a0b3-608225144583', '7a8a8a5b-992d-4388-a0b3-608225144583', null, '2018-05-07 11:52:16', null);
INSERT INTO `tb_wx_user` VALUES ('129', null, 'od0sA5fS7JeEHkv1_-ClD_Kg_Rvs', '4b98d822-73ee-4438-9025-27a5641165ee', '4b98d822-73ee-4438-9025-27a5641165ee', null, '2018-05-07 23:26:05', null);
INSERT INTO `tb_wx_user` VALUES ('130', null, 'od0sA5SXgUvBbDAXqihnOLX3FRdA', '2e5155b9-fbdd-4418-bbee-2e68aa8c3a24', '2e5155b9-fbdd-4418-bbee-2e68aa8c3a24', null, '2018-05-08 14:21:36', null);
INSERT INTO `tb_wx_user` VALUES ('131', null, 'od0sA5Qo6aCvOgq9sYlJX1nxsVWU', '931944ef-e6a4-4ce5-8b5d-5520b925e047', '931944ef-e6a4-4ce5-8b5d-5520b925e047', null, '2018-05-08 15:02:07', null);
INSERT INTO `tb_wx_user` VALUES ('132', null, 'od0sA5QwJFaoVANoU12zOBt6DBPc', '8ba4bc40-b9b3-4556-915f-223fbcc26b91', '8ba4bc40-b9b3-4556-915f-223fbcc26b91', null, '2018-05-08 15:26:15', null);
INSERT INTO `tb_wx_user` VALUES ('133', null, 'od0sA5e9qozmRuArvUwxlzmHaG1w', 'd4cebd63-eb2c-44e0-aa81-a50dd8398489', 'd4cebd63-eb2c-44e0-aa81-a50dd8398489', null, '2018-05-08 22:33:18', null);
INSERT INTO `tb_wx_user` VALUES ('134', null, 'od0sA5a6UD3SSBaHiOmfnKNcgBjw', 'e0bcc2df-c41f-445a-ba52-113527555e2e', 'e0bcc2df-c41f-445a-ba52-113527555e2e', null, '2018-05-09 09:09:31', null);
INSERT INTO `tb_wx_user` VALUES ('135', null, 'od0sA5ZbdcKFZ3PPP_uyyf6Q1LHk', 'ce28bf0e-d24a-4e13-8d5b-6d231c092c8a', 'ce28bf0e-d24a-4e13-8d5b-6d231c092c8a', null, '2018-05-12 09:45:18', null);
INSERT INTO `tb_wx_user` VALUES ('136', null, 'od0sA5TAvJhUt6jNtzlDVexgHXJw', 'b084c4a7-3379-4e66-b0de-9854a75517d3', 'b084c4a7-3379-4e66-b0de-9854a75517d3', null, '2018-05-12 10:07:22', null);
INSERT INTO `tb_wx_user` VALUES ('137', null, 'od0sA5cNrO4l1g_jUUUZAfksGrD4', '223171db-8d4a-4080-a64a-a1bbac6a9746', '223171db-8d4a-4080-a64a-a1bbac6a9746', null, '2018-05-12 20:29:55', null);
INSERT INTO `tb_wx_user` VALUES ('138', null, 'od0sA5cP-amDtwPab8Q_QmYyZJv0', '6a869a46-1e8e-41e1-80ac-ae28fcbf46ee', '6a869a46-1e8e-41e1-80ac-ae28fcbf46ee', null, '2018-05-13 07:49:29', null);
INSERT INTO `tb_wx_user` VALUES ('139', null, 'od0sA5RcM5eEc7y2hPSd_JBzR0rQ', '8c8083e9-b826-429b-95f2-59c7e7abd3f8', '8c8083e9-b826-429b-95f2-59c7e7abd3f8', null, '2018-05-14 11:48:51', null);
INSERT INTO `tb_wx_user` VALUES ('140', null, 'od0sA5YWn6EhiJ1vHUtb07_ZtnfM', '8f3d94b6-a2ee-45b8-a6ae-a8f218b02e58', '8f3d94b6-a2ee-45b8-a6ae-a8f218b02e58', null, '2018-05-15 00:47:09', null);
INSERT INTO `tb_wx_user` VALUES ('141', null, 'od0sA5Xdpw_xnRt3xbCkxa4Uh1wA', '14cbfb9f-f4f6-4bf2-aecd-af65fbb3178b', '14cbfb9f-f4f6-4bf2-aecd-af65fbb3178b', null, '2018-05-15 09:31:05', null);
INSERT INTO `tb_wx_user` VALUES ('142', null, 'od0sA5fsXeFhgHl5_AA4WadT-Pfg', 'c1c18571-18e4-4d2b-a07a-83a1797b9f11', 'c1c18571-18e4-4d2b-a07a-83a1797b9f11', null, '2018-05-15 22:30:01', null);
INSERT INTO `tb_wx_user` VALUES ('143', null, 'od0sA5cGDK8oiFSzSz_gnQPaJNv8', '857785ce-4661-44f8-bbfb-a5b35774c2d2', '857785ce-4661-44f8-bbfb-a5b35774c2d2', null, '2018-05-16 17:40:42', null);
INSERT INTO `tb_wx_user` VALUES ('144', null, 'od0sA5aqlo3ajHMaRxd9VrZnY_mo', '61b6e9b8-199c-4eee-9ea6-fa8fe0a6fd01', '61b6e9b8-199c-4eee-9ea6-fa8fe0a6fd01', null, '2018-05-17 01:27:48', null);
INSERT INTO `tb_wx_user` VALUES ('145', null, 'od0sA5TUNv0zPyiyQn4EAqiCj9HY', '930c0f1d-fdc1-4e01-b519-1eaed66ac598', '930c0f1d-fdc1-4e01-b519-1eaed66ac598', null, '2018-05-17 15:57:34', null);
INSERT INTO `tb_wx_user` VALUES ('146', null, 'od0sA5aFJMagh4wQQL_pTJRc2IHA', '81fced91-ec6f-4999-b370-3940b2b572fd', '81fced91-ec6f-4999-b370-3940b2b572fd', null, '2018-05-21 12:41:41', null);
INSERT INTO `tb_wx_user` VALUES ('147', null, 'od0sA5e3jhxqPxvNhv_vqndThn3o', '195892ef-b686-48bf-840d-183252316733', '195892ef-b686-48bf-840d-183252316733', null, '2018-05-22 05:19:44', null);
INSERT INTO `tb_wx_user` VALUES ('148', null, 'od0sA5aXEIzbs-vItZeZzko38N0o', 'aee8a99c-3aa4-4acb-9022-0be69f70af96', 'aee8a99c-3aa4-4acb-9022-0be69f70af96', null, '2018-05-22 15:25:34', null);
INSERT INTO `tb_wx_user` VALUES ('149', null, 'od0sA5ef9QrYpYOhHiycsOHFKW00', 'c0bd74c9-0c6c-4489-9178-c5324511c4d8', 'c0bd74c9-0c6c-4489-9178-c5324511c4d8', null, '2018-05-22 15:45:43', null);
INSERT INTO `tb_wx_user` VALUES ('150', null, 'od0sA5Vj9ebB5yqWvwqS8dYb5Lsk', '320d05f2-69c2-4192-98f0-8ff3cb0839ef', '320d05f2-69c2-4192-98f0-8ff3cb0839ef', null, '2018-05-23 02:32:11', null);
INSERT INTO `tb_wx_user` VALUES ('151', null, 'od0sA5d8NSEth-NNHgjVeZs8VuXo', 'c5d9120b-a86c-406d-ae4f-92413a204a4c', 'c5d9120b-a86c-406d-ae4f-92413a204a4c', null, '2018-05-23 12:36:15', null);
INSERT INTO `tb_wx_user` VALUES ('152', null, 'od0sA5V5zTi4LhRX5I2wA1mxYMJ4', '6a47b7ef-d058-4301-89f0-c2bc6997f758', '6a47b7ef-d058-4301-89f0-c2bc6997f758', null, '2018-05-24 06:31:28', null);
INSERT INTO `tb_wx_user` VALUES ('153', null, 'od0sA5QoWL_PS4J2g56BJjCnRDu4', 'b61f4dad-dd15-4ec5-9df9-3499ae1908de', 'b61f4dad-dd15-4ec5-9df9-3499ae1908de', null, '2018-05-28 21:16:21', null);
INSERT INTO `tb_wx_user` VALUES ('154', null, 'od0sA5S8lrlKf2cIdP9eVq5MTbwQ', '2b674704-cf99-4680-8ee2-215b1d424e13', '2b674704-cf99-4680-8ee2-215b1d424e13', null, '2018-05-29 18:54:46', null);
INSERT INTO `tb_wx_user` VALUES ('155', null, 'od0sA5b_uetbqr8vlYe8Bb5H-8l0', '2568de1c-ca5f-4f61-a0e7-b726458e86f4', '2568de1c-ca5f-4f61-a0e7-b726458e86f4', null, '2018-06-01 16:04:26', null);
