/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : localhost:3306
 Source Schema         : springboot-vue

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 14/11/2022 23:32:51
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for area
-- ----------------------------
DROP TABLE IF EXISTS `area`;
CREATE TABLE `area`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pid` int(0) DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of area
-- ----------------------------
INSERT INTO `area` VALUES (1, '安徽省', NULL, 'Anhui');
INSERT INTO `area` VALUES (2, '合肥市', 1, 'Hefei');
INSERT INTO `area` VALUES (3, '政务区', 2, 'Zhengwu');

-- ----------------------------
-- Table structure for backups
-- ----------------------------
DROP TABLE IF EXISTS `backups`;
CREATE TABLE `backups`  (
  `id` bigint(0) NOT NULL,
  `mysql_ip` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `mysql_port` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `mysql_cmd` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `mysql_back_cmd` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `database_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `backups_path` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `backups_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `recovery_time` datetime(0) DEFAULT NULL,
  `create_time` datetime(0) DEFAULT NULL,
  `descr` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of backups
-- ----------------------------
INSERT INTO `backups` VALUES (1668437454816, 'localhost', '3306', 'mysqldump --no-tablespaces -hlocalhost -uroot -proot springboot-vue > C:/backups/zpxt_2022-11-14-22-50-27.sql', 'mysql -hlocalhost -uroot -proot springboot-vue < C:/backups/zpxt_2022-11-14-22-50-27.sql', NULL, 'C:/backups/', 'zpxt_2022-11-14-22-50-27.sql', '2022-11-14 22:53:00', '2022-11-14 22:50:54', '数据库所有表的备份');
INSERT INTO `backups` VALUES (1668438064587, 'localhost', '3306', 'mysqldump --no-tablespaces -hlocalhost -uroot -proot springboot-vue area backups > C:/backups/zpxt_2022-11-14-23-01-04.sql', NULL, NULL, 'C:/backups/', 'zpxt_2022-11-14-23-01-04.sql', NULL, '2022-11-14 23:01:05', '对以下数据库表进行备份: area, backups, ');

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `price` decimal(10, 2) DEFAULT NULL COMMENT '价格',
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '作者',
  `create_time` datetime(0) DEFAULT NULL COMMENT '出版日期',
  `cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '封面地址',
  `user_id` int(0) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES (1, '明朝那些事', 60.00, 'xxx', '2010-07-01 00:00:00', 'http://localhost:9090/files/eb7942935c294ca1bc2a07d24b554d36', 13);
