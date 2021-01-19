/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.33.10
 Source Server Type    : MySQL
 Source Server Version : 50649
 Source Host           : 192.168.33.10:3306
 Source Schema         : goadmin

 Target Server Type    : MySQL
 Target Server Version : 50649
 File Encoding         : 65001

 Date: 19/01/2021 16:34:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for blog_article
-- ----------------------------
DROP TABLE IF EXISTS `blog_article`;
CREATE TABLE `blog_article`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tag_id` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '标签ID',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '文章标题',
  `desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '简述',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
  `cover_image_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '封面图片地址',
  `created_on` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '新建时间',
  `created_by` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建人',
  `modified_on` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '修改时间',
  `modified_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '修改人',
  `deleted_on` int(10) UNSIGNED NULL DEFAULT 0,
  `state` tinyint(3) UNSIGNED NULL DEFAULT 1 COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '文章管理' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of blog_article
-- ----------------------------

-- ----------------------------
-- Table structure for blog_auth
-- ----------------------------
DROP TABLE IF EXISTS `blog_auth`;
CREATE TABLE `blog_auth`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '账号',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '密码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of blog_auth
-- ----------------------------
INSERT INTO `blog_auth` VALUES (1, 'test', 'test123');
INSERT INTO `blog_auth` VALUES (2, 'hello', 'hello123');
INSERT INTO `blog_auth` VALUES (3, 'test', 'set');
INSERT INTO `blog_auth` VALUES (4, 'werwe', 'rwerwer');
INSERT INTO `blog_auth` VALUES (5, '23423', '4234234234');

-- ----------------------------
-- Table structure for blog_tag
-- ----------------------------
DROP TABLE IF EXISTS `blog_tag`;
CREATE TABLE `blog_tag`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '标签名称',
  `created_on` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '创建时间',
  `created_by` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建人',
  `modified_on` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '修改时间',
  `modified_by` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '修改人',
  `deleted_on` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '删除时间',
  `state` tinyint(3) UNSIGNED NULL DEFAULT 1 COMMENT '状态 0为禁用、1为启用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '文章标签管理' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of blog_tag
-- ----------------------------

