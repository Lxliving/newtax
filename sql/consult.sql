/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80011
Source Host           : localhost:3306
Source Database       : tax

Target Server Type    : MYSQL
Target Server Version : 80011
File Encoding         : 65001

Date: 2018-07-23 11:05:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `consult`
-- ----------------------------
DROP TABLE IF EXISTS `consult`;
CREATE TABLE `consult` (
  `consID` int(20) NOT NULL,
  `consName` varchar(50) NOT NULL,
  `consDetil` varchar(1000) NOT NULL,
  `seenNum` int(11) DEFAULT NULL,
  `ansNum` int(11) DEFAULT NULL,
  `keptNum` int(11) DEFAULT NULL,
  `xuanNum` int(1) DEFAULT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`consID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of consult
-- ----------------------------
INSERT INTO `consult` VALUES ('1', '电子税务的一些知识', '哈哈哈哈哈，我不会', '54', '2', '1', null, '2018-03-01');
INSERT INTO `consult` VALUES ('2', '咨询税收', '交税该怎么班', '31', '3', '1', '3', '2018-03-02');
INSERT INTO `consult` VALUES ('3', '电子税务的定义', '打工是不可能打工的', '58', '3', '2', '5', '2018-04-01');
INSERT INTO `consult` VALUES ('4', '电子税务局', 'emmmm', '32', '2', '1', '1', '2018-04-10');
INSERT INTO `consult` VALUES ('5', '车船税的征收', '1231234314', '123', '2', '2', '5', '2018-05-08');
INSERT INTO `consult` VALUES ('6', '印花税', '嘻嘻嘻', '43', '2', '4', '3', '2018-07-11');
INSERT INTO `consult` VALUES ('7', '我要分享', '怎么做', '34', '6', '3', '5', '2018-07-13');
INSERT INTO `consult` VALUES ('8', '哈哈哈', '哈哈哈', '556', '3', '3', '3', '2018-07-22');
INSERT INTO `consult` VALUES ('9', '规范化', '404', '43', '2', '2', '1', '2018-07-24');
