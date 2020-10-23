/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : dbcrud

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2020-10-23 18:56:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `age` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('1', '赵云', '男', '1999-05-20', 'zhaoyun@163.com');
INSERT INTO `tb_user` VALUES ('2', '王静', '女', '2020-09-16', '1234567890@qq.com');
INSERT INTO `tb_user` VALUES ('3', '韩非', '男', '2020-09-28', '3435346346@qq.com');
INSERT INTO `tb_user` VALUES ('5', '姜桂梅', '女', '2000-04-04', 'jiangguimei@163.com');
INSERT INTO `tb_user` VALUES ('6', '张锋', '男', '1991-09-16', 'test1@baomidou.com');
INSERT INTO `tb_user` VALUES ('7', '韩佳', '女', '2004-12-14', 'test1@baomidou.com');
INSERT INTO `tb_user` VALUES ('9', '王京', '男', '2016-06-29', 'test1@baomidou.com');
INSERT INTO `tb_user` VALUES ('10', '王华', '男', '2020-09-29', 'test1@baomidou.com');
INSERT INTO `tb_user` VALUES ('12', '王华', '男', '2020-09-29', 'test1@baomidou.com');
INSERT INTO `tb_user` VALUES ('13', '王华', '男', '2020-09-29', 'test1@baomidou.com');
INSERT INTO `tb_user` VALUES ('14', '王华', '男', '2020-09-29', 'test5@baomidou.com');
INSERT INTO `tb_user` VALUES ('15', '王华', '男', '2020-09-29', 'test5@baomidou.com');
INSERT INTO `tb_user` VALUES ('16', '王华', '男', '2020-09-29', 'test5@baomidou.com');
INSERT INTO `tb_user` VALUES ('17', '王华', '男', '2020-09-29', 'test5@baomidou.com');
INSERT INTO `tb_user` VALUES ('18', '王华', '男', '2020-09-29', 'test5@baomidou.com');
INSERT INTO `tb_user` VALUES ('19', '王华', '男', '2020-09-29', 'test5@baomidou.com');
INSERT INTO `tb_user` VALUES ('20', '王华', '男', '2020-09-29', 'test5@baomidou.com');
INSERT INTO `tb_user` VALUES ('21', '王华', '男', '2020-09-29', 'test5@baomidou.com');
INSERT INTO `tb_user` VALUES ('22', '王华', '男', '2020-09-29', 'test5@baomidou.com');
INSERT INTO `tb_user` VALUES ('23', '王华', '男', '2020-09-29', 'test5@baomidou.com');
INSERT INTO `tb_user` VALUES ('24', '王华', '男', '2020-09-29', 'test5@baomidou.com');
INSERT INTO `tb_user` VALUES ('25', '王华', '男', '2020-09-29', 'test5@baomidou.com');
INSERT INTO `tb_user` VALUES ('26', '王华', '男', '2020-09-29', 'test5@baomidou.com');
INSERT INTO `tb_user` VALUES ('27', '王静', '女', '2020-09-16', 'test1@baomidou.com');
INSERT INTO `tb_user` VALUES ('28', '王静', '女', '2020-09-16', 'test5@baomidou.com');
INSERT INTO `tb_user` VALUES ('29', '王静', '女', '2020-09-16', 'test5@baomidou.com');
INSERT INTO `tb_user` VALUES ('30', '王静', '女', '2020-09-16', 'test5@baomidou.com');
INSERT INTO `tb_user` VALUES ('31', '王静', '女', '2020-09-16', 'test5@baomidou.com');
INSERT INTO `tb_user` VALUES ('32', '王静', '女', '2020-09-16', 'test5@baomidou.com');
INSERT INTO `tb_user` VALUES ('33', '王静', '女', '2020-09-16', 'test5@baomidou.com');
INSERT INTO `tb_user` VALUES ('34', '王静', '女', '2020-09-16', 'test1@baomidou.com');
INSERT INTO `tb_user` VALUES ('35', '王静', '女', '2020-09-16', 'test2@baomidou.com');
INSERT INTO `tb_user` VALUES ('36', '王静', '女', '2020-09-16', 'test3@baomidou.com');
INSERT INTO `tb_user` VALUES ('37', '王静', '女', '2020-09-16', 'test4@baomidou.com');
INSERT INTO `tb_user` VALUES ('38', '王静', '女', '2020-09-16', 'test5@baomidou.com');
INSERT INTO `tb_user` VALUES ('39', '王静', '女', '2020-09-16', 'test5@baomidou.com');
INSERT INTO `tb_user` VALUES ('40', '王静', '女', '2020-09-16', 'test5@baomidou.com');
INSERT INTO `tb_user` VALUES ('41', '王静', '女', '2020-09-16', 'test5@baomidou.com');
INSERT INTO `tb_user` VALUES ('42', '王静', '女', '2020-09-16', 'test5@baomidou.com');
INSERT INTO `tb_user` VALUES ('43', '王静', '女', '2020-09-16', 'test5@baomidou.com');
INSERT INTO `tb_user` VALUES ('44', '王静', '女', '2020-09-16', 'test5@baomidou.com');
INSERT INTO `tb_user` VALUES ('45', '王静', '女', '2020-09-16', 'test5@baomidou.com');
INSERT INTO `tb_user` VALUES ('46', '王静', '女', '2020-09-16', 'test5@baomidou.com');
INSERT INTO `tb_user` VALUES ('48', '王静', '女', '2020-09-16', 'test5@baomidou.com');
INSERT INTO `tb_user` VALUES ('49', '王静', '女', '2020-09-16', 'test5@baomidou.com');
INSERT INTO `tb_user` VALUES ('50', '王静', '女', '2020-09-16', 'test5@baomidou.com');
INSERT INTO `tb_user` VALUES ('52', '王静', '女', '2020-09-16', 'test5@baomidou.com');
INSERT INTO `tb_user` VALUES ('54', '王静', '女', '2020-09-16', 'test5@baomidou.com');
INSERT INTO `tb_user` VALUES ('56', '齐楚', '女', '2020-09-16', 'test5@baomidou.com');
INSERT INTO `tb_user` VALUES ('58', '王静', '女', '2020-09-16', 'test5@baomidou.com');
INSERT INTO `tb_user` VALUES ('59', '王静', '女', '2020-09-16', 'test5@baomidou.com');
INSERT INTO `tb_user` VALUES ('60', '王静', '女', '2020-09-16', 'test5@baomidou.com');
INSERT INTO `tb_user` VALUES ('74', '张华', '男', '1999-11-03', 'zhanghua@139.com');
INSERT INTO `tb_user` VALUES ('75', '李莉', '女', '2000-12-12', 'lili34@139.com');
INSERT INTO `tb_user` VALUES ('76', '肖肖', '女', '1998-08-13', 'huxx@foxmail.com');
INSERT INTO `tb_user` VALUES ('77', '马原', '男', '1998-10-15', 'mayuan@foxmail.com');
INSERT INTO `tb_user` VALUES ('80', '孙梦', '男', '2016-06-14', 'sunmeng@139.com');
INSERT INTO `tb_user` VALUES ('91', '钟晓婷', '女', '1993-01-04', '45367@163.com');
INSERT INTO `tb_user` VALUES ('93', '鲍丰', '男', '2007-05-25', 'baofeng@qq.com');
INSERT INTO `tb_user` VALUES ('94', '赵婷', '男', '2015-06-14', 'zhaoting@foxmail.com');
INSERT INTO `tb_user` VALUES ('95', '', '男', '2020-10-13', '');
