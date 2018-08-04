/*
Navicat MySQL Data Transfer

Source Server         : local host
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : api_db

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-08-04 13:30:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `app_migrations`
-- ----------------------------
DROP TABLE IF EXISTS `app_migrations`;
CREATE TABLE `app_migrations` (
  `id` decimal(20,0) DEFAULT NULL,
  `applied_at` varchar(25) DEFAULT NULL,
  `version` varchar(25) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of app_migrations
-- ----------------------------

-- ----------------------------
-- Table structure for `app_registration`
-- ----------------------------
DROP TABLE IF EXISTS `app_registration`;
CREATE TABLE `app_registration` (
  `reg_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` int(10) DEFAULT NULL COMMENT 'from web_users table',
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(100) DEFAULT 'Active',
  `entry_by` int(11) DEFAULT NULL,
  `entry_date` datetime DEFAULT NULL,
  `ip_addr` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`reg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app_registration
-- ----------------------------

-- ----------------------------
-- Table structure for `app_tokens`
-- ----------------------------
DROP TABLE IF EXISTS `app_tokens`;
CREATE TABLE `app_tokens` (
  `token_id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `token` varchar(500) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  PRIMARY KEY (`token_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of app_tokens
-- ----------------------------
INSERT INTO `app_tokens` VALUES ('1', '1', '7e7757b1e12abcb736ab9a754ffb617a', '2018-08-03 11:37:14');
INSERT INTO `app_tokens` VALUES ('2', '1', '9872ed9fc22fc182d371c3e9ed316094', '2018-08-03 11:47:02');
INSERT INTO `app_tokens` VALUES ('3', '1', '0a09c8844ba8f0936c20bd791130d6b6', '2018-08-03 11:48:53');
INSERT INTO `app_tokens` VALUES ('4', '1', 'b3e3e393c77e35a4a3f3cbd1e429b5dc', '2018-08-03 11:49:35');
INSERT INTO `app_tokens` VALUES ('5', '1', 'bd4c9ab730f5513206b999ec0d90d1fb', '2018-08-03 11:49:46');
INSERT INTO `app_tokens` VALUES ('6', '1', 'f2217062e9a397a1dca429e7d70bc6ca', '2018-08-03 11:50:57');
INSERT INTO `app_tokens` VALUES ('7', '1', 'cedebb6e872f539bef8c3f919874e9d7', '2018-08-03 11:50:57');
INSERT INTO `app_tokens` VALUES ('8', '1', '1ff8a7b5dc7a7d1f0ed65aaa29c04b1e', '2018-08-03 11:51:51');
INSERT INTO `app_tokens` VALUES ('9', '1', '149e9677a5989fd342ae44213df68868', '2018-08-03 11:52:40');
INSERT INTO `app_tokens` VALUES ('10', '1', '9872ed9fc22fc182d371c3e9ed316094', '2018-08-03 11:52:44');
INSERT INTO `app_tokens` VALUES ('11', '1', '7ef605fc8dba5425d6965fbd4c8fbe1f', '2018-08-03 11:53:26');
INSERT INTO `app_tokens` VALUES ('12', '1', '6cdd60ea0045eb7a6ec44c54d29ed402', '2018-08-03 11:53:39');
INSERT INTO `app_tokens` VALUES ('13', '1', 'cfecdb276f634854f3ef915e2e980c31', '2018-08-03 11:53:49');
INSERT INTO `app_tokens` VALUES ('14', '1', '3636638817772e42b59d74cff571fbb3', '2018-08-03 11:54:11');
INSERT INTO `app_tokens` VALUES ('15', '1', '1e6e0a04d20f50967c64dac2d639a577', '2018-08-03 11:54:14');
INSERT INTO `app_tokens` VALUES ('16', '1', '9b8619251a19057cff70779273e95aa6', '2018-08-03 11:54:16');
INSERT INTO `app_tokens` VALUES ('17', '1', 'bf8229696f7a3bb4700cfddef19fa23f', '2018-08-03 11:54:40');
INSERT INTO `app_tokens` VALUES ('18', '1', '84d9ee44e457ddef7f2c4f25dc8fa865', '2018-08-03 11:54:44');
INSERT INTO `app_tokens` VALUES ('19', '1', '1ff8a7b5dc7a7d1f0ed65aaa29c04b1e', '2018-08-03 11:54:59');
INSERT INTO `app_tokens` VALUES ('20', '1', '96da2f590cd7246bbde0051047b0d6f7', '2018-08-03 11:55:05');
INSERT INTO `app_tokens` VALUES ('21', '1', 'eb160de1de89d9058fcb0b968dbbbd68', '2018-08-03 11:57:54');
INSERT INTO `app_tokens` VALUES ('22', '1', '8d5e957f297893487bd98fa830fa6413', '2018-08-03 12:05:21');
INSERT INTO `app_tokens` VALUES ('23', '1', '1afa34a7f984eeabdbb0a7d494132ee5', '2018-08-03 12:05:21');
INSERT INTO `app_tokens` VALUES ('24', '1', '82161242827b703e6acf9c726942a1e4', '2018-08-03 14:13:21');
INSERT INTO `app_tokens` VALUES ('25', '1', 'b3e3e393c77e35a4a3f3cbd1e429b5dc', '2018-08-03 14:13:30');
INSERT INTO `app_tokens` VALUES ('26', '1', '7f6ffaa6bb0b408017b62254211691b5', '2018-08-03 14:13:30');

-- ----------------------------
-- Table structure for `app_user_master`
-- ----------------------------
DROP TABLE IF EXISTS `app_user_master`;
CREATE TABLE `app_user_master` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) DEFAULT NULL,
  `email` varchar(500) DEFAULT NULL,
  `mobile` varchar(500) DEFAULT NULL,
  `createon` datetime DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Active',
  `password` varchar(1000) DEFAULT '8851d7505c4c1007bc811ebf0f7d1aa2',
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of app_user_master
-- ----------------------------
INSERT INTO `app_user_master` VALUES ('1', 'Sheetesh', 'sheetesh@india.com', '971866752', '2018-08-03 13:02:47', 'Active', '8851d7505c4c1007bc811ebf0f7d1aa2');
INSERT INTO `app_user_master` VALUES ('2', 'Sunny', 'shee@gmail.com', '89320374406', '2018-08-03 13:03:04', 'Active', '8851d7505c4c1007bc811ebf0f7d1aa2');

-- ----------------------------
-- Table structure for `categories`
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES ('1', 'Fashion', 'Category for anything related to fashion.', '2014-06-01 00:35:07', '2014-05-30 17:34:33');
INSERT INTO `categories` VALUES ('2', 'Electronics', 'Gadgets, drones and more.', '2014-06-01 00:35:07', '2014-05-30 17:34:33');
INSERT INTO `categories` VALUES ('3', 'Motors', 'Motor sports and more', '2014-06-01 00:35:07', '2014-05-30 17:34:54');
INSERT INTO `categories` VALUES ('5', 'Movies', 'Movie products.', '0000-00-00 00:00:00', '2016-01-08 13:27:26');
INSERT INTO `categories` VALUES ('6', 'Books', 'Kindle books, audio books and more.', '0000-00-00 00:00:00', '2016-01-08 13:27:47');
INSERT INTO `categories` VALUES ('13', 'Sports', 'Drop into new winter gear.', '2016-01-09 02:24:24', '2016-01-09 01:24:24');

-- ----------------------------
-- Table structure for `products`
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('1', 'LG P880 4X HD', 'My first awesome phone!', '336', '3', '2014-06-01 01:12:26', '2014-05-31 17:12:26');
INSERT INTO `products` VALUES ('2', 'Google Nexus 4', 'The most awesome phone of 2013!', '299', '2', '2014-06-01 01:12:26', '2014-05-31 17:12:26');
INSERT INTO `products` VALUES ('3', 'Samsung Galaxy S4', 'How about no?', '600', '3', '2014-06-01 01:12:26', '2014-05-31 17:12:26');
INSERT INTO `products` VALUES ('6', 'Bench Shirt', 'The best shirt!', '29', '1', '2014-06-01 01:12:26', '2014-05-31 02:12:21');
INSERT INTO `products` VALUES ('7', 'Lenovo Laptop', 'My business partner.', '399', '2', '2014-06-01 01:13:45', '2014-05-31 02:13:39');
INSERT INTO `products` VALUES ('8', 'Samsung Galaxy Tab 10.1', 'Good tablet.', '259', '2', '2014-06-01 01:14:13', '2014-05-31 02:14:08');
INSERT INTO `products` VALUES ('9', 'Spalding Watch', 'My sports watch.', '199', '1', '2014-06-01 01:18:36', '2014-05-31 02:18:31');
INSERT INTO `products` VALUES ('10', 'Sony Smart Watch', 'The coolest smart watch!', '300', '2', '2014-06-06 17:10:01', '2014-06-05 18:09:51');
INSERT INTO `products` VALUES ('11', 'Huawei Y300', 'For testing purposes.', '100', '2', '2014-06-06 17:11:04', '2014-06-05 18:10:54');
INSERT INTO `products` VALUES ('12', 'Abercrombie Lake Arnold Shirt', 'Perfect as gift!', '60', '1', '2014-06-06 17:12:21', '2014-06-05 18:12:11');
INSERT INTO `products` VALUES ('13', 'Abercrombie Allen Brook Shirt', 'Cool red shirt!', '70', '1', '2014-06-06 17:12:59', '2014-06-05 18:12:49');
INSERT INTO `products` VALUES ('26', 'Another product', 'Awesome product!', '555', '2', '2014-11-22 19:07:34', '2014-11-21 20:07:34');
INSERT INTO `products` VALUES ('28', 'Wallet', 'You can absolutely use this one!', '799', '6', '2014-12-04 21:12:03', '2014-12-03 22:12:03');
INSERT INTO `products` VALUES ('31', 'Amanda Waller Shirt', 'New awesome shirt!', '333', '1', '2014-12-13 00:52:54', '2014-12-12 01:52:54');
INSERT INTO `products` VALUES ('42', 'Nike Shoes for Men', 'Nike Shoes', '12999', '3', '2015-12-12 06:47:08', '2015-12-12 05:47:08');
INSERT INTO `products` VALUES ('48', 'Bristol Shoes', 'Awesome shoes.', '999', '5', '2016-01-08 06:36:37', '2016-01-08 05:36:37');
INSERT INTO `products` VALUES ('60', 'Rolex Watch', 'Luxury watch.', '25000', '1', '2016-01-11 15:46:02', '2016-01-11 14:46:02');
INSERT INTO `products` VALUES ('61', 'Sheetesh', 'SHEETESH JUNAID ANBD ARVIND', '100', '2', '2018-07-03 07:53:27', '2018-07-03 11:23:27');
INSERT INTO `products` VALUES ('62', '', '', '0', '2', '2018-07-31 13:37:04', '2018-07-31 17:07:04');
INSERT INTO `products` VALUES ('63', '', '', '0', '2', '2018-07-31 13:37:41', '2018-07-31 17:07:41');
INSERT INTO `products` VALUES ('64', '', '', '0', '2', '2018-07-31 13:38:14', '2018-07-31 17:08:14');
INSERT INTO `products` VALUES ('65', '', '', '0', '2', '2018-07-31 13:38:39', '2018-07-31 17:08:39');
INSERT INTO `products` VALUES ('66', '', '', '0', '2', '2018-07-31 13:39:27', '2018-07-31 17:09:27');
INSERT INTO `products` VALUES ('67', '', '', '0', '2', '2018-07-31 13:40:55', '2018-07-31 17:10:55');
INSERT INTO `products` VALUES ('68', '', '', '0', '2', '2018-07-31 13:41:30', '2018-07-31 17:11:30');
INSERT INTO `products` VALUES ('69', '', '', '0', '2', '2018-07-31 13:42:36', '2018-07-31 17:12:36');
INSERT INTO `products` VALUES ('70', '', 'dssdf', '0', '2', '2018-07-31 13:42:57', '2018-07-31 17:12:57');
INSERT INTO `products` VALUES ('71', '', 'dssdf', '0', '0', '2018-07-31 13:45:54', '2018-07-31 17:15:54');
INSERT INTO `products` VALUES ('72', '', 'dssdf', '0', '0', '2018-07-31 13:46:10', '2018-07-31 17:16:10');
INSERT INTO `products` VALUES ('73', 'Sheetesh', 'dssdf', '100', '0', '2018-07-31 13:46:50', '2018-07-31 17:16:50');
INSERT INTO `products` VALUES ('74', 'Sheetesh', 'dssdf', '100', '2', '2018-07-31 13:47:26', '2018-07-31 17:17:26');
INSERT INTO `products` VALUES ('75', '', 'dssdf', '0', '2', '2018-07-31 13:47:49', '2018-07-31 17:17:49');
INSERT INTO `products` VALUES ('76', 'Sheetesh', 'dssdf', '100', '2', '2018-07-31 13:48:04', '2018-07-31 17:18:04');
INSERT INTO `products` VALUES ('77', 'Sheetesh', '', '20', '2', '2018-07-31 14:05:49', '2018-07-31 17:35:49');
INSERT INTO `products` VALUES ('78', '', '', '0', '2', '2018-07-31 14:06:12', '2018-07-31 17:36:12');
INSERT INTO `products` VALUES ('79', '', '', '0', '2', '2018-08-01 06:22:45', '2018-08-01 09:52:45');
INSERT INTO `products` VALUES ('80', '', '', '0', '2', '2018-08-01 06:22:46', '2018-08-01 09:52:46');
INSERT INTO `products` VALUES ('81', '', '', '0', '2', '2018-08-01 06:22:46', '2018-08-01 09:52:46');
INSERT INTO `products` VALUES ('82', '', '', '0', '2', '2018-08-01 06:22:47', '2018-08-01 09:52:47');
INSERT INTO `products` VALUES ('83', '', '', '0', '3', '2018-08-01 13:34:22', '2018-08-01 17:04:22');
INSERT INTO `products` VALUES ('84', '', '', '0', '3', '2018-08-01 13:34:23', '2018-08-01 17:04:23');
INSERT INTO `products` VALUES ('85', '', '', '0', '3', '2018-08-01 13:34:23', '2018-08-01 17:04:23');
INSERT INTO `products` VALUES ('86', '', '', '0', '3', '2018-08-01 13:34:24', '2018-08-01 17:04:24');
INSERT INTO `products` VALUES ('87', '', '', '0', '3', '2018-08-01 13:34:24', '2018-08-01 17:04:24');
INSERT INTO `products` VALUES ('88', '', '', '0', '3', '2018-08-01 13:34:24', '2018-08-01 17:04:24');
INSERT INTO `products` VALUES ('89', '', '', '0', '3', '2018-08-01 13:34:31', '2018-08-01 17:04:31');
INSERT INTO `products` VALUES ('90', '', '', '0', '3', '2018-08-01 13:34:31', '2018-08-01 17:04:31');
INSERT INTO `products` VALUES ('91', '', '', '0', '3', '2018-08-01 13:34:31', '2018-08-01 17:04:31');
INSERT INTO `products` VALUES ('92', '', '', '0', '3', '2018-08-01 13:34:32', '2018-08-01 17:04:32');
INSERT INTO `products` VALUES ('93', '', '', '0', '3', '2018-08-01 13:34:32', '2018-08-01 17:04:32');
INSERT INTO `products` VALUES ('94', '', '', '0', '3', '2018-08-01 13:34:32', '2018-08-01 17:04:32');
INSERT INTO `products` VALUES ('95', '', '', '0', '3', '2018-08-01 13:34:32', '2018-08-01 17:04:32');
INSERT INTO `products` VALUES ('96', '', '', '0', '3', '2018-08-01 13:37:48', '2018-08-01 17:07:48');
INSERT INTO `products` VALUES ('97', '', '', '0', '3', '2018-08-01 13:37:50', '2018-08-01 17:07:50');
INSERT INTO `products` VALUES ('98', '', '', '0', '3', '2018-08-01 13:37:50', '2018-08-01 17:07:50');
INSERT INTO `products` VALUES ('99', '', '', '0', '3', '2018-08-01 14:23:09', '2018-08-01 17:53:09');
INSERT INTO `products` VALUES ('100', '', '', '0', '3', '2018-08-02 07:03:06', '2018-08-02 10:33:06');
INSERT INTO `products` VALUES ('101', '', '', '0', '0', '0000-00-00 00:00:00', '2018-08-02 10:33:32');
INSERT INTO `products` VALUES ('102', 'Sheetesh', 'dssdf', '10063', '3', '2018-08-02 07:06:41', '2018-08-02 10:36:41');
INSERT INTO `products` VALUES ('103', 'Sheetesh', 'dssdf', '10063', '0', '2018-08-02 07:24:42', '2018-08-02 10:54:42');
INSERT INTO `products` VALUES ('104', 'Sheetesh', 'dssdf', '10064', '0', '2018-08-02 07:24:46', '2018-08-02 10:54:46');
INSERT INTO `products` VALUES ('105', 'Sheetesh', 'dssdf', '10064', '0', '2018-08-02 12:49:47', '2018-08-02 16:19:47');
INSERT INTO `products` VALUES ('106', 'Sheetesh', 'dssdf', '10064', '0', '2018-08-02 12:49:53', '2018-08-02 16:19:53');

-- ----------------------------
-- Table structure for `web_attempts`
-- ----------------------------
DROP TABLE IF EXISTS `web_attempts`;
CREATE TABLE `web_attempts` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `dated` datetime DEFAULT NULL,
  `ipaddress` varchar(200) DEFAULT NULL,
  `login` varchar(200) DEFAULT NULL,
  `pid` int(200) DEFAULT NULL COMMENT 'user_id from user table, 0=unknown user',
  `utype` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of web_attempts
-- ----------------------------

-- ----------------------------
-- Table structure for `web_loginoroffusertrail`
-- ----------------------------
DROP TABLE IF EXISTS `web_loginoroffusertrail`;
CREATE TABLE `web_loginoroffusertrail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(200) DEFAULT NULL,
  `ipaddress` varchar(200) DEFAULT NULL,
  `dateoflogin` datetime DEFAULT NULL,
  `dateoflogoff` datetime DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL COMMENT 'department id from dept_master, 0 from Himachal (Super)',
  `userid` int(11) DEFAULT NULL,
  `user_type` varchar(11) DEFAULT NULL,
  `user_type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of web_loginoroffusertrail
-- ----------------------------

-- ----------------------------
-- Table structure for `web_st_title`
-- ----------------------------
DROP TABLE IF EXISTS `web_st_title`;
CREATE TABLE `web_st_title` (
  `title_id` int(11) NOT NULL AUTO_INCREMENT,
  `title_name` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'Active',
  `pos` tinyint(4) DEFAULT NULL,
  `gender` tinyint(4) DEFAULT NULL COMMENT '1=male, 2=female,3=Third gender (Other) ',
  PRIMARY KEY (`title_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of web_st_title
-- ----------------------------
INSERT INTO `web_st_title` VALUES ('1', 'Mr.', 'Active', null, '1');
INSERT INTO `web_st_title` VALUES ('2', 'Ms.', 'Active', null, '2');
INSERT INTO `web_st_title` VALUES ('3', 'Mrs.', 'Active', null, '2');
INSERT INTO `web_st_title` VALUES ('4', 'Prof.', 'Active', null, null);
INSERT INTO `web_st_title` VALUES ('5', 'Shri', 'Active', null, '1');
INSERT INTO `web_st_title` VALUES ('6', 'Smt.', 'Active', null, '2');
INSERT INTO `web_st_title` VALUES ('7', 'Dr.', 'Active', null, null);
INSERT INTO `web_st_title` VALUES ('8', 'NA', 'Active', null, null);

-- ----------------------------
-- Table structure for `web_st_user_type`
-- ----------------------------
DROP TABLE IF EXISTS `web_st_user_type`;
CREATE TABLE `web_st_user_type` (
  `user_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_type` varchar(500) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Active',
  `pos` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`user_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_st_user_type
-- ----------------------------
INSERT INTO `web_st_user_type` VALUES ('1', 'Super', 'Active', '1');
INSERT INTO `web_st_user_type` VALUES ('2', 'Admin', 'Active', '2');
INSERT INTO `web_st_user_type` VALUES ('3', 'CSTT', 'Active', '3');
INSERT INTO `web_st_user_type` VALUES ('4', 'Authors', 'Active', '4');

-- ----------------------------
-- Table structure for `web_users`
-- ----------------------------
DROP TABLE IF EXISTS `web_users`;
CREATE TABLE `web_users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(500) DEFAULT NULL,
  `password` varchar(500) DEFAULT NULL,
  `my_val` varchar(255) DEFAULT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'Active',
  `entry_by` varchar(50) DEFAULT NULL,
  `entry_date` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_type` varchar(255) DEFAULT NULL,
  `user_type_id` int(11) DEFAULT NULL COMMENT 'from web_st_user_type table',
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `current_status` varchar(255) DEFAULT 'Active' COMMENT 'Pending, Active, Inactive, Reject',
  `ip_addr` varchar(150) DEFAULT NULL,
  `action_by` int(11) DEFAULT NULL,
  `action_on` datetime DEFAULT NULL,
  `action_addr` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_users
-- ----------------------------
INSERT INTO `web_users` VALUES ('1', 'sanjaykumar_comat@yahoo.com', '8851d7505c4c1007bc811ebf0f7d1aa2', null, null, 'Active', null, null, null, null, '1', '2018-08-04 11:45:00', 'Active', null, null, null, null);

-- ----------------------------
-- Table structure for `web_users_profile`
-- ----------------------------
DROP TABLE IF EXISTS `web_users_profile`;
CREATE TABLE `web_users_profile` (
  `profile_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `title_id` int(11) DEFAULT NULL,
  `f_name` varchar(500) DEFAULT NULL,
  `m_name` varchar(500) DEFAULT NULL,
  `l_name` varchar(500) DEFAULT NULL,
  `gender` tinyint(4) DEFAULT NULL,
  `addr` varchar(1500) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `district_id` int(11) DEFAULT NULL,
  `pincode` varchar(20) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `std_code` varchar(10) DEFAULT NULL,
  `landline` varchar(50) DEFAULT NULL,
  `f_std_code` varchar(10) DEFAULT NULL,
  `f_landline` varchar(50) DEFAULT NULL,
  `profile_img` varchar(100) DEFAULT NULL,
  `status` varchar(255) DEFAULT 'Active',
  `entry_by` int(11) DEFAULT NULL,
  `entry_date` datetime DEFAULT NULL,
  `ip_addr` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`profile_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_users_profile
-- ----------------------------
INSERT INTO `web_users_profile` VALUES ('1', '1', '1', 'Administrator', null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Active', null, null, null);

-- ----------------------------
-- Table structure for `web_user_trail`
-- ----------------------------
DROP TABLE IF EXISTS `web_user_trail`;
CREATE TABLE `web_user_trail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `dated` datetime DEFAULT NULL,
  `user_type` varchar(250) DEFAULT NULL,
  `actiontaken` varchar(250) DEFAULT NULL,
  `tablename` varchar(250) DEFAULT NULL,
  `ip_addr` varchar(250) DEFAULT NULL,
  `timed` time DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of web_user_trail
-- ----------------------------
