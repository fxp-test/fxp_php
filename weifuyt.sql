/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : weifuyt

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-04-23 17:34:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `wfyt_address`
-- ----------------------------
DROP TABLE IF EXISTS `wfyt_address`;
CREATE TABLE `wfyt_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `province` varchar(20) DEFAULT NULL COMMENT '省/自治区',
  `city` varchar(20) DEFAULT NULL COMMENT '首府城市',
  `district` varchar(20) DEFAULT NULL COMMENT '市区/县',
  `address` varchar(255) DEFAULT NULL COMMENT '客户地址',
  `member_id` int(11) NOT NULL COMMENT '会员id',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `delete_time` int(11) DEFAULT NULL COMMENT '删除时间',
  `is_delete` tinyint(4) DEFAULT '0' COMMENT '是否删除（0为否，1为是）',
  `is_default` tinyint(4) DEFAULT '0' COMMENT '是否默认（1为是）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wfyt_address
-- ----------------------------
INSERT INTO `wfyt_address` VALUES ('1', '广西壮族自治区', '南宁市', '青秀区', '南湖公园正门对面', '21', '1521792742', '1522305889', null, '0', '1');
INSERT INTO `wfyt_address` VALUES ('2', '广西壮族自治区', '南宁市', '西乡塘区', '明秀西路111号12', '1', '1521792743', null, null, '0', '1');
INSERT INTO `wfyt_address` VALUES ('3', '广西壮族自治区', '贵港市', '桂平市', '西山脚下', '2', '1521792744', '1522306699', null, '0', '1');
INSERT INTO `wfyt_address` VALUES ('4', null, null, null, '明秀西路111号', '3', '1521792741', '1521792741', null, '1', '1');
INSERT INTO `wfyt_address` VALUES ('5', '广西壮族自治区', '南宁市', '西乡塘区', '明秀西路111号12', '4', '1521793239', '1521794837', null, '0', '1');
INSERT INTO `wfyt_address` VALUES ('6', '广西壮族自治区', '南宁市', '西乡塘区', '明秀西路111号12', '5', '1521795138', '1521795138', null, '0', '1');
INSERT INTO `wfyt_address` VALUES ('7', null, null, null, '友爱路立交往安吉万达广场方向100米', '6', '1521795139', '1521795139', null, '0', '0');
INSERT INTO `wfyt_address` VALUES ('8', null, null, null, '友爱路立交往安吉万达广场方向100米', '7', '1521795140', '1521795140', null, '1', '0');
INSERT INTO `wfyt_address` VALUES ('9', null, null, null, '友爱路立交往安吉万达广场方向100米', '8', '1521795163', '1521795163', null, '1', '0');
INSERT INTO `wfyt_address` VALUES ('10', '广西壮族自治区', '南宁市', '西乡塘区', '明秀西路111号12', '9', '1521795783', '1522738323', null, '0', '1');
INSERT INTO `wfyt_address` VALUES ('11', '广西壮族自治区', '南宁市', '西乡塘区', '明秀西路111号12', '10', '1522029507', '1522738316', null, '0', '1');
INSERT INTO `wfyt_address` VALUES ('12', '广西壮族自治区', '南宁市', '西乡塘区', '科园十路国电智能大厦1712号', '22', '1522306432', '1522306665', null, '0', '1');
INSERT INTO `wfyt_address` VALUES ('13', '广西壮族自治区', '南宁市', '兴宁区', '朝阳广场南百4层7号店', '23', '1522306851', '1522307417', null, '0', '1');
INSERT INTO `wfyt_address` VALUES ('14', '广西壮族自治区', '南宁市', '兴宁区', '朝阳广场老鼠街1314号', '24', '1522307142', '1522307429', null, '0', '1');
INSERT INTO `wfyt_address` VALUES ('15', '广西壮族自治区', '南宁市', '青秀区', '南湖公园正门对面', '20', '1522373338', '1522373338', null, '0', '1');
INSERT INTO `wfyt_address` VALUES ('16', '广西壮族自治区', '南宁市', '兴宁区', '南湖公园正门对面', '25', '1522394322', '1523179771', null, '0', '1');
INSERT INTO `wfyt_address` VALUES ('17', '广西壮族自治区', '南宁市', '兴宁区', '朝阳广场南百4层7号店', '24', '1522651420', '1522651420', null, '0', '0');
INSERT INTO `wfyt_address` VALUES ('18', '广西壮族自治区', '南宁市', '兴宁区', '南湖公园正门前100米小米商铺', '25', '1522652054', '1523179769', null, '0', '0');
INSERT INTO `wfyt_address` VALUES ('19', '广西壮族自治区', '南宁市', '西乡塘区', '广西民族大学西校区A1栋宿舍楼0624室', '19', '1522738284', '1522738288', null, '0', '1');
INSERT INTO `wfyt_address` VALUES ('20', '北京市', '北京市市辖区', '朝阳区', '朝阳区520号1314室', '26', '1523348927', '1523348988', null, '0', '1');

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
  `last_in_time` int(11) NOT NULL COMMENT '上次登录时间',
  `role_id` int(11) NOT NULL COMMENT '角色ID',
  `login_s` int(11) NOT NULL COMMENT '登录次数',
  `sex_id` tinyint(1) NOT NULL,
  `delete_id` tinyint(1) NOT NULL DEFAULT '0' COMMENT '删除ID',
  `state` tinyint(1) NOT NULL COMMENT '状态',
  `remarks` text NOT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wfyt_admin
-- ----------------------------
INSERT INTO `wfyt_admin` VALUES ('1', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'li', '602597185@qq.com', '15278053110', '127.0.0.1', '1521126350', '1521126350', '1522828185', '1524475354', '1522828134', '1', '120', '1', '0', '1', 'aaaaaaaaaaaaaaa');
INSERT INTO `wfyt_admin` VALUES ('2', 'admin1', 'e10adc3949ba59abbe56e057f20f883e', 'ggg', '602597185@qq.com', '15866668888', '127.0.0.1', '1521163523', '1522056066', '1522199532', '1522199528', '1522199528', '2', '16', '2', '0', '1', 'gggggggggggggggggggg');
INSERT INTO `wfyt_admin` VALUES ('3', 'admin2', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '602597185@qq.com', '12266668888', '127.0.0.1', '1521188504', '1521431531', '1522199586', '1522199572', '1522199572', '2', '13', '3', '0', '1', 'ddddddddddddd');
INSERT INTO `wfyt_admin` VALUES ('4', 'admin3', 'e10adc3949ba59abbe56e057f20f883e', 'kkkk', '602597185@qq.com', '12266668888', '', '1521444318', '1521451537', '0', '0', '0', '2', '0', '1', '1', '0', 'kkkkkkkkkkkk');
INSERT INTO `wfyt_admin` VALUES ('5', 'admin4', 'e10adc3949ba59abbe56e057f20f883e', 'aaaaaaaaa', '602597185@qq.com', '12266668888', '127.0.0.1', '1521684169', '1521684169', '1522200235', '1522200229', '1522200229', '3', '4', '1', '0', '1', '');
INSERT INTO `wfyt_admin` VALUES ('6', 'admin5', 'e10adc3949ba59abbe56e057f20f883e', '豆腐坊', '602597185@qq.com', '12266668888', '', '1521690588', '1521690588', '0', '0', '0', '3', '0', '1', '0', '1', '');
INSERT INTO `wfyt_admin` VALUES ('7', 'admin6', 'e10adc3949ba59abbe56e057f20f883e', '果蔬干', '602597185@qq.com', '15866668888', '', '1521690917', '1521698840', '0', '0', '0', '3', '0', '2', '0', '0', '啦啦啦啦啦绿');
INSERT INTO `wfyt_admin` VALUES ('8', 'admin7', 'e10adc3949ba59abbe56e057f20f883e', 'fdsg', '602597185@qq.com', '12266668888', '', '1521700768', '1521700768', '0', '1521788125', '0', '2', '0', '1', '0', '0', '');
INSERT INTO `wfyt_admin` VALUES ('9', 'admin8', 'e10adc3949ba59abbe56e057f20f883e', '发表讲话', '602597185@qq.com', '12266668888', '', '1522201786', '1522293000', '0', '0', '0', '2', '0', '1', '0', '1', 'fdsgesgearg');
INSERT INTO `wfyt_admin` VALUES ('10', 'admin9', 'e10adc3949ba59abbe56e057f20f883e', '辅材费', '602597185@qq.com', '12266668888', '', '1522292810', '1522292810', '0', '0', '0', '2', '0', '1', '1', '0', 'sacfcasfc');

-- ----------------------------
-- Table structure for `wfyt_admin_sex`
-- ----------------------------
DROP TABLE IF EXISTS `wfyt_admin_sex`;
CREATE TABLE `wfyt_admin_sex` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wfyt_admin_sex
-- ----------------------------
INSERT INTO `wfyt_admin_sex` VALUES ('1', '男');
INSERT INTO `wfyt_admin_sex` VALUES ('2', '女');
INSERT INTO `wfyt_admin_sex` VALUES ('3', '保密');

-- ----------------------------
-- Table structure for `wfyt_album`
-- ----------------------------
DROP TABLE IF EXISTS `wfyt_album`;
CREATE TABLE `wfyt_album` (
  `album_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '相册id',
  `album_name` varchar(255) NOT NULL COMMENT '相册名称',
  `album_cover` varchar(255) NOT NULL COMMENT '相册封面',
  `is_default` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否为默认相册,1代表默认',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `sort` int(10) NOT NULL COMMENT '排序',
  PRIMARY KEY (`album_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of wfyt_album
-- ----------------------------
INSERT INTO `wfyt_album` VALUES ('1', '相册1', 'http://localhost\\uploads/goods\\20180403\\627311df3292ca062b64a7798eb2638a.jpg', '0', '2018-04-02 17:10:18', '0');
INSERT INTO `wfyt_album` VALUES ('2', '相册2', 'http://localhost\\uploads/goods\\20180403\\22497ef9b27b4199b26766ed9e10ee7b.jpg', '0', '2018-04-02 17:11:53', '1');

-- ----------------------------
-- Table structure for `wfyt_album_picture`
-- ----------------------------
DROP TABLE IF EXISTS `wfyt_album_picture`;
CREATE TABLE `wfyt_album_picture` (
  `pic_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '图片id',
  `album_id` int(11) NOT NULL COMMENT '相册id',
  `pic_name` varchar(255) NOT NULL COMMENT '图片名称',
  `pic_cover` varchar(255) NOT NULL COMMENT '图片路径',
  `upload_time` datetime NOT NULL COMMENT '上传时间',
  PRIMARY KEY (`pic_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of wfyt_album_picture
-- ----------------------------
INSERT INTO `wfyt_album_picture` VALUES ('68', '1', '17af7b6c103d7cbb7178c3160ff9589e.jpg', 'http://fxp.cn/index.php\\uploads/goods\\20180408\\17af7b6c103d7cbb7178c3160ff9589e.jpg', '2018-04-08 17:27:47');
INSERT INTO `wfyt_album_picture` VALUES ('50', '1', '4a246c0ee2d25f0d4ca2d7b92fe7b5fd.jpg', 'http://localhost\\uploads/goods\\20180330\\4a246c0ee2d25f0d4ca2d7b92fe7b5fd.jpg', '2018-03-30 16:08:35');
INSERT INTO `wfyt_album_picture` VALUES ('52', '1', '3c8ccd4946ff1dbb56c19133ef1c4840.jpg', 'http://localhost\\uploads/goods\\20180403\\3c8ccd4946ff1dbb56c19133ef1c4840.jpg', '2018-04-03 11:08:52');
INSERT INTO `wfyt_album_picture` VALUES ('61', '2', '0d58343f5daf44699ec320230cffd94f.jpg', 'http://localhost\\uploads/goods\\20180403\\0d58343f5daf44699ec320230cffd94f.jpg', '2018-04-03 17:14:54');
INSERT INTO `wfyt_album_picture` VALUES ('60', '2', '4382cc05af65a422d8dd489c3a44dac1.jpg', 'http://localhost\\uploads/goods\\20180403\\4382cc05af65a422d8dd489c3a44dac1.jpg', '2018-04-03 17:14:01');
INSERT INTO `wfyt_album_picture` VALUES ('55', '2', '22497ef9b27b4199b26766ed9e10ee7b.jpg', 'http://localhost\\uploads/goods\\20180403\\22497ef9b27b4199b26766ed9e10ee7b.jpg', '2018-04-03 11:15:28');
INSERT INTO `wfyt_album_picture` VALUES ('57', '2', 'c90b110a1a37af7b09ba4c0df791c5e3.jpg', 'http://localhost\\uploads/goods\\20180403\\c90b110a1a37af7b09ba4c0df791c5e3.jpg', '2018-04-03 15:16:47');
INSERT INTO `wfyt_album_picture` VALUES ('62', '2', '0cb2d64c2808eb9a25776a5509ef95fb.jpg', 'http://localhost\\uploads/goods\\20180403\\0cb2d64c2808eb9a25776a5509ef95fb.jpg', '2018-04-03 17:15:20');

-- ----------------------------
-- Table structure for `wfyt_goods`
-- ----------------------------
DROP TABLE IF EXISTS `wfyt_goods`;
CREATE TABLE `wfyt_goods` (
  `goods_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `goods_name` varchar(255) NOT NULL COMMENT '商品名称',
  `category_id` int(11) NOT NULL COMMENT '商品分类id',
  `promotion_type` tinyint(3) NOT NULL DEFAULT '0' COMMENT '促销类型 0无促销，1团购，2限时折扣',
  `market_price` decimal(10,2) NOT NULL COMMENT '商品市场价格',
  `price` decimal(19,2) NOT NULL DEFAULT '0.00' COMMENT '商品价格',
  `promotion_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '商品促销价格',
  `shipping_fee` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '运费 0为免运费',
  `stock` int(10) NOT NULL DEFAULT '0' COMMENT '库存',
  `min_stock_alarm` int(10) NOT NULL DEFAULT '0' COMMENT '库存预警',
  `sales` int(10) NOT NULL DEFAULT '0' COMMENT '销售数量',
  `collects` int(10) NOT NULL DEFAULT '0' COMMENT '收藏数量',
  `star` tinyint(3) NOT NULL DEFAULT '5' COMMENT '好评星级',
  `evaluates` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评价数',
  `shares` int(11) NOT NULL DEFAULT '0' COMMENT '分享数',
  `picture` int(11) NOT NULL DEFAULT '0' COMMENT '商品主图',
  `introduction` varchar(255) NOT NULL COMMENT '商品简介，促销语',
  `description` text NOT NULL COMMENT '商品详情',
  `code` varchar(50) NOT NULL COMMENT '商品编号',
  `keywords` varchar(255) NOT NULL COMMENT '商品关键词',
  `goods_spec_format` text NOT NULL COMMENT '商品规格',
  `state` tinyint(3) NOT NULL DEFAULT '1' COMMENT '商品状态 0下架，1正常，10违规（禁售）',
  `create_time` datetime NOT NULL COMMENT '商品添加时间',
  `update_time` datetime DEFAULT NULL COMMENT '商品编辑时间',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `img_id_array` varchar(255) DEFAULT NULL COMMENT '商品图片序列',
  `real_sales` int(11) NOT NULL DEFAULT '0' COMMENT '实际销量',
  PRIMARY KEY (`goods_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of wfyt_goods
-- ----------------------------
INSERT INTO `wfyt_goods` VALUES ('34', '21212', '14', '0', '23.00', '23.00', '23.00', '0.00', '2', '1', '0', '0', '5', '0', '0', '99', '', '', '1831523772830', '', '', '1', '2018-04-15 14:13:50', '2018-04-15 14:13:50', '0', '99', '0');
INSERT INTO `wfyt_goods` VALUES ('35', '21212', '14', '0', '23.00', '23.00', '23.00', '0.00', '2', '1', '0', '0', '5', '0', '0', '99', '', '', '3731523773062', '', '', '1', '2018-04-15 14:17:42', '2018-04-15 14:17:42', '0', '99', '0');
INSERT INTO `wfyt_goods` VALUES ('36', '21212', '14', '0', '23.00', '23.00', '23.00', '0.00', '2', '1', '0', '0', '5', '0', '0', '99', '', '', '6541523773085', '', '', '1', '2018-04-15 14:18:05', '2018-04-15 14:18:05', '0', '99', '0');
INSERT INTO `wfyt_goods` VALUES ('37', '21212', '14', '0', '23.00', '23.00', '23.00', '0.00', '2', '1', '0', '0', '5', '0', '0', '99', '', '', '8131523773097', '', '', '1', '2018-04-15 14:18:17', '2018-04-15 14:18:17', '0', '99', '0');
INSERT INTO `wfyt_goods` VALUES ('32', '啦啦', '14', '0', '2223.00', '2223.00', '2223.00', '0.00', '122', '1', '0', '0', '5', '0', '0', '97', '', '<p>222</p>', '6131523764708', '', '', '1', '2018-04-15 11:58:28', '2018-04-15 11:58:28', '0', '97,96', '0');
INSERT INTO `wfyt_goods` VALUES ('33', '21212', '14', '0', '23.00', '23.00', '23.00', '0.00', '2', '1', '0', '0', '5', '0', '0', '99', '', '', '3531523772777', '', '', '1', '2018-04-15 14:12:57', '2018-04-15 14:12:57', '0', '99', '0');
INSERT INTO `wfyt_goods` VALUES ('30', 'dasdsa ', '14', '0', '1212.00', '1212.00', '1212.00', '0.00', '1', '21', '0', '0', '5', '0', '0', '89', '', '<p>1212121</p>', '2611523346272', '', '', '1', '2018-04-10 15:44:32', '2018-04-10 15:44:32', '0', '89', '0');
INSERT INTO `wfyt_goods` VALUES ('31', '啦啦', '14', '0', '2223.00', '2223.00', '2223.00', '0.00', '122', '1', '0', '0', '5', '0', '0', '97', '', '<p>222</p>', '8621523764641', '', '', '1', '2018-04-15 11:57:21', '2018-04-15 11:57:21', '0', '97,96', '0');
INSERT INTO `wfyt_goods` VALUES ('38', '华裔', '13', '0', '25.00', '25.00', '25.00', '0.00', '100', '4', '0', '0', '5', '0', '0', '100', '', '', '7571523783551', '', '6,5,7,8', '1', '2018-04-15 17:12:31', '2018-04-15 17:12:31', '0', '100', '0');
INSERT INTO `wfyt_goods` VALUES ('39', '花萼', '16', '0', '332.00', '332.00', '332.00', '0.00', '2', '2', '0', '0', '5', '0', '0', '101', '', '', '9401523783787', '', '11,12,10,9', '1', '2018-04-15 17:16:27', '2018-04-15 17:16:27', '0', '101', '0');
INSERT INTO `wfyt_goods` VALUES ('40', '122', '14', '0', '2323.00', '2323.00', '2323.00', '0.00', '323', '2', '0', '0', '5', '0', '0', '105', '', '<p>23</p>', '9911523928940', '', '[{\"spec_name\":\"1\",\"spec_id\":\"235\",\"value\":[{\"spec_value_id\":\"327\",\"spec_value_name\":\"2\",\"spec_name\":\"1\",\"spec_id\":\"235\"},{\"spec_value_id\":\"328\",\"spec_value_name\":\"3\",\"spec_name\":\"1\",\"spec_id\":\"235\"}]},{\"spec_name\":\"2\",\"spec_id\":\"236\",\"value\":[{\"spec_value', '1', '2018-04-17 09:35:40', '2018-04-17 09:35:40', '0', '105', '0');
INSERT INTO `wfyt_goods` VALUES ('41', '话语', '14', '0', '122.00', '122.00', '122.00', '0.00', '33', '2', '0', '0', '5', '0', '0', '106', '', '<p>3</p>', '5451523929651', '', '[{\"spec_name\":\"\\u989c\\u8272\",\"spec_id\":\"237\",\"value\":[{\"spec_value_id\":\"331\",\"spec_value_name\":\"\\n\\t\\t\\t\\t\\t\\t\\t\\t\\n\\t\\t\\t\\t\\t\\t\\t\\t\\u767d\\t\\t\\t\\t\\t\\t\\t\\t\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\n\\t\\t\\t\\t\\t\\t\\t\",\"spec_name\":\"\\u989c\\u8272\",\"spec_id\":\"237\"},{\"spec_value_id\":\"332\",\"spec_value_name\":\"\\n\\t\\t\\t\\t\\t\\t\\t\\t\\n\\t\\t\\t\\t\\t\\t\\t\\t\\u7ea2\\t\\t\\t\\t\\t\\t\\t\\t\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\n\\t\\t\\t\\t\\t\\t\\t\",\"spec_name\":\"\\u989c\\u8272\",\"spec_id\":\"237\"}]},{\"spec_name\":\"\\u6570\\u91cf\",\"spec_id\":\"238\",\"value\":[{\"spec_value_id\":\"333\",\"spec_value_name\":\"\\n\\t\\t\\t\\t\\t\\t\\t\\t\\n\\t\\t\\t\\t\\t\\t\\t\\t\\u5341\\u4e2a\\t\\t\\t\\t\\t\\t\\t\\t\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\n\\t\\t\\t\\t\\t\\t\\t\",\"spec_name\":\"\\u6570\\u91cf\",\"spec_id\":\"238\"},{\"spec_value_id\":\"334\",\"spec_value_name\":\"\\n\\t\\t\\t\\t\\t\\t\\t\\t\\n\\t\\t\\t\\t\\t\\t\\t\\t\\u4e8c\\u5341\\u4e94\\u4e2a\\t\\t\\t\\t\\t\\t\\t\\t\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\n\\t\\t\\t\\t\\t\\t\\t\",\"spec_name\":\"\\u6570\\u91cf\",\"spec_id\":\"238\"},{\"spec_value_id\":\"489\",\"spec_value_name\":\"\\n\\t\\t\\t\\t\\t\\t\\t\\t32\\t\\t\\t\\t\\t\\t\\t\\t\\n\\t\\t\\t\\t\\t\\t\\t\",\"spec_name\":\"\\u6570\\u91cf\",\"spec_id\":\"238\"}]}]', '1', '2018-04-17 09:47:31', '2018-04-17 09:47:31', '0', '', '0');
INSERT INTO `wfyt_goods` VALUES ('42', '123', '14', '0', '323.00', '323.00', '323.00', '0.00', '32323', '32', '0', '0', '5', '0', '0', '108', '3123', '', '5271524467348', '', '[{\"spec_name\":\"1\",\"spec_id\":\"285\",\"value\":[{\"spec_value_id\":\"481\",\"spec_value_name\":\"23\",\"spec_name\":\"1\",\"spec_id\":\"285\"},{\"spec_value_id\":\"482\",\"spec_value_name\":\"3\",\"spec_name\":\"1\",\"spec_id\":\"285\"}]},{\"spec_name\":\"2\",\"spec_id\":\"286\",\"value\":[{\"spec_value_id\":\"483\",\"spec_value_name\":\"3\",\"spec_name\":\"2\",\"spec_id\":\"286\"},{\"spec_value_id\":\"484\",\"spec_value_name\":\"4\",\"spec_name\":\"2\",\"spec_id\":\"286\"}]}]', '1', '2018-04-23 15:09:08', '2018-04-23 15:09:08', '0', '108', '0');
INSERT INTO `wfyt_goods` VALUES ('43', '测试', '14', '0', '22.00', '22.00', '22.00', '0.00', '3232', '22', '0', '0', '5', '0', '0', '109', '', '<p>22</p>', '2751524468794', '', '[{\"spec_name\":\"\\u6d4b\\u8bd51\",\"spec_id\":\"287\",\"value\":[{\"spec_value_id\":\"490\",\"spec_value_name\":\"\\n\\t\\t\\t\\t\\t\\t\\t\\t111\\t\\t\\t\\t\\t\\t\\t\\t\\n\\t\\t\\t\\t\\t\\t\\t\",\"spec_name\":\"\\u6d4b\\u8bd51\",\"spec_id\":\"287\"},{\"spec_value_id\":\"491\",\"spec_value_name\":\"\\n\\t\\t\\t\\t\\t\\t\\t\\t222\\t\\t\\t\\t\\t\\t\\t\\t\\n\\t\\t\\t\\t\\t\\t\\t\",\"spec_name\":\"\\u6d4b\\u8bd51\",\"spec_id\":\"287\"}]},{\"spec_name\":\"\\u6d4b\\u8bd52\",\"spec_id\":\"288\",\"value\":[{\"spec_value_id\":\"492\",\"spec_value_name\":\"\\n\\t\\t\\t\\t\\t\\t\\t\\t333\\t\\t\\t\\t\\t\\t\\t\\t\\n\\t\\t\\t\\t\\t\\t\\t\",\"spec_name\":\"\\u6d4b\\u8bd52\",\"spec_id\":\"288\"},{\"spec_value_id\":\"493\",\"spec_value_name\":\"\\n\\t\\t\\t\\t\\t\\t\\t\\t444\\t\\t\\t\\t\\t\\t\\t\\t\\n\\t\\t\\t\\t\\t\\t\\t\",\"spec_name\":\"\\u6d4b\\u8bd52\",\"spec_id\":\"288\"}]},{\"spec_name\":\"\\u6d4b\\u8bd53\",\"spec_id\":\"289\",\"value\":[{\"spec_value_id\":\"494\",\"spec_value_name\":\"555\",\"spec_name\":\"\\u6d4b\\u8bd53\",\"spec_id\":\"289\"},{\"spec_value_id\":\"495\",\"spec_value_name\":\"666\",\"spec_name\":\"\\u6d4b\\u8bd53\",\"spec_id\":\"289\"}]}]', '1', '2018-04-23 15:33:14', '2018-04-23 15:33:14', '0', '109', '0');

-- ----------------------------
-- Table structure for `wfyt_goods_category`
-- ----------------------------
DROP TABLE IF EXISTS `wfyt_goods_category`;
CREATE TABLE `wfyt_goods_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品分类id',
  `category_name` varchar(255) NOT NULL COMMENT '商品分类名称',
  `pid` int(11) NOT NULL COMMENT '父id',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`category_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of wfyt_goods_category
-- ----------------------------
INSERT INTO `wfyt_goods_category` VALUES ('19', '苹果', '15', '0', '苹果');
INSERT INTO `wfyt_goods_category` VALUES ('16', '上衣', '13', '0', '');
INSERT INTO `wfyt_goods_category` VALUES ('15', '水果', '14', '0', '苹果果');
INSERT INTO `wfyt_goods_category` VALUES ('14', '食品', '0', '1', '食品...');
INSERT INTO `wfyt_goods_category` VALUES ('13', '衣服', '0', '0', '衣服');
INSERT INTO `wfyt_goods_category` VALUES ('21', '下装', '13', '0', '3232');
INSERT INTO `wfyt_goods_category` VALUES ('22', '西装', '16', '0', '222');

-- ----------------------------
-- Table structure for `wfyt_goods_sku`
-- ----------------------------
DROP TABLE IF EXISTS `wfyt_goods_sku`;
CREATE TABLE `wfyt_goods_sku` (
  `sku_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '表序号',
  `goods_id` int(11) NOT NULL COMMENT '商品id',
  `sku_name` varchar(255) NOT NULL COMMENT 'SKU名称',
  `attr_value_items` varchar(255) NOT NULL COMMENT '属性和属性值 id串 attribute + attribute value 表ID分号分隔',
  `promote_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '促销价格',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '价格',
  `stock` int(11) NOT NULL DEFAULT '0' COMMENT '库存',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`sku_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of wfyt_goods_sku
-- ----------------------------
INSERT INTO `wfyt_goods_sku` VALUES ('13', '40', '2_3', '235:327;236:329', '0.00', '0.00', '0', '2018-04-17 09:35:40', null);
INSERT INTO `wfyt_goods_sku` VALUES ('11', '39', '50_5盒', '151:197;152:198', '0.00', '0.00', '0', '2018-04-15 17:16:27', null);
INSERT INTO `wfyt_goods_sku` VALUES ('12', '39', '50_15', '151:197;152:199', '0.00', '0.00', '0', '2018-04-15 17:16:27', null);
INSERT INTO `wfyt_goods_sku` VALUES ('10', '39', '20_15', '151:196;152:199', '0.00', '0.00', '0', '2018-04-15 17:16:27', null);
INSERT INTO `wfyt_goods_sku` VALUES ('9', '39', '20_5盒', '151:196;152:198', '0.00', '0.00', '0', '2018-04-15 17:16:27', null);
INSERT INTO `wfyt_goods_sku` VALUES ('14', '40', '2_4', '235:327;236:330', '0.00', '0.00', '0', '2018-04-17 09:35:40', null);
INSERT INTO `wfyt_goods_sku` VALUES ('15', '40', '3_3', '235:328;236:329', '0.00', '0.00', '0', '2018-04-17 09:35:40', null);
INSERT INTO `wfyt_goods_sku` VALUES ('16', '40', '3_4', '235:328;236:330', '0.00', '0.00', '0', '2018-04-17 09:35:40', null);
INSERT INTO `wfyt_goods_sku` VALUES ('17', '41', '\n								白								\n							_\n								十个								\n							', '237:331;238:333', '20.00', '22.00', '55', '2018-04-17 09:47:31', null);
INSERT INTO `wfyt_goods_sku` VALUES ('18', '41', '\n								白								\n							_\n								二十五个								\n							', '237:331;238:334', '60.00', '60.00', '50', '2018-04-17 09:47:31', null);
INSERT INTO `wfyt_goods_sku` VALUES ('19', '41', '\n								红								\n							_\n								十个								\n							', '237:332;238:333', '40.00', '44.00', '70', '2018-04-17 09:47:31', null);
INSERT INTO `wfyt_goods_sku` VALUES ('20', '41', '\n								红								\n							_\n								二十五个								\n							', '237:332;238:334', '70.00', '70.00', '40', '2018-04-17 09:47:31', null);
INSERT INTO `wfyt_goods_sku` VALUES ('21', '42', '23_3', '285:481;286:483', '0.00', '0.00', '0', '2018-04-23 15:09:08', null);
INSERT INTO `wfyt_goods_sku` VALUES ('22', '42', '23_4', '285:481;286:484', '0.00', '0.00', '0', '2018-04-23 15:09:08', null);
INSERT INTO `wfyt_goods_sku` VALUES ('23', '42', '3_3', '285:482;286:483', '0.00', '0.00', '0', '2018-04-23 15:09:08', null);
INSERT INTO `wfyt_goods_sku` VALUES ('24', '42', '3_4', '285:482;286:484', '0.00', '0.00', '0', '2018-04-23 15:09:08', null);
INSERT INTO `wfyt_goods_sku` VALUES ('25', '0', '\n								白								\n							_32', '237:331;238:489', '0.00', '43.00', '12', null, null);
INSERT INTO `wfyt_goods_sku` VALUES ('26', '0', '\n								红								\n							_32', '237:332;238:489', '0.00', '23.00', '0', null, null);
INSERT INTO `wfyt_goods_sku` VALUES ('27', '43', '111_333', '287:490;288:492', '45.00', '50.00', '40', '2018-04-23 15:33:14', null);
INSERT INTO `wfyt_goods_sku` VALUES ('28', '43', '111_444', '287:490;288:493', '45.00', '50.00', '52', '2018-04-23 15:33:14', null);
INSERT INTO `wfyt_goods_sku` VALUES ('29', '43', '222_333', '287:491;288:492', '100.00', '100.00', '55', '2018-04-23 15:33:14', null);
INSERT INTO `wfyt_goods_sku` VALUES ('30', '43', '222_444', '287:491;288:493', '100.00', '100.00', '44', '2018-04-23 15:33:14', null);
INSERT INTO `wfyt_goods_sku` VALUES ('31', '0', '111_333_555', '287:490;288:492;289:494', '50.00', '50.00', '52', null, null);
INSERT INTO `wfyt_goods_sku` VALUES ('32', '0', '111_333_666', '287:490;288:492;289:495', '60.00', '60.00', '40', null, null);
INSERT INTO `wfyt_goods_sku` VALUES ('33', '0', '111_444_555', '287:490;288:493;289:494', '70.00', '70.00', '45', null, null);
INSERT INTO `wfyt_goods_sku` VALUES ('34', '0', '111_444_666', '287:490;288:493;289:495', '80.00', '80.00', '45', null, null);
INSERT INTO `wfyt_goods_sku` VALUES ('35', '0', '222_333_555', '287:491;288:492;289:494', '90.00', '90.00', '56', null, null);
INSERT INTO `wfyt_goods_sku` VALUES ('36', '0', '222_333_666', '287:491;288:492;289:495', '100.00', '100.00', '54', null, null);
INSERT INTO `wfyt_goods_sku` VALUES ('37', '0', '222_444_555', '287:491;288:493;289:494', '110.00', '110.00', '7', null, null);
INSERT INTO `wfyt_goods_sku` VALUES ('38', '0', '222_444_666', '287:491;288:493;289:495', '120.00', '120.00', '5', null, null);

-- ----------------------------
-- Table structure for `wfyt_goods_spec`
-- ----------------------------
DROP TABLE IF EXISTS `wfyt_goods_spec`;
CREATE TABLE `wfyt_goods_spec` (
  `spec_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '属性ID',
  `spec_name` varchar(255) NOT NULL COMMENT '属性名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `show_type` int(11) NOT NULL COMMENT '展示方式 1 文字 2 颜色 3 图片',
  PRIMARY KEY (`spec_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=304 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of wfyt_goods_spec
-- ----------------------------
INSERT INTO `wfyt_goods_spec` VALUES ('179', '1', '2018-04-16 15:56:46', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('178', '1', '2018-04-16 15:54:50', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('177', '1', '2018-04-16 15:54:21', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('176', '1', '2018-04-16 15:52:11', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('175', '1', '2018-04-16 15:51:18', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('174', '1', '2018-04-16 15:50:04', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('173', '1', '2018-04-16 15:49:23', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('172', '4', '2018-04-16 15:48:51', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('171', '1', '2018-04-16 15:48:46', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('170', '2', '2018-04-16 15:47:59', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('169', '1', '2018-04-16 15:47:54', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('168', '1', '2018-04-16 15:45:18', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('167', '2', '2018-04-16 15:41:47', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('166', '212', '2018-04-16 15:39:18', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('165', '323', '2018-04-16 15:39:13', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('164', '1', '2018-04-16 15:38:48', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('163', '1', '2018-04-16 15:38:43', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('162', '32', '2018-04-16 15:38:19', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('161', '12', '2018-04-16 15:38:15', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('160', '2323', '2018-04-16 15:37:20', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('159', '1', '2018-04-16 15:37:13', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('158', '1', '2018-04-16 15:36:01', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('157', '12', '2018-04-16 15:35:55', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('156', '1', '2018-04-16 15:23:26', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('248', '323', '2018-04-17 16:55:56', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('247', '2', '2018-04-17 16:55:27', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('246', '23', '2018-04-17 16:54:15', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('245', '323', '2018-04-17 16:53:27', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('244', '4', '2018-04-17 16:43:52', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('243', '2', '2018-04-17 15:21:43', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('242', '2', '2018-04-17 15:16:48', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('241', '1', '2018-04-17 15:10:53', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('240', '2', '2018-04-17 15:04:33', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('239', '2', '2018-04-17 15:03:32', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('238', '数量', '2018-04-17 09:46:43', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('237', '颜色', '2018-04-17 09:46:31', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('236', '2', '2018-04-17 09:13:39', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('235', '1', '2018-04-17 09:13:34', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('234', '2', '2018-04-16 17:29:08', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('233', '2', '2018-04-16 17:29:04', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('232', '3', '2018-04-16 17:28:25', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('231', '2', '2018-04-16 17:28:22', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('230', '2', '2018-04-16 17:27:55', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('229', '1', '2018-04-16 17:27:51', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('228', '武器而', '2018-04-16 17:16:58', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('227', '去', '2018-04-16 17:16:54', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('226', '2', '2018-04-16 17:14:18', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('225', '2', '2018-04-16 17:14:15', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('224', '2', '2018-04-16 17:11:55', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('223', '2', '2018-04-16 17:11:48', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('222', '2', '2018-04-16 17:10:31', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('221', '3', '2018-04-16 17:10:27', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('220', '2', '2018-04-16 17:09:55', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('219', '2', '2018-04-16 17:09:51', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('218', '2', '2018-04-16 17:09:19', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('217', '2', '2018-04-16 16:44:22', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('216', '2', '2018-04-16 16:39:29', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('215', '32', '2018-04-16 16:37:05', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('214', '2', '2018-04-16 16:36:42', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('213', '12', '2018-04-16 16:36:39', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('212', '23', '2018-04-16 16:34:44', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('211', '32', '2018-04-16 16:34:41', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('210', '23', '2018-04-16 16:34:15', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('209', '3', '2018-04-16 16:34:12', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('208', '2', '2018-04-16 16:34:09', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('289', '测试3', '2018-04-23 15:36:46', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('288', '测试2', '2018-04-23 15:32:11', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('287', '测试1', '2018-04-23 15:31:58', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('286', '2', '2018-04-23 15:08:50', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('285', '1', '2018-04-23 15:08:45', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('284', '2', '2018-04-23 15:08:05', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('283', '1', '2018-04-23 15:08:00', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('282', '1', '2018-04-23 15:05:49', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('281', '1', '2018-04-23 15:05:44', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('280', '4', '2018-04-23 15:04:26', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('279', '3', '2018-04-23 15:04:21', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('278', '4', '2018-04-23 15:03:33', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('277', '1', '2018-04-23 15:03:28', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('276', '3', '2018-04-23 15:00:48', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('275', '2', '2018-04-23 15:00:43', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('274', '2', '2018-04-23 14:43:19', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('273', '3', '2018-04-23 14:39:25', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('272', '2', '2018-04-23 14:36:10', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('271', '33', '2018-04-23 14:21:51', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('270', '32', '2018-04-23 14:20:10', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('269', '3', '2018-04-23 14:19:06', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('268', '3', '2018-04-23 14:18:55', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('267', '3', '2018-04-23 10:58:21', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('266', '32', '2018-04-23 10:56:37', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('265', '2', '2018-04-23 10:32:25', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('264', '2', '2018-04-23 10:31:01', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('263', '2', '2018-04-23 10:18:20', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('262', '2', '2018-04-23 09:24:31', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('261', '2', '2018-04-23 09:05:39', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('260', '23', '2018-04-17 17:07:46', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('259', '23', '2018-04-17 17:07:15', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('258', '323', '2018-04-17 17:06:43', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('257', '23', '2018-04-17 17:05:44', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('256', '23', '2018-04-17 17:05:13', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('255', '32', '2018-04-17 17:01:27', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('254', '2', '2018-04-17 17:00:44', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('253', '23', '2018-04-17 17:00:09', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('252', '32', '2018-04-17 16:59:38', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('251', '23', '2018-04-17 16:58:54', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('250', '23', '2018-04-17 16:57:16', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('249', '32', '2018-04-17 16:56:22', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('207', '23', '2018-04-16 16:31:04', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('206', '3', '2018-04-16 16:31:01', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('205', '42', '2018-04-16 16:27:52', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('204', '23', '2018-04-16 16:27:48', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('203', '21', '2018-04-16 16:26:54', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('202', '32', '2018-04-16 16:26:48', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('201', '32', '2018-04-16 16:25:36', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('200', '23', '2018-04-16 16:25:27', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('199', '323', '2018-04-16 16:14:57', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('198', '323', '2018-04-16 16:14:52', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('197', '32', '2018-04-16 16:13:18', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('196', '12', '2018-04-16 16:12:57', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('195', '4', '2018-04-16 16:12:24', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('194', '1', '2018-04-16 16:12:18', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('193', '32', '2018-04-16 16:11:48', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('192', '323', '2018-04-16 16:11:43', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('191', '3', '2018-04-16 16:09:18', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('190', '23', '2018-04-16 16:09:14', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('189', '23', '2018-04-16 16:08:50', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('188', '23', '2018-04-16 16:08:46', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('187', '8', '2018-04-16 16:05:56', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('186', '-', '2018-04-16 16:05:49', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('185', '323', '2018-04-16 16:03:38', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('184', '23', '2018-04-16 16:03:34', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('183', '32', '2018-04-16 16:01:52', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('182', '12', '2018-04-16 16:01:46', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('181', '2', '2018-04-16 15:58:46', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('180', '12', '2018-04-16 15:57:54', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('155', '1', '2018-04-16 15:23:22', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('154', '233', '2018-04-16 15:20:41', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('153', '设定', '2018-04-16 15:20:33', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('152', '盒装', '2018-04-15 17:15:22', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('151', '大小', '2018-04-15 17:15:04', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('290', '2', '2018-04-23 15:41:57', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('291', '2', '2018-04-23 15:42:25', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('292', '2', '2018-04-23 15:42:30', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('293', '23', '2018-04-23 15:43:53', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('294', '32', '2018-04-23 15:43:58', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('295', '2', '2018-04-23 15:44:14', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('296', '2', '2018-04-23 15:44:33', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('297', '123213', '2018-04-23 17:22:51', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('298', 'we', '2018-04-23 17:23:42', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('299', 'w shuo', '2018-04-23 17:24:24', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('300', '尺寸', '2018-04-23 17:24:33', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('301', '型号', '2018-04-23 17:25:27', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('302', '颜色', '2018-04-23 17:25:59', '1');
INSERT INTO `wfyt_goods_spec` VALUES ('303', '213', '2018-04-23 17:27:39', '1');

-- ----------------------------
-- Table structure for `wfyt_goods_spec_value`
-- ----------------------------
DROP TABLE IF EXISTS `wfyt_goods_spec_value`;
CREATE TABLE `wfyt_goods_spec_value` (
  `spec_value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品属性值ID',
  `spec_id` int(11) NOT NULL COMMENT '商品属性ID',
  `spec_value_name` varchar(255) NOT NULL COMMENT '商品属性值名称',
  `spec_value_data` varchar(255) NOT NULL COMMENT '商品属性值数据',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`spec_value_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=521 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of wfyt_goods_spec_value
-- ----------------------------
INSERT INTO `wfyt_goods_spec_value` VALUES ('202', '154', '123', '', '2018-04-16 15:20:43');
INSERT INTO `wfyt_goods_spec_value` VALUES ('203', '154', '443', '', '2018-04-16 15:20:45');
INSERT INTO `wfyt_goods_spec_value` VALUES ('204', '155', '2', '', '2018-04-16 15:23:23');
INSERT INTO `wfyt_goods_spec_value` VALUES ('355', '237', '33', '', '2018-04-23 09:26:21');
INSERT INTO `wfyt_goods_spec_value` VALUES ('354', '262', '3', '', '2018-04-23 09:24:33');
INSERT INTO `wfyt_goods_spec_value` VALUES ('353', '261', '3', '', '2018-04-23 09:05:41');
INSERT INTO `wfyt_goods_spec_value` VALUES ('352', '260', '4', '', '2018-04-17 17:07:56');
INSERT INTO `wfyt_goods_spec_value` VALUES ('351', '260', '23', '', '2018-04-17 17:07:49');
INSERT INTO `wfyt_goods_spec_value` VALUES ('350', '259', '232', '', '2018-04-17 17:07:22');
INSERT INTO `wfyt_goods_spec_value` VALUES ('349', '258', '23', '', '2018-04-17 17:06:48');
INSERT INTO `wfyt_goods_spec_value` VALUES ('348', '257', '23', '', '2018-04-17 17:05:49');
INSERT INTO `wfyt_goods_spec_value` VALUES ('347', '256', '233', '', '2018-04-17 17:05:17');
INSERT INTO `wfyt_goods_spec_value` VALUES ('346', '255', '231', '', '2018-04-17 17:02:01');
INSERT INTO `wfyt_goods_spec_value` VALUES ('345', '255', '23', '', '2018-04-17 17:01:35');
INSERT INTO `wfyt_goods_spec_value` VALUES ('344', '254', '32', '', '2018-04-17 17:00:56');
INSERT INTO `wfyt_goods_spec_value` VALUES ('343', '245', '23', '', '2018-04-17 16:53:29');
INSERT INTO `wfyt_goods_spec_value` VALUES ('342', '237', '323', '', '2018-04-17 16:44:11');
INSERT INTO `wfyt_goods_spec_value` VALUES ('341', '243', '1', '', '2018-04-17 15:21:47');
INSERT INTO `wfyt_goods_spec_value` VALUES ('340', '242', '3', '', '2018-04-17 15:16:49');
INSERT INTO `wfyt_goods_spec_value` VALUES ('339', '241', '2', '', '2018-04-17 15:10:54');
INSERT INTO `wfyt_goods_spec_value` VALUES ('338', '238', '3', '', '2018-04-17 15:09:15');
INSERT INTO `wfyt_goods_spec_value` VALUES ('337', '238', '2', '', '2018-04-17 15:08:27');
INSERT INTO `wfyt_goods_spec_value` VALUES ('336', '240', '2', '', '2018-04-17 15:04:44');
INSERT INTO `wfyt_goods_spec_value` VALUES ('335', '239', '2', '', '2018-04-17 15:03:40');
INSERT INTO `wfyt_goods_spec_value` VALUES ('334', '238', '二十五个', '', '2018-04-17 09:46:54');
INSERT INTO `wfyt_goods_spec_value` VALUES ('333', '238', '十个', '', '2018-04-17 09:46:49');
INSERT INTO `wfyt_goods_spec_value` VALUES ('332', '237', '红', '', '2018-04-17 09:46:40');
INSERT INTO `wfyt_goods_spec_value` VALUES ('331', '237', '白', '', '2018-04-17 09:46:36');
INSERT INTO `wfyt_goods_spec_value` VALUES ('330', '236', '4', '', '2018-04-17 09:13:43');
INSERT INTO `wfyt_goods_spec_value` VALUES ('329', '236', '3', '', '2018-04-17 09:13:41');
INSERT INTO `wfyt_goods_spec_value` VALUES ('328', '235', '3', '', '2018-04-17 09:13:38');
INSERT INTO `wfyt_goods_spec_value` VALUES ('327', '235', '2', '', '2018-04-17 09:13:36');
INSERT INTO `wfyt_goods_spec_value` VALUES ('326', '234', '3', '', '2018-04-16 17:29:10');
INSERT INTO `wfyt_goods_spec_value` VALUES ('325', '233', '3', '', '2018-04-16 17:29:07');
INSERT INTO `wfyt_goods_spec_value` VALUES ('324', '233', '3', '', '2018-04-16 17:29:05');
INSERT INTO `wfyt_goods_spec_value` VALUES ('323', '232', '2', '', '2018-04-16 17:28:27');
INSERT INTO `wfyt_goods_spec_value` VALUES ('322', '232', '2', '', '2018-04-16 17:28:26');
INSERT INTO `wfyt_goods_spec_value` VALUES ('321', '231', '2', '', '2018-04-16 17:28:23');
INSERT INTO `wfyt_goods_spec_value` VALUES ('320', '229', '3', '', '2018-04-16 17:27:54');
INSERT INTO `wfyt_goods_spec_value` VALUES ('319', '229', '2', '', '2018-04-16 17:27:52');
INSERT INTO `wfyt_goods_spec_value` VALUES ('318', '228', '韦', '', '2018-04-16 17:17:01');
INSERT INTO `wfyt_goods_spec_value` VALUES ('317', '227', '我', '', '2018-04-16 17:16:56');
INSERT INTO `wfyt_goods_spec_value` VALUES ('316', '226', '4', '', '2018-04-16 17:14:19');
INSERT INTO `wfyt_goods_spec_value` VALUES ('315', '225', '3', '', '2018-04-16 17:14:16');
INSERT INTO `wfyt_goods_spec_value` VALUES ('314', '224', '3', '', '2018-04-16 17:11:56');
INSERT INTO `wfyt_goods_spec_value` VALUES ('313', '223', '2', '', '2018-04-16 17:11:53');
INSERT INTO `wfyt_goods_spec_value` VALUES ('312', '223', '3', '', '2018-04-16 17:11:50');
INSERT INTO `wfyt_goods_spec_value` VALUES ('311', '222', '3', '', '2018-04-16 17:10:33');
INSERT INTO `wfyt_goods_spec_value` VALUES ('310', '221', '1', '', '2018-04-16 17:10:30');
INSERT INTO `wfyt_goods_spec_value` VALUES ('309', '221', '2', '', '2018-04-16 17:10:29');
INSERT INTO `wfyt_goods_spec_value` VALUES ('308', '220', '3', '', '2018-04-16 17:09:58');
INSERT INTO `wfyt_goods_spec_value` VALUES ('307', '220', '4', '', '2018-04-16 17:09:56');
INSERT INTO `wfyt_goods_spec_value` VALUES ('306', '219', '3', '', '2018-04-16 17:09:52');
INSERT INTO `wfyt_goods_spec_value` VALUES ('305', '218', '2', '', '2018-04-16 17:09:21');
INSERT INTO `wfyt_goods_spec_value` VALUES ('304', '217', '3', '', '2018-04-16 16:44:25');
INSERT INTO `wfyt_goods_spec_value` VALUES ('303', '216', '3', '', '2018-04-16 16:39:30');
INSERT INTO `wfyt_goods_spec_value` VALUES ('302', '215', '323', '', '2018-04-16 16:37:08');
INSERT INTO `wfyt_goods_spec_value` VALUES ('301', '215', '32', '', '2018-04-16 16:37:06');
INSERT INTO `wfyt_goods_spec_value` VALUES ('300', '214', '211', '', '2018-04-16 16:36:43');
INSERT INTO `wfyt_goods_spec_value` VALUES ('299', '213', '32', '', '2018-04-16 16:36:40');
INSERT INTO `wfyt_goods_spec_value` VALUES ('298', '211', '23', '', '2018-04-16 16:34:43');
INSERT INTO `wfyt_goods_spec_value` VALUES ('297', '209', '23', '', '2018-04-16 16:34:13');
INSERT INTO `wfyt_goods_spec_value` VALUES ('296', '208', '12', '', '2018-04-16 16:34:10');
INSERT INTO `wfyt_goods_spec_value` VALUES ('295', '207', '32', '', '2018-04-16 16:31:05');
INSERT INTO `wfyt_goods_spec_value` VALUES ('294', '206', '3', '', '2018-04-16 16:31:03');
INSERT INTO `wfyt_goods_spec_value` VALUES ('293', '205', '5', '', '2018-04-16 16:27:55');
INSERT INTO `wfyt_goods_spec_value` VALUES ('292', '205', '4', '', '2018-04-16 16:27:54');
INSERT INTO `wfyt_goods_spec_value` VALUES ('291', '204', '3', '', '2018-04-16 16:27:50');
INSERT INTO `wfyt_goods_spec_value` VALUES ('290', '204', '2', '', '2018-04-16 16:27:49');
INSERT INTO `wfyt_goods_spec_value` VALUES ('289', '203', '4', '', '2018-04-16 16:26:57');
INSERT INTO `wfyt_goods_spec_value` VALUES ('288', '203', '3', '', '2018-04-16 16:26:55');
INSERT INTO `wfyt_goods_spec_value` VALUES ('287', '202', '2', '', '2018-04-16 16:26:51');
INSERT INTO `wfyt_goods_spec_value` VALUES ('286', '202', '1', '', '2018-04-16 16:26:50');
INSERT INTO `wfyt_goods_spec_value` VALUES ('285', '201', '4', '', '2018-04-16 16:25:40');
INSERT INTO `wfyt_goods_spec_value` VALUES ('284', '201', '3', '', '2018-04-16 16:25:38');
INSERT INTO `wfyt_goods_spec_value` VALUES ('283', '200', '2', '', '2018-04-16 16:25:33');
INSERT INTO `wfyt_goods_spec_value` VALUES ('282', '200', '1', '', '2018-04-16 16:25:29');
INSERT INTO `wfyt_goods_spec_value` VALUES ('281', '199', '323', '', '2018-04-16 16:14:59');
INSERT INTO `wfyt_goods_spec_value` VALUES ('280', '198', '323', '', '2018-04-16 16:14:56');
INSERT INTO `wfyt_goods_spec_value` VALUES ('279', '198', '3232', '', '2018-04-16 16:14:54');
INSERT INTO `wfyt_goods_spec_value` VALUES ('278', '197', '323', '', '2018-04-16 16:13:19');
INSERT INTO `wfyt_goods_spec_value` VALUES ('277', '196', '323', '', '2018-04-16 16:13:16');
INSERT INTO `wfyt_goods_spec_value` VALUES ('276', '196', '3', '', '2018-04-16 16:12:59');
INSERT INTO `wfyt_goods_spec_value` VALUES ('275', '195', '6', '', '2018-04-16 16:12:27');
INSERT INTO `wfyt_goods_spec_value` VALUES ('274', '195', '5', '', '2018-04-16 16:12:25');
INSERT INTO `wfyt_goods_spec_value` VALUES ('273', '194', '3', '', '2018-04-16 16:12:21');
INSERT INTO `wfyt_goods_spec_value` VALUES ('272', '194', '2', '', '2018-04-16 16:12:19');
INSERT INTO `wfyt_goods_spec_value` VALUES ('271', '193', '323', '', '2018-04-16 16:11:52');
INSERT INTO `wfyt_goods_spec_value` VALUES ('270', '193', '323', '', '2018-04-16 16:11:51');
INSERT INTO `wfyt_goods_spec_value` VALUES ('269', '192', '323', '', '2018-04-16 16:11:47');
INSERT INTO `wfyt_goods_spec_value` VALUES ('268', '192', '323', '', '2018-04-16 16:11:45');
INSERT INTO `wfyt_goods_spec_value` VALUES ('267', '191', '5', '', '2018-04-16 16:09:22');
INSERT INTO `wfyt_goods_spec_value` VALUES ('266', '191', '43', '', '2018-04-16 16:09:21');
INSERT INTO `wfyt_goods_spec_value` VALUES ('265', '190', '2', '', '2018-04-16 16:09:17');
INSERT INTO `wfyt_goods_spec_value` VALUES ('264', '190', '1', '', '2018-04-16 16:09:15');
INSERT INTO `wfyt_goods_spec_value` VALUES ('263', '189', '23', '', '2018-04-16 16:08:51');
INSERT INTO `wfyt_goods_spec_value` VALUES ('262', '188', '3', '', '2018-04-16 16:08:48');
INSERT INTO `wfyt_goods_spec_value` VALUES ('261', '188', '23', '', '2018-04-16 16:08:47');
INSERT INTO `wfyt_goods_spec_value` VALUES ('260', '187', '7', '', '2018-04-16 16:05:57');
INSERT INTO `wfyt_goods_spec_value` VALUES ('259', '186', '09', '', '2018-04-16 16:05:54');
INSERT INTO `wfyt_goods_spec_value` VALUES ('258', '186', '9', '', '2018-04-16 16:05:50');
INSERT INTO `wfyt_goods_spec_value` VALUES ('257', '185', '323', '', '2018-04-16 16:03:40');
INSERT INTO `wfyt_goods_spec_value` VALUES ('256', '184', '32', '', '2018-04-16 16:03:36');
INSERT INTO `wfyt_goods_spec_value` VALUES ('255', '184', '32', '', '2018-04-16 16:03:35');
INSERT INTO `wfyt_goods_spec_value` VALUES ('254', '183', '2', '', '2018-04-16 16:01:56');
INSERT INTO `wfyt_goods_spec_value` VALUES ('253', '183', '3', '', '2018-04-16 16:01:55');
INSERT INTO `wfyt_goods_spec_value` VALUES ('252', '182', '12', '', '2018-04-16 16:01:50');
INSERT INTO `wfyt_goods_spec_value` VALUES ('251', '182', '33', '', '2018-04-16 16:01:48');
INSERT INTO `wfyt_goods_spec_value` VALUES ('250', '181', '3', '', '2018-04-16 15:58:48');
INSERT INTO `wfyt_goods_spec_value` VALUES ('249', '180', '21', '', '2018-04-16 15:57:56');
INSERT INTO `wfyt_goods_spec_value` VALUES ('248', '179', '2', '', '2018-04-16 15:56:48');
INSERT INTO `wfyt_goods_spec_value` VALUES ('247', '178', '2', '', '2018-04-16 15:54:51');
INSERT INTO `wfyt_goods_spec_value` VALUES ('246', '177', '2', '', '2018-04-16 15:54:22');
INSERT INTO `wfyt_goods_spec_value` VALUES ('245', '176', '23', '', '2018-04-16 15:52:17');
INSERT INTO `wfyt_goods_spec_value` VALUES ('244', '176', '3', '', '2018-04-16 15:52:17');
INSERT INTO `wfyt_goods_spec_value` VALUES ('243', '175', '3', '', '2018-04-16 15:51:21');
INSERT INTO `wfyt_goods_spec_value` VALUES ('242', '175', '2', '', '2018-04-16 15:51:20');
INSERT INTO `wfyt_goods_spec_value` VALUES ('241', '174', '3', '', '2018-04-16 15:50:07');
INSERT INTO `wfyt_goods_spec_value` VALUES ('240', '174', '23', '', '2018-04-16 15:50:06');
INSERT INTO `wfyt_goods_spec_value` VALUES ('239', '173', '23', '', '2018-04-16 15:49:25');
INSERT INTO `wfyt_goods_spec_value` VALUES ('238', '172', '6', '', '2018-04-16 15:48:55');
INSERT INTO `wfyt_goods_spec_value` VALUES ('237', '172', '5', '', '2018-04-16 15:48:53');
INSERT INTO `wfyt_goods_spec_value` VALUES ('236', '171', '3', '', '2018-04-16 15:48:49');
INSERT INTO `wfyt_goods_spec_value` VALUES ('235', '171', '2', '', '2018-04-16 15:48:47');
INSERT INTO `wfyt_goods_spec_value` VALUES ('234', '170', '4', '', '2018-04-16 15:48:05');
INSERT INTO `wfyt_goods_spec_value` VALUES ('233', '170', '3', '', '2018-04-16 15:48:03');
INSERT INTO `wfyt_goods_spec_value` VALUES ('232', '169', '33', '', '2018-04-16 15:47:58');
INSERT INTO `wfyt_goods_spec_value` VALUES ('231', '169', '23', '', '2018-04-16 15:47:55');
INSERT INTO `wfyt_goods_spec_value` VALUES ('230', '168', '3', '', '2018-04-16 15:45:21');
INSERT INTO `wfyt_goods_spec_value` VALUES ('229', '168', '2', '', '2018-04-16 15:45:20');
INSERT INTO `wfyt_goods_spec_value` VALUES ('228', '167', '3', '', '2018-04-16 15:41:48');
INSERT INTO `wfyt_goods_spec_value` VALUES ('227', '166', '32', '', '2018-04-16 15:39:21');
INSERT INTO `wfyt_goods_spec_value` VALUES ('226', '166', '21', '', '2018-04-16 15:39:19');
INSERT INTO `wfyt_goods_spec_value` VALUES ('225', '165', '323', '', '2018-04-16 15:39:16');
INSERT INTO `wfyt_goods_spec_value` VALUES ('224', '165', '323', '', '2018-04-16 15:39:14');
INSERT INTO `wfyt_goods_spec_value` VALUES ('223', '164', '1', '', '2018-04-16 15:38:52');
INSERT INTO `wfyt_goods_spec_value` VALUES ('222', '164', '12', '', '2018-04-16 15:38:50');
INSERT INTO `wfyt_goods_spec_value` VALUES ('221', '163', '1', '', '2018-04-16 15:38:46');
INSERT INTO `wfyt_goods_spec_value` VALUES ('220', '163', '1', '', '2018-04-16 15:38:45');
INSERT INTO `wfyt_goods_spec_value` VALUES ('219', '162', '323', '', '2018-04-16 15:38:23');
INSERT INTO `wfyt_goods_spec_value` VALUES ('218', '162', '12', '', '2018-04-16 15:38:21');
INSERT INTO `wfyt_goods_spec_value` VALUES ('217', '161', '21', '', '2018-04-16 15:38:18');
INSERT INTO `wfyt_goods_spec_value` VALUES ('216', '161', '32', '', '2018-04-16 15:38:16');
INSERT INTO `wfyt_goods_spec_value` VALUES ('215', '160', '12', '', '2018-04-16 15:37:24');
INSERT INTO `wfyt_goods_spec_value` VALUES ('214', '160', '3', '', '2018-04-16 15:37:21');
INSERT INTO `wfyt_goods_spec_value` VALUES ('213', '159', '2323', '', '2018-04-16 15:37:17');
INSERT INTO `wfyt_goods_spec_value` VALUES ('212', '159', '3', '', '2018-04-16 15:37:15');
INSERT INTO `wfyt_goods_spec_value` VALUES ('211', '158', '3', '', '2018-04-16 15:36:03');
INSERT INTO `wfyt_goods_spec_value` VALUES ('210', '158', '2', '', '2018-04-16 15:36:02');
INSERT INTO `wfyt_goods_spec_value` VALUES ('209', '157', '3', '', '2018-04-16 15:35:59');
INSERT INTO `wfyt_goods_spec_value` VALUES ('208', '157', '2', '', '2018-04-16 15:35:57');
INSERT INTO `wfyt_goods_spec_value` VALUES ('207', '156', '3', '', '2018-04-16 15:23:30');
INSERT INTO `wfyt_goods_spec_value` VALUES ('206', '156', '2', '', '2018-04-16 15:23:28');
INSERT INTO `wfyt_goods_spec_value` VALUES ('205', '155', '2', '', '2018-04-16 15:23:25');
INSERT INTO `wfyt_goods_spec_value` VALUES ('201', '153', '都是', '', '2018-04-16 15:20:38');
INSERT INTO `wfyt_goods_spec_value` VALUES ('200', '153', '23 ', '', '2018-04-16 15:20:35');
INSERT INTO `wfyt_goods_spec_value` VALUES ('199', '152', '15', '', '2018-04-15 17:15:38');
INSERT INTO `wfyt_goods_spec_value` VALUES ('198', '152', '5盒', '', '2018-04-15 17:15:31');
INSERT INTO `wfyt_goods_spec_value` VALUES ('197', '151', '50', '', '2018-04-15 17:15:14');
INSERT INTO `wfyt_goods_spec_value` VALUES ('196', '151', '20', '', '2018-04-15 17:15:11');
INSERT INTO `wfyt_goods_spec_value` VALUES ('356', '237', '33', '', '2018-04-23 09:44:15');
INSERT INTO `wfyt_goods_spec_value` VALUES ('357', '238', '2', '', '2018-04-23 09:44:34');
INSERT INTO `wfyt_goods_spec_value` VALUES ('358', '237', '2', '', '2018-04-23 09:49:04');
INSERT INTO `wfyt_goods_spec_value` VALUES ('359', '237', '3', '', '2018-04-23 09:59:17');
INSERT INTO `wfyt_goods_spec_value` VALUES ('360', '237', '3', '', '2018-04-23 09:59:41');
INSERT INTO `wfyt_goods_spec_value` VALUES ('361', '237', '2', '', '2018-04-23 10:05:38');
INSERT INTO `wfyt_goods_spec_value` VALUES ('362', '237', '2', '', '2018-04-23 10:09:33');
INSERT INTO `wfyt_goods_spec_value` VALUES ('363', '237', '3', '', '2018-04-23 10:17:31');
INSERT INTO `wfyt_goods_spec_value` VALUES ('364', '237', '3', '', '2018-04-23 10:18:07');
INSERT INTO `wfyt_goods_spec_value` VALUES ('365', '263', '4', '', '2018-04-23 10:18:24');
INSERT INTO `wfyt_goods_spec_value` VALUES ('366', '237', '2', '', '2018-04-23 10:19:46');
INSERT INTO `wfyt_goods_spec_value` VALUES ('367', '238', '2', '', '2018-04-23 10:20:26');
INSERT INTO `wfyt_goods_spec_value` VALUES ('368', '238', '2', '', '2018-04-23 10:23:21');
INSERT INTO `wfyt_goods_spec_value` VALUES ('369', '237', '2', '', '2018-04-23 10:24:08');
INSERT INTO `wfyt_goods_spec_value` VALUES ('370', '237', '2', '', '2018-04-23 10:25:39');
INSERT INTO `wfyt_goods_spec_value` VALUES ('371', '237', '3', '', '2018-04-23 10:30:55');
INSERT INTO `wfyt_goods_spec_value` VALUES ('372', '264', '34', '', '2018-04-23 10:31:10');
INSERT INTO `wfyt_goods_spec_value` VALUES ('373', '238', '32', '', '2018-04-23 10:32:20');
INSERT INTO `wfyt_goods_spec_value` VALUES ('374', '265', '12', '', '2018-04-23 10:32:28');
INSERT INTO `wfyt_goods_spec_value` VALUES ('375', '237', '32', '', '2018-04-23 10:35:02');
INSERT INTO `wfyt_goods_spec_value` VALUES ('376', '237', '32', '', '2018-04-23 10:41:07');
INSERT INTO `wfyt_goods_spec_value` VALUES ('377', '237', '2', '', '2018-04-23 10:43:49');
INSERT INTO `wfyt_goods_spec_value` VALUES ('378', '237', '3', '', '2018-04-23 10:44:21');
INSERT INTO `wfyt_goods_spec_value` VALUES ('379', '237', '2', '', '2018-04-23 10:45:25');
INSERT INTO `wfyt_goods_spec_value` VALUES ('380', '237', '32', '', '2018-04-23 10:45:34');
INSERT INTO `wfyt_goods_spec_value` VALUES ('381', '237', '3', '', '2018-04-23 10:46:08');
INSERT INTO `wfyt_goods_spec_value` VALUES ('382', '237', '23', '', '2018-04-23 10:47:14');
INSERT INTO `wfyt_goods_spec_value` VALUES ('383', '237', '23', '', '2018-04-23 10:48:47');
INSERT INTO `wfyt_goods_spec_value` VALUES ('384', '237', '32', '', '2018-04-23 10:49:29');
INSERT INTO `wfyt_goods_spec_value` VALUES ('385', '237', '2', '', '2018-04-23 10:50:36');
INSERT INTO `wfyt_goods_spec_value` VALUES ('386', '237', '32', '', '2018-04-23 10:50:46');
INSERT INTO `wfyt_goods_spec_value` VALUES ('387', '237', '2', '', '2018-04-23 10:53:20');
INSERT INTO `wfyt_goods_spec_value` VALUES ('388', '237', '2', '', '2018-04-23 10:54:18');
INSERT INTO `wfyt_goods_spec_value` VALUES ('389', '237', '2', '', '2018-04-23 10:54:42');
INSERT INTO `wfyt_goods_spec_value` VALUES ('390', '237', '2', '', '2018-04-23 10:55:25');
INSERT INTO `wfyt_goods_spec_value` VALUES ('391', '237', '32', '', '2018-04-23 10:55:39');
INSERT INTO `wfyt_goods_spec_value` VALUES ('392', '237', '3', '', '2018-04-23 10:56:14');
INSERT INTO `wfyt_goods_spec_value` VALUES ('393', '237', '32', '', '2018-04-23 10:56:31');
INSERT INTO `wfyt_goods_spec_value` VALUES ('394', '266', '11', '', '2018-04-23 10:56:41');
INSERT INTO `wfyt_goods_spec_value` VALUES ('395', '237', '2', '', '2018-04-23 10:58:17');
INSERT INTO `wfyt_goods_spec_value` VALUES ('396', '267', '1', '', '2018-04-23 10:58:23');
INSERT INTO `wfyt_goods_spec_value` VALUES ('397', '237', '32', '', '2018-04-23 11:11:17');
INSERT INTO `wfyt_goods_spec_value` VALUES ('398', '237', '23', '', '2018-04-23 11:15:15');
INSERT INTO `wfyt_goods_spec_value` VALUES ('399', '237', '3', '', '2018-04-23 11:17:40');
INSERT INTO `wfyt_goods_spec_value` VALUES ('400', '237', '32', '', '2018-04-23 11:18:19');
INSERT INTO `wfyt_goods_spec_value` VALUES ('401', '237', '32', '', '2018-04-23 11:19:03');
INSERT INTO `wfyt_goods_spec_value` VALUES ('402', '238', '32', '', '2018-04-23 11:19:07');
INSERT INTO `wfyt_goods_spec_value` VALUES ('403', '238', '3', '', '2018-04-23 11:22:01');
INSERT INTO `wfyt_goods_spec_value` VALUES ('404', '238', '2', '', '2018-04-23 11:24:54');
INSERT INTO `wfyt_goods_spec_value` VALUES ('405', '238', '23', '', '2018-04-23 11:25:02');
INSERT INTO `wfyt_goods_spec_value` VALUES ('406', '238', '55', '', '2018-04-23 11:25:17');
INSERT INTO `wfyt_goods_spec_value` VALUES ('407', '238', '66', '', '2018-04-23 11:32:00');
INSERT INTO `wfyt_goods_spec_value` VALUES ('408', '238', '2', '', '2018-04-23 11:33:04');
INSERT INTO `wfyt_goods_spec_value` VALUES ('409', '237', '23', '', '2018-04-23 11:34:09');
INSERT INTO `wfyt_goods_spec_value` VALUES ('410', '237', '23', '', '2018-04-23 11:34:21');
INSERT INTO `wfyt_goods_spec_value` VALUES ('411', '237', '3', '', '2018-04-23 11:34:28');
INSERT INTO `wfyt_goods_spec_value` VALUES ('412', '238', '23', '', '2018-04-23 11:34:33');
INSERT INTO `wfyt_goods_spec_value` VALUES ('413', '237', '2', '', '2018-04-23 11:34:44');
INSERT INTO `wfyt_goods_spec_value` VALUES ('414', '238', '2', '', '2018-04-23 11:34:50');
INSERT INTO `wfyt_goods_spec_value` VALUES ('415', '238', '23', '', '2018-04-23 11:35:23');
INSERT INTO `wfyt_goods_spec_value` VALUES ('416', '238', '32', '', '2018-04-23 11:37:14');
INSERT INTO `wfyt_goods_spec_value` VALUES ('417', '238', '2', '', '2018-04-23 11:38:25');
INSERT INTO `wfyt_goods_spec_value` VALUES ('418', '238', '23', '', '2018-04-23 11:40:33');
INSERT INTO `wfyt_goods_spec_value` VALUES ('419', '238', '32', '', '2018-04-23 11:40:40');
INSERT INTO `wfyt_goods_spec_value` VALUES ('420', '238', '2', '', '2018-04-23 11:41:40');
INSERT INTO `wfyt_goods_spec_value` VALUES ('421', '238', '32', '', '2018-04-23 11:42:00');
INSERT INTO `wfyt_goods_spec_value` VALUES ('422', '238', '1', '', '2018-04-23 11:42:42');
INSERT INTO `wfyt_goods_spec_value` VALUES ('423', '238', '1', '', '2018-04-23 11:42:44');
INSERT INTO `wfyt_goods_spec_value` VALUES ('424', '238', '23', '', '2018-04-23 11:43:00');
INSERT INTO `wfyt_goods_spec_value` VALUES ('425', '238', '2', '', '2018-04-23 11:57:44');
INSERT INTO `wfyt_goods_spec_value` VALUES ('426', '238', '2', '', '2018-04-23 11:58:19');
INSERT INTO `wfyt_goods_spec_value` VALUES ('427', '238', '2', '', '2018-04-23 11:59:31');
INSERT INTO `wfyt_goods_spec_value` VALUES ('428', '238', '2', '', '2018-04-23 11:59:38');
INSERT INTO `wfyt_goods_spec_value` VALUES ('429', '238', '2', '', '2018-04-23 12:00:19');
INSERT INTO `wfyt_goods_spec_value` VALUES ('430', '238', '22', '', '2018-04-23 14:05:30');
INSERT INTO `wfyt_goods_spec_value` VALUES ('431', '238', '2', '', '2018-04-23 14:08:13');
INSERT INTO `wfyt_goods_spec_value` VALUES ('432', '238', '2', '', '2018-04-23 14:09:43');
INSERT INTO `wfyt_goods_spec_value` VALUES ('433', '238', '32', '', '2018-04-23 14:09:52');
INSERT INTO `wfyt_goods_spec_value` VALUES ('434', '238', '2', '', '2018-04-23 14:10:30');
INSERT INTO `wfyt_goods_spec_value` VALUES ('435', '238', '2', '', '2018-04-23 14:11:45');
INSERT INTO `wfyt_goods_spec_value` VALUES ('436', '238', '2', '', '2018-04-23 14:14:30');
INSERT INTO `wfyt_goods_spec_value` VALUES ('437', '238', '2', '', '2018-04-23 14:15:44');
INSERT INTO `wfyt_goods_spec_value` VALUES ('438', '238', '2', '', '2018-04-23 14:17:23');
INSERT INTO `wfyt_goods_spec_value` VALUES ('439', '238', '3', '', '2018-04-23 14:18:23');
INSERT INTO `wfyt_goods_spec_value` VALUES ('440', '268', '1', '', '2018-04-23 14:18:59');
INSERT INTO `wfyt_goods_spec_value` VALUES ('441', '269', '22', '', '2018-04-23 14:19:08');
INSERT INTO `wfyt_goods_spec_value` VALUES ('442', '270', '11', '', '2018-04-23 14:20:14');
INSERT INTO `wfyt_goods_spec_value` VALUES ('443', '270', 'll', '', '2018-04-23 14:20:33');
INSERT INTO `wfyt_goods_spec_value` VALUES ('444', '271', '11', '', '2018-04-23 14:21:53');
INSERT INTO `wfyt_goods_spec_value` VALUES ('445', '238', '3', '', '2018-04-23 14:35:50');
INSERT INTO `wfyt_goods_spec_value` VALUES ('446', '238', '2', '', '2018-04-23 14:36:03');
INSERT INTO `wfyt_goods_spec_value` VALUES ('447', '272', '3', '', '2018-04-23 14:36:12');
INSERT INTO `wfyt_goods_spec_value` VALUES ('448', '237', '3', '', '2018-04-23 14:38:51');
INSERT INTO `wfyt_goods_spec_value` VALUES ('449', '273', '1', '', '2018-04-23 14:39:26');
INSERT INTO `wfyt_goods_spec_value` VALUES ('450', '274', '3', '', '2018-04-23 14:43:21');
INSERT INTO `wfyt_goods_spec_value` VALUES ('451', '238', '2', '', '2018-04-23 14:43:27');
INSERT INTO `wfyt_goods_spec_value` VALUES ('452', '237', '1', '', '2018-04-23 14:46:52');
INSERT INTO `wfyt_goods_spec_value` VALUES ('453', '237', '12', '', '2018-04-23 14:48:46');
INSERT INTO `wfyt_goods_spec_value` VALUES ('454', '237', '12', '', '2018-04-23 14:48:48');
INSERT INTO `wfyt_goods_spec_value` VALUES ('455', '237', '2', '', '2018-04-23 14:50:17');
INSERT INTO `wfyt_goods_spec_value` VALUES ('456', '237', '32', '', '2018-04-23 14:54:36');
INSERT INTO `wfyt_goods_spec_value` VALUES ('457', '237', '2', '', '2018-04-23 14:54:45');
INSERT INTO `wfyt_goods_spec_value` VALUES ('458', '237', '32', '', '2018-04-23 14:55:09');
INSERT INTO `wfyt_goods_spec_value` VALUES ('459', '237', '3', '', '2018-04-23 14:56:50');
INSERT INTO `wfyt_goods_spec_value` VALUES ('460', '238', '32', '', '2018-04-23 14:58:23');
INSERT INTO `wfyt_goods_spec_value` VALUES ('461', '275', '3', '', '2018-04-23 15:00:45');
INSERT INTO `wfyt_goods_spec_value` VALUES ('462', '275', '1', '', '2018-04-23 15:00:46');
INSERT INTO `wfyt_goods_spec_value` VALUES ('463', '276', '2', '', '2018-04-23 15:00:50');
INSERT INTO `wfyt_goods_spec_value` VALUES ('464', '276', '4', '', '2018-04-23 15:00:52');
INSERT INTO `wfyt_goods_spec_value` VALUES ('465', '277', '2', '', '2018-04-23 15:03:29');
INSERT INTO `wfyt_goods_spec_value` VALUES ('466', '277', '32', '', '2018-04-23 15:03:31');
INSERT INTO `wfyt_goods_spec_value` VALUES ('467', '278', '5', '', '2018-04-23 15:03:35');
INSERT INTO `wfyt_goods_spec_value` VALUES ('468', '278', '6', '', '2018-04-23 15:03:37');
INSERT INTO `wfyt_goods_spec_value` VALUES ('469', '279', '1', '', '2018-04-23 15:04:22');
INSERT INTO `wfyt_goods_spec_value` VALUES ('470', '279', '2', '', '2018-04-23 15:04:24');
INSERT INTO `wfyt_goods_spec_value` VALUES ('471', '280', '2', '', '2018-04-23 15:04:27');
INSERT INTO `wfyt_goods_spec_value` VALUES ('472', '280', '1', '', '2018-04-23 15:04:29');
INSERT INTO `wfyt_goods_spec_value` VALUES ('473', '281', '2', '', '2018-04-23 15:05:46');
INSERT INTO `wfyt_goods_spec_value` VALUES ('474', '281', '3', '', '2018-04-23 15:05:47');
INSERT INTO `wfyt_goods_spec_value` VALUES ('475', '282', '2', '', '2018-04-23 15:05:51');
INSERT INTO `wfyt_goods_spec_value` VALUES ('476', '282', '3', '', '2018-04-23 15:05:52');
INSERT INTO `wfyt_goods_spec_value` VALUES ('477', '283', '2', '', '2018-04-23 15:08:01');
INSERT INTO `wfyt_goods_spec_value` VALUES ('478', '283', '3', '', '2018-04-23 15:08:02');
INSERT INTO `wfyt_goods_spec_value` VALUES ('479', '284', '32', '', '2018-04-23 15:08:07');
INSERT INTO `wfyt_goods_spec_value` VALUES ('480', '284', '4', '', '2018-04-23 15:08:08');
INSERT INTO `wfyt_goods_spec_value` VALUES ('481', '285', '23', '', '2018-04-23 15:08:47');
INSERT INTO `wfyt_goods_spec_value` VALUES ('482', '285', '3', '', '2018-04-23 15:08:48');
INSERT INTO `wfyt_goods_spec_value` VALUES ('483', '286', '3', '', '2018-04-23 15:08:52');
INSERT INTO `wfyt_goods_spec_value` VALUES ('484', '286', '4', '', '2018-04-23 15:08:53');
INSERT INTO `wfyt_goods_spec_value` VALUES ('485', '237', '3', '', '2018-04-23 15:13:19');
INSERT INTO `wfyt_goods_spec_value` VALUES ('486', '237', '1', '', '2018-04-23 15:26:24');
INSERT INTO `wfyt_goods_spec_value` VALUES ('487', '238', '1', '', '2018-04-23 15:27:51');
INSERT INTO `wfyt_goods_spec_value` VALUES ('488', '237', '2', '', '2018-04-23 15:29:00');
INSERT INTO `wfyt_goods_spec_value` VALUES ('489', '238', '32', '', '2018-04-23 15:30:27');
INSERT INTO `wfyt_goods_spec_value` VALUES ('490', '287', '111', '', '2018-04-23 15:32:05');
INSERT INTO `wfyt_goods_spec_value` VALUES ('491', '287', '222', '', '2018-04-23 15:32:07');
INSERT INTO `wfyt_goods_spec_value` VALUES ('492', '288', '333', '', '2018-04-23 15:32:15');
INSERT INTO `wfyt_goods_spec_value` VALUES ('493', '288', '444', '', '2018-04-23 15:32:18');
INSERT INTO `wfyt_goods_spec_value` VALUES ('494', '289', '555', '', '2018-04-23 15:36:48');
INSERT INTO `wfyt_goods_spec_value` VALUES ('495', '289', '666', '', '2018-04-23 15:36:52');
INSERT INTO `wfyt_goods_spec_value` VALUES ('496', '290', '3', '', '2018-04-23 15:41:59');
INSERT INTO `wfyt_goods_spec_value` VALUES ('497', '291', '3', '', '2018-04-23 15:42:26');
INSERT INTO `wfyt_goods_spec_value` VALUES ('498', '291', '4', '', '2018-04-23 15:42:28');
INSERT INTO `wfyt_goods_spec_value` VALUES ('499', '292', '1', '', '2018-04-23 15:42:32');
INSERT INTO `wfyt_goods_spec_value` VALUES ('500', '292', '2', '', '2018-04-23 15:42:40');
INSERT INTO `wfyt_goods_spec_value` VALUES ('501', '293', '1', '', '2018-04-23 15:43:54');
INSERT INTO `wfyt_goods_spec_value` VALUES ('502', '293', '2', '', '2018-04-23 15:43:56');
INSERT INTO `wfyt_goods_spec_value` VALUES ('503', '294', '4', '', '2018-04-23 15:44:01');
INSERT INTO `wfyt_goods_spec_value` VALUES ('504', '294', '5', '', '2018-04-23 15:44:03');
INSERT INTO `wfyt_goods_spec_value` VALUES ('505', '294', '1', '', '2018-04-23 15:44:10');
INSERT INTO `wfyt_goods_spec_value` VALUES ('506', '293', '3', '', '2018-04-23 15:44:12');
INSERT INTO `wfyt_goods_spec_value` VALUES ('507', '295', '4', '', '2018-04-23 15:44:16');
INSERT INTO `wfyt_goods_spec_value` VALUES ('508', '295', '22', '', '2018-04-23 15:44:19');
INSERT INTO `wfyt_goods_spec_value` VALUES ('509', '296', '3', '', '2018-04-23 15:44:34');
INSERT INTO `wfyt_goods_spec_value` VALUES ('510', '296', '4', '', '2018-04-23 15:44:38');
INSERT INTO `wfyt_goods_spec_value` VALUES ('511', '297', '23131', '', '2018-04-23 17:22:54');
INSERT INTO `wfyt_goods_spec_value` VALUES ('512', '297', '2332', '', '2018-04-23 17:23:20');
INSERT INTO `wfyt_goods_spec_value` VALUES ('513', '298', '213', '', '2018-04-23 17:23:46');
INSERT INTO `wfyt_goods_spec_value` VALUES ('514', '300', '12312', '', '2018-04-23 17:24:38');
INSERT INTO `wfyt_goods_spec_value` VALUES ('515', '299', '1231', '', '2018-04-23 17:24:46');
INSERT INTO `wfyt_goods_spec_value` VALUES ('516', '301', 'S', '', '2018-04-23 17:25:33');
INSERT INTO `wfyt_goods_spec_value` VALUES ('517', '301', 'L', '', '2018-04-23 17:25:40');
INSERT INTO `wfyt_goods_spec_value` VALUES ('518', '301', 'M', '', '2018-04-23 17:25:45');
INSERT INTO `wfyt_goods_spec_value` VALUES ('519', '302', 'white', '', '2018-04-23 17:26:04');
INSERT INTO `wfyt_goods_spec_value` VALUES ('520', '303', '1231', '', '2018-04-23 17:27:41');

-- ----------------------------
-- Table structure for `wfyt_member`
-- ----------------------------
DROP TABLE IF EXISTS `wfyt_member`;
CREATE TABLE `wfyt_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET utf8 NOT NULL COMMENT '会员名称',
  `sex` tinyint(4) NOT NULL COMMENT '性别（1为男，2为女，3为保密）',
  `telephone` bigint(20) NOT NULL COMMENT '手机号',
  `email` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '邮箱',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `is_delete` tinyint(4) NOT NULL DEFAULT '2' COMMENT '是否删除（1为是，2为否）',
  `state` tinyint(4) NOT NULL DEFAULT '3' COMMENT '状态（1为启用，2为禁用，3为待审核）',
  `remarks` text CHARACTER SET utf8 COMMENT '备注',
  `is_member` tinyint(4) DEFAULT '1' COMMENT '是否会员（1为是，2为否）',
  `avatar` varchar(125) CHARACTER SET utf8 DEFAULT NULL COMMENT '头像路径',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of wfyt_member
-- ----------------------------
INSERT INTO `wfyt_member` VALUES ('1', 'admin', '1', '13345678910', '123@126.com', '1522050256', '1522051070', '1', '2', '123', '0', null);
INSERT INTO `wfyt_member` VALUES ('2', 'admin', '3', '13345678910', '123@126.com', '1522050260', '1522306699', '2', '2', '123', '1', '20180329/7849808cae02b2844a1e9638d50f1092.jpg');
INSERT INTO `wfyt_member` VALUES ('3', 'admin', '2', '13345678910', '123@126.com', '1522050271', '1522051122', '1', '2', '123', '0', null);
INSERT INTO `wfyt_member` VALUES ('4', 'test', '2', '13345678910', '123@126.com', '1522051554', '1522051554', '1', '2', '213123', '0', null);
INSERT INTO `wfyt_member` VALUES ('5', 'test', '2', '13345678910', '123@126.com', '1522051573', '1522051573', '1', '2', '213123', '0', null);
INSERT INTO `wfyt_member` VALUES ('6', 'myuser', '1', '13345678910', '123@126.com', '1522051594', '1522114096', '1', '2', '131313131313', '1', null);
INSERT INTO `wfyt_member` VALUES ('7', 'myuser', '1', '13345678910', '123@126.com', '1522051679', '1522114076', '1', '2', '222222222', '0', null);
INSERT INTO `wfyt_member` VALUES ('8', 'admin', '2', '13345678901', '123@126.com', '1522056154', '1522056154', '1', '2', '123123', '0', null);
INSERT INTO `wfyt_member` VALUES ('9', 'test', '1', '13345678911', '3203931483@qq.com', '1522056214', '1522738323', '2', '1', '2333333', '1', '20180403/de8073f14d1986887941e8fdeec9beb4.jpg');
INSERT INTO `wfyt_member` VALUES ('10', 'myuser', '2', '13567891023', '123@126.com', '1522056262', '1522738316', '2', '1', '1414141414141414', '1', '20180403/88671d0e840259274413af8992c29b18.jpg');
INSERT INTO `wfyt_member` VALUES ('11', '213', '3', '13567891023', 'fxpsayhip@163.com', '1522056274', '1522113945', '1', '2', '123312', '1', null);
INSERT INTO `wfyt_member` VALUES ('12', '2121', '3', '13567891023', '123@126.com', '1522056288', '1522113856', '1', '2', '怎么破', '0', null);
INSERT INTO `wfyt_member` VALUES ('13', 'myuser', '3', '13567891023', '3203931483@qq.com', '1522056511', '1522113734', '1', '2', '有毒啊', '0', null);
INSERT INTO `wfyt_member` VALUES ('14', 'test', '2', '13567891023', '123@126.com', '1522056600', '1522113741', '1', '2', 'test !~', '0', null);
INSERT INTO `wfyt_member` VALUES ('15', '用户管理', '1', '13567891023', '123@126.com', '1522056736', '1522138346', '1', '2', '123456', '0', null);
INSERT INTO `wfyt_member` VALUES ('16', 'admin', '1', '13567891023', '3203931483@qq.com', '1522056765', '1522056765', '1', '2', '', '1', null);
INSERT INTO `wfyt_member` VALUES ('17', '213', '1', '13567891023', '123@126.com', '1522056851', '1522056851', '1', '2', '123213', '1', null);
INSERT INTO `wfyt_member` VALUES ('18', 'test', '1', '13567891023', '3203931483@qq.com', '1522113353', '1522113353', '1', '2', 'test-ing', '1', null);
INSERT INTO `wfyt_member` VALUES ('19', 'myuser', '3', '13567891023', '3203931483@qq.com', '1522217797', '1522225378', '2', '2', '123123123', '1', '20180328/d89903707432fbd4a5a58546b9ca1406.jpg');
INSERT INTO `wfyt_member` VALUES ('20', 'test', '2', '13567891023', '123@126.com', '1522219211', '1522373338', '2', '1', 'miku殿~', '1', '20180329/b5559772f7b54dc178bcead97a5d3420.jpg');
INSERT INTO `wfyt_member` VALUES ('21', 'myuser', '2', '13567891023', '3203931483@qq.com', '1522220982', '1522305889', '2', '1', '赛高！！', '1', '20180329/616f5804b932d37329c607b2d17a07fc.jpg');
INSERT INTO `wfyt_member` VALUES ('22', 'admin', '1', '13567891023', '3203931483@qq.com', '1522294856', '1522306665', '2', '2', '测试数据！~', '1', '20180329/ecc53e9ba0e8dfc7bfecfa098abceb20.jpg');
INSERT INTO `wfyt_member` VALUES ('23', 'admin', '2', '13567891023', '123@126.com', '1522306851', '1522307417', '2', '1', '测试测试', '1', '20180329/ac570fe63e73edf1e3b7970524f95474.jpg');
INSERT INTO `wfyt_member` VALUES ('24', 'myuser', '1', '13345678910', '3203931483@qq.com', '1522307142', '1522307429', '2', '1', '测试测试~', '1', '20180329/3a548a6c597b8b2a4eb1ddc9c4bc6636.jpg');
INSERT INTO `wfyt_member` VALUES ('25', 'admin', '1', '13567891023', '3203931483@qq.com', '1522394322', '1522394322', '2', '2', 'This is test!~', '1', '20180330/46814abb8ed741a05e01fefd78239079.jpg');
INSERT INTO `wfyt_member` VALUES ('26', 'j_Fla', '2', '13456789012', 'j.fla@163.com', '1523348927', '1523348969', '2', '1', 'aini~aaaaaaa', '1', '20180410/6a1b582ed60466e6c0af3adb4793a744.jpg');

-- ----------------------------
-- Table structure for `wfyt_news`
-- ----------------------------
DROP TABLE IF EXISTS `wfyt_news`;
CREATE TABLE `wfyt_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL COMMENT '标题',
  `author` varchar(20) NOT NULL COMMENT '文章作者',
  `keywords` varchar(100) NOT NULL COMMENT '关键词',
  `type_id` int(11) NOT NULL COMMENT '类型ID',
  `cate_id` int(11) NOT NULL COMMENT '分类ID',
  `frequency` int(11) NOT NULL COMMENT '浏览次数',
  `img_url` varchar(100) NOT NULL COMMENT '缩略图url',
  `img_id` int(11) NOT NULL COMMENT '图片ID',
  `create_time` int(11) NOT NULL COMMENT '添加时间',
  `update_time` int(11) NOT NULL COMMENT '更新时间',
  `state` tinyint(1) NOT NULL COMMENT '状态',
  `delete_id` tinyint(1) NOT NULL DEFAULT '0',
  `abstract` varchar(200) NOT NULL COMMENT '文章摘要',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wfyt_news
-- ----------------------------
INSERT INTO `wfyt_news` VALUES ('1', '这是修改的新闻110', '修改1', '修改1', '1', '2', '0', '20180330/85ebd804c834cb8655d623e9693cd354.jpg', '0', '0', '1522393267', '0', '0', '修改');
INSERT INTO `wfyt_news` VALUES ('2', '这是一条测试的标题', '测试', '测试', '2', '3', '0', '20180330/a3a08a543bee6cec801e5315e978db40.jpg', '0', '0', '1522655957', '1', '0', '测试');
INSERT INTO `wfyt_news` VALUES ('3', '这又是一条测试的标题222', '测试2', '测试2', '2', '4', '0', '20180330/75d36718fab044ad56eb392cc4c0ef9b.jpg', '0', '1522380388', '0', '1', '0', '测试2');
INSERT INTO `wfyt_news` VALUES ('4', '测试标题333', '测试33', '测试33', '1', '7', '0', '20180330/da1fb56b834b662842b7949549cc1305.jpg', '0', '1522381272', '0', '1', '0', '测试33');

-- ----------------------------
-- Table structure for `wfyt_news_cate`
-- ----------------------------
DROP TABLE IF EXISTS `wfyt_news_cate`;
CREATE TABLE `wfyt_news_cate` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `parent_id` int(11) NOT NULL COMMENT '父级ID',
  `auth` char(20) NOT NULL,
  `level` tinyint(1) NOT NULL,
  `description` char(100) NOT NULL,
  `delete_id` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wfyt_news_cate
-- ----------------------------
INSERT INTO `wfyt_news_cate` VALUES ('1', '全部资讯', '0', '1', '0', '请不要删除', '0');
INSERT INTO `wfyt_news_cate` VALUES ('2', '新闻资讯', '1', '1-2', '1', '', '0');
INSERT INTO `wfyt_news_cate` VALUES ('3', '行业新闻', '2', '1-2-3', '2', '发生发放GV山东广播', '0');
INSERT INTO `wfyt_news_cate` VALUES ('4', '公司新闻', '2', '1-2-4', '2', '公司的新闻发发发', '0');
INSERT INTO `wfyt_news_cate` VALUES ('5', '关于我们', '1', '1-5', '1', '发生的郭德纲', '0');
INSERT INTO `wfyt_news_cate` VALUES ('6', '国内新闻', '2', '1-2-6', '2', '放松的观点', '0');
INSERT INTO `wfyt_news_cate` VALUES ('7', '国外新闻', '2', '1-2-7', '2', '', '0');
INSERT INTO `wfyt_news_cate` VALUES ('8', '加入我们', '5', '1-5-8', '2', '', '0');

-- ----------------------------
-- Table structure for `wfyt_news_content`
-- ----------------------------
DROP TABLE IF EXISTS `wfyt_news_content`;
CREATE TABLE `wfyt_news_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content` text,
  `news_id` int(11) NOT NULL,
  `delete_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wfyt_news_content
-- ----------------------------
INSERT INTO `wfyt_news_content` VALUES ('1', '<p>而前后尿频gsdsaaaagggggggggggggggggggggggg22222<br/></p>', '1', '0');
INSERT INTO `wfyt_news_content` VALUES ('2', '<p>gggaaaaaaaaaaaa11<br/></p>', '2', '0');
INSERT INTO `wfyt_news_content` VALUES ('6', '<p>fsdaffauuuuuuuuuuuuuu<br/></p>', '6', '0');
INSERT INTO `wfyt_news_content` VALUES ('7', '<p>sglanlkgdsgbdflllllllllllllllll<br/></p>', '7', '0');
INSERT INTO `wfyt_news_content` VALUES ('8', '<p>跟我刚爆发vdsfsvvvvrrrrrrrrrrr<br/></p>', '8', '0');
INSERT INTO `wfyt_news_content` VALUES ('9', '<p>个非官方大哥aaaaaaaaaaaa<br/></p>', '9', '0');
INSERT INTO `wfyt_news_content` VALUES ('10', '<p>111<br/></p>', '3', '0');
INSERT INTO `wfyt_news_content` VALUES ('14', '<p>gggggggggggg555555555555<br/></p>', '4', '0');
INSERT INTO `wfyt_news_content` VALUES ('15', '<p>tttttttttttttttttttt<br/></p>', '5', '0');

-- ----------------------------
-- Table structure for `wfyt_news_img`
-- ----------------------------
DROP TABLE IF EXISTS `wfyt_news_img`;
CREATE TABLE `wfyt_news_img` (
  `id` int(11) NOT NULL,
  `url` varchar(200) NOT NULL,
  `news_id` int(11) NOT NULL,
  `is_index` tinyint(1) NOT NULL DEFAULT '0',
  `delete_id` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wfyt_news_img
-- ----------------------------

-- ----------------------------
-- Table structure for `wfyt_news_type`
-- ----------------------------
DROP TABLE IF EXISTS `wfyt_news_type`;
CREATE TABLE `wfyt_news_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `delete_id` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wfyt_news_type
-- ----------------------------
INSERT INTO `wfyt_news_type` VALUES ('1', '新闻资讯', '0');
INSERT INTO `wfyt_news_type` VALUES ('2', '帮助说明', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wfyt_power
-- ----------------------------
INSERT INTO `wfyt_power` VALUES ('1', '管理员管理', '1', 'admin', 'Admin', '0', '0', '0', '0', '0');
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
INSERT INTO `wfyt_power` VALUES ('13', '删除权限', '1-10-13', 'power_delete', 'Power', '10', '2', '0', '0', '0');
INSERT INTO `wfyt_power` VALUES ('14', '角色配置', '1-2-14', 'role_power', 'Role', '2', '2', '0', '0', '0');
INSERT INTO `wfyt_power` VALUES ('15', '后台首页', '15', 'index', 'Index', '0', '0', '0', '0', '0');
INSERT INTO `wfyt_power` VALUES ('16', '果蔬干', '16', 'ddd', 'add', '0', '0', '1', '0', '0');
INSERT INTO `wfyt_power` VALUES ('17', '新闻列表', '19-17', 'news_index', 'News', '19', '1', '0', '0', '0');
INSERT INTO `wfyt_power` VALUES ('18', '添加新闻', '19-17-18', 'news_add', 'News', '17', '2', '0', '0', '0');
INSERT INTO `wfyt_power` VALUES ('19', '资讯管理', '19', 'news', 'News', '0', '0', '0', '0', '0');
INSERT INTO `wfyt_power` VALUES ('20', '新闻分类', '19-20', 'news_cate_index', 'NewsCate', '19', '1', '0', '0', '0');
INSERT INTO `wfyt_power` VALUES ('21', '新闻类型', '19-21', 'news_type_index', 'NewsType', '19', '1', '0', '0', '0');
INSERT INTO `wfyt_power` VALUES ('22', '编辑新闻', '19-17-22', 'news_edit', 'News', '17', '2', '0', '0', '0');
INSERT INTO `wfyt_power` VALUES ('23', '删除新闻', '19-17-23', 'news_delete', 'News', '17', '2', '0', '0', '0');
INSERT INTO `wfyt_power` VALUES ('24', '添加新闻分类', '19-20-24', 'news_cate_add', 'NewsCate', '20', '2', '0', '0', '0');
INSERT INTO `wfyt_power` VALUES ('25', '编辑新闻分类', '19-20-25', 'news_cate_edit', 'NewsCate', '20', '2', '0', '0', '0');
INSERT INTO `wfyt_power` VALUES ('26', '删除新闻分类', '19-20-26', 'news_cate_delete', 'NewsCate', '20', '2', '0', '0', '0');
INSERT INTO `wfyt_power` VALUES ('27', '添加新闻类型', '19-21-27', 'news_type_add', 'NewsType', '21', '2', '0', '0', '0');
INSERT INTO `wfyt_power` VALUES ('28', '编辑新闻类型', '19-21-28', 'news_type_edit', 'NewsType', '21', '2', '0', '0', '0');
INSERT INTO `wfyt_power` VALUES ('29', '删除新闻类型', '19-21-29', 'news_type_delete', 'NewsType', '21', '2', '0', '0', '0');
INSERT INTO `wfyt_power` VALUES ('30', '会员管理', '30', 'member', 'Member', '0', '0', '0', '0', '0');
INSERT INTO `wfyt_power` VALUES ('31', '会员列表', '30-31', 'memberIndex', 'Member', '30', '1', '0', '0', '0');
INSERT INTO `wfyt_power` VALUES ('32', '删除的会员', '30-32', 'memberDeleted', 'Member', '30', '1', '0', '0', '0');
INSERT INTO `wfyt_power` VALUES ('33', '添加用户', '30-31-33', 'memberAdd', 'Member', '31', '2', '0', '0', '0');
INSERT INTO `wfyt_power` VALUES ('34', '编辑会员', '30-31-34', 'memberAdd', 'Member', '31', '2', '0', '0', '0');
INSERT INTO `wfyt_power` VALUES ('35', '删除会员', '30-31-35', 'member_del', 'Member', '31', '2', '0', '0', '0');

-- ----------------------------
-- Table structure for `wfyt_role`
-- ----------------------------
DROP TABLE IF EXISTS `wfyt_role`;
CREATE TABLE `wfyt_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  `power_id` text NOT NULL COMMENT '权限ID',
  `role_ac` text NOT NULL,
  `describe` text NOT NULL COMMENT '角色描述',
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `state` tinyint(1) NOT NULL COMMENT '是否开启',
  `delete_id` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wfyt_role
-- ----------------------------
INSERT INTO `wfyt_role` VALUES ('1', '超级管理员', '1,2,3,4,5,14,6,7,8,9,10,11,12,13,15,19,17,18,22,23,20,24,25,26,21,27,28,29,30,31,33,34,35,32', 'Admin/admin,Role/role_index,Role/role_add,Role/role_edit,Role/role_delete,Admin/admin_index,Admin/admin_add,Admin/admin_edit,Admin/admin_delete,Power/power_index,Power/power_add,Power/power_edit,Power/power_delete,Role/role_power,Index/index,News/news_index,News/news_add,News/news,NewsCate/news_cate_index,NewsType/news_type_index,News/news_edit,News/news_delete,NewsCate/news_cate_add,NewsCate/news_cate_edit,NewsCate/news_cate_delete,NewsType/news_type_add,NewsType/news_type_edit,NewsType/news_type_delete,Member/member,Member/memberIndex,Member/memberDeleted,Member/memberAdd,Member/memberAdd,Member/member_del', '很牛逼的管理员', '1521449410', '1521449410', '1', '0');
INSERT INTO `wfyt_role` VALUES ('2', '一级管理员', '15', 'Index/index', '666的管理员', '1521508630', '1521508630', '1', '0');
INSERT INTO `wfyt_role` VALUES ('3', '二级管理员', '', '', '222的管理员', '1521509134', '1521509134', '1', '0');
INSERT INTO `wfyt_role` VALUES ('4', '三级管理员', '', '', '士大夫', '1521787133', '1521787133', '0', '0');
INSERT INTO `wfyt_role` VALUES ('5', '四级管理员', '', '', '更换防盗锁', '1522201815', '1522201815', '0', '0');
