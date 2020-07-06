-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2020 at 01:09 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cricket`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
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
(25, 'Can add team', 7, 'add_team'),
(26, 'Can change team', 7, 'change_team'),
(27, 'Can delete team', 7, 'delete_team'),
(28, 'Can view team', 7, 'view_team'),
(29, 'Can add player', 8, 'add_player'),
(30, 'Can change player', 8, 'change_player'),
(31, 'Can delete player', 8, 'delete_player'),
(32, 'Can view player', 8, 'view_player'),
(33, 'Can add matches', 9, 'add_matches'),
(34, 'Can change matches', 9, 'change_matches'),
(35, 'Can delete matches', 9, 'delete_matches'),
(36, 'Can view matches', 9, 'view_matches'),
(37, 'Can add points', 10, 'add_points'),
(38, 'Can change points', 10, 'change_points'),
(39, 'Can delete points', 10, 'delete_points'),
(40, 'Can view points', 10, 'view_points');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$180000$Yr3x3tcEFjYK$9vFO/6Slq8Tm2sVywtXIvFJ4vM1CTujIAOHfMzDV3ws=', '2020-07-04 20:10:23.368750', 1, 'admin', '', '', 'test@test.com', 1, 1, '2020-07-04 20:09:24.388367');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-07-05 11:28:13.052936', '1', 'Team object (1)', 1, '[{\"added\": {}}]', 7, 1),
(2, '2020-07-05 11:31:12.775116', '2', 'Team object (2)', 1, '[{\"added\": {}}]', 7, 1),
(3, '2020-07-05 11:32:13.307925', '2', 'Team object (2)', 2, '[{\"changed\": {\"fields\": [\"Logo\"]}}]', 7, 1),
(4, '2020-07-05 11:35:28.414995', '3', 'Team object (3)', 1, '[{\"added\": {}}]', 7, 1),
(5, '2020-07-05 11:37:31.668949', '4', 'Team object (4)', 1, '[{\"added\": {}}]', 7, 1),
(6, '2020-07-05 14:30:26.226339', '5', 'Team object (5)', 1, '[{\"added\": {}}]', 7, 1),
(7, '2020-07-05 14:54:58.435697', '6', 'Team object (6)', 1, '[{\"added\": {}}]', 7, 1),
(8, '2020-07-05 14:57:10.942573', '7', 'Team object (7)', 1, '[{\"added\": {}}]', 7, 1),
(9, '2020-07-05 14:58:03.808931', '7', 'Team object (7)', 3, '', 7, 1),
(10, '2020-07-05 14:58:03.822944', '6', 'Team object (6)', 3, '', 7, 1),
(11, '2020-07-05 14:58:03.876926', '5', 'Team object (5)', 3, '', 7, 1),
(12, '2020-07-05 15:26:01.895967', '1', 'Player object (1)', 1, '[{\"added\": {}}]', 8, 1),
(13, '2020-07-05 15:26:57.880714', '2', 'Player object (2)', 1, '[{\"added\": {}}]', 8, 1),
(14, '2020-07-05 15:28:13.325631', '3', 'Player object (3)', 1, '[{\"added\": {}}]', 8, 1),
(15, '2020-07-05 15:29:44.081641', '4', 'Player object (4)', 1, '[{\"added\": {}}]', 8, 1),
(16, '2020-07-05 15:32:08.855769', '4', 'Player object (4)', 2, '[{\"changed\": {\"fields\": [\"FirstName\"]}}]', 8, 1),
(17, '2020-07-05 15:32:25.613774', '3', 'Player object (3)', 2, '[{\"changed\": {\"fields\": [\"FirstName\"]}}]', 8, 1),
(18, '2020-07-05 15:33:34.721785', '5', 'Player object (5)', 1, '[{\"added\": {}}]', 8, 1),
(19, '2020-07-05 15:35:20.347352', '6', 'Player object (6)', 1, '[{\"added\": {}}]', 8, 1),
(20, '2020-07-05 15:36:27.117555', '7', 'Player object (7)', 1, '[{\"added\": {}}]', 8, 1),
(21, '2020-07-05 15:37:56.722441', '8', 'Player object (8)', 1, '[{\"added\": {}}]', 8, 1),
(22, '2020-07-05 15:48:45.638256', '1', 'Matches object (1)', 1, '[{\"added\": {}}]', 9, 1),
(23, '2020-07-05 20:57:08.424477', '8', 'team 5', 1, '[{\"added\": {}}]', 7, 1),
(24, '2020-07-05 21:03:21.082278', '9', 'Team object (9)', 1, '[{\"added\": {}}]', 7, 1),
(25, '2020-07-05 21:03:42.968346', '8', 'Team object (8)', 3, '', 7, 1),
(26, '2020-07-05 21:07:57.070962', '9', 'Player object (9)', 1, '[{\"added\": {}}]', 8, 1),
(27, '2020-07-06 06:16:09.264968', '5', 'Matches object (5)', 3, '', 9, 1),
(28, '2020-07-06 06:16:09.295948', '4', 'Matches object (4)', 3, '', 9, 1),
(29, '2020-07-06 06:16:09.300945', '3', 'Matches object (3)', 3, '', 9, 1),
(30, '2020-07-06 06:16:09.304944', '2', 'Matches object (2)', 3, '', 9, 1),
(31, '2020-07-06 06:16:09.309941', '1', 'Matches object (1)', 3, '', 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(9, 'webApp', 'matches'),
(8, 'webApp', 'player'),
(10, 'webApp', 'points'),
(7, 'webApp', 'team');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-07-04 19:14:21.377713'),
(2, 'auth', '0001_initial', '2020-07-04 19:14:23.357136'),
(3, 'admin', '0001_initial', '2020-07-04 19:14:45.589294'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-07-04 19:14:52.077486'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-07-04 19:14:52.266462'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-07-04 19:14:54.600687'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-07-04 19:14:57.867379'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-07-04 19:14:58.275621'),
(9, 'auth', '0004_alter_user_username_opts', '2020-07-04 19:14:58.385574'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-07-04 19:15:00.633302'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-07-04 19:15:00.750247'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-07-04 19:15:01.031325'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-07-04 19:15:01.321345'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-07-04 19:15:01.767576'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-07-04 19:15:02.399596'),
(16, 'auth', '0011_update_proxy_permissions', '2020-07-04 19:15:02.513543'),
(17, 'sessions', '0001_initial', '2020-07-04 19:15:03.664528'),
(18, 'webApp', '0001_initial', '2020-07-04 19:15:06.559176'),
(19, 'webApp', '0002_matches_player', '2020-07-05 09:53:22.543111'),
(20, 'webApp', '0003_auto_20200705_1924', '2020-07-05 13:55:05.080476'),
(21, 'webApp', '0004_auto_20200705_1937', '2020-07-05 14:07:23.141559'),
(22, 'webApp', '0005_auto_20200705_1957', '2020-07-05 14:27:58.034422'),
(23, 'webApp', '0002_auto_20200705_2023', '2020-07-05 14:53:11.411969'),
(24, 'webApp', '0003_remove_player_scores', '2020-07-05 15:23:57.637145'),
(25, 'webApp', '0004_auto_20200706_0110', '2020-07-05 19:40:44.241741'),
(26, 'webApp', '0005_auto_20200706_0111', '2020-07-05 19:41:46.628028'),
(27, 'webApp', '0002_auto_20200706_0237', '2020-07-05 21:07:44.447329'),
(28, 'webApp', '0003_auto_20200707_0402', '2020-07-06 22:33:08.461329'),
(29, 'webApp', '0004_auto_20200707_0416', '2020-07-06 22:46:23.226860');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('suh01pr5qkx3owjsmy70qak1t5i49s1o', 'YTgyNmVlZjMwYTVhMGUyZjI0N2YwOWI2OGE1YjBkMmNiYjkzNDI4ZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlYjRhMjlmMTI0M2VmODA0ODkyM2QwODNlZmE5ZDc0NTEyODdkMGU2In0=', '2020-07-18 20:10:23.378744');

-- --------------------------------------------------------

--
-- Table structure for table `webapp_matches`
--

CREATE TABLE `webapp_matches` (
  `id` int(11) NOT NULL,
  `winner_id` int(11) NOT NULL,
  `points` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `webapp_matches`
--

INSERT INTO `webapp_matches` (`id`, `winner_id`, `points`) VALUES
(6, 1, 0),
(7, 3, 0),
(8, 4, 0),
(9, 2, 0),
(10, 4, 0),
(11, 2, 0),
(12, 4, 0),
(13, 1, 0),
(14, 4, 0),
(15, 1, 0),
(16, 1, 0),
(17, 1, 0),
(18, 3, 0),
(19, 3, 0),
(20, 9, 0),
(21, 2, 0),
(22, 1, 0),
(23, 1, 0),
(24, 4, 0),
(25, 3, 0),
(26, 1, 0),
(27, 4, 0),
(28, 2, 0),
(29, 2, 0),
(30, 9, 0),
(31, 9, 0),
(32, 1, 0),
(33, 2, 0),
(34, 1, 0),
(35, 9, 0),
(36, 2, 0),
(37, 1, 0),
(38, 4, 0),
(39, 1, 0),
(40, 9, 0),
(41, 2, 0),
(42, 3, 0),
(43, 4, 0),
(44, 4, 0),
(45, 9, 0),
(46, 1, 0),
(47, 4, 0),
(48, 2, 0),
(49, 1, 0),
(50, 1, 0),
(51, 2, 0),
(52, 2, 0),
(53, 3, 0),
(54, 9, 0),
(55, 3, 0),
(56, 9, 0),
(57, 2, 0),
(58, 4, 0),
(59, 9, 0),
(60, 3, 0),
(61, 2, 0),
(62, 4, 0),
(63, 1, 0),
(64, 9, 0),
(65, 1, 0),
(66, 2, 0),
(67, 9, 0),
(68, 4, 0),
(69, 1, 0),
(70, 9, 0),
(71, 9, 0),
(72, 1, 0),
(73, 3, 0),
(74, 2, 0),
(75, 9, 0),
(76, 9, 10),
(77, 3, 10),
(78, 3, 10),
(79, 3, 5),
(80, 2, 9),
(81, 9, 10),
(82, 1, 5),
(83, 3, 10),
(84, 4, 8),
(85, 1, 9),
(86, 1, 6),
(87, 4, 8),
(88, 9, 9);

-- --------------------------------------------------------

--
-- Table structure for table `webapp_matches_team`
--

CREATE TABLE `webapp_matches_team` (
  `id` int(11) NOT NULL,
  `matches_id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `webapp_matches_team`
