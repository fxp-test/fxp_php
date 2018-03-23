/*
Navicat MySQL Data Transfer

Source Server         : localhost_127
Source Server Version : 50505
Source Host           : 127.0.0.1:3306
Source Database       : weifuyt

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-03-23 17:03:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `wfyt_address`
-- ----------------------------
DROP TABLE IF EXISTS `wfyt_address`;
CREATE TABLE `wfyt_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '客户地址',
  `client_id` int(11) NOT NULL COMMENT '客户id',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `delete_time` int(11) DEFAULT NULL COMMENT '删除时间',
  `is_delete` tinyint(4) DEFAULT '0' COMMENT '是否删除（0为否，1为是）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of wfyt_address
-- ----------------------------
INSERT INTO `wfyt_address` VALUES ('1', '南宁市第八人民医院', '25', null, null, null, '0');
INSERT INTO `wfyt_address` VALUES ('2', '高新区国电智能大厦', '37', null, null, null, '0');
INSERT INTO `wfyt_address` VALUES ('3', '友爱村友爱细新坡', '25', null, null, null, '0');
INSERT INTO `wfyt_address` VALUES ('4', '明秀西路111号', '25', '1521792741', '1521792741', null, '0');
INSERT INTO `wfyt_address` VALUES ('5', '南湖公园正门对面', '25', '1521793239', '1521794837', null, '0');
INSERT INTO `wfyt_address` VALUES ('6', '友爱路立交往安吉万达广场方向100米', '25', '1521795138', '1521795138', null, '0');
INSERT INTO `wfyt_address` VALUES ('7', '友爱路立交往安吉万达广场方向100米', '25', '1521795139', '1521795139', null, '0');
INSERT INTO `wfyt_address` VALUES ('8', '友爱路立交往安吉万达广场方向100米', '25', '1521795140', '1521795140', null, '1');
INSERT INTO `wfyt_address` VALUES ('9', '友爱路立交往安吉万达广场方向100米', '25', '1521795163', '1521795163', null, '1');
INSERT INTO `wfyt_address` VALUES ('10', '明秀西路111号13', '26', '1521795783', '1521795790', null, '0');

-- ----------------------------
-- Table structure for `wfyt_admin`
-- ----------------------------
DROP TABLE IF EXISTS `wfyt_admin`;
CREATE TABLE `wfyt_admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `real_name` varchar(20) NOT NULL COMMENT '真实姓名',
  `email` varchar(50) NOT NULL,
  `phone` bigint(12) NOT NULL,
  `login_ip` varchar(20) NOT NULL COMMENT '登录IP',
  `create_time` int(11) NOT NULL COMMENT '添加时间',
  `update_time` int(11) NOT NULL COMMENT '更新时间',
  `out_time` int(11) NOT NULL COMMENT '退出时间',
  `login_time` int(11) NOT NULL COMMENT '登录时间',
  `role_id` int(11) NOT NULL COMMENT '角色ID',
  `login_s` int(11) NOT NULL COMMENT '登录次数',
  `sex_id` tinyint(1) NOT NULL,
  `delete_id` tinyint(1) NOT NULL DEFAULT '0' COMMENT '删除ID',
  `state` tinyint(1) NOT NULL COMMENT '状态',
  `remarks` text NOT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wfyt_admin
-- ----------------------------
INSERT INTO `wfyt_admin` VALUES ('1', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'li', '602597185@qq.com', '15278053110', '127.0.0.1', '1521126350', '1521126350', '1521619609', '1521772859', '1', '68', '1', '0', '1', 'aaaaaaaaaaaaaaa');
INSERT INTO `wfyt_admin` VALUES ('2', 'admin1', 'e10adc3949ba59abbe56e057f20f883e', 'ggg', '602597185@qq.com', '15866668888', '127.0.0.1', '1521163523', '1521430233', '1521602299', '1521602290', '1', '1', '2', '0', '1', 'gggggggggggggggggggg');
INSERT INTO `wfyt_admin` VALUES ('3', 'admin2', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '602597185@qq.com', '12266668888', '127.0.0.1', '1521188504', '1521431531', '1521441720', '1521441709', '2', '2', '3', '0', '0', 'ddddddddddddd');
INSERT INTO `wfyt_admin` VALUES ('4', 'admin3', 'e10adc3949ba59abbe56e057f20f883e', 'kkkk', '602597185@qq.com', '12266668888', '', '1521444318', '1521451537', '0', '0', '2', '0', '1', '1', '0', 'kkkkkkkkkkkk');
INSERT INTO `wfyt_admin` VALUES ('5', 'myuser', '25f9e794323b453885f5181f1b624d0b', '测试', '3203931483@qq.com', '18776707786', '', '1521597386', '1521597386', '0', '0', '0', '0', '1', '0', '1', '仅供测试用！~');
INSERT INTO `wfyt_admin` VALUES ('6', '123456', '4297f44b13955235245b2497399d7a93', '123', '123@126.com', '123123', '', '1521615407', '1521615407', '0', '0', '3', '0', '1', '1', '0', '123');

-- ----------------------------
-- Table structure for `wfyt_admin_sex`
-- ----------------------------
DROP TABLE IF EXISTS `wfyt_admin_sex`;
CREATE TABLE `wfyt_admin_sex` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wfyt_admin_sex
-- ----------------------------
INSERT INTO `wfyt_admin_sex` VALUES ('1', '男');
INSERT INTO `wfyt_admin_sex` VALUES ('2', '女');
INSERT INTO `wfyt_admin_sex` VALUES ('3', '保密');

-- ----------------------------
-- Table structure for `wfyt_client`
-- ----------------------------
DROP TABLE IF EXISTS `wfyt_client`;
CREATE TABLE `wfyt_client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET utf8 NOT NULL COMMENT '用户名称',
  `gender` tinyint(4) DEFAULT NULL COMMENT '用户性别（1为男，2为女，3为保密）',
  `phone` bigint(20) DEFAULT NULL COMMENT '用户电话',
  `remarks` text CHARACTER SET utf8 COMMENT '备注',
  `type` tinyint(4) DEFAULT NULL COMMENT '类别（1为购买者，2为供应商）',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `delete_time` int(11) DEFAULT NULL COMMENT '删除时间',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `is_delete` tinyint(4) DEFAULT '0' COMMENT '是否删除（0为否，1为是）',
  `ismember` tinyint(4) DEFAULT NULL COMMENT '是否会员（0为否，1为是）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1 COMMENT='用户信息表';

-- ----------------------------
-- Records of wfyt_client
-- ----------------------------
INSERT INTO `wfyt_client` VALUES ('25', 'admin', '1', '18776707786', '233333333', '1', '1521767721', null, '1521685948', '0', '0');
INSERT INTO `wfyt_client` VALUES ('26', 'admin', '1', '18776707786', null, '2', '1521686140', null, '1521686140', '0', '1');
INSERT INTO `wfyt_client` VALUES ('27', 'admin1', '2', '18776707786', null, '2', '1521686252', null, '1521686252', '0', '1');
INSERT INTO `wfyt_client` VALUES ('28', '123123', '2', '13345678910', null, '2', '1521686338', null, '1521686338', '0', '0');
INSERT INTO `wfyt_client` VALUES ('29', 'user', '1', '18776707786', '1111111111111', '2', '1521707772', null, '1521686566', '0', '0');
INSERT INTO `wfyt_client` VALUES ('30', 'admin1', '2', '13345678910', 'This is test!~', '2', '1521704935', null, '1521686592', '0', '0');
INSERT INTO `wfyt_client` VALUES ('31', 'test', '3', '18776707786', '有毒吧', '2', '1521701020', null, '1521686768', '0', '0');
INSERT INTO `wfyt_client` VALUES ('32', 'myuser', '2', '18776707786', '33娘来了o', '1', '1521705864', null, '1521687121', '0', '0');
INSERT INTO `wfyt_client` VALUES ('36', 'myuser', '1', '18776707786', '123', '2', '1521700107', null, '1521699256', '0', '0');
INSERT INTO `wfyt_client` VALUES ('37', 'myuser1', '3', '18776707786', 'wlgq2', '2', '1521705845', null, '1521699290', '0', '0');
INSERT INTO `wfyt_client` VALUES ('38', 'myuser', '1', '18776707786', '33娘在找你~', '2', '1521704952', null, '1521699294', '0', '0');
INSERT INTO `wfyt_client` VALUES ('39', 'myuser', '3', '18776707786', '123456', '2', '1521707604', null, '1521699353', '0', '1');
INSERT INTO `wfyt_client` VALUES ('40', 'wlgq', '3', '13345678910', '我还能说什么~', '2', '1521707560', null, '1521706036', '0', '1');

-- ----------------------------
-- Table structure for `wfyt_employee`
-- ----------------------------
DROP TABLE IF EXISTS `wfyt_employee`;
CREATE TABLE `wfyt_employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET utf8 NOT NULL COMMENT '员工名称',
  `gender` tinyint(4) DEFAULT NULL COMMENT '员工性别',
  `age` int(11) DEFAULT NULL COMMENT '员工年龄',
  `phone` bigint(20) DEFAULT NULL COMMENT '员工电话',
  `type` tinyint(4) DEFAULT NULL COMMENT '类别',
  `remarks` text CHARACTER SET utf8 COMMENT '备注',
  `is_idle` tinyint(4) DEFAULT '1' COMMENT '是否空闲（1为是，2为否）',
  `is_delete` tinyint(4) DEFAULT '0' COMMENT '是否删除（0为否，1为是）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of wfyt_employee
-- ----------------------------

-- ----------------------------
-- Table structure for `wfyt_power`
-- ----------------------------
DROP TABLE IF EXISTS `wfyt_power`;
CREATE TABLE `wfyt_power` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `auth` varchar(50) NOT NULL,
  `auth_a` varchar(50) NOT NULL,
  `auth_c` varchar(50) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `level` tinyint(1) NOT NULL,
  `delete_id` tinyint(1) NOT NULL DEFAULT '0',
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wfyt_power
-- ----------------------------
INSERT INTO `wfyt_power` VALUES ('1', '管理员管理', '1', '', 'Admin', '0', '0', '0', '0', '0');
INSERT INTO `wfyt_power` VALUES ('2', '角色管理', '1-2', 'role_index', 'Role', '1', '1', '0', '0', '0');
INSERT INTO `wfyt_power` VALUES ('3', '添加角色', '1-2-3', 'role_add', 'Role', '2', '2', '0', '0', '0');
INSERT INTO `wfyt_power` VALUES ('4', '编辑角色', '1-2-4', 'role_edit', 'Role', '2', '2', '0', '0', '0');
INSERT INTO `wfyt_power` VALUES ('5', '删除角色', '1-2-5', 'role_delete', 'Role', '2', '2', '0', '0', '0');
INSERT INTO `wfyt_power` VALUES ('6', '管理员列表', '1-6', 'admin_index', 'Admin', '1', '1', '0', '0', '0');
INSERT INTO `wfyt_power` VALUES ('7', '添加管理员', '1-6-7', 'admin_add', 'Admin', '6', '2', '0', '0', '0');
INSERT INTO `wfyt_power` VALUES ('8', '编辑管理员', '1-6-8', 'admin_edit', 'Admin', '6', '2', '0', '0', '0');
INSERT INTO `wfyt_power` VALUES ('9', '删除管理员', '1-6-9', 'admin_delete', 'Admin', '6', '2', '0', '0', '0');
INSERT INTO `wfyt_power` VALUES ('10', '权限管理', '1-10', 'power_index', 'Power', '1', '1', '0', '0', '0');
INSERT INTO `wfyt_power` VALUES ('11', '添加权限', '1-10-11', 'power_add', 'Power', '10', '2', '0', '0', '0');
INSERT INTO `wfyt_power` VALUES ('12', '编辑权限', '1-10-12', 'power_edit', 'Power', '10', '2', '0', '0', '0');
INSERT INTO `wfyt_power` VALUES ('13', '用户管理', '13', 'clientIndex', 'Client', '0', '0', '0', '0', '0');
INSERT INTO `wfyt_power` VALUES ('14', '角色配置', '1-2-14', 'role_power', 'Role', '2', '2', '0', '0', '0');

-- ----------------------------
-- Table structure for `wfyt_role`
-- ----------------------------
DROP TABLE IF EXISTS `wfyt_role`;
CREATE TABLE `wfyt_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  `power_id` varchar(500) NOT NULL COMMENT '权限ID',
  `role_ac` text NOT NULL,
  `describe` text NOT NULL COMMENT '角色描述',
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `state` tinyint(1) NOT NULL COMMENT '是否开启',
  `delete_id` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wfyt_role
-- ----------------------------
INSERT INTO `wfyt_role` VALUES ('1', '超级管理员', '1,2,3,4,5,14,6,7,8,9,10,11,12,13,15', 'Index/index,Role/role_index,Role/role_add,Role/role_edit,Role/role_delete,Admin/admin_index,Admin/admin_add,Admin/admin_edit,Admin/admin_delete,Power/power_index,Power/power_add,Power/power_edit,Power/power_delete,Role/role_power', '很牛逼的管理员', '1521449410', '1521449410', '1', '0');
INSERT INTO `wfyt_role` VALUES ('2', '一级管理员', '15', 'Index/index', '666的管理员', '1521508630', '1521508630', '1', '0');
INSERT INTO `wfyt_role` VALUES ('3', '二级管理员', '', '', '666的管理员', '1521509134', '1521509134', '0', '1');

-- ----------------------------
-- Table structure for `wyft_order`
-- ----------------------------
DROP TABLE IF EXISTS `wyft_order`;
CREATE TABLE `wyft_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_number` bigint(20) NOT NULL COMMENT '订单号',
  `product_id` int(11) NOT NULL COMMENT '产品id',
  `client_id` int(11) NOT NULL COMMENT '客户id',
  `employee_id` int(11) NOT NULL COMMENT '员工id',
  `date_time` int(11) NOT NULL COMMENT '送水时间',
  `address_id` int(11) NOT NULL COMMENT '送水地址id',
  `buy_number` tinyint(4) NOT NULL COMMENT '购水数量',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `delete_time` int(11) DEFAULT NULL COMMENT '删除时间',
  `is_delete` tinyint(4) DEFAULT '0' COMMENT '是否删除（1为是，0为否）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of wyft_order
-- ----------------------------
