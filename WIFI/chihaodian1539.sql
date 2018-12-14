/*
Navicat MySQL Data Transfer

Source Server         : 120.78.58.110
Source Server Version : 50547
Source Host           : 120.78.58.110:3306
Source Database       : chihaodian

Target Server Type    : MYSQL
Target Server Version : 50547
File Encoding         : 65001

Date: 2018-07-02 15:39:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for access_token
-- ----------------------------
DROP TABLE IF EXISTS `access_token`;
CREATE TABLE `access_token` (
  `id` int(11) NOT NULL,
  `access_token` varchar(1000) DEFAULT NULL,
  `expires_in` varchar(255) DEFAULT NULL,
  `add_time` varchar(255) DEFAULT NULL,
  `js_api_ticket` varchar(255) DEFAULT NULL,
  `ticket_add_time` varchar(255) DEFAULT NULL,
  `ticket_expires_in` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of access_token
-- ----------------------------
INSERT INTO `access_token` VALUES ('1', '11_ceyyojS1SXWPXIgLaoYJnXusUtkdZyRJEGnePSJ3Uffrgk91HcgkHSxPLse-62cnRozxDxNNqVQWR85cWsBQT4GCOuzEDj1T-2wSMyd-OhztP7NjbgqhN8PFveMMFYeACAFYR', null, '1530507274352', 'HoagFKDcsGMVCIY2vOjf9r40ma8helpb_TGbRy2u1qVFTokp-f70GYfj132SWWjHq0AShvfi1QW4lOIxlBJh_w', '1530507273993', '7200');

-- ----------------------------
-- Table structure for tb_address
-- ----------------------------
DROP TABLE IF EXISTS `tb_address`;
CREATE TABLE `tb_address` (
  `addr_id` int(11) NOT NULL AUTO_INCREMENT,
  `addr_user` varchar(255) DEFAULT NULL,
  `addr_name` varchar(255) DEFAULT NULL,
  `addr_tel` varchar(255) DEFAULT NULL,
  `oppen_id` varchar(255) DEFAULT NULL,
  `sort` varchar(255) DEFAULT '5',
  `city` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`addr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=255 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_address
-- ----------------------------
INSERT INTO `tb_address` VALUES ('11', ' ', '     1', '   ', '111', '20160409131928', null, null, null);
INSERT INTO `tb_address` VALUES ('13', '', '', '', 'oyqTtw3DsY4PXg1wVFfQp8ewOKh8', null, null, null, null);
INSERT INTO `tb_address` VALUES ('14', '123', '', '', 'oyqTtw3DsY4PXg1wVFfQp8ewOKh8', null, null, null, null);
INSERT INTO `tb_address` VALUES ('15', '123', '1234', '123', 'oyqTtw3DsY4PXg1wVFfQp8ewOKh8', null, null, null, null);
INSERT INTO `tb_address` VALUES ('16', '常振伟', '55', '13357823304', 'oyqTtw0g_Gc4YlHlUAUGnx6Gft90', null, null, null, null);
INSERT INTO `tb_address` VALUES ('17', '哈', '111111', '11111', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '20160416103616', null, null, null);
INSERT INTO `tb_address` VALUES ('18', '尹翔', '南京市新街口政务大厦北楼306', '18260009902', 'oyqTtw2gjY17ntKIyba_i48EB26A', '20160426221551', '1', '16', '2');
INSERT INTO `tb_address` VALUES ('19', '武蒙', '雨润大街123456789好好好好好好好好好好哈哈哈', '13800138000', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '20160504080620', '1', '16', '2');
INSERT INTO `tb_address` VALUES ('20', '我的', '123', '13800138000', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', null, '1', '16', '1');
INSERT INTO `tb_address` VALUES ('21', '哈哈哈', '你家', '1111111', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('22', '你好high糊涂推拿Jul图兔兔图图', '好好好好好好好好好好好好好好好好好好好好好好好好好', '13800138000', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '20160504080620', '1', '16', '2');
INSERT INTO `tb_address` VALUES ('24', '雷锋', '水岸明珠3', '13184235048', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', null, '1', '16', '11');
INSERT INTO `tb_address` VALUES ('25', '楚荡', '永武街16号', '18977106731', 'oyqTtwx22xt4J9oujYfC3wjRD5Uk', null, '2', '7', '12');
INSERT INTO `tb_address` VALUES ('26', '晨', '大石桥', '18913834441', 'oyqTtw_dPj4Ne9iKxO-S2uK9tGkE', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('27', '晨', '大石桥', '18913834441', 'oyqTtw_d252V55C89XiqmkGrRpHM', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('28', '李祥', '卫巷29—2,80手机', '15005151906', 'oyqTtw0p_NhAaOjZH1OOG7Npg9FA', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('29', '胡翀宇', '大石桥19号', '13851759927', 'oyqTtw91DW4dmYULSdL7n-4-G9BY', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('30', 'robbin', '柳州东路', '18301985940', 'oyqTtw-iCmyM3xVw_3XM8pO_xao4', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('31', 'ssss', '玄武大道', 'ssss18301985940', 'oyqTtw-iCmyM3xVw_3XM8pO_xao4', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('32', '哈哈', '2号', '1111111111111', 'oyqTtw-iCmyM3xVw_3XM8pO_xao4', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('33', 'xxxx', 'xxxxxx', '18018673503', 'oyqTtw6su9NPDlAhgmGUYHukqQ7A', null, '2', '23', '1');
INSERT INTO `tb_address` VALUES ('34', 'test', '南京', '13524525133', 'oyqTtw2vfPMrtQczREkZYaQmMqt0', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('35', '你', '这', '18516187204', 'oyqTtw3-pP203p605MLi9iX1utyo', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('36', '陈好', '汉中黄金时间时间', '13815875144', 'oyqTtw4Fy9Fn31QnZKfd91w9e6jw', null, '1', '16', '4');
INSERT INTO `tb_address` VALUES ('37', '看看', '做最去外婆哦破', '13357823304', 'oyqTtw0g_Gc4YlHlUAUGnx6Gft90', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('38', '12312', '123123123', '3123123123123', 'oyqTtw7EM8Dfe5FtvSXZTP3JpSAI', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('39', '张先生', '真新商务楼628', '13391008872', 'oyqTtw-Wo0Ke5FHnmcvs3-9_NB9Q', null, '4', '25', '4');
INSERT INTO `tb_address` VALUES ('40', '徐爸爸', '搞不好地方', '13577446886', 'oyqTtwzcK3cIq56eogDl4fs04UZU', null, '1', '16', '6');
INSERT INTO `tb_address` VALUES ('41', '付伟', '捎带手按时发哦就', '15120095077', 'oyqTtwz-6YtPxpphyqVGGuapqAkc', null, '1', '16', '3');
INSERT INTO `tb_address` VALUES ('42', '11', '1111', '13513533333', 'oyqTtw2EbRUgt2TfsjFkKOzDYGlc', null, '1', '16', '4');
INSERT INTO `tb_address` VALUES ('43', '八', '蘑菇头图片', '1333333333', 'oyqTtw0VCsm7fTPrZMMISKZ24-Vk', null, '1', '16', '4');
INSERT INTO `tb_address` VALUES ('44', '体检', '推荐', '15888888888', 'oyqTtw1y0z_wUYa-w1rNc8Y5s9FU', null, '1', '16', '1');
INSERT INTO `tb_address` VALUES ('45', 'ddd', '走着走着zz', 'ssd', 'oyqTtw13vXWsCtbuSsw7FD8-1oG0', null, '2', '18', '2');
INSERT INTO `tb_address` VALUES ('46', 'ss', '收拾收拾', 'ssss', 'oyqTtw8aLbm2Z9cI_lNZfqA8jO1k', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('47', '北京', '回龙观', '13718105180', 'oyqTtw-0IYTFupfhydyMQe1dKe6M', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('48', '肖文志', '休息休息谢谢', '11111111', 'oyqTtw9evW2ceV_C-wKbpEw7K1EY', null, '1', '16', '5');
INSERT INTO `tb_address` VALUES ('49', '默默', '急急急急', '13803518888', 'oyqTtw0mv38vcI-LgoICHl1wN8RQ', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('50', 'd f f', 'd f f f', 's sh h', 'oyqTtw_embzWA8S7UcaBBj_cHzGU', null, '1', '17', '2');
INSERT INTO `tb_address` VALUES ('51', 'JJ了', '\'\'\'5考虑考虑', '18658630700', 'oyqTtw2jJo2PeN2KvEFUhe7GufAA', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('52', '11', '555', '11111111111', 'oyqTtwz9hyWd87BYMxvfO1qHmQOk', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('53', '测试名', '测试。', '13525252521', 'oyqTtw7EJh-DpDBXKkkM9oQVwHTU', null, '1', '16', '12');
INSERT INTO `tb_address` VALUES ('54', '测试名', '测试地点', '13676767676', 'oyqTtw4wC-qD6qH83YGbhPS9Y4Go', null, '20', '6', '6');
INSERT INTO `tb_address` VALUES ('55', 'ssssss', '说的话电话', '13213131313', 'oyqTtw5vZzTW34diCGh8EvF-lBgM', null, '1', '16', '4');
INSERT INTO `tb_address` VALUES ('56', 'king', '啊啊啊啊', '18711110000', 'oyqTtw3qFRmliBkvEyV_hnYUFsv8', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('57', '王承林', '123358', '13193152333', 'oyqTtw7awg1cjj_jfWbARvKDmPjg', null, '4', '7', '6');
INSERT INTO `tb_address` VALUES ('58', '王晓鹏', '桃子路16号', '15907979898', 'oyqTtw6nHi7bW3tO7kwOIMnybWtI', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('59', '李先生', '哈哈哈哈', '13826531136', 'oyqTtw5A8gyh5hWYWeBmGdKifNlE', null, '6', '6', '5');
INSERT INTO `tb_address` VALUES ('60', '么么哒', '110', '15048562332', 'oyqTtww7ucEo1bpuIrsVUo4kia5o', '20160821162620', '1', '16', '2');
INSERT INTO `tb_address` VALUES ('61', '么么哒', '110', '15048562332', 'oyqTtww7ucEo1bpuIrsVUo4kia5o', '20160821162620', '1', '16', '2');
INSERT INTO `tb_address` VALUES ('62', '司小毛', '6646', '497844346', 'oyqTtwxVskVi5gknp6Zi85na8Afc', '20160821162620', '1', '16', '4');
INSERT INTO `tb_address` VALUES ('63', '沈在宏', '28栋601', '17095011358', 'oyqTtw1y5pUj0V-3aJAFi3qXJ9x4', '20160821162620', '1', '16', '2');
INSERT INTO `tb_address` VALUES ('64', '午餐', '：德克勒克', '15329109996', 'oyqTtw3ojDG0bxnTcMf3CoSuEiYY', '20160821162620', '1', '16', '4');
INSERT INTO `tb_address` VALUES ('65', '到达', '赶紧睡觉', '13112341234', 'oyqTtw3LfpX7MuHYaKpETe2mQCag', '20160821162620', '1', '16', '4');
INSERT INTO `tb_address` VALUES ('66', '哈哈哈哈', '哥给你', '13655552236', 'oyqTtw_1lKS5bMAK9U0Ujo6jGIUM', '20160821162620', '1', '16', '9');
INSERT INTO `tb_address` VALUES ('67', '发货', '随便吧暴饮暴食', '15699999999', 'oyqTtwyhgl0bTLUXOLonU-YjzoFo', '20160821162620', '1', '4', '3');
INSERT INTO `tb_address` VALUES ('68', '叶晓明', '西丽街道88栋501', '15999594104', 'oyqTtw7YNOwzjFWNQ-OnyFaODSgM', '20160821162620', '6', '6', '4');
INSERT INTO `tb_address` VALUES ('69', '生里', '14722', '13100000000', 'oyqTtw4orv5TBRsz1CCrrU18du5s', null, '1', '16', '4');
INSERT INTO `tb_address` VALUES ('70', '这', '在', '我', 'oyqTtwz6CKxywINf8fIHjdTkhfy8', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('71', '测试', '测试', '13128845886', 'ou8VTwljRzueY2YuUjYxNnB0YKTQ', null, '1', '16', '1');
INSERT INTO `tb_address` VALUES ('72', '刘韦', '123', '18855150306', 'ou8VTws6WD0XhKyFIrzurEOk_B08', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('73', '咯噢噢', '他们默默', '18365432123', 'ou8VTwjcT9r3iq1TdcVMsn5zlSwI', null, '1', '16', '3');
INSERT INTO `tb_address` VALUES ('74', '测试', '测试', '13812345678', 'ou8VTwskoxxmWPrfJzWqyNaPNMe8', null, '1', '16', '3');
INSERT INTO `tb_address` VALUES ('75', 'h l', '啦啦', '利库路特', 'ou8VTwqfBP8vjG9h55ihMQ01MRY4', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('76', '伍照生', '很多亟待解决', '15329109996', 'ou8VTwsobQoGHPRsCxIq_m_jk_z8', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('77', '陈瑞', '1111', '1508603232', 'ou8VTwq99JgxdYFlFBn0QS_aOSbQ', null, '1', '16', '4');
INSERT INTO `tb_address` VALUES ('78', '哈哈', '4444', '13184222222', 'ou8VTwn85kT1eSZmL2Lz7RmXZo10', null, '1', '16', '1');
INSERT INTO `tb_address` VALUES ('79', '我', '你们都', '19398273728', 'ou8VTwjjeTBoS_83y-GVz_dsULFA', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('80', '1', '122', '18057936784', 'ou8VTwlq0fSMJah4dfXyYfKY5CzQ', null, '1', '16', '1');
INSERT INTO `tb_address` VALUES ('81', 'sfsd', 'asdfasfasdfadsf', '13112341234', 'ou8VTwvABQpyIpJDBFvGnUPJAcmE', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('82', '小子', '44', '13826062828', 'ou8VTwoEE7MArX5PFaNqdsYysPwc', null, '1', '16', '1');
INSERT INTO `tb_address` VALUES ('83', '小子', '44', '13826062828', 'ou8VTwoEE7MArX5PFaNqdsYysPwc', null, '1', '16', '1');
INSERT INTO `tb_address` VALUES ('84', '郭鑫', '566666', '18821780377', 'ou8VTwkfzz1iPJyoVW11lHyzoedU', null, '6', '16', '5');
INSERT INTO `tb_address` VALUES ('85', '子勺', '乡子_45号', '13566666778', 'ou8VTwic_nOuiMobj9DJFPuB5ekU', null, '1', '16', '4');
INSERT INTO `tb_address` VALUES ('86', '肖吐', 'V领酷我', '13800000000', 'ou8VTwnjnL5K8tAIPFPGo4MDD9os', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('87', '功能', '来咯摸摸哦哦哦OK啦', '13800000000', 'ou8VTwtXee4vzTawUp9dyfUNq7Cc', null, '1', '16', '1');
INSERT INTO `tb_address` VALUES ('88', 'George', '哈千区', '12345678914', 'ou8VTwsxLQTCa46WsPLUecPZW02U', null, '1', '16', '3');
INSERT INTO `tb_address` VALUES ('89', 'zzxx', '而通过 v 很艰难！', '124445566777', 'ou8VTwi5QeqO9G9Crq5Gxafs6aGA', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('90', '哈哈哈', '哈哈哈', '11111111111', 'ou8VTwtCzmuG1D1T95LN4UwyUY2E', null, '1', '16', '5');
INSERT INTO `tb_address` VALUES ('91', '哈哈', '共', '15840040044', 'ou8VTwuYXOhkEJkcOrn7_G8Bfr7Q', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('92', '12', '123', '15836985236', 'ou8VTwhOrxREKicoSZhZvrA-_Kvk', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('93', 'aa', 'ffgg', '12345678912', 'ou8VTwtC9vvMm4TZ_aoMlVwiEn-E', null, '1', '17', '2');
INSERT INTO `tb_address` VALUES ('94', '11', '21', '11', 'ou8VTwiy0LiYm5casAiw9NZV5P-E', null, '1', '16', '1');
INSERT INTO `tb_address` VALUES ('95', '11', '1111', '13815511069', 'ou8VTwlXE--4jVErbh8UhrjiisNE', null, '1', '16', '3');
INSERT INTO `tb_address` VALUES ('96', '8555', '吐了咯哦里', '13518227731', 'ou8VTwgF5REv9Jcc2L077FbunN8s', null, '1', '16', '6');
INSERT INTO `tb_address` VALUES ('97', '椰', '随便忋', '13101231887', 'ou8VTwqvmbvC70s3zwNfua8yfhLs', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('98', '裤', '5', '15215478985', 'ou8VTwlX7U2v-AmokmTT2dMHHu2g', null, '5', '16', '7');
INSERT INTO `tb_address` VALUES ('99', '老人', '哈哈哈哈', '15259771234', 'ou8VTwrSkK02zQAqRVoTLXgKJfKE', null, '1', '16', '5');
INSERT INTO `tb_address` VALUES ('100', '黄思绪', '规划和斤斤计较', '15895289058', 'ou8VTwtP7bAsgg_VjS6RL26-NbY0', null, '1', '16', '10');
INSERT INTO `tb_address` VALUES ('101', '嘿嘿', '好', '18980581676', 'ou8VTwsfziZsGMXNyCMWVCtFRvak', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('102', '俞忠鑫', '安宁', '15163190697', 'ou8VTwjqR_GaTbEMnL_QAv5WQ8V4', null, '1', '16', '3');
INSERT INTO `tb_address` VALUES ('103', '看看', '嗯嗯', '15856423685', 'ou8VTwrN4op-MSU7n4rA5fV5EcKE', null, '1', '16', '2');
INSERT INTO `tb_address` VALUES ('104', '牛敏', '贴近', '12313155131', 'ou8VTwhiWQROhAXw8ghU41ozsTwU', null, '1', '16', '4');
INSERT INTO `tb_address` VALUES ('105', '郭耀歆', '1717', '18120052915', 'ou8VTwk0U1f87cCyUDmUm0tC1i9M', null, '4', '16', '10');
INSERT INTO `tb_address` VALUES ('106', '郭耀歆', '1717', '18120052915', 'ou8VTwk0U1f87cCyUDmUm0tC1i9M', null, '4', '16', '10');
INSERT INTO `tb_address` VALUES ('107', '济阳', '啦咯啦咯看累了垃圾', '13810354792', 'ou8VTwrBRhpyJ3VjkS1O4qKD46mw', null, '1', '16', '4');
INSERT INTO `tb_address` VALUES ('108', '4111', '哈哈哈', '2222222222', 'ou8VTwqbP6sY2C6blaA0Vg7BvXrQ', '20161109222555', '2', '30', '5');
INSERT INTO `tb_address` VALUES ('109', '百战百胜吧', '孩子说话', '13732536976', 'ou8VTwpefG2kauXvtutM_ww6E03o', '20161027122748', '1', '16', '1');
INSERT INTO `tb_address` VALUES ('110', '正在做', '108538258855', '13811111111', 'ou8VTwqXTCPIlMeo3TYimLlrYU2A', '20161027122748', '1', '16', '3');
INSERT INTO `tb_address` VALUES ('111', '法国就让乳房', 'tyuhg', '13333333333', 'ou8VTwvYwOYMgm0ossa390RPdLVI', '20161027122748', '2', '14', '2');
INSERT INTO `tb_address` VALUES ('112', 'wwww', '氢气球', '18210079780', 'ou8VTwl3LM-CjVCDO64fbcJSVtsY', '20161027122748', '1', '16', '1');
INSERT INTO `tb_address` VALUES ('113', '肖先生', '农林路', '13510661780', 'ou8VTwiJcLkKs8vxLdvS-yBcZ5A4', '20161027122748', '6', '6', '3');
INSERT INTO `tb_address` VALUES ('114', '谢谢', '吃饭饭', '15626028899', 'ou8VTwp10jbngeWCWhJKHWxuQ-5I', '20161027122748', '6', '16', '4');
INSERT INTO `tb_address` VALUES ('115', '沈龙', '北滘', '18676181261', 'ou8VTwp-Qn4YExm5uwH4c-dgOTSg', '20161027122748', '8', '6', '4');
INSERT INTO `tb_address` VALUES ('116', '111', '123', '15151212114', 'ou8VTwoVbGuhH2GLGAjxjSywXPf0', '20161027122748', '1', '16', '1');
INSERT INTO `tb_address` VALUES ('117', '赶紧摸了', '肉夹馍了啦', '131222233333', 'ou8VTwl7ZK4QQw9S7OxccafulHxM', '20161027122748', '1', '16', '2');
INSERT INTO `tb_address` VALUES ('118', '赶紧摸了', '肉夹馍了啦', '131222233333', 'ou8VTwl7ZK4QQw9S7OxccafulHxM', '20161027122748', '1', '16', '2');
INSERT INTO `tb_address` VALUES ('119', 'uiuugg', '这种事情还是发生了变化和成长的路上我', '18643224998', 'ou8VTwuWpLPkwEuAnmdGreneXEnk', '20161027122748', '1', '16', '2');
INSERT INTO `tb_address` VALUES ('120', '发反反复复', 'g h h h h h j', '13760876988', 'ou8VTwusUEW3tdzUpHwr05p6aLpA', '20161027122748', '1', '16', '2');
INSERT INTO `tb_address` VALUES ('121', '陈', '哈哈', '11111111111', 'ou8VTwgNa3khqV-8T2LoVnmXF11Q', '20161027122748', '1', '16', '2');
INSERT INTO `tb_address` VALUES ('122', '李超', '新闻路216号', '13698732903', 'ou8VTwrXVM_Pq3OdVJ6SZHsiyUlE', '20161027122748', '2', '29', '5');
INSERT INTO `tb_address` VALUES ('123', '娃娃', '进1我1滴哦why移民一', '13815856582', 'ou8VTwupTEPHJBs9dBRiBnmUKdKI', '20161109222555', '1', '16', '2');
INSERT INTO `tb_address` VALUES ('124', '李明', '可口可乐了可口可乐了', '13460688548', 'ou8VTwl3l6uGbY0EM4J817DkFCLU', '20161109222555', '1', '16', '1');
INSERT INTO `tb_address` VALUES ('125', '时间没', '流量偷懒调理', '15914023551', 'ou8VTwqeX8pySxBZ2pukb1rMS1bI', '20161109222555', '1', '16', '4');
INSERT INTO `tb_address` VALUES ('126', '测试', '测试一下', '18819067178', 'ou8VTwvlcjYZS90t71g5dZJ1VwQ4', '20161109222555', '1', '16', '2');
INSERT INTO `tb_address` VALUES ('127', 'g h h h h h j', 'g h g', '5555667888', 'ou8VTwt5NriYWu5IffvxxdmUyPV0', '20161109222555', '1', '16', '3');
INSERT INTO `tb_address` VALUES ('128', '小伙伴', '绝对经典看看', '13898980198', 'ou8VTwsR0jPYrT5d5WyjJob5Yc4g', '20161109222555', '1', '16', '3');
INSERT INTO `tb_address` VALUES ('129', '在！', '你？好', '13538240895', 'ou8VTwnIPlReqwsTZKS4vpDIe350', '20161109222555', '1', '16', '2');
INSERT INTO `tb_address` VALUES ('130', '昌平', '点吧', '17415655785', 'ou8VTwtaRjh60nRuE2Hj8rTztbho', '20161109222555', '1', '16', '4');
INSERT INTO `tb_address` VALUES ('131', 'test', '下沙会发路', '13923870708', 'ou8VTwsRfl7lA6YAuBi7wb_I2NMs', '20161109222555', '1', '16', '3');
INSERT INTO `tb_address` VALUES ('132', '萨顶顶', '就收不到黄辉的', '13909090909', 'ou8VTwkYbPARvzaRjo9tljYcd-KE', '20161109222555', '1', '16', '2');
INSERT INTO `tb_address` VALUES ('133', '哈哈镜', '好纠结123', '11111111221', 'ou8VTwl1PtN-wuilfv9BEVCAnjCc', '20161109222555', '1', '16', '1');
INSERT INTO `tb_address` VALUES ('134', '陈初', '东风路1号', '13430268282', 'ou8VTwn7v9ukn-pj2ewogKxJpeyk', '20161109222555', '1', '16', '2');
INSERT INTO `tb_address` VALUES ('135', '腊八', '比较', '12345648912', 'ou8VTwor6u_RAjAo1JfGNlOOaAyc', '20161109222555', '1', '16', '4');
INSERT INTO `tb_address` VALUES ('136', '徐', '到到', '13544452227', 'ou8VTwg-BlQa4CZOB2Ka4JBPXlS4', '20161109222555', '1', '16', '1');
INSERT INTO `tb_address` VALUES ('137', '测试', '测试', '12345678901', 'ou8VTwihkxJm9ZYe_FXTFi6lwPaY', '20161109222555', '1', '16', '4');
INSERT INTO `tb_address` VALUES ('138', '孙鹏', '1234567988555', '15551198902', 'ou8VTwvdeCe_WF5F_V18ZFDftFNg', '20161109222555', '1', '16', '1');
INSERT INTO `tb_address` VALUES ('139', '呵呵呵', '呵呵', '13128808042', 'ou8VTwp8MZyN9I0l-89C9nwlGifA', '20161109222555', '1', '16', '3');
INSERT INTO `tb_address` VALUES ('140', 'hdje', 'bdjehshsh', '13051917654', 'ou8VTwsapaLt2qiTw6rk8PNpWXAA', '20161109222555', '3', '18', '2');
INSERT INTO `tb_address` VALUES ('141', '李涛涛', '南京大学', '15295063375', 'ou8VTwumv0a3ftwmieTR_XoOGHp8', '20161210111537', '1', '16', '11');
INSERT INTO `tb_address` VALUES ('142', '来了就', '记录贴', '15295063232', 'ou8VTwumv0a3ftwmieTR_XoOGHp8', '20161210111540', '1', '16', '1');
INSERT INTO `tb_address` VALUES ('143', '啦啦啦', '健健康康', '15623028092', 'ou8VTwoQa1RZRIy7OgEicEENwWrI', '20161127001644', '1', '16', '2');
INSERT INTO `tb_address` VALUES ('144', 'g h h', '12号', '13800138000', 'ou8VTwuGDs7y4UC6ny-gZiLE_kzY', null, '1', '16', '3');
INSERT INTO `tb_address` VALUES ('145', '112', '哦送你们', '11111111111', 'ou8VTwluWTmRDqllWBNY-z08ADSQ', null, '1', '16', '3');
INSERT INTO `tb_address` VALUES ('148', 'zzm', '让他', '12456677543', 'ou8VTwo3TLbHyAj5y_GiqaIKZD3c', '20161130155024', '1', '16', '2');
INSERT INTO `tb_address` VALUES ('149', '1', '摸摸摸哦哦', '111111111111', 'ou8VTwsKzF4rScQcxpHaNrF8ehMo', '20161130155024', '1', '16', '1');
INSERT INTO `tb_address` VALUES ('150', '刘军伟', '橡树玫瑰城', '18539299635', 'ou8VTwtCk47MJ8xcFlgTyOSEMBHU', '20161130155024', '2', '12', '4');
INSERT INTO `tb_address` VALUES ('151', '杨杭富', '股海护航哈', '15981763995', 'ou8VTwsimQEiB9EsTxFSM8od0ung', '20161130155024', '2', '16', '1');
INSERT INTO `tb_address` VALUES ('152', '黄生', '1号', '18673002816', 'ou8VTwt3hOSd59Rqq7HjbXNN4wbQ', '20161130155024', '1', '16', '3');
INSERT INTO `tb_address` VALUES ('153', '王先生', '岳阳电大', '18773000370', 'ou8VTwkYfbPjT64INDLsNZcnMiMo', '20161130155024', '1', '14', '2');
INSERT INTO `tb_address` VALUES ('154', '过敏', '你明明', '1122334456', 'ou8VTwneV2yYX3fistDWn2YUPpAo', '20161130155024', '8', '16', '12');
INSERT INTO `tb_address` VALUES ('155', '123', '你猜', '1123456789', 'ou8VTwugFUqywpELAP4xCuy6BfLA', '20161130155024', '1', '16', '2');
INSERT INTO `tb_address` VALUES ('156', '邹元凯', '积极叽叽叽叽集体', '18615595642', 'ou8VTwiXqAeu9XyyRH0ZyLuD5D-g', '20161130155024', '1', '16', '7');
INSERT INTO `tb_address` VALUES ('157', '王晓', '可口可乐了', '13226799648', 'ou8VTwpDyvM2BQtpIkMKTSebaCAE', '20161130155024', '1', '16', '4');
INSERT INTO `tb_address` VALUES ('158', '小躲躲藏藏', '都反反复复个', '11134444444', 'ou8VTwrIJF2u4uNc9uyVWSHajLvI', '20161210111540', '1', '16', '2');
INSERT INTO `tb_address` VALUES ('159', '哦哦哦', '恶魔', '12345678932', 'ou8VTwgye2TBios1mhSgWo7Y29Wo', '20161210111540', '4', '16', '2');
INSERT INTO `tb_address` VALUES ('160', '看看咯', '咯楼啦咯啦', '18428325465', 'ou8VTwoMfNQanrIel1gPqDU-fEVw', '20161210111540', '5', '25', '3');
INSERT INTO `tb_address` VALUES ('161', '给 v 才明白', 'vgcjbbv', '13333333333', 'ou8VTwri_ghsc-jrLIMykzJFWiY8', '20161210111540', '1', '16', '1');
INSERT INTO `tb_address` VALUES ('162', '给 v 才明白', 'vgcjbbv', '13333333333', 'ou8VTwri_ghsc-jrLIMykzJFWiY8', '20161210111540', '1', '16', '5');
INSERT INTO `tb_address` VALUES ('163', '徐凯', '民治街道', '13066854836', 'ou8VTwvufXk1IPojkbVnXPC29x70', '20161210111540', '6', '6', '5');
INSERT INTO `tb_address` VALUES ('164', 'w w', '11', '18912344311', 'ou8VTwh6q8D7f6lzV11zWwNJEdoo', '20161210111540', '1', '16', '2');
INSERT INTO `tb_address` VALUES ('165', 'vgg', '红红火火吧', '45667777', 'ou8VTwpSOjHVBYxYL0GnEXSrZjiE', '20161210111540', '1', '16', '2');
INSERT INTO `tb_address` VALUES ('166', '顾洋', '1242', '11111111111', 'ou8VTwl4LfuGfeBDXXRIyFNa524M', '20161210111540', '1', '16', '2');
INSERT INTO `tb_address` VALUES ('167', '砸死三', '三国', '13800007895', 'ou8VTwknEeB6IMFo6fiwHpeunJe4', '20161210111540', '1', '16', '1');
INSERT INTO `tb_address` VALUES ('168', 'Aa', 'qqq', '13512445678', 'ou8VTwjv0ffC53ecEA8TJPoPlryw', '20161210111540', '1', '16', '1');
INSERT INTO `tb_address` VALUES ('169', 's c x z x', '睡不醒卞石俊不是宝宝睡不着', '13542250216', 'ou8VTwnJ4fG14A1ZvOnU7w7Snzn8', '20161210111540', '1', '16', '1');
INSERT INTO `tb_address` VALUES ('170', '我的', '我的', '18911271075', 'ou8VTwtpDIXJSArqcl5yBKOAFPbE', '20161210111540', '1', '16', '2');
INSERT INTO `tb_address` VALUES ('171', '测试', 'bbb', '123456', 'ou8VTwkr9j05vwP2DOdSMslvs5_4', '20161210111540', '1', '6', '6');
INSERT INTO `tb_address` VALUES ('172', '测试', 'bbb', '123456', 'ou8VTwkr9j05vwP2DOdSMslvs5_4', '20161210111540', '1', '6', '6');
INSERT INTO `tb_address` VALUES ('173', '方丽华', '郑州市150号', '15038209205', 'ou8VTwg5_-uTLHJsUcs1IQv1urds', '20161210111540', '2', '12', '2');
INSERT INTO `tb_address` VALUES ('174', '朱玺', '范德萨发送到防守打法', '15891752166', 'ou8VTwrhi-krCnHOjhoW2DQ8kmeA', '20161210111540', '3', '16', '3');
INSERT INTO `tb_address` VALUES ('175', '你那里', '哦啦啦', '1555800000', 'ou8VTwvguGfNAn95Agj4m0xDm-x0', '20161210111540', '3', '19', '3');
INSERT INTO `tb_address` VALUES ('176', '明', '季节', '13624968925', 'ou8VTwhD2abBPKz9Lqjgitf54IgY', '20161210111540', '1', '16', '5');
INSERT INTO `tb_address` VALUES ('177', 'dddsssd', 'ddfff', '13088888889', 'ou8VTwlIaZS5_PZLQj1ZpVFUyfUc', '20161210111540', '1', '16', '7');
INSERT INTO `tb_address` VALUES ('178', '我的', '从', '12357415999', 'ou8VTwqooeiq3A8M6pcSU7UqIcRo', '20161210111540', '1', '16', '3');
INSERT INTO `tb_address` VALUES ('179', 'Mr Mr', '吧', '12345678912', 'ou8VTwh0ZyqevWdJ8G7LAsB5dqYY', '20161210111540', '1', '16', '1');
INSERT INTO `tb_address` VALUES ('180', '你猜', '5555', '18692244860', 'ou8VTwpe5fxrlSiIyV2xBo3UfyMY', '20161210111540', '1', '16', '9');
INSERT INTO `tb_address` VALUES ('181', '考虑', '考虑考虑', '15233336666', 'ou8VTwqfjfzVZG1Q_KtWpGSvdn0M', '20161210111540', '1', '16', '3');
INSERT INTO `tb_address` VALUES ('182', '啊啊啊', '涂涂乐咯', '18692244860', 'ou8VTwmBWcoTPO-G1uJo8jPIY7ok', '20161210111540', '1', '16', '2');
INSERT INTO `tb_address` VALUES ('183', '高规格', '古巴刚好', '1817171717177', 'ou8VTwka36Q5jD1W8y-XesIxuzqM', '20161210111540', '1', '16', '2');
INSERT INTO `tb_address` VALUES ('184', '反反复复', '东方方法', '同样一句话', 'ou8VTwka36Q5jD1W8y-XesIxuzqM', '20161210111540', '1', '16', '4');
INSERT INTO `tb_address` VALUES ('185', '222222', '测试地址', '133266842688', 'ou8VTwkqWKpBIeB6hWHlaF9BNVCw', '20161210111540', '3', '5', '1');
INSERT INTO `tb_address` VALUES ('186', '好好', '哈哈哈', '13988880000', 'ou8VTwvpNBhHVI1q8G1ja7MJQiv4', '20161210111540', '1', '16', '4');
INSERT INTO `tb_address` VALUES ('187', '阿萨德', '双方刚刚好', '13988811', 'ou8VTwtOqDb0NfOCfHUmcywYcsQk', '20161210111540', '1', '16', '2');
INSERT INTO `tb_address` VALUES ('188', 'lw', '艾弗森的发但是', '13662302342', 'ou8VTwmJPHCRgEnh38WVnVjl71gw', '20161210111540', '1', '16', '4');
INSERT INTO `tb_address` VALUES ('189', '啊啊啊', '11728866', '11111111111', 'ou8VTwmG1n9FKMlFY-Yg_mGWUPRk', '20161210111540', '1', '16', '6');
INSERT INTO `tb_address` VALUES ('190', '蚊子', '呜呜呜呜', '18611012345', 'ou8VTwjX89wR-0FT6zpiCGZ0LlHg', '20161210111540', '1', '16', '2');
INSERT INTO `tb_address` VALUES ('191', '欧阳', '白石洲三坊', '13858568903', 'ou8VTwnhZdm6fsEsVqiBSFspZVrw', '20161210111540', '6', '6', '4');
INSERT INTO `tb_address` VALUES ('192', '123', '123', '12345678912', 'ou8VTwjMNcVBIftVfl-hhrzmbWe0', '20161210111540', '1', '16', '1');
INSERT INTO `tb_address` VALUES ('193', '啊啊啊', '撒打算打算打算的', '12345678912', 'ou8VTwnwvgNv-jmI087Uq2WNysIE', '20161210111540', '2', '4', '4');
INSERT INTO `tb_address` VALUES ('194', '回家', '赶紧', '13355012176', 'ou8VTwlow9N1LSk74r_nzsQPownA', '20161210111540', '1', '16', '3');
INSERT INTO `tb_address` VALUES ('195', '158', '北京时间拖', '13457766524', 'ou8VTwjx74fGHDAddsKR8nKdw6LM', '20161210111540', '2', '7', '2');
INSERT INTO `tb_address` VALUES ('196', 'George', '汽博中心', '18223403150', 'ou8VTwvTX3EAO7bNmlw9hxc0arpc', '20161210111540', '1', '4', '1');
INSERT INTO `tb_address` VALUES ('197', 'david', '家益欣城', '18200117572', 'ou8VTwhy0RbNJkVInKkEOnQMmQRg', '20170315212824', '1', '25', '12');
INSERT INTO `tb_address` VALUES ('198', '嗲', '飞镖', '1821111111', 'ou8VTwoTmUxNyPzDJKH1Kw6lIdOw', '20161210111540', '1', '16', '3');
INSERT INTO `tb_address` VALUES ('199', '陈超', '锦和园', '13467508619', 'ou8VTwntwZAiBzEvceFByM2-wzzM', '20161210111540', '2', '14', '4');
INSERT INTO `tb_address` VALUES ('200', '熊坚', '近华浦路春苑小区', '18288656621', 'ou8VTwkTtq73Qv_GJzOelEI4cch0', '20161210111540', '2', '29', '5');
INSERT INTO `tb_address` VALUES ('201', '啦啦啦', '好了了是了了我', '11111111111', 'ou8VTwvfv2KatN3jBROyv9loYtL0', '20161210111540', '1', '16', '5');
INSERT INTO `tb_address` VALUES ('202', '向前', '1257', '126574555444', 'ou8VTwpu5-IaLxzzVukJSph460I0', '20161210111540', '1', '16', '1');
INSERT INTO `tb_address` VALUES ('203', '九姐', '吐了监控测试', '12253866368', 'ou8VTwuNseoT0u6ZSNiduEf0VBpo', '20161210111540', '5', '19', '6');
INSERT INTO `tb_address` VALUES ('204', '牛', '236好了', '阿狸', 'ou8VTwkgKZjReN9SeAwgeyOzG4t8', '20161210111540', '4', '16', '4');
INSERT INTO `tb_address` VALUES ('205', '亚姑', '郭家街', '13371222200', 'ou8VTwrYsCDChMK2x-TmrWXJE8jk', '20161210111540', '8', '16', '8');
INSERT INTO `tb_address` VALUES ('206', '测试', '测试', '11111111111', 'ou8VTwhui8qlrs89YpiTlbAoT8tw', '20161210111540', '1', '16', '1');
INSERT INTO `tb_address` VALUES ('207', '1', '0', '13912341234', 'ou8VTwkvMaWdd10K7SXbFNF1w3LY', '20161210111540', '2', '16', '1');
INSERT INTO `tb_address` VALUES ('208', '嘎嘎嘎嘎', '25', '18823555212', 'ou8VTwpn3hcHBtD2r0859C8MYbuM', '20161210111540', '1', '16', '3');
INSERT INTO `tb_address` VALUES ('209', '123', '123', '12345674567', 'ou8VTwiXbthPMkGNVukpxYKZvlsc', '20161210111540', '1', '16', '2');
INSERT INTO `tb_address` VALUES ('210', '测试', '华府一品', '112111', 'ou8VTwtReRdPy3ALUd9auyImuC2c', '20161210111540', '7', '23', '5');
INSERT INTO `tb_address` VALUES ('211', '哈哈', '空军建军节', '14725836900', 'ou8VTwlC5eWNh785ozzZo6SK0IQE', '20161210111540', '1', '16', '2');
INSERT INTO `tb_address` VALUES ('212', '三', '天东路', '13912314214', 'ou8VTwvNu_PSg5mR-tLUSa91vd-s', '20161210111540', '1', '16', '1');
INSERT INTO `tb_address` VALUES ('213', '追', '分耳朵', '13770220222', 'ou8VTwjzart18r9JF6IP9TdmChvw', '20161210111540', '1', '16', '4');
INSERT INTO `tb_address` VALUES ('214', 'f f g g g g', 'f f f f g f', 'f f f g g g', 'ou8VTwuxSYLFhGl32RejpJQJoXrc', '20161210111540', '1', '16', '6');
INSERT INTO `tb_address` VALUES ('215', '三十岁', '都是对的的', '点点滴滴', 'ou8VTwmitUc2h8p_B8HorvJWaxvM', '20161210111540', '1', '16', '3');
INSERT INTO `tb_address` VALUES ('216', 'qqq', 'ddfcd', '1111', 'ou8VTwn0ayzSIY7fzH5XfFKcNjHo', '20161210111540', '1', '16', '4');
INSERT INTO `tb_address` VALUES ('217', '罗丁丁', '西乡马鞍山小区81栋103室', '13929540985', 'ou8VTwgCXDLABjyeOvNRzDKVCrp4', '20161210111540', '6', '6', '5');
INSERT INTO `tb_address` VALUES ('218', '11', '111', '，', 'ou8VTwn62cBXWeyMawJt1cDFfMIo', '20161210111540', '1', '16', '3');
INSERT INTO `tb_address` VALUES ('219', '哈哈哈哈', '朝阳区', '13333333333', 'ou8VTwstT75lAGv2tvriq4iqMvBQ', null, '1', '16', '3');
INSERT INTO `tb_address` VALUES ('220', 'hello', '123', '123456', 'ou8VTwr70zV4N0O32RW-t7huHIp8', null, '1', '16', '1');
INSERT INTO `tb_address` VALUES ('221', 'djnsn', '37994949', '467979979', 'ou8VTwq4IpwQIDolusznhp1qFevk', null, '1', '16', '3');
INSERT INTO `tb_address` VALUES ('222', '刘三', '123', '13827986017', 'ou8VTwtYCVgZC4AA9THNOov3WScs', null, '2', '6', '3');
INSERT INTO `tb_address` VALUES ('223', 'fds', '323', '13', 'oXPKluMX0pT3CU1eftR8u899ayow', null, '8', '5', '6');
INSERT INTO `tb_address` VALUES ('224', '罗亚明', '红太阳大酒店', '15899776132', 'o5ql51Uk1EKczU9IUj6_j2WidP7A', null, '14', '14', '2');
INSERT INTO `tb_address` VALUES ('225', '陈仕鹏', '鸶', '13790445950', 'o5ql51ZfuKsrSvX-QtmRG7Im5VWs', null, '1', '16', '4');
INSERT INTO `tb_address` VALUES ('226', 'DCWI', 'TYUI', '12345678912', 'o5ql51QCZXJ8Nxl1Vw6uX-ODkZ3M', null, '4', '6', '5');
INSERT INTO `tb_address` VALUES ('227', '鸣人', '木叶忍者村', '15973246801', 'o5ql51QCZXJ8Nxl1Vw6uX-ODkZ3M', '20180427110023', '7', '1', '5');
INSERT INTO `tb_address` VALUES ('228', '罗亚明明', '向家湾', '15899663311', 'o5ql51YcVXjmmuAmy-l0pvc4GFWo', null, '1', '16', '1');
INSERT INTO `tb_address` VALUES ('229', '了了了了了', '来咯么得的', '22345678901', 'o5ql51QCZXJ8Nxl1Vw6uX-ODkZ3M', null, '1', '16', '7');
INSERT INTO `tb_address` VALUES ('230', '王总', '股管理管理', '13537637641', 'o5ql51RwtWo_C-wsJL2uyck32g50', null, '3', '4', '4');
INSERT INTO `tb_address` VALUES ('231', '若', '文化路110号', '15036356407', 'o5ql51QR_d1ppZldNHqcZYEtWGII', '20180601163708', '2', '12', '5');
INSERT INTO `tb_address` VALUES ('232', '嗯', '坂田街道', '15036356407', 'o5ql51QR_d1ppZldNHqcZYEtWGII', '20180511152323', '6', '6', '6');
INSERT INTO `tb_address` VALUES ('233', '旧', '北桥', '13526962645', 'o5ql51YsyOnnOu9jjN54MsDUd_LM', '20180511152323', '4', '16', '7');
INSERT INTO `tb_address` VALUES ('234', '刘杨', '文化路', '15036356407', 'o5ql51aSzcJPzLphwrR6ldsejonA', null, '2', '12', '5');
INSERT INTO `tb_address` VALUES ('235', '刘杨', '文化路', '15036356407', 'o5ql51aSzcJPzLphwrR6ldsejonA', null, '2', '12', '5');
INSERT INTO `tb_address` VALUES ('236', '刘文科', '估计家里', '18329903331', 'o5ql51QCZXJ8Nxl1Vw6uX-ODkZ3M', null, '3', '4', '5');
INSERT INTO `tb_address` VALUES ('237', '廖汉祥', '深海大厦', '13652669101', 'o5ql51XnjMqwYRG-VcVbCZARKFa8', '20180601163708', '6', '6', '8');
INSERT INTO `tb_address` VALUES ('238', '半只烂鱼', '坂田街道', '15036356407', 'o5ql51fPmHoYL34Eqcu7MNyFaolE', null, '6', '6', '6');
INSERT INTO `tb_address` VALUES ('239', '复活甲', '都好久', '13537637641', 'o5ql51R-gHJb78XatgTYJzW--J24', null, '4', '16', '4');
INSERT INTO `tb_address` VALUES ('240', '蒋思勇', '这样你是', '13600190077', 'o5ql51UthdosV3y2UzlMsfAmnNLo', null, '1', '16', '1');
INSERT INTO `tb_address` VALUES ('241', '蒋思勇', '这样你是', '13600190077', 'o5ql51UthdosV3y2UzlMsfAmnNLo', null, '1', '16', '1');
INSERT INTO `tb_address` VALUES ('242', '刘云飞', '上合花园A栋2805', '13715066601', 'o5ql51SAINoLyD3aV53kokij0K9k', null, '6', '6', '5');
INSERT INTO `tb_address` VALUES ('243', '刘云飞', '上合花园A栋2805', '13715066601', 'o5ql51SAINoLyD3aV53kokij0K9k', null, '6', '6', '5');
INSERT INTO `tb_address` VALUES ('244', '刘云飞', '上合花园A栋2805', '13715066601', 'o5ql51SAINoLyD3aV53kokij0K9k', null, '6', '6', '5');
INSERT INTO `tb_address` VALUES ('245', '刘云飞', '上合花园A栋2805', '13715066601', 'o5ql51SAINoLyD3aV53kokij0K9k', null, '6', '6', '5');
INSERT INTO `tb_address` VALUES ('246', '刘云飞', '上合花园A栋2805', '13715066601', 'o5ql51SAINoLyD3aV53kokij0K9k', null, '6', '6', '5');
INSERT INTO `tb_address` VALUES ('247', '半只烂鱼', '北桥', '15036356407', 'o5ql51QR_d1ppZldNHqcZYEtWGII', null, '4', '16', '7');
INSERT INTO `tb_address` VALUES ('248', '半只烂鱼', '北桥', '15036356407', 'o5ql51QR_d1ppZldNHqcZYEtWGII', null, '4', '16', '7');
INSERT INTO `tb_address` VALUES ('249', '溜了', '该好好', '13658789658', 'o5ql51fhk2-BEOUEN7ybBB3gKPIo', '20180613163107', '1', '16', '4');
INSERT INTO `tb_address` VALUES ('250', '乖宝宝', '不会的棒棒哒', '15899776132', 'o5ql51fhk2-BEOUEN7ybBB3gKPIo', '20180613163243', '6', '4', '7');
INSERT INTO `tb_address` VALUES ('251', '34324', '34543 ', '18329903331', 'oi5mvwZY-GuWe4MXomMrsMLID2JA', '20180613163243', '4', '6', '4');
INSERT INTO `tb_address` VALUES ('252', '213', '213213123', '18329903331', 'o5ql51QCZXJ8Nxl1Vw6uX-ODkZ3M', '20180613163243', '1', '16', '5');
INSERT INTO `tb_address` VALUES ('253', '杨现奇', '虞城县汽车站', '15896590568', 'o5ql51RWzaluhRDcdaIFXkbTkFT8', null, '1', '12', '8');
INSERT INTO `tb_address` VALUES ('254', '杨现奇', '虞城县汽车站', '15896590568', 'o5ql51RWzaluhRDcdaIFXkbTkFT8', null, '1', '12', '8');

-- ----------------------------
-- Table structure for tb_admin
-- ----------------------------
DROP TABLE IF EXISTS `tb_admin`;
CREATE TABLE `tb_admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_admin
-- ----------------------------
INSERT INTO `tb_admin` VALUES ('1', 'admin', '53a0762f0f4d219cf11bfd96cc49de64', '1');
INSERT INTO `tb_admin` VALUES ('2', '123', 'e10adc3949ba59abbe56e057f20f883e', '1');
INSERT INTO `tb_admin` VALUES ('6', 'spiderman', 'e10adc3949ba59abbe56e057f20f883e', '1');

-- ----------------------------
-- Table structure for tb_area
-- ----------------------------
DROP TABLE IF EXISTS `tb_area`;
CREATE TABLE `tb_area` (
  `area_id` int(11) NOT NULL AUTO_INCREMENT,
  `area_name` varchar(255) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `status` int(255) DEFAULT NULL,
  `sort` int(255) DEFAULT NULL,
  PRIMARY KEY (`area_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_area
-- ----------------------------
INSERT INTO `tb_area` VALUES ('33', '鼓楼区', '0', '0', '0');
INSERT INTO `tb_area` VALUES ('34', '玄武区', '0', '1', '1');
INSERT INTO `tb_area` VALUES ('35', '秦淮区', '0', '1', '3');
INSERT INTO `tb_area` VALUES ('36', '南京移动汉中门大街沟通100服务店1', '33', '1', '0');
INSERT INTO `tb_area` VALUES ('37', '南京移动中央北路指定专营店', '33', '1', '0');
INSERT INTO `tb_area` VALUES ('38', '南京移动清凉门大街手机卖场', '33', '1', '0');
INSERT INTO `tb_area` VALUES ('39', '南京移动明故宫沟通100服务店', '34', '1', '0');
INSERT INTO `tb_area` VALUES ('40', '南京移动新庄指定专营店', '34', '1', '0');
INSERT INTO `tb_area` VALUES ('41', '丹凤街新街口政务大厦', '34', '1', '0');
INSERT INTO `tb_area` VALUES ('42', '南京移动升州路营业厅', '35', '1', '0');
INSERT INTO `tb_area` VALUES ('43', '南京移动火瓦巷指定专营店', '35', '1', '0');
INSERT INTO `tb_area` VALUES ('44', '建邺区', '0', '1', '0');
INSERT INTO `tb_area` VALUES ('45', '南京移动水西门沟通100服务店', '44', '1', '0');
INSERT INTO `tb_area` VALUES ('46', '南京移动河西万达营业厅', '44', '1', '0');
INSERT INTO `tb_area` VALUES ('47', '1111', '0', '0', '0');
INSERT INTO `tb_area` VALUES ('48', '江苏软件园', '0', '1', '0');
INSERT INTO `tb_area` VALUES ('49', 'A00楼201', '48', '1', '0');
INSERT INTO `tb_area` VALUES ('50', 'aaaa', '0', '0', '2');

-- ----------------------------
-- Table structure for tb_article
-- ----------------------------
DROP TABLE IF EXISTS `tb_article`;
CREATE TABLE `tb_article` (
  `art_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`art_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_article
-- ----------------------------
INSERT INTO `tb_article` VALUES ('1', 'WiFi使用说明', '<p>\n	无处不WIFI\n</p>\n<p>\n	就是不用网线，不用办宽带， <br />\n用图里这个小东西带着到哪里都有WiFi了 <br />\n资费很便宜，购买设备送了3年4G流量 一台价值999元平板（26280个小时绝对够用了）<br />\n没有想不到，只有做不到，千里狐的出现让你彻底告别流量恐慌，成功连接国民梦想！<br />\n速度堪比如今动辄50M100M的宽带、光纤， <br />\n优点是无论开车、火车、公交、偏远地区出差，你永远不会断网 <br />\n就算到西藏、新疆等边远地区，手机没信号wifi信号也是满格的 <br />\n窗体顶端<br />\n无限流量已经成为国民梦想，马云说:”如果银行不改变，我们就改变银行”如果运营商不改变，我们就改变运营商！<br />\n千里狐无限wifi，为老百姓提供无限流量服务，真正不限流量，不限视频、不限时长、不限网速，彻底告别流量恐慌，用超值的价格享受到无限流量的服力，为老百性谋福利，让中国百姓不再为流量发愁！<br />\n千里狐wifi，它，是你的随身wifi，无限流量任性用。<br />\n经常到处出差的人，也不担心浪费了家里包年宽带，搬家不断网，这些福利千里狐4G多功能便携式无线路由器统统能实现，可以随时随地4Gwifi高速上网。\n</p>');
INSERT INTO `tb_article` VALUES ('2', '学习机使用说明', '<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:32.0000pt;text-align:left;\">\n	<span style=\"font-family:微软雅黑;color:#3F3F3F;font-style:normal;font-size:16.0000pt;\"><span>无限流量已经成为国民梦想，马云说:”如果银行不改变，我们就改变银行”如果运营商不改变，我们就改变运营商！<br />\n千里狐无限wifi，为老百姓提供无限流量服务，真正不限流量，不限视频、不限时长、不限网速，彻底告别流量恐慌，用超值的价格享受到无限流量的服力，为老百性谋福利，让中国百姓不再为流量发愁！<br />\n千里狐wifi，它，是你的随身wifi，无限流量任性用。<br />\n经常到处出差的人，也不担心浪费了家里包年宽带，搬家不断网，这些福利千里狐4G多功能便携式无线路由器统统能实现，可以随时随地4Gwifi高速上网。<br />\n信号强大更稳定，同时支持10台设备，笔记本，手机一起搞定，宽带、电视、流量无限用，看综艺、追热剧、玩游戏……再也不用但心流量贵，随时随地，畅游网络！<br />\n</span></span>\n</p>');
INSERT INTO `tb_article` VALUES ('3', 'wifi更改密码使用说明', '<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:32.0000pt;text-align:left;\">\n	<span style=\"font-family:微软雅黑;color:#3F3F3F;font-style:normal;font-size:16.0000pt;\"><span>无处不WIFI <br />\n');
INSERT INTO `tb_article` VALUES ('4', '分享使用说明', '<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:32.0000pt;text-align:left;\">\n	<span style=\"font-family:微软雅黑;color:#3F3F3F;font-style:normal;font-size:16.0000pt;\"><span>经常</span></span><span style=\"font-family:微软雅黑;color:#3F3F3F;font-size:12.0000pt;\"><span>到处</span></span><span style=\"font-family:微软雅黑;color:#3F3F3F;font-size:12.0000pt;\"><span>出差的人</span></span><span style=\"font-family:微软雅黑;color:#3F3F3F;font-size:12.0000pt;\"><span>，</span></span><span style=\"font-family:微软雅黑;color:#3F3F3F;font-size:12.0000pt;\"><span>也不担心浪费了家里包年宽带，搬家不断网，这些福利千里狐</span>4G多功能便携式无线路由器统统能实现，可以随时随地4Gwifi高速上网。</span><span style=\"font-family:微软雅黑;color:#3F3F3F;font-size:12.0000pt;\"></span> \n</p>\n<p class=\"p\" style=\"margin-left:0.0000pt;text-indent:24.0000pt;text-align:left;\">\n	<span class=\"15\" style=\"font-family:微软雅黑;color:#FF0000;font-size:12.0000pt;\"><span>信号强大更稳定，同时支持</span></span><span class=\"15\" style=\"font-family:微软雅黑;color:#FF0000;font-size:12.0000pt;\">10</span><span class=\"15\" style=\"font-family:微软雅黑;color:#FF0000;font-size:12.0000pt;\"><span>台设备</span></span><span style=\"font-family:微软雅黑;color:#FF0000;font-size:12.0000pt;\"><span>，</span></span><span style=\"font-family:微软雅黑;color:#3F3F3F;font-size:12.0000pt;\"><span>笔记本，手机一起搞定，宽带、电视、流量无限用，看综艺、追热剧、玩游戏</span>……再也不用但心流量贵，随时随地，畅游网络！</span><span style=\"font-family:微软雅黑;color:#3F3F3F;font-size:12.0000pt;\"></span> \n</p>');

-- ----------------------------
-- Table structure for tb_authentication
-- ----------------------------
DROP TABLE IF EXISTS `tb_authentication`;
CREATE TABLE `tb_authentication` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `device_id` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_phone` varchar(255) DEFAULT NULL,
  `identity_card` varchar(255) DEFAULT NULL,
  `card_front` varchar(255) DEFAULT NULL,
  `card_reverse` varchar(255) DEFAULT NULL,
  `hand_front` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `add_time` varchar(255) DEFAULT NULL,
  `ticket` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_authentication
-- ----------------------------

-- ----------------------------
-- Table structure for tb_banner
-- ----------------------------
DROP TABLE IF EXISTS `tb_banner`;
CREATE TABLE `tb_banner` (
  `ban_id` int(11) NOT NULL AUTO_INCREMENT,
  `ban_img` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`ban_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_banner
-- ----------------------------
INSERT INTO `tb_banner` VALUES ('1', 'http://xcx.58wyh.com/upload/1524735742082.png', '#', '1', '1', '0');
INSERT INTO `tb_banner` VALUES ('2', 'http://xcx.58wyh.com/upload/1524735742082.png', '#', '4', '1', '0');
INSERT INTO `tb_banner` VALUES ('3', 'http://xcx.58wyh.com/upload/1528107193537.jpg', 'http://xcx.58wyh.com/chihaodian/page/goodsListById.html?goods_id=92', '2', '1', '1');
INSERT INTO `tb_banner` VALUES ('4', 'http://xcx.58wyh.com/upload/1524735742082.png', '#', '2', '1', '0');
INSERT INTO `tb_banner` VALUES ('5', 'http://xcx.58wyh.com/upload/1528184555848.jpg', 'http://xcx.58wyh.com/chihaodian/page/goodsListById.html?goods_id=92', '5', '2', '1');
INSERT INTO `tb_banner` VALUES ('7', 'http://xcx.58wyh.com/upload/1524735742082.png', 'http://www.7haodian.cc/chihaodian/page/goodsListById.html?goods_id=39', '1', '1', '0');
INSERT INTO `tb_banner` VALUES ('8', 'http://xcx.58wyh.com/upload/1525859280695.jpg', 'http://xcx.58wyh.com/chihaodian/page/goodsListById.html?goods_id=92', '4', '2', '0');
INSERT INTO `tb_banner` VALUES ('9', 'http://xcx.58wyh.com/upload/1524735742082.png', 'http://www.7haodian.cc/chihaodian/page/cpsAll.html', '0', '2', '0');
INSERT INTO `tb_banner` VALUES ('10', 'http://xcx.58wyh.com/upload/1524735742082.png', 'http://www.7haodian.cc/chihaodian/page/goodsListById.html?goods_id=60', '0', '1', '0');
INSERT INTO `tb_banner` VALUES ('11', 'http://xcx.58wyh.com/upload/1524735742082.png', 'http://www.7haodian.cc/chihaodian/page/goodsListById.html?goods_id=61', '0', '1', '0');
INSERT INTO `tb_banner` VALUES ('12', 'http://xcx.58wyh.com/upload/1528107170663.jpg', 'http://xcx.58wyh.com/chihaodian/page/goodsListById.html?goods_id=92', '0', '1', '1');
INSERT INTO `tb_banner` VALUES ('13', 'http://xcx.58wyh.com/upload/1528185576901.jpg', 'http://xcx.58wyh.com/chihaodian/page/goodsListById.html?goods_id=92', '0', '1', '1');

-- ----------------------------
-- Table structure for tb_button
-- ----------------------------
DROP TABLE IF EXISTS `tb_button`;
CREATE TABLE `tb_button` (
  `id` varchar(25) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL COMMENT '菜单类别，click，view',
  `value` varchar(255) DEFAULT NULL,
  `super_id` varchar(25) DEFAULT NULL COMMENT '父级id，即本表id；',
  `add_time` varchar(255) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_button
-- ----------------------------
INSERT INTO `tb_button` VALUES ('1523583847857', '微商城', 'view', 'http://xcx.58wyh.com/chihaodian/page/index.html', '1523583847857', '2018-04-13 09:44:07', '1', '1');
INSERT INTO `tb_button` VALUES ('1523583883760', '使用说明', 'view', 'http://spiderman.vipgz1.idcfengye.com/chihaodian/main/main.html', '1523583883760', '2018-04-13 09:44:43', '0', '1');
INSERT INTO `tb_button` VALUES ('1523583910596', '实名认证', 'view', 'http://xcx.58wyh.com/chihaodian/page/initEq.html', '1523583910596', '2018-04-13 09:45:10', '2', '1');
INSERT INTO `tb_button` VALUES ('1523583937857', 'WIFI使用说明', 'view', 'https://mp.weixin.qq.com/s/Z9h-2r4_VaTI7kAPuoYzJg', '1523583883760', '2018-04-13 09:45:37', null, '2');
INSERT INTO `tb_button` VALUES ('1523583937860', '学习机使用说明', 'view', 'https://mp.weixin.qq.com/s/l5-fSKfJS20aP11Uq9fK8w', '1523583883760', '2018-04-13 09:45:37', null, '2');
INSERT INTO `tb_button` VALUES ('159', 'WIFI更改密码使用说明', 'view', 'http://www.baidu.com', '1523583883760', '2018-04-13 09:45:37', null, '2');

-- ----------------------------
-- Table structure for tb_cart
-- ----------------------------
DROP TABLE IF EXISTS `tb_cart`;
CREATE TABLE `tb_cart` (
  `cart_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL,
  `goods_name` varchar(255) DEFAULT NULL,
  `goods_img` varchar(255) DEFAULT NULL,
  `goods_spe` varchar(255) DEFAULT NULL,
  `goods_price` float DEFAULT NULL,
  `goods_num` int(11) DEFAULT NULL,
  `goods_total` float DEFAULT NULL,
  `oppen_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1023 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_cart
-- ----------------------------
INSERT INTO `tb_cart` VALUES ('1002', '98', '测试商品不发货', 'http://xcx.58wyh.com/upload/1528794617037.jpg', '0', '0.1', '1', '0.1', null);
INSERT INTO `tb_cart` VALUES ('1022', '92', '4G多功能无线路由器', 'http://xcx.58wyh.com/upload/1528184679131.jpg', '', '1599', '1', '1599', 'o5ql51RwtWo_C-wsJL2uyck32g50');

-- ----------------------------
-- Table structure for tb_category
-- ----------------------------
DROP TABLE IF EXISTS `tb_category`;
CREATE TABLE `tb_category` (
  `ctg_id` int(11) NOT NULL AUTO_INCREMENT,
  `ctg_name` varchar(255) DEFAULT '',
  `ctg_img` varchar(255) DEFAULT '',
  `status` int(11) DEFAULT NULL COMMENT '0禁用，1启用',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`ctg_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_category
-- ----------------------------
INSERT INTO `tb_category` VALUES ('1', '蔬菜', '', '0', '4');
INSERT INTO `tb_category` VALUES ('21', '五谷杂粮', '/chihaodian/../upload/1460602430649.png', '0', '2');
INSERT INTO `tb_category` VALUES ('22', '肉禽蛋类', '/chihaodian/../upload/1460602659462.png', '0', '3');
INSERT INTO `tb_category` VALUES ('23', '活力鲜果', '', '0', '6');
INSERT INTO `tb_category` VALUES ('25', '保健养生', '/chihaodian/../upload/1460612908722.png', '0', '5');
INSERT INTO `tb_category` VALUES ('26', '2222444', '', '0', '1');
INSERT INTO `tb_category` VALUES ('27', '测试', '', '0', '0');
INSERT INTO `tb_category` VALUES ('28', '24343443', 'http://www.tvrmall.com/haodian/upload/1495994254651.png', '0', '0');
INSERT INTO `tb_category` VALUES ('29', '移动WIFI', '', '1', '0');
INSERT INTO `tb_category` VALUES ('30', '玩具', '', '0', '0');
INSERT INTO `tb_category` VALUES ('31', '海鲜', '', '0', '0');
INSERT INTO `tb_category` VALUES ('32', '平板电脑', '', '0', '0');

-- ----------------------------
-- Table structure for tb_click_text
-- ----------------------------
DROP TABLE IF EXISTS `tb_click_text`;
CREATE TABLE `tb_click_text` (
  `ct_key` varchar(255) NOT NULL,
  `type` int(11) DEFAULT '0' COMMENT '1 文本，2图文信息',
  `content` varchar(255) DEFAULT NULL,
  `title` text,
  `intro` text,
  `pic_url` text,
  `url` text COMMENT '跳转url',
  PRIMARY KEY (`ct_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_click_text
-- ----------------------------
INSERT INTO `tb_click_text` VALUES ('subscribe', '1', '好啊', null, null, null, null);
INSERT INTO `tb_click_text` VALUES ('你好', '1', '你好', null, '', '', '');
INSERT INTO `tb_click_text` VALUES ('图文', '2', '', '自定义内容区', '简介', '/chihaodian/../upload/1474207005529.png', '123');
INSERT INTO `tb_click_text` VALUES ('测试', '1', '<img src=\"http://www.7haodian.cc/upload/image/20160919/20160919110750_307.png\" alt=\"\" />', null, '', '', '');

-- ----------------------------
-- Table structure for tb_coupons
-- ----------------------------
DROP TABLE IF EXISTS `tb_coupons`;
CREATE TABLE `tb_coupons` (
  `cps_id` int(11) NOT NULL AUTO_INCREMENT,
  `cps_name` varchar(255) DEFAULT NULL,
  `cps_code` varchar(255) DEFAULT NULL COMMENT '优惠券兑换码',
  `cps_price` float DEFAULT NULL,
  `cps_time` varchar(255) DEFAULT NULL,
  `cps_level` int(11) DEFAULT NULL COMMENT '0系统总优惠券，!0用户优惠券',
  `oppen_id` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT '1' COMMENT '0已用，1可用',
  PRIMARY KEY (`cps_id`)
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_coupons
-- ----------------------------
INSERT INTO `tb_coupons` VALUES ('42', '1', '77500', '1', '2016-03-29', '0', '0', '1');
INSERT INTO `tb_coupons` VALUES ('48', '端午节优惠券', '40868', '5', '2016-05-27', '43', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '0');
INSERT INTO `tb_coupons` VALUES ('49', '测试', '87093', '5', '2016-05-27', '45', 'oyqTtw2gjY17ntKIyba_i48EB26A', '1');
INSERT INTO `tb_coupons` VALUES ('50', '端午节优惠券', '40868', '5', '2016-05-31', '43', 'oyqTtw2gjY17ntKIyba_i48EB26A', '1');
INSERT INTO `tb_coupons` VALUES ('51', '测试', '87093', '5', '2016-05-27', '45', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '0');
INSERT INTO `tb_coupons` VALUES ('52', '新用户领券', '71233', '10', '2016-05-31', '0', '0', '1');
INSERT INTO `tb_coupons` VALUES ('53', '新用户领券', '71233', '10', '2016-05-31', '52', 'oyqTtw2gjY17ntKIyba_i48EB26A', '0');
INSERT INTO `tb_coupons` VALUES ('54', '新用户领券', '71233', '10', '2016-05-31', '52', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '1');
INSERT INTO `tb_coupons` VALUES ('55', '新手优惠', '13289', '10', '2016-12-31', '0', '0', '1');
INSERT INTO `tb_coupons` VALUES ('56', '新手优惠', '13289', '10', '2016-12-31', '55', 'oyqTtw2gjY17ntKIyba_i48EB26A', '0');
INSERT INTO `tb_coupons` VALUES ('57', '新手优惠', '13289', '10', '2016-12-31', '55', 'oyqTtw8UGbJh7XLMr1s5tSLrC2io', '1');
INSERT INTO `tb_coupons` VALUES ('58', '新手优惠', '13289', '10', '2016-12-31', '55', 'oyqTtw9S7JFtTgx6-3qpSG66w7QU', '1');
INSERT INTO `tb_coupons` VALUES ('59', '新手优惠', '13289', '10', '2016-12-31', '55', 'oyqTtw91DW4dmYULSdL7n-4-G9BY', '0');
INSERT INTO `tb_coupons` VALUES ('60', '新手优惠', '13289', '10', '2016-12-31', '55', 'oyqTtw_d252V55C89XiqmkGrRpHM', '0');
INSERT INTO `tb_coupons` VALUES ('61', '新手优惠', '13289', '10', '2016-12-31', '55', 'oyqTtw-iCmyM3xVw_3XM8pO_xao4', '1');
INSERT INTO `tb_coupons` VALUES ('62', '新手优惠', '13289', '10', '2016-12-31', '55', 'oyqTtw4Fy9Fn31QnZKfd91w9e6jw', '1');
INSERT INTO `tb_coupons` VALUES ('63', '新手优惠', '13289', '10', '2016-12-31', '55', 'oyqTtwzEjo8pzJngr0jPsVoKWedo', '1');
INSERT INTO `tb_coupons` VALUES ('64', '新手优惠', '13289', '10', '2016-12-31', '55', 'oyqTtw7EM8Dfe5FtvSXZTP3JpSAI', '1');
INSERT INTO `tb_coupons` VALUES ('65', '新手优惠', '13289', '10', '2016-12-31', '55', 'oyqTtw6QkdoZjbSLlQbEsadb8Eu8', '1');
INSERT INTO `tb_coupons` VALUES ('66', '新手优惠', '13289', '10', '2016-12-31', '55', 'oyqTtw9Rx04TEd8pVCaVXxNFvRDw', '1');
INSERT INTO `tb_coupons` VALUES ('67', '新手优惠', '13289', '10', '2016-12-31', '55', 'oyqTtwz-6YtPxpphyqVGGuapqAkc', '1');
INSERT INTO `tb_coupons` VALUES ('68', '新手优惠', '13289', '10', '2016-12-31', '55', 'oyqTtw9KssTdTOkFZcCXB6bowtE4', '1');
INSERT INTO `tb_coupons` VALUES ('69', '新手优惠', '13289', '10', '2016-12-31', '55', 'oyqTtw1s7Kti_ZB6PEZ7aWVeApIU', '1');
INSERT INTO `tb_coupons` VALUES ('70', '新手优惠', '13289', '10', '2016-12-31', '55', 'oyqTtw-0IYTFupfhydyMQe1dKe6M', '1');
INSERT INTO `tb_coupons` VALUES ('71', '新手优惠', '13289', '10', '2016-12-31', '55', 'oyqTtw24wiquOjeyMKS760QbhJuQ', '1');
INSERT INTO `tb_coupons` VALUES ('72', '新手优惠', '13289', '10', '2016-12-31', '55', 'oyqTtw7EJh-DpDBXKkkM9oQVwHTU', '1');
INSERT INTO `tb_coupons` VALUES ('73', '新手优惠', '13289', '10', '2016-12-31', '55', 'oyqTtw4wC-qD6qH83YGbhPS9Y4Go', '0');
INSERT INTO `tb_coupons` VALUES ('74', '新手优惠', '13289', '10', '2016-12-31', '55', 'oyqTtw0mv38vcI-LgoICHl1wN8RQ', '1');
INSERT INTO `tb_coupons` VALUES ('75', '新手优惠', '13289', '10', '2016-12-31', '55', 'oyqTtw3jh4m3jNSXvy0Y_Nd_pmbU', '1');
INSERT INTO `tb_coupons` VALUES ('76', '新手优惠', '13289', '10', '2016-12-31', '55', 'oyqTtw3LfpX7MuHYaKpETe2mQCag', '0');
INSERT INTO `tb_coupons` VALUES ('77', '新手优惠', '13289', '10', '2016-12-31', '55', 'oyqTtw--3Bh4dAm_A5P0BoV5pBMo', '1');
INSERT INTO `tb_coupons` VALUES ('78', '新手优惠', '13289', '10', '2016-12-31', '55', 'oyqTtw_7uxG8L8Nguhgt7cljAStU', '1');
INSERT INTO `tb_coupons` VALUES ('79', '新手优惠', '13289', '10', '2016-12-31', '55', 'oyqTtw3ojDG0bxnTcMf3CoSuEiYY', '1');
INSERT INTO `tb_coupons` VALUES ('80', '新手优惠', '13289', '10', '2016-12-31', '55', 'oyqTtw7Yh_thZm7KFtjL_zw2iop4', '1');
INSERT INTO `tb_coupons` VALUES ('81', '新手优惠', '13289', '10', '2016-12-31', '55', 'oyqTtw3bV5mOoYWAwr1AYPf_w0DE', '1');
INSERT INTO `tb_coupons` VALUES ('82', '新手优惠', '13289', '10', '2016-12-31', '55', 'oyqTtwyhgl0bTLUXOLonU-YjzoFo', '1');
INSERT INTO `tb_coupons` VALUES ('83', '新手优惠', '13289', '10', '2016-12-31', '55', 'oyqTtw7YNOwzjFWNQ-OnyFaODSgM', '1');
INSERT INTO `tb_coupons` VALUES ('84', '新手优惠', '13289', '10', '2016-12-31', '55', 'ou8VTwpbPyK8rYDrec8Xz024pXnc', '1');
INSERT INTO `tb_coupons` VALUES ('85', '新手优惠', '13289', '10', '2016-12-31', '55', 'ou8VTwlq0fSMJah4dfXyYfKY5CzQ', '1');
INSERT INTO `tb_coupons` VALUES ('86', '新手优惠', '13289', '10', '2016-12-31', '55', 'ou8VTwpm1_PlXzQ2YA6ZF1I46m6c', '1');
INSERT INTO `tb_coupons` VALUES ('87', '新手优惠', '13289', '10', '2016-12-31', '55', 'ou8VTwi5QeqO9G9Crq5Gxafs6aGA', '0');
INSERT INTO `tb_coupons` VALUES ('88', '新手优惠', '13289', '10', '2016-12-31', '55', 'ou8VTwgagvfC9iYQmQAPRzM4ZeVY', '1');
INSERT INTO `tb_coupons` VALUES ('89', '新手优惠', '13289', '10', '2016-12-31', '55', 'ou8VTwuYXOhkEJkcOrn7_G8Bfr7Q', '1');
INSERT INTO `tb_coupons` VALUES ('90', '新手优惠', '13289', '10', '2016-12-31', '55', 'ou8VTwhOrxREKicoSZhZvrA-_Kvk', '1');
INSERT INTO `tb_coupons` VALUES ('91', '新手优惠', '13289', '10', '2016-12-31', '55', 'ou8VTwvAtQdpsdkLTE7Zq1_8KScE', '1');
INSERT INTO `tb_coupons` VALUES ('92', '新手优惠', '13289', '10', '2016-12-31', '55', 'ou8VTws5C2eCda5UHRN4E_7wA3n8', '1');
INSERT INTO `tb_coupons` VALUES ('93', '新手优惠', '13289', '10', '2016-12-31', '55', 'ou8VTwp5Jg2vXpXZOhug01VUyLLw', '1');
INSERT INTO `tb_coupons` VALUES ('94', '新手优惠', '13289', '10', '2016-12-31', '55', 'ou8VTwsfziZsGMXNyCMWVCtFRvak', '1');
INSERT INTO `tb_coupons` VALUES ('95', '新手优惠', '13289', '10', '2016-12-31', '55', 'ou8VTwqLNtliXbHZcYuL0y0ZKUlk', '1');
INSERT INTO `tb_coupons` VALUES ('96', '新手优惠', '13289', '10', '2016-12-31', '55', 'ou8VTwnjnL5K8tAIPFPGo4MDD9os', '1');
INSERT INTO `tb_coupons` VALUES ('97', '新手优惠', '13289', '10', '2016-12-31', '55', 'ou8VTwuGEVXO9eJnHIU0r-QfGB4o', '1');
INSERT INTO `tb_coupons` VALUES ('98', '新手优惠', '13289', '10', '2016-12-31', '55', 'ou8VTwusUEW3tdzUpHwr05p6aLpA', '0');
INSERT INTO `tb_coupons` VALUES ('99', '新手优惠', '13289', '10', '2016-12-31', '55', 'ou8VTwk5M4CwC83kfoGLC4U8DtsA', '1');
INSERT INTO `tb_coupons` VALUES ('100', '新手优惠', '13289', '10', '2016-12-31', '55', 'ou8VTwgye2TBios1mhSgWo7Y29Wo', '1');
INSERT INTO `tb_coupons` VALUES ('101', '新手优惠', '13289', '10', '2016-12-31', '55', 'ou8VTwnM1K8APuE39cz33yr9F9Dc', '1');
INSERT INTO `tb_coupons` VALUES ('102', '新手优惠', '13289', '10', '2016-12-31', '55', 'ou8VTwqXTCPIlMeo3TYimLlrYU2A', '1');
INSERT INTO `tb_coupons` VALUES ('103', '新手优惠', '13289', '10', '2016-12-31', '55', 'ou8VTwupTEPHJBs9dBRiBnmUKdKI', '0');
INSERT INTO `tb_coupons` VALUES ('104', '新手优惠', '13289', '10', '2016-12-31', '55', 'ou8VTwl3l6uGbY0EM4J817DkFCLU', '1');
INSERT INTO `tb_coupons` VALUES ('105', '新手优惠', '13289', '10', '2016-12-31', '55', 'ou8VTwvlcjYZS90t71g5dZJ1VwQ4', '1');
INSERT INTO `tb_coupons` VALUES ('106', '新手优惠', '13289', '10', '2016-12-31', '55', 'ou8VTwnIPlReqwsTZKS4vpDIe350', '1');
INSERT INTO `tb_coupons` VALUES ('107', '新手优惠', '13289', '10', '2016-12-31', '55', 'ou8VTwtaRjh60nRuE2Hj8rTztbho', '0');
INSERT INTO `tb_coupons` VALUES ('108', '新手优惠', '13289', '10', '2016-12-31', '55', 'ou8VTwqoBgp-K0rU15DhqnCdu9WI', '1');
INSERT INTO `tb_coupons` VALUES ('109', '新手优惠', '13289', '10', '2016-12-31', '55', 'ou8VTwqbId4my2bRTAr1t494aZyY', '1');
INSERT INTO `tb_coupons` VALUES ('110', '新手优惠', '13289', '10', '2016-12-31', '55', 'ou8VTwn7v9ukn-pj2ewogKxJpeyk', '1');
INSERT INTO `tb_coupons` VALUES ('111', '新手优惠', '13289', '10', '2016-12-31', '55', 'ou8VTwumv0a3ftwmieTR_XoOGHp8', '0');
INSERT INTO `tb_coupons` VALUES ('112', '新手优惠', '13289', '10', '2016-12-31', '55', 'ou8VTwp10jbngeWCWhJKHWxuQ-5I', '1');
INSERT INTO `tb_coupons` VALUES ('113', '新手优惠', '13289', '10', '2016-12-31', '55', 'ou8VTwp8MZyN9I0l-89C9nwlGifA', '1');
INSERT INTO `tb_coupons` VALUES ('114', '新手优惠', '13289', '10', '2016-12-31', '55', 'ou8VTwka0YxLSWS8fYBDbTHVeSZ4', '1');
INSERT INTO `tb_coupons` VALUES ('115', '新手优惠', '13289', '10', '2016-12-31', '55', 'ou8VTwrXKlBN5pWYJqPNrJN0mUrw', '1');
INSERT INTO `tb_coupons` VALUES ('117', '双十二预热', '3510', '10', '2017-12-01', '116', 'ou8VTwumv0a3ftwmieTR_XoOGHp8', '1');
INSERT INTO `tb_coupons` VALUES ('118', '双十二预热', '3510', '10', '2017-12-01', '116', 'ou8VTwp8MZyN9I0l-89C9nwlGifA', '1');
INSERT INTO `tb_coupons` VALUES ('119', '双十二预热', '3510', '10', '2017-12-01', '116', 'ou8VTwnnpkSr-ofaf7yQppEkNwNM', '1');
INSERT INTO `tb_coupons` VALUES ('120', '新手优惠', '13289', '10', '2016-12-31', '55', 'ou8VTwnnpkSr-ofaf7yQppEkNwNM', '1');
INSERT INTO `tb_coupons` VALUES ('121', '双十二预热', '3510', '10', '2017-12-01', '116', 'ou8VTwtCk47MJ8xcFlgTyOSEMBHU', '1');
INSERT INTO `tb_coupons` VALUES ('122', '新手优惠', '13289', '10', '2016-12-31', '55', 'ou8VTwtCk47MJ8xcFlgTyOSEMBHU', '1');
INSERT INTO `tb_coupons` VALUES ('123', '双十二预热', '3510', '10', '2017-12-01', '116', 'ou8VTwmv8TsZQgPnDiaUFMJtCACE', '1');
INSERT INTO `tb_coupons` VALUES ('124', '双十二预热', '3510', '10', '2017-12-01', '116', 'ou8VTwneV2yYX3fistDWn2YUPpAo', '1');
INSERT INTO `tb_coupons` VALUES ('125', '新手优惠', '13289', '10', '2016-12-31', '55', 'ou8VTwneV2yYX3fistDWn2YUPpAo', '1');
INSERT INTO `tb_coupons` VALUES ('126', '双十二预热', '3510', '10', '2017-12-01', '116', 'ou8VTwpDyvM2BQtpIkMKTSebaCAE', '0');
INSERT INTO `tb_coupons` VALUES ('127', '新手优惠', '13289', '10', '2016-12-31', '55', 'ou8VTwrIJF2u4uNc9uyVWSHajLvI', '0');
INSERT INTO `tb_coupons` VALUES ('128', '双十二预热', '3510', '10', '2017-12-01', '116', 'ou8VTwrIJF2u4uNc9uyVWSHajLvI', '1');
INSERT INTO `tb_coupons` VALUES ('129', '双十二预热', '3510', '10', '2017-12-01', '116', 'ou8VTwgye2TBios1mhSgWo7Y29Wo', '1');
INSERT INTO `tb_coupons` VALUES ('130', '双十二预热', '3510', '10', '2017-12-01', '116', 'ou8VTwoMfNQanrIel1gPqDU-fEVw', '1');
INSERT INTO `tb_coupons` VALUES ('131', '双十二预热', '3510', '10', '2017-12-01', '116', 'ou8VTwvufXk1IPojkbVnXPC29x70', '1');
INSERT INTO `tb_coupons` VALUES ('132', '新手优惠', '13289', '10', '2016-12-31', '55', 'ou8VTwvufXk1IPojkbVnXPC29x70', '0');
INSERT INTO `tb_coupons` VALUES ('133', '双十二预热', '3510', '10', '2017-12-01', '116', 'ou8VTwnM1K8APuE39cz33yr9F9Dc', '1');
INSERT INTO `tb_coupons` VALUES ('134', '双十二预热', '3510', '10', '2017-12-01', '116', 'ou8VTwn85kT1eSZmL2Lz7RmXZo10', '1');
INSERT INTO `tb_coupons` VALUES ('135', '新手优惠', '13289', '10', '2016-12-31', '55', 'ou8VTwn85kT1eSZmL2Lz7RmXZo10', '1');
INSERT INTO `tb_coupons` VALUES ('136', '双十二预热', '3510', '10', '2017-12-01', '116', 'ou8VTwnJ4fG14A1ZvOnU7w7Snzn8', '1');
INSERT INTO `tb_coupons` VALUES ('137', '新手优惠', '13289', '10', '2016-12-31', '55', 'ou8VTwnJ4fG14A1ZvOnU7w7Snzn8', '1');
INSERT INTO `tb_coupons` VALUES ('138', '双十二预热', '3510', '10', '2017-12-01', '116', 'ou8VTwka0YxLSWS8fYBDbTHVeSZ4', '1');
INSERT INTO `tb_coupons` VALUES ('139', '新手优惠', '13289', '10', '2016-12-31', '55', 'ou8VTwiN1lxTu6q1nANdMOVS6EUg', '1');
INSERT INTO `tb_coupons` VALUES ('140', '双十二预热', '3510', '10', '2017-12-01', '116', 'ou8VTwiN1lxTu6q1nANdMOVS6EUg', '1');
INSERT INTO `tb_coupons` VALUES ('141', '新手优惠', '13289', '10', '2016-12-31', '55', 'ou8VTwmpgd3-GKijoMxEXzmVQdkY', '1');
INSERT INTO `tb_coupons` VALUES ('142', '双十二预热', '3510', '10', '2017-12-01', '116', 'ou8VTwmawJku47ZQ7P4UGV8_L9Qo', '1');
INSERT INTO `tb_coupons` VALUES ('143', '双十二预热', '3510', '10', '2017-12-01', '116', 'ou8VTwh6q8D7f6lzV11zWwNJEdoo', '1');
INSERT INTO `tb_coupons` VALUES ('144', '新手优惠', '13289', '10', '2016-12-31', '55', 'ou8VTwh6q8D7f6lzV11zWwNJEdoo', '1');
INSERT INTO `tb_coupons` VALUES ('145', '双十二预热', '3510', '10', '2017-12-01', '116', 'ou8VTwjPpVr7fgVDqV64dTPLHYhQ', '1');
INSERT INTO `tb_coupons` VALUES ('146', '双十二预热', '3510', '10', '2017-12-01', '116', 'ou8VTwvpNBhHVI1q8G1ja7MJQiv4', '1');
INSERT INTO `tb_coupons` VALUES ('147', '双十二预热', '3510', '10', '2017-12-01', '116', 'ou8VTwmJPHCRgEnh38WVnVjl71gw', '1');
INSERT INTO `tb_coupons` VALUES ('148', '双十二预热', '3510', '10', '2017-12-01', '116', 'ou8VTwnwvgNv-jmI087Uq2WNysIE', '1');
INSERT INTO `tb_coupons` VALUES ('149', '双十二预热', '3510', '10', '2017-12-01', '116', 'ou8VTwlow9N1LSk74r_nzsQPownA', '1');
INSERT INTO `tb_coupons` VALUES ('150', '双十二预热', '3510', '10', '2017-12-01', '116', 'ou8VTwuIImCl-_DMWvX0dkyZrPsc', '1');
INSERT INTO `tb_coupons` VALUES ('151', '双十二预热', '3510', '10', '2017-12-01', '116', 'ou8VTwuNseoT0u6ZSNiduEf0VBpo', '1');
INSERT INTO `tb_coupons` VALUES ('152', '双十二预热', '3510', '10', '2017-12-01', '116', 'ou8VTwo9pqSJ_ZMs135Ji-rrjUv4', '1');
INSERT INTO `tb_coupons` VALUES ('153', '双十二预热', '3510', '10', '2017-12-01', '116', 'ou8VTwqz6hEo7TX04aX7Hw3L2wQg', '1');
INSERT INTO `tb_coupons` VALUES ('154', '双十二预热', '3510', '10', '2017-12-01', '116', 'ou8VTwrYsCDChMK2x-TmrWXJE8jk', '1');
INSERT INTO `tb_coupons` VALUES ('155', '双十二预热', '3510', '10', '2017-12-01', '116', 'ou8VTwpu5-IaLxzzVukJSph460I0', '0');
INSERT INTO `tb_coupons` VALUES ('156', '双十二预热', '3510', '10', '2017-12-01', '116', 'ou8VTwpn3hcHBtD2r0859C8MYbuM', '1');
INSERT INTO `tb_coupons` VALUES ('157', '双十二预热', '3510', '10', '2017-12-01', '116', 'ou8VTwkfQ8O1NdjpopveyfabqAdw', '1');
INSERT INTO `tb_coupons` VALUES ('158', '双十二预热', '3510', '10', '2017-12-01', '116', 'ou8VTwjqR_GaTbEMnL_QAv5WQ8V4', '1');
INSERT INTO `tb_coupons` VALUES ('159', '双十二预热', '3510', '10', '2017-12-01', '116', 'ou8VTwvNu_PSg5mR-tLUSa91vd-s', '0');
INSERT INTO `tb_coupons` VALUES ('160', '双十二预热', '3510', '10', '2017-12-01', '116', 'ou8VTwri_ghsc-jrLIMykzJFWiY8', '1');
INSERT INTO `tb_coupons` VALUES ('161', '双十二预热', '3510', '10', '2017-12-01', '116', 'ou8VTwr9g2K-I_C3ALVcelDiyui0', '1');
INSERT INTO `tb_coupons` VALUES ('162', '双十二预热', '3510', '10', '2017-12-01', '116', 'ou8VTwrID-fDpXwlNAID03tgaf5E', '1');
INSERT INTO `tb_coupons` VALUES ('163', '双十二预热', '3510', '10', '2017-12-01', '116', 'ou8VTwstT75lAGv2tvriq4iqMvBQ', '0');
INSERT INTO `tb_coupons` VALUES ('164', '双十二预热', '3510', '10', '2017-12-01', '116', 'ou8VTwsCmHPaspyKnmZ-4YIOJIwY', '1');
INSERT INTO `tb_coupons` VALUES ('165', '双十二预热', '3510', '10', '2017-12-01', '116', 'ou8VTwihkxJm9ZYe_FXTFi6lwPaY', '1');
INSERT INTO `tb_coupons` VALUES ('166', '双11', '35452', '100', '2017-05-25', '0', '0', '1');
INSERT INTO `tb_coupons` VALUES ('167', '1', '57757', '11', '2017-05-25', '0', '0', '1');

-- ----------------------------
-- Table structure for tb_draw_money
-- ----------------------------
DROP TABLE IF EXISTS `tb_draw_money`;
CREATE TABLE `tb_draw_money` (
  `dra_id` int(11) NOT NULL AUTO_INCREMENT,
  `dra_price` int(11) DEFAULT NULL,
  `add_time` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `drawOrderId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`dra_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_draw_money
-- ----------------------------
INSERT INTO `tb_draw_money` VALUES ('10', '1', '2018-06-07 16:14:02', '679', '20180607161401306679');
INSERT INTO `tb_draw_money` VALUES ('11', '2', '2018-06-07 16:25:13', '680', '20180607162511402680');
INSERT INTO `tb_draw_money` VALUES ('12', '1', '2018-06-12 18:35:24', '672', '20180612183523165672');
INSERT INTO `tb_draw_money` VALUES ('13', '200', '2018-06-12 19:35:22', '767', '20180612193521588767');
INSERT INTO `tb_draw_money` VALUES ('14', '100', '2018-06-12 19:35:45', '767', '20180612193544856767');
INSERT INTO `tb_draw_money` VALUES ('15', '1', '2018-06-12 21:25:57', '672', '20180612212555769672');
INSERT INTO `tb_draw_money` VALUES ('16', '191', '2018-06-23 18:21:13', '737', '20180623182112048737');
INSERT INTO `tb_draw_money` VALUES ('17', '200', '2018-06-27 11:45:30', '935', '20180627114529479935');

-- ----------------------------
-- Table structure for tb_express
-- ----------------------------
DROP TABLE IF EXISTS `tb_express`;
CREATE TABLE `tb_express` (
  `express_id` int(11) NOT NULL AUTO_INCREMENT,
  `express_dm` varchar(255) DEFAULT NULL,
  `express_name` varchar(255) DEFAULT NULL,
  `express_hm` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`express_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_express
-- ----------------------------
INSERT INTO `tb_express` VALUES ('2', '0088', '圆通1', null);
INSERT INTO `tb_express` VALUES ('3', '90090', '更好', null);
INSERT INTO `tb_express` VALUES ('4', 'ZTO', '中通', null);
INSERT INTO `tb_express` VALUES ('5', '12', '顺丰', null);

-- ----------------------------
-- Table structure for tb_freight
-- ----------------------------
DROP TABLE IF EXISTS `tb_freight`;
CREATE TABLE `tb_freight` (
  `fgt_id` int(11) NOT NULL AUTO_INCREMENT,
  `fgt_price` float DEFAULT NULL,
  `free_price` float DEFAULT NULL,
  PRIMARY KEY (`fgt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_freight
-- ----------------------------
INSERT INTO `tb_freight` VALUES ('1', '6.7', '0.01');

-- ----------------------------
-- Table structure for tb_goods
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods`;
CREATE TABLE `tb_goods` (
  `goods_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_name` varchar(255) DEFAULT NULL,
  `goods_img` varchar(255) DEFAULT NULL,
  `goods_spe` varchar(255) DEFAULT NULL COMMENT '规格',
  `goods_price` float DEFAULT NULL,
  `goods_detail` text,
  `goods_num` varchar(255) DEFAULT NULL,
  `add_time` varchar(255) DEFAULT NULL,
  `ctg_id` int(11) DEFAULT NULL COMMENT '是1否0热销',
  `is_recommend` int(11) DEFAULT NULL COMMENT '是否首页推荐',
  `status` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT '1' COMMENT '1普通商品2会员商品',
  `sell` int(11) DEFAULT NULL,
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_goods
-- ----------------------------
INSERT INTO `tb_goods` VALUES ('92', '4G多功能无线路由器', 'http://xcx.58wyh.com/upload/1528184679131.jpg', '', '1599', '<p>\n	<img src=\"/upload/image/20180605/20180605114352_153.jpg\" alt=\"\" /><img src=\"/upload/image/20180602/20180602172142_258.jpg\" alt=\"\" /><img src=\"/upload/image/20180602/20180602172146_947.jpg\" alt=\"\" /><img src=\"/upload/image/20180605/20180605114614_576.jpg\" alt=\"\" /><img src=\"/upload/image/20180605/20180605114530_762.jpg\" alt=\"\" /><img src=\"/upload/image/20180605/20180605114636_859.jpg\" alt=\"\" /><img src=\"/upload/image/20180602/20180602172217_845.jpg\" alt=\"\" /><img src=\"/upload/image/20180605/20180605114702_334.jpg\" alt=\"\" /><img src=\"/upload/image/20180605/20180605121051_310.jpg\" alt=\"\" /><img src=\"/upload/image/20180622/20180622175307_948.jpg\" alt=\"\" />\n</p>', null, '2018-05-09', '29', '1', '1', '1', '1');
INSERT INTO `tb_goods` VALUES ('93', '平板电脑', 'http://xcx.58wyh.com/upload/1527303976428.jpg', '', '999', '', null, '2018-05-26', '32', null, '0', '1', '2');
INSERT INTO `tb_goods` VALUES ('94', '学习机', 'http://xcx.58wyh.com/upload/1528178502096.jpg', '', '999', '<p>\n	<img src=\"/upload/image/20180526/20180526112133_496.jpg\" alt=\"\" />\n</p>\n<p>\n	<img src=\"/upload/image/20180526/20180526112142_951.jpg\" alt=\"\" />\n</p>\n<p>\n	<img src=\"/upload/image/20180526/20180526112157_362.jpg\" alt=\"\" />\n</p>\n<p>\n	<img src=\"/upload/image/20180526/20180526112207_778.jpg\" alt=\"\" />\n</p>\n<p>\n	<img src=\"/upload/image/20180526/20180526112215_455.jpg\" alt=\"\" />\n</p>\n<p>\n	<img src=\"/upload/image/20180526/20180526112225_504.jpg\" alt=\"\" />\n</p>\n<p>\n	<img src=\"/upload/image/20180526/20180526112240_290.jpg\" alt=\"\" />\n</p>\n<p>\n	<img src=\"/upload/image/20180526/20180526112247_4.jpg\" alt=\"\" />\n</p>\n<p>\n	<img src=\"/upload/image/20180526/20180526112255_337.jpg\" alt=\"\" />\n</p>\n<p>\n	<img src=\"/upload/image/20180526/20180526112305_687.jpg\" alt=\"\" />\n</p>\n<p>\n	<img src=\"/upload/image/20180526/20180526112314_505.jpg\" alt=\"\" />\n</p>\n<p>\n	<img src=\"/upload/image/20180526/20180526112321_875.jpg\" alt=\"\" />\n</p>\n<p>\n	<img src=\"/upload/image/20180526/20180526112329_278.jpg\" alt=\"\" />\n</p>', null, '2018-05-26', '29', null, '1', '1', '2');
INSERT INTO `tb_goods` VALUES ('95', '平板电脑', 'http://xcx.58wyh.com/upload/1527304099736.jpg', '', '999', '', null, '2018-05-26', '32', null, '0', '1', '2');
INSERT INTO `tb_goods` VALUES ('96', '平板电脑', 'http://xcx.58wyh.com/upload/1527304145321.jpg', '', '999', '', null, '2018-05-26', '32', null, '0', '1', '2');
INSERT INTO `tb_goods` VALUES ('97', '平板电脑', 'http://xcx.58wyh.com/upload/1527304542077.jpg', '', '999', '', null, '2018-05-26', '32', null, '0', '1', '2');
INSERT INTO `tb_goods` VALUES ('98', '测试商品不发货', 'http://xcx.58wyh.com/upload/1528794617037.jpg', '0', '0.1', '好喝的苹果醋', null, '2018-06-12', '29', null, '0', '1', '1');

-- ----------------------------
-- Table structure for tb_menu
-- ----------------------------
DROP TABLE IF EXISTS `tb_menu`;
CREATE TABLE `tb_menu` (
  `goods_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_name` varchar(255) DEFAULT NULL,
  `goods_img` varchar(255) DEFAULT NULL,
  `goods_price` float DEFAULT NULL,
  `goods_detail` text,
  `add_time` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_menu
-- ----------------------------
INSERT INTO `tb_menu` VALUES ('1', '菜单菜品1', '/chihaodian/upload/1457680109579.png', '150', '123', '2016-03-11', '1');
INSERT INTO `tb_menu` VALUES ('2', '123', '/chihaodian/upload/1457680149919.png', '123', '123', '2016-03-11', '1');
INSERT INTO `tb_menu` VALUES ('3', '123', '/chihaodian/upload/1457680149919.png', '123', '123', '2016-03-11', '1');
INSERT INTO `tb_menu` VALUES ('4', '123', '/chihaodian/upload/1457680149919.png', '123', '123', '2016-03-11', '1');
INSERT INTO `tb_menu` VALUES ('5', '123', '/chihaodian/upload/1457680149919.png', '123', '123', '2016-03-11', '1');
INSERT INTO `tb_menu` VALUES ('6', '123', '/chihaodian/upload/1457680149919.png', '123', '123', '2016-03-11', '1');
INSERT INTO `tb_menu` VALUES ('7', '123', '/chihaodian/upload/1457680149919.png', '123', '123', '2016-03-11', '1');
INSERT INTO `tb_menu` VALUES ('8', '123', '/chihaodian/upload/1457680149919.png', '123', '123', '2016-03-11', '1');
INSERT INTO `tb_menu` VALUES ('9', '123', '/chihaodian/upload/1457680149919.png', '123', '123', '2016-03-11', '1');
INSERT INTO `tb_menu` VALUES ('10', '123', '/chihaodian/upload/1457680149919.png', '123', '123', '2016-03-11', '1');
INSERT INTO `tb_menu` VALUES ('11', '123', '/chihaodian/upload/1457680149919.png', '123', '123', '2016-03-11', '1');
INSERT INTO `tb_menu` VALUES ('12', '123', '/chihaodian/upload/1457680149919.png', '123', '123', '2016-03-11', '1');
INSERT INTO `tb_menu` VALUES ('13', '123', '/chihaodian/upload/1457680149919.png', '123', '123', '2016-03-11', '1');
INSERT INTO `tb_menu` VALUES ('14', '123', '/chihaodian/upload/1457680149919.png', '123', '123', '2016-03-11', '1');
INSERT INTO `tb_menu` VALUES ('15', '123', '/chihaodian/upload/1457680149919.png', '123', '123', '2016-03-11', '1');
INSERT INTO `tb_menu` VALUES ('16', '123', '/chihaodian/upload/1457680149919.png', '123', '123', '2016-03-11', '1');
INSERT INTO `tb_menu` VALUES ('17', '123', '/chihaodian/upload/1457680149919.png', '123', '123', '2016-03-11', '1');
INSERT INTO `tb_menu` VALUES ('18', '123', '/chihaodian/upload/1457680149919.png', '123', '123', '2016-03-11', '1');
INSERT INTO `tb_menu` VALUES ('19', '123', '/chihaodian/upload/1457680149919.png', '123', '123', '2016-03-11', '1');
INSERT INTO `tb_menu` VALUES ('20', '123', '/chihaodian/upload/1457680149919.png', '123', '123', '2016-03-11', '1');
INSERT INTO `tb_menu` VALUES ('21', '123', '/chihaodian/upload/1457680149919.png', '123', '123', '2016-03-11', '1');

-- ----------------------------
-- Table structure for tb_navigation
-- ----------------------------
DROP TABLE IF EXISTS `tb_navigation`;
CREATE TABLE `tb_navigation` (
  `nav_id` int(11) NOT NULL AUTO_INCREMENT,
  `nav_img` varchar(255) DEFAULT NULL,
  `nav_url` varchar(255) DEFAULT NULL,
  `nav_sort` int(11) DEFAULT NULL,
  `nav_status` int(11) DEFAULT NULL,
  `nav_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`nav_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_navigation
-- ----------------------------

-- ----------------------------
-- Table structure for tb_order
-- ----------------------------
DROP TABLE IF EXISTS `tb_order`;
CREATE TABLE `tb_order` (
  `order_id` varchar(255) NOT NULL,
  `goods_id` varchar(255) DEFAULT NULL,
  `goods_name` text,
  `goods_img` text,
  `goods_spe` varchar(255) DEFAULT NULL,
  `goods_price` varchar(255) DEFAULT NULL,
  `goods_num` varchar(255) DEFAULT NULL,
  `goods_total` float DEFAULT NULL,
  `goods_total_num` int(11) DEFAULT NULL,
  `addr_name` varchar(255) DEFAULT NULL COMMENT '收货地址',
  `receive` varchar(255) DEFAULT NULL COMMENT '收货方式，如果为自提点则记录自提点，如果是快递则记录收货地址',
  `cps_id` int(11) DEFAULT NULL,
  `cps_name` varchar(255) DEFAULT NULL,
  `cps_price` float DEFAULT NULL,
  `oppen_id` varchar(255) DEFAULT NULL,
  `add_time` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '0待付款，1待发货，2已发货',
  `note` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `express_dm` varchar(255) DEFAULT NULL,
  `express_name` varchar(255) DEFAULT NULL,
  `express_hm` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_order
-- ----------------------------
INSERT INTO `tb_order` VALUES ('20180607112752582', '92', '4G多功能无线路由器', 'http://xcx.58wyh.com/upload/1528184679131.jpg', null, '0.1', '1', '0.1', '1', '鸣人 15973246801 安徽 安庆市 怀宁县 木叶忍者村', '', '0', '', '0', 'o5ql51QCZXJ8Nxl1Vw6uX-ODkZ3M', '2018-06-07 11:27:52', '0', '', null, null, null, null);
INSERT INTO `tb_order` VALUES ('20180607112844215', '92', '4G多功能无线路由器', 'http://xcx.58wyh.com/upload/1528184679131.jpg', null, '1.0', '1', '1', '1', '罗亚明 15899776132 湖南 永州市 芝山区 红太阳大酒店', '', '0', '', '0', 'o5ql51Uk1EKczU9IUj6_j2WidP7A', '2018-06-07 11:28:44', '2', '', null, '90090', '更好', '23');
INSERT INTO `tb_order` VALUES ('20180607112935078', '92', '4G多功能无线路由器', 'http://xcx.58wyh.com/upload/1528184679131.jpg', null, '1.0', '1', '1', '1', '鸣人 15973246801 安徽 安庆市 怀宁县 木叶忍者村', '', '0', '', '0', 'o5ql51QCZXJ8Nxl1Vw6uX-ODkZ3M', '2018-06-07 11:29:35', '2', '', null, '', '', '22');
INSERT INTO `tb_order` VALUES ('20180607160005870', '92', '4G多功能无线路由器', 'http://xcx.58wyh.com/upload/1528184679131.jpg', null, '1.0', '1', '1', '1', '若 15036356407 河南 郑州市 金水区 文化路110号', '', '0', '', '0', 'o5ql51QR_d1ppZldNHqcZYEtWGII', '2018-06-07 16:00:05', '0', '', null, null, null, null);
INSERT INTO `tb_order` VALUES ('20180607160437029', '92', '4G多功能无线路由器', 'http://xcx.58wyh.com/upload/1528184679131.jpg', null, '1.0', '1', '1', '1', '复活甲 13537637641 江苏 苏州市 金阊区 都好久', '', '0', '', '0', 'o5ql51R-gHJb78XatgTYJzW--J24', '2018-06-07 16:04:37', '2', '', null, '', '', '123456');
INSERT INTO `tb_order` VALUES ('20180607160837359', '92', '4G多功能无线路由器', 'http://xcx.58wyh.com/upload/1528184679131.jpg', null, '1.0', '1', '1', '1', '半只烂鱼 15036356407 广东 深圳市 龙岗区 坂田街道', '', '0', '', '0', 'o5ql51fPmHoYL34Eqcu7MNyFaolE', '2018-06-07 16:08:37', '0', '', null, null, null, null);
INSERT INTO `tb_order` VALUES ('20180607160934556', '92', '4G多功能无线路由器', 'http://xcx.58wyh.com/upload/1528184679131.jpg', null, '1.0', '2', '2', '2', '半只烂鱼 15036356407 广东 深圳市 龙岗区 坂田街道', '', '0', '', '0', 'o5ql51fPmHoYL34Eqcu7MNyFaolE', '2018-06-07 16:09:34', '0', '', null, null, null, null);
INSERT INTO `tb_order` VALUES ('20180607161158016', '92', '4G多功能无线路由器', 'http://xcx.58wyh.com/upload/1528184679131.jpg', null, '1.0', '1', '1', '1', '复活甲 13537637641 江苏 苏州市 金阊区 都好久', '', '0', '', '0', 'o5ql51R-gHJb78XatgTYJzW--J24', '2018-06-07 16:11:58', '2', '', null, '', '', '12345678');
INSERT INTO `tb_order` VALUES ('20180607162404207', '92', '4G多功能无线路由器', 'http://xcx.58wyh.com/upload/1528184679131.jpg', null, '1.0', '5', '5', '5', '蒋思勇 13600190077 江苏 南京市 市辖区 这样你是', '', '0', '', '0', 'o5ql51UthdosV3y2UzlMsfAmnNLo', '2018-06-07 16:24:04', '2', '', null, '', '', '789456');
INSERT INTO `tb_order` VALUES ('20180611200745993', '92', '4G多功能无线路由器', 'http://xcx.58wyh.com/upload/1528184679131.jpg', null, '1599.0', '1', '1599', '1', '刘云飞 13715066601 广东 深圳市 宝安区 上合花园A栋2805', '', '0', '', '0', 'o5ql51SAINoLyD3aV53kokij0K9k', '2018-06-11 20:07:45', '2', '', null, 'ZTO', '中通', '074436190709');
INSERT INTO `tb_order` VALUES ('20180613161706833', '92', '4G多功能无线路由器', 'http://xcx.58wyh.com/upload/1528184679131.jpg', null, '1599.0', '1', '1599', '1', '若 15036356407 河南 郑州市 金水区 文化路110号', '', '0', '', '0', 'o5ql51QR_d1ppZldNHqcZYEtWGII', '2018-06-12 15:48:59', '0', '', null, null, null, null);
INSERT INTO `tb_order` VALUES ('20180613161714219', '92', '4G多功能无线路由器', 'http://xcx.58wyh.com/upload/1528184679131.jpg', null, '1599.0', '1', '1599', '1', '若 15036356407 河南 郑州市 金水区 文化路110号', '', '0', '', '0', 'o5ql51QR_d1ppZldNHqcZYEtWGII', '2018-06-12 09:29:30', '0', '注意质量', null, null, null, null);
INSERT INTO `tb_order` VALUES ('20180614095325701', '92', '4G多功能无线路由器', 'http://xcx.58wyh.com/upload/1528184679131.jpg', null, '1599.0', '1', '1599', '1', '若 15036356407 河南 郑州市 金水区 文化路110号', '', '0', '', '0', 'o5ql51QR_d1ppZldNHqcZYEtWGII', '2018-06-12 09:28:46', '0', '', null, null, null, null);
INSERT INTO `tb_order` VALUES ('20180623123413033', '92', '4G多功能无线路由器', 'http://xcx.58wyh.com/upload/1528184679131.jpg', null, '1599.0', '1', '1599', '1', '杨现奇 15896590568 河南 商丘市 虞城县 虞城县汽车站', '', '0', '', '0', 'o5ql51RWzaluhRDcdaIFXkbTkFT8', '2018-06-23 12:34:13', '0', '', null, null, null, null);
INSERT INTO `tb_order` VALUES ('20180623123535920', '92', '4G多功能无线路由器', 'http://xcx.58wyh.com/upload/1528184679131.jpg', null, '1599.0', '1', '1599', '1', '杨现奇 15896590568 河南 商丘市 虞城县 虞城县汽车站', '', '0', '', '0', 'o5ql51RWzaluhRDcdaIFXkbTkFT8', '2018-06-23 12:35:35', '2', '', null, '12', '顺丰', '440425689547');

-- ----------------------------
-- Table structure for tb_order2
-- ----------------------------
DROP TABLE IF EXISTS `tb_order2`;
CREATE TABLE `tb_order2` (
  `ord_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) DEFAULT NULL,
  `goods_name` varchar(255) DEFAULT NULL,
  `goods_price` float DEFAULT NULL,
  `goods_num` int(11) DEFAULT NULL,
  `cps_id` int(11) DEFAULT NULL COMMENT '优惠券id、',
  `cps_name` varchar(255) DEFAULT NULL COMMENT '优惠券名称',
  `cps_price` float DEFAULT NULL COMMENT '优惠券价格',
  `goods_total` float DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ord_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_order2
-- ----------------------------

-- ----------------------------
-- Table structure for tb_role
-- ----------------------------
DROP TABLE IF EXISTS `tb_role`;
CREATE TABLE `tb_role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `add_time` datetime DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_role
-- ----------------------------
INSERT INTO `tb_role` VALUES ('1', '超级管理员', '2018-04-25 11:44:39');
INSERT INTO `tb_role` VALUES ('4', '的', '2018-04-25 14:06:57');
INSERT INTO `tb_role` VALUES ('6', '234', '2018-04-25 17:05:26');
INSERT INTO `tb_role` VALUES ('8', '2345', '2018-04-25 17:05:34');
INSERT INTO `tb_role` VALUES ('9', '45345', '2018-04-25 17:05:37');
INSERT INTO `tb_role` VALUES ('10', '43', '2018-04-25 17:05:40');
INSERT INTO `tb_role` VALUES ('16', '起顺', '2018-04-26 09:28:44');
INSERT INTO `tb_role` VALUES ('17', 'sdas', '2018-04-26 10:12:18');
INSERT INTO `tb_role` VALUES ('18', 'sdfsfdsfd', '2018-04-26 10:14:05');
INSERT INTO `tb_role` VALUES ('19', 'lkdffd', '2018-04-26 10:16:00');
INSERT INTO `tb_role` VALUES ('20', 'sd', '2018-04-26 10:45:37');
INSERT INTO `tb_role` VALUES ('21', 'cc', '2018-04-26 10:45:49');
INSERT INTO `tb_role` VALUES ('24', '1', '2018-04-26 14:55:30');

-- ----------------------------
-- Table structure for tb_role_url
-- ----------------------------
DROP TABLE IF EXISTS `tb_role_url`;
CREATE TABLE `tb_role_url` (
  `role_id` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_role_url
-- ----------------------------
INSERT INTO `tb_role_url` VALUES ('19', '/main/admin');
INSERT INTO `tb_role_url` VALUES ('19', '/main/xxx');
INSERT INTO `tb_role_url` VALUES ('20', '/main/admin');
INSERT INTO `tb_role_url` VALUES ('21', '/main/admin');
INSERT INTO `tb_role_url` VALUES ('21', '/main/xexp');
INSERT INTO `tb_role_url` VALUES ('21', '/main/userIncome');
INSERT INTO `tb_role_url` VALUES ('1', '/main/user');
INSERT INTO `tb_role_url` VALUES ('1', '/main/button');
INSERT INTO `tb_role_url` VALUES ('1', '/main/userIncome');
INSERT INTO `tb_role_url` VALUES ('1', '/main/exp');
INSERT INTO `tb_role_url` VALUES ('1', '/main/wxSetting');
INSERT INTO `tb_role_url` VALUES ('1', '/main/sec');
INSERT INTO `tb_role_url` VALUES ('1', '/main/platformIncome');
INSERT INTO `tb_role_url` VALUES ('1', '/main/fgt');
INSERT INTO `tb_role_url` VALUES ('1', '/main/goods');
INSERT INTO `tb_role_url` VALUES ('1', '/main/ctg');
INSERT INTO `tb_role_url` VALUES ('1', '/main/admin');
INSERT INTO `tb_role_url` VALUES ('1', '/main/authentication');
INSERT INTO `tb_role_url` VALUES ('1', '/main/order');
INSERT INTO `tb_role_url` VALUES ('1', '/main/role');
INSERT INTO `tb_role_url` VALUES ('1', '/main/ban');
INSERT INTO `tb_role_url` VALUES ('1', '/main/art');
INSERT INTO `tb_role_url` VALUES ('1', '/main/nav');
INSERT INTO `tb_role_url` VALUES ('1', '/main/drawMoney');

-- ----------------------------
-- Table structure for tb_search
-- ----------------------------
DROP TABLE IF EXISTS `tb_search`;
CREATE TABLE `tb_search` (
  `sec_id` int(11) NOT NULL AUTO_INCREMENT,
  `sec_name` varchar(255) DEFAULT NULL,
  `sort` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`sec_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_search
-- ----------------------------
INSERT INTO `tb_search` VALUES ('1', '无线路由器', '1', '1');
INSERT INTO `tb_search` VALUES ('2', '学习机', '2', '1');

-- ----------------------------
-- Table structure for tb_share_money
-- ----------------------------
DROP TABLE IF EXISTS `tb_share_money`;
CREATE TABLE `tb_share_money` (
  `sha_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` varchar(255) DEFAULT NULL,
  `total_price` float DEFAULT NULL,
  `one_user_id` varchar(255) DEFAULT NULL,
  `two_user_id` varchar(255) DEFAULT NULL,
  `custom_user_id` varchar(255) DEFAULT NULL,
  `one_share_money` float DEFAULT NULL,
  `two_share_money` float DEFAULT NULL,
  `platform_share_money` float DEFAULT NULL,
  `add_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sha_id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_share_money
-- ----------------------------
INSERT INTO `tb_share_money` VALUES ('49', '20180607160437029', '1', '679', '0', '681', '0.5', '0', '0.5', '2018-06-07 16:07:22');
INSERT INTO `tb_share_money` VALUES ('50', '20180607161158016', '1', '679', '0', '681', '0.5', '0', '0.5', '2018-06-07 16:13:18');
INSERT INTO `tb_share_money` VALUES ('51', '20180607162404207', '5', '680', '0', '676', '2.5', '0', '2.5', '2018-06-07 16:24:45');
INSERT INTO `tb_share_money` VALUES ('52', '20180607112844215', '1', '', '', '672', '0', '0', '1', '2018-06-12 14:40:23');
INSERT INTO `tb_share_money` VALUES ('53', '20180607112935078', '1', '', '672', '768', '0', '0.14', '0.86', '2018-06-12 15:27:55');
INSERT INTO `tb_share_money` VALUES ('54', '20180612171225282', '0.1', '', '', '672', '0', '0', '0.1', '2018-06-12 17:12:54');
INSERT INTO `tb_share_money` VALUES ('55', '20180612171448651', '0.1', '', '673', '672', '0', '0.014', '0.086', '2018-06-12 17:15:04');
INSERT INTO `tb_share_money` VALUES ('56', '20180612171907714', '0.1', '', '673', '672', '0', '0.014', '0.086', '2018-06-12 17:19:25');
INSERT INTO `tb_share_money` VALUES ('57', '20180612172111949', '0.1', '', '673', '672', '0', '0.014', '0.086', '2018-06-12 17:21:35');
INSERT INTO `tb_share_money` VALUES ('58', '20180612172615688', '0.1', '683', '673', '672', '0.012', '0.014', '0.074', '2018-06-12 17:26:34');
INSERT INTO `tb_share_money` VALUES ('59', '20180612182350298', '0.1', '683', '673', '672', '0.12', '0.14', '-0.08', '2018-06-12 18:24:04');
INSERT INTO `tb_share_money` VALUES ('60', '20180612183341563', '0.1', '683', '673', '672', '0.012', '0.014', '0.074', '2018-06-12 18:34:02');
INSERT INTO `tb_share_money` VALUES ('61', '20180612183837886', '0.1', '', '', '672', '0', '0', '0.1', '2018-06-12 18:38:56');
INSERT INTO `tb_share_money` VALUES ('62', '20180612184044817', '0.1', '683', '683', '672', '0.018', '0', '0.082', '2018-06-12 18:41:03');
INSERT INTO `tb_share_money` VALUES ('63', '20180612184303691', '0.1', '683', '673', '672', '0.012', '0.014', '0.074', '2018-06-12 18:43:17');
INSERT INTO `tb_share_money` VALUES ('64', '20180612184703274', '0.1', null, '673', '672', '0', '0.014', '0.086', '2018-06-12 18:47:23');
INSERT INTO `tb_share_money` VALUES ('65', '20180611200745993', '1599', '767', '767', '769', '303.81', '0', '1295.19', '2018-06-12 19:16:21');
INSERT INTO `tb_share_money` VALUES ('66', '20180623123535920', '1599', '737', '935', '939', '191.88', '223.86', '1183.26', '2018-06-23 14:03:47');

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `oppen_id` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL COMMENT '账号手机号',
  `realname` varchar(255) DEFAULT NULL COMMENT '昵称',
  `password` varchar(255) DEFAULT NULL,
  `head_img` varchar(255) DEFAULT NULL,
  `add_time` varchar(255) DEFAULT NULL,
  `area_id` int(11) DEFAULT NULL,
  `area_name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `member_time` varchar(255) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `father_id` varchar(255) DEFAULT NULL,
  `level` int(11) DEFAULT '2',
  `draw_money` float DEFAULT '0',
  `top_father_id` varchar(255) DEFAULT NULL,
  `code` int(11) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `msg_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`,`oppen_id`)
) ENGINE=InnoDB AUTO_INCREMENT=989 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('672', 'o5ql51Uk1EKczU9IUj6_j2WidP7A', 'LIU', '猪麻麻', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIegd1f5jgTic9kBmiaOa1KwruoxRITlXaOQHCO3VskFTcN8CQ1D8WdyaHd3hgmcTBqufAU1kA1alEA/132', '2018-07-02', null, null, '1', null, null, '768', '1', '0.14', '683', '881267', '15899776132', '2018-06-11 18:23:49');
INSERT INTO `tb_user` VALUES ('673', 'o5ql51fhk2-BEOUEN7ybBB3gKPIo', '链接', '罗鹏', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/PlytDJX1mbF4d9KM94eQSBwN6rRsmLY6AhkLmKctXl3KoPuGhydtYnU3xqHzFnHzgOEpyTtgOgeKkkL6UicvhdQ/132', '2018-07-02', null, null, '1', null, null, '683', '2', '0.238', '683', '242940', '18227819303', null);
INSERT INTO `tb_user` VALUES ('674', 'o5ql51YVpXhxAcRxj9LNcsIXE4bg', '', '海浪', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/dIryzibibEzDDXMMf64sXtkJFV2ODaOKJgl5icOyrYGwpLribQUFic0YHFAxJl0o40kgoGibQXNLJ5ZyAeiaOm6qo3icqQ/132', '2018-06-07', null, null, '1', null, null, null, '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('675', 'o5ql51UcC0Y7A48NsRTm6Jl4NZf4', '', '做真实的自己！', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/he3nEGmBQMeRPBicMjZ5VtM193T8b7TtYQib3Hq0roo6Yh0UHHVlTAjbLDoeNT8JOuvia5WiapLfONI4onNdvoKz1A/132', '2018-06-07', null, null, '1', null, null, null, '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('676', 'o5ql51UthdosV3y2UzlMsfAmnNLo', '蒋思勇', '蒋思勇', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/VpuiciaOcUsyuEg5h2kUroeynj1xCcW9lFBLAeVKTEicclsRXHIqhibQyPqvzpmdpAwsmgfLBumMC7HCxiaktOic7YaQ/132', '2018-06-07 ', null, null, '1', null, null, null, '1', '0', '', '442285', '13600190077', null);
INSERT INTO `tb_user` VALUES ('677', 'o5ql51fPmHoYL34Eqcu7MNyFaolE', '杨洋', '千里狐', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/Gou3AVqbL4HTe1hicZcsV4RMHDa5C1sXY8E2l5a1tibSLIibIycOhq1fdBC8Rttiah7122HB5dde5rlq7bEib4xbfqA/132', '2018-06-08', null, null, '1', null, null, null, '2', '0', null, '417316', null, null);
INSERT INTO `tb_user` VALUES ('678', 'o5ql51QR_d1ppZldNHqcZYEtWGII', '杨洋', '楊', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKOlSlTvqKlqkcmiaJL6oib04y5oQHJg3tic8hOicAfD0kd3mLicZibE4icEOTnp2ry8RZ1JEz15HEEapiayg/132', '2018-06-13', null, null, '1', null, null, '685', '2', '0', '685', '945713', '15036356407', '2018-06-13 18:41:22');
INSERT INTO `tb_user` VALUES ('679', 'o5ql51RwtWo_C-wsJL2uyck32g50', '', '千里狐小王', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/1yv79mdbwZy5RicWx7u6ktsazOichAPjdWvFhOicBqmdWDzFDm1pdmBUgveCjUPicBUOib1X09Q1TFXdQIVpl5FJ8xA/132', '2018-07-02', null, null, '1', null, null, '685', '1', '0', '685', '336502', '13537637641', '2018-06-08 18:23:39');
INSERT INTO `tb_user` VALUES ('680', 'o5ql51XnjMqwYRG-VcVbCZARKFa8', '廖汉祥', '廖汉祥-13652669101', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/InNUIN15cVvRIHZ3McWDxN0JnIklZyEVQ9cQmdMXicia5qKyyicusibFanz4saTMiboGFKzHegMN1YEmBeibEeFn4kfw/132', '2018-07-02', null, null, '1', null, null, '680', '1', '0.5', '680', '713199', '13652669101', null);
INSERT INTO `tb_user` VALUES ('681', 'o5ql51R-gHJb78XatgTYJzW--J24', '', '爱的天使', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/72M4Btn4p1MXOG4DBrQjfXVTzDbApYoEs5ZDSIVUXtic9ArUHY6kPnwibXo8yDGhicvzjzIRGoH1eVlDTiaqDC7Z8g/132', '2018-06-17', null, null, '1', null, null, '679', '2', '0', '679', null, null, null);
INSERT INTO `tb_user` VALUES ('682', 'o5ql51Q_P4pPcp0GYSOpzRUTBfYM', '', '千里狐', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83epIdmlBLywcLCzjzNTenYx7YdO35RX7a96icias78XUU7NsEArbbZ3KiawtWOvldgqZeMicbLPPFDlQHg/132', '2018-06-23', null, null, '1', null, null, '685', '2', '0', '685', '813577', '15989368281', '2018-06-08 18:30:59');
INSERT INTO `tb_user` VALUES ('683', 'o5ql51ZfuKsrSvX-QtmRG7Im5VWs', '陈仕鹏', '陈某', null, '', '2018-07-02', null, null, '1', null, null, '768', '1', '0.174', null, '101133', '13790445950', '2018-06-12 19:19:54');
INSERT INTO `tb_user` VALUES ('684', 'o5ql51SSpW3VByIrUox3zhUhsz30', '', '留住健康感恩所有', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTI276iaNqIaQRhMO2ATUIuRiaFmE0s7s36xYgqkLSGx1WCAibDJNY3HiaQ7dtAPjoZwyOvic00bIaVACicA/132', '2018-06-12', null, null, '1', null, null, '678', '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('685', 'o5ql51TmzFsqSho7h6Bwkw0AfYPs', '蒋思勇', '迷茫', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/lszJ2vzCACGqJO90richkMpWbL7VJ3ngQcYulFymoLlOh4dic5ODVppXoCpoiaX7a4XHy9u4kFku6j8RFw89GjyEg/132', '2018-07-02', null, null, '1', null, null, '685', '1', '0', '685', '724003', '18820991069', null);
INSERT INTO `tb_user` VALUES ('686', 'o5ql51WU4wqcAuYqcusyW306KfWg', '', '千里狐科技', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/juFm4mgtpYIPCAbjLUUv1FdNel0iaPGibysDfGFMqsAtfBcD0CNO2Xhr2j5AvFzZmkIX3fdiatuueRFUXL2dplLfA/132', '2018-06-08', null, null, '1', null, null, '685', '2', '0', '685', null, null, null);
INSERT INTO `tb_user` VALUES ('687', 'o5ql51bKkfJ533NAVo_GXrs_0lg4', '曼丽', '漫丽', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/atHIKHP5hwGZyMFPuAXX3XfQMPibqCD9bIuGdeVkqd8PPInNKI2htenJdrn6DSmHplYdQkxXeJqUZjkLdzqq5Fw/132', '2018-06-21', null, null, '1', null, null, '680', '2', '0', '680', '821406', '15817351138', null);
INSERT INTO `tb_user` VALUES ('688', 'o5ql51a0rbM_ybhvaYW7G4f51h_A', '', '发哥', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/SJz1kXRMVleq6Cwk0HO9mZicmwDPhGE2XsdLa925G8kJRIK1Wv4svQQYicQSicF3RcjBUDTHUxNEg7yazicDiaY7Ehg/132', '2018-06-08', null, null, '1', null, null, null, '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('689', 'o5ql51YFJlTLnLa-wh-eZlUqgHaY', '', '许多年以后-13107161118', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKhHBhOrmibnf4OMSp1L2fM31Ha1iaibibAhpPDmAWBMBNiaibpOFfFTGPoqhkjao1KFtJch8NicA6tGW7ag/132', '2018-06-24', null, null, '1', null, null, '685', '2', '0', '685', null, null, null);
INSERT INTO `tb_user` VALUES ('690', 'o5ql51ajHtsEIU8k9x6UfPc0sc_w', '', '老焦', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/PHBmtS4pOIGCW4WaDibrEj8fSuhqyVygqcy5ZlJ3xWUgPJ4AAYnNhjaPBqiclibD63hNA5VZK1cSD0C9aG1d3jE2w/132', '2018-06-11', null, null, '1', null, null, null, '1', '0', '685', '589376', '15013782193', '2018-06-11 18:39:15');
INSERT INTO `tb_user` VALUES ('691', 'o5ql51Sb5WXJON7yAyjMCxh8thsM', '', '妙月', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/60ND2ZMZBJwuCZQvALpxgRHZQHbHaFBddx0TetLTeVNovA4aqfrmIJcZkTJ5wokxAydD9cc0ib73m8KgdBd6tcA/132', '2018-06-08', null, null, '1', null, null, '685', '2', '0', '685', null, null, null);
INSERT INTO `tb_user` VALUES ('692', 'o5ql51W820fDI3mrkE_WmwAFQsHY', '朱俊和', 'SAKURA', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/gBWibNMXCKPDDOqlnPurjcSYZxrV662ibC1wWRNXVEvwVibUGoHnhqh9GRAFa6X9zeicFOKdxerrM8uSxweu0ffuYQ/132', '2018-07-02', null, null, '1', null, null, '768', '2', '0', '683', '695580', '18899774124', '2018-06-19 14:22:24');
INSERT INTO `tb_user` VALUES ('693', 'o5ql51XoCbQxtgDRO3fiAipqgXe8', '', '空白格', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/WMW2ibruRPrnrDywVHibVoibuZqkltGdgibTDcSZxuTa8PSrK2Dq0xkanfcXEfqLs8hsDAzwFHnmuGKuGRWAF2Rycw/132', '2018-06-29', null, null, '1', null, null, '685', '2', '0', '685', null, null, null);
INSERT INTO `tb_user` VALUES ('694', 'o5ql51fYcKgTe4KidG5uaybIurWg', '黄朱华', '哈哈', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/cazxPV4uicTl56ZQDYMI1cEPKvyC7oFlEzTSAVbicibHycXUqtKI6HMDvZqqR89CBQmyn4E5dvXfrSnual9JF5ia6g/132', '2018-06-24', null, null, '1', null, null, '685', '2', '0', '685', '366015', '18576767458', '2018-06-23 22:16:21');
INSERT INTO `tb_user` VALUES ('695', 'o5ql51feD2r-uNZ86XrYR45gtEPc', '', '林先焰', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eo8eZicWhHEcyH6icEvYuRU4NTlfGDXrePYq7ic4JOEWTe9qjZAqXq7cxVicFnKSh58NZflO8pxTqeWMw/132', '2018-06-20', null, null, '1', null, null, '685', '2', '0', '685', null, null, null);
INSERT INTO `tb_user` VALUES ('696', 'o5ql51YIm7_lp55xgLT2CdaY3dWc', '', '妹妹', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/xjxCasE1xl8o0DMrXjDCH2VIlMsS8MbOLibkKTmXsiap4XCETsokRXRuicajznxBhdCiaH9aUcfv75YHmhyibxNicyQA/132', '2018-06-08', null, null, '1', null, null, '693', '2', '0', '685', null, null, null);
INSERT INTO `tb_user` VALUES ('697', 'o5ql51QxH3kzygg0UtAfW3YTT7iQ', '', '，文 ，', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/SKQDx1iaRXkWZibAXQicQC2hrOxibV4ULF5eVR0kibrFs2NgHw8PrZiacbpMeG5oXIq5NPPqVdLozoPNTmo8uxWF5uJQ/132', '2018-06-08', null, null, '1', null, null, '685', '2', '0', '685', null, null, null);
INSERT INTO `tb_user` VALUES ('698', 'o5ql51fi4AvBKDL480WuLSdjde7Q', '', '宁', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83epFZn6EzRy1vcvPbUdciaN2tuSrscm0dWiaoAb3VRiawibBVGVqp5c55jby9NSic3dibzVJyGguBumQrfwQ/132', '2018-06-08', null, null, '1', null, null, '685', '2', '0', '685', null, null, null);
INSERT INTO `tb_user` VALUES ('699', 'o5ql51Rl197ZctIu68PPQ2WGVpxc', '', '无所谓', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/6Nw457Rs494enHQGbEicqy2NN45sibaKC72Z1TswCGUNicbBiaRE0gBAQ7RYf4QHtBGWHthqgibhCwCyJicEB1EXuV6Q/132', '2018-06-08', null, null, '1', null, null, '685', '2', '0', '685', null, null, null);
INSERT INTO `tb_user` VALUES ('700', 'o5ql51S3IrDaKh9gEChZU8p6VkxY', '', '小名', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/XKYmZpVib6a6WItMpvgolKiawnibRq2eavPL8uwaRpR7Yk3HokJXRJrD5kvQqPfwicXfEwX8n5R6stdL5q74ud0K1A/132', '2018-06-11', null, null, '1', null, null, null, '1', '0', '', '180770', '15295832768', '2018-06-09 18:01:43');
INSERT INTO `tb_user` VALUES ('701', 'o5ql51RFi-C1aAZHdm2oD98yv5wg', '', '蘭', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/xfVCCdeC1j6tZOHoLf4eTxDd3o7oBkIffQSBhY3umgdY7TzABF2EvaZKicib9JMFPDfiayYkN83TX5lwlcmbhF3Fw/132', '2018-06-08', null, null, '1', null, null, '700', '2', '0', '685', null, null, null);
INSERT INTO `tb_user` VALUES ('702', 'o5ql51TcAIBXKNx-9g-ApbLSOpqM', '', '杨璐僮', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJxzxDIUjoToGx2AG0Mia3IFgxG5ViaYoRw1dBjJjz4XYbvNWWy9icD1UUyD4rNn2QWTGniaRce4Q4DIw/132', '2018-06-19', null, null, '1', null, null, '700', '2', '0', '685', null, null, null);
INSERT INTO `tb_user` VALUES ('703', 'o5ql51U02vG3pOqouNCuD4ep7o4o', '', 'ZCK', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIzdxNgBT09Jet28EDfOicxRgrZVNujzeLYjNc4ynNFBSusoNpAfy6VpOzLAo9jcibyJCll2Z1icnHuA/132', '2018-06-08', null, null, '1', null, null, '700', '2', '0', '685', null, null, null);
INSERT INTO `tb_user` VALUES ('704', 'o5ql51YCcuJEFlY92OYf3yqtJ6bI', '', '？？？', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/EcQlnZWCpbZy6bhwR1rS1lJIpDvUK4M5vgsibmd4jID2cXSPXpf6Nx2OM8EaU1Mm5DF9787rYZUzaHmCxlj3MoA/132', '2018-06-24', null, null, '1', null, null, '685', '2', '0', '685', null, null, null);
INSERT INTO `tb_user` VALUES ('705', 'o5ql51SDmn9te9zxp8jf7Ve6D0R4', '朱旅', 'zhulv', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/zk8hm5FmiciaM7nRLkibStiaENp02hoLoPePozL1eFhub904M0JxcVSXN2Xhib3BvuEiaseEH3r6zE91mVgEJWZLMsxA/132', '2018-06-08 ', null, null, '1', null, null, '680', '2', '0', '680', '546190', '13823568114', null);
INSERT INTO `tb_user` VALUES ('706', 'o5ql51UgCENwdI6uMWj6Uyv3rKEc', '', '黄坤柳', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/sWJD16OlqziavGib0icEiccAsV3yvhicrAN6LxCuVg6HdxlD6AMkQ1mmPSyUbySAM1ibMx7DFeLGE8p2BCQ1F1va6gJA/132', '2018-06-23', null, null, '1', null, null, '685', '2', '0', '685', null, null, null);
INSERT INTO `tb_user` VALUES ('707', 'o5ql51VkshrZw_-CczIvmljao-qU', '蓝瑜', '有我就有瑜快*情', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/nHviajtqokLo8xoppdwibr5JqAAKTiaDEJ1X8kKSGApE6N1nicjS0qLTduVDOia1gPBQguUV7q9Qzrs4SmohbFVSfyg/132', '2018-06-29', null, null, '1', null, null, '685', '2', '0', '685', '657588', '13682322267', '2018-06-29 12:28:55');
INSERT INTO `tb_user` VALUES ('708', 'o5ql51cLhd7D5bZdQ18nDo_AXKz4', '', '鑫昌汇~厂家直供', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/vdEGIOC5D8P8kd4rKX44AgDkuhyIRA4eDsRGpQMR2KBu9hMrgLKTHzZlIhCgfUjcuGcZ1GRkDRyWO2SRwZPcow/132', '2018-06-08', null, null, '1', null, null, '685', '2', '0', '685', null, null, null);
INSERT INTO `tb_user` VALUES ('710', 'o5ql51b1yDiP8hRpS7ipIQCiXxTk', '何国强', '随缘', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eobJVs8fhrlQgP49icoFnJjronJwK0MvmTMTNRiaW8u7dTzUW7PkGZiajwhoatRpepyE2ay3es9cLYdQ/132', '2018-06-23', null, null, '1', null, null, '700', '2', '0', '685', '503231', '13702321409', '2018-06-12 12:39:49');
INSERT INTO `tb_user` VALUES ('711', 'o5ql51SGcGwY3pUyrFo49Gt5JTis', '', '2018一定发，陈生18002749731', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/lcCZLYAqzR0x3epmtKMVOMErVNwfXJHb2TPxLBfKnzg8PHfCOicTavc9dmwunZwr1ibC8RLHDpafXylojXFm75pQ/132', '2018-06-19', null, null, '1', null, null, '685', '2', '0', '685', null, null, null);
INSERT INTO `tb_user` VALUES ('712', 'o5ql51S72a9YsfBR3gUc1keiopi4', '', '未知昵称', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/qrQcPI6DsZXZms6vNbO7MNSA5q8jicgZPWPXGk0ib9eDHiaicUkicKZJiasrkvaN2m5jkyImQw5SQ4UVGbibVqCeUL4iag/132', '2018-07-02', null, null, '1', null, null, '685', '2', '0', '685', '157953', '15118122974', '2018-06-08 17:06:04');
INSERT INTO `tb_user` VALUES ('713', 'o5ql51ei8r3nPMkwd42HtZ_IRN3E', '', 'So So', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eovLYpd4ALoXQtFlS9xQic3jRF3pop6jnVa38nZAGl9nrCbKibkSccMLjrX1wiaNsuFDjmTHkhFIZibeQ/132', '2018-06-08', null, null, '1', null, null, '712', '2', '0', '685', null, null, null);
INSERT INTO `tb_user` VALUES ('714', 'o5ql51RYI9vQNzxrocr5VogbR-2U', '', '白启红', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/eWLNtic1NnNtDXMHmxqExjoIA1ySkBRYuVvMKQAsza03POFFiaEECcQ1ohCDzceZzeenjN0GPpLuCYFcezxZQJbw/132', '2018-06-08', null, null, '1', null, null, null, '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('715', 'o5ql51dddur364e3b3x_ojPanRIc', '', '心愿', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKrMR287YnlribsTYGnq2FYNBiaeXYGwEtF8Y0Wqb3eibBkeGSayeD3qR88k8VKdPdIo7VMUHttpCaJA/132', '2018-06-08', null, null, '1', null, null, '700', '2', '0', '685', null, null, null);
INSERT INTO `tb_user` VALUES ('716', 'o5ql51d0XLq7Vv8PJwSv_2-nS3gM', '', '开启模式', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/y0DNybibfP4EDG9SsQ5PAt3JWzib2CPQBoiakicEVbmRgUZXUUqkFlVY6FtnU4RqTBGFhBL9AzmiavJKficJGd7iaicmTA/132', '2018-06-08', null, null, '1', null, null, null, '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('717', 'o5ql51fNe7Bx9YCDRYhQusaxQiqk', '', '忆望.前尘', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/O1ubpRPl9oCdV1GM1qzLibQPibh3iaHNoa4icGz2gjde8DBIbMJdQLSO6N4kibWXmyzB1eI9DCNQhCzo31gGFYXujjQ/132', '2018-06-08', null, null, '1', null, null, '700', '2', '0', '685', null, null, null);
INSERT INTO `tb_user` VALUES ('718', 'o5ql51YvF-CIK9s-kVbyi6rPCcYc', '李易佳', '银行装修贷李易佳', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/gbb18pnhBjIyhJJ82heicT2pz1kh9Ho5m5Fc3JsO49uFIKsRgZXcwIOjlRkdjU1dfY67mMFSpRmmvykBAFu3Bnw/132', '2018-06-28', null, null, '1', null, null, '680', '2', '0', '680', '927096', '18127011255', '2018-06-14 20:34:07');
INSERT INTO `tb_user` VALUES ('719', 'o5ql51da_JN2kxI-pn4AY8xF3Qo0', '', '古力特', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/SUPicg95cdjfScE9Ww8oRArrLdh7UJ3521ickHQHy4rLVS2PAZ0V6y5GdOFjge2dsqPpUiahciazSPAV7ohJVl9oicg/132', '2018-06-08', null, null, '1', null, null, null, '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('720', 'o5ql51XHlrM8kHLjDni2f7AIyhcM', '', 'Elaine@潴', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/UaND01iaibMRFNJHgfASkYl3micASXObvgCdiaXBRh5z7Inza2I4KQMUks8dhibhMX8oZ0PIu1odiatnGpAicts0Df9AA/132', '2018-06-08', null, null, '1', null, null, null, '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('721', 'o5ql51YZT0qhZfX4V1AsTRsy8Io8', '', '???天?真?无?鞋???', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/pvfmKQoWkC0AgIz7LHuVicqRDd0q9gibIDkDjBian7gPfBkG0OvemvCdicafaJmjoSg60gYuZx1VUENr7zUtahLHXg/132', '2018-06-08', null, null, '1', null, null, null, '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('722', 'o5ql51Qg8r_HpxQyXJLShOHjxDSs', '', 'LiLi', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/6OLZucUMRbgMX5pmlBo9KZ6yBPDAe6F4bzWzlGnzfEtzkQYMA7gGtl7tFgFmicYflqOugawn5spE33XGxO5dVVQ/132', '2018-06-08', null, null, '1', null, null, null, '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('723', 'o5ql51cMkGNmdtGYI_b1Q1Iuwzv4', '', '黄波', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/IYzdnQoWMM0SGLfYQfcZwl57aj9Rf3NJNib0FWCVWZ34Kabrk5Lx841WfA7KwQicCwkia0Kf44X4SfDNMdDUQZf4A/132', '2018-07-02', null, null, '1', null, null, '679', '2', '0', '679', null, null, null);
INSERT INTO `tb_user` VALUES ('724', 'o5ql51YxW3Mv9z9fDdQASXv95m9I', '', '彩雲（徐健雲）13509480028水果', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/mNCCyibfZicjaPz1MmoPPZowDLEzIgvNhvUQiczHsc1Eib3ZhpianF7ElkpOfKv7ZhicXs6shzSU9wHIOONKLXRIBy3A/132', '2018-06-17', null, null, '1', null, null, '679', '2', '0', '679', null, null, null);
INSERT INTO `tb_user` VALUES ('725', 'o5ql51Td-ILWYUDDIxlJ6n9jLHYI', '蒋林', '未知昵称', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/sCO7Kg6BUn0yXaKaDszf7lf1bZJhYS8KMfCPPTdZ8yGuEoRMeZicEUY9EzZUeSUBAqP7XpFNJMWSnI0ib3HqupMw/132', '2018-06-21', null, null, '1', null, null, '680', '2', '0', '680', '604559', '13537506896', '2018-06-21 21:43:08');
INSERT INTO `tb_user` VALUES ('726', 'o5ql51bTrnZ262DmDKMLLyGiAv6E', '', 'AA小雷', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/6nqZC9qlYU40mgdTl9PVa9LZwkrc4cYrSUzJM8EQYDU0jOibXMahtiaD7tES5Hdnyf5XUYeiaEGdJapddzwxkKbEg/132', '2018-06-09', null, null, '1', null, null, null, '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('727', 'o5ql51XnmXxu_VTCGGSPVsfK_g7o', '', '大海［影院3D］', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/DEWicibDQ0g6V7INZCGSIjocV9Rnq0hSDNWm5zDjKKKVDsyyC5VwyYIoOViczFiaWIEYz9aC6eZHlS99RiacfK0YO9A/132', '2018-06-09', null, null, '1', null, null, '680', '2', '0', '680', null, null, null);
INSERT INTO `tb_user` VALUES ('728', 'o5ql51QNVzP4NYrm3GiBoqemwSOo', '', '《不遇知音莫谈情》', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/r6eSjOlibAictx3ib8ee592S82l2NNYTBgwhMSiblBhavfjuDkpHrOibEUugoc72XomrkWMYjboJRLwYvO3eOXNRMsQ/132', '2018-06-09', null, null, '1', null, null, '680', '2', '0', '680', '553295', '13686187660', '2018-06-09 17:44:59');
INSERT INTO `tb_user` VALUES ('729', 'o5ql51ZhVIH6TRHEchk8QgwV0FVQ', '', '陈波', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/4ZxykVBxNtseCCwxakCFSgF0Lia3YpttHpqsicx5SC2pvm8noVeIItUUc8LQRDD1DkRStsNibtMFjZ5ZGh6XFD1Uw/132', '2018-06-09', null, null, '1', null, null, '680', '2', '0', '680', null, null, null);
INSERT INTO `tb_user` VALUES ('730', 'o5ql51SqOkYWB7-hNQVPkKLUxXso', '', '菜青虫', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/77auGuxlrohB9XXicD0dDRSNNlpXw2fIjN31Z741nvmhCvOdfBqYVTgyYwure4BUe12DqiaszkzVvlrhk4FMMhvQ/132', '2018-06-09', null, null, '1', null, null, null, '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('731', 'o5ql51YEXug3UOmYH-MF1SJqeAuI', '', '陈&飞 专业PCB', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/VUw8jdSERP3AiczqskGEodw76B7odla9EUCj0yJlf5FbbRjFXuzf3RBicsKISTztRrWayiab2FU61tNrr7KOhIDTw/132', '2018-06-09', null, null, '1', null, null, null, '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('732', 'o5ql51b-fdGyHb8NG4JbAhm8eTTA', '', '福中福', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eo7Vsq8DvicSGTRBgPqTibrc24XicIcicerD7VH1Ro0r2X2Tnz85YsucicGzFQyr4icHG6N5UafXXJTWFiag/132', '2018-06-09', null, null, '1', null, null, null, '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('733', 'o5ql51f6qiwO_gfFjICFwLIZRtrE', '', '周建元（华东信电子）', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/Qby8nCRQ8RoibgeqWazXmG2MOFpZ9f2mKbl8QBvXQ4JEJO7Qbu4TBy96fOicsJ7qD9rBtpZrTYekgQ1jByGWDYibQ/132', '2018-07-02', null, null, '1', null, null, '733', '1', '0', '733', '884063', '18924607419', '2018-06-09 17:08:26');
INSERT INTO `tb_user` VALUES ('734', 'o5ql51V6WpodotKhxazs6s3CxWlo', '', '小钟', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKQ9DTlroTepxwKbtxEqBtWp1GJQMEoYCEh7YEoOlkzlJmWhib6L2wmc8tfQnjibnAxSn30WvUJ49Lg/132', '2018-06-09', null, null, '1', null, null, null, '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('735', 'o5ql51Uw4BoGJHvhrbZRSv6DSOzk', '', '武陵梦', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/05tPoOriam2WCbr4frJ5Hx8KDXiao5iccm0k1WxnEYs7673cnibxmMU6NxjczEvL69Q8DPV1FibIg0Xoeh63mSDE3sA/132', '2018-06-16', null, null, '1', null, null, '680', '2', '0', '680', null, null, null);
INSERT INTO `tb_user` VALUES ('736', 'o5ql51a7K_bGiUTYcujQDnEGvYwQ', '', '李巍', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKkeBKshjwVKRfmNgW2VQc5K0zot03iadIvVsXgElDrbR6g985PjyahH4unGlTGB92a0x3Tb5q0h0g/132', '2018-06-09', null, null, '1', null, null, null, '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('737', 'o5ql51Z9JOyXf5cWi5f1ZBbprOlU', '', '廖湘祥', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/amLwbK3tBfml0xTqXvGaRvdMLow8xS3uOAp79rUYoia6ArBRRO4E0L7H9dc5ncEyGXUIo9JZ6GIwUjibUUklLe5Q/132', '2018-06-23', null, null, '1', null, null, '919', '1', '0.880005', '737', '563673', '18806641986', '2018-06-11 11:34:19');
INSERT INTO `tb_user` VALUES ('738', 'o5ql51fouHIRZkEsQSPPe4Iwba00', '', '谢辉', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83epiassSmnHsPMMcdOjibicBwPvTIA5PxFEWAAA9Y1Z7ImYmHgY3ISI6dp28ZF001tW5QBCGAYBEXUE4w/132', '2018-06-09', null, null, '1', null, null, null, '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('739', 'o5ql51aCSlZTUM3jY4dZMyUOauAg', '', 'A simon', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJJO0ohtYPXUY0wg6ELJPJlB8GIBbw8GF2LPibKtYaRBbSaDq0Mf14lqSut5cVwibKibdfGlYoQghZ8g/132', '2018-06-21', null, null, '1', null, null, '755', '2', '0', null, '905042', null, '2018-06-21 21:15:41');
INSERT INTO `tb_user` VALUES ('740', 'o5ql51R9erlQpEj8Rfw-veHMfw54', '', 'Letian  Lee', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKqkibygV46x0rZeAicluKJOggSAGDmXQd5FMCc6MiaFezickiaFGbdwNFBVnwEAU3zibjZpz0HAYmy9bPw/132', '2018-06-09', null, null, '1', null, null, null, '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('741', 'o5ql51dXxC5MJI6po5dTZLWCPlXw', '', 'lbily', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/BZyZRWEqehEfnA10ZfnJ0KHaxGsQicRVB1HicLGLr7iaMVcYbyIrMmSsSbYrcXongAGrFJUr4saiao3qqZaGW9CwDw/132', '2018-06-09', null, null, '1', null, null, null, '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('742', 'o5ql51ZwAtfz0y8j1WjJWgNOlos8', '', '祥子', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/eANbKH1RvLW088qRtM96QJUChcBEMoHw1jBYTicO2sthWqeKtribb4EicFVctvuNg0TuwHsoQBUac2Ph9rffBIdicg/132', '2018-06-09', null, null, '1', null, null, '680', '2', '0', '680', null, null, null);
INSERT INTO `tb_user` VALUES ('743', 'o5ql51W01HKNYZSqDqaEWaVapdAM', '', '王玉豹拉卡拉，喔刷2.0创业导师', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/lPicp2YlFs2e88NAKiaCao0vU9ybmRef0Abx6bhGoibXFujVqnmAvfgsSWEFEQAVB20HTSuBRIRy5OkdrsaqYdE1Q/132', '2018-06-09', null, null, '1', null, null, '680', '2', '0', '680', '287664', '18681440339', '2018-06-09 17:56:35');
INSERT INTO `tb_user` VALUES ('744', 'o5ql51QYIC9CndiHesNFWdPj0Sz4', '', '陈晓林', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/PcMgQetK9yYBecgXqniaZcln5tZC9MuEXNC5tziceZwYWygRwfgKvib0ZlwiaQ5dQ63mYliaxcs56VFqIIu51qFRNWg/132', '2018-06-09', null, null, '1', null, null, null, '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('745', 'o5ql51cOACWq7TLH8OoXlYeRGqhU', '', '梵～音', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKG5YwqhcZ432wfmKP3MrrZCvx8AnZaOk7jc7dT0OTqPZsHhaycGD9SVa8TaJLpN6Syibl0uibOxqicg/132', '2018-06-19', null, null, '1', null, null, '680', '2', '0', '680', null, null, null);
INSERT INTO `tb_user` VALUES ('746', 'o5ql51eoR5c4AosqKBwArmiKyprE', '', '梅子', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoq008GjYMsOkcERzpXicZLoudE2R1rdU6J72NhqDx78ib47DyOsKTbPXuHO8jPWL6iamBGjmXMIUZtg/132', '2018-06-16', null, null, '1', null, null, null, '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('747', 'o5ql51XXty8GW66UPxL_I-8i_OpA', '', '凉薄少年亦冷心', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLpkumzkYfdR9IRWH64y1BSAiciapKia1ibgrDHIqQiam2LYJ6FxkLMI5oS8ccjmSr0rVayKepunZIAM2g/132', '2018-06-09', null, null, '1', null, null, null, '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('748', 'o5ql51QXXRwPN4Tii6_sb31fMK6M', '', '彭晓晖家长', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIE4vemzWTCibIRdL1o0ibaURLNCayiblEyoQxLzSxnZVkP45y9oSLuo7B4pgWiakBKFbfjFUWKv9c2rQ/132', '2018-06-11', null, null, '1', null, null, '680', '2', '0', '680', null, null, null);
INSERT INTO `tb_user` VALUES ('749', 'o5ql51QcO3pOwDqjJN4Lpmn5RMoo', '', '桐庐计划（廖友军）', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoCsHLVXRjuDbiaQOAdibxibGKV7Oice1NXeM0LcgE8VQDrs4P8FJoT3IibxazpIHswibwxTjsExo81oxWQ/132', '2018-06-09', null, null, '1', null, null, null, '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('750', 'o5ql51elbb-QTHdbA4g4UPAziA9g', '', '战马', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/FEdEngjt2VTDjfeugD2Zel46ZJcKVoF9ibg5988QyJyUvSNTiaiaQBk1jocM0ibjs90vHWdmnYJQicicLzRFZzmTdmpw/132', '2018-06-09', null, null, '1', null, null, null, '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('751', 'o5ql51QGUN4JkWEc7354NuH7W6bo', '', '深圳网站建设', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/8WDub7k5z87DubmKMICc6kFWQybB1n8myq56z05M5YPY1e9RJ63k7mmcjiaEHa9qQC8u9q3mxGFoNyz1AuwcH3Q/132', '2018-06-09', null, null, '1', null, null, null, '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('752', 'o5ql51XukUpKaF0tUz6xHJ4qXMgE', '', '华', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/rBkcY7hCxeJia3EArrexs4ibDlqb16LYHlzITU5TJ9tjVATMGhHVY9ZEyYuJGn522SvdNUsiaibX5VI1picfNgcpqXQ/132', '2018-06-09', null, null, '1', null, null, null, '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('753', 'o5ql51YpykkJN1fK0fxlpj1PHO1U', '', '东娜办公耗材', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/60Qw6q1qtVjcRExic1B2LzmvAq8icX1hk2rIN2UOwebZV2pqU4S77ZCzOFfFu3ibYkQIXTMaTOBsTXZIe2ul4Jjzw/132', '2018-06-09', null, null, '1', null, null, null, '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('754', 'o5ql51Rn6H3DToJ8Pd2_TqguI_D8', '', '欧阳', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/petsz7bmadjDxiaL5OXf8Lds60fiaU6h69YcL098RSEWLJhsZkZAk0vNvhD1r9WfSK2xibkSuCYCJz8ib8ibicw8t6FQ/132', '2018-06-09', null, null, '1', null, null, null, '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('755', 'o5ql51ccS3gfad1C1WMPUfVIhT3s', '', '廖森', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJH4fvdhgZQmHjicp9teBXicYsQbKZKkWTxDwqlnOf2ias5d8Wm0az2HskQPex9wuXVIllaZcckcDYgg/132', '2018-06-10', null, null, '1', null, null, null, '2', '0', null, '474913', '18188929099', '2018-06-10 19:57:12');
INSERT INTO `tb_user` VALUES ('756', 'o5ql51cqNdTWIqDXIPrMmjGQ2L-U', '', '~蒋氏亚菡诚信商行~18075826511', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/MpH4ZoLaEorUrNru5T4I3H1IRbWISUB3foCWIbfNuzd7vLDmsfHJAticVSuxqibjI65qY7y0WtS8XpL4IW8vicH5g/132', '2018-06-10', null, null, '1', null, null, '755', '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('757', 'o5ql51ZYDOrtZ5D5CvFIihAhMMmI', '', '青城子', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIkNNj4HnO6OJuKxpR5ws0mcFZKW9ib2zo1WxDkicAX1UrJWmRRraQXJ7HXcFhqia6fdCQCxKx9DVJaA/132', '2018-06-10', null, null, '1', null, null, null, '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('758', 'o5ql51eIkIOuR4K4LfSFyqnJwcts', '', '真爱无悔', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/xxjRDnOgjk6BEyTAibk0gPPLmMUWfGhfias0zSASUYzl6emHUtic7AZ0erWkOiayBILyT7DVDzicCfeafz3KyTLy1pQ/132', '2018-06-10', null, null, '1', null, null, '755', '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('759', 'o5ql51S7EK-WYYgMDVCLdfsNO288', '', '听雨', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/KMl1PYjbMoCibAv8AzneVhzich3BKE7CF3DDLgmJWZicf3lNyUkT6K45QKzKhVibsCmokQrCUOG6UgozkiaqGvUxjiaQ/132', '2018-06-10', null, null, '1', null, null, '755', '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('760', 'o5ql51Vcdw0JYXN3agMbIcw6dKEM', '', '小明', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/5JFkcHE23FyYFa4CIKTh1ZeAw1QcicjEicBQ7FP96w5mkHK4ePLnLOVK4bxL7ibu4zcsaibZxOPuN7vdM5DibBySMaw/132', '2018-06-10', null, null, '1', null, null, '755', '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('761', 'o5ql51d17f9V7iV5ENii51TL2eSs', '', '梦一样的未来18825779887(小何)', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/ZauYzibdBGibZ4ib3dVJricMujbQ5COROicLLl3MvgeaAjzGR41xs2TwM4OcUgt04SIMJsibSHIZaBfwveIFnCQSqGog/132', '2018-06-10', null, null, '1', null, null, '755', '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('762', 'o5ql51cSrMah-PGnk31i6wZm1PLk', '', '《陆玥》的永恒', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/QY0DsgibjdMWCxsOzroOkU2PoMs0slNgbL7KnFEvugQavibZDH2788JzZdHXOEZx10P0xz43ZmbB1yeRkf8f95qw/132', '2018-06-10', null, null, '1', null, null, '681', '2', '0', '679', null, null, null);
INSERT INTO `tb_user` VALUES ('763', 'o5ql51eXk6oSmzm9tfAggkeDVO-Q', '', '因丑被追杀', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/7k8Fiaylopx00kStyHE9xlYiaSOibxoHECUMFDn5RicByf6v3C6RCHwVheq1YFXE73llDXyBRbxytg8jLRU2jTX9Mw/132', '2018-06-11', null, null, '1', null, null, null, '2', '0', null, '102466', '13428700119', '2018-06-11 11:37:56');
INSERT INTO `tb_user` VALUES ('764', 'o5ql51Wb4Qg7AxdNsnzejCDMSNGo', '廖湘祥', '祥哥', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/dWbNv0sWibqs2fr5ZcraY3u7bndlyW4NW2KKGibVBwrSfvCTuicRtPrmWsP8jPudwYUlAviaA8dXL30ZyYx9tKBcuQ/132', '2018-06-23', null, null, '1', null, null, '737', '2', '0', '737', '556550', '18207629811', '2018-06-22 18:58:02');
INSERT INTO `tb_user` VALUES ('767', 'o5ql51fh-qnp3tFWSwK2376B5Mi8', '', ' 梦回大唐', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLdahOa0ZXHdElTbPTkZMQhHzcoRWrbPTKuUE53nbUKE6zYKZHx55VIO0KlyuN64vCoYc5b608l9Q/132', '2018-06-22', null, null, '1', null, null, '767', '1', '3.81', '767', '494989', '13751135155', '2018-06-11 18:07:19');
INSERT INTO `tb_user` VALUES ('768', 'o5ql51QCZXJ8Nxl1Vw6uX-ODkZ3M', '千里狐', 'Science', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/yzia9cSYpl3mFicywibxXmWYO4urvkPqGa6VAeY9cXyHbXG1nIhC2uapcfK9wv5SBtNKIS06exVNktxLCajHbdhAA/132', '2018-07-02', null, null, '1', null, null, '672', '2', '0', '683', '162318', '18329903331', '2018-06-12 11:16:04');
INSERT INTO `tb_user` VALUES ('769', 'o5ql51SAINoLyD3aV53kokij0K9k', '', 'a刘云飞深超CPT玻璃模组', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/2IRIw1JS8qicN2mnSe3ATYNicjxXCHOZeGfnWaEic42r9OR4ndzJG1lF0XGCuIqzHSicibibPj9ibFWvS2ehSmfwQwu8w/132', '2018-06-11', null, null, '1', null, null, '767', '2', '0', '767', '235104', '13715066601', '2018-06-11 19:56:32');
INSERT INTO `tb_user` VALUES ('770', 'o5ql51fij4tv6niBh_md8z8O3OSI', '', '学生 车达', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIye4S46w30jZLp8u2HiaZm5gc7SibBx8y7kYNVgO5PTv5z1ZN0dM8xYBCnKJSH8aibBsJicsCguXuIuQ/132', '2018-06-11', null, null, '1', null, null, '679', '2', '0', '679', null, null, null);
INSERT INTO `tb_user` VALUES ('771', 'o5ql51WDzvySjodnwnkSy4JTyxyI', '', 'Lily', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/LYVzbJrdLN1GS3sHNEN1mneH7iaG6ZYu20WzqriaIEceBBfWsiczvrhsXEg9qianq3Mp5mFiah8WLSIy0OrZzmv7fbw/132', '2018-06-11', null, null, '1', null, null, null, '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('772', 'o5ql51QXC-inktbnZfZlJF_yJtPc', '张青霞', '简单就好', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/kibHm2ASIibRiaPepQLOVxm0RZ882iaruzaM7AuWBpj8sNytmS6sFV5jrVUIq8lNg4ocKabPQB7HqERhx9puPC7Phw/132', '2018-06-14', null, null, '1', null, null, '772', '2', '0', null, '162318', '18211306008', '2018-06-12 11:16:04');
INSERT INTO `tb_user` VALUES ('773', 'o5ql51XeDTz4h2tP30PDMUjROrOA', '王静', '浩阳3号【皮具】', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTILIrSYW2xHCofSH1dUOTHZrC4ejDwxu9RojFZbUEIWZ7PxnDmvNzpGzB0cyRB3SMyEnVEeV9ichRw/132', '2018-06-14', null, null, '1', null, null, '767', '2', '0', '767', '268502', '15918326325', '2018-06-12 13:10:36');
INSERT INTO `tb_user` VALUES ('774', 'o5ql51QV2fi7kTvB15k8AGEf0f34', '', '小平果', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/3pGPlxLaIBV3GnpbViareXNg17GTFs4zMiaVoEzzcorrHXv2f0iaPTJ0myp0DGVwWXibTibYxQNiacMZI0yJEhoNo6JQ/132', '2018-06-13', null, null, '1', null, null, '767', '2', '0', '767', null, null, null);
INSERT INTO `tb_user` VALUES ('775', 'o5ql51b1IpJe83p3793mRSdOWWSA', '', 'Tanks', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/GBiabFGJe0GcRmfdKiaz0IWRMPCfNYebQA5n5jEibPefyiccu8mzXJX4XGfAImrbicVBk8uujGQkQUZaaaIa40pmVQw/132', '2018-06-11', null, null, '1', null, null, null, '2', '0', null, '362637', '15302779605', '2018-06-11 20:54:13');
INSERT INTO `tb_user` VALUES ('776', 'o5ql51ei1a229H4Un-3IyZ-x_99U', '', '刘士帅', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIfdD2P3zbamaBzFkZxPYcSq8vE3G6NOMF0PRJ8z7sIGnhDa2dyuaE2eun9jezgs3kcbLOy7evWdA/132', '2018-06-11', null, null, '1', null, null, null, '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('777', 'o5ql51aiJJfHaDD1c3Ul71bsAGPk', '', '醉卧花从', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/BXicHMC9uQBicC3NnZwVQCd8ABicqeAayEfrOE9ORjrcFJn20ovsicPeN5IkfIzvVZsiaIP35t8Fd6Micm9lfQUuZrMQ/132', '2018-06-11', null, null, '1', null, null, null, '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('778', 'o5ql51brMF5vfFk_wTxyTVJbzv1E', '', 'Hua女', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTL5XIlM0TbGlgicpKzRiaIvic289Py1oncXibSg0aykkYrJnFaOkQfpczD60lhz3F3yvExQbOtWFcibYxA/132', '2018-06-25', null, null, '1', null, null, '737', '2', '0', '737', '541399', '18312178819', '2018-06-12 07:55:09');
INSERT INTO `tb_user` VALUES ('779', 'o5ql51bkm198UuWhowIoP5Q6-1SM', '', '坚持', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/KmwhKtHnAuyjarzbicutUPtmG5M3wSJYPP3y879kMU8uic5cc5U7woic8jkloyrYbicrViaWjeQavWwN4CIRXefEFqg/132', '2018-06-16', null, null, '1', null, null, '767', '2', '0', '767', '112532', '18682104446', '2018-06-11 21:18:34');
INSERT INTO `tb_user` VALUES ('780', 'o5ql51ec_fUAyuHKH6cPO65sS8Wc', '陈解急', '陈解急', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/38iaLCTOUcZjMzAUebGJUrv06CRCxXQMGSX6hPturp23bZeePHdT6e2cOSQ1lcMDokeCAyDR2I2ZX6iayOMzULOw/132', '2018-06-25', null, null, '1', null, null, '680', '2', '0', '680', '466203', '17727575289', '2018-06-12 11:23:02');
INSERT INTO `tb_user` VALUES ('781', 'o5ql51by86DuPAlXi_EZHuzrGDfo', '', '*喽 喽*', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLywCtQ7RMu5J97AwuHicMWvb9oicMbspKnxyTIrwbiaFYZNlqQUJypmYQTefHG5TRPTsnlj6lGbLzdA/132', '2018-06-23', null, null, '1', null, null, '737', '2', '0', '737', '555964', '15718258100', '2018-06-11 22:01:10');
INSERT INTO `tb_user` VALUES ('782', 'o5ql51W0TY9DRe4HVMfd3M0c3CD8', '', '小田', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/Hb86UZQtIUU0AykJd9pfww7Qz2naMTxuwakRkI8xOxaJutq2Mvlicn1ib9vc2jvXYoSve0mID3PHXbVM82ibCv8Sg/132', '2018-06-11', null, null, '1', null, null, null, '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('783', 'o5ql51WYVCn5lHs8KxWB1IcOMB14', '', '崔俊辉', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/22rFMVYtn33X3WECOgdmwgyaEKH4FvYYusBT5uB4tvpY5f7oiamkUSk4lL65YVhkL2X2A78T02kglQ9KvvBbw5Q/132', '2018-06-11', null, null, '1', null, null, null, '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('784', 'o5ql51Q2iPEUhnmukCFQkZgObyHI', '', '一次回眸', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/AV5NRReOKZX5jemvgLta503Y3iczTY3LEaqSyVn6iaJ6gcwhuR1KWRMJTZIlEbsv1EKJBO18icALQemjWYEnEfgibw/132', '2018-06-12', null, null, '1', null, null, null, '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('785', 'o5ql51QaVzuGeO-dtcxGuiNaTP9c', '', 'A 海风 13823763680', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJWrkwnzFr0cXM2FrNxeAEyoEYwXvWlTwibY3wTD6S5yAqs3v60CWnC1lwea8eaChzjnribWqkKvFZw/132', '2018-06-11', null, null, '1', null, null, null, '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('786', 'o5ql51Zq-5UyUP0s-1LYfSagYiWQ', '', '劉.漢東℡', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/vSRgeVMEaI8zAQVB7FHMK6rgn6SugIfI3SibevwH7mlP8HmyzyCrQXM2ajzmA1lzkJkwgm5ER1aY8icTS1XUNW4A/132', '2018-06-12', null, null, '1', null, null, '680', '2', '0', '680', '674931', '15390707141', '2018-06-12 00:14:17');
INSERT INTO `tb_user` VALUES ('787', 'o5ql51QUX4pt98DpQJRlaEwI6b3w', '', '武警', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/NePTlLFsnujlibYV5N9YPGJ7pvGJ7bCILdGDwsn7LJwPiag1aAt7pI1RuV5TGREQjnlNPgHDWqRIrSY8ktJ2G0Pw/132', '2018-06-12', null, null, '1', null, null, null, '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('788', 'o5ql51RjH4v5nUHI3jcnKHo5001E', '', '倾城绝恋', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/NRdpbTGYlibrTPXv7rFZdp5vSdpiaoVvM68giaWDc0G4RRdNRd9ktiak4pLkEfuzhANSm5phT8vPBR9vzyVdBQZlXw/132', '2018-06-12', null, null, '1', null, null, null, '2', '0', null, '228043', '13534215372', '2018-06-12 04:07:29');
INSERT INTO `tb_user` VALUES ('789', 'o5ql51QZmHZZE3IrcYQpqtHjdUKQ', '', '明天会更好', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/vnj7yicmyzrFOHYdKAjmeMYA6M9yXB6VicciaUbqgnMtTen91y2YF59Aiasd64oiaQnlEbaFWcoY8liavQOoFicPNibicFA/132', '2018-06-12', null, null, '1', null, null, null, '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('790', 'o5ql51RuRxUjCjxyzWnUqwsPVZFU', '', '风云', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIMOsCe9BHjusqKNuuXzZy7ZfI041KyFxwGoXsQDW3iadp2KGKaongcCuyxtEZ8cUfyqYd3ahr73gQ/132', '2018-06-12', null, null, '1', null, null, null, '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('791', 'o5ql51WVPKshrH4nxCJZPmqqIhgQ', '', 'Love is over', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/3Q0NcC9KUH63dpp0N9nciaBD5JcbYGUnYaicS2DhCF2oK9FhoBS6e0QvCz3pzPGCb8JU5xD3n0SECeOAHnPgNrTw/132', '2018-06-14', null, null, '1', null, null, '767', '2', '0', '767', '445994', '15062434997', '2018-06-12 08:29:00');
INSERT INTO `tb_user` VALUES ('792', 'o5ql51Y4_dtizRHNCUv_OF5uzDSg', '', '幸福家园', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKMuq9nXJ9eY4skZFqmXohgPpuKf68Q1l2bdADkUuiaZW792gFVVs7seQMbAYWCG6ibB3g2Ty99jFWg/132', '2018-06-12', null, null, '1', null, null, null, '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('793', 'o5ql51bfsETjqJ1mBMcfdWtmziLI', '', '神&邪吻?', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/FDIarnj8JibtgQWxaVY5vFLAB60uj8tPNtVVmk9X3y6BJ6lP6qPOeFOfJkTgMjsdmz0Biacqogib9JgrMa8UC2gjg/132', '2018-06-12', null, null, '1', null, null, null, '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('794', 'o5ql51fztK51clE4zJwLLb4S04hw', '', '武志超', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/h93CmZT6q0cpI1AXG9lPwOuElMjmxZLWHwH8h1ABq0icUg7d76hZm4CbXXsooYZ1dZia8QXVCViaib1DnOU2WsIiaJg/132', '2018-06-12', null, null, '1', null, null, null, '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('795', 'o5ql51UUm4M7pzA0roYGkJgvixQI', '', '迷路时你就往前走', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/zk8hm5FmiciaM7nRLkibStiaEI8WWkhvkt7ciaPzYZMIHWCZ1nu0Ab443kMic6UTeh5Q30tSib2TlQDKks6nj7jHK9J5A/132', '2018-06-12', null, null, '1', null, null, '778', '2', '0', '737', null, null, null);
INSERT INTO `tb_user` VALUES ('796', 'o5ql51RjUuSSmYy9XUNSW1TXBn9Q', '', '冰', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/JIsGaY0fejhwbx6JxP8yR7lbVor4kribX0oxz49HVrrC77pjGJaqe9hNOib45ogtJcoIHYiaKMw4diawyDDSbXnbsA/132', '2018-06-12', null, null, '1', null, null, null, '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('797', 'o5ql51VXs_4YsRYXSm7NXtTk9QOg', '', '欧田田', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/pTD8nS0SsOS2jCHtAtmDiag7rlBJxSAo5x9pqQicYsMEEsDvpYibYVTUWbZc49NHZHc2OGtmmIK61j8ibzudicOhqXg/132', '2018-06-12', null, null, '1', null, null, null, '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('798', 'o5ql51SZD_BPs5Ljdau04Slv0loE', '拓展教练', '拓展渠教练、导游领队15118834590', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/ib10rznyxX8Rl0ypoYtLKibLeV3WY5YFMmiaCkALMkcGAW38FVwDHGYkqEjj8aNjh38pp5ehs843sLvN0fibFoLbRQ/132', '2018-06-14', null, null, '1', null, null, '685', '2', '0', '685', '889591', '15118834590', '2018-06-12 16:16:57');
INSERT INTO `tb_user` VALUES ('799', 'o5ql51T_WL63Bn5z8iLlgL98pT5s', '', '快快乐乐', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83epGPK0p6qibOhyiaszfGHASqelcnpH24dwial0r8C8mJmIrJIK3dnlVnzUkzPvtsuUyg4q10a1bpPh2Q/132', '2018-06-23', null, null, '1', null, null, '685', '2', '0', '685', null, null, null);
INSERT INTO `tb_user` VALUES ('800', 'o5ql51cUk44ENBARgS9C8DtjF2iE', '', 'A * 旅游顾问王兰13692151903', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTK3XSOkwmjymA7bENicb8C6jLFcxjApHrrzJN7M1ric4CptIdKeBVQicPwVJiczVgiaibSohjOe5hkLtdgA/132', '2018-06-12', null, null, '1', null, null, null, '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('801', 'o5ql51cMmWo_FAhbEPnYqp8LSyrM', '', '木子李', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/RaU4x2TRDDGjy9cpptKFCXSKobWDmavq4BdNCvA5ME49icPJj7hrAehmyzwiaEIYib2icBQ0Fy4ZqQ0HjYGSlXmUvg/132', '2018-06-12', null, null, '1', null, null, '685', '2', '0', '685', null, null, null);
INSERT INTO `tb_user` VALUES ('802', 'o5ql51UQYpgiVJylMupz6IB_wE24', '', '智慧挪车', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/mhVD1iaZW2ln6RB1aGibO8LJZgo4iaGeliawlicSsLZ7d4TxcR6Qd2H0jItXA2ibT87NOAWuRVibvjlq7TSmuF9FN2qKQ/132', '2018-06-12', null, null, '1', null, null, null, '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('803', 'o5ql51V6PMv1ezcEGwuR_qZgwu18', '', '你有病我有', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/vHv4cWPL7eichHuqjKdDoHQyH63DibialN1077c1BaBoGD3MVkZCytOLkZVoPvqDY8VWB89MHksbJibzfVxRtJWicyg/132', '2018-06-12', null, null, '1', null, null, null, '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('804', 'o5ql51WDqJq8FSFr2f3HNnfE2HBc', '黄金宇', 'A法国进口洋酒红酒总代理黄金宇', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/CJD4Xh6AzdI82VmOKNTImLwOn1SogUmYF7ob5lSjngSa98UAXGY5d4YL4Row1mibZpukqicVnKb414v3pxcc69Pg/132', '2018-06-12', null, null, '1', null, null, null, '2', '0', null, '973556', '13138158126', '2018-06-12 21:36:54');
INSERT INTO `tb_user` VALUES ('805', 'o5ql51ZWAOCts_6wxvsygkLPcNDA', '', 'OPPO  ViVO品牌形象店', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/9JoxXO9ZdzL0Wr9TUk6PTjlsBYt6L6FTUbqPiblZjvYlOb3IcJficrusCeebWOXkZO0Nq73IOTaLATSr7xlNqibvA/132', '2018-06-12', null, null, '1', null, null, null, '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('806', 'o5ql51bd4_4wzoepxAE7pdc6cfdI', '', '1234567891011121314151617181920', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKmTsdj2u3lHOBicy1Q8PtSInDicW8bnxbA1Evvnc0CNLviaon65wI7XYRX5zDlWfia9UH3QpuT7F2NGQ/132', '2018-06-12', null, null, '1', null, null, null, '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('807', 'o5ql51QHFMQKC4Bg9MwTPJtD_Ejs', '', '小幸运  *', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoxleic6kJ9mkdtGpW4eEeJuZxQZbvGJkUoXAhEOBxJfic1nErtp8XHS3clrXYuiaIGefU03nkBk0bHw/132', '2018-06-12', null, null, '1', null, null, null, '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('808', 'o5ql51fYe4INRxhHkgyjuCIkDH_M', '', '，', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/VDHqTXUU2eQ16mJHIZm8LG65Dpa325vYesxqMcAFaRHm7r356NCdU6hC3y4bnCJTXOHB9AXxTU5oE6uPhbQFng/132', '2018-06-12', null, null, '1', null, null, null, '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('809', 'o5ql51S-Tej7jC6UE0SXFqbsWTKM', '', '從頭洅徠', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/EoXdxLLGsAbPl5jauTJZicK9CXwSsChcCRQndBH74TI4zoic6bo39mmY80xeayQCk0o69aX7iat91lhafamohvD0Q/132', '2018-06-14', null, null, '1', null, null, '767', '2', '0', '767', null, null, null);
INSERT INTO `tb_user` VALUES ('810', 'o5ql51bfLZAaz1mbMCENLL1quCX0', '', '世纪翔丰丶罗涛 ????', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/a4ZPwGHu8mQGEKeyJTJCDtldt4H7jTAtpFCJs4k6Xy7Q4WYbrb6g2LQZq1lIGibLkXIMwKMic28QDlMrnrKTK5wQ/132', '2018-06-12', null, null, '1', null, null, null, '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('811', 'o5ql51fiREC4ic3F9t6DDL8whJVY', '', '谁与争锋', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/nN01fUKYFCu9tKYpthkvMmpMWnHpj14lR2lHzSopu4Rq9gFbR2ykrl9r1ibVE1YBTnPASGQ4IxfbsicJrVCxunNA/132', '2018-06-12', null, null, '1', null, null, null, '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('812', 'o5ql51ZIocgnleV4WoAOiNa0HJmA', '', ' ^_^摇个孩他娘去^_^', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/6182JcBzgK3FHia25rgph4Ee2eVib1mJTNmcNsuKlicNaziabD3G97K8Ehhdv36ycOwDMdt0an896ic8rfVt27ahSmg/132', '2018-06-12', null, null, '1', null, null, null, '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('813', 'o5ql51aDgqxIhwLQg_1G1xwGSVcY', '', '坚持到底', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJ1r236tm5y7c5WX6G60Xt7jMQojMn9yzmnUQI4ALEf4lSWVlS9CZvHJtbxhBZPokYgicIibtKOkU1w/132', '2018-06-12', null, null, '1', null, null, null, '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('814', 'o5ql51XtZRtoe7AWpDQ7c5d6Iris', '', '红', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKYZwpIRjcORA98j67y2PialEIcVMpWZxZQMmfCUvkhZNebbIgGCB5JNnEj4ensibgj7gW27sS7hicicg/132', '2018-06-18', null, null, '1', null, null, null, '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('815', 'o5ql51RMLNajUlv8ZXTQI3mCW2kM', '', '周生', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/TlfaEJ50bxjn9HibfaOfkex6yT0W9EBcXzJyPzp3Qu6ak7kSdoABRSBibam5lEmcWmiah34POYUGE8TekYW5ibDFicw/132', '2018-06-25', null, null, '1', null, null, null, '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('816', 'o5ql51cSFlJzePHPm3ieAEPrHZAg', '', '走过风雨，现实人生。', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/HQ3bLTa00tMGCnvVhQ1yIqIBTnQfgXqY8zBoaroD8ibhOIdXyC1I6lGhWLgicOU956s8nfiaMzej0lickL2Q8QBLmw/132', '2018-06-12', null, null, '1', null, null, null, '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('817', 'o5ql51cqRqRam2O-ek2p7pHVU0ow', '', '黄梅13538090568', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/Pnf2ElYvUnVsNRjrlhqJPsMwA28YZ3swKE0d3eJjO5ib6cusHd815Iib4oR2ZIGMib7a37MnK8EDH8cfgqr9Y2Dsw/132', '2018-06-12', null, null, '1', null, null, null, '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('818', 'o5ql51RDztYRSHj0_9qb93-DPF1Q', '', '王举', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTL0qGwL7CL46n94ELkluBViar3d5wnET0osyrAlaEuaMic7ice5hua71EfzTLcaEPQO7YSV5O29Jrtfw/132', '2018-06-12', null, null, '1', null, null, null, '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('821', 'o5ql51YcVXjmmuAmy-l0pvc4GFWo', '', '古古', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIreAMLW9KTm8c2UhtIGCicibEEFibu1QnIr3VaIQbwA0op2tbg1TraujxGrv0FZUL7VdSJmIOCbWa5Q/132', '2018-06-12', null, null, '1', null, null, '683', '2', '0', '683', null, null, null);
INSERT INTO `tb_user` VALUES ('822', 'o5ql51b57BUhVFzlkhqeqBlzQbQc', '', '超盛达科技钱超', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/1HOhXdxQTAJPJg8T5PhpAIGey5gzG9ZtKFKxY2mPNwibPPGoqDCZmobUIuedSAQjxAxQBOmiatIv3sAS8VupOMRw/132', '2018-06-12', null, null, '1', null, null, null, '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('823', 'o5ql51fQewbJ8mufixN2FZgv3ogA', '', '唯有理想和爱不可辜负', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/8Zicvz2ibJdj2e1ibKciagulJjs3EESPbJ05Mbcia0GTRuoEl76GzpL88ibzcqxPJzxXicoCicLYy0YQic1KTZRyfibcic6WQ/132', '2018-06-12', null, null, '1', null, null, null, '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('824', 'o5ql51Xs6npnwsfEG-fEMxxovhp4', '', '肥仔米', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/1eDUnWduHUSeEK6icXpoHiaZ2Vdw7yThqeICZuzB7DzW3ydWtDZSAk337KwOuntvicmjMNMmXLWzlVnasVTAhBHlw/132', '2018-06-12', null, null, '1', null, null, null, '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('825', 'o5ql51WKngSaRLT0ljoV7M6Lmffc', '', '随缘', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/kD8UFQRPevlvGoN0h7JoA9CWo3qmCRxCHmnKbo1dEP84McRc8DabzBsDgXRhjoO0KK8tvib6GGj8FkO1or6h0VQ/132', '2018-06-12', null, null, '1', null, null, null, '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('826', 'o5ql51aRlLruleS-0ErRmiggkgKw', '', '金云', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/SWicibRkWtgDtaKTkY0Ia0tAiawDUSuJlvtgb92ibVqqckQzMkJKL5pUDNqh1XyX49O3yseHtt4Luv1icvcrgto3Jxw/132', '2018-06-12', null, null, '1', null, null, null, '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('827', 'o5ql51Ue-JSXvGftWIbhHB2_6DCs', '', '小辣椒', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/jvv8ibzq4slczNIziagdPFibj5z8OcC0IQIiaK7jQy4DnTKYWIgCpgauS9EuGicQVpUSFKCCxXIfEXkWcl3cSaXvLhw/132', '2018-06-12', null, null, '1', null, null, '680', '2', '0', '680', null, null, null);
INSERT INTO `tb_user` VALUES ('828', 'o5ql51WLDrRWHmNl4D1_0BQPyAr0', '', '华夏五千年', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTL7XGwlrvc89bjibpa1YjV4AGdDibM6omPiamryZ3YtQ92IqLCdiaHcnXZ6EG9UIRK1Sh8csn0WjOkJ1g/132', '2018-06-14', null, null, '1', null, null, '767', '2', '0', '767', null, null, null);
INSERT INTO `tb_user` VALUES ('829', 'o5ql51d2olyNO7cvL4LO8xdC8Lp8', '', '许恒', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIaeia4p7Vh72HuUWAH62BMcjsd71wlNsOBP416qDJTP4pOz8O6mxq0gTZtIzEj1rKYTl832gMZp3Q/132', '2018-06-12', null, null, '1', null, null, null, '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('830', 'o5ql51cfSpoqPWUkGzBVGPxW_JWg', '李金伙', '简写人生', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/IPe7xc4hO8kr59gZzQERlOZseFCEr3EHHFz5ryAUHm2dGTE03ZhmQWHYkC16VXd0icz2voeQico2kqqjHCibnTfbA/132', '2018-07-02', null, null, '1', null, null, '680', '2', '0', '680', '908473', '13410256842', '2018-06-13 02:24:47');
INSERT INTO `tb_user` VALUES ('831', 'o5ql51UYupl_I8y6O6yZ5eFq1w78', '', 'Amy  Liu', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKO9EB4JJvXGMpLOWibbnJ3iaSCQE7py14iczzqXfYMF3JsvXibPIOh4SoOXhSiatUOyJ3MyY1nlSgLQmw/132', '2018-06-20', null, null, '1', null, null, '737', '2', '0', '737', null, null, null);
INSERT INTO `tb_user` VALUES ('832', 'o5ql51bUd09vX05mvtL8wseDTkxg', '', '永不言败', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/EoXdxLLGsAbPl5jauTJZicLFjbLHLNuzZu2FzBsus0TeKzlBHC5m1FBy5FdBjibH0sib6UJsH7MWwLeQkKctoDgfQ/132', '2018-06-13', null, null, '1', null, null, null, '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('833', 'o5ql51U9ikGWhA0oN_ERxce0v4Sc', '', '李旭东℡???????????', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/6YUCxuccFbXlyfBQtGKBDQ1AYONShavRic4hgGictdebib1doDV7zRTlUbRLhT1YbMm7OicH1HUcxvfNNzMsmgTqOw/132', '2018-06-24', null, null, '1', null, null, '679', '2', '0', '679', null, null, null);
INSERT INTO `tb_user` VALUES ('834', 'o5ql51RnbGUMXPVCt_t7wMI8XE0s', '黄斌方', '新弘', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoHFwg94EHbHAGep6ys3Z7xv0wEBm1fw4K0HoiagRKfG9crGJadSRX8da6UicWnNb5Cqannyibr0wia8w/132', '2018-06-25', null, null, '1', null, null, '685', '1', '0', '685', '930573', '18926506788', '2018-06-15 16:48:21');
INSERT INTO `tb_user` VALUES ('835', 'o5ql51dk4o48BA6P9u24xE9XsYpU', '', '此生无悔只因遇见你', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJfaaFNq0ofZ1ra9vhicuq03ZicnKVCGv3CoGzsJ3WSXkhDqbxWgNTxWjoUJPYMutz48nzduhD26wrg/132', '2018-06-13', null, null, '1', null, null, '685', '2', '0', '685', null, null, null);
INSERT INTO `tb_user` VALUES ('836', 'o5ql51QMVS7GoCE2oivot0UGWiUo', '', '吉瑞五金（招聘业务主管2名）', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/XWosv74v05IhjTfEHUHpxRNcWSS8LyY3DHblonPLbDQwA51O2yTPicGh4SziaWIUEN663JExYz5aRgxgAx5sW8kw/132', '2018-06-13', null, null, '1', null, null, '680', '2', '0', '680', null, null, null);
INSERT INTO `tb_user` VALUES ('837', 'o5ql51adIpMvlMHh8XnSUexs-zo8', '', '123木头人', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/ruvVicDkqK0MwRCfxYOzLks0auOXEd0shAMmnEXs6tGu3UAeMPnqYGMIDF71CibSIYq5SAeRhKcWIsibD8k1YNvqQ/132', '2018-06-13', null, null, '1', null, null, '767', '2', '0', '767', null, null, null);
INSERT INTO `tb_user` VALUES ('838', 'o5ql51QmSbTHBOkrJNA2wcCCZZQg', '', '晴天豆豆', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLJ4ibmvr2p5gXicYqPIvaTDDdLVxvqiax81L1reCFsk4iazf8m1GQzSXibz7A9aHr676GaewnTJS6FICQ/132', '2018-06-13', null, null, '1', null, null, '681', '2', '0', '679', null, null, null);
INSERT INTO `tb_user` VALUES ('839', 'o5ql51c7yVnUe753OcqsefcZOiwQ', '', '芳草碧色', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLufYUJaPq3A1AqvHzDGbQ2jsuIY51q8YdnltPricHLn9wQJ84E7rXc9uCnIbjjrqDHQ2ZKn1nOiaRg/132', '2018-06-14', null, null, '1', null, null, '767', '2', '0', '767', null, null, null);
INSERT INTO `tb_user` VALUES ('840', 'o5ql51codQ4mAYDc73nlcgVulqLU', '', '芳', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/Sw7xDibaAeZYo9iaVakRQloQDtF5XibVgqhbJ4d8gic812ibNUFAlUJy4tGZ4CQHicWgNyHgoK9w3Ig5HLgV9icPeBShg/132', '2018-06-14', null, null, '1', null, null, '767', '2', '0', '767', null, null, null);
INSERT INTO `tb_user` VALUES ('841', 'o5ql51YzVNNEIK54OJu8o6_5owoQ', '', 'A A金泰 王亚男', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIH2Bd6xAGHrVmI5bdYxl2Zia3DTUZTD8XjMXvJziagKbjDOE28pAMOfHeOLHLkfqtHJojKtia7vhUpw/132', '2018-06-14', null, null, '1', null, null, '767', '2', '0', '767', null, null, null);
INSERT INTO `tb_user` VALUES ('842', 'o5ql51QmbQ-xzGin8vLyTom_up-g', '', '云', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/OpaaVL6WnibRFcXWeNcDZmNaLrK1OWFrDo4YWibthngUVGRfCVuMLG1CCCtuYcl1aLjvVo7RnItUYfpD2hWJLq1Q/132', '2018-06-14', null, null, '1', null, null, '767', '2', '0', '767', null, null, null);
INSERT INTO `tb_user` VALUES ('843', 'o5ql51Xt47LbCz-2cS20ACpp1Smk', '', '卞林素', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/PiajxSqBRaEIk1bLZs9tDpTju7P32GT6L6ibUhBn5cicHDEX3RqyXCnWz2JTHniad2OGgFLv67gLWicjXXibIu2EeF2w/132', '2018-06-14', null, null, '1', null, null, '767', '2', '0', '767', null, null, null);
INSERT INTO `tb_user` VALUES ('844', 'o5ql51aQg5CkkxRNnbYlVqSPccQg', '', '蓝色天空', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/VjJ8l0J5XJyEnpmp0FibNqZycaxHvY5OLL6M3icRzwOjCAoS9wJe6jpHB8gWvq9mlaFBA357AutD1BYUzxFG67BA/132', '2018-06-15', null, null, '1', null, null, '767', '2', '0', '767', null, null, null);
INSERT INTO `tb_user` VALUES ('845', 'o5ql51eAMKpJfZ6EZWyZurQ5Dk4Q', '', '青青', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTI3lW3z0JqBDUnZlmgSGhz9ba4jiccjSDgekkFUQibiaicTiaiciaxgOlG0Biasovom1uLOPz1lVhibDrJOKmA/132', '2018-06-14', null, null, '1', null, null, '767', '2', '0', '767', null, null, null);
INSERT INTO `tb_user` VALUES ('846', 'o5ql51T2XQgdXR_Wv8zQ3jdmH9NQ', '', '淡定从容的婷婷', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/SwRibqJAJKcLqH36A8PbN81oCOo8UgTicxNq3vVXicXAfibiaL0leztYoibuYQibMKNtQmHTIaVE3ffwfk2tCTX02Qh7A/132', '2018-06-14', null, null, '1', null, null, '767', '2', '0', '767', null, null, null);
INSERT INTO `tb_user` VALUES ('847', 'o5ql51QFN0UgQoIFbGr-VBU_t_L0', '', 'A**浩阳2号**', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/7NNIMpziaUUGMuiaALqKFTKOUG76YKQ5jSVyniaqlQAq2YHWNdu33acPs9iamkCwrPbhgcWQEqm6haYJCFnRd4NCFQ/132', '2018-06-14', null, null, '1', null, null, '767', '2', '0', '767', null, null, null);
INSERT INTO `tb_user` VALUES ('848', 'o5ql51W2bLgGNSdiMimGSWIK6Tb0', '', '未知昵称', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/BOqb0kpZJ2WxV6Uk1fdVbWicPe8EYNdJYWK4yTCwicib8z8Rs1znrVZBAmD6j1sYfe6WwyqKQLpNlopn9UMqRZ38A/132', '2018-06-14', null, null, '1', null, null, '767', '2', '0', '767', null, null, null);
INSERT INTO `tb_user` VALUES ('849', 'o5ql51Y4ruv6HZvDbaLjBfzqURg8', '', '杨芳', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/iaxgvyIjNFolHEicYGr5mjibAfW9PsGu0zdeHQ1TREkrPKvjY7fdIaibicvtt8ibqPlHjLxN7nzLFrKED4AALpiaLwhHg/132', '2018-06-14', null, null, '1', null, null, '767', '2', '0', '767', null, null, null);
INSERT INTO `tb_user` VALUES ('850', 'o5ql51fSxWjRFeLJ0dXA6Upug-VM', '', '一生有你', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/zRX28t0zmT6FNib0fXnDPtWCiaslkicQZP2iaTcqFSxqrMFQPpOE8PBiaEiccsibIFyJEiaHX43bGmCianMVwzpoeHh4vdQ/132', '2018-06-14', null, null, '1', null, null, '767', '2', '0', '767', null, null, null);
INSERT INTO `tb_user` VALUES ('851', 'o5ql51QkDzS793bLHLrhLRw1j-bw', '', '浮夸', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/ge54EFbuI1G03B3ReR4AOxXpFGAgXuBZM87ek19lshSFfiaBDj0WPYfAqU8oUnEyNNt1zvWpMmnqZxOiaGO5k8Og/132', '2018-06-14', null, null, '1', null, null, null, '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('852', 'o5ql51SIC3rDrzcSISfR-RTD17us', '', '黑狼', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/o2lXFVLicJVxwL5UibLWlenJVRmqlrNVaviaDp6naiabQ4RdUUoY44EMf8L0yicVuJiapOIYK2Wd4Os4kYliciaEibukc6A/132', '2018-06-14', null, null, '1', null, null, '767', '2', '0', '767', null, null, null);
INSERT INTO `tb_user` VALUES ('853', 'o5ql51SSi6G_057OgmRRmj5zt9h4', '', '', '', '', '2018-06-15', null, null, '1', null, null, '710', '2', '0', '685', null, null, null);
INSERT INTO `tb_user` VALUES ('854', 'o5ql51ex2Rm-StdOCszjzqi89MD8', '曹相富', '爱喝酒的男人', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/INqGtUhBicaEtlFn2X5VFCEMUwxXKzyNnZ193AlpAicy7nBDgSZ7hMJQxkbFrOmJzW6aXRLNAE4701GtoQFh4ANA/132', '2018-06-15', null, null, '1', null, null, '680', '2', '0', '680', '810232', '13715196561', '2018-06-15 16:00:03');
INSERT INTO `tb_user` VALUES ('858', 'o5ql51Tz6ZVfM38Ferg3_oKZLFG0', '', '', '', '', '2018-06-15', null, null, '1', null, null, '834', '2', '0', '834', null, null, null);
INSERT INTO `tb_user` VALUES ('863', 'o5ql51cc1qYExAl3AKVDaBfs9gMw', '', '一指神工', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/zjNWKEHdqzpe0twCgkVuoZWM4chHkUe7QDHrUWODlH7vourricSe9S6XEfqAzq5G2VIgia77KE7ka7BSE33FmBDA/132', '2018-06-16', null, null, '1', null, null, '834', '2', '0', '834', null, null, null);
INSERT INTO `tb_user` VALUES ('864', 'o5ql51bluoMKTfDtuUPyxu5YwPG8', '', '', '', '', '2018-06-15', null, null, '1', null, null, '680', '2', '0', '680', null, null, null);
INSERT INTO `tb_user` VALUES ('865', 'o5ql51Zt-KpzPihL8ayV7EP0sgpI', '', '板栗', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/yPWX9JKDydZ97WfibSoibsdHpQrjmwyibZCV7m6LpZplp98OBG1iaVoib1TyM31Q7uawFPCdiajyweGVokVib67q6L3yw/132', '2018-06-15', null, null, '1', null, null, '680', '2', '0', '680', null, null, null);
INSERT INTO `tb_user` VALUES ('866', 'o5ql51dIVXbnL3bkZEClYsNH3dug', '', '带头大哥@', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/AIsDdIx1aogVEY3p4QX18RR3jvllPSPdxJE172jNcwOAOkRcYnoopSFY2PaAMzjYiaONYnK6ibA9EwUH9ZJITpww/132', '2018-07-02', null, null, '1', null, null, '680', '2', '0', '680', null, null, null);
INSERT INTO `tb_user` VALUES ('867', 'o5ql51Tgu54SI2aOakRFtRQylcmU', '刘永亮', 'AkiraLiu', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/eeq0bBzy0nGayv0kn9zHANQA6T0cppPbwGibP6ZBebxu83UzQUycz41j83Xv3NRk2WnAA6bJrLhEvgDjD4icY8MA/132', '2018-06-25', null, null, '1', null, null, null, '1', '0', null, '290180', '13725447440', '2018-06-25 17:59:25');
INSERT INTO `tb_user` VALUES ('868', 'o5ql51UXr-UnhqlBrgwd6n-Svx4s', '', '', '', '', '2018-06-15', null, null, '1', null, null, '685', '2', '0', '685', null, null, null);
INSERT INTO `tb_user` VALUES ('869', 'o5ql51RF1JKPxjqLBUyxoQ9DQ5GE', '', 'Wuhui', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/nsOk1SqcRDTyRKgJyn3icxcmViaNANicDGE4ibUGprAKf9e4uV3W3NfEbicTWu2wLypiadNgD6BTJ7BRCCDZSZrTtibCw/132', '2018-06-25', null, null, '1', null, null, '867', '2', '0', '867', null, null, null);
INSERT INTO `tb_user` VALUES ('870', 'o5ql51d3Qmh2B5yxalE5E-fl7YsE', '', '未知昵称', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/cZpmNicibSqJQ1ibQSgm9DAzibF5c8YibC3yOMcWkEzS7iaiaVSn8XkXVPasHB4hwGGEvlmVvbnnqO6WcmaiaKqFV8lMdw/132', '2018-06-15', null, null, '1', null, null, '680', '2', '0', '680', null, null, null);
INSERT INTO `tb_user` VALUES ('871', 'o5ql51RHAqjjTkGW3x6nFl95DXW8', '冼瑞嬋', '止于至善', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/ohkbhqYicjRja9NUv8X2tAngficiadCuP8P8h2XHsCKCNeL6aicEwm5ypZSCdItaHfBlL5yALEYrAqNczQFOyRcbww/132', '2018-06-26', null, null, '1', null, null, '834', '2', '0', '834', '801125', '13686886296', '2018-06-15 23:09:02');
INSERT INTO `tb_user` VALUES ('872', 'o5ql51X7mWd14N9YVJYdVf9WNUs0', '', '皮皮黄', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/zv7yNt1HH5y2oJniazUgtfpNg8vyGtfsdDcicTlr9QIynQx1NGNdqGFRvl6icLtXHGZsTEFiatibDRXpnWe0VicHurrQ/132', '2018-06-20', null, null, '1', null, null, '871', '2', '0', '834', null, null, null);
INSERT INTO `tb_user` VALUES ('873', 'o5ql51UZBuDKXfGZ9B5MioyZnlyU', '', '想别人所想！此想  理解对错之想！', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/36thnUpmNMsLVmfHqSR7H4W5iccefJI2D2FvMEHz5FRfTMS7fLeL2ZsnKywyfITylsogOKEtV4M4yl0RmM1ShHw/132', '2018-06-15', null, null, '1', null, null, '834', '2', '0', '834', null, null, null);
INSERT INTO `tb_user` VALUES ('874', 'o5ql51S8sUDnO4glW390-gSAC0Uk', '', 'Aha', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/xrU4oQ9bT0ytnVe6nmoJrhbNbMeXAia0ArP2TXgdtm3PgnFcib96vvG7XwPfzzBibMRlRmuuooMib4BtRBhrNn3ibfg/132', '2018-06-15', null, null, '1', null, null, null, '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('875', 'o5ql51bwiRpfqb0R4KovOYr6jd2A', '', '快乐一家人', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/xLicOLGabPqjPuJlQgkooQXem4afKavFFjPvrsx7pRNW0xjIzqEOX6ouBWaF9ibFU69iawW7feYIvjRKLoDZD9GkA/132', '2018-06-16', null, null, '1', null, null, '767', '2', '0', '767', null, null, null);
INSERT INTO `tb_user` VALUES ('876', 'o5ql51ZtvCTeSssU0UTfpdBqsaj4', '', '覃丽杰*', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJT1O3iaPWQ9b3pPGM1jWdz4dUrN2Cdf1Ir9tXvibFvUnD2vKMJVgFUPc6XN0lMOciaT5ZbFDP4fpibAQ/132', '2018-06-16', null, null, '1', null, null, '781', '2', '0', '737', null, null, null);
INSERT INTO `tb_user` VALUES ('877', 'o5ql51W9kx1thte1Gt1I8eGWxFso', '', '*杨大大*爱你哦', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83erKFPjdLhicRicdtObax7VziahcavxiawwpwKF6tTNujOxfZvLDTPxmquy8VcjucXl558ooOXGrAHvDnQ/132', '2018-06-16', null, null, '1', null, null, null, '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('878', 'o5ql51fgyKB-jCbhqgbeRMeMH3KI', '', '成就未来', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/EqjlroAPiaUhxjyMIyicIDItJWu0xHJ4NQQhoLk2gjbh2Lq71lXSz8HCc9m6yEX7KOTkNgd4LvGIR8wpaotxE3Iw/132', '2018-06-17', null, null, '1', null, null, '834', '2', '0', '834', null, null, null);
INSERT INTO `tb_user` VALUES ('879', 'o5ql51e505fICc9PMJsZsRtuB-zo', '唐铁军', '铁军', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKRorziah4Xvf4Qia6lZdNct5z9mQoxCI6icpc53x1E7aEDOdJoUdgjD8fuFISIXc5MbEQYMXeibFxtcA/132', '2018-06-18', null, null, '1', null, null, '685', '2', '0', '685', '945783', '13923437718', '2018-06-18 20:34:05');
INSERT INTO `tb_user` VALUES ('880', 'o5ql51b1SdDqScc4pRBqkidLCtSw', '梁振培', '天涯侠客', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/wIz8wOZK4ggIh77LSx9kNSlTSsyIKkKOz5YZoybW4PPqJd3Jfk39XaFZricq6NxsJBd3IjNsPKoWrhwWn5ScsVA/132', '2018-06-23', null, null, '1', null, null, '834', '2', '0', '834', '687179', '13602636803', '2018-06-23 13:38:38');
INSERT INTO `tb_user` VALUES ('881', 'o5ql51ZygBG_7urB5iCAvu42A8Rg', '', '', '', '', '2018-06-19', null, null, '1', null, null, '834', '2', '0', '834', null, null, null);
INSERT INTO `tb_user` VALUES ('882', 'o5ql51a92DYABQrqI4qHfHGKsFTs', '', '牵着蜗牛去散步', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTISes3bwx3reeZOByn0BXTAMoGoOZhSSe0vmNKVlR8fvtcPCJATn6kbx9YAqXK053UfspHCUKhDJw/132', '2018-06-19', null, null, '1', null, null, '685', '2', '0', '685', null, null, null);
INSERT INTO `tb_user` VALUES ('883', 'o5ql51RqHg7KsM2r2PcbiWnP9_0Q', '', '敏记Ж611', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/W3plkYag10dRQn3mAd37iaWLgqoR4dcjeLnQFUklRfhqrib3Jw6enZLF1mMG17mwDk3E6JTuNZ114y8HvLW5DKwA/132', '2018-06-19', null, null, '1', null, null, '834', '2', '0', '834', null, null, null);
INSERT INTO `tb_user` VALUES ('884', 'o5ql51eIsnxvZBIDtdoyLFitXTD0', '', '伟业同盟', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJFv6OA4TiaAvTFCTeDTjV20KKN3TAEgd7ES74GMROdDQoUHptFNDZxtenfbpU1ghd7IicEgFGxlmibg/132', '2018-06-19', null, null, '1', null, null, '680', '2', '0', '680', null, null, null);
INSERT INTO `tb_user` VALUES ('885', 'o5ql51WpwDQKj-Z9Ycm4FiZtASgM', '', '', '', '', '2018-06-19', null, null, '1', null, null, '680', '2', '0', '680', null, null, null);
INSERT INTO `tb_user` VALUES ('886', 'o5ql51R4709UrEqJdAXcGrkO8RWg', '', '七彩水晶', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTL4kRfnxT8rJwiag1icXLhLXVKDEwBOibpUJEVtVeSm0eFtSn0t36tBKB6J573IaInsQk6PuIQVOc0Ow/132', '2018-06-19', null, null, '1', null, null, '680', '2', '0', '680', null, null, null);
INSERT INTO `tb_user` VALUES ('887', 'o5ql51aNk95tZDEqa8QUP8Tkfxds', '舒黎明', '舒黎明  www.5dgz.com 13437418271', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/vwLj9XG2T3LLUYsxs7RS2IJI8ibLtc6RPQWricoGtTUMxxbAoxzofySpukHCOxkEQSicJYWAmG7Cgc4lLNAQfFHyA/132', '2018-07-02', null, null, '1', null, null, '680', '2', '0', '680', '897626', '13437418271', '2018-06-19 16:01:26');
INSERT INTO `tb_user` VALUES ('888', 'o5ql51dpqaSC0LiMcwHKjA1mTpmQ', '', '', '', '', '2018-06-19', null, null, '1', null, null, '834', '2', '0', '834', null, null, null);
INSERT INTO `tb_user` VALUES ('889', 'o5ql51ZXZbz4MPgpzkK1xr08vpyY', '邹燕生', 'ZYS', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/XZicooWbKGeQyWdFrL9FNgmADOUpfhB29GbZdNleDibajiaryWWsz7l2RxGjhQzBHomrbuXjJ3iaLpYlBmoAJIWK8w/132', '2018-06-19', null, null, '1', null, null, '733', '2', '0', '680', '830917', '18922897445', '2018-06-19 21:32:09');
INSERT INTO `tb_user` VALUES ('890', 'o5ql51VGtiNOHV_T3Tvah0SOe9KQ', '', '明', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/KPVLVNPttEibIy2wdQ6viaL57vjJtzJLyicNK6BXFXP6dSbsJ6vbLzlUvPMYlSOrI19uhnHEaiaJTsWwReorlpEYpA/132', '2018-06-20', null, null, '1', null, null, null, '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('891', 'o5ql51WnEkoqsyiz_qePbgLakpBE', '李小灵', '未知昵称', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKHS6mbJv3Cq2criaNoVTuZaOz38UE2MWUZyxQbppcPeqp8AwX1wlWVy2IFIYibTS9ncmTNGwpmBDwQ/132', '2018-06-20', null, null, '1', null, null, '680', '2', '0', '680', '735892', '18666220303', '2018-06-20 07:57:58');
INSERT INTO `tb_user` VALUES ('892', 'o5ql51RgdXQ1IEghKsuBf5FTNgco', '刘杰', '刘杰', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/IiaCPBKJfrGvkiagpdNyG9lM7XS8ia7xTte7a5e25le1vMhpWKLEiaFRiaSRZRhXxnLQM5qQjrcQgibHSwxspN9LJAlg/132', '2018-06-20', null, null, '1', null, null, '680', '2', '0', '680', '382012', '13631716756', '2018-06-20 14:59:00');
INSERT INTO `tb_user` VALUES ('893', 'o5ql51TFSw3Ciyl5UYoAsNwJCmcQ', '', 'Tiger(虎山)', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/tVYmwnj7BzWn774AKD42DvQTd2ElceG9GzXq8p1D3kZcEWIYF2icaGzBbQ1BLDBK5MFohiaj28j1ibQsLPURKYFkA/132', '2018-06-20', null, null, '1', null, null, '892', '2', '0', '680', null, null, null);
INSERT INTO `tb_user` VALUES ('894', 'o5ql51aRgtqmpxdg6axKqQ84WUJc', '', '一指可颂', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/xwTiccFyUn9dZOIXS6F6luh6zdV9ECCRhjEZp0NAWLVIhdWoKxsCibqDdw4F5EWhYqSXicV7jibDrhibx48aUGujiajg/132', '2018-06-25', null, null, '1', null, null, '834', '2', '0', '834', null, null, null);
INSERT INTO `tb_user` VALUES ('895', 'o5ql51QvJp7fs3Z0UsDDFNIFu9zI', '', '爱思考的懒龙', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqXuwZl52jtv1SEaZkblsnPMcqIibDLIR8LKcx6ibRICc51FEhX0BD9xxElM7Lj1AibUslPWAvGENwCw/132', '2018-06-20', null, null, '1', null, null, '695', '2', '0', '685', null, null, null);
INSERT INTO `tb_user` VALUES ('896', 'o5ql51ZcG5Yn-8CrMiz9Su7MoTRM', '', '', '', '', '2018-06-20', null, null, '1', null, null, '737', '2', '0', '737', null, null, null);
INSERT INTO `tb_user` VALUES ('897', 'o5ql51UmvpdkOUThOQyDWCI25smo', '', '吴为友', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLm7zqM2LhIwc1W9via2fjW75NSZjf6iblu6Fv4LbRicibpZ5uQeez3Rt5TDICR8K5ialTpJNrsmYAnMxw/132', '2018-06-20', null, null, '1', null, null, '737', '2', '0', '737', null, null, null);
INSERT INTO `tb_user` VALUES ('898', 'o5ql51VmJaWxiWHvvbLiGtmSkLjM', '', '', '', '', '2018-06-20', null, null, '1', null, null, '737', '2', '0', '737', null, null, null);
INSERT INTO `tb_user` VALUES ('899', 'o5ql51W_KRot1YyhYWTeq_UPkkZw', '', '蒋靖^_^', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJG6nz0NqEkQ9ItAHCtOrXeZV8P1hkz3yFd3kGWUGiaktTEQ8vBBPBGrU7O6amOqmfvNB8hUQ0ydicg/132', '2018-06-20', null, null, '1', null, null, '737', '2', '0', '737', null, null, null);
INSERT INTO `tb_user` VALUES ('900', 'o5ql51Y4d1BIcjJYFe2OV-oeOQtE', '', '邓秀佳', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTL2YAg55Hc4tCG8b0TEqzZJLQ19g0ScoKIczmztMUtyeS9ahQnSrEFRSrRvfeLouyibNHPkI2mb06w/132', '2018-06-21', null, null, '1', null, null, '737', '2', '0', '737', null, null, null);
INSERT INTO `tb_user` VALUES ('901', 'o5ql51decGEsm_0BKHoarPBvqPKE', '', '不为错误找借口，要为成功找理由', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLtZvbOWWopA7G9qJoKMRs5aibaejBcVMxpHIfNNPicz91tdzX8oUicgtdreM8LJK0vXIw92JNGovc1w/132', '2018-06-22', null, null, '1', null, null, '737', '2', '0', '737', null, null, null);
INSERT INTO `tb_user` VALUES ('902', 'o5ql51ZvdYIF4B8HlhEKB7N1qigM', '', '', '', '', '2018-06-20', null, null, '1', null, null, '737', '2', '0', '737', null, null, null);
INSERT INTO `tb_user` VALUES ('903', 'o5ql51Q7EtIP3OzVKh34KEAklF4M', '', '啊旺（15800047597）', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTK53fozjRCBmbfliaBgOvsdJhwkY5Sd8nauMC0YnePia8zXjmRUecp5RvnGqSO9LHQvLbNZWLT4xB8w/132', '2018-06-20', null, null, '1', null, null, '737', '2', '0', '737', null, null, null);
INSERT INTO `tb_user` VALUES ('904', 'o5ql51fSr_FjMIUnPMxT_i7eOsCI', '', '戴隆海', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/nyIyJHv1nET5NBJtsibC85FLq2icqj31tnuhw1gTb8fId6gbf0pgzusuIb5mv6spdH2e8eDrFicFichFXLicajIWVhg/132', '2018-06-20', null, null, '1', null, null, '737', '2', '0', '737', null, null, null);
INSERT INTO `tb_user` VALUES ('905', 'o5ql51dS-_OUoY-ejWB52edygtDA', '', '', '', '', '2018-06-20', null, null, '1', null, null, '737', '2', '0', '737', null, null, null);
INSERT INTO `tb_user` VALUES ('906', 'o5ql51fwosmkIck99jxuG4l2h4GQ', '', '', '', '', '2018-06-20', null, null, '1', null, null, '737', '2', '0', '737', null, null, null);
INSERT INTO `tb_user` VALUES ('907', 'o5ql51aFOuC7AH83h5Unpq18OYdA', '', '', '', '', '2018-06-20', null, null, '1', null, null, '737', '2', '0', '737', null, null, null);
INSERT INTO `tb_user` VALUES ('908', 'o5ql51Z8nIKJgYTuZS3dLlyD7i-A', '', '', '', '', '2018-06-20', null, null, '1', null, null, '737', '2', '0', '737', null, null, null);
INSERT INTO `tb_user` VALUES ('909', 'o5ql51ZbatqHTO0VeDbTFsj5U7TI', '', '', '', '', '2018-06-20', null, null, '1', null, null, '737', '2', '0', '737', null, null, null);
INSERT INTO `tb_user` VALUES ('910', 'o5ql51TJwiGwhSJz2jweIWVWvRBU', '', '艾斯', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/P0vTtA3s0a26q99Jhk3Cz9l8FFbElNeMzia3lb6PNsibbPhqJtycNNrYpibgcA4ewO2opFoPvSBdaLoXdHs93U1Rw/132', '2018-06-20', null, null, '1', null, null, '737', '2', '0', '737', null, null, null);
INSERT INTO `tb_user` VALUES ('911', 'o5ql51cUSvxTcZxFtLC843U1mUPU', '', '*常锐地坪^_^马贝防水-古月虎彡', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/kq1Q9EpgdkNGOm5UfV46eNBY0X3XAEWdHXYQkHB6PyEM7YJ1f7GMqLOnxWIrJicw3vuzdicoNno3MaaY9IzU3Vdw/132', '2018-06-21', null, null, '1', null, null, '737', '2', '0', '737', null, null, null);
INSERT INTO `tb_user` VALUES ('912', 'o5ql51XcZH97S-XpKUCie5yUAQ_s', '', '', '', '', '2018-06-20', null, null, '1', null, null, '737', '2', '0', '737', null, null, null);
INSERT INTO `tb_user` VALUES ('913', 'o5ql51f1FPBLgjqR6FFD4ueTKU_A', '', '', '', '', '2018-06-20', null, null, '1', null, null, '737', '2', '0', '737', null, null, null);
INSERT INTO `tb_user` VALUES ('914', 'o5ql51RAOKFHuvvU4ddMRqDdHSU0', '', 'Judy', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/XVQjRHeuVzsVSPKDafic99zJOG7uAy8JLicknOXP4hq83pIufBNiarnpXXWEiaxpTgotyTFibOYRW31cLHgmYqYuLiaA/132', '2018-06-20', null, null, '1', null, null, '737', '2', '0', '737', null, null, null);
INSERT INTO `tb_user` VALUES ('915', 'o5ql51XazzkM29J2LPu0eAZOSsCc', '', '晨', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKxBgRjib2ECXkjxOibyBnGUaZU1riaXQibz9ujKqJX9RSb7mLgtsgZiawz0c7IcGK1Ta4DfZ8JGEMzxmQ/132', '2018-06-20', null, null, '1', null, null, '737', '2', '0', '737', null, null, null);
INSERT INTO `tb_user` VALUES ('916', 'o5ql51f90zqpSAl2oLWGglQcaP8Y', '邓超凤', '风飞沙', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Gd0aW1AOOfVib3yrL6RAxhkEZV4joz2dUsB3BbP1TXicKqHWuK2El11fr5zeWtZHD0Mlviayic6iczDc8S6rDy4jdicA/132', '2018-06-28', null, null, '1', null, null, '737', '2', '0', '737', '455199', '18807621816', '2018-06-27 17:07:11');
INSERT INTO `tb_user` VALUES ('917', 'o5ql51bekuVzNYVG_zqoZ3kUdTqA', '', '刘远波', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/zb3jqg6ibszYWaTxUcUc0472WKaZ5Pb4mzMqiaibPAwMicSn9Niaun0fk23udssPXbia2GoBiaDEXQLzXysZI02LyIicbQ/132', '2018-06-20', null, null, '1', null, null, '680', '2', '0', '680', null, null, null);
INSERT INTO `tb_user` VALUES ('918', 'o5ql51RK1YWNcG-gaJ1EPoERUAPo', '', '', '', '', '2018-06-20', null, null, '1', null, null, '680', '2', '0', '680', null, null, null);
INSERT INTO `tb_user` VALUES ('919', 'o5ql51ZFsB3M4AiJ2PpyBOiAlobw', '高武领', '苍天', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/JkY0hxE5l8IBpV9Jw6Ge7XOZa5PVQkiaT8VwdCpXNicmIrzqeH8hEPt9IsnTMY23biadrwiaianXlXCyCE1ntPibziaXA/132', '2018-06-20', null, null, '1', null, null, '737', '2', '0', '737', '508993', '13232755979', '2018-06-20 21:35:59');
INSERT INTO `tb_user` VALUES ('920', 'o5ql51bxB-qZDJeoLbjczwzX9OzI', '', '', '', '', '2018-06-20', null, null, '1', null, null, '737', '2', '0', '737', null, null, null);
INSERT INTO `tb_user` VALUES ('921', 'o5ql51ZDJ35Vf4kDC3iLAUG0y4qg', '', '', '', '', '2018-06-20', null, null, '1', null, null, '737', '2', '0', '737', null, null, null);
INSERT INTO `tb_user` VALUES ('922', 'o5ql51XWOiMIx_P020o-H_eDwizs', '', '', '', '', '2018-06-20', null, null, '1', null, null, '737', '2', '0', '737', null, null, null);
INSERT INTO `tb_user` VALUES ('923', 'o5ql51YlFfEe92dpke_lzzO-C4dI', '', '', '', '', '2018-06-21', null, null, '1', null, null, '737', '2', '0', '737', null, null, null);
INSERT INTO `tb_user` VALUES ('924', 'o5ql51fgu5cvCtLBi1wPf66NP8xI', '', '零下45°', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/Iwd3ekquHLvGXOKw0D30XuLXvhTNLpIP0bAQ70Nzs0thQz7IibYNm7aiaJHoAVMjTNicIWWekXWUibxQP3lBINSu4g/132', '2018-06-21', null, null, '1', null, null, null, '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('925', 'o5ql51QrWgxBcvLEMOZT0Te27Hbw', '', '', '', '', '2018-06-21', null, null, '1', null, null, '737', '2', '0', '737', null, null, null);
INSERT INTO `tb_user` VALUES ('926', 'o5ql51bTxNyKx9yC69_T0gjRy-TY', '', '', '', '', '2018-06-21', null, null, '1', null, null, '737', '2', '0', '737', null, null, null);
INSERT INTO `tb_user` VALUES ('927', 'o5ql51Rh77QniQ3iQO4JjfyrQjXw', '蔡亮', '小蔡［典匠影业］', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLgzSMsBm7JsEXPMXWymY4bMzPceWr3j6eejR1PpYEoQdoT5aBgSIpu8EXDmIiafaWtWn4XJeYThsg/132', '2018-06-29', null, null, '1', null, null, '680', '1', '0', '680', '427812', '15018504660', '2018-06-21 10:27:18');
INSERT INTO `tb_user` VALUES ('928', 'o5ql51etoRUuLc-RTeHfodty6aDw', '', '放飞梦想', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eq48W9vqsUcgziaqgssFMVyGS5t1QEhvUmibJYwRibe8tHwibMSJcTsWMBNWNicZraqwjydkL0iaII0emnw/132', '2018-06-21', null, null, '1', null, null, '737', '2', '0', '737', null, null, null);
INSERT INTO `tb_user` VALUES ('929', 'o5ql51bVUKCJa0_1kzshx-HN83f0', '', '', '', '', '2018-06-21', null, null, '1', null, null, '737', '2', '0', '737', null, null, null);
INSERT INTO `tb_user` VALUES ('930', 'o5ql51aT-VG8WEswdPqxlW0qSTc8', '', '哭了谁来疼', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/tFRDwU3KwVke10cR8laLEVdvUL7z4eoPxYaQR5ictR3gGVPlBLmcUSZMS8JYL3MM3icL9UqdkBTBfbWgqbFWQQ1Q/132', '2018-06-21', null, null, '1', null, null, '680', '2', '0', '680', null, null, null);
INSERT INTO `tb_user` VALUES ('931', 'o5ql51XJvZF2DFc5AeOpPPWrde3U', '肖洪光', 'XIAO_洪光', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/xdHACPRSMaeEiaGVFagTwcrDb7g5reib2xpiboJM9wFTyWvaPHqrLwjpoaBw96aWXUUwL11EhlbbbnodjbwbB7ggg/132', '2018-06-21', null, null, '1', null, null, '834', '2', '0', '834', '358628', '13603058605', '2018-06-21 19:56:31');
INSERT INTO `tb_user` VALUES ('932', 'o5ql51UENOP4b5iHK6uX1fByiJlY', '', 'Shadow*', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIZApvYibwMiadCrZ4Ik22O3nLGCsszl3fdc6tIJiaiaemr4ncscYWqU7GqiczXMdGEVSEvDWC3RJoS6uQ/132', '2018-06-21', null, null, '1', null, null, '931', '2', '0', '834', null, null, null);
INSERT INTO `tb_user` VALUES ('933', 'o5ql51ZEuZEYgTzBv23jY6qyXT2I', '', '待人真挚微笑多点', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLomsKUSFlcF5uznxI8jQg44eff3fnXmntCk6mMnw8C9hzZ6f3qtOfjhQeuibOiax6BPScBHzTfAfzw/132', '2018-06-22', null, null, '1', null, null, '680', '2', '0', '680', null, null, null);
INSERT INTO `tb_user` VALUES ('934', 'o5ql51eixdRwu4Zw9YlhTUXIwoaM', '', '冠军投资2', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/3toHz9zlQWHebnVKmY6URNhHDjhicD50xMOBV7TksgAk0XuW0qxcyyg23PuegrXhDZsy5egfd1oibz8AicNSibs8sg/132', '2018-06-22', null, null, '1', null, null, null, '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('935', 'o5ql51YpfhGTbEuYnBqpEZPBgpcE', '郭海威', '郭海威', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/TsuK9ibld8B7Mf1pgNZO7I9b2iagJaZCSfeCOic0RAwh5hiaftMtYDtl4x0rE1ZbQZTw1ibocNYoRJYUv9fVA2Z9tqg/132', '2018-06-27', null, null, '1', null, null, '737', '2', '23.86', '737', '805128', '13435312478', '2018-06-23 11:14:37');
INSERT INTO `tb_user` VALUES ('936', 'o5ql51aSzcJPzLphwrR6ldsejonA', '', '静', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/17znj0UnBLicHw0UQb4g32YDv0Sey8bM0V1Pm3eXxjgwdRtQbwasrcujWBnnD0rJfWhlSuicvyBibjibmboicQ2hByg/132', '2018-06-22', null, null, '1', null, null, null, '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('937', 'o5ql51T1s12j5xKPZfn7x_54_Wog', '', '朱帅兵', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/XthI2icdUX2ibl4tRibRxBo1eAVLtSNTUUc4TWphjrEEsa08od8SuHovn6gfFU2iaLr5jx5nEAyQszeItAVx7w8XBQ/132', '2018-06-22', null, null, '1', null, null, '892', '2', '0', '680', null, null, null);
INSERT INTO `tb_user` VALUES ('938', 'o5ql51RtNEZByo-shpbtQBQHfFr8', '', '农民工', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/ic5iaM0goicNQ1MacFaiaNicYnP5FzFDyCzCSVzwicYPmHascQicTw8LUfnAgdNqOJhCxLBG1JkichibE54fFaYQotpvrgw/132', '2018-07-02', null, null, '1', null, null, '764', '2', '0', '737', null, null, null);
INSERT INTO `tb_user` VALUES ('939', 'o5ql51RWzaluhRDcdaIFXkbTkFT8', '', '杨佳林', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/e6mu6YayrS91QeKqo382iaADSsiabBTkkxqMQ1WT3aLlBsYakTpfM6jEdRWlFKv95VprFMfiaYjlPxzu3ZOJcickHQ/132', '2018-06-23', null, null, '1', null, null, '935', '2', '0', '737', null, null, null);
INSERT INTO `tb_user` VALUES ('940', 'o5ql51RLJycGGD5kVzqT_NttM87k', '', '*蜜植素*梅梅', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJibCJxeF0ibxdFqIJ1a3VicH5VSIibWGNaDibuQEQLD5DjreyqQibtibp2zCXpbgkaxWuNMtvU5s4vxqTbQ/132', '2018-06-23', null, null, '1', null, null, '685', '2', '0', '685', null, null, null);
INSERT INTO `tb_user` VALUES ('941', 'o5ql51X8dMv1uCKo-rEsnP98npk8', '', '未知昵称', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/VXMxIJJFlKy2dp5lrSn4SPL29d3Nwdt2bLMY4Fr0vliaHS4TrmIrYcSlrUBjDZ0H4Uy23UWdBsaicmUfQLPXPXJA/132', '2018-06-29', null, null, '1', null, null, '685', '2', '0', '685', null, null, null);
INSERT INTO `tb_user` VALUES ('942', 'o5ql51ZLavr5Qs0LX_xMwHlY6B_Y', '李双继', '品牌设计`李Sir', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eozL2zfHCrLPWAiaLeRolgDI6Dsg2aquick6MUibhNf6y9VXtJSvqTTqaClH5Xb0b6ibmx34eyibQ8EhYw/132', '2018-06-23', null, null, '1', null, null, null, '1', '0', null, '529991', '13714371616', '2018-06-23 13:30:22');
INSERT INTO `tb_user` VALUES ('943', 'o5ql51TjcVvbtvtashN60pv_xiYc', '', '陌颜', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTL8znOtVic5rzwXiatmFlBMd9Aic9e0tGkgKMQvUp8UUMicEKLXDR5VWxvgmRpibHVf6gNp2uJnwbqQKLg/132', '2018-06-23', null, null, '1', null, null, null, '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('944', 'o5ql51blYkNaawA_iFdkNyQXyVQc', '彭亚谊', '洋蔥进口海外商城  100%海外直邮', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJsb6yF8nF3I7lDsdUDrdMWDgG7NDQNbmTXNLbexHeQxg2tZvI38QHiapzmhNpibbyQFyQTFxr8LTcQ/132', '2018-06-24', null, null, '1', null, null, '685', '2', '0', '685', '484436', '13691666309', '2018-06-23 14:53:52');
INSERT INTO `tb_user` VALUES ('945', 'o5ql51bUi1Dmi9Ry07S6u6lNdJkc', '', '李宝', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/zRyicicxpibtwSAOXcYRycBu2wz1t4z76dNKT9PsyR7iby7vuaohxibfdnSx7JKoia9dDaSOxqdwO4dnY7ZFDu2PMx7A/132', '2018-07-02', null, null, '1', null, null, '880', '2', '0', '834', null, null, null);
INSERT INTO `tb_user` VALUES ('946', 'o5ql51U000xCA7zMnbQ24eMeQxBE', '', '**拼**', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/icQKKMxDAwNLm7icw1SgV4rn6iag7GqmRFcVA7UDHbgUkl6C9N7vu1GwZia5bH1gxs6BmwtOiaGZVRatgsZMteoiab4g/132', '2018-06-23', null, null, '1', null, null, '685', '2', '0', '685', null, null, null);
INSERT INTO `tb_user` VALUES ('947', 'o5ql51eo_MgjIZAIuLIDAvaVKHLc', '李烨', '李燁', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/wVJLKmibyYdqw1BRTwrOE3o4R7MusJwJJe5gjt5fuibT63Jfhcs3aYU52RmV2xZ7CTluAdaV12glenRXYmPbmpQw/132', '2018-06-23', null, null, '1', null, null, '947', '1', '0', '947', '910782', '13632798885', '2018-06-23 14:59:23');
INSERT INTO `tb_user` VALUES ('948', 'o5ql51dXCaZy9I4Iu6dFuTrs7Pbc', '', '秀辉【大时代抗菌针织·健康洗护】', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83erboZHuicZ2CymAy29FPvvUIiaH8OVIafjJXzSSzibDuzb4ibzeAJ0Bf9vPK1h33IMWwRWaUkGM6wUeTg/132', '2018-06-23', null, null, '1', null, null, '944', '2', '0', '685', null, null, null);
INSERT INTO `tb_user` VALUES ('949', 'o5ql51Uw70heS5r3EY6T6VKYoMfM', '刘福', '幸福的天使', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/ctkTfSXDYp9bd9TrviaclheZmhLsYXiavHEZzrl3w9HAfbdQpovuHMus2tlFBHlv5P1pX6JAeKbtWkwcibL3uUibBA/132', '2018-06-28', null, null, '1', null, null, '685', '2', '0', '685', '688086', '13724362394', '2018-06-23 15:06:34');
INSERT INTO `tb_user` VALUES ('950', 'o5ql51fvmyaWXvfEYKhr6yI4GPhg', '', '*耀*', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/3M7mSTGtyicXOeKSta9TuKnp0P3rv229a0gRhexvnUEbictLG9HCYZh5jBic6rCa1JM1ZYHKgO80cr3Z2LMsluoEA/132', '2018-06-23', null, null, '1', null, null, '944', '2', '0', '685', null, null, null);
INSERT INTO `tb_user` VALUES ('951', 'o5ql51U_rJXjWzBzQyf5_1q8FQW8', '', '最美的平凡', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/UywxvjvrjTIxYlXiambVOkbqMfl74tsuxjicY9cicicd6b3v3NPZKibGZpeRzkqXaibQnyULnv3CacjQ0ibVZXZYibuyAA/132', '2018-06-23', null, null, '1', null, null, '944', '2', '0', '685', null, null, null);
INSERT INTO `tb_user` VALUES ('952', 'o5ql51a04p_dFTNCV8WmOcRi6fiQ', '', '未知昵称', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/mJBMAP1d6IfqibnfC8HbquqOdkKicERfNKDwWYzqJVyRXhJfxMLBeVDJdlC4E2ddS7oHZ8mRFud99mRMw7qwRGiaw/132', '2018-06-23', null, null, '1', null, null, '685', '2', '0', '685', null, null, null);
INSERT INTO `tb_user` VALUES ('953', 'o5ql51QRjOhI6JGcDQwHfmvkklAI', '', '小辉', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLnyByPU5fa8mI2LdkH0oUFjnmeCGjsfmTKicYLgcVsuoibkvhpHEWTeGTyPxQNXlW7rNu6clmKH1BQ/132', '2018-06-23', null, null, '1', null, null, '949', '2', '0', '685', null, null, null);
INSERT INTO `tb_user` VALUES ('954', 'o5ql51Q5E3lSxhhBmR6Yvzy-eIqo', '', '《分享经济。分享末来》', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/ajNVdqHZLLAHiadGAr5Q5Gn61TUo74eE9AOXWslLELKEwo885wXnJ3kKuz3GfsTVyEVoYr6h195l6dwNxkWK0Kw/132', '2018-06-23', null, null, '1', null, null, '944', '2', '0', '685', null, null, null);
INSERT INTO `tb_user` VALUES ('955', 'o5ql51cqmsJWTNS1lzH_CuvHzYG0', '', '晓黄', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/icdOLNb8MKhuDRnsiayoZLHWgn5qPqsicMyPeBdB8lsNRQibnkUfWuQjiapkq73GhSw4Xp2DjOPOyIibSYlFySZwjfCA/132', '2018-06-23', null, null, '1', null, null, '710', '2', '0', '685', null, null, null);
INSERT INTO `tb_user` VALUES ('956', 'o5ql51UtFhwWMmM09X2zgf7D8OtI', '', '', '', '', '2018-06-24', null, null, '1', null, null, '680', '2', '0', '680', null, null, null);
INSERT INTO `tb_user` VALUES ('957', 'o5ql51azrOjyaXE5JzG7zefXUF80', '', '玉龙第三国?', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/QyylEWaYibiagJ0UdJmRG5RMiakbVWrYahPwRNicGXPqfnNhwBkIJtqJs70KqMJJP1icsjl4kt5iaw5S76Yka6uCV3pQ/132', '2018-06-24', null, null, '1', null, null, '680', '2', '0', '680', null, null, null);
INSERT INTO `tb_user` VALUES ('958', 'o5ql51cGIhyWgdqZqvM1ukIWdfsc', '', 'Aliye赛宁雷叶', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/JLfpZhYjI746AS5oStr5P3nXG4PJhRcXVRk09ebwUxZpT4kMQYfxkicsPuLyHlvJBOb6Dejly2WafUvdiaDDnYBw/132', '2018-06-24', null, null, '1', null, null, '679', '2', '0', '679', null, null, null);
INSERT INTO `tb_user` VALUES ('959', 'o5ql51dn7pHOYBL3faq5UxxToex4', '', '许洪对', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/WLQDicicWV3Eib3YlabEsSD3icP85J40eLzpRFib1AfHDTZWCe1LxQIQicodiaAUTbmmlh0wRIJp8vicT2X2BnE7K5nunA/132', '2018-06-24', null, null, '1', null, null, '944', '2', '0', '685', null, null, null);
INSERT INTO `tb_user` VALUES ('960', 'o5ql51UaorclrNHl9DM-24IluA88', '', '夜雨风', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIuX8gLyboyM6ibsQ26ELIKr9MZ16gP2myakjCdDC0Tkjiblt4eIAeJKj8YzWhylSP7ibjnIgduMcBPA/132', '2018-06-25', null, null, '1', null, null, '949', '2', '0', '685', null, null, null);
INSERT INTO `tb_user` VALUES ('961', 'o5ql51RuIr7fCJDZBZMBx4W0MRnE', '', '偷心的贼', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/KdJPreGRx6E9Mo44kTbBjcfgib8FFmxcDFtR57F6E070WOq1Ks7CicgGTNWbAPtialg9O1ruNpibX5EZulzPziaZWKA/132', '2018-06-26', null, null, '1', null, null, '685', '2', '0', '685', null, null, null);
INSERT INTO `tb_user` VALUES ('962', 'o5ql51Xm4aggHSh4F9whmR9UiBNA', '', '老程', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/HCeXc20SSFwNs3KWmicsVpoN4L8SlSV7ke6YyF3dbG0K1fcIG4RRYzicvxFzibYVTf0LXMU5jxjNibgjS7yH0xkKJg/132', '2018-06-26', null, null, '1', null, null, '700', '2', '0', '700', null, null, null);
INSERT INTO `tb_user` VALUES ('963', 'o5ql51ciXNit2e9S6iocrhvWW-AI', '张勇', '张勇：智利红酒．茅台白酒．洋酒', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/tIYpSJVp3zkgazC6p6ddLal6PU4VzF0doiaFcansxicibLHdOrnKLMHoo8dSlpyh9MKOwmByaBO3T6fVRP0ja9N9g/132', '2018-06-26', null, null, '1', null, null, null, '1', '0', null, '709662', '13670057005', '2018-06-26 17:31:41');
INSERT INTO `tb_user` VALUES ('964', 'o5ql51Zg3a4hn81a49BJT6dGAvwE', '13809881488', '梁昊 品牌策划 影视制作', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLzW1k062udhr7CdonvLRkWgIDkbU3PHoRzkSajs0CgDaNNePgiawjW2BgxVXqQjg6TjL4zsZzmnKQ/132', '2018-07-02', null, null, '1', null, null, null, '1', '0', null, '864908', '13809881488', '2018-06-26 17:32:20');
INSERT INTO `tb_user` VALUES ('965', 'o5ql51a08G7eUyMBy19RCEbrUBSg', '', '奈何?我们那年', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83er0gy8ich7QOEIWF4ldMyrgtRjjlVH7U9Miafzk0sDva1ZHG50p0W0LfasJvTDoOibiaXgTXP5JxOvVjw/132', '2018-06-26', null, null, '1', null, null, '680', '2', '0', '680', null, null, null);
INSERT INTO `tb_user` VALUES ('966', 'o5ql51RyMgWoBnujkyL0Wd9O9Zj8', '', '沛源管道', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKxFVHLHjo2Q1ibtFhoFsmydK0T9AAhovEEA77ueZ0xFRiabuFI6snSlgRaf8PKLJcp7qPr0icia7W3wQ/132', '2018-06-28', null, null, '1', null, null, null, '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('967', 'o5ql51Wge3yVWlp6LxeXUCM1lwbY', '蔡运良', '不安的熊大', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/H6LctcIC49icmicEzvnywk9e1sMVYoNribKzO0kglDGfDtJsfDH5hJzqV95l57RzzkHTsWs51DM16khJlTicqic9CZg/132', '2018-06-27', null, null, '1', null, null, null, '1', '0', null, '534065', '13714062872', '2018-06-27 17:27:31');
INSERT INTO `tb_user` VALUES ('968', 'o5ql51eQ830RAALCAiBi6WUnxaHI', '', 'YUUY', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/SKiageS2YRyAwiccibz1xiasrgB288u3fCNh8lIobbLDLy8Gu9npVNFvlwGyk2ohdxB27pfibveYFgup0aJumiaqx2dw/132', '2018-06-28', null, null, '1', null, null, null, '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('969', 'o5ql51bDX1vTUuxieA7rQWWo8lBk', '', '坚持', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/2bGkY3VP67bKibC6bKZVD4IgoibY3ibhuEH6F1l2xW3mibdKghkn3hrTFKOOtP2SyWJfP2Nejv1mz9QVQ2d8eOiaTUg/132', '2018-06-28', null, null, '1', null, null, '916', '2', '0', '737', null, null, null);
INSERT INTO `tb_user` VALUES ('970', 'o5ql51f-YU8TbmVZE0qSNlxkqrLQ', '', '谢子凯', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/ry1VVRJdfVrFcDhqMDFAOLD5O7tQ8L3Biaul6BcZ9U2sooG70LibtdDzBrU1XR27CeC39SAjt13qu7G3D7GlGLuw/132', '2018-06-28', null, null, '1', null, null, '969', '2', '0', '737', null, null, null);
INSERT INTO `tb_user` VALUES ('971', 'o5ql51UGNnNBFO2_6tE7eyH3OLy4', '赵英兰', '赵英兰', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/vdEEv5iaiaVibnPDEku2mV20qYcX9gplrEYRhib4verU3TQxH1hDIibWleIGOpay8F8a7D5BXDocoicd3gmiaA2kGALCw/132', '2018-06-29', null, null, '1', null, null, null, '1', '0', null, '509747', '13026669990', '2018-06-28 18:02:08');
INSERT INTO `tb_user` VALUES ('972', 'o5ql51RoKKdMxo6bYn0T-rzatTag', '', '李明英', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLWlSGNhxFVRnicibnVmd0fEn4DCDcQbYKjwoRKDuQcO6AgibLSpybQViarwEEcqKj7plcmkW2h33U6yg/132', '2018-06-28', null, null, '1', null, null, '971', '2', '0', '971', null, null, null);
INSERT INTO `tb_user` VALUES ('973', 'o5ql51aRlD7Lnpf3guS2-AKnj0eQ', '', '', '', '', '2018-06-28', null, null, '1', null, null, '971', '2', '0', '971', null, null, null);
INSERT INTO `tb_user` VALUES ('974', 'o5ql51bzyTVj-KcEf_82jjmrUH4Q', '', 'tina', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/uNltEvlzQFiakHeZFd4q9Sx0CLuCRLgQlfb6IeYqPRqRHBUNnjf9ThzC3B5vR2s2W43kia9eW6gUsylvPwNu8Flw/132', '2018-06-28', null, null, '1', null, null, '971', '2', '0', '971', null, null, null);
INSERT INTO `tb_user` VALUES ('975', 'o5ql51ZeiVHTSH1ybxI7pGpFRlXY', '', '丰盛家居用品', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/CW1FZuPYiaicicsA7icia8KsTQZJ0iaBIgW4o00ZibicJsFSicbrVic2q2WC1cr10j6yic1nz2lSBT6Kj4HVyLlHvKXqCPCibw/132', '2018-06-28', null, null, '1', null, null, '971', '2', '0', '971', null, null, null);
INSERT INTO `tb_user` VALUES ('976', 'o5ql51QqpmiLIjaWkl_W1in7-l80', '孙云鹏', '孙云鹏', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/zehDV2dGTLqTfBVPbx6ZrDAZmaruiac91we7bKoJlpZdiaq1FiaHiaBUicNXf4qfDXDDU4o2c9KMnhtnaUQoYkcFyGQ/132', '2018-06-29', null, null, '1', null, null, '718', '2', '0', '680', '961893', '13691865791', '2018-06-28 21:02:19');
INSERT INTO `tb_user` VALUES ('977', 'o5ql51UGFWKYSGd58JuyhHVm1Ay4', '', '小金', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/zjNWKEHdqzpe0twCgkVuoTEqs86BlxZqc959fUBq6V6hQ0GeoT14lm5v2dprTOibicicNVtDhZzpvCIHjoyy6QK6w/132', '2018-06-28', null, null, '1', null, null, '718', '2', '0', '680', null, null, null);
INSERT INTO `tb_user` VALUES ('978', 'o5ql51ZuVyvsDkLKUO59JmxvQyL4', '', '天涯海角', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/jNpvPmleLr74ENicQ6gvuYod8q8AqPkTfemmQQY9bKT7vS8wibZuVVDpEafj5aBticfZtRodsLIJJQIicOJGjLWwog/132', '2018-06-29', null, null, '1', null, null, '685', '2', '0', '685', null, null, null);
INSERT INTO `tb_user` VALUES ('979', 'o5ql51Xi2LdxsdSn7vVafMtKY7T4', '', '周志龙 15074666600', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJMW3f6jeDLDYD5pXS7XyOMWIcW1nJH2QtMiceEsF09kFdqWYc8dT9AeMOVhgNu4vJLS3xFDskYJFg/132', '2018-06-29', null, null, '1', null, null, '680', '2', '0', '680', null, null, null);
INSERT INTO `tb_user` VALUES ('980', 'o5ql51ZxM_aI6S__4sNUFKPd_4WY', '', '', '', '', '2018-06-29', null, null, '1', null, null, '680', '2', '0', '680', null, null, null);
INSERT INTO `tb_user` VALUES ('981', 'o5ql51SwJPcIl64BvMd0Zd7g8Bb0', '', '子非魚', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoA4OkxLz6jp7QQviafqmhFXHY1IzGBzeAXTsxscxJkuDibiaeDgp2z79DFb5WY1gRZsGLteOo93kK9w/132', '2018-06-29', null, null, '1', null, null, '707', '2', '0', '685', null, null, null);
INSERT INTO `tb_user` VALUES ('982', 'o5ql51SMxVKwKpwMdriWrdAdcWAs', '', 'A中国移动燕子通讯besos', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/WQDibbJpWZqZYpbvVqgPDE7yhoWr7vGUhJkx2zDQc0TbDTh8o9CfeILc7XibG9ESMICAqmqLFwKvL8KcYBTK5Spg/132', '2018-06-29', null, null, '1', null, null, '680', '2', '0', '680', null, null, null);
INSERT INTO `tb_user` VALUES ('983', 'o5ql51eFsNPHW2zc8xT0C0ebU0p4', '', 'Candy Lee', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/XjpcwBwL4qCASXXO86Lk6DcFC00fCTCE2lia5jPegtGEIe8LfcOL0ibadgmiabRaXqbZbxKY2jwibbRRz2JbRcreIg/132', '2018-06-29', null, null, '1', null, null, '707', '2', '0', '685', null, null, null);
INSERT INTO `tb_user` VALUES ('984', 'o5ql51Y4ZIK6Rg_ig_89k19Nnmr0', '', '凌风', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/jGciaKPu6eFSJRwO7fhCKXSQa03fcCKiaQhnyKnov1fApouqWVFgedNEPDU9OTHTRGcR1m4ukicKJMF3BJf9egKKA/132', '2018-06-30', null, null, '1', null, null, '944', '2', '0', '685', null, null, null);
INSERT INTO `tb_user` VALUES ('985', 'o5ql51deNnlEhknsjCfi_ZurMSRo', '', '', '', '', '2018-06-30', null, null, '1', null, null, '834', '2', '0', '834', null, null, null);
INSERT INTO `tb_user` VALUES ('986', 'o5ql51eDYsEbYKW8NrVQ0LkJLldk', '', '笨小孩', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLNoImfsDVTS5ib4shhxAruwcG5CicDJCXREWSBbZuKue0x5APofrtxZRDVciaKjCibwn96NB9NFMIuqg/132', '2018-07-02', null, null, '1', null, null, null, '2', '0', null, null, null, null);
INSERT INTO `tb_user` VALUES ('987', 'o5ql51ZEcbygLcPuX69X3zMKXMCs', '', '晴天', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/kzdcnianU6KH1zEQCHSIBiabTAd4Hia74ubVDyDSZ9lAHxW62WTTdcuPXGgoq6JVEakVqehXicTkR1dtoNeC526fkg/132', '2018-07-02', null, null, '1', null, null, '733', '2', '0', '733', null, null, null);
INSERT INTO `tb_user` VALUES ('988', 'o5ql51cVEpJtarfOyI0y_rg0EOBk', '', '雪花.飞舞', null, 'http://thirdwx.qlogo.cn/mmopen/vi_32/sI15nkYVtKDAA3BRI49YuFt6j8ajQCbjibINUaIqIfBxE8IVWvC6256QpYMXVQCVWBKqMlaEOic43zxtCwzicwx1g/132', '2018-07-02', null, null, '1', null, null, '733', '2', '0', '733', null, null, null);

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
  `oneprofit` float DEFAULT NULL,
  `twoprofit` float DEFAULT NULL,
  `platform` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_wx_setting
-- ----------------------------
INSERT INTO `tb_wx_setting` VALUES ('1', 'wxacfc3a82a242a39b', 'fd0fb2003b09830308107c9d36bccf99', '1501366921', 'DFG15D6R1XD2E5R123FC0B5D31GE5R1T', 'http://xcx.58wyh.com/chihaodian', '0.12', '0.14', '0.19');