--

INSERT INTO `webapp_matches_team` (`id`, `matches_id`, `team_id`) VALUES
(5, 6, 1),
(6, 6, 9),
(8, 7, 3),
(7, 7, 9),
(9, 8, 1),
(10, 8, 4),
(11, 9, 2),
(12, 9, 3),
(14, 10, 4),
(13, 10, 9),
(15, 11, 1),
(16, 11, 2),
(17, 12, 2),
(18, 12, 4),
(19, 13, 1),
(20, 13, 4),
(21, 14, 1),
(22, 14, 4),
(23, 15, 1),
(24, 15, 3),
(25, 16, 1),
(26, 16, 4),
(27, 17, 1),
(28, 17, 9),
(30, 18, 3),
(29, 18, 9),
(31, 19, 3),
(32, 19, 4),
(34, 20, 2),
(33, 20, 9),
(36, 21, 2),
(35, 21, 9),
(37, 22, 1),
(38, 22, 4),
(39, 23, 1),
(40, 23, 3),
(41, 24, 2),
(42, 24, 4),
(43, 25, 1),
(44, 25, 3),
(46, 26, 1),
(45, 26, 9),
(47, 27, 1),
(48, 27, 4),
(49, 28, 2),
(50, 28, 3),
(52, 29, 2),
(51, 29, 9),
(54, 30, 3),
(53, 30, 9),
(56, 31, 2),
(55, 31, 9),
(57, 32, 1),
(58, 32, 2),
(59, 33, 2),
(60, 33, 4),
(61, 34, 1),
(62, 34, 4),
(64, 35, 4),
(63, 35, 9),
(66, 36, 2),
(65, 36, 9),
(67, 37, 1),
(68, 37, 2),
(69, 38, 3),
(70, 38, 4),
(72, 39, 1),
(71, 39, 9),
(74, 40, 2),
(73, 40, 9),
(75, 41, 1),
(76, 41, 2),
(77, 42, 1),
(78, 42, 3),
(79, 43, 1),
(80, 43, 4),
(81, 44, 2),
(82, 44, 4),
(84, 45, 3),
(83, 45, 9),
(85, 46, 1),
(86, 46, 9),
(87, 47, 1),
(88, 47, 4),
(89, 48, 2),
(90, 48, 3),
(91, 49, 1),
(92, 49, 3),
(93, 50, 1),
(94, 50, 2),
(96, 51, 2),
(95, 51, 9),
(97, 52, 2),
(98, 52, 3),
(99, 53, 3),
(100, 53, 4),
(102, 54, 2),
(101, 54, 9),
(104, 55, 3),
(103, 55, 9),
(106, 56, 3),
(105, 56, 9),
(107, 57, 2),
(108, 57, 4),
(110, 58, 4),
(109, 58, 9),
(111, 59, 1),
(112, 59, 9),
(113, 60, 2),
(114, 60, 3),
(115, 61, 2),
(116, 61, 3),
(117, 62, 2),
(118, 62, 4),
(119, 63, 1),
(120, 63, 4),
(122, 64, 2),
(121, 64, 9),
(123, 65, 1),
(124, 65, 4),
(126, 66, 2),
(125, 66, 9),
(128, 67, 2),
(127, 67, 9),
(129, 68, 2),
(130, 68, 4),
(131, 69, 1),
(132, 69, 3),
(133, 70, 1),
(134, 70, 9),
(136, 71, 2),
(135, 71, 9),
(137, 72, 1),
(138, 72, 4),
(139, 73, 3),
(140, 73, 4),
(142, 74, 2),
(141, 74, 9),
(144, 75, 1),
(143, 75, 9),
(146, 76, 3),
(145, 76, 9),
(147, 77, 3),
(148, 77, 4),
(150, 78, 3),
(149, 78, 9),
(151, 79, 2),
(152, 79, 3),
(153, 80, 2),
(154, 80, 4),
(156, 81, 2),
(155, 81, 9),
(157, 82, 1),
(158, 82, 2),
(159, 83, 2),
(160, 83, 3),
(161, 84, 1),
(162, 84, 4),
(163, 85, 1),
(164, 85, 4),
(165, 86, 1),
(166, 86, 2),
(168, 87, 4),
(167, 87, 9),
(170, 88, 2),
(169, 88, 9);

