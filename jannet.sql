-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 14, 2026 at 05:53 AM
-- Server version: 8.4.7
-- PHP Version: 8.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jannet`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 3, 'add_permission'),
(6, 'Can change permission', 3, 'change_permission'),
(7, 'Can delete permission', 3, 'delete_permission'),
(8, 'Can view permission', 3, 'view_permission'),
(9, 'Can add group', 2, 'add_group'),
(10, 'Can change group', 2, 'change_group'),
(11, 'Can delete group', 2, 'delete_group'),
(12, 'Can view group', 2, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add ent ext', 8, 'add_entext'),
(26, 'Can change ent ext', 8, 'change_entext'),
(27, 'Can delete ent ext', 8, 'delete_entext'),
(28, 'Can view ent ext', 8, 'view_entext'),
(29, 'Can add employee', 7, 'add_employee'),
(30, 'Can change employee', 7, 'change_employee'),
(31, 'Can delete employee', 7, 'delete_employee'),
(32, 'Can view employee', 7, 'view_employee'),
(33, 'Can add user', 9, 'add_user'),
(34, 'Can change user', 9, 'change_user'),
(35, 'Can delete user', 9, 'delete_user'),
(36, 'Can view user', 9, 'view_user'),
(37, 'Can add factor', 10, 'add_factor'),
(38, 'Can change factor', 10, 'change_factor'),
(39, 'Can delete factor', 10, 'delete_factor'),
(40, 'Can view factor', 10, 'view_factor');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$1200000$nO3rgYekdMIbBYEK2MBTxl$r+D3QJpPAObIFnrobRT7RKhNUAN2D7eL2CRZJ43M5pU=', '2026-02-08 10:28:16.290065', 1, 'epsilon', 'Epsilon', 'Star', 'mobinbaratian18@gmail.com', 1, 1, '2026-01-31 05:59:55.000000'),
(2, 'pbkdf2_sha256$1200000$WeUzFUWOXuiqP8cftlz64N$obBP4xO6MWiFJSP2dV1JdFruWK9staJ3Fwi+0m5XPik=', '2026-01-31 06:41:19.211335', 1, 'arash', 'Arash', 'Moradi', 'arashmoradi@gmail.com', 1, 1, '2026-01-31 06:00:28.000000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `auth_user_user_permissions`
--

INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES
(1, 2, 1),
(2, 2, 2),
(3, 2, 3),
(4, 2, 4),
(5, 2, 5),
(6, 2, 6),
(7, 2, 7),
(8, 2, 8),
(9, 2, 9),
(10, 2, 10),
(11, 2, 11),
(12, 2, 12),
(13, 2, 13),
(14, 2, 14),
(15, 2, 15),
(16, 2, 16),
(17, 2, 17),
(18, 2, 18),
(19, 2, 19),
(20, 2, 20),
(21, 2, 21),
(22, 2, 22),
(23, 2, 23),
(24, 2, 24),
(25, 2, 25),
(26, 2, 26),
(27, 2, 27),
(28, 2, 28),
(29, 2, 29),
(30, 2, 30),
(31, 2, 31),
(32, 2, 32),
(33, 1, 1),
(34, 1, 2),
(35, 1, 3),
(36, 1, 4),
(37, 1, 5),
(38, 1, 6),
(39, 1, 7),
(40, 1, 8),
(41, 1, 9),
(42, 1, 10),
(43, 1, 11),
(44, 1, 12),
(45, 1, 13),
(46, 1, 14),
(47, 1, 15),
(48, 1, 16),
(49, 1, 17),
(50, 1, 18),
(51, 1, 19),
(52, 1, 20),
(53, 1, 21),
(54, 1, 22),
(55, 1, 23),
(56, 1, 24),
(57, 1, 25),
(58, 1, 26),
(59, 1, 27),
(60, 1, 28),
(61, 1, 29),
(62, 1, 30),
(63, 1, 31),
(64, 1, 32);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2026-01-31 06:01:43.855700', '2', 'arash', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"User permissions\"]}}]', 4, 1),
(2, '2026-01-31 06:02:21.466931', '1', 'epsilon', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"User permissions\"]}}]', 4, 1),
(3, '2026-01-31 06:23:45.816547', '1', 'User object (1)', 1, '[{\"added\": {}}]', 9, 1),
(4, '2026-01-31 06:23:50.555311', '2', 'User object (2)', 1, '[{\"added\": {}}]', 9, 1),
(5, '2026-01-31 06:24:00.946904', '3', 'User object (3)', 1, '[{\"added\": {}}]', 9, 1),
(6, '2026-01-31 06:24:10.712259', '4', 'User object (4)', 1, '[{\"added\": {}}]', 9, 1),
(7, '2026-01-31 06:24:15.318989', '5', 'User object (5)', 1, '[{\"added\": {}}]', 9, 1),
(8, '2026-01-31 06:36:59.833404', '1', 'Ali Janeh', 1, '[{\"added\": {}}]', 7, 1),
(9, '2026-01-31 06:37:28.620784', '2', 'Araian Zoghi', 1, '[{\"added\": {}}]', 7, 1),
(10, '2026-01-31 06:49:34.565229', '1', 'EntExt object (1)', 1, '[{\"added\": {}}]', 8, 1),
(11, '2026-01-31 06:49:48.096521', '2', 'EntExt object (2)', 1, '[{\"added\": {}}]', 8, 1),
(12, '2026-01-31 06:50:45.150341', '2', 'EntExt object (2)', 3, '', 8, 1),
(13, '2026-01-31 06:50:45.150341', '1', 'EntExt object (1)', 3, '', 8, 1),
(14, '2026-01-31 06:50:50.588302', '3', 'EntExt object (3)', 1, '[{\"added\": {}}]', 8, 1),
(15, '2026-01-31 06:50:59.156815', '3', 'EntExt object (3)', 3, '', 8, 1),
(16, '2026-01-31 06:51:52.229271', '4', 'EntExt object (4)', 1, '[{\"added\": {}}]', 8, 2),
(17, '2026-01-31 06:52:00.052472', '3', 'Masoud Ghasemi', 1, '[{\"added\": {}}]', 7, 1),
(18, '2026-01-31 06:52:48.322432', '4', 'Arash Moradi', 1, '[{\"added\": {}}]', 7, 1),
(19, '2026-01-31 06:53:03.684555', '5', 'Mobin Baratian', 1, '[{\"added\": {}}]', 7, 1),
(20, '2026-01-31 06:53:12.506466', '6', 'Hadis Afshar', 1, '[{\"added\": {}}]', 7, 1),
(21, '2026-01-31 06:53:27.116289', '7', 'Mona Sadeghi', 1, '[{\"added\": {}}]', 7, 1),
(22, '2026-01-31 06:54:16.164216', '8', 'Sepehr Naser Zadeh', 1, '[{\"added\": {}}]', 7, 1),
(23, '2026-01-31 06:54:36.338038', '9', 'Mahdiyar Ramadan', 1, '[{\"added\": {}}]', 7, 1),
(24, '2026-01-31 06:55:07.139759', '10', 'Erfan Saberi', 1, '[{\"added\": {}}]', 7, 1),
(25, '2026-01-31 06:55:40.440932', '6', 'junior', 1, '[{\"added\": {}}]', 9, 1),
(26, '2026-01-31 06:55:54.450643', '11', 'Reyhaneh Shafiee', 1, '[{\"added\": {}}]', 7, 1),
(27, '2026-01-31 06:56:26.183221', '4', 'EntExt object (4)', 3, '', 8, 1),
(28, '2026-01-31 06:56:58.325226', '5', 'EntExt object (5)', 1, '[{\"added\": {}}]', 8, 1),
(29, '2026-01-31 06:57:05.284110', '6', 'EntExt object (6)', 1, '[{\"added\": {}}]', 8, 1),
(30, '2026-01-31 07:16:57.913029', '9', 'Mahdiyar Ramadan', 2, '[{\"changed\": {\"fields\": [\"Username\", \"Password\"]}}]', 7, 1),
(31, '2026-01-31 07:17:24.080609', '9', 'Mahdiyar Ramadan', 2, '[{\"changed\": {\"fields\": [\"Username\"]}}]', 7, 1),
(32, '2026-01-31 07:17:46.309448', '8', 'Sepehr Naser Zadeh', 2, '[{\"changed\": {\"fields\": [\"Username\", \"Password\"]}}]', 7, 1),
(33, '2026-01-31 07:19:15.957045', '7', 'Mona Sadeghi', 2, '[{\"changed\": {\"fields\": [\"Username\", \"Password\"]}}]', 7, 1),
(34, '2026-01-31 07:19:54.232618', '6', 'Hadis Afshar', 2, '[{\"changed\": {\"fields\": [\"Username\", \"Password\"]}}]', 7, 1),
(35, '2026-01-31 07:20:10.335788', '7', 'Mona Sadeghi', 2, '[{\"changed\": {\"fields\": [\"Username\"]}}]', 7, 1),
(36, '2026-01-31 07:20:22.538341', '5', 'Mobin Baratian', 2, '[{\"changed\": {\"fields\": [\"Username\", \"Password\"]}}]', 7, 1),
(37, '2026-01-31 07:20:45.536518', '4', 'Arash Moradi', 2, '[{\"changed\": {\"fields\": [\"Username\", \"Password\"]}}]', 7, 1),
(38, '2026-01-31 07:21:12.411020', '3', 'Masoud Ghasemi', 2, '[{\"changed\": {\"fields\": [\"Username\", \"Password\"]}}]', 7, 1),
(39, '2026-01-31 09:43:06.857870', '7', 'EntExt object (7)', 1, '[{\"added\": {}}]', 8, 1),
(40, '2026-01-31 15:33:02.707001', '7', 'EntExt object (7)', 3, '', 8, 1),
(41, '2026-01-31 15:33:02.707001', '6', 'EntExt object (6)', 3, '', 8, 1),
(42, '2026-01-31 15:33:02.707001', '5', 'EntExt object (5)', 3, '', 8, 1),
(43, '2026-01-31 15:33:08.456470', '8', 'EntExt object (8)', 1, '[{\"added\": {}}]', 8, 1),
(44, '2026-01-31 15:36:20.217461', '9', 'EntExt object (9)', 1, '[{\"added\": {}}]', 8, 1),
(45, '2026-01-31 15:52:53.411267', '10', 'EntExt object (10)', 1, '[{\"added\": {}}]', 8, 1),
(46, '2026-01-31 15:55:58.904551', '10', 'EntExt object (10)', 2, '[{\"changed\": {\"fields\": [\"Enter\"]}}]', 8, 1),
(47, '2026-01-31 15:56:23.159862', '10', 'EntExt object (10)', 2, '[{\"changed\": {\"fields\": [\"Enter\"]}}]', 8, 1),
(48, '2026-01-31 16:06:48.490548', '11', 'EntExt object (11)', 1, '[{\"added\": {}}]', 8, 1),
(49, '2026-02-01 07:27:24.898209', '23', 'EntExt object (23)', 2, '[{\"changed\": {\"fields\": [\"Enter time\"]}}]', 8, 1),
(50, '2026-02-01 09:24:15.091024', '1', 'Factor object (1)', 1, '[{\"added\": {}}]', 10, 1),
(51, '2026-02-01 09:38:10.164597', '21', 'EntExt object (21)', 2, '[{\"changed\": {\"fields\": [\"Enter time\"]}}]', 8, 1),
(52, '2026-02-01 09:45:57.902466', '1', '╪╣┘ä█î ╪¼╪º┘å┘ç', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]', 7, 1),
(53, '2026-02-01 09:50:14.598553', '2', '╪ó╪▒█î┘å ╪░┘ê┘é█î', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]', 7, 1),
(54, '2026-02-01 09:50:24.802365', '3', '┘à╪│╪╣┘ê╪» ┘é╪º╪│┘à█î', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]', 7, 1),
(55, '2026-02-01 09:50:35.283185', '4', '╪ó╪▒╪┤ ┘à╪▒╪º╪»█î', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]', 7, 1),
(56, '2026-02-01 09:50:42.966299', '5', '┘à╪¿█î┘å ╪¿╪▒╪º╪¬█î╪º┘å', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]', 7, 1),
(57, '2026-02-01 09:50:52.573859', '6', '╪¡╪»█î╪½ ╪º┘ü╪┤╪º╪▒', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]', 7, 1),
(58, '2026-02-01 09:51:00.022501', '7', '┘à┘ê┘å╪º ╪╡╪º╪»┘é█î', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]', 7, 1),
(59, '2026-02-01 09:51:11.556063', '8', '╪│┘╛┘ç╪▒ ┘å╪º╪╡╪▒ ╪▓╪º╪»┘ç', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]', 7, 1),
(60, '2026-02-01 09:51:24.278435', '9', '┘à┘ç╪»█î╪º╪▒ ╪▒┘à╪º╪»╪º┘å', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]', 7, 1),
(61, '2026-02-01 09:51:45.231816', '10', '╪╣╪▒┘ü╪º┘å ╪╡╪º╪¿╪▒█î', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]', 7, 1),
(62, '2026-02-01 09:51:53.953840', '11', '╪▒█î╪¡╪º┘å┘ç ╪┤┘ü█î╪╣█î', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]', 7, 1),
(63, '2026-02-02 14:44:01.024507', '36', 'EntExt object (36)', 2, '[{\"changed\": {\"fields\": [\"Late accept\"]}}]', 8, 1),
(64, '2026-02-02 14:54:12.202486', '35', 'EntExt object (35)', 2, '[{\"changed\": {\"fields\": [\"Late accept\"]}}]', 8, 1),
(65, '2026-02-03 06:34:53.450550', '38', 'EntExt object (38)', 2, '[{\"changed\": {\"fields\": [\"Enter time\"]}}]', 8, 1),
(66, '2026-02-03 09:44:57.038463', '1', 'علی جانه', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]', 7, 1),
(67, '2026-02-03 09:45:46.813329', '3', 'مسعود قاسمی', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]', 7, 1),
(68, '2026-02-03 09:45:55.106786', '4', 'آرش مرادی', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]', 7, 1),
(69, '2026-02-03 09:46:02.127768', '5', 'مبین براتیان', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]', 7, 1),
(70, '2026-02-03 09:46:11.834275', '6', 'حدیث افشار', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]', 7, 1),
(71, '2026-02-03 09:46:19.448113', '7', 'مونا صادقی', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]', 7, 1),
(72, '2026-02-03 09:46:34.226738', '8', 'سپهر ناصر زاده', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]', 7, 1),
(73, '2026-02-03 09:46:40.779906', '9', 'مهدیار رمادان', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]', 7, 1),
(74, '2026-02-03 09:46:51.481596', '2', 'آرین ذوقی', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]', 7, 1),
(75, '2026-02-03 09:46:59.560610', '10', 'عرفان صابری', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]', 7, 1),
(76, '2026-02-03 09:47:05.713387', '11', 'ریحانه شفیعی', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]', 7, 1),
(77, '2026-02-03 09:47:20.111589', '6', 'Factor object (6)', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 10, 1),
(78, '2026-02-03 09:47:35.982614', '5', 'Factor object (5)', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 10, 1),
(79, '2026-02-03 09:48:30.944460', '2', 'Factor object (2)', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 10, 1),
(80, '2026-02-03 09:50:50.315374', '4', 'Factor object (4)', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 10, 1),
(81, '2026-02-03 09:57:20.895100', '43', 'EntExt object (43)', 3, '', 8, 1),
(82, '2026-02-07 17:27:01.977811', '5', 'مبین براتیان', 2, '[{\"changed\": {\"fields\": [\"Password\"]}}]', 7, 1),
(83, '2026-02-08 10:28:46.009655', '11', 'ریحانه شفیعی', 2, '[{\"changed\": {\"fields\": [\"Username\", \"Password\"]}}]', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'group'),
(3, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'hrm', 'employee'),
(8, 'hrm', 'entext'),
(9, 'hrm', 'user'),
(10, 'factor', 'factor');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2026-01-31 05:43:22.246508'),
(2, 'auth', '0001_initial', '2026-01-31 05:43:22.502379'),
(3, 'admin', '0001_initial', '2026-01-31 05:43:22.582981'),
(4, 'admin', '0002_logentry_remove_auto_add', '2026-01-31 05:43:22.582981'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2026-01-31 05:43:22.608472'),
(6, 'contenttypes', '0002_remove_content_type_name', '2026-01-31 05:43:22.644023'),
(7, 'auth', '0002_alter_permission_name_max_length', '2026-01-31 05:43:22.660920'),
(8, 'auth', '0003_alter_user_email_max_length', '2026-01-31 05:43:22.693558'),
(9, 'auth', '0004_alter_user_username_opts', '2026-01-31 05:43:22.693558'),
(10, 'auth', '0005_alter_user_last_login_null', '2026-01-31 05:43:22.709853'),
(11, 'auth', '0006_require_contenttypes_0002', '2026-01-31 05:43:22.725772'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2026-01-31 05:43:22.728039'),
(13, 'auth', '0008_alter_user_username_max_length', '2026-01-31 05:43:22.747604'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2026-01-31 05:43:22.768899'),
(15, 'auth', '0010_alter_group_name_max_length', '2026-01-31 05:43:22.795678'),
(16, 'auth', '0011_update_proxy_permissions', '2026-01-31 05:43:22.795678'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2026-01-31 05:43:22.820924'),
(18, 'sessions', '0001_initial', '2026-01-31 05:43:22.829179'),
(19, 'hrm', '0001_initial', '2026-01-31 05:58:26.501128'),
(20, 'hrm', '0002_alter_employee_e_serial', '2026-01-31 06:06:44.857682'),
(21, 'hrm', '0003_alter_employee_e_serial', '2026-01-31 06:12:15.411571'),
(22, 'hrm', '0004_user_employee_email_employee_password_and_more', '2026-01-31 06:22:11.149259'),
(23, 'hrm', '0005_employee_e_user_alter_entext_employee', '2026-01-31 06:35:35.633304'),
(24, 'hrm', '0006_alter_employee_eid', '2026-01-31 06:36:35.038316'),
(25, 'hrm', '0007_alter_entext_enter_alter_entext_exit', '2026-01-31 06:43:45.462022'),
(26, 'hrm', '0008_alter_entext_exit', '2026-01-31 06:45:51.997697'),
(27, 'hrm', '0009_alter_entext_exit', '2026-01-31 06:49:27.482389'),
(28, 'hrm', '0010_employee_desktop_employee_ip_address', '2026-01-31 07:06:18.855103'),
(29, 'hrm', '0011_entext_enter_time_entext_exit_time_and_more', '2026-01-31 15:31:46.796553'),
(30, 'hrm', '0012_alter_entext_enter_alter_entext_exit', '2026-01-31 15:52:06.053433'),
(31, 'factor', '0001_initial', '2026-02-01 09:21:06.272278'),
(32, 'factor', '0002_factor_serial', '2026-02-01 09:23:14.259995'),
(33, 'hrm', '0013_entext_late_accept', '2026-02-02 14:40:25.514810');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('i65jbthw924r5kclrmoqdx7gct9gdw6q', '.eJxVjDsOwjAQRO_iGlkO_sRLSZ8zWLveDQkgW8qnQtwdLKWAZop5b-alEu7blPZVljSzuqhOnX47wvyQ0gDfsdyqzrVsy0y6Kfqgqx4qy_N6uH8HE65TW0PvcDQEEb7hA8WOzSjYo0MwZws2GOPBAUUOHMhnDwi9WBbnJXbq_QHY1jeQ:1vm42U:royKhrybWsk-IvFUmgkI37l8_2k5YDHzWyfYyj3riRQ', '2026-02-14 06:00:58.627208'),
('jb61k3pfv28tvp2aixi5lp3amvfrdmoh', '.eJxVjMsOwiAQRf-FtSE4Zejg0r3fQHgMUjWQlHZl_HfbpAvd3nPOfQvn16W4tfPspiQuAsTpdws-PrnuID18vTcZW13mKchdkQft8tYSv66H-3dQfC9bjagUQRqINTEZNMDKRuBsNRqTQQVSwHgmQyMZa9OAm5V9HhE56CQ-X6xcNrY:1vm4fX:ozgFPYa89qkErWrYgxDdov2ck5oMayNaqtY44ENlPTU', '2026-02-14 06:41:19.211335'),
('1r91kgtyq2u0ob495vpocpz9yoydeb3x', '.eJxVjDsOwjAQRO_iGlkO_sRLSZ8zWLveDQkgW8qnQtwdLKWAZop5b-alEu7blPZVljSzuqhOnX47wvyQ0gDfsdyqzrVsy0y6Kfqgqx4qy_N6uH8HE65TW0PvcDQEEb7hA8WOzSjYo0MwZws2GOPBAUUOHMhnDwi9WBbnJXbq_QHY1jeQ:1vmCWj:axAom6Wd7RlCpzeXoubgdUbF35NNByXJDHrSyEQC09s', '2026-02-14 15:04:45.821429'),
('bnfwrhs0rnj1zjste6gwk6hvr6uyu1vo', '.eJxVjDsOwjAQRO_iGlkO_sRLSZ8zWLveDQkgW8qnQtwdLKWAZop5b-alEu7blPZVljSzuqhOnX47wvyQ0gDfsdyqzrVsy0y6Kfqgqx4qy_N6uH8HE65TW0PvcDQEEb7hA8WOzSjYo0MwZws2GOPBAUUOHMhnDwi9WBbnJXbq_QHY1jeQ:1vom4x:Fz0R1Te9Mzk-kcXPPJHQ_K5EMYx8Tlt-fTU_5xYLQAQ', '2026-02-21 17:26:43.463526'),
('uwu077vyr74sg8mpyek4iqilhzsffnzo', '.eJxVjDsOwjAQRO_iGlkO_sRLSZ8zWLveDQkgW8qnQtwdLKWAZop5b-alEu7blPZVljSzuqhOnX47wvyQ0gDfsdyqzrVsy0y6Kfqgqx4qy_N6uH8HE65TW0PvcDQEEb7hA8WOzSjYo0MwZws2GOPBAUUOHMhnDwi9WBbnJXbq_QHY1jeQ:1vp21Y:zjQH7pSKDDDiQGksNq7FuVMF3xo_Bouu_TBM2z4CeJU', '2026-02-22 10:28:16.290065');

-- --------------------------------------------------------

--
-- Table structure for table `factor_factor`
--

DROP TABLE IF EXISTS `factor_factor`;
CREATE TABLE IF NOT EXISTS `factor_factor` (
  `fid` int NOT NULL AUTO_INCREMENT,
  `title` longtext NOT NULL,
  `date` date NOT NULL,
  `price` int NOT NULL,
  `serial` varchar(50) NOT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `factor_factor`
--

INSERT INTO `factor_factor` (`fid`, `title`, `date`, `price`, `serial`) VALUES
(2, 'تمدید هاست جوربا', '2026-02-01', 495000, 'WazNVeT7RMBfmghXdUPG'),
(4, 'تمدید هاست پتنشیا', '2026-02-01', 579700, '9DawSgUK1JWI6PhXTNYl'),
(5, 'خرید بسته اینترنتی (55 گیگ)', '2026-02-01', 336600, 'C1le4cy7pgOI3PkfAmn6'),
(6, 'خرید قالب نئو شاپ', '2026-02-02', 898000, 'fe89sylN0znX1S4Q6Ji2'),
(7, 'با سلام (آقای رمادان)', '2026-02-03', 200000, 'ZSMOldU4WhRK1au03vYG'),
(8, 'خرید هاست توان ', '2026-02-07', 2079000, 'fk4N2zGCPbQr0g6cFX1v'),
(9, 'خرید اینترنت', '2026-02-08', 336600, 'w2fQE5seuVPLtTrn86y1'),
(10, 'هاست کافیا ', '2026-02-09', 529700, 'ewdjWTaEQ2D8FOgHcUnr'),
(11, 'خرید پنل بهتایم', '2026-02-11', 1215000, 'cl2IuZrHL4R3oMmBjfKC'),
(12, 'لایسنس ادیبان', '2026-02-12', 233000, 'F2hioLX8NzK5QgCYJSdZ');

-- --------------------------------------------------------

--
-- Table structure for table `hrm_employee`
--

DROP TABLE IF EXISTS `hrm_employee`;
CREATE TABLE IF NOT EXISTS `hrm_employee` (
  `eid` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `e_serial` varchar(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `e_user_id` int DEFAULT NULL,
  `desktop` varchar(50) DEFAULT NULL,
  `ip_address` char(39) DEFAULT NULL,
  PRIMARY KEY (`eid`),
  UNIQUE KEY `hrm_employee_e_serial_2631ccba_uniq` (`e_serial`),
  KEY `hrm_employee_e_user_id_69de080d` (`e_user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `hrm_employee`
