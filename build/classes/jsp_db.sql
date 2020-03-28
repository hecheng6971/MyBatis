/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : jsp_db

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2020-03-28 13:30:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for exam
-- ----------------------------
DROP TABLE IF EXISTS `exam`;
CREATE TABLE `exam` (
  `id` int(11) NOT NULL COMMENT '学号',
  `chinese` int(11) DEFAULT NULL COMMENT '语文成绩',
  `english` int(11) DEFAULT NULL COMMENT '英语成绩',
  `math` int(11) DEFAULT NULL COMMENT '数学成线',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of exam
-- ----------------------------
INSERT INTO `exam` VALUES ('20200001', '89', '90', '98');
INSERT INTO `exam` VALUES ('20200002', '78', '82', '93');
INSERT INTO `exam` VALUES ('20200003', '90', '73', '95');
INSERT INTO `exam` VALUES ('20200004', '88', '98', '83');
INSERT INTO `exam` VALUES ('20200005', '96', '79', '75');
INSERT INTO `exam` VALUES ('20200006', '77', '98', '82');

-- ----------------------------
-- Table structure for leave_event
-- ----------------------------
DROP TABLE IF EXISTS `leave_event`;
CREATE TABLE `leave_event` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '请假记录ID',
  `stuId` int(11) NOT NULL COMMENT '学生ID',
  `daysFrom` date DEFAULT NULL COMMENT '哪天开始',
  `daysTo` date DEFAULT NULL COMMENT '哪天结束',
  `type` tinyint(4) DEFAULT NULL COMMENT '类型，0病假，1事假',
  `reason` varchar(256) DEFAULT NULL COMMENT '事由',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of leave_event
-- ----------------------------
INSERT INTO `leave_event` VALUES ('1', '20200001', '2020-01-02', '2020-01-03', '0', '感冒');
INSERT INTO `leave_event` VALUES ('2', '20200001', '2020-03-06', '2020-03-08', '0', '发烧');
INSERT INTO `leave_event` VALUES ('3', '20200003', '2020-03-01', '2020-03-07', '1', '出国旅游');
INSERT INTO `leave_event` VALUES ('4', '20200005', '2020-03-07', '2020-03-07', '1', '家里有事');
INSERT INTO `leave_event` VALUES ('5', '20200003', '2020-03-17', '2020-03-18', '0', '不舒服');
INSERT INTO `leave_event` VALUES ('6', '20200004', '2020-03-24', '2020-03-30', '2', '出国');
INSERT INTO `leave_event` VALUES ('9', '20190001', '2020-07-05', '2020-07-10', '1', '休息');
INSERT INTO `leave_event` VALUES ('10', '20200001', '3900-09-21', '3920-10-11', '1', '测试');
INSERT INTO `leave_event` VALUES ('11', '20200001', '2000-08-21', '2020-09-11', '1', '测试');
INSERT INTO `leave_event` VALUES ('12', '20200001', '2000-08-21', '2020-09-11', '1', '测试');
INSERT INTO `leave_event` VALUES ('13', '20200001', '2000-08-21', '2020-09-11', '1', '测试');
INSERT INTO `leave_event` VALUES ('14', '20200001', '2000-08-21', '2020-09-11', '1', '测试');
INSERT INTO `leave_event` VALUES ('15', '20200001', '2000-08-21', '2020-09-11', '1', '测试');
INSERT INTO `leave_event` VALUES ('16', '20200001', '2000-08-21', '2020-09-11', '1', '测试');
INSERT INTO `leave_event` VALUES ('17', '20200001', '2000-08-21', '2020-09-11', '1', '测试');
INSERT INTO `leave_event` VALUES ('18', '20200001', '2000-08-21', '2020-09-11', '1', '测试');

-- ----------------------------
-- Table structure for picture
-- ----------------------------
DROP TABLE IF EXISTS `picture`;
CREATE TABLE `picture` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `realName` varchar(200) DEFAULT NULL COMMENT '原始文件名',
  `name` varchar(200) DEFAULT NULL COMMENT '修改后的文件名',
  `size` bigint(20) DEFAULT NULL COMMENT '文件大小',
  `storePath` varchar(200) DEFAULT NULL COMMENT '存储路径',
  `tag` varchar(100) DEFAULT NULL COMMENT '标签,以逗号分开',
  `timeCreated` datetime DEFAULT NULL,
  `timeModified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of picture
-- ----------------------------
INSERT INTO `picture` VALUES ('5', 'update.png', 'update.png', '1800', '/data/19476D750BB1498D939B3FC7BBF81821.png', '11', '2020-03-26 11:31:12', '2020-03-26 11:31:12');
INSERT INTO `picture` VALUES ('6', 'sns_game_bk.png', 'sns_game_bk.png', '741', '/data/6DEAA232CF554A3CB1EC07F7E2C76BE1.png', '2222', '2020-03-26 11:31:18', '2020-03-26 11:31:18');
INSERT INTO `picture` VALUES ('7', 'sns_tab_close.png', 'sns_tab_close.png', '3178', '/data/C822940C6D244175A1CE9C3ED329504D.png', '3333', '2020-03-26 11:31:29', '2020-03-26 11:31:29');
INSERT INTO `picture` VALUES ('8', 'Screenshot_2017-10-22-22-29-24.png', 'Screenshot_2017-10-22-22-29-24.png', '1120462', '/data/F6DE751F70E642478F23BB9DE598ED81.png', '333', '2020-03-26 23:29:11', '2020-03-26 23:29:11');
INSERT INTO `picture` VALUES ('9', 'Screenshot_2017-10-22-22-29-24.png', 'Screenshot_2017-10-22-22-29-24.png', '1120462', '/data/D60CB1A942F040158DD736F0B80AC3A6.png', '444', '2020-03-26 23:29:20', '2020-03-26 23:29:20');
INSERT INTO `picture` VALUES ('10', 'Screenshot_2017-10-22-22-29-24.png', 'Screenshot_2017-10-22-22-29-24.png', '1120462', '/data/F944F77051E2479C96345E7EF6FECA6C.png', '555', '2020-03-26 23:29:26', '2020-03-26 23:29:26');
INSERT INTO `picture` VALUES ('11', 'Screenshot_2017-10-22-22-29-24.png', 'Screenshot_2017-10-22-22-29-24.png', '1120462', '/data/B3772630CED0491FB83A307D687FEA7D.png', '666', '2020-03-26 23:29:32', '2020-03-26 23:29:32');
INSERT INTO `picture` VALUES ('12', 'Screenshot_2017-10-22-22-29-24.png', 'Screenshot_2017-10-22-22-29-24.png', '1120462', '/data/21F072251D024AE9A21678AE5F913F10.png', '777', '2020-03-26 23:29:39', '2020-03-26 23:29:39');
INSERT INTO `picture` VALUES ('13', 'Screenshot_2017-10-22-22-29-24.png', 'Screenshot_2017-10-22-22-29-24.png', '1120462', '/data/DD383E8E94374857A756C536A0E06E0C.png', '888', '2020-03-26 23:29:45', '2020-03-26 23:29:45');
INSERT INTO `picture` VALUES ('14', 'Screenshot_2017-10-22-22-29-24.png', 'Screenshot_2017-10-22-22-29-24.png', '1120462', '/data/BC27C33D21EB4B01AD620BC4588C3A60.png', '999', '2020-03-26 23:29:52', '2020-03-26 23:29:52');
INSERT INTO `picture` VALUES ('15', 'Screenshot_2017-10-22-22-29-24.png', 'Screenshot_2017-10-22-22-29-24.png', '1120462', '/data/3D3C3F5D38AF4CBBB530D4DAB5DD46A0.png', '000', '2020-03-26 23:29:59', '2020-03-26 23:29:59');
INSERT INTO `picture` VALUES ('16', 'Screenshot_2017-10-22-22-29-24.png', 'Screenshot_2017-10-22-22-29-24.png', '1120462', '/data/1AC302BFEC5245D6B1BB42A9CC7086C2.png', '443', '2020-03-26 23:30:09', '2020-03-26 23:30:09');
INSERT INTO `picture` VALUES ('17', 'Screenshot_2017-10-22-22-29-24.png', 'Screenshot_2017-10-22-22-29-24.png', '1120462', '/data/58602D68FDA74E52AF892708204558CD.png', '5345', '2020-03-26 23:30:15', '2020-03-26 23:30:15');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(11) NOT NULL COMMENT '学号',
  `name` varchar(32) NOT NULL COMMENT '姓名',
  `sex` tinyint(1) DEFAULT NULL COMMENT '性别',
  `phone` varchar(16) DEFAULT '13800000000' COMMENT '手机号',
  `birthday` date DEFAULT NULL COMMENT '生日',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('20190202', '杨玉环', '0', '13600000001', null);
INSERT INTO `student` VALUES ('20200001', '刘伟', '1', '13810011118', '2011-05-05');
INSERT INTO `student` VALUES ('20200002', '曹操', '1', '1282399999', '1993-10-01');
INSERT INTO `student` VALUES ('20200003', '刘备', '1', null, '1996-03-11');
INSERT INTO `student` VALUES ('20200004', '孙权', '1', null, '1982-09-24');
INSERT INTO `student` VALUES ('20200005', '吕布', '1', '13699292899', '1983-11-21');
INSERT INTO `student` VALUES ('20200006', '公孙策', '0', '13819289890', '1998-03-12');
INSERT INTO `student` VALUES ('20200007', '马超', '0', '13800000000', '1978-05-12');
INSERT INTO `student` VALUES ('20200008', '赵云', '1', '13410012908', '1993-09-10');
INSERT INTO `student` VALUES ('20200009', '文丑', '1', '13509890090', '1994-04-20');
INSERT INTO `student` VALUES ('20200010', '司马昭', '1', '18799891829', '2002-04-19');
INSERT INTO `student` VALUES ('20200011', '貂蝉', '0', '13882938990', '2003-06-10');
INSERT INTO `student` VALUES ('20200255', '刘德华', '1', '1381000000', '2020-08-09');
INSERT INTO `student` VALUES ('20201200', '颜良', null, '13800000000', '1997-04-19');
INSERT INTO `student` VALUES ('20201201', '张', null, '13800000000', '1995-05-01');
INSERT INTO `student` VALUES ('22323223', 'wqrqwr', '1', '2134234124', null);
INSERT INTO `student` VALUES ('33333333', '刘刘', '0', '33333333', null);
INSERT INTO `student` VALUES ('55555555', '留22', '1', '24123421341234', null);
INSERT INTO `student` VALUES ('202000111', '张飞', '1', '1300000001', '1990-01-02');

-- ----------------------------
-- Table structure for tbl_address
-- ----------------------------
DROP TABLE IF EXISTS `tbl_address`;
CREATE TABLE `tbl_address` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `city` varchar(20) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `money` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id_UNIQUE` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_address
-- ----------------------------
INSERT INTO `tbl_address` VALUES ('1', 'nanjin', 'china', '1', '100');
INSERT INTO `tbl_address` VALUES ('2', 'beijing', 'china', '2', '200');
INSERT INTO `tbl_address` VALUES ('9', 'guanzou', 'china', '17', '300');
INSERT INTO `tbl_address` VALUES ('10', 'g1111zou', 'c1na', '18', '400');
INSERT INTO `tbl_address` VALUES ('11', 'g111zou', 'ch11na', '19', '500');
INSERT INTO `tbl_address` VALUES ('12', 'guanzou', 'china', '22', '200');
INSERT INTO `tbl_address` VALUES ('13', 'g1111zou', 'c1na', '23', '400');
INSERT INTO `tbl_address` VALUES ('14', 'g111zou', 'ch11na', '24', '600');
INSERT INTO `tbl_address` VALUES ('15', 'nanjing', 'zongguo', '28', null);
INSERT INTO `tbl_address` VALUES ('16', 'nanjing', 'zongguo', '3', null);

-- ----------------------------
-- Table structure for tbl_user
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(50) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES ('1', '刘伟', '111', '55555@qq.com');
INSERT INTO `tbl_user` VALUES ('2', '哇哈哈哈', '1', 'coffee@gmail.com');
INSERT INTO `tbl_user` VALUES ('3', 'coffeeliu', '111111', 'coffee.liu@gmail.com');
INSERT INTO `tbl_user` VALUES ('17', '天王盖地虎', '1111', '33@.mal');
INSERT INTO `tbl_user` VALUES ('18', 'liu222', '1111', '22@.mal');
INSERT INTO `tbl_user` VALUES ('19', 'liu333', '333', '33@.mal');
INSERT INTO `tbl_user` VALUES ('22', 'liu111', '333', '33@.mal');
INSERT INTO `tbl_user` VALUES ('23', 'liu222', '333', '22@.mal');
INSERT INTO `tbl_user` VALUES ('24', 'liu333', '333', '33@.mal');
INSERT INTO `tbl_user` VALUES ('28', 'liuwei134455', '1132', '76876@87879');
INSERT INTO `tbl_user` VALUES ('29', 'wwwww', '5656', '111@s');
INSERT INTO `tbl_user` VALUES ('30', 'eeeee', '8484', null);
INSERT INTO `tbl_user` VALUES ('32', 'liuwei234234234', '111', '22@22.com');
INSERT INTO `tbl_user` VALUES ('33', 'jackliu', '4545454545', 'jackliu@qq.com');
INSERT INTO `tbl_user` VALUES ('36', 'weiweiweiwei1', '11111', 'ddk1j@qq.com');

-- ----------------------------
-- Table structure for tbl_visit
-- ----------------------------
DROP TABLE IF EXISTS `tbl_visit`;
CREATE TABLE `tbl_visit` (
  `Visitid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `Visitdate` datetime NOT NULL,
  `VisitIP` varchar(50) DEFAULT '127.0.0.1',
  PRIMARY KEY (`Visitid`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_visit
-- ----------------------------
INSERT INTO `tbl_visit` VALUES ('1', '1', '2018-05-23 09:56:50', '127.0.0.1');
INSERT INTO `tbl_visit` VALUES ('29', '1', '2018-05-22 09:59:03', '127.0.0.1');
INSERT INTO `tbl_visit` VALUES ('30', '1', '2018-05-06 09:59:32', '127.0.0.1');
INSERT INTO `tbl_visit` VALUES ('31', '2', '2018-05-01 09:59:42', '127.2.0.1');
INSERT INTO `tbl_visit` VALUES ('32', '2', '2018-05-05 10:00:28', '127.0.0.1');