-- ----------------------------
-- Table structure for goadmin_menu
-- ----------------------------
DROP TABLE IF EXISTS `goadmin_menu`;
CREATE TABLE `goadmin_menu`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `type` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `order` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `header` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `plugin_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `uuid` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of goadmin_menu
-- ----------------------------
INSERT INTO `goadmin_menu` VALUES (1, 0, 1, 2, 'Admin', 'fa-tasks', '', NULL, '', NULL, '2019-09-10 00:00:00', '2019-09-10 00:00:00');
INSERT INTO `goadmin_menu` VALUES (2, 1, 1, 2, 'Users', 'fa-users', '/info/manager', NULL, '', NULL, '2019-09-10 00:00:00', '2019-09-10 00:00:00');
INSERT INTO `goadmin_menu` VALUES (3, 1, 1, 3, 'Roles', 'fa-user', '/info/roles', NULL, '', NULL, '2019-09-10 00:00:00', '2019-09-10 00:00:00');
INSERT INTO `goadmin_menu` VALUES (4, 1, 1, 4, 'Permission', 'fa-ban', '/info/permission', NULL, '', NULL, '2019-09-10 00:00:00', '2019-09-10 00:00:00');
INSERT INTO `goadmin_menu` VALUES (5, 1, 1, 5, 'Menu', 'fa-bars', '/menu', NULL, '', NULL, '2019-09-10 00:00:00', '2019-09-10 00:00:00');
INSERT INTO `goadmin_menu` VALUES (6, 1, 1, 6, 'Operation log', 'fa-history', '/info/op', NULL, '', NULL, '2019-09-10 00:00:00', '2019-09-10 00:00:00');
INSERT INTO `goadmin_menu` VALUES (7, 0, 1, 1, 'Dashboard', 'fa-bar-chart', '/', NULL, '', NULL, '2019-09-10 00:00:00', '2019-09-10 00:00:00');
INSERT INTO `goadmin_menu` VALUES (10, 0, 0, 2, '博客文章', 'fa-bars', '/info/blog_article', '', '', NULL, '2021-01-19 09:49:45', '2021-01-19 09:49:45');
INSERT INTO `goadmin_menu` VALUES (11, 0, 0, 2, '博客用户', 'fa-bars', '/info/blog_auth', '', '', NULL, '2021-01-19 09:50:04', '2021-01-19 09:50:04');
INSERT INTO `goadmin_menu` VALUES (12, 0, 0, 2, '博客标签', 'fa-bars', '/info/blog_tag', '', '', NULL, '2021-01-19 09:50:22', '2021-01-19 09:50:22');
INSERT INTO `goadmin_menu` VALUES (13, 0, 0, 2, '用户管理', 'fa-bars', '/info/users', '', '', NULL, '2021-01-19 14:06:23', '2021-01-19 14:06:23');

-- ----------------------------
-- Table structure for goadmin_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `goadmin_operation_log`;
CREATE TABLE `goadmin_operation_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) UNSIGNED NOT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `admin_operation_log_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 293 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of goadmin_operation_log
-- ----------------------------
INSERT INTO `goadmin_operation_log` VALUES (1, 1, '/admin', 'GET', '127.0.0.1', '', '2021-01-19 09:08:20', '2021-01-19 09:08:20');
INSERT INTO `goadmin_operation_log` VALUES (2, 1, '/admin/info/manager', 'GET', '127.0.0.1', '', '2021-01-19 09:08:23', '2021-01-19 09:08:23');
INSERT INTO `goadmin_operation_log` VALUES (3, 1, '/admin/info/roles', 'GET', '127.0.0.1', '', '2021-01-19 09:08:24', '2021-01-19 09:08:24');
INSERT INTO `goadmin_operation_log` VALUES (4, 1, '/admin/info/permission', 'GET', '127.0.0.1', '', '2021-01-19 09:08:25', '2021-01-19 09:08:25');
INSERT INTO `goadmin_operation_log` VALUES (5, 1, '/admin/menu', 'GET', '127.0.0.1', '', '2021-01-19 09:08:26', '2021-01-19 09:08:26');
INSERT INTO `goadmin_operation_log` VALUES (6, 1, '/admin/info/permission', 'GET', '127.0.0.1', '', '2021-01-19 09:08:27', '2021-01-19 09:08:27');
INSERT INTO `goadmin_operation_log` VALUES (7, 1, '/admin/info/roles', 'GET', '127.0.0.1', '', '2021-01-19 09:08:27', '2021-01-19 09:08:27');
INSERT INTO `goadmin_operation_log` VALUES (8, 1, '/admin/info/manager', 'GET', '127.0.0.1', '', '2021-01-19 09:08:27', '2021-01-19 09:08:27');
INSERT INTO `goadmin_operation_log` VALUES (9, 1, '/admin/info/manager', 'GET', '127.0.0.1', '', '2021-01-19 09:08:27', '2021-01-19 09:08:27');
INSERT INTO `goadmin_operation_log` VALUES (10, 1, '/admin/info/manager/new', 'GET', '127.0.0.1', '', '2021-01-19 09:08:29', '2021-01-19 09:08:29');
INSERT INTO `goadmin_operation_log` VALUES (11, 1, '/admin/new/manager', 'POST', '127.0.0.1', '{\"__go_admin_previous_\":[\"/admin/info/manager?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"6946d0f3-24fa-4a00-8833-678c8784c61e\"],\"avatar__delete_flag\":[\"0\"],\"name\":[\"test\"],\"password\":[\"test\"],\"password_again\":[\"test\"],\"permission_id[]\":[\"1\"],\"role_id[]\":[\"1\"],\"username\":[\"test\"]}', '2021-01-19 09:08:50', '2021-01-19 09:08:50');
INSERT INTO `goadmin_operation_log` VALUES (12, 1, '/admin/new/manager', 'POST', '127.0.0.1', '{\"__go_admin_previous_\":[\"/admin/info/manager?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"1c9954f5-3625-4a1c-85e0-77baa163c0a8\"],\"avatar\":[\"\"],\"avatar__delete_flag\":[\"0\"],\"name\":[\"test\"],\"password\":[\"admin\"],\"password_again\":[\"\"],\"username\":[\"test\"]}', '2021-01-19 09:09:09', '2021-01-19 09:09:09');
INSERT INTO `goadmin_operation_log` VALUES (13, 1, '/admin/new/manager', 'POST', '127.0.0.1', '{\"__go_admin_previous_\":[\"/admin/info/manager?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"bdafb088-f6bb-4c35-85cc-c6c4f01e475a\"],\"avatar\":[\"\"],\"avatar__delete_flag\":[\"0\"],\"name\":[\"test\"],\"password\":[\"admin\"],\"password_again\":[\"admin\"],\"permission_id[]\":[\"1\"],\"role_id[]\":[\"1\"],\"username\":[\"test\"]}', '2021-01-19 09:09:25', '2021-01-19 09:09:25');
INSERT INTO `goadmin_operation_log` VALUES (14, 1, '/admin/info/permission', 'GET', '127.0.0.1', '', '2021-01-19 09:09:33', '2021-01-19 09:09:33');
INSERT INTO `goadmin_operation_log` VALUES (15, 1, '/admin/menu', 'GET', '127.0.0.1', '', '2021-01-19 09:09:34', '2021-01-19 09:09:34');
INSERT INTO `goadmin_operation_log` VALUES (16, 1, '/admin/info/generate/new', 'GET', '127.0.0.1', '', '2021-01-19 09:11:15', '2021-01-19 09:11:15');
INSERT INTO `goadmin_operation_log` VALUES (17, 1, '/admin/operation/_tool_choose_conn', 'POST', '127.0.0.1', '', '2021-01-19 09:11:20', '2021-01-19 09:11:20');
INSERT INTO `goadmin_operation_log` VALUES (18, 1, '/admin/info/generate/new', 'GET', '127.0.0.1', '', '2021-01-19 09:13:26', '2021-01-19 09:13:26');
INSERT INTO `goadmin_operation_log` VALUES (19, 1, '/admin/operation/_tool_choose_conn', 'POST', '127.0.0.1', '', '2021-01-19 09:13:29', '2021-01-19 09:13:29');
INSERT INTO `goadmin_operation_log` VALUES (20, 1, '/admin/operation/_tool_choose_table', 'POST', '127.0.0.1', '', '2021-01-19 09:13:33', '2021-01-19 09:13:33');
INSERT INTO `goadmin_operation_log` VALUES (21, 1, '/admin/info/generate/new', 'GET', '127.0.0.1', '', '2021-01-19 09:16:10', '2021-01-19 09:16:10');
INSERT INTO `goadmin_operation_log` VALUES (22, 1, '/admin/operation/_tool_choose_conn', 'POST', '127.0.0.1', '', '2021-01-19 09:16:13', '2021-01-19 09:16:13');
INSERT INTO `goadmin_operation_log` VALUES (23, 1, '/admin/operation/_tool_choose_table', 'POST', '127.0.0.1', '', '2021-01-19 09:16:15', '2021-01-19 09:16:15');
INSERT INTO `goadmin_operation_log` VALUES (24, 1, '/admin/operation/_tool_choose_conn', 'POST', '127.0.0.1', '', '2021-01-19 09:16:31', '2021-01-19 09:16:31');
INSERT INTO `goadmin_operation_log` VALUES (25, 1, '/admin/menu', 'GET', '127.0.0.1', '', '2021-01-19 09:16:41', '2021-01-19 09:16:41');
INSERT INTO `goadmin_operation_log` VALUES (26, 1, '/admin/menu/new', 'POST', '127.0.0.1', '{\"__go_admin_previous_\":[\"/admin/menu\"],\"__go_admin_t_\":[\"5821b602-5ea0-46bd-b1c9-903a68a990db\"],\"header\":[\"\"],\"icon\":[\"fa-bars\"],\"parent_id\":[\"\"],\"plugin_name\":[\"\"],\"roles[]\":[\"1\"],\"title\":[\"用户\"],\"uri\":[\"/info/user\"]}', '2021-01-19 09:18:45', '2021-01-19 09:18:45');
INSERT INTO `goadmin_operation_log` VALUES (27, 1, '/admin/menu', 'GET', '127.0.0.1', '', '2021-01-19 09:18:51', '2021-01-19 09:18:51');
INSERT INTO `goadmin_operation_log` VALUES (28, 1, '/admin/info/user', 'GET', '127.0.0.1', '', '2021-01-19 09:18:52', '2021-01-19 09:18:52');
INSERT INTO `goadmin_operation_log` VALUES (29, 1, '/admin/info/user', 'GET', '127.0.0.1', '', '2021-01-19 09:21:32', '2021-01-19 09:21:32');
INSERT INTO `goadmin_operation_log` VALUES (30, 1, '/admin/info/user', 'GET', '127.0.0.1', '', '2021-01-19 09:21:33', '2021-01-19 09:21:33');
INSERT INTO `goadmin_operation_log` VALUES (31, 1, '/admin/info/user', 'GET', '127.0.0.1', '', '2021-01-19 09:21:33', '2021-01-19 09:21:33');
INSERT INTO `goadmin_operation_log` VALUES (32, 1, '/admin/info/user', 'GET', '127.0.0.1', '', '2021-01-19 09:21:33', '2021-01-19 09:21:33');
INSERT INTO `goadmin_operation_log` VALUES (33, 1, '/admin/info/user', 'GET', '127.0.0.1', '', '2021-01-19 09:21:57', '2021-01-19 09:21:57');
INSERT INTO `goadmin_operation_log` VALUES (34, 1, '/admin/info/user', 'GET', '127.0.0.1', '', '2021-01-19 09:21:58', '2021-01-19 09:21:58');
INSERT INTO `goadmin_operation_log` VALUES (35, 1, '/admin/info/user', 'GET', '127.0.0.1', '', '2021-01-19 09:21:58', '2021-01-19 09:21:58');
INSERT INTO `goadmin_operation_log` VALUES (36, 1, '/admin/info/user', 'GET', '127.0.0.1', '', '2021-01-19 09:22:18', '2021-01-19 09:22:18');
INSERT INTO `goadmin_operation_log` VALUES (37, 1, '/admin/info/user', 'GET', '127.0.0.1', '', '2021-01-19 09:22:19', '2021-01-19 09:22:19');
INSERT INTO `goadmin_operation_log` VALUES (38, 1, '/admin/info/user', 'GET', '127.0.0.1', '', '2021-01-19 09:22:20', '2021-01-19 09:22:20');
INSERT INTO `goadmin_operation_log` VALUES (39, 1, '/admin/info/user', 'GET', '127.0.0.1', '', '2021-01-19 09:22:20', '2021-01-19 09:22:20');
INSERT INTO `goadmin_operation_log` VALUES (40, 1, '/admin/info/user', 'GET', '127.0.0.1', '', '2021-01-19 09:22:20', '2021-01-19 09:22:20');
INSERT INTO `goadmin_operation_log` VALUES (41, 1, '/admin/info/user', 'GET', '127.0.0.1', '', '2021-01-19 09:22:20', '2021-01-19 09:22:20');
INSERT INTO `goadmin_operation_log` VALUES (42, 1, '/admin/info/user', 'GET', '127.0.0.1', '', '2021-01-19 09:22:21', '2021-01-19 09:22:21');
INSERT INTO `goadmin_operation_log` VALUES (43, 1, '/admin/info/user', 'GET', '127.0.0.1', '', '2021-01-19 09:22:22', '2021-01-19 09:22:22');
INSERT INTO `goadmin_operation_log` VALUES (44, 1, '/admin/info/manager', 'GET', '127.0.0.1', '', '2021-01-19 09:22:23', '2021-01-19 09:22:23');
INSERT INTO `goadmin_operation_log` VALUES (45, 1, '/admin/info/manager', 'GET', '127.0.0.1', '', '2021-01-19 09:23:02', '2021-01-19 09:23:02');
INSERT INTO `goadmin_operation_log` VALUES (46, 1, '/admin/menu', 'GET', '127.0.0.1', '', '2021-01-19 09:23:06', '2021-01-19 09:23:06');
INSERT INTO `goadmin_operation_log` VALUES (47, 1, '/admin/menu/delete', 'POST', '127.0.0.1', '', '2021-01-19 09:23:10', '2021-01-19 09:23:10');
INSERT INTO `goadmin_operation_log` VALUES (48, 1, '/admin/menu', 'GET', '127.0.0.1', '', '2021-01-19 09:23:10', '2021-01-19 09:23:10');
INSERT INTO `goadmin_operation_log` VALUES (49, 1, '/admin/menu', 'GET', '127.0.0.1', '', '2021-01-19 09:23:11', '2021-01-19 09:23:11');
INSERT INTO `goadmin_operation_log` VALUES (50, 1, '/admin/menu', 'GET', '127.0.0.1', '', '2021-01-19 09:23:12', '2021-01-19 09:23:12');
INSERT INTO `goadmin_operation_log` VALUES (51, 1, '/admin/menu', 'GET', '127.0.0.1', '', '2021-01-19 09:23:13', '2021-01-19 09:23:13');
INSERT INTO `goadmin_operation_log` VALUES (52, 1, '/admin/info/roles', 'GET', '127.0.0.1', '', '2021-01-19 09:23:13', '2021-01-19 09:23:13');
INSERT INTO `goadmin_operation_log` VALUES (53, 1, '/admin/info/roles', 'GET', '127.0.0.1', '', '2021-01-19 09:23:14', '2021-01-19 09:23:14');
INSERT INTO `goadmin_operation_log` VALUES (54, 1, '/admin/info/permission', 'GET', '127.0.0.1', '', '2021-01-19 09:23:14', '2021-01-19 09:23:14');
INSERT INTO `goadmin_operation_log` VALUES (55, 1, '/admin/info/permission', 'GET', '127.0.0.1', '', '2021-01-19 09:23:15', '2021-01-19 09:23:15');
INSERT INTO `goadmin_operation_log` VALUES (56, 1, '/admin/menu', 'GET', '127.0.0.1', '', '2021-01-19 09:23:15', '2021-01-19 09:23:15');
INSERT INTO `goadmin_operation_log` VALUES (57, 1, '/admin/info/roles', 'GET', '127.0.0.1', '', '2021-01-19 09:23:16', '2021-01-19 09:23:16');
INSERT INTO `goadmin_operation_log` VALUES (58, 1, '/admin/info/roles', 'GET', '127.0.0.1', '', '2021-01-19 09:23:16', '2021-01-19 09:23:16');
INSERT INTO `goadmin_operation_log` VALUES (59, 1, '/admin/info/manager', 'GET', '127.0.0.1', '', '2021-01-19 09:23:16', '2021-01-19 09:23:16');
INSERT INTO `goadmin_operation_log` VALUES (60, 1, '/admin/menu', 'GET', '127.0.0.1', '', '2021-01-19 09:27:35', '2021-01-19 09:27:35');
INSERT INTO `goadmin_operation_log` VALUES (61, 1, '/admin/menu/new', 'POST', '127.0.0.1', '{\"__go_admin_previous_\":[\"/admin/menu\"],\"__go_admin_t_\":[\"3ba25589-41bc-470c-b000-1c10c04a9936\"],\"header\":[\"\"],\"icon\":[\"fa-bars\"],\"parent_id\":[\"\"],\"plugin_name\":[\"\"],\"roles[]\":[\"1\"],\"title\":[\"用户\"],\"uri\":[\"/info/users\"]}', '2021-01-19 09:28:01', '2021-01-19 09:28:01');
INSERT INTO `goadmin_operation_log` VALUES (62, 1, '/admin/menu', 'GET', '127.0.0.1', '', '2021-01-19 09:28:04', '2021-01-19 09:28:04');
INSERT INTO `goadmin_operation_log` VALUES (63, 1, '/admin/info/users', 'GET', '127.0.0.1', '', '2021-01-19 09:28:04', '2021-01-19 09:28:04');
INSERT INTO `goadmin_operation_log` VALUES (64, 1, '/admin/info/manager', 'GET', '127.0.0.1', '', '2021-01-19 09:29:40', '2021-01-19 09:29:40');
INSERT INTO `goadmin_operation_log` VALUES (65, 1, '/admin/info/manager', 'GET', '127.0.0.1', '', '2021-01-19 09:29:40', '2021-01-19 09:29:40');
INSERT INTO `goadmin_operation_log` VALUES (66, 1, '/admin/info/manager', 'GET', '127.0.0.1', '', '2021-01-19 09:29:40', '2021-01-19 09:29:40');
INSERT INTO `goadmin_operation_log` VALUES (67, 1, '/admin/info/manager', 'GET', '127.0.0.1', '', '2021-01-19 09:29:40', '2021-01-19 09:29:40');
INSERT INTO `goadmin_operation_log` VALUES (68, 1, '/admin/info/manager', 'GET', '127.0.0.1', '', '2021-01-19 09:29:43', '2021-01-19 09:29:43');
INSERT INTO `goadmin_operation_log` VALUES (69, 1, '/admin/info/users', 'GET', '127.0.0.1', '', '2021-01-19 09:29:46', '2021-01-19 09:29:46');
INSERT INTO `goadmin_operation_log` VALUES (70, 1, '/admin/info/roles', 'GET', '127.0.0.1', '', '2021-01-19 09:29:51', '2021-01-19 09:29:51');
INSERT INTO `goadmin_operation_log` VALUES (71, 1, '/admin/info/manager', 'GET', '127.0.0.1', '', '2021-01-19 09:29:53', '2021-01-19 09:29:53');
INSERT INTO `goadmin_operation_log` VALUES (72, 1, '/admin/info/roles', 'GET', '127.0.0.1', '', '2021-01-19 09:29:54', '2021-01-19 09:29:54');
INSERT INTO `goadmin_operation_log` VALUES (73, 1, '/admin/info/permission', 'GET', '127.0.0.1', '', '2021-01-19 09:29:54', '2021-01-19 09:29:54');
INSERT INTO `goadmin_operation_log` VALUES (74, 1, '/admin/menu', 'GET', '127.0.0.1', '', '2021-01-19 09:29:55', '2021-01-19 09:29:55');
INSERT INTO `goadmin_operation_log` VALUES (75, 1, '/admin/info/op', 'GET', '127.0.0.1', '', '2021-01-19 09:29:55', '2021-01-19 09:29:55');
INSERT INTO `goadmin_operation_log` VALUES (76, 1, '/admin/info/users', 'GET', '127.0.0.1', '', '2021-01-19 09:30:01', '2021-01-19 09:30:01');
INSERT INTO `goadmin_operation_log` VALUES (77, 1, '/admin/info/users', 'GET', '127.0.0.1', '', '2021-01-19 09:32:25', '2021-01-19 09:32:25');
INSERT INTO `goadmin_operation_log` VALUES (78, 1, '/admin/info/users', 'GET', '127.0.0.1', '', '2021-01-19 09:32:26', '2021-01-19 09:32:26');
INSERT INTO `goadmin_operation_log` VALUES (79, 1, '/admin/info/users', 'GET', '127.0.0.1', '', '2021-01-19 09:32:35', '2021-01-19 09:32:35');
INSERT INTO `goadmin_operation_log` VALUES (80, 1, '/admin/info/users', 'GET', '127.0.0.1', '', '2021-01-19 09:32:35', '2021-01-19 09:32:35');
INSERT INTO `goadmin_operation_log` VALUES (81, 1, '/admin/info/users', 'GET', '127.0.0.1', '', '2021-01-19 09:32:37', '2021-01-19 09:32:37');
INSERT INTO `goadmin_operation_log` VALUES (82, 1, '/admin/info/users', 'GET', '127.0.0.1', '', '2021-01-19 09:32:37', '2021-01-19 09:32:37');
INSERT INTO `goadmin_operation_log` VALUES (83, 1, '/admin/info/users', 'GET', '127.0.0.1', '', '2021-01-19 09:32:37', '2021-01-19 09:32:37');
INSERT INTO `goadmin_operation_log` VALUES (84, 1, '/admin/info/users', 'GET', '127.0.0.1', '', '2021-01-19 09:32:37', '2021-01-19 09:32:37');
INSERT INTO `goadmin_operation_log` VALUES (85, 1, '/admin/info/users', 'GET', '127.0.0.1', '', '2021-01-19 09:32:37', '2021-01-19 09:32:37');
INSERT INTO `goadmin_operation_log` VALUES (86, 1, '/admin/info/users', 'GET', '127.0.0.1', '', '2021-01-19 09:32:38', '2021-01-19 09:32:38');
INSERT INTO `goadmin_operation_log` VALUES (87, 1, '/admin/info/users', 'GET', '127.0.0.1', '', '2021-01-19 09:32:38', '2021-01-19 09:32:38');
INSERT INTO `goadmin_operation_log` VALUES (88, 1, '/admin/info/users', 'GET', '127.0.0.1', '', '2021-01-19 09:32:39', '2021-01-19 09:32:39');
INSERT INTO `goadmin_operation_log` VALUES (89, 1, '/admin/info/users', 'GET', '127.0.0.1', '', '2021-01-19 09:32:40', '2021-01-19 09:32:40');
INSERT INTO `goadmin_operation_log` VALUES (90, 1, '/admin/info/users', 'GET', '127.0.0.1', '', '2021-01-19 09:32:40', '2021-01-19 09:32:40');
INSERT INTO `goadmin_operation_log` VALUES (91, 1, '/admin/info/users', 'GET', '127.0.0.1', '', '2021-01-19 09:32:40', '2021-01-19 09:32:40');
INSERT INTO `goadmin_operation_log` VALUES (92, 1, '/admin/info/users', 'GET', '127.0.0.1', '', '2021-01-19 09:32:40', '2021-01-19 09:32:40');
INSERT INTO `goadmin_operation_log` VALUES (93, 1, '/admin/info/users', 'GET', '127.0.0.1', '', '2021-01-19 09:32:41', '2021-01-19 09:32:41');
INSERT INTO `goadmin_operation_log` VALUES (94, 1, '/admin', 'GET', '127.0.0.1', '', '2021-01-19 09:32:42', '2021-01-19 09:32:42');
INSERT INTO `goadmin_operation_log` VALUES (95, 1, '/admin/info/users', 'GET', '127.0.0.1', '', '2021-01-19 09:32:44', '2021-01-19 09:32:44');
INSERT INTO `goadmin_operation_log` VALUES (96, 1, '/admin/info/users', 'GET', '127.0.0.1', '', '2021-01-19 09:33:32', '2021-01-19 09:33:32');
INSERT INTO `goadmin_operation_log` VALUES (97, 1, '/admin/info/users', 'GET', '127.0.0.1', '', '2021-01-19 09:33:33', '2021-01-19 09:33:33');
INSERT INTO `goadmin_operation_log` VALUES (98, 1, '/admin/info/users', 'GET', '127.0.0.1', '', '2021-01-19 09:33:34', '2021-01-19 09:33:34');
INSERT INTO `goadmin_operation_log` VALUES (99, 1, '/admin/info/generate/new', 'GET', '127.0.0.1', '', '2021-01-19 09:36:12', '2021-01-19 09:36:12');
INSERT INTO `goadmin_operation_log` VALUES (100, 1, '/admin/operation/_tool_choose_conn', 'POST', '127.0.0.1', '', '2021-01-19 09:36:15', '2021-01-19 09:36:15');
INSERT INTO `goadmin_operation_log` VALUES (101, 1, '/admin/operation/_tool_choose_table', 'POST', '127.0.0.1', '', '2021-01-19 09:36:18', '2021-01-19 09:36:18');
INSERT INTO `goadmin_operation_log` VALUES (102, 1, '/admin/new/generate', 'POST', '127.0.0.1', '{\"__checkbox__hide_back_button\":[\"on\"],\"__checkbox__hide_continue_edit_check_box\":[\"on\"],\"__checkbox__hide_continue_new_check_box\":[\"on\"],\"__checkbox__hide_delete_button\":[\"on\"],\"__checkbox__hide_detail_button\":[\"on\"],\"__checkbox__hide_edit_button\":[\"on\"],\"__checkbox__hide_export_button\":[\"on\"],\"__checkbox__hide_filter_area\":[\"on\"],\"__checkbox__hide_filter_button\":[\"on\"],\"__checkbox__hide_new_button\":[\"on\"],\"__checkbox__hide_pagination\":[\"on\"],\"__checkbox__hide_query_info\":[\"on\"],\"__checkbox__hide_reset_button\":[\"on\"],\"__checkbox__hide_row_selector\":[\"on\"],\"__checkbox__permission\":[\"on\"],\"__go_admin_previous_\":[\"/admin/info/generate?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"9933012a-f9bb-46d2-9bf6-e0f707fea161\"],\"conn\":[\"default\"],\"detail_description\":[\"\"],\"detail_display\":[\"0\"],\"detail_title\":[\"\"],\"extra_code\":[\"\"],\"field_canadd\":[\"n\",\"y\",\"y\",\"y\",\"y\",\"y\",\"y\",\"y\"],\"field_canedit\":[\"y\",\"y\",\"y\",\"y\",\"y\",\"y\",\"y\",\"y\"],\"field_db_type\":[\"Int\",\"Varchar\",\"Tinyint\",\"Varchar\",\"Varchar\",\"Varchar\",\"Timestamp\",\"Timestamp\"],\"field_db_type_form\":[\"Int\",\"Varchar\",\"Tinyint\",\"Varchar\",\"Varchar\",\"Varchar\",\"Timestamp\",\"Timestamp\"],\"field_default\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"field_display\":[\"\",\"\",\"\",\"\",\"\",\"\",\"1\",\"1\"],\"field_filterable\":[\"n\",\"n\",\"n\",\"n\",\"n\",\"n\",\"n\",\"n\"],\"field_form_type_form\":[\"Default\",\"Text\",\"Number\",\"Text\",\"Ip\",\"Text\",\"Datetime\",\"Datetime\"],\"field_head\":[\"Id\",\"Name\",\"Gender\",\"City\",\"Ip\",\"Phone\",\"Created_at\",\"Updated_at\"],\"field_head_form\":[\"Id\",\"Name\",\"Gender\",\"City\",\"Ip\",\"Phone\",\"Created_at\",\"Updated_at\"],\"field_hide\":[\"n\",\"n\",\"n\",\"n\",\"n\",\"n\",\"n\",\"n\"],\"field_name\":[\"id\",\"name\",\"gender\",\"city\",\"ip\",\"phone\",\"created_at\",\"updated_at\"],\"field_name_form\":[\"id\",\"name\",\"gender\",\"city\",\"ip\",\"phone\",\"created_at\",\"updated_at\"],\"field_sortable\":[\"n\",\"n\",\"n\",\"n\",\"n\",\"n\",\"n\",\"n\"],\"filter_form_layout\":[\"LayoutDefault\"],\"form_description\":[\"set\"],\"form_title\":[\"test\"],\"hide_back_button\":[\"n\"],\"hide_continue_edit_check_box\":[\"n\"],\"hide_continue_new_check_box\":[\"n\"],\"hide_delete_button\":[\"n\"],\"hide_detail_button\":[\"n\"],\"hide_edit_button\":[\"n\"],\"hide_export_button\":[\"n\"],\"hide_filter_area\":[\"n\"],\"hide_filter_button\":[\"n\"],\"hide_new_button\":[\"n\"],\"hide_pagination\":[\"n\"],\"hide_query_info\":[\"n\"],\"hide_reset_button\":[\"n\"],\"hide_row_selector\":[\"n\"],\"info_field_editable\":[\"n\",\"n\",\"n\",\"n\",\"n\",\"n\",\"n\",\"n\"],\"package\":[\"tables\"],\"path\":[\"d:/www/goadmin/tables\"],\"permission\":[\"y\"],\"pk\":[\"id\"],\"table\":[\"users\"],\"table_description\":[\"est\"],\"table_title\":[\"test\"]}', '2021-01-19 09:37:33', '2021-01-19 09:37:33');
INSERT INTO `goadmin_operation_log` VALUES (103, 1, '/admin', 'GET', '127.0.0.1', '', '2021-01-19 09:37:49', '2021-01-19 09:37:49');
INSERT INTO `goadmin_operation_log` VALUES (104, 1, '/admin/info/users', 'GET', '127.0.0.1', '', '2021-01-19 09:37:51', '2021-01-19 09:37:51');
INSERT INTO `goadmin_operation_log` VALUES (105, 1, '/admin/info/users', 'GET', '127.0.0.1', '', '2021-01-19 09:37:52', '2021-01-19 09:37:52');
INSERT INTO `goadmin_operation_log` VALUES (106, 1, '/admin/info/users', 'GET', '127.0.0.1', '', '2021-01-19 09:37:54', '2021-01-19 09:37:54');
INSERT INTO `goadmin_operation_log` VALUES (107, 1, '/admin/info/users', 'GET', '127.0.0.1', '', '2021-01-19 09:37:55', '2021-01-19 09:37:55');
INSERT INTO `goadmin_operation_log` VALUES (108, 1, '/admin/info/users', 'GET', '127.0.0.1', '', '2021-01-19 09:37:55', '2021-01-19 09:37:55');
INSERT INTO `goadmin_operation_log` VALUES (109, 1, '/admin/info/users', 'GET', '127.0.0.1', '', '2021-01-19 09:37:55', '2021-01-19 09:37:55');
INSERT INTO `goadmin_operation_log` VALUES (110, 1, '/admin/info/users', 'GET', '127.0.0.1', '', '2021-01-19 09:37:56', '2021-01-19 09:37:56');
INSERT INTO `goadmin_operation_log` VALUES (111, 1, '/admin/info/users', 'GET', '127.0.0.1', '', '2021-01-19 09:37:56', '2021-01-19 09:37:56');
INSERT INTO `goadmin_operation_log` VALUES (112, 1, '/admin/info/users', 'GET', '127.0.0.1', '', '2021-01-19 09:37:56', '2021-01-19 09:37:56');
INSERT INTO `goadmin_operation_log` VALUES (113, 1, '/admin/info/users', 'GET', '127.0.0.1', '', '2021-01-19 09:37:57', '2021-01-19 09:37:57');
INSERT INTO `goadmin_operation_log` VALUES (114, 1, '/admin/info/users', 'GET', '127.0.0.1', '', '2021-01-19 09:37:58', '2021-01-19 09:37:58');
INSERT INTO `goadmin_operation_log` VALUES (115, 1, '/admin/info/users', 'GET', '127.0.0.1', '', '2021-01-19 09:37:58', '2021-01-19 09:37:58');
INSERT INTO `goadmin_operation_log` VALUES (116, 1, '/admin/info/users', 'GET', '127.0.0.1', '', '2021-01-19 09:37:59', '2021-01-19 09:37:59');
INSERT INTO `goadmin_operation_log` VALUES (117, 1, '/admin/info/users', 'GET', '127.0.0.1', '', '2021-01-19 09:37:59', '2021-01-19 09:37:59');
INSERT INTO `goadmin_operation_log` VALUES (118, 1, '/admin/info/users', 'GET', '127.0.0.1', '', '2021-01-19 09:37:59', '2021-01-19 09:37:59');
INSERT INTO `goadmin_operation_log` VALUES (119, 1, '/admin/info/users', 'GET', '127.0.0.1', '', '2021-01-19 09:37:59', '2021-01-19 09:37:59');
INSERT INTO `goadmin_operation_log` VALUES (120, 1, '/admin/info/op', 'GET', '127.0.0.1', '', '2021-01-19 09:38:04', '2021-01-19 09:38:04');
INSERT INTO `goadmin_operation_log` VALUES (121, 1, '/admin/info/users', 'GET', '127.0.0.1', '', '2021-01-19 09:38:14', '2021-01-19 09:38:14');
INSERT INTO `goadmin_operation_log` VALUES (122, 1, '/admin/info/users', 'GET', '127.0.0.1', '', '2021-01-19 09:41:03', '2021-01-19 09:41:03');
INSERT INTO `goadmin_operation_log` VALUES (123, 1, '/admin', 'GET', '::1', '', '2021-01-19 09:48:51', '2021-01-19 09:48:51');
INSERT INTO `goadmin_operation_log` VALUES (124, 1, '/admin/info/users', 'GET', '::1', '', '2021-01-19 09:48:53', '2021-01-19 09:48:53');
INSERT INTO `goadmin_operation_log` VALUES (125, 1, '/admin/info/users', 'GET', '::1', '', '2021-01-19 09:48:55', '2021-01-19 09:48:55');
INSERT INTO `goadmin_operation_log` VALUES (126, 1, '/admin/info/manager', 'GET', '::1', '', '2021-01-19 09:48:56', '2021-01-19 09:48:56');
INSERT INTO `goadmin_operation_log` VALUES (127, 1, '/admin/menu', 'GET', '::1', '', '2021-01-19 09:48:57', '2021-01-19 09:48:57');
INSERT INTO `goadmin_operation_log` VALUES (128, 1, '/admin/menu/delete', 'POST', '::1', '', '2021-01-19 09:49:01', '2021-01-19 09:49:01');
INSERT INTO `goadmin_operation_log` VALUES (129, 1, '/admin/menu', 'GET', '::1', '', '2021-01-19 09:49:01', '2021-01-19 09:49:01');
INSERT INTO `goadmin_operation_log` VALUES (130, 1, '/admin/menu/new', 'POST', '::1', '{\"__go_admin_previous_\":[\"/admin/menu\"],\"__go_admin_t_\":[\"498cc22d-0d58-4802-8a47-5de902b251dc\"],\"header\":[\"\"],\"icon\":[\"fa-bars\"],\"parent_id\":[\"\"],\"plugin_name\":[\"\"],\"roles[]\":[\"1\"],\"title\":[\"博客文章\"],\"uri\":[\"/info/blog_article\"]}', '2021-01-19 09:49:45', '2021-01-19 09:49:45');
INSERT INTO `goadmin_operation_log` VALUES (131, 1, '/admin/menu/new', 'POST', '::1', '{\"__go_admin_previous_\":[\"/admin/menu\"],\"__go_admin_t_\":[\"5072959a-e4b9-41c0-b20f-c895a211dcf3\"],\"header\":[\"\"],\"icon\":[\"fa-bars\"],\"parent_id\":[\"\"],\"plugin_name\":[\"\"],\"roles[]\":[\"1\"],\"title\":[\"博客用户\"],\"uri\":[\"/info/blog_auth\"]}', '2021-01-19 09:50:04', '2021-01-19 09:50:04');
INSERT INTO `goadmin_operation_log` VALUES (132, 1, '/admin/menu/new', 'POST', '::1', '{\"__go_admin_previous_\":[\"/admin/menu\"],\"__go_admin_t_\":[\"8d8e7090-f3cc-4812-b0e0-36b92b691472\"],\"header\":[\"\"],\"icon\":[\"fa-bars\"],\"parent_id\":[\"\"],\"plugin_name\":[\"\"],\"roles[]\":[\"1\"],\"title\":[\"博客标签\"],\"uri\":[\"/info/blog_tag\"]}', '2021-01-19 09:50:22', '2021-01-19 09:50:22');
INSERT INTO `goadmin_operation_log` VALUES (133, 1, '/admin/menu', 'GET', '::1', '', '2021-01-19 09:50:24', '2021-01-19 09:50:24');
INSERT INTO `goadmin_operation_log` VALUES (134, 1, '/admin/info/blog_article', 'GET', '::1', '', '2021-01-19 09:50:32', '2021-01-19 09:50:32');
INSERT INTO `goadmin_operation_log` VALUES (135, 1, '/admin/info/blog_auth', 'GET', '::1', '', '2021-01-19 09:50:34', '2021-01-19 09:50:34');
INSERT INTO `goadmin_operation_log` VALUES (136, 1, '/admin/info/blog_tag', 'GET', '::1', '', '2021-01-19 09:50:35', '2021-01-19 09:50:35');
INSERT INTO `goadmin_operation_log` VALUES (137, 1, '/admin/info/blog_auth', 'GET', '::1', '', '2021-01-19 09:50:37', '2021-01-19 09:50:37');
INSERT INTO `goadmin_operation_log` VALUES (138, 1, '/admin/info/blog_article', 'GET', '::1', '', '2021-01-19 09:50:37', '2021-01-19 09:50:37');
INSERT INTO `goadmin_operation_log` VALUES (139, 1, '/admin/info/blog_auth', 'GET', '::1', '', '2021-01-19 09:51:01', '2021-01-19 09:51:01');
INSERT INTO `goadmin_operation_log` VALUES (140, 1, '/admin/info/blog_auth', 'GET', '::1', '', '2021-01-19 09:53:33', '2021-01-19 09:53:33');
INSERT INTO `goadmin_operation_log` VALUES (141, 1, '/admin/info/blog_auth', 'GET', '::1', '', '2021-01-19 09:53:36', '2021-01-19 09:53:36');
INSERT INTO `goadmin_operation_log` VALUES (142, 1, '/admin/info/blog_auth', 'GET', '::1', '', '2021-01-19 09:53:46', '2021-01-19 09:53:46');
INSERT INTO `goadmin_operation_log` VALUES (143, 1, '/admin/info/blog_auth', 'GET', '::1', '', '2021-01-19 09:53:47', '2021-01-19 09:53:47');
INSERT INTO `goadmin_operation_log` VALUES (144, 1, '/admin/info/blog_auth', 'GET', '::1', '', '2021-01-19 09:53:47', '2021-01-19 09:53:47');
INSERT INTO `goadmin_operation_log` VALUES (145, 1, '/admin/info/blog_auth/new', 'GET', '::1', '', '2021-01-19 09:53:48', '2021-01-19 09:53:48');
INSERT INTO `goadmin_operation_log` VALUES (146, 1, '/admin/info/blog_auth', 'GET', '::1', '', '2021-01-19 09:53:51', '2021-01-19 09:53:51');
INSERT INTO `goadmin_operation_log` VALUES (147, 1, '/admin/info/blog_auth/edit', 'GET', '::1', '', '2021-01-19 09:53:56', '2021-01-19 09:53:56');
INSERT INTO `goadmin_operation_log` VALUES (148, 1, '/admin/info/blog_auth', 'GET', '::1', '', '2021-01-19 09:53:59', '2021-01-19 09:53:59');
INSERT INTO `goadmin_operation_log` VALUES (149, 1, '/admin/info/blog_auth/new', 'GET', '::1', '', '2021-01-19 09:54:01', '2021-01-19 09:54:01');
INSERT INTO `goadmin_operation_log` VALUES (150, 1, '/admin/info/blog_tag', 'GET', '::1', '', '2021-01-19 09:54:12', '2021-01-19 09:54:12');
INSERT INTO `goadmin_operation_log` VALUES (151, 1, '/admin/info/blog_auth', 'GET', '::1', '', '2021-01-19 09:54:13', '2021-01-19 09:54:13');
INSERT INTO `goadmin_operation_log` VALUES (152, 1, '/admin/info/blog_article', 'GET', '::1', '', '2021-01-19 09:54:14', '2021-01-19 09:54:14');
INSERT INTO `goadmin_operation_log` VALUES (153, 1, '/admin/info/blog_auth', 'GET', '::1', '', '2021-01-19 09:54:16', '2021-01-19 09:54:16');
INSERT INTO `goadmin_operation_log` VALUES (154, 1, '/admin/info/blog_tag', 'GET', '::1', '', '2021-01-19 09:55:59', '2021-01-19 09:55:59');
INSERT INTO `goadmin_operation_log` VALUES (155, 1, '/admin/info/blog_auth', 'GET', '::1', '', '2021-01-19 09:56:00', '2021-01-19 09:56:00');
INSERT INTO `goadmin_operation_log` VALUES (156, 1, '/admin/info/blog_article', 'GET', '::1', '', '2021-01-19 09:56:00', '2021-01-19 09:56:00');
INSERT INTO `goadmin_operation_log` VALUES (157, 1, '/admin/info/manager', 'GET', '::1', '', '2021-01-19 09:56:01', '2021-01-19 09:56:01');
INSERT INTO `goadmin_operation_log` VALUES (158, 1, '/admin/info/roles', 'GET', '::1', '', '2021-01-19 09:56:02', '2021-01-19 09:56:02');
INSERT INTO `goadmin_operation_log` VALUES (159, 1, '/admin/info/roles', 'GET', '::1', '', '2021-01-19 09:56:02', '2021-01-19 09:56:02');
INSERT INTO `goadmin_operation_log` VALUES (160, 1, '/admin/menu', 'GET', '::1', '', '2021-01-19 09:56:02', '2021-01-19 09:56:02');
INSERT INTO `goadmin_operation_log` VALUES (161, 1, '/admin/menu', 'GET', '::1', '', '2021-01-19 09:56:03', '2021-01-19 09:56:03');
INSERT INTO `goadmin_operation_log` VALUES (162, 1, '/admin/info/blog_tag', 'GET', '::1', '', '2021-01-19 09:56:07', '2021-01-19 09:56:07');
INSERT INTO `goadmin_operation_log` VALUES (163, 1, '/admin/info/blog_auth', 'GET', '::1', '', '2021-01-19 09:56:08', '2021-01-19 09:56:08');
INSERT INTO `goadmin_operation_log` VALUES (164, 1, '/admin/info/blog_auth/new', 'GET', '::1', '', '2021-01-19 09:56:23', '2021-01-19 09:56:23');
INSERT INTO `goadmin_operation_log` VALUES (165, 1, '/admin/info/blog_article', 'GET', '::1', '', '2021-01-19 09:58:54', '2021-01-19 09:58:54');
INSERT INTO `goadmin_operation_log` VALUES (166, 1, '/admin/info/blog_auth', 'GET', '::1', '', '2021-01-19 09:58:55', '2021-01-19 09:58:55');
INSERT INTO `goadmin_operation_log` VALUES (167, 1, '/admin/info/blog_auth', 'GET', '::1', '', '2021-01-19 09:58:57', '2021-01-19 09:58:57');
INSERT INTO `goadmin_operation_log` VALUES (168, 1, '/admin/info/blog_auth', 'GET', '::1', '', '2021-01-19 09:58:58', '2021-01-19 09:58:58');
INSERT INTO `goadmin_operation_log` VALUES (169, 1, '/admin/info/blog_auth', 'GET', '::1', '', '2021-01-19 09:58:59', '2021-01-19 09:58:59');
INSERT INTO `goadmin_operation_log` VALUES (170, 1, '/admin/info/blog_auth', 'GET', '::1', '', '2021-01-19 09:59:00', '2021-01-19 09:59:00');
INSERT INTO `goadmin_operation_log` VALUES (171, 1, '/admin/info/blog_auth', 'GET', '::1', '', '2021-01-19 09:59:00', '2021-01-19 09:59:00');
INSERT INTO `goadmin_operation_log` VALUES (172, 1, '/admin/info/blog_auth', 'GET', '::1', '', '2021-01-19 09:59:02', '2021-01-19 09:59:02');
INSERT INTO `goadmin_operation_log` VALUES (173, 1, '/admin/info/blog_auth', 'GET', '::1', '', '2021-01-19 09:59:03', '2021-01-19 09:59:03');
INSERT INTO `goadmin_operation_log` VALUES (174, 1, '/admin/info/blog_auth', 'GET', '::1', '', '2021-01-19 09:59:04', '2021-01-19 09:59:04');
INSERT INTO `goadmin_operation_log` VALUES (175, 1, '/admin/info/blog_auth', 'GET', '::1', '', '2021-01-19 09:59:05', '2021-01-19 09:59:05');
INSERT INTO `goadmin_operation_log` VALUES (176, 1, '/admin/info/blog_auth/new', 'GET', '::1', '', '2021-01-19 09:59:08', '2021-01-19 09:59:08');
INSERT INTO `goadmin_operation_log` VALUES (177, 1, '/admin/info/blog_auth', 'GET', '::1', '', '2021-01-19 09:59:11', '2021-01-19 09:59:11');
INSERT INTO `goadmin_operation_log` VALUES (178, 1, '/admin/info/blog_auth', 'GET', '::1', '', '2021-01-19 09:59:34', '2021-01-19 09:59:34');
INSERT INTO `goadmin_operation_log` VALUES (179, 1, '/admin/info/blog_auth', 'GET', '::1', '', '2021-01-19 09:59:36', '2021-01-19 09:59:36');
INSERT INTO `goadmin_operation_log` VALUES (180, 1, '/admin/info/blog_auth', 'GET', '::1', '', '2021-01-19 09:59:38', '2021-01-19 09:59:38');
INSERT INTO `goadmin_operation_log` VALUES (181, 1, '/admin/info/blog_auth', 'GET', '::1', '', '2021-01-19 09:59:38', '2021-01-19 09:59:38');
INSERT INTO `goadmin_operation_log` VALUES (182, 1, '/admin/info/blog_auth', 'GET', '::1', '', '2021-01-19 09:59:39', '2021-01-19 09:59:39');
INSERT INTO `goadmin_operation_log` VALUES (183, 1, '/admin/info/blog_auth', 'GET', '::1', '', '2021-01-19 09:59:40', '2021-01-19 09:59:40');
INSERT INTO `goadmin_operation_log` VALUES (184, 1, '/admin/info/blog_auth', 'GET', '::1', '', '2021-01-19 09:59:40', '2021-01-19 09:59:40');
INSERT INTO `goadmin_operation_log` VALUES (185, 1, '/admin/info/blog_auth', 'GET', '::1', '', '2021-01-19 09:59:40', '2021-01-19 09:59:40');
INSERT INTO `goadmin_operation_log` VALUES (186, 1, '/admin/info/blog_auth', 'GET', '::1', '', '2021-01-19 10:00:58', '2021-01-19 10:00:58');
INSERT INTO `goadmin_operation_log` VALUES (187, 1, '/admin/info/blog_auth', 'GET', '::1', '', '2021-01-19 10:01:45', '2021-01-19 10:01:45');
INSERT INTO `goadmin_operation_log` VALUES (188, 1, '/admin/info/blog_auth', 'GET', '::1', '', '2021-01-19 10:01:46', '2021-01-19 10:01:46');
INSERT INTO `goadmin_operation_log` VALUES (189, 1, '/admin/info/blog_auth', 'GET', '::1', '', '2021-01-19 10:01:46', '2021-01-19 10:01:46');
INSERT INTO `goadmin_operation_log` VALUES (190, 1, '/admin/info/blog_auth', 'GET', '::1', '', '2021-01-19 10:03:12', '2021-01-19 10:03:12');
INSERT INTO `goadmin_operation_log` VALUES (191, 1, '/admin/info/blog_auth', 'GET', '::1', '', '2021-01-19 10:03:14', '2021-01-19 10:03:14');
INSERT INTO `goadmin_operation_log` VALUES (192, 1, '/admin/info/blog_auth', 'GET', '::1', '', '2021-01-19 10:03:14', '2021-01-19 10:03:14');
INSERT INTO `goadmin_operation_log` VALUES (193, 1, '/admin/info/blog_auth', 'GET', '::1', '', '2021-01-19 10:03:15', '2021-01-19 10:03:15');
INSERT INTO `goadmin_operation_log` VALUES (194, 1, '/admin/info/blog_auth', 'GET', '::1', '', '2021-01-19 10:03:15', '2021-01-19 10:03:15');
INSERT INTO `goadmin_operation_log` VALUES (195, 1, '/admin/info/blog_auth/detail', 'GET', '::1', '', '2021-01-19 10:03:49', '2021-01-19 10:03:49');
INSERT INTO `goadmin_operation_log` VALUES (196, 1, '/admin/info/blog_auth', 'GET', '::1', '', '2021-01-19 10:03:51', '2021-01-19 10:03:51');
INSERT INTO `goadmin_operation_log` VALUES (197, 1, '/admin/info/blog_auth/edit', 'GET', '::1', '', '2021-01-19 10:03:55', '2021-01-19 10:03:55');
INSERT INTO `goadmin_operation_log` VALUES (198, 1, '/admin/info/blog_auth', 'GET', '::1', '', '2021-01-19 10:03:56', '2021-01-19 10:03:56');
INSERT INTO `goadmin_operation_log` VALUES (199, 1, '/admin/info/blog_auth', 'GET', '::1', '', '2021-01-19 10:04:12', '2021-01-19 10:04:12');
INSERT INTO `goadmin_operation_log` VALUES (200, 1, '/admin/info/blog_auth', 'GET', '::1', '', '2021-01-19 10:04:13', '2021-01-19 10:04:13');
INSERT INTO `goadmin_operation_log` VALUES (201, 1, '/admin/info/blog_auth', 'GET', '::1', '', '2021-01-19 13:42:12', '2021-01-19 13:42:12');
INSERT INTO `goadmin_operation_log` VALUES (202, 1, '/admin/info/blog_auth', 'GET', '::1', '', '2021-01-19 13:42:15', '2021-01-19 13:42:15');
INSERT INTO `goadmin_operation_log` VALUES (203, 1, '/admin/info/blog_auth', 'GET', '::1', '', '2021-01-19 13:42:21', '2021-01-19 13:42:21');
INSERT INTO `goadmin_operation_log` VALUES (204, 1, '/admin/info/blog_tag', 'GET', '::1', '', '2021-01-19 13:42:21', '2021-01-19 13:42:21');
INSERT INTO `goadmin_operation_log` VALUES (205, 1, '/admin/info/blog_auth', 'GET', '::1', '', '2021-01-19 13:42:22', '2021-01-19 13:42:22');
INSERT INTO `goadmin_operation_log` VALUES (206, 1, '/admin/info/blog_auth', 'GET', '::1', '', '2021-01-19 13:50:06', '2021-01-19 13:50:06');
INSERT INTO `goadmin_operation_log` VALUES (207, 1, '/admin/info/blog_auth', 'GET', '::1', '', '2021-01-19 13:50:19', '2021-01-19 13:50:19');
INSERT INTO `goadmin_operation_log` VALUES (208, 1, '/admin/info/blog_auth/edit', 'GET', '::1', '', '2021-01-19 13:50:20', '2021-01-19 13:50:20');
INSERT INTO `goadmin_operation_log` VALUES (209, 1, '/admin/info/blog_auth', 'GET', '::1', '', '2021-01-19 13:50:24', '2021-01-19 13:50:24');
INSERT INTO `goadmin_operation_log` VALUES (210, 1, '/admin/info/blog_auth', 'GET', '::1', '', '2021-01-19 13:50:26', '2021-01-19 13:50:26');
INSERT INTO `goadmin_operation_log` VALUES (211, 1, '/admin/info/blog_auth/new', 'GET', '::1', '', '2021-01-19 13:50:27', '2021-01-19 13:50:27');
INSERT INTO `goadmin_operation_log` VALUES (212, 1, '/admin/new/blog_auth', 'POST', '::1', '{\"__go_admin_previous_\":[\"/admin/info/blog_auth?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"852e161e-7126-41a5-bbc7-b8738975bb28\"],\"password\":[\"set\"],\"username\":[\"test\"]}', '2021-01-19 13:50:30', '2021-01-19 13:50:30');
INSERT INTO `goadmin_operation_log` VALUES (213, 1, '/admin/info/blog_auth/new', 'GET', '::1', '', '2021-01-19 13:50:32', '2021-01-19 13:50:32');
INSERT INTO `goadmin_operation_log` VALUES (214, 1, '/admin/new/blog_auth', 'POST', '::1', '{\"__go_admin_previous_\":[\"/admin/info/blog_auth?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"3a1990b1-f495-4d00-9849-96b83a7cd8c2\"],\"password\":[\"rwerwer\"],\"username\":[\"werwe\"]}', '2021-01-19 13:50:34', '2021-01-19 13:50:34');
INSERT INTO `goadmin_operation_log` VALUES (215, 1, '/admin/info/blog_auth/new', 'GET', '::1', '', '2021-01-19 13:50:37', '2021-01-19 13:50:37');
INSERT INTO `goadmin_operation_log` VALUES (216, 1, '/admin/new/blog_auth', 'POST', '::1', '{\"__go_admin_previous_\":[\"/admin/info/blog_auth?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"66e1f91c-7b76-4894-a9ba-585c00dd8657\"],\"password\":[\"4234234234\"],\"username\":[\"23423\"]}', '2021-01-19 13:50:41', '2021-01-19 13:50:41');
INSERT INTO `goadmin_operation_log` VALUES (217, 1, '/admin/info/blog_auth', 'GET', '::1', '', '2021-01-19 13:50:52', '2021-01-19 13:50:52');
INSERT INTO `goadmin_operation_log` VALUES (218, 1, '/admin/info/blog_tag', 'GET', '::1', '', '2021-01-19 14:01:27', '2021-01-19 14:01:27');
INSERT INTO `goadmin_operation_log` VALUES (219, 1, '/admin/info/blog_auth', 'GET', '::1', '', '2021-01-19 14:01:28', '2021-01-19 14:01:28');
INSERT INTO `goadmin_operation_log` VALUES (220, 1, '/admin/info/blog_article', 'GET', '::1', '', '2021-01-19 14:01:28', '2021-01-19 14:01:28');
INSERT INTO `goadmin_operation_log` VALUES (221, 1, '/admin/menu', 'GET', '::1', '', '2021-01-19 14:06:03', '2021-01-19 14:06:03');
INSERT INTO `goadmin_operation_log` VALUES (222, 1, '/admin/menu/new', 'POST', '::1', '{\"__go_admin_previous_\":[\"/admin/menu\"],\"__go_admin_t_\":[\"7bd2e65b-2d9e-48fd-ad89-c718de5ee7ec\"],\"header\":[\"\"],\"icon\":[\"fa-bars\"],\"parent_id\":[\"\"],\"plugin_name\":[\"\"],\"roles[]\":[\"1\"],\"title\":[\"用户管理\"],\"uri\":[\"/info/users\"]}', '2021-01-19 14:06:23', '2021-01-19 14:06:23');
INSERT INTO `goadmin_operation_log` VALUES (223, 1, '/admin/menu', 'GET', '::1', '', '2021-01-19 14:06:26', '2021-01-19 14:06:26');
INSERT INTO `goadmin_operation_log` VALUES (224, 1, '/admin/info/users', 'GET', '::1', '', '2021-01-19 14:06:27', '2021-01-19 14:06:27');
INSERT INTO `goadmin_operation_log` VALUES (225, 1, '/admin/info/users', 'GET', '::1', '', '2021-01-19 14:06:28', '2021-01-19 14:06:28');
INSERT INTO `goadmin_operation_log` VALUES (226, 1, '/admin/info/users/new', 'GET', '::1', '', '2021-01-19 14:06:29', '2021-01-19 14:06:29');
INSERT INTO `goadmin_operation_log` VALUES (227, 1, '/admin/new/users', 'POST', '::1', '{\"__go_admin_previous_\":[\"/admin/info/users?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"9f4e650a-7c48-4482-a1d4-72f15bf462cb\"],\"city\":[\"234\"],\"gender\":[\"\"],\"ip\":[\"234234\"],\"name\":[\"tewtwet\"],\"phone\":[\"234234\"]}', '2021-01-19 14:06:38', '2021-01-19 14:06:38');
INSERT INTO `goadmin_operation_log` VALUES (228, 1, '/admin/info/users/edit', 'GET', '::1', '', '2021-01-19 14:06:41', '2021-01-19 14:06:41');
INSERT INTO `goadmin_operation_log` VALUES (229, 1, '/admin/edit/users', 'POST', '::1', '{\"__go_admin_previous_\":[\"/admin/info/users?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"2cec8be3-ddb3-4246-bc35-373ccfa0fa0e\"],\"city\":[\"234\"],\"gender\":[\"0\"],\"id\":[\"1\"],\"ip\":[\"234234\"],\"name\":[\"tewtwet\"],\"phone\":[\"234234234234\"]}', '2021-01-19 14:06:43', '2021-01-19 14:06:43');
INSERT INTO `goadmin_operation_log` VALUES (230, 1, '/admin/info/blog_auth', 'GET', '::1', '', '2021-01-19 14:06:45', '2021-01-19 14:06:45');
INSERT INTO `goadmin_operation_log` VALUES (231, 1, '/admin/info/blog_article', 'GET', '::1', '', '2021-01-19 14:06:46', '2021-01-19 14:06:46');
INSERT INTO `goadmin_operation_log` VALUES (232, 1, '/admin/info/blog_auth', 'GET', '::1', '', '2021-01-19 14:06:46', '2021-01-19 14:06:46');
INSERT INTO `goadmin_operation_log` VALUES (233, 1, '/admin/info/blog_tag', 'GET', '::1', '', '2021-01-19 14:06:46', '2021-01-19 14:06:46');
INSERT INTO `goadmin_operation_log` VALUES (234, 1, '/admin/info/users', 'GET', '::1', '', '2021-01-19 14:16:56', '2021-01-19 14:16:56');
INSERT INTO `goadmin_operation_log` VALUES (235, 1, '/admin/info/users/edit', 'GET', '::1', '', '2021-01-19 14:16:59', '2021-01-19 14:16:59');
INSERT INTO `goadmin_operation_log` VALUES (236, 1, '/admin/info/users', 'GET', '::1', '', '2021-01-19 14:17:05', '2021-01-19 14:17:05');
INSERT INTO `goadmin_operation_log` VALUES (237, 1, '/admin/info/users/detail', 'GET', '::1', '', '2021-01-19 14:17:06', '2021-01-19 14:17:06');
INSERT INTO `goadmin_operation_log` VALUES (238, 1, '/admin/info/users', 'GET', '::1', '', '2021-01-19 14:17:14', '2021-01-19 14:17:14');
INSERT INTO `goadmin_operation_log` VALUES (239, 1, '/admin/info/users/edit', 'GET', '::1', '', '2021-01-19 14:17:16', '2021-01-19 14:17:16');
INSERT INTO `goadmin_operation_log` VALUES (240, 1, '/admin/edit/users', 'POST', '::1', '{\"__go_admin_previous_\":[\"/admin/info/users?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"7709f166-c3ca-4f70-b83b-1dcc79245681\"],\"city\":[\"234\"],\"gender\":[\"0\"],\"id\":[\"1\"],\"ip\":[\"234234\"],\"name\":[\"tewtwet\"],\"phone\":[\"2342342342\"]}', '2021-01-19 14:17:17', '2021-01-19 14:17:17');
INSERT INTO `goadmin_operation_log` VALUES (241, 1, '/admin/info/users', 'GET', '::1', '', '2021-01-19 14:18:28', '2021-01-19 14:18:28');
INSERT INTO `goadmin_operation_log` VALUES (242, 1, '/admin/info/users/edit', 'GET', '::1', '', '2021-01-19 14:18:30', '2021-01-19 14:18:30');
INSERT INTO `goadmin_operation_log` VALUES (243, 1, '/admin/edit/users', 'POST', '::1', '{\"__go_admin_previous_\":[\"/admin/info/users?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"d1e68752-7f97-4a78-8852-96292aa1ef74\"],\"city\":[\"234\"],\"created_at\":[\"2021-01-19 14:06:38\"],\"gender\":[\"0\"],\"id\":[\"1\"],\"ip\":[\"234234\"],\"name\":[\"tewtwet\"],\"phone\":[\"2342342342\"],\"updated_at\":[\"2021-01-19 00:00:00\"]}', '2021-01-19 14:18:35', '2021-01-19 14:18:35');
INSERT INTO `goadmin_operation_log` VALUES (244, 1, '/admin/info/users', 'GET', '::1', '', '2021-01-19 14:18:45', '2021-01-19 14:18:45');
INSERT INTO `goadmin_operation_log` VALUES (245, 1, '/admin/info/blog_tag', 'GET', '::1', '', '2021-01-19 14:18:52', '2021-01-19 14:18:52');
INSERT INTO `goadmin_operation_log` VALUES (246, 1, '/admin/info/blog_auth', 'GET', '::1', '', '2021-01-19 14:18:53', '2021-01-19 14:18:53');
INSERT INTO `goadmin_operation_log` VALUES (247, 1, '/admin/info/blog_tag', 'GET', '::1', '', '2021-01-19 14:18:53', '2021-01-19 14:18:53');
INSERT INTO `goadmin_operation_log` VALUES (248, 1, '/admin/info/users', 'GET', '::1', '', '2021-01-19 14:18:54', '2021-01-19 14:18:54');
INSERT INTO `goadmin_operation_log` VALUES (249, 1, '/admin/info/blog_tag', 'GET', '::1', '', '2021-01-19 14:18:54', '2021-01-19 14:18:54');
INSERT INTO `goadmin_operation_log` VALUES (250, 1, '/admin/info/blog_auth', 'GET', '::1', '', '2021-01-19 14:18:55', '2021-01-19 14:18:55');
INSERT INTO `goadmin_operation_log` VALUES (251, 1, '/admin/info/blog_auth', 'GET', '::1', '', '2021-01-19 14:23:46', '2021-01-19 14:23:46');
INSERT INTO `goadmin_operation_log` VALUES (252, 1, '/admin/info/blog_auth', 'GET', '::1', '', '2021-01-19 14:58:31', '2021-01-19 14:58:31');
INSERT INTO `goadmin_operation_log` VALUES (253, 1, '/admin/logout', 'GET', '::1', '', '2021-01-19 14:58:35', '2021-01-19 14:58:35');
INSERT INTO `goadmin_operation_log` VALUES (254, 1, '/admin', 'GET', '127.0.0.1', '', '2021-01-19 14:59:42', '2021-01-19 14:59:42');
INSERT INTO `goadmin_operation_log` VALUES (255, 1, '/admin', 'GET', '::1', '', '2021-01-19 15:00:12', '2021-01-19 15:00:12');
INSERT INTO `goadmin_operation_log` VALUES (256, 1, '/admin', 'GET', '::1', '', '2021-01-19 15:00:12', '2021-01-19 15:00:12');
INSERT INTO `goadmin_operation_log` VALUES (257, 1, '/admin/info/manager', 'GET', '::1', '', '2021-01-19 15:00:14', '2021-01-19 15:00:14');
INSERT INTO `goadmin_operation_log` VALUES (258, 1, '/admin/info/roles', 'GET', '::1', '', '2021-01-19 15:00:14', '2021-01-19 15:00:14');
INSERT INTO `goadmin_operation_log` VALUES (259, 1, '/admin/info/permission', 'GET', '::1', '', '2021-01-19 15:00:15', '2021-01-19 15:00:15');
INSERT INTO `goadmin_operation_log` VALUES (260, 1, '/admin/menu', 'GET', '::1', '', '2021-01-19 15:00:15', '2021-01-19 15:00:15');
INSERT INTO `goadmin_operation_log` VALUES (261, 1, '/admin/info/op', 'GET', '::1', '', '2021-01-19 15:00:16', '2021-01-19 15:00:16');
INSERT INTO `goadmin_operation_log` VALUES (262, 1, '/admin/info/op', 'GET', '::1', '', '2021-01-19 15:00:16', '2021-01-19 15:00:16');
INSERT INTO `goadmin_operation_log` VALUES (263, 1, '/admin/menu', 'GET', '::1', '', '2021-01-19 15:00:17', '2021-01-19 15:00:17');
INSERT INTO `goadmin_operation_log` VALUES (264, 1, '/admin/info/permission', 'GET', '::1', '', '2021-01-19 15:00:17', '2021-01-19 15:00:17');
INSERT INTO `goadmin_operation_log` VALUES (265, 1, '/admin/info/blog_auth', 'GET', '::1', '', '2021-01-19 15:00:17', '2021-01-19 15:00:17');
INSERT INTO `goadmin_operation_log` VALUES (266, 1, '/admin/info/users', 'GET', '::1', '', '2021-01-19 15:00:18', '2021-01-19 15:00:18');
INSERT INTO `goadmin_operation_log` VALUES (267, 1, '/admin/info/users', 'GET', '::1', '', '2021-01-19 15:00:20', '2021-01-19 15:00:20');
INSERT INTO `goadmin_operation_log` VALUES (268, 1, '/admin/info/users', 'GET', '::1', '', '2021-01-19 15:00:22', '2021-01-19 15:00:22');
INSERT INTO `goadmin_operation_log` VALUES (269, 1, '/admin/info/blog_tag', 'GET', '::1', '', '2021-01-19 15:01:29', '2021-01-19 15:01:29');
INSERT INTO `goadmin_operation_log` VALUES (270, 1, '/admin/info/users', 'GET', '::1', '', '2021-01-19 15:01:30', '2021-01-19 15:01:30');
INSERT INTO `goadmin_operation_log` VALUES (271, 1, '/admin/info/users', 'GET', '::1', '', '2021-01-19 15:01:31', '2021-01-19 15:01:31');
INSERT INTO `goadmin_operation_log` VALUES (272, 1, '/admin/info/blog_tag', 'GET', '::1', '', '2021-01-19 15:01:31', '2021-01-19 15:01:31');
INSERT INTO `goadmin_operation_log` VALUES (273, 1, '/admin/info/blog_auth', 'GET', '::1', '', '2021-01-19 15:01:31', '2021-01-19 15:01:31');
INSERT INTO `goadmin_operation_log` VALUES (274, 1, '/admin/info/blog_article', 'GET', '::1', '', '2021-01-19 15:01:32', '2021-01-19 15:01:32');
INSERT INTO `goadmin_operation_log` VALUES (275, 1, '/admin/info/manager', 'GET', '::1', '', '2021-01-19 15:01:34', '2021-01-19 15:01:34');
INSERT INTO `goadmin_operation_log` VALUES (276, 1, '/admin/info/roles', 'GET', '::1', '', '2021-01-19 15:01:34', '2021-01-19 15:01:34');
INSERT INTO `goadmin_operation_log` VALUES (277, 1, '/admin/info/permission', 'GET', '::1', '', '2021-01-19 15:01:34', '2021-01-19 15:01:34');
INSERT INTO `goadmin_operation_log` VALUES (278, 1, '/admin/menu', 'GET', '::1', '', '2021-01-19 15:01:35', '2021-01-19 15:01:35');
INSERT INTO `goadmin_operation_log` VALUES (279, 1, '/admin/info/op', 'GET', '::1', '', '2021-01-19 15:01:38', '2021-01-19 15:01:38');
INSERT INTO `goadmin_operation_log` VALUES (280, 1, '/admin/info/permission', 'GET', '::1', '', '2021-01-19 15:01:41', '2021-01-19 15:01:41');
INSERT INTO `goadmin_operation_log` VALUES (281, 1, '/admin/info/manager', 'GET', '::1', '', '2021-01-19 15:01:41', '2021-01-19 15:01:41');
INSERT INTO `goadmin_operation_log` VALUES (282, 1, '/admin', 'GET', '::1', '', '2021-01-19 15:01:43', '2021-01-19 15:01:43');
INSERT INTO `goadmin_operation_log` VALUES (283, 1, '/admin', 'GET', '::1', '', '2021-01-19 15:03:44', '2021-01-19 15:03:44');
INSERT INTO `goadmin_operation_log` VALUES (284, 1, '/admin', 'GET', '::1', '', '2021-01-19 15:03:46', '2021-01-19 15:03:46');
INSERT INTO `goadmin_operation_log` VALUES (285, 1, '/admin', 'GET', '::1', '', '2021-01-19 15:03:58', '2021-01-19 15:03:58');
INSERT INTO `goadmin_operation_log` VALUES (286, 1, '/admin', 'GET', '::1', '', '2021-01-19 15:04:00', '2021-01-19 15:04:00');
INSERT INTO `goadmin_operation_log` VALUES (287, 1, '/admin', 'GET', '::1', '', '2021-01-19 15:04:01', '2021-01-19 15:04:01');
INSERT INTO `goadmin_operation_log` VALUES (288, 1, '/admin', 'GET', '::1', '', '2021-01-19 15:10:03', '2021-01-19 15:10:03');
INSERT INTO `goadmin_operation_log` VALUES (289, 1, '/admin/info/blog_auth', 'GET', '::1', '', '2021-01-19 15:10:10', '2021-01-19 15:10:10');
INSERT INTO `goadmin_operation_log` VALUES (290, 1, '/admin/info/blog_auth', 'GET', '::1', '', '2021-01-19 15:10:11', '2021-01-19 15:10:11');
INSERT INTO `goadmin_operation_log` VALUES (291, 1, '/admin/info/blog_tag', 'GET', '::1', '', '2021-01-19 15:10:11', '2021-01-19 15:10:11');
INSERT INTO `goadmin_operation_log` VALUES (292, 1, '/admin/info/users', 'GET', '::1', '', '2021-01-19 15:10:11', '2021-01-19 15:10:11');

-- ----------------------------
-- Table structure for goadmin_permissions
-- ----------------------------
DROP TABLE IF EXISTS `goadmin_permissions`;
CREATE TABLE `goadmin_permissions`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `http_path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_permissions_name_unique`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of goadmin_permissions
-- ----------------------------
INSERT INTO `goadmin_permissions` VALUES (1, 'All permission', '*', '', '*', '2019-09-10 00:00:00', '2019-09-10 00:00:00');
INSERT INTO `goadmin_permissions` VALUES (2, 'Dashboard', 'dashboard', 'GET,PUT,POST,DELETE', '/', '2019-09-10 00:00:00', '2019-09-10 00:00:00');
INSERT INTO `goadmin_permissions` VALUES (3, 'users 查询', 'users_query', 'GET', '/info/users', '2021-01-19 09:15:02', '2021-01-19 09:15:02');
INSERT INTO `goadmin_permissions` VALUES (4, 'users 编辑页显示', 'users_show_edit', 'GET', '/info/users/edit', '2021-01-19 09:15:02', '2021-01-19 09:15:02');
INSERT INTO `goadmin_permissions` VALUES (5, 'users 新建记录页显示', 'users_show_create', 'GET', '/info/users/new', '2021-01-19 09:15:02', '2021-01-19 09:15:02');
INSERT INTO `goadmin_permissions` VALUES (6, 'users 编辑', 'users_edit', 'POST', '/edit/users', '2021-01-19 09:15:02', '2021-01-19 09:15:02');
INSERT INTO `goadmin_permissions` VALUES (7, 'users 新建', 'users_create', 'POST', '/new/users', '2021-01-19 09:15:02', '2021-01-19 09:15:02');
INSERT INTO `goadmin_permissions` VALUES (8, 'users 删除', 'users_delete', 'POST', '/delete/users', '2021-01-19 09:15:02', '2021-01-19 09:15:02');
INSERT INTO `goadmin_permissions` VALUES (9, 'users 导出', 'users_export', 'POST', '/export/users', '2021-01-19 09:15:02', '2021-01-19 09:15:02');
INSERT INTO `goadmin_permissions` VALUES (10, 'blog_article Query', 'blog_article_query', 'GET', '/info/blog_article', '2021-01-19 09:46:11', '2021-01-19 09:46:11');
INSERT INTO `goadmin_permissions` VALUES (11, 'blog_article Show Edit Form Page', 'blog_article_show_edit', 'GET', '/info/blog_article/edit', '2021-01-19 09:46:11', '2021-01-19 09:46:11');
INSERT INTO `goadmin_permissions` VALUES (12, 'blog_article Show Create Form Page', 'blog_article_show_create', 'GET', '/info/blog_article/new', '2021-01-19 09:46:11', '2021-01-19 09:46:11');
INSERT INTO `goadmin_permissions` VALUES (13, 'blog_article Edit', 'blog_article_edit', 'POST', '/edit/blog_article', '2021-01-19 09:46:11', '2021-01-19 09:46:11');
INSERT INTO `goadmin_permissions` VALUES (14, 'blog_article Create', 'blog_article_create', 'POST', '/new/blog_article', '2021-01-19 09:46:11', '2021-01-19 09:46:11');
INSERT INTO `goadmin_permissions` VALUES (15, 'blog_article Delete', 'blog_article_delete', 'POST', '/delete/blog_article', '2021-01-19 09:46:11', '2021-01-19 09:46:11');
INSERT INTO `goadmin_permissions` VALUES (16, 'blog_article Export', 'blog_article_export', 'POST', '/export/blog_article', '2021-01-19 09:46:11', '2021-01-19 09:46:11');
INSERT INTO `goadmin_permissions` VALUES (17, 'blog_auth Query', 'blog_auth_query', 'GET', '/info/blog_auth', '2021-01-19 09:46:11', '2021-01-19 09:46:11');
INSERT INTO `goadmin_permissions` VALUES (18, 'blog_auth Show Edit Form Page', 'blog_auth_show_edit', 'GET', '/info/blog_auth/edit', '2021-01-19 09:46:11', '2021-01-19 09:46:11');
INSERT INTO `goadmin_permissions` VALUES (19, 'blog_auth Show Create Form Page', 'blog_auth_show_create', 'GET', '/info/blog_auth/new', '2021-01-19 09:46:11', '2021-01-19 09:46:11');
INSERT INTO `goadmin_permissions` VALUES (20, 'blog_auth Edit', 'blog_auth_edit', 'POST', '/edit/blog_auth', '2021-01-19 09:46:11', '2021-01-19 09:46:11');
INSERT INTO `goadmin_permissions` VALUES (21, 'blog_auth Create', 'blog_auth_create', 'POST', '/new/blog_auth', '2021-01-19 09:46:11', '2021-01-19 09:46:11');
INSERT INTO `goadmin_permissions` VALUES (22, 'blog_auth Delete', 'blog_auth_delete', 'POST', '/delete/blog_auth', '2021-01-19 09:46:11', '2021-01-19 09:46:11');
INSERT INTO `goadmin_permissions` VALUES (23, 'blog_auth Export', 'blog_auth_export', 'POST', '/export/blog_auth', '2021-01-19 09:46:11', '2021-01-19 09:46:11');
INSERT INTO `goadmin_permissions` VALUES (24, 'blog_tag Query', 'blog_tag_query', 'GET', '/info/blog_tag', '2021-01-19 09:46:11', '2021-01-19 09:46:11');
INSERT INTO `goadmin_permissions` VALUES (25, 'blog_tag Show Edit Form Page', 'blog_tag_show_edit', 'GET', '/info/blog_tag/edit', '2021-01-19 09:46:11', '2021-01-19 09:46:11');
INSERT INTO `goadmin_permissions` VALUES (26, 'blog_tag Show Create Form Page', 'blog_tag_show_create', 'GET', '/info/blog_tag/new', '2021-01-19 09:46:11', '2021-01-19 09:46:11');
INSERT INTO `goadmin_permissions` VALUES (27, 'blog_tag Edit', 'blog_tag_edit', 'POST', '/edit/blog_tag', '2021-01-19 09:46:11', '2021-01-19 09:46:11');
INSERT INTO `goadmin_permissions` VALUES (28, 'blog_tag Create', 'blog_tag_create', 'POST', '/new/blog_tag', '2021-01-19 09:46:11', '2021-01-19 09:46:11');
INSERT INTO `goadmin_permissions` VALUES (29, 'blog_tag Delete', 'blog_tag_delete', 'POST', '/delete/blog_tag', '2021-01-19 09:46:11', '2021-01-19 09:46:11');
INSERT INTO `goadmin_permissions` VALUES (30, 'blog_tag Export', 'blog_tag_export', 'POST', '/export/blog_tag', '2021-01-19 09:46:11', '2021-01-19 09:46:11');

-- ----------------------------
-- Table structure for goadmin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `goadmin_role_menu`;
CREATE TABLE `goadmin_role_menu`  (
  `role_id` int(11) UNSIGNED NOT NULL,
  `menu_id` int(11) UNSIGNED NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  INDEX `admin_role_menu_role_id_menu_id_index`(`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of goadmin_role_menu
