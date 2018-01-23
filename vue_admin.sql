/*
Navicat MySQL Data Transfer

Source Server         : 192.168.1.225
Source Server Version : 50521
Source Host           : 192.168.1.225:3306
Source Database       : xmkx_2_0

Target Server Type    : MYSQL
Target Server Version : 50521
File Encoding         : 65001

Date: 2018-01-23 17:20:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `qmct_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `qmct_permissions`;
CREATE TABLE `qmct_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '路径',
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `component` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'Layout' COMMENT '前端组件  一级组件继承Layout',
  `redirect` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '前端重定向地址',
  `is_menu` tinyint(4) DEFAULT '0' COMMENT '是否作为菜单显示,[1是 |0 否]',
  `icon` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'icon图标',
  `meta` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '权限',
  `noDropdown` tinyint(4) DEFAULT '0' COMMENT '是否隐藏菜单  ',
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pid` int(11) DEFAULT '0' COMMENT '父级权限id',
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `permissions_name_unique` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=418 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of qmct_permissions
-- ----------------------------
INSERT INTO `qmct_permissions` VALUES ('372', '/permission', '权限管理', 'Layout', '/permission/index', '1', 'quanxian', 'editor', '0', 'dafsdfdsgfdg', '0', '0', '0000-00-00 00:00:00', '2017-09-24 14:41:20');
INSERT INTO `qmct_permissions` VALUES ('373', 'router', '路由列表', 'permission/index', null, '1', null, 'editor', '0', null, '372', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `qmct_permissions` VALUES ('374', '/icon', 'icon', 'Layout', null, '1', 'icons', null, '1', null, '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `qmct_permissions` VALUES ('375', 'index', 'icons', 'svg-icons/index', null, '1', null, null, '0', null, '374', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `qmct_permissions` VALUES ('376', '/components', '组件', 'Layout', '/components/index', '1', 'zujian', null, '0', null, '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `qmct_permissions` VALUES ('383', 'index', '介绍', 'components/index', null, '1', null, null, '0', null, '376', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `qmct_permissions` VALUES ('384', 'tinymce', '富文本编辑器', 'components/tinymce', null, '1', null, null, '0', null, '376', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `qmct_permissions` VALUES ('385', 'markdown', 'Markdown', 'components/markdown', null, '1', null, null, '0', null, '376', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `qmct_permissions` VALUES ('386', 'jsoneditor', 'JSON编辑器', 'components/jsonEditor', null, '1', null, null, '0', null, '376', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `qmct_permissions` VALUES ('387', 'dndlist', '列表拖拽', 'components/dndList', null, '1', null, null, '0', null, '376', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `qmct_permissions` VALUES ('388', 'splitpane', 'SplitPane', 'components/splitpane', null, '1', null, null, '0', null, '376', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `qmct_permissions` VALUES ('389', 'avatarupload', '头像上传', 'components/avatarUpload', null, '1', null, null, '0', null, '376', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `qmct_permissions` VALUES ('390', 'dropzone', 'Dropzone', 'components/dropzone', null, '1', null, null, '0', null, '376', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `qmct_permissions` VALUES ('391', 'sticky', 'Sticky', 'components/sticky', null, '1', null, null, '0', null, '376', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `qmct_permissions` VALUES ('392', 'countto', 'CountTo', 'components/countTo', null, '1', null, null, '0', null, '376', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `qmct_permissions` VALUES ('393', 'mixin', '小组件', 'components/mixin', null, '1', null, null, '0', null, '376', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `qmct_permissions` VALUES ('394', 'backtotop', '返回顶部', 'components/backToTop', null, '1', null, null, '0', null, '376', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `qmct_permissions` VALUES ('395', '/charts', '图表', 'Layout', '/charts/index', '1', 'tubiao', null, '0', null, '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `qmct_permissions` VALUES ('396', 'index', '介绍', 'charts/index', null, '1', '', null, '0', null, '395', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `qmct_permissions` VALUES ('397', 'keyboard', '键盘图表', 'charts/keyboard', null, '1', null, null, '0', null, '395', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `qmct_permissions` VALUES ('398', 'keyboard2', '键盘图表2', 'charts/keyboard2', null, '1', null, null, '0', null, '395', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `qmct_permissions` VALUES ('399', 'line', '折线图', 'charts/line', null, '1', null, null, '0', null, '395', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `qmct_permissions` VALUES ('400', 'mixchart', '混合图表', 'charts/mixChart', null, '1', null, null, '0', null, '395', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `qmct_permissions` VALUES ('401', '/example', '综合实例', 'Layout', 'noredirect', '1', 'zonghe', null, '0', null, '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `qmct_permissions` VALUES ('402', '/example/table', 'Table', 'example/table/index', '/example/table/table', '1', 'table', null, '0', null, '401', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `qmct_permissions` VALUES ('403', 'dynamictable', '动态table', 'example/table/dynamictable/index', null, '1', null, null, '0', null, '402', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `qmct_permissions` VALUES ('404', 'dragtable', '拖拽table', 'example/table/dragTable', null, '1', null, null, '0', null, '402', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `qmct_permissions` VALUES ('405', 'inline_edit_table', 'table内编辑', 'example/table/inlineEditTable', null, '1', null, null, '0', null, '402', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `qmct_permissions` VALUES ('406', 'table', '综合table', 'example/table/table', null, '1', null, null, '0', null, '402', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `qmct_permissions` VALUES ('407', 'user', '用户管理', 'user/index', '', '1', null, 'editor', '0', null, '372', '0', '0000-00-00 00:00:00', '2017-09-25 19:04:50');
INSERT INTO `qmct_permissions` VALUES ('408', 'router/detail/:id', '路由详情', 'permission/detail', null, '1', null, 'editor', '1', null, '372', '0', '0000-00-00 00:00:00', '2017-09-24 16:42:43');
INSERT INTO `qmct_permissions` VALUES ('409', '/admin/delPermission', '删除路由', 'Layout', '', '0', '', '', '1', '后端删除权限接口', '373', '1', '2017-09-24 16:39:37', '2017-09-25 19:04:06');
INSERT INTO `qmct_permissions` VALUES ('411', 'role/index', '角色管理', 'role/index', '', '1', '', '', '0', '角色管理', '372', '0', '2017-09-24 17:37:23', '2017-09-24 17:39:37');
INSERT INTO `qmct_permissions` VALUES ('413', 'role/detail/:id', '角色详情', 'role/detail', '', '1', '', '', '1', '角色详情内容', '372', '0', '2017-09-25 09:39:52', '2017-09-25 09:39:52');
INSERT INTO `qmct_permissions` VALUES ('415', 'role/rolepermission/:id', '角色权限', 'role/rolepermission', '', '1', '', '', '1', '配置角色权限界面', '372', '0', '2017-09-25 10:53:36', '2017-09-25 10:53:36');
INSERT INTO `qmct_permissions` VALUES ('417', 'user/detail/:id', '用户详情', 'user/detail', '', '1', '', '', '1', '用户详情页面', '372', '0', '2017-09-25 19:22:50', '2017-09-25 19:22:50');

-- ----------------------------
-- Table structure for `qmct_permission_role`
-- ----------------------------
DROP TABLE IF EXISTS `qmct_permission_role`;
CREATE TABLE `qmct_permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_role_id_foreign` (`role_id`) USING BTREE,
  CONSTRAINT `qmct_permission_role_ibfk_1` FOREIGN KEY (`permission_id`) REFERENCES `qmct_permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `qmct_permission_role_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `qmct_roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of qmct_permission_role
-- ----------------------------
INSERT INTO `qmct_permission_role` VALUES ('384', '21');
INSERT INTO `qmct_permission_role` VALUES ('385', '21');
INSERT INTO `qmct_permission_role` VALUES ('386', '21');
INSERT INTO `qmct_permission_role` VALUES ('397', '21');
INSERT INTO `qmct_permission_role` VALUES ('399', '21');

-- ----------------------------
-- Table structure for `qmct_roles`
-- ----------------------------
DROP TABLE IF EXISTS `qmct_roles`;
CREATE TABLE `qmct_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of qmct_roles
-- ----------------------------
INSERT INTO `qmct_roles` VALUES ('10', 'administrator', '系统管理员', '系统管理员1', '2016-02-19 17:59:52', '2017-06-17 10:17:54');
INSERT INTO `qmct_roles` VALUES ('12', 'company', '企业用户', '企业用户', '2016-02-19 18:00:43', '2017-07-03 11:35:19');
INSERT INTO `qmct_roles` VALUES ('13', '集团企业管理', '集团总部账号', '集团总部账号', '2017-03-22 07:34:28', '2017-07-03 11:35:09');
INSERT INTO `qmct_roles` VALUES ('14', 'company_hebei', '企业用户（河北）', '河北大区专用', '2017-07-26 10:27:14', '2017-07-26 11:02:46');
INSERT INTO `qmct_roles` VALUES ('20', 'comapny_huashun', '企业用户（华顺）1', '华顺专用', '2017-08-03 13:32:34', '2017-09-25 10:35:05');
INSERT INTO `qmct_roles` VALUES ('21', 'admin', '管理员', '这是一个管理员', '2017-09-25 10:39:49', '2017-09-25 10:39:49');

-- ----------------------------
-- Table structure for `qmct_role_user`
-- ----------------------------
DROP TABLE IF EXISTS `qmct_role_user`;
CREATE TABLE `qmct_role_user` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_user_role_id_foreign` (`role_id`) USING BTREE,
  CONSTRAINT `qmct_role_user_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `qmct_roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `qmct_role_user_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `qmct_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of qmct_role_user
-- ----------------------------
INSERT INTO `qmct_role_user` VALUES ('12', '10');
INSERT INTO `qmct_role_user` VALUES ('33', '12');
INSERT INTO `qmct_role_user` VALUES ('34', '12');
INSERT INTO `qmct_role_user` VALUES ('36', '12');
INSERT INTO `qmct_role_user` VALUES ('12', '14');

-- ----------------------------
-- Table structure for `qmct_user`
-- ----------------------------
DROP TABLE IF EXISTS `qmct_user`;
CREATE TABLE `qmct_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `is_super` tinyint(4) DEFAULT '0' COMMENT '是否超级管理员 1是 0否',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reason` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '审核不通过的原因',
  `last_login_time` datetime DEFAULT NULL COMMENT '最后登录时间',
  `appsecret` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户通信秘钥',
  `deleted_at` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_user_username_unique` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of qmct_user
-- ----------------------------
INSERT INTO `qmct_user` VALUES ('12', 'admin', '69b9d7f1b61c986d9d1b00a602bbdcd2', '254444589@qq.com', '1', 'KTrvZ5eS7KMjDtedwEpro7GZfyeelzdOoLuBCL7HQILqnAY7kjembQoAikeH', '', '2017-09-21 16:03:30', '123456', null, '2017-07-12 00:47:52', '2017-09-26 09:56:05');