--

INSERT INTO `hrm_employee` (`eid`, `first_name`, `last_name`, `e_serial`, `email`, `password`, `username`, `e_user_id`, `desktop`, `ip_address`) VALUES
(1, 'علی', 'جانه', 'TG3A8O7wJQYNiV69RWFp', NULL, 'NULL_FIELD', 'NULL_FIELD', 1, NULL, NULL),
(2, 'آرین', 'ذوقی', 'vzrCLohOjZQNB2xlAFJ1', NULL, 'NULL_FIELD', 'NULL_FIELD', 2, NULL, NULL),
(3, 'مسعود', 'قاسمی', 'ezNDAvpiuMgZFbtkl97d', NULL, 'Pha64J1Whu', 'MagicMikeXXL', 2, NULL, NULL),
(4, 'آرش', 'مرادی', 'o52DC4s6jFcxSNWA7Gtp', NULL, 'fN8ZrqFW1j', 'arashprogram', 2, NULL, NULL),
(5, 'مبین', 'براتیان', 'PcA1gvtXWd427OnBQpMo', NULL, 'epsilonstar', 'epsilonstar', 2, NULL, NULL),
(6, 'حدیث', 'افشار', 'otbX05zJsafT7MEqg8KF', NULL, 'QvTje8d92D', 'hadiskhanoom', 3, NULL, NULL),
(7, 'مونا', 'صادقی', 'OxbFThYMkIXCnmQlZR36', NULL, 'GQpgvF7ZaM', 'usedtobeahumann', 3, NULL, NULL),
(8, 'سپهر', 'ناصر زاده', 'pIRLjadeXHrKz5lBc6Uw', NULL, 'T8gmdj5u73', 'sepi999', 3, NULL, NULL),
(9, 'مهدیار', 'رمادان', 'hy0lc6S7CB423bjAoDUT', NULL, '2cpn7L3iHn', 'Mahdiyar', 3, NULL, NULL),
(10, 'عرفان', 'صابری', '6GBn0ujk3hzrLHUsN8Eo', NULL, 'NULL_FIELD', 'NULL_FIELD', 3, NULL, NULL),
(11, 'ریحانه', 'شفیعی', '8mjUB2JvHFxMA5eyPqRl', NULL, 'miomio1234', 'reyhaneh', 6, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hrm_entext`
--

DROP TABLE IF EXISTS `hrm_entext`;
CREATE TABLE IF NOT EXISTS `hrm_entext` (
  `exid` int NOT NULL AUTO_INCREMENT,
  `enter` date NOT NULL,
  `exit` date DEFAULT NULL,
  `absent` tinyint(1) NOT NULL,
  `employee_id` int DEFAULT NULL,
  `enter_time` time(6) NOT NULL,
  `exit_time` time(6) DEFAULT NULL,
  `late_accept` tinyint(1) NOT NULL,
  PRIMARY KEY (`exid`),
  KEY `hrm_entext_employee_id_1f4e7348` (`employee_id`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `hrm_entext`
--

INSERT INTO `hrm_entext` (`exid`, `enter`, `exit`, `absent`, `employee_id`, `enter_time`, `exit_time`, `late_accept`) VALUES
(24, '2026-02-01', '2026-02-01', 0, 5, '09:00:00.000000', '20:00:00.000000', 0),
(23, '2026-02-01', '2026-02-01', 0, 4, '09:00:00.000000', '20:00:00.000000', 0),
(22, '2026-02-01', '2026-02-01', 0, 7, '09:33:00.000000', '18:00:00.000000', 0),
(21, '2026-02-01', '2026-02-01', 0, 6, '09:15:00.000000', '18:00:00.000000', 0),
(25, '2026-02-01', '2026-02-01', 0, 9, '09:30:00.000000', '18:00:00.000000', 0),
(26, '2026-02-01', '2026-02-01', 0, 8, '09:45:00.000000', '18:00:00.000000', 0),
(27, '2026-02-01', '2026-02-01', 0, 11, '10:30:00.000000', '18:00:00.000000', 0),
(28, '2026-02-01', '2026-02-01', 0, 3, '12:07:00.000000', '20:00:00.000000', 0),
(29, '2026-02-01', '2026-02-01', 0, 2, '12:59:00.000000', '20:00:00.000000', 0),
(30, '2026-02-02', '2026-02-02', 0, 5, '07:36:00.000000', '19:30:00.000000', 0),
(31, '2026-02-02', '2026-02-02', 0, 6, '09:29:00.000000', '18:33:00.000000', 0),
(32, '2026-02-02', '2026-02-02', 0, 7, '09:35:00.000000', '18:00:00.000000', 0),
(33, '2026-02-02', '2026-02-02', 0, 11, '10:13:00.000000', '18:00:00.000000', 1),
(34, '2026-02-02', '2026-02-02', 0, 8, '10:14:00.000000', '18:00:00.000000', 0),
(35, '2026-02-02', '2026-02-02', 0, 9, '13:46:00.000000', '18:00:00.000000', 0),
(36, '2026-02-02', '2026-02-02', 0, 4, '13:50:00.000000', '20:00:00.000000', 1),
(37, '2026-02-03', '2026-02-03', 0, 5, '09:30:00.000000', '19:30:00.000000', 0),
(38, '2026-02-03', '2026-02-03', 0, 9, '09:25:00.000000', '19:00:00.000000', 0),
(39, '2026-02-03', '2026-02-03', 0, 4, '09:30:00.000000', '19:30:00.000000', 0),
(40, '2026-02-03', '2026-02-03', 0, 7, '09:36:00.000000', '18:00:00.000000', 0),
(41, '2026-02-03', '2026-02-03', 0, 8, '10:12:00.000000', '18:00:00.000000', 0),
(42, '2026-02-03', '2026-02-03', 0, 11, '10:31:00.000000', '18:00:00.000000', 0),
(44, '2026-02-03', '2026-02-03', 0, 10, '16:20:00.000000', '20:00:00.000000', 0),
(45, '2026-02-05', '2026-02-05', 0, 7, '09:15:00.000000', '16:12:00.000000', 0),
(46, '2026-02-05', '2026-02-05', 0, 9, '09:15:00.000000', '16:30:00.000000', 0),
(47, '2026-02-05', '2026-02-05', 0, 4, '09:30:00.000000', '18:12:00.000000', 0),
(48, '2026-02-05', '2026-02-05', 0, 5, '10:00:00.000000', '18:52:00.000000', 1),
(49, '2026-02-05', '2026-02-05', 0, 11, '10:19:00.000000', '16:12:00.000000', 0),
(50, '2026-02-05', '2026-02-05', 0, 6, '10:30:00.000000', '16:12:00.000000', 0),
(51, '2026-02-07', '2026-02-07', 0, 5, '09:20:00.000000', NULL, 0),
(52, '2026-02-07', '2026-02-07', 0, 5, '09:20:00.000000', NULL, 0),
(53, '2026-02-07', '2026-02-07', 0, 8, '09:30:00.000000', NULL, 0),
(54, '2026-02-07', '2026-02-07', 0, 7, '09:40:00.000000', NULL, 0),
(55, '2026-02-07', '2026-02-07', 0, 11, '10:41:00.000000', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `hrm_user`
--

DROP TABLE IF EXISTS `hrm_user`;
CREATE TABLE IF NOT EXISTS `hrm_user` (
  `uid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `hrm_user`
--

INSERT INTO `hrm_user` (`uid`, `name`) VALUES
(1, 'founder'),
(2, 'management'),
(3, 'employee'),
(4, 'worker'),
(5, 'unset'),
(6, 'junior');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