INSERT INTO `book` VALUES (2, '毫无障碍学Python 配套视频课+案例源码', 57.30, '中国水利水电出版社京东自营官方旗舰店', '2022-11-14 22:30:44', 'http://localhost:9090/files/eb7942935c294ca1bc2a07d24b554d36', NULL);
INSERT INTO `book` VALUES (3, 'Python编程三剑客新版：Python编程从入门到实践第2版+快速上手第2版+极客编程（套装3册） Python编程自学套装，Python入门自学教程书籍，Python项目案例开发实战，用这一套书来轻松学习Python编程吧。', 233.00, '人民邮电出版社京东自营官方旗舰店', '2022-11-14 22:30:44', 'http://localhost:9090/files/eb7942935c294ca1bc2a07d24b554d36', NULL);
INSERT INTO `book` VALUES (4, 'Python编程 从入门到实践 第2版（图灵出品） 零基础学Python编程教程书籍，数据分析、网络爬虫、深度学习技能，蟒蛇书升级版，附赠源代码、练习答案、学习视频、学习速查地图', 95.50, '人民邮电出版社京东自营官方旗舰店', '2022-11-14 22:30:44', 'http://localhost:9090/files/eb7942935c294ca1bc2a07d24b554d36', NULL);
INSERT INTO `book` VALUES (5, '零基础入门学习Python（第2版） 小甲鱼畅销图书重磅升级,基于Python3.7,30小时视频讲解,实例贯穿全书,让读者在实践中理解概念,在轻松、愉快中学会Python!累计畅销13万册 200册以上团购电话：01089111488', 44.50, '清华大学出版社京东自营官方旗舰店', '2022-11-14 22:30:44', 'http://localhost:9090/files/eb7942935c294ca1bc2a07d24b554d36', NULL);
INSERT INTO `book` VALUES (6, '【新华书店 正版包邮】Python编程 从入门到实践(第2版) 新华书店，正版保证，关注店铺成为会员可享店铺专属优惠，团购客户请咨询在线客服！', 69.80, '文轩网旗舰店', '2022-11-14 22:30:44', 'http://localhost:9090/files/eb7942935c294ca1bc2a07d24b554d36', NULL);
INSERT INTO `book` VALUES (7, 'Python学习手册（套装上下册）（原书第5版） 零基础学Python3，Python编程从入门到实践学习手册，详解利用Python进行数据分析、机器学习的编程语言基础，Python核心技术全覆盖 100册以上团购优惠联系电话4006186622', 187.70, '机械工业出版社京东自营官方旗舰店', '2022-11-14 22:30:44', 'http://localhost:9090/files/eb7942935c294ca1bc2a07d24b554d36', NULL);
INSERT INTO `book` VALUES (8, 'Python 3标准库华章程序员书库 程序设计 python3 操作系统网络通信', 133.00, '芝麻开门图书专营店', '2022-11-14 22:30:44', 'http://localhost:9090/files/eb7942935c294ca1bc2a07d24b554d36', NULL);
INSERT INTO `book` VALUES (9, 'Python从入门到精通（第2版） Python入门经典，10万Python程序员的入门书，243集教学视频+102个精彩案例+在线答疑，Python数据分析，Python爬虫', 39.90, '京东图书官方自营书店', '2022-11-14 22:30:44', 'http://localhost:9090/files/eb7942935c294ca1bc2a07d24b554d36', NULL);
INSERT INTO `book` VALUES (10, 'Excel+Python 飞速搞定数据分析与处理（图灵出品） 零基础Python编程数据分析，Excel办公自动化处理，告别烦琐公式，办公人士也能轻松学习Python数据处理自动化，让你的Excel快得飞起来！ 单册100册以上团购电话4006186622', 78.10, '人民邮电出版社京东自营官方旗舰店', '2022-11-14 22:30:44', 'http://localhost:9090/files/eb7942935c294ca1bc2a07d24b554d36', NULL);
INSERT INTO `book` VALUES (11, '零基础学Python（Python3.10全新升级）（基础入门 同步视频 技术答疑） Python3.10全新升级，彩色印刷，零基础入门，赠同步视频教程+数字电子书+源码+实物Python知识挂图+技术答疑等海量资源。', 73.80, '明日科技京东自营官方旗舰店', '2022-11-14 22:30:44', 'http://localhost:9090/files/eb7942935c294ca1bc2a07d24b554d36', NULL);
INSERT INTO `book` VALUES (12, 'Python3网络爬虫开发实战 第2版（图灵出品） Python之父推荐的爬虫入门到实战教程书籍，上一版销量近10万册，静觅博客博主崔庆才倾力打造，App端也能爬', 121.60, '人民邮电出版社京东自营官方旗舰店', '2022-11-14 22:30:44', 'http://localhost:9090/files/eb7942935c294ca1bc2a07d24b554d36', NULL);
INSERT INTO `book` VALUES (13, '【新华书店 正版现货】python编程三剑客新版：python编程从入门到实践第2版+快速上手第2版+极客编程（套装3册）温科特卡姆著人民邮电出版社python编... 新华书店，正版保证，关注店铺成为会员可享店铺专属优惠，团购客户请咨询在线客服！', 149.80, '文轩网旗舰店', '2022-11-14 22:30:44', 'http://localhost:9090/files/eb7942935c294ca1bc2a07d24b554d36', NULL);
INSERT INTO `book` VALUES (14, 'Python网络爬虫权威指南 第二2版 Python 3网络爬虫开发实战入门教程 数据采集数据爬取数', 55.00, '芝麻开门图书专营店', '2022-11-14 22:30:44', 'http://localhost:9090/files/eb7942935c294ca1bc2a07d24b554d36', NULL);
INSERT INTO `book` VALUES (15, 'Python基础教程（第3版）(图灵出品) Python3.5编程入门教程，Python入门书，中文版累计销量20万册，针对Python，3升级，手把手教授Python编程实践　200册以上团购电话：01089111488', 86.10, '人民邮电出版社京东自营官方旗舰店', '2022-11-14 22:30:44', 'http://localhost:9090/files/eb7942935c294ca1bc2a07d24b554d36', NULL);
INSERT INTO `book` VALUES (16, '利用Python进行数据分析（原书第2版） Python数据分析经典畅销书全新升级,第1版中文版累计销售100000册.针对Python3.6进行全面修订和更新 100册以上团购优惠联系电话4006186622', 99.40, '机械工业出版社京东自营官方旗舰店', '2022-11-14 22:30:44', 'http://localhost:9090/files/eb7942935c294ca1bc2a07d24b554d36', NULL);
INSERT INTO `book` VALUES (17, '流畅的Python(图灵出品) Python进阶图书，PSF研究员，知名PyCon演讲者心血之作，全面深入，对Python语言关键特性剖析到位，兼顾Python3和Python2　200册以上团购电话：01089111488', 120.90, '人民邮电出版社京东自营官方旗舰店', '2022-11-14 22:30:44', 'http://localhost:9090/files/eb7942935c294ca1bc2a07d24b554d36', NULL);
INSERT INTO `book` VALUES (18, 'Python编程快速上手 让繁琐工作自动化 第2版(异步图书出品） Python编程从入门到实践姊妹篇，零基础自学Python教程书籍，提供配套同步教学视频、在线编程环境！针对Python3.X版本更新，海量资源随书送。', 89.00, '人民邮电出版社京东自营官方旗舰店', '2022-11-14 22:30:44', 'http://localhost:9090/files/eb7942935c294ca1bc2a07d24b554d36', NULL);
INSERT INTO `book` VALUES (19, 'Python编程300例：快速构建可执行高质量代码/清华开发者书库 中国产业发展研究院、中关村智能硬件产业联盟、中关村大数据产业联盟北京两化联盟联袂推荐！内含10万行源代码、300个经典案例！ 200册以上团购电话：01089111488', 78.60, '清华大学出版社京东自营官方旗舰店', '2022-11-14 22:30:44', 'http://localhost:9090/files/eb7942935c294ca1bc2a07d24b554d36', NULL);
INSERT INTO `book` VALUES (20, 'Python游戏编程入门 Python游戏开发小游戏教程图书 python项目编程 游戏设计游', 51.80, '芝麻开门图书专营店', '2022-11-14 22:30:44', 'http://localhost:9090/files/eb7942935c294ca1bc2a07d24b554d36', NULL);
INSERT INTO `book` VALUES (21, '科学计算+数据处理+数据分析：Python+NumPy+Pandas（套装共3册） 人工智能书籍python机器学习深度学习强化学习数学基础 科学计算+数据处理+数据分析：Python+NumPy+Pandas（套装共3册） 人工智能书籍python机器学习深度学习强化学习数学基础', 345.80, '智博尚书京东自营官方旗舰店', '2022-11-14 22:30:44', 'http://localhost:9090/files/eb7942935c294ca1bc2a07d24b554d36', NULL);
INSERT INTO `book` VALUES (22, 'Python王者归来（增强版） 中国台湾天龙书局科技榜霸榜3年TOP5。全彩印刷。以一敌十的Python全书　单册100册以上团购电话4006186622', 84.50, '清华大学出版社京东自营官方旗舰店', '2022-11-14 22:30:44', 'http://localhost:9090/files/eb7942935c294ca1bc2a07d24b554d36', NULL);
INSERT INTO `book` VALUES (23, '超简单：用Python让Excel飞起来 实战150例 典型案例让excel化繁为简，零基础学python，用python实现办公自动化，减少重复工作　团购电话4006186622', 79.80, '机械工业出版社京东自营官方旗舰店', '2022-11-14 22:30:44', 'http://localhost:9090/files/eb7942935c294ca1bc2a07d24b554d36', NULL);
INSERT INTO `book` VALUES (24, 'Python数据分析从入门到实践 Excel高效办公、Pandas、Matplotlib、NumPy、Seaborn、Scikit-Learn（Python3全彩版） 从基础开始学，简单又高效，适合数据分析师、财务、销售、运营、人事、金融、教育等行业，230个快速示例，17个应用实例，4大项目，快速入门数据分析。', 87.90, '明日科技京东自营官方旗舰店', '2022-11-14 22:30:44', 'http://localhost:9090/files/eb7942935c294ca1bc2a07d24b554d36', NULL);
INSERT INTO `book` VALUES (25, '小白学python编程四部曲:从入门到实践+实战+快速上手+极客项目编程 小白学python编程四部曲:从入门到实践+实战+快速上手+极客项目编程', 282.30, '', '2022-11-14 22:30:44', 'http://localhost:9090/files/eb7942935c294ca1bc2a07d24b554d36', NULL);
INSERT INTO `book` VALUES (26, '零基础入门学习Python 小甲鱼 python编程从入门到精通实践 pathon语言程序设计实战基础教程全套 计算机电脑编程入门自学书籍', 42.72, '虎彩图书旗舰店', '2022-11-14 22:30:44', 'http://localhost:9090/files/eb7942935c294ca1bc2a07d24b554d36', NULL);
INSERT INTO `book` VALUES (27, '让工作化繁为简：用Python实现办公自动化 超简单用python让Excel、word、ppt飞起来、零基础学python、网络爬虫、让繁琐的工作自动化，减少重复工作，比excelvba更好用更好学　团购电话4006186622', 79.80, '机械工业出版社京东自营官方旗舰店', '2022-11-14 22:30:44', 'http://localhost:9090/files/eb7942935c294ca1bc2a07d24b554d36', NULL);
INSERT INTO `book` VALUES (28, '用Python轻松设计控制系统 运行Python程序，贯穿其中的插图和对话，轻松促进理解控制工程的相关知识，从而无障碍地跨过学习的门槛　单册100册以上团购电话4006186622', 67.70, '机械工业出版社京东自营官方旗舰店', '2022-11-14 22:30:44', 'http://localhost:9090/files/eb7942935c294ca1bc2a07d24b554d36', NULL);
INSERT INTO `book` VALUES (29, 'Python核心编程（第3版）(异步图书出品) Python基础教程学习手册进阶图书，兼顾Python2和Python3，机器学习，数据处理，网络爬虫热门编程语言，Python开发人员的案头常备　200册以上团购电话：01089111488', 86.10, '人民邮电出版社京东自营官方旗舰店', '2022-11-14 22:30:44', 'http://localhost:9090/files/eb7942935c294ca1bc2a07d24b554d36', NULL);
INSERT INTO `book` VALUES (30, 'Python机器学习（原书第3版） 深度学习“四大名著”之一、美亚畅销书全新升级，《ACM计算评论》年度最佳奖图书，Python机器学习入门教程　团购电话4006186622', 127.70, '机械工业出版社京东自营官方旗舰店', '2022-11-14 22:30:44', 'http://localhost:9090/files/eb7942935c294ca1bc2a07d24b554d36', NULL);
INSERT INTO `book` VALUES (31, '笨办法学Python 3：基础篇+进阶篇（京东套装2册）(异步图书出品) Python编程从入门到实践基础教程书籍，零基础自学Python，知乎、B站大V推荐，手机扫码看视频', 102.70, '人民邮电出版社京东自营官方旗舰店', '2022-11-14 22:30:44', 'http://localhost:9090/files/eb7942935c294ca1bc2a07d24b554d36', NULL);

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `path` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '资源路径',
  `comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `icon` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '图标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES (1, 'Home', '/home', '主页', 'el-icon-house');
INSERT INTO `permission` VALUES (2, 'Book', '/book', '书籍管理', 'el-icon-files');
INSERT INTO `permission` VALUES (4, 'Order', '/order', '我的订单', 'el-icon-s-order');
INSERT INTO `permission` VALUES (9, 'User', '/user', '用户管理', 'el-icon-user');
INSERT INTO `permission` VALUES (10, 'Permission', '/permisssion', '权限菜单', 'el-icon-menu');
INSERT INTO `permission` VALUES (11, 'Role', '/role', '角色管理', 'el-icon-s-custom');
INSERT INTO `permission` VALUES (13, 'Person', '/person', '个人信息', '');
INSERT INTO `permission` VALUES (14, 'Password', '/password', '修改密码', NULL);
INSERT INTO `permission` VALUES (15, 'Backups', '/backups', '备份还原', 'el-icon-s-custom');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, 'admin', '管理员');
INSERT INTO `role` VALUES (2, 'user', '普通用户');

-- ----------------------------
-- Table structure for role_permission
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission`  (
  `role_id` int(0) NOT NULL COMMENT '角色id',
  `permission_id` int(0) NOT NULL COMMENT '资源id',
  PRIMARY KEY (`role_id`, `permission_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_permission
-- ----------------------------
INSERT INTO `role_permission` VALUES (1, 1);
INSERT INTO `role_permission` VALUES (1, 2);
INSERT INTO `role_permission` VALUES (1, 4);
INSERT INTO `role_permission` VALUES (1, 9);
INSERT INTO `role_permission` VALUES (1, 10);
INSERT INTO `role_permission` VALUES (1, 11);
INSERT INTO `role_permission` VALUES (1, 13);
INSERT INTO `role_permission` VALUES (1, 14);
INSERT INTO `role_permission` VALUES (1, 15);
INSERT INTO `role_permission` VALUES (2, 1);
INSERT INTO `role_permission` VALUES (2, 2);
INSERT INTO `role_permission` VALUES (2, 4);
INSERT INTO `role_permission` VALUES (2, 13);
INSERT INTO `role_permission` VALUES (2, 14);

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `total_price` decimal(10, 2) DEFAULT NULL COMMENT '总价',
  `pay_price` decimal(10, 2) DEFAULT NULL COMMENT '实付款',
  `discount` decimal(10, 2) DEFAULT 0.00 COMMENT '优惠金额',
  `transport_price` decimal(10, 2) DEFAULT 0.00 COMMENT '运费',
  `order_no` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '订单编号',
  `user_id` int(0) DEFAULT NULL COMMENT '用户id',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户账户',
  `create_time` timestamp(0) DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `pay_time` timestamp(0) DEFAULT NULL COMMENT '支付时间',
  `state` int(0) NOT NULL DEFAULT 0 COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_order
-- ----------------------------
INSERT INTO `t_order` VALUES (25, '明朝那些事', 60.00, 60.00, 0.00, 0.00, '1451548938265882624', 1, 'admin', '2021-10-22 22:02:12', '2021-10-22 22:02:11', 1);
INSERT INTO `t_order` VALUES (26, '明朝那些事', 60.00, 60.00, 0.00, 0.00, '1592157330921451520', 1, 'admin', '2022-11-14 22:07:43', '2022-11-14 22:07:43', 1);
INSERT INTO `t_order` VALUES (27, '明朝那些事', 60.00, 60.00, 0.00, 0.00, '1592157492091777024', 1, 'admin', '2022-11-14 22:08:21', '2022-11-14 22:08:22', 1);
INSERT INTO `t_order` VALUES (28, '明朝那些事', 60.00, 60.00, 0.00, 0.00, '1592157648879054848', 1, 'admin', '2022-11-14 22:08:59', '2022-11-14 22:08:59', 1);
INSERT INTO `t_order` VALUES (29, '明朝那些事', 60.00, 60.00, 0.00, 0.00, '1592157688204849152', 1, 'admin', '2022-11-14 22:09:08', '2022-11-14 22:09:08', 1);
INSERT INTO `t_order` VALUES (30, '明朝那些事', 60.00, 60.00, 0.00, 0.00, '1592157857419849728', 17, '1', '2022-11-14 22:09:48', '2022-11-14 22:09:49', 1);

-- ----------------------------
-- Table structure for table_name
-- ----------------------------
DROP TABLE IF EXISTS `table_name`;
CREATE TABLE `table_name`  (
  `id` int(0) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `descr` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of table_name
-- ----------------------------
INSERT INTO `table_name` VALUES (1, 'area', '地区表');
INSERT INTO `table_name` VALUES (2, 'backups', '备份表');
INSERT INTO `table_name` VALUES (3, 'book', '书籍表');
INSERT INTO `table_name` VALUES (4, 'permission', '菜单表');
INSERT INTO `table_name` VALUES (5, 'role', '角色表');
INSERT INTO `table_name` VALUES (6, 'role_permission', '角色菜单表');
INSERT INTO `table_name` VALUES (7, 't_order', '订单表');
INSERT INTO `table_name` VALUES (8, 'user', '用户表');
INSERT INTO `table_name` VALUES (9, 'user_role', '用户角色表');
INSERT INTO `table_name` VALUES (10, 'table_name', '表名称表');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '密码',
  `nick_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '昵称',
  `age` int(0) DEFAULT NULL COMMENT '年龄',
  `sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '性别',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地址',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '头像',
  `account` decimal(10, 2) DEFAULT 0.00 COMMENT '账户余额',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', 'v3GNSMn5yFco4J2yXFhMPw==', '管理员', 32, '男', '台湾', 'http://localhost:9090/files/888f2d39d0724816a738a716d56ad58a', 100000.00);
INSERT INTO `user` VALUES (13, 'zhang', '$2a$10$h6gfZRMvGFjjQH6HrQf.Q.fvu3jjMc0cv/sGpSanobht5iwCFbucS', '张三', 20, '男', '福州', 'http://localhost:9090/files/d227473b758e4915a3e7c866d2d494cf', 200.00);
INSERT INTO `user` VALUES (14, 'wang', '$2a$10$h6gfZRMvGFjjQH6HrQf.Q.fvu3jjMc0cv/sGpSanobht5iwCFbucS', '王梦晨', 24, '女', '漳州', NULL, 300.00);
INSERT INTO `user` VALUES (15, 'li', '$2a$10$h6gfZRMvGFjjQH6HrQf.Q.fvu3jjMc0cv/sGpSanobht5iwCFbucS', '李雪', 22, '女', '泉州', NULL, 500.00);
INSERT INTO `user` VALUES (16, 'qian', '$2a$10$h6gfZRMvGFjjQH6HrQf.Q.fvu3jjMc0cv/sGpSanobht5iwCFbucS', '钱江', 22, '男', '温州', NULL, 700.00);
INSERT INTO `user` VALUES (17, '1', '1VoeNuQ9aQHzBbM+kTsVRg==', '用户1592154142059212801', NULL, NULL, '厦门', NULL, 0.00);
INSERT INTO `user` VALUES (18, '2', 'v3GNSMn5yFco4J2yXFhMPw==', '用户1592154828549337090', NULL, NULL, '厦门', NULL, 0.00);

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role`  (
  `user_id` int(0) NOT NULL COMMENT '用户id',
  `role_id` int(0) NOT NULL COMMENT '角色id',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES (1, 1);
INSERT INTO `user_role` VALUES (13, 2);
INSERT INTO `user_role` VALUES (14, 2);
INSERT INTO `user_role` VALUES (15, 2);
INSERT INTO `user_role` VALUES (16, 2);
INSERT INTO `user_role` VALUES (17, 2);
INSERT INTO `user_role` VALUES (18, 2);

SET FOREIGN_KEY_CHECKS = 1;