-- ----------------------------
INSERT INTO `goadmin_role_menu` VALUES (1, 1, '2019-09-10 00:00:00', '2019-09-10 00:00:00');
INSERT INTO `goadmin_role_menu` VALUES (1, 7, '2019-09-10 00:00:00', '2019-09-10 00:00:00');
INSERT INTO `goadmin_role_menu` VALUES (2, 7, '2019-09-10 00:00:00', '2019-09-10 00:00:00');
INSERT INTO `goadmin_role_menu` VALUES (1, 10, '2021-01-19 09:49:45', '2021-01-19 09:49:45');
INSERT INTO `goadmin_role_menu` VALUES (1, 11, '2021-01-19 09:50:04', '2021-01-19 09:50:04');
INSERT INTO `goadmin_role_menu` VALUES (1, 12, '2021-01-19 09:50:22', '2021-01-19 09:50:22');
INSERT INTO `goadmin_role_menu` VALUES (1, 13, '2021-01-19 14:06:23', '2021-01-19 14:06:23');

-- ----------------------------
-- Table structure for goadmin_role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `goadmin_role_permissions`;
CREATE TABLE `goadmin_role_permissions`  (
  `role_id` int(11) UNSIGNED NOT NULL,
  `permission_id` int(11) UNSIGNED NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  UNIQUE INDEX `admin_role_permissions`(`role_id`, `permission_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of goadmin_role_permissions
-- ----------------------------
INSERT INTO `goadmin_role_permissions` VALUES (1, 1, '2019-09-10 00:00:00', '2019-09-10 00:00:00');
INSERT INTO `goadmin_role_permissions` VALUES (1, 2, '2019-09-10 00:00:00', '2019-09-10 00:00:00');
INSERT INTO `goadmin_role_permissions` VALUES (2, 2, '2019-09-10 00:00:00', '2019-09-10 00:00:00');

-- ----------------------------
-- Table structure for goadmin_role_users
-- ----------------------------
DROP TABLE IF EXISTS `goadmin_role_users`;
CREATE TABLE `goadmin_role_users`  (
  `role_id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  UNIQUE INDEX `admin_user_roles`(`role_id`, `user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of goadmin_role_users
-- ----------------------------
INSERT INTO `goadmin_role_users` VALUES (1, 1, '2019-09-10 00:00:00', '2019-09-10 00:00:00');
INSERT INTO `goadmin_role_users` VALUES (1, 3, '2021-01-19 09:09:25', '2021-01-19 09:09:25');
INSERT INTO `goadmin_role_users` VALUES (2, 2, '2019-09-10 00:00:00', '2019-09-10 00:00:00');

-- ----------------------------
-- Table structure for goadmin_roles
-- ----------------------------
DROP TABLE IF EXISTS `goadmin_roles`;
CREATE TABLE `goadmin_roles`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_roles_name_unique`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of goadmin_roles
-- ----------------------------
INSERT INTO `goadmin_roles` VALUES (1, 'Administrator', 'administrator', '2019-09-10 00:00:00', '2019-09-10 00:00:00');
INSERT INTO `goadmin_roles` VALUES (2, 'Operator', 'operator', '2019-09-10 00:00:00', '2019-09-10 00:00:00');

-- ----------------------------
-- Table structure for goadmin_session
-- ----------------------------
DROP TABLE IF EXISTS `goadmin_session`;
CREATE TABLE `goadmin_session`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `values` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 57 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of goadmin_session
-- ----------------------------
INSERT INTO `goadmin_session` VALUES (41, 'e0489618-3d8e-4206-b66a-aff1bf3c3750', '__csrf_token__', '2021-01-19 13:50:20', '2021-01-19 13:50:20');
INSERT INTO `goadmin_session` VALUES (46, '384284b1-f93e-4e79-bc28-e006aa9f212a', '__csrf_token__', '2021-01-19 14:06:23', '2021-01-19 14:06:23');
INSERT INTO `goadmin_session` VALUES (47, 'e6ed264f-3727-49a1-ab3d-8953be45dfb6', '__csrf_token__', '2021-01-19 14:06:26', '2021-01-19 14:06:26');
INSERT INTO `goadmin_session` VALUES (50, '51619b92-136c-4413-a562-0ea63fac2952', '__csrf_token__', '2021-01-19 14:16:59', '2021-01-19 14:16:59');
INSERT INTO `goadmin_session` VALUES (53, '27931e6e-ed2a-45be-b190-82bfeb98a731', '{\"user_id\":1}', '2021-01-19 14:58:35', '2021-01-19 14:58:35');
INSERT INTO `goadmin_session` VALUES (54, '71892d96-0c70-43e7-8802-caf4d0448850', '__csrf_token__', '2021-01-19 15:00:15', '2021-01-19 15:00:15');
INSERT INTO `goadmin_session` VALUES (55, 'cba5b1ea-cae9-4c59-b683-2b0788e269ad', '__csrf_token__', '2021-01-19 15:00:17', '2021-01-19 15:00:17');
INSERT INTO `goadmin_session` VALUES (56, '82be4faa-d059-4bb3-a8e1-9b9ba38bfe14', '__csrf_token__', '2021-01-19 15:01:35', '2021-01-19 15:01:35');

-- ----------------------------
-- Table structure for goadmin_site
-- ----------------------------
DROP TABLE IF EXISTS `goadmin_site`;
CREATE TABLE `goadmin_site`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `description` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `state` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 68 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of goadmin_site
-- ----------------------------
INSERT INTO `goadmin_site` VALUES (1, 'footer_info', '', NULL, 1, '2021-01-19 09:07:32', '2021-01-19 09:07:32');
INSERT INTO `goadmin_site` VALUES (2, 'login_logo', 'GoAdmin', NULL, 1, '2021-01-19 09:07:32', '2021-01-19 09:07:32');
INSERT INTO `goadmin_site` VALUES (3, 'custom_403_html', '', NULL, 1, '2021-01-19 09:07:32', '2021-01-19 09:07:32');
INSERT INTO `goadmin_site` VALUES (4, 'title', 'GoAdmin', NULL, 1, '2021-01-19 09:07:32', '2021-01-19 09:07:32');
INSERT INTO `goadmin_site` VALUES (5, 'info_log_path', 'D:/www/goadmin/logs/info.log', NULL, 1, '2021-01-19 09:07:32', '2021-01-19 09:07:32');
INSERT INTO `goadmin_site` VALUES (6, 'logger_encoder_level', '', NULL, 1, '2021-01-19 09:07:32', '2021-01-19 09:07:32');
INSERT INTO `goadmin_site` VALUES (7, 'logger_encoder_time', '', NULL, 1, '2021-01-19 09:07:32', '2021-01-19 09:07:32');
INSERT INTO `goadmin_site` VALUES (8, 'custom_foot_html', '', NULL, 1, '2021-01-19 09:07:32', '2021-01-19 09:07:32');
INSERT INTO `goadmin_site` VALUES (9, 'animation_delay', '0.00', NULL, 1, '2021-01-19 09:07:32', '2021-01-19 09:07:32');
INSERT INTO `goadmin_site` VALUES (10, 'prohibit_config_modification', 'false', NULL, 1, '2021-01-19 09:07:32', '2021-01-19 09:07:32');
INSERT INTO `goadmin_site` VALUES (11, 'language', 'cn', NULL, 1, '2021-01-19 09:07:32', '2021-01-19 09:07:32');
INSERT INTO `goadmin_site` VALUES (12, 'login_url', '/login', NULL, 1, '2021-01-19 09:07:32', '2021-01-19 09:07:32');
INSERT INTO `goadmin_site` VALUES (13, 'color_scheme', 'skin-black', NULL, 1, '2021-01-19 09:07:32', '2021-01-19 09:07:32');
INSERT INTO `goadmin_site` VALUES (14, 'asset_url', '', NULL, 1, '2021-01-19 09:07:32', '2021-01-19 09:07:32');
INSERT INTO `goadmin_site` VALUES (15, 'animation_duration', '0.00', NULL, 1, '2021-01-19 09:07:32', '2021-01-19 09:07:32');
INSERT INTO `goadmin_site` VALUES (16, 'logger_encoder_name_key', '', NULL, 1, '2021-01-19 09:07:32', '2021-01-19 09:07:32');
INSERT INTO `goadmin_site` VALUES (17, 'custom_404_html', '', NULL, 1, '2021-01-19 09:07:32', '2021-01-19 09:07:32');
INSERT INTO `goadmin_site` VALUES (18, 'app_id', 'wKF51RBpSGDriverT', NULL, 1, '2021-01-19 09:07:32', '2021-01-19 09:07:32');
INSERT INTO `goadmin_site` VALUES (19, 'mini_logo', 'GA', NULL, 1, '2021-01-19 09:07:32', '2021-01-19 09:07:32');
INSERT INTO `goadmin_site` VALUES (20, 'index_url', '/', NULL, 1, '2021-01-19 09:07:32', '2021-01-19 09:07:32');
INSERT INTO `goadmin_site` VALUES (21, 'logger_rotate_max_size', '0', NULL, 1, '2021-01-19 09:07:32', '2021-01-19 09:07:32');
INSERT INTO `goadmin_site` VALUES (22, 'logger_encoder_time_key', '', NULL, 1, '2021-01-19 09:07:32', '2021-01-19 09:07:32');
INSERT INTO `goadmin_site` VALUES (23, 'asset_root_path', './public/', NULL, 1, '2021-01-19 09:07:32', '2021-01-19 09:07:32');
INSERT INTO `goadmin_site` VALUES (24, 'domain', '', NULL, 1, '2021-01-19 09:07:32', '2021-01-19 09:07:32');
INSERT INTO `goadmin_site` VALUES (25, 'logger_encoder_caller', '', NULL, 1, '2021-01-19 09:07:32', '2021-01-19 09:07:32');
INSERT INTO `goadmin_site` VALUES (26, 'logger_encoder_encoding', '', NULL, 1, '2021-01-19 09:07:32', '2021-01-19 09:07:32');
INSERT INTO `goadmin_site` VALUES (27, 'logger_level', '0', NULL, 1, '2021-01-19 09:07:32', '2021-01-19 09:07:32');
INSERT INTO `goadmin_site` VALUES (28, 'hide_tool_entrance', 'false', NULL, 1, '2021-01-19 09:07:32', '2021-01-19 09:07:32');
INSERT INTO `goadmin_site` VALUES (29, 'theme', 'adminlte', NULL, 1, '2021-01-19 09:07:32', '2021-01-19 09:07:32');
INSERT INTO `goadmin_site` VALUES (30, 'logger_encoder_caller_key', '', NULL, 1, '2021-01-19 09:07:32', '2021-01-19 09:07:32');
INSERT INTO `goadmin_site` VALUES (31, 'animation_type', '', NULL, 1, '2021-01-19 09:07:32', '2021-01-19 09:07:32');
INSERT INTO `goadmin_site` VALUES (32, 'access_assets_log_off', 'false', NULL, 1, '2021-01-19 09:07:32', '2021-01-19 09:07:32');
INSERT INTO `goadmin_site` VALUES (33, 'logger_rotate_max_backups', '0', NULL, 1, '2021-01-19 09:07:32', '2021-01-19 09:07:32');
INSERT INTO `goadmin_site` VALUES (34, 'login_title', 'GoAdmin', NULL, 1, '2021-01-19 09:07:32', '2021-01-19 09:07:32');
INSERT INTO `goadmin_site` VALUES (35, 'hide_plugin_entrance', 'false', NULL, 1, '2021-01-19 09:07:32', '2021-01-19 09:07:32');
INSERT INTO `goadmin_site` VALUES (36, 'bootstrap_file_path', 'D:/www/goadmin/bootstrap.go', NULL, 1, '2021-01-19 09:07:32', '2021-01-19 09:07:32');
INSERT INTO `goadmin_site` VALUES (37, 'hide_app_info_entrance', 'false', NULL, 1, '2021-01-19 09:07:32', '2021-01-19 09:07:32');
INSERT INTO `goadmin_site` VALUES (38, 'open_admin_api', 'false', NULL, 1, '2021-01-19 09:07:32', '2021-01-19 09:07:32');
INSERT INTO `goadmin_site` VALUES (39, 'access_log_off', 'false', NULL, 1, '2021-01-19 09:07:32', '2021-01-19 09:07:32');
INSERT INTO `goadmin_site` VALUES (40, 'logger_encoder_level_key', '', NULL, 1, '2021-01-19 09:07:32', '2021-01-19 09:07:32');
INSERT INTO `goadmin_site` VALUES (41, 'logger_encoder_stacktrace_key', '', NULL, 1, '2021-01-19 09:07:32', '2021-01-19 09:07:32');
INSERT INTO `goadmin_site` VALUES (42, 'logger_encoder_duration', '', NULL, 1, '2021-01-19 09:07:32', '2021-01-19 09:07:32');
INSERT INTO `goadmin_site` VALUES (43, 'hide_config_center_entrance', 'false', NULL, 1, '2021-01-19 09:07:32', '2021-01-19 09:07:32');
INSERT INTO `goadmin_site` VALUES (44, 'url_prefix', 'admin', NULL, 1, '2021-01-19 09:07:32', '2021-01-19 09:07:32');
INSERT INTO `goadmin_site` VALUES (45, 'error_log_path', 'D:/www/goadmin/logs/error.log', NULL, 1, '2021-01-19 09:07:32', '2021-01-19 09:07:32');
INSERT INTO `goadmin_site` VALUES (46, 'custom_500_html', '', NULL, 1, '2021-01-19 09:07:32', '2021-01-19 09:07:32');
INSERT INTO `goadmin_site` VALUES (47, 'custom_head_html', '', NULL, 1, '2021-01-19 09:07:32', '2021-01-19 09:07:32');
INSERT INTO `goadmin_site` VALUES (48, 'site_off', 'false', NULL, 1, '2021-01-19 09:07:32', '2021-01-19 09:07:32');
INSERT INTO `goadmin_site` VALUES (49, 'go_mod_file_path', 'D:/www/goadmin/go.mod', NULL, 1, '2021-01-19 09:07:32', '2021-01-19 09:07:32');
INSERT INTO `goadmin_site` VALUES (50, 'allow_del_operation_log', 'false', NULL, 1, '2021-01-19 09:07:32', '2021-01-19 09:07:32');
INSERT INTO `goadmin_site` VALUES (51, 'error_log_off', 'false', NULL, 1, '2021-01-19 09:07:32', '2021-01-19 09:07:32');
INSERT INTO `goadmin_site` VALUES (52, 'session_life_time', '7200', NULL, 1, '2021-01-19 09:07:32', '2021-01-19 09:07:32');
INSERT INTO `goadmin_site` VALUES (53, 'logger_rotate_compress', 'false', NULL, 1, '2021-01-19 09:07:32', '2021-01-19 09:07:32');
INSERT INTO `goadmin_site` VALUES (54, 'extra', '', NULL, 1, '2021-01-19 09:07:32', '2021-01-19 09:07:32');
INSERT INTO `goadmin_site` VALUES (55, 'hide_visitor_user_center_entrance', 'false', NULL, 1, '2021-01-19 09:07:32', '2021-01-19 09:07:32');
INSERT INTO `goadmin_site` VALUES (56, 'logo', 'GoAdmin', NULL, 1, '2021-01-19 09:07:32', '2021-01-19 09:07:32');
INSERT INTO `goadmin_site` VALUES (57, 'debug', 'true', NULL, 1, '2021-01-19 09:07:32', '2021-01-19 09:07:32');
INSERT INTO `goadmin_site` VALUES (58, 'access_log_path', 'D:/www/goadmin/logs/access.log', NULL, 1, '2021-01-19 09:07:32', '2021-01-19 09:07:32');
INSERT INTO `goadmin_site` VALUES (59, 'logger_encoder_message_key', '', NULL, 1, '2021-01-19 09:07:32', '2021-01-19 09:07:32');
INSERT INTO `goadmin_site` VALUES (60, 'exclude_theme_components', 'null', NULL, 1, '2021-01-19 09:07:32', '2021-01-19 09:07:32');
INSERT INTO `goadmin_site` VALUES (61, 'info_log_off', 'false', NULL, 1, '2021-01-19 09:07:32', '2021-01-19 09:07:32');
INSERT INTO `goadmin_site` VALUES (62, 'sql_log', 'false', NULL, 1, '2021-01-19 09:07:32', '2021-01-19 09:07:32');
INSERT INTO `goadmin_site` VALUES (63, 'logger_rotate_max_age', '0', NULL, 1, '2021-01-19 09:07:32', '2021-01-19 09:07:32');
INSERT INTO `goadmin_site` VALUES (64, 'auth_user_table', 'goadmin_users', NULL, 1, '2021-01-19 09:07:32', '2021-01-19 09:07:32');
INSERT INTO `goadmin_site` VALUES (65, 'env', 'local', NULL, 1, '2021-01-19 09:07:32', '2021-01-19 09:07:32');
INSERT INTO `goadmin_site` VALUES (66, 'no_limit_login_ip', 'false', NULL, 1, '2021-01-19 09:07:32', '2021-01-19 09:07:32');
INSERT INTO `goadmin_site` VALUES (67, 'operation_log_off', 'false', NULL, 1, '2021-01-19 09:07:32', '2021-01-19 09:07:32');

-- ----------------------------
-- Table structure for goadmin_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `goadmin_user_permissions`;
CREATE TABLE `goadmin_user_permissions`  (
  `user_id` int(11) UNSIGNED NOT NULL,
  `permission_id` int(11) UNSIGNED NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  UNIQUE INDEX `admin_user_permissions`(`user_id`, `permission_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of goadmin_user_permissions
-- ----------------------------
INSERT INTO `goadmin_user_permissions` VALUES (1, 1, '2019-09-10 00:00:00', '2019-09-10 00:00:00');
INSERT INTO `goadmin_user_permissions` VALUES (2, 2, '2019-09-10 00:00:00', '2019-09-10 00:00:00');
INSERT INTO `goadmin_user_permissions` VALUES (3, 1, '2021-01-19 09:09:25', '2021-01-19 09:09:25');

-- ----------------------------
-- Table structure for goadmin_users
-- ----------------------------
DROP TABLE IF EXISTS `goadmin_users`;
CREATE TABLE `goadmin_users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_users_username_unique`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of goadmin_users
-- ----------------------------
INSERT INTO `goadmin_users` VALUES (1, 'admin', '$2a$10$RWyOulM/we9wSEOvGASxiu5znYbJLcsNz9.nhYfApo3DbAcYjKaO.', 'admin', '', 'tlNcBVK9AvfYH7WEnwB1RKvocJu8FfRy4um3DJtwdHuJy0dwFsLOgAc0xUfh', '2019-09-10 00:00:00', '2019-09-10 00:00:00');
INSERT INTO `goadmin_users` VALUES (2, 'operator', '$2a$10$rVqkOzHjN2MdlEprRflb1eGP0oZXuSrbJLOmJagFsCd81YZm0bsh.', 'Operator', '', NULL, '2019-09-10 00:00:00', '2019-09-10 00:00:00');
INSERT INTO `goadmin_users` VALUES (3, 'test', '$2a$10$Dr1eO2XkqjdVX/5B1r0o9exZ0Zd7Iz.RqPqG/vLM8vxqLekJzqv6K', 'test', '', NULL, '2021-01-19 09:09:25', '2021-01-19 09:09:25');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `gender` tinyint(4) NULL DEFAULT NULL,
  `city` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `ip` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `phone` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'tewtwet', 0, '234', '234234', '2342342342', '2021-01-19 14:06:38', '2021-01-19 00:00:00');

SET FOREIGN_KEY_CHECKS = 1;
