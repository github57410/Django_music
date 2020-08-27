/*
 Navicat Premium Data Transfer

 Source Server         : 111
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : localhost:3306
 Source Schema         : musicrec

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 26/08/2020 17:33:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add play list', 7, 'add_playlist');
INSERT INTO `auth_permission` VALUES (26, 'Can change play list', 7, 'change_playlist');
INSERT INTO `auth_permission` VALUES (27, 'Can delete play list', 7, 'delete_playlist');
INSERT INTO `auth_permission` VALUES (28, 'Can view play list', 7, 'view_playlist');
INSERT INTO `auth_permission` VALUES (29, 'Can add play list to songs', 8, 'add_playlisttosongs');
INSERT INTO `auth_permission` VALUES (30, 'Can change play list to songs', 8, 'change_playlisttosongs');
INSERT INTO `auth_permission` VALUES (31, 'Can delete play list to songs', 8, 'delete_playlisttosongs');
INSERT INTO `auth_permission` VALUES (32, 'Can view play list to songs', 8, 'view_playlisttosongs');
INSERT INTO `auth_permission` VALUES (33, 'Can add play list to tag', 9, 'add_playlisttotag');
INSERT INTO `auth_permission` VALUES (34, 'Can change play list to tag', 9, 'change_playlisttotag');
INSERT INTO `auth_permission` VALUES (35, 'Can delete play list to tag', 9, 'delete_playlisttotag');
INSERT INTO `auth_permission` VALUES (36, 'Can view play list to tag', 9, 'view_playlisttotag');
INSERT INTO `auth_permission` VALUES (37, 'Can add sing', 10, 'add_sing');
INSERT INTO `auth_permission` VALUES (38, 'Can change sing', 10, 'change_sing');
INSERT INTO `auth_permission` VALUES (39, 'Can delete sing', 10, 'delete_sing');
INSERT INTO `auth_permission` VALUES (40, 'Can view sing', 10, 'view_sing');
INSERT INTO `auth_permission` VALUES (41, 'Can add sing tag', 11, 'add_singtag');
INSERT INTO `auth_permission` VALUES (42, 'Can change sing tag', 11, 'change_singtag');
INSERT INTO `auth_permission` VALUES (43, 'Can delete sing tag', 11, 'delete_singtag');
INSERT INTO `auth_permission` VALUES (44, 'Can view sing tag', 11, 'view_singtag');
INSERT INTO `auth_permission` VALUES (45, 'Can add sing sim', 12, 'add_singsim');
INSERT INTO `auth_permission` VALUES (46, 'Can change sing sim', 12, 'change_singsim');
INSERT INTO `auth_permission` VALUES (47, 'Can delete sing sim', 12, 'delete_singsim');
INSERT INTO `auth_permission` VALUES (48, 'Can view sing sim', 12, 'view_singsim');
INSERT INTO `auth_permission` VALUES (49, 'Can add song', 13, 'add_song');
INSERT INTO `auth_permission` VALUES (50, 'Can change song', 13, 'change_song');
INSERT INTO `auth_permission` VALUES (51, 'Can delete song', 13, 'delete_song');
INSERT INTO `auth_permission` VALUES (52, 'Can view song', 13, 'view_song');
INSERT INTO `auth_permission` VALUES (53, 'Can add song lysic', 14, 'add_songlysic');
INSERT INTO `auth_permission` VALUES (54, 'Can change song lysic', 14, 'change_songlysic');
INSERT INTO `auth_permission` VALUES (55, 'Can delete song lysic', 14, 'delete_songlysic');
INSERT INTO `auth_permission` VALUES (56, 'Can view song lysic', 14, 'view_songlysic');
INSERT INTO `auth_permission` VALUES (57, 'Can add song tag', 15, 'add_songtag');
INSERT INTO `auth_permission` VALUES (58, 'Can change song tag', 15, 'change_songtag');
INSERT INTO `auth_permission` VALUES (59, 'Can delete song tag', 15, 'delete_songtag');
INSERT INTO `auth_permission` VALUES (60, 'Can view song tag', 15, 'view_songtag');
INSERT INTO `auth_permission` VALUES (61, 'Can add song sim', 16, 'add_songsim');
INSERT INTO `auth_permission` VALUES (62, 'Can change song sim', 16, 'change_songsim');
INSERT INTO `auth_permission` VALUES (63, 'Can delete song sim', 16, 'delete_songsim');
INSERT INTO `auth_permission` VALUES (64, 'Can view song sim', 16, 'view_songsim');
INSERT INTO `auth_permission` VALUES (65, 'Can add user', 17, 'add_user');
INSERT INTO `auth_permission` VALUES (66, 'Can change user', 17, 'change_user');
INSERT INTO `auth_permission` VALUES (67, 'Can delete user', 17, 'delete_user');
INSERT INTO `auth_permission` VALUES (68, 'Can view user', 17, 'view_user');
INSERT INTO `auth_permission` VALUES (69, 'Can add user browse', 18, 'add_userbrowse');
INSERT INTO `auth_permission` VALUES (70, 'Can change user browse', 18, 'change_userbrowse');
INSERT INTO `auth_permission` VALUES (71, 'Can delete user browse', 18, 'delete_userbrowse');
INSERT INTO `auth_permission` VALUES (72, 'Can view user browse', 18, 'view_userbrowse');
INSERT INTO `auth_permission` VALUES (73, 'Can add user tag', 19, 'add_usertag');
INSERT INTO `auth_permission` VALUES (74, 'Can change user tag', 19, 'change_usertag');
INSERT INTO `auth_permission` VALUES (75, 'Can delete user tag', 19, 'delete_usertag');
INSERT INTO `auth_permission` VALUES (76, 'Can view user tag', 19, 'view_usertag');
INSERT INTO `auth_permission` VALUES (77, 'Can add user sim', 20, 'add_usersim');
INSERT INTO `auth_permission` VALUES (78, 'Can change user sim', 20, 'change_usersim');
INSERT INTO `auth_permission` VALUES (79, 'Can delete user sim', 20, 'delete_usersim');
INSERT INTO `auth_permission` VALUES (80, 'Can view user sim', 20, 'view_usersim');
INSERT INTO `auth_permission` VALUES (81, 'Can add user play list rec', 21, 'add_userplaylistrec');
INSERT INTO `auth_permission` VALUES (82, 'Can change user play list rec', 21, 'change_userplaylistrec');
INSERT INTO `auth_permission` VALUES (83, 'Can delete user play list rec', 21, 'delete_userplaylistrec');
INSERT INTO `auth_permission` VALUES (84, 'Can view user play list rec', 21, 'view_userplaylistrec');
INSERT INTO `auth_permission` VALUES (85, 'Can add user sing rec', 22, 'add_usersingrec');
INSERT INTO `auth_permission` VALUES (86, 'Can change user sing rec', 22, 'change_usersingrec');
INSERT INTO `auth_permission` VALUES (87, 'Can delete user sing rec', 22, 'delete_usersingrec');
INSERT INTO `auth_permission` VALUES (88, 'Can view user sing rec', 22, 'view_usersingrec');
INSERT INTO `auth_permission` VALUES (89, 'Can add user song rec', 23, 'add_usersongrec');
INSERT INTO `auth_permission` VALUES (90, 'Can change user song rec', 23, 'change_usersongrec');
INSERT INTO `auth_permission` VALUES (91, 'Can delete user song rec', 23, 'delete_usersongrec');
INSERT INTO `auth_permission` VALUES (92, 'Can view user song rec', 23, 'view_usersongrec');
INSERT INTO `auth_permission` VALUES (93, 'Can add user user rec', 24, 'add_useruserrec');
INSERT INTO `auth_permission` VALUES (94, 'Can change user user rec', 24, 'change_useruserrec');
INSERT INTO `auth_permission` VALUES (95, 'Can delete user user rec', 24, 'delete_useruserrec');
INSERT INTO `auth_permission` VALUES (96, 'Can view user user rec', 24, 'view_useruserrec');
INSERT INTO `auth_permission` VALUES (97, 'Can add cate', 25, 'add_cate');
INSERT INTO `auth_permission` VALUES (98, 'Can change cate', 25, 'change_cate');
INSERT INTO `auth_permission` VALUES (99, 'Can delete cate', 25, 'delete_cate');
INSERT INTO `auth_permission` VALUES (100, 'Can view cate', 25, 'view_cate');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES (1, 'pbkdf2_sha256$216000$G2NBC6UP5Iet$akDweKxpKDOChScUtQBHr4TYEBg3ouSG0JvCrQOXfEc=', '2020-08-26 09:30:27.123000', 1, 'admin', '', '', '', 1, 1, '2020-08-26 09:29:56.216000');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cate
-- ----------------------------
DROP TABLE IF EXISTS `cate`;
CREATE TABLE `cate`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cate_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cate_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `cate_id`(`cate_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (25, 'index', 'cate');
INSERT INTO `django_content_type` VALUES (7, 'playlist', 'playlist');
INSERT INTO `django_content_type` VALUES (8, 'playlist', 'playlisttosongs');
INSERT INTO `django_content_type` VALUES (9, 'playlist', 'playlisttotag');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (10, 'sing', 'sing');
INSERT INTO `django_content_type` VALUES (12, 'sing', 'singsim');
INSERT INTO `django_content_type` VALUES (11, 'sing', 'singtag');
INSERT INTO `django_content_type` VALUES (13, 'song', 'song');
INSERT INTO `django_content_type` VALUES (14, 'song', 'songlysic');
INSERT INTO `django_content_type` VALUES (16, 'song', 'songsim');
INSERT INTO `django_content_type` VALUES (15, 'song', 'songtag');
INSERT INTO `django_content_type` VALUES (17, 'user', 'user');
INSERT INTO `django_content_type` VALUES (18, 'user', 'userbrowse');
INSERT INTO `django_content_type` VALUES (21, 'user', 'userplaylistrec');
INSERT INTO `django_content_type` VALUES (20, 'user', 'usersim');
INSERT INTO `django_content_type` VALUES (22, 'user', 'usersingrec');
INSERT INTO `django_content_type` VALUES (23, 'user', 'usersongrec');
INSERT INTO `django_content_type` VALUES (19, 'user', 'usertag');
INSERT INTO `django_content_type` VALUES (24, 'user', 'useruserrec');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2020-08-26 08:56:18.613000');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2020-08-26 08:56:18.912000');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2020-08-26 08:56:19.895000');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2020-08-26 08:56:20.309000');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2020-08-26 08:56:20.324000');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2020-08-26 08:56:20.488000');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2020-08-26 08:56:20.599000');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2020-08-26 08:56:20.741000');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2020-08-26 08:56:20.756000');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2020-08-26 08:56:20.838000');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2020-08-26 08:56:20.845000');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2020-08-26 08:56:20.876000');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2020-08-26 08:56:20.977000');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2020-08-26 08:56:21.104000');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2020-08-26 08:56:21.259000');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2020-08-26 08:56:21.276000');
INSERT INTO `django_migrations` VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2020-08-26 08:56:21.399000');
INSERT INTO `django_migrations` VALUES (18, 'index', '0001_initial', '2020-08-26 08:56:21.441000');
INSERT INTO `django_migrations` VALUES (19, 'song', '0001_initial', '2020-08-26 08:56:21.501000');
INSERT INTO `django_migrations` VALUES (20, 'user', '0001_initial', '2020-08-26 08:56:21.576000');
INSERT INTO `django_migrations` VALUES (21, 'playlist', '0001_initial', '2020-08-26 08:56:21.644000');
INSERT INTO `django_migrations` VALUES (22, 'playlist', '0002_playlisttosongs', '2020-08-26 08:56:21.837000');
INSERT INTO `django_migrations` VALUES (23, 'playlist', '0003_auto_20181227_0955', '2020-08-26 08:56:22.684000');
INSERT INTO `django_migrations` VALUES (24, 'playlist', '0004_playlisttotag', '2020-08-26 08:56:22.720000');
INSERT INTO `django_migrations` VALUES (25, 'sessions', '0001_initial', '2020-08-26 08:56:22.764000');
INSERT INTO `django_migrations` VALUES (26, 'sing', '0001_initial', '2020-08-26 08:56:22.841000');
INSERT INTO `django_migrations` VALUES (27, 'sing', '0002_auto_20181223_0116', '2020-08-26 08:56:22.852000');
INSERT INTO `django_migrations` VALUES (28, 'sing', '0003_auto_20181227_0118', '2020-08-26 08:56:22.861000');
INSERT INTO `django_migrations` VALUES (29, 'sing', '0004_singtag', '2020-08-26 08:56:22.908000');
INSERT INTO `django_migrations` VALUES (30, 'sing', '0005_auto_20190101_1049', '2020-08-26 08:56:22.978000');
INSERT INTO `django_migrations` VALUES (31, 'sing', '0006_singsim', '2020-08-26 08:56:23.015000');
INSERT INTO `django_migrations` VALUES (32, 'song', '0002_auto_20181224_0055', '2020-08-26 08:56:23.202000');
INSERT INTO `django_migrations` VALUES (33, 'song', '0003_auto_20181227_0955', '2020-08-26 08:56:23.216000');
INSERT INTO `django_migrations` VALUES (34, 'song', '0004_songtag', '2020-08-26 08:56:23.280000');
INSERT INTO `django_migrations` VALUES (35, 'song', '0005_auto_20190101_1049', '2020-08-26 08:56:23.469000');
INSERT INTO `django_migrations` VALUES (36, 'song', '0006_songsim', '2020-08-26 08:56:23.515000');
INSERT INTO `django_migrations` VALUES (37, 'user', '0002_auto_20181227_0138', '2020-08-26 08:56:23.644000');
INSERT INTO `django_migrations` VALUES (38, 'user', '0003_usertag', '2020-08-26 08:56:23.685000');
INSERT INTO `django_migrations` VALUES (39, 'user', '0004_userbrowse_desc', '2020-08-26 08:56:23.747000');
INSERT INTO `django_migrations` VALUES (40, 'user', '0005_auto_20190101_1505', '2020-08-26 08:56:23.761000');
INSERT INTO `django_migrations` VALUES (41, 'user', '0006_usersim', '2020-08-26 08:56:23.823000');
INSERT INTO `django_migrations` VALUES (42, 'user', '0007_userplaylistrec_usersingrec_usersongrec_useruserrec', '2020-08-26 08:56:24.011000');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('sr0npa4kc1kan76iyr5d7idktt23i02s', '.eJxVjEEOwiAQRe_C2hAGSgGX7j0DGZipVA0kpV0Z765NutDtf-_9l4i4rSVunZc4kzgLEKffLWF-cN0B3bHemsytrsuc5K7Ig3Z5bcTPy-H-HRTs5VtbDGrMevKcyLNWqGDwQYMDm0dPTjuDJpkpwAAqsHcGtHKIgJQ9gRXvD8aaNwM:1kArlD:xqhV0qvfU5HeL0rF_ON9ClQzlHhEoGD3teu9SEcyxMI', '2020-09-09 09:30:27.132000');

-- ----------------------------
-- Table structure for playlist
-- ----------------------------
DROP TABLE IF EXISTS `playlist`;
CREATE TABLE `playlist`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pl_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pl_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pl_create_time` datetime(6) NULL,
  `pl_update_time` datetime(6) NULL,
  `pl_songs_num` int(11) NOT NULL,
  `pl_listen_num` int(11) NOT NULL,
  `pl_share_num` int(11) NOT NULL,
  `pl_comment_num` int(11) NOT NULL,
  `pl_follow_num` int(11) NOT NULL,
  `pl_tags` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pl_img_url` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pl_desc` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pl_creator_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `pl_id`(`pl_id`) USING BTREE,
  INDEX `playList_pl_creator_id_6acd3043_fk_User_id`(`pl_creator_id`) USING BTREE,
  CONSTRAINT `playList_pl_creator_id_6acd3043_fk_User_id` FOREIGN KEY (`pl_creator_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for playlisttosongs
-- ----------------------------
DROP TABLE IF EXISTS `playlisttosongs`;
CREATE TABLE `playlisttosongs`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pl_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `song_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for playlisttotag
-- ----------------------------
DROP TABLE IF EXISTS `playlisttotag`;
CREATE TABLE `playlisttotag`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pl_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tag` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sing
-- ----------------------------
DROP TABLE IF EXISTS `sing`;
CREATE TABLE `sing`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sing_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sing_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sing_music_num` int(11) NOT NULL,
  `sing_mv_num` int(11) NOT NULL,
  `sing_album_num` int(11) NOT NULL,
  `sing_url` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `sing_id`(`sing_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for singsim
-- ----------------------------
DROP TABLE IF EXISTS `singsim`;
CREATE TABLE `singsim`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sing_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sim_sing_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sim` double NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for singtag
-- ----------------------------
DROP TABLE IF EXISTS `singtag`;
CREATE TABLE `singtag`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sing_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tag` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for song
-- ----------------------------
DROP TABLE IF EXISTS `song`;
CREATE TABLE `song`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `song_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `song_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `song_pl_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `song_publish_time` datetime(6) NULL,
  `song_sing_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `song_total_comments` int(11) NOT NULL,
  `song_hot_comments` int(11) NOT NULL,
  `song_url` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `song_id`(`song_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for songlysic
-- ----------------------------
DROP TABLE IF EXISTS `songlysic`;
CREATE TABLE `songlysic`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `song_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `song_lysic` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `song_id`(`song_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for songsim
-- ----------------------------
DROP TABLE IF EXISTS `songsim`;
CREATE TABLE `songsim`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `song_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sim_song_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sim` double NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for songtag
-- ----------------------------
DROP TABLE IF EXISTS `songtag`;
CREATE TABLE `songtag`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `song_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tag` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `u_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `u_birthday` datetime(6) NULL,
  `u_gender` int(11) NOT NULL,
  `u_province` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `u_city` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `u_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `u_tags` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `u_img_url` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `u_auth_status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `u_account_status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `u_dj_status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `u_vip_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `u_sign` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `u_id`(`u_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for userbrowse
-- ----------------------------
DROP TABLE IF EXISTS `userbrowse`;
CREATE TABLE `userbrowse`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `click_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `click_cate` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_click_time` datetime(6) NULL,
  `desc` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for userplaylistrec
-- ----------------------------
DROP TABLE IF EXISTS `userplaylistrec`;
CREATE TABLE `userplaylistrec`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `related` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sim` double NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for usersim
-- ----------------------------
DROP TABLE IF EXISTS `usersim`;
CREATE TABLE `usersim`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sim_user_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sim` double NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for usersingrec
-- ----------------------------
DROP TABLE IF EXISTS `usersingrec`;
CREATE TABLE `usersingrec`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `related` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sim` double NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for usersongrec
-- ----------------------------
DROP TABLE IF EXISTS `usersongrec`;
CREATE TABLE `usersongrec`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `related` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sim` double NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for usertag
-- ----------------------------
DROP TABLE IF EXISTS `usertag`;
CREATE TABLE `usertag`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tag` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for useruserrec
-- ----------------------------
DROP TABLE IF EXISTS `useruserrec`;
CREATE TABLE `useruserrec`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `related` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sim` double NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