-- --------------------------------------------------------

--
-- Table structure for table `webapp_player`
--

CREATE TABLE `webapp_player` (
  `id` int(11) NOT NULL,
  `firstName` varchar(30) NOT NULL,
  `lastName` varchar(30) NOT NULL,
  `image` varchar(30) NOT NULL,
  `jerseyNumber` int(11) NOT NULL,
  `Country` varchar(30) NOT NULL,
  `matches` int(11) NOT NULL,
  `run` int(11) NOT NULL,
  `highest` int(11) NOT NULL,
  `fifties` int(11) NOT NULL,
  `hundreds` int(11) NOT NULL,
  `team_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `webapp_player`
--

INSERT INTO `webapp_player` (`id`, `firstName`, `lastName`, `image`, `jerseyNumber`, `Country`, `matches`, `run`, `highest`, `fifties`, `hundreds`, `team_id`) VALUES
(1, 'Sydeny Fighters', 'Player 1', 'logos/face1.png', 22, 'Sydeny', 129, 5110, 99, 3, 10, 1),
(2, 'Sydeny Fighters', 'Player 2', 'logos/face2.png', 123, 'Sydeny', 883, 7667, 150, 30, 10, 1),
(3, 'Barbados javlines', 'Player 1', 'logos/face1_8dpx5Fg.png', 88, 'Sydeny', 220, 2978, 109, 20, 20, 2),
(4, 'Barbados javlines', 'Player 2', 'logos/face2_H1btN5m.png', 38, 'Sydeny', 100, 4000, 108, 8, 5, 2),
(5, 'Sideny champions', 'Player 1', 'logos/face1_NN5pUSV.png', 77, 'Sydeny', 550, 6086, 190, 14, 16, 3),
(6, 'Sideny champions', 'Player 2', 'logos/face2_C6Nabe3.png', 97, 'Sydeny', 0, 2200, 210, 5, 7, 3),
(7, 'Ruhana express', 'Player 1', 'logos/face1_K3F4Mim.png', 10, 'Sydeny', 290, 3890, 160, 3, 10, 4),
(8, 'Ruhana express', 'Player 2', 'logos/face2_w1ZsU60.png', 82, 'Sydeny', 900, 157862, 270, 30, 50, 4),
(9, 'sadsad', 'ssadsa', 'player/bcb4cf1f784_1ysrizB.png', 13, 'sdfds', 21, 32, 23, 32, 3, 9);

-- --------------------------------------------------------

--
-- Table structure for table `webapp_team`
--

CREATE TABLE `webapp_team` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `logo` varchar(30) NOT NULL,
  `clubState` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `webapp_team`
--

INSERT INTO `webapp_team` (`id`, `name`, `logo`, `clubState`) VALUES
(1, 'Sydeny Fighters', 'logos/logo1.jpg', 'State club 1'),
(2, 'Barbados javlines', 'logos/logo2.jpg', 'State club 2'),
(3, 'Sideny champions', 'logos/logo3.jpg', 'State club 3'),
(4, 'Ruhana express', 'logos/logo4.jpg', 'State club 4'),
(9, 'team 6', 'logos/af54bc1b13b1_YMIbZFT.jpg', 'sasd');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `webapp_matches`
--
ALTER TABLE `webapp_matches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `webApp_matches_winner_id_07a6d095_fk_webApp_team_id` (`winner_id`);

--
-- Indexes for table `webapp_matches_team`
--
ALTER TABLE `webapp_matches_team`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `webApp_matches_team_matches_id_team_id_c9373474_uniq` (`matches_id`,`team_id`),
  ADD KEY `webApp_matches_team_team_id_29b3a149_fk_webApp_team_id` (`team_id`);

--
-- Indexes for table `webapp_player`
--
ALTER TABLE `webapp_player`
  ADD PRIMARY KEY (`id`),
  ADD KEY `webApp_player_team_id_270c7f49_fk_webApp_team_id` (`team_id`);

--
-- Indexes for table `webapp_team`
--
ALTER TABLE `webapp_team`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `webapp_matches`
--
ALTER TABLE `webapp_matches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `webapp_matches_team`
--
ALTER TABLE `webapp_matches_team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT for table `webapp_player`
--
ALTER TABLE `webapp_player`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `webapp_team`
--
ALTER TABLE `webapp_team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `webapp_matches`
--
ALTER TABLE `webapp_matches`
  ADD CONSTRAINT `webApp_matches_winner_id_07a6d095_fk_webApp_team_id` FOREIGN KEY (`winner_id`) REFERENCES `webapp_team` (`id`);

--
-- Constraints for table `webapp_matches_team`
--
ALTER TABLE `webapp_matches_team`
  ADD CONSTRAINT `webApp_matches_team_matches_id_9ba19ac3_fk_webApp_matches_id` FOREIGN KEY (`matches_id`) REFERENCES `webapp_matches` (`id`),
  ADD CONSTRAINT `webApp_matches_team_team_id_29b3a149_fk_webApp_team_id` FOREIGN KEY (`team_id`) REFERENCES `webapp_team` (`id`);

--
-- Constraints for table `webapp_player`
--
ALTER TABLE `webapp_player`
  ADD CONSTRAINT `webApp_player_team_id_270c7f49_fk_webApp_team_id` FOREIGN KEY (`team_id`) REFERENCES `webapp_team` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
