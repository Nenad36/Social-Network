-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2019 at 12:57 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `social`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_body` text COLLATE utf8_bin NOT NULL,
  `posted_by` varchar(60) COLLATE utf8_bin NOT NULL,
  `posted_to` varchar(60) COLLATE utf8_bin NOT NULL,
  `date_added` datetime NOT NULL,
  `removed` varchar(3) COLLATE utf8_bin NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_body`, `posted_by`, `posted_to`, `date_added`, `removed`, `post_id`) VALUES
(1, 'Komentar', 'nenad_pesic', 'nenad_pesic', '2019-07-12 08:42:45', 'no', 16),
(2, 'Jedan komentar', 'nenad_pesic', 'nenad_pesic', '2019-07-12 09:21:31', 'no', 17),
(3, 'Dobar post', 'nenad_pesic', 'nenad_pesic', '2019-07-12 10:11:48', 'no', 17),
(4, 'Bas je dobro', 'nenad_pesic', 'neko_nekic', '2019-07-12 20:05:20', 'no', 22),
(5, 'bggfhghg', 'viktor_pesic', 'dragulje_dragi', '2019-07-19 11:56:25', 'no', 46),
(6, 'ghgfhhgfh', 'viktor_pesic', 'nenad_pesic', '2019-07-19 15:22:50', 'no', 48),
(7, 'fdsfdsgfdsg', 'nenad_pesic', 'nenad_pesic', '2019-07-19 15:30:37', 'no', 48),
(8, 'GHFHG', 'viktor_pesic', 'nenad_pesic', '2019-07-19 15:38:48', 'no', 32),
(9, 'LP0[', 'nenad_pesic', 'nenad_pesic', '2019-07-19 15:41:08', 'no', 32),
(10, 'PO[O[PO', 'viktor_pesic', 'nenad_pesic', '2019-07-19 15:41:25', 'no', 32),
(11, 'FDFDSFDF', 'viktor_pesic', 'nenad_pesic', '2019-07-19 15:48:05', 'no', 48),
(12, 'fgrg', 'viktor_pesic', 'pink_panter', '2019-07-21 08:27:30', 'no', 34);

-- --------------------------------------------------------

--
-- Table structure for table `friend_requests`
--

CREATE TABLE `friend_requests` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) COLLATE utf8_bin NOT NULL,
  `user_from` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `friend_requests`
--

INSERT INTO `friend_requests` (`id`, `user_to`, `user_from`) VALUES
(3, 'nenad_pesic', 'viktor_pesic');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `username` varchar(60) COLLATE utf8_bin NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `username`, `post_id`) VALUES
(1, 'nenad_pesic', 21),
(2, 'marc_simson', 27),
(4, 'viktor_pesic', 34),
(11, 'viktor_pesic', 78),
(18, 'viktor_pesic', 48),
(19, 'viktor_pesic', 35),
(20, 'viktor_pesic', 32);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) COLLATE utf8_bin NOT NULL,
  `user_from` varchar(50) COLLATE utf8_bin NOT NULL,
  `body` text COLLATE utf8_bin NOT NULL,
  `date` datetime NOT NULL,
  `opened` varchar(3) COLLATE utf8_bin NOT NULL,
  `viewed` varchar(3) COLLATE utf8_bin NOT NULL,
  `deleted` varchar(3) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_to`, `user_from`, `body`, `date`, `opened`, `viewed`, `deleted`) VALUES
(21, 'viktor_pesic', 'andrea_pesic', 'jedna', '2019-07-19 09:42:07', 'yes', 'yes', 'no'),
(22, 'viktor_pesic', 'andrea_pesic', 'dve', '2019-07-19 09:42:13', 'yes', 'yes', 'no'),
(23, 'viktor_pesic', 'andrea_pesic', 'tri', '2019-07-19 09:42:20', 'yes', 'yes', 'no'),
(24, 'viktor_pesic', 'homer_simson', 'poruka', '2019-07-19 09:57:59', 'yes', 'yes', 'no'),
(25, 'viktor_pesic', 'homer_simson', 'jos kedna', '2019-07-19 09:58:06', 'yes', 'yes', 'no'),
(26, 'viktor_pesic', 'homer_simson', 'jos kedna', '2019-07-19 09:59:28', 'yes', 'yes', 'no'),
(27, 'marc_simson', 'marc_simson', 'prva', '2019-07-19 10:04:45', 'yes', 'yes', 'no'),
(28, 'marc_simson', 'marc_simson', 'prva', '2019-07-19 10:04:56', 'yes', 'yes', 'no'),
(29, 'marc_simson', 'marc_simson', 'prva', '2019-07-19 10:05:03', 'yes', 'yes', 'no'),
(30, 'marc_simson', 'marc_simson', 'prva', '2019-07-19 10:05:07', 'yes', 'yes', 'no'),
(31, 'viktor_pesic', 'marc_simson', 'shdgdsgd', '2019-07-19 10:07:44', 'yes', 'yes', 'no'),
(32, 'viktor_pesic', 'marc_simson', 'sdaddad', '2019-07-19 10:07:49', 'yes', 'yes', 'no'),
(33, 'bart_simson', 'bart_simson', 'prav', '2019-07-19 10:13:53', 'yes', 'no', 'no'),
(34, 'bart_simson', 'bart_simson', 'druga', '2019-07-19 10:14:00', 'yes', 'no', 'no'),
(35, 'viktor_pesic', 'pink_panter', 'orva', '2019-07-19 10:18:05', 'yes', 'yes', 'no'),
(36, 'viktor_pesic', 'pink_panter', 'druga', '2019-07-19 10:18:11', 'yes', 'yes', 'no'),
(37, 'viktor_pesic', 'bart_simson', 'poruka', '2019-07-19 10:19:59', 'yes', 'yes', 'no'),
(38, 'viktor_pesic', 'neko_nekic', 'poruka', '2019-07-19 10:21:47', 'yes', 'yes', 'no'),
(39, 'viktor_pesic', 'dragulje_dragi', 'gfgfg', '2019-07-19 10:27:55', 'yes', 'yes', 'no'),
(40, 'viktor_pesic', 'nenad_pesic', 'vvfv', '2019-07-19 10:58:33', 'yes', 'yes', 'no'),
(41, 'viktor_pesic', 'nenad_pesic', 'poruka', '2019-07-19 10:58:50', 'yes', 'yes', 'no'),
(42, 'viktor_pesic', 'miki_maus', 'poruka', '2019-07-19 11:33:39', 'no', 'yes', 'no'),
(43, 'viktor_pesic', 'miki_maus', 'poruka', '2019-07-19 11:35:51', 'no', 'yes', 'no'),
(44, 'viktor_pesic', 'miki_maus', 'poruka', '2019-07-19 11:37:44', 'no', 'yes', 'no'),
(45, 'viktor_pesic', 'miki_maus', 'poruka', '2019-07-19 11:41:58', 'no', 'yes', 'no'),
(46, 'viktor_pesic', 'miki_maus', 'poruka', '2019-07-19 11:42:16', 'no', 'yes', 'no'),
(47, 'viktor_pesic', 'miki_maus', 'poruka', '2019-07-19 11:42:38', 'no', 'yes', 'no'),
(48, 'viktor_pesic', 'miki_maus', 'poruka', '2019-07-19 11:44:04', 'no', 'yes', 'no'),
(49, 'dragulje_dragi', 'viktor_pesic', 'ododod', '2019-07-19 11:55:52', 'no', 'yes', 'no'),
(50, 'nenad_pesic', 'viktor_pesic', 'cvvcvcvcv', '2019-07-19 11:56:43', 'yes', 'yes', 'no'),
(51, 'nenad_pesic', 'viktor_pesic', 'hghgfhghgfh', '2019-07-19 11:57:34', 'yes', 'yes', 'no'),
(52, 'nenad_pesic', 'viktor_pesic', 'fgfdsggdsg', '2019-07-19 11:57:40', 'yes', 'yes', 'no'),
(53, 'pink_panter', 'viktor_pesic', 'hjkhkkh', '2019-07-19 11:57:55', 'yes', 'yes', 'no'),
(54, 'pink_panter', 'viktor_pesic', 'jkjuyji', '2019-07-19 11:58:00', 'yes', 'yes', 'no'),
(55, 'neko_nekic', 'viktor_pesic', 'bnvnvc', '2019-07-19 12:56:29', 'no', 'yes', 'no'),
(56, 'nenad_pesic', 'viktor_pesic', 'vncn', '2019-07-19 12:57:08', 'yes', 'yes', 'no'),
(57, 'nenad_pesic', 'viktor_pesic', 'xcc', '2019-07-19 13:00:15', 'yes', 'yes', 'no'),
(58, 'nenad_pesic', 'viktor_pesic', 'bnnb', '2019-07-19 13:01:36', 'yes', 'yes', 'no'),
(59, 'nenad_pesic', 'viktor_pesic', 'fdgdfgdgg', '2019-07-19 12:06:25', 'yes', 'yes', 'no'),
(60, 'nenad_pesic', 'viktor_pesic', 'fghg', '2019-07-19 13:14:06', 'yes', 'yes', 'no'),
(61, 'nenad_pesic', 'viktor_pesic', 'GHGFHGFH', '2019-07-19 15:46:28', 'yes', 'yes', 'no'),
(62, 'nenad_pesic', 'viktor_pesic', 'GHGFHGFH', '2019-07-19 15:46:48', 'yes', 'yes', 'no'),
(63, 'nenad_pesic', 'viktor_pesic', 'GHGFHGFH', '2019-07-19 15:47:43', 'yes', 'yes', 'no'),
(64, 'pink_panter', 'viktor_pesic', 'ggtgt', '2019-07-21 08:25:02', 'yes', 'yes', 'no'),
(65, 'pink_panter', 'viktor_pesic', 'ggtgt', '2019-07-21 08:25:15', 'yes', 'yes', 'no'),
(66, 'viktor_pesic', 'pink_panter', 'fgdfgd', '2019-07-21 08:26:15', 'yes', 'yes', 'no'),
(67, 'viktor_pesic', 'pink_panter', 'ggggggggggggggggggggggggg', '2019-07-21 08:26:53', 'yes', 'yes', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) COLLATE utf8_bin NOT NULL,
  `user_from` varchar(50) COLLATE utf8_bin NOT NULL,
  `message` text COLLATE utf8_bin NOT NULL,
  `link` varchar(100) COLLATE utf8_bin NOT NULL,
  `datetime` datetime NOT NULL,
  `opened` varchar(3) COLLATE utf8_bin NOT NULL,
  `viewed` varchar(3) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_to`, `user_from`, `message`, `link`, `datetime`, `opened`, `viewed`) VALUES
(1, 'nenad_pesic', 'viktor_pesic', 'Viktor Pesic liked your post', 'post.php?id=48', '2019-07-19 14:50:49', 'yes', 'yes'),
(2, 'neko_nekic', 'viktor_pesic', 'Viktor Pesic liked your post', 'post.php?id=35', '2019-07-19 14:56:25', 'no', 'yes'),
(3, 'nenad_pesic', 'viktor_pesic', 'Viktor Pesic commented on your post', 'post.php?id=48', '2019-07-19 15:22:50', 'yes', 'yes'),
(4, 'nenad_pesic', 'viktor_pesic', 'Viktor Pesic liked your post', 'post.php?id=32', '2019-07-19 15:27:02', 'yes', 'yes'),
(5, 'viktor_pesic', 'nenad_pesic', 'Nenad Pesic commented on a post you commented on', 'post.php?id=48', '2019-07-19 15:30:37', 'yes', 'yes'),
(6, 'nenad_pesic', 'viktor_pesic', 'Viktor Pesic commented on your post', 'post.php?id=32', '2019-07-19 15:38:49', 'yes', 'yes'),
(7, 'viktor_pesic', 'nenad_pesic', 'Nenad Pesic commented on a post you commented on', 'post.php?id=32', '2019-07-19 15:41:08', 'yes', 'yes'),
(8, 'nenad_pesic', 'viktor_pesic', 'Viktor Pesic commented on your post', 'post.php?id=32', '2019-07-19 15:41:25', 'yes', 'yes'),
(9, 'nenad_pesic', 'viktor_pesic', 'Viktor Pesic commented on your post', 'post.php?id=48', '2019-07-19 15:48:05', 'yes', 'yes'),
(10, 'pink_panter', 'viktor_pesic', 'Viktor Pesic commented on your post', 'post.php?id=34', '2019-07-21 08:27:30', 'yes', 'yes'),
(11, 'pink_panter', 'viktor_pesic', 'Viktor Pesic liked your post', 'post.php?id=100', '2019-07-21 08:12:39', 'yes', 'yes'),
(12, 'pink_panter', 'viktor_pesic', 'Viktor Pesic liked your post', 'post.php?id=101', '2019-07-21 08:13:43', 'no', 'yes'),
(13, 'pink_panter', 'viktor_pesic', 'Viktor Pesic liked your post', 'post.php?id=102', '2019-07-21 08:20:55', 'yes', 'yes'),
(14, 'viktor_pesic', 'pink_panter', 'Pink Panter liked your post', 'post.php?id=103', '2019-07-21 08:21:56', 'yes', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `body` text COLLATE utf8_bin NOT NULL,
  `added_by` varchar(60) COLLATE utf8_bin NOT NULL,
  `user_to` varchar(60) COLLATE utf8_bin NOT NULL,
  `date_added` datetime NOT NULL,
  `user_closed` varchar(3) COLLATE utf8_bin NOT NULL,
  `deleted` varchar(3) COLLATE utf8_bin NOT NULL,
  `likes` int(11) NOT NULL,
  `image` varchar(500) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `body`, `added_by`, `user_to`, `date_added`, `user_closed`, `deleted`, `likes`, `image`) VALUES
(25, 'Moj prvi post', 'andrea_pesic', 'none', '2019-07-17 17:21:21', 'no', 'no', 0, ''),
(26, 'Moj prvi post', 'nenad_pesic', 'andrea_pesic', '2019-07-17 17:21:48', 'no', 'yes', 0, ''),
(27, 'Moj prvi post', 'viktor_pesic', 'none', '2019-07-17 17:24:53', 'no', 'yes', 1, ''),
(28, 'fbvbvb', 'nenad_pesic', 'none', '2019-07-17 18:03:44', 'no', 'yes', 0, ''),
(29, 'dfdcfdfdfs', 'nenad_pesic', 'none', '2019-07-17 18:04:13', 'no', 'yes', 0, ''),
(30, 'dfdcfdfdfs', 'nenad_pesic', 'none', '2019-07-17 18:04:20', 'no', 'yes', 0, ''),
(31, 'lljkljl', 'nenad_pesic', 'none', '2019-07-17 18:04:45', 'no', 'yes', 0, ''),
(32, 'cxvdfvfd', 'nenad_pesic', 'none', '2019-07-17 21:24:56', 'no', 'no', 1, ''),
(33, 'post', 'bart_simson', 'none', '2019-07-19 10:14:43', 'no', 'no', 0, ''),
(34, 'post', 'pink_panter', 'none', '2019-07-19 10:18:22', 'no', 'no', 1, ''),
(35, 'kuvar', 'neko_nekic', 'none', '2019-07-19 10:20:56', 'no', 'yes', 1, ''),
(36, 'post', 'dragulje_dragi', 'none', '2019-07-19 10:26:48', 'no', 'yes', 0, ''),
(37, 'post', 'dragulje_dragi', 'none', '2019-07-19 10:27:06', 'no', 'yes', 0, ''),
(38, 'post', 'dragulje_dragi', 'none', '2019-07-19 10:27:12', 'no', 'yes', 0, ''),
(39, 'post', 'dragulje_dragi', 'none', '2019-07-19 10:27:18', 'no', 'yes', 0, ''),
(40, 'fbvfbb', 'dragulje_dragi', 'none', '2019-07-19 10:28:09', 'no', 'yes', 0, ''),
(41, 'fbvfbb', 'dragulje_dragi', 'none', '2019-07-19 10:28:17', 'no', 'yes', 0, ''),
(42, 'fbvfbb', 'dragulje_dragi', 'none', '2019-07-19 10:28:24', 'no', 'yes', 0, ''),
(43, 'fgfgf', 'dragulje_dragi', 'none', '2019-07-19 10:29:18', 'no', 'yes', 0, ''),
(44, 'hghgjh', 'dragulje_dragi', 'none', '2019-07-19 10:29:38', 'no', 'yes', 0, ''),
(45, 'hghgjh', 'dragulje_dragi', 'none', '2019-07-19 10:30:00', 'no', 'yes', 0, ''),
(46, 'hghgjh', 'dragulje_dragi', 'none', '2019-07-19 10:30:07', 'no', 'no', 0, ''),
(47, 'post', 'nenad_pesic', 'none', '2019-07-19 10:46:05', 'no', 'yes', 0, ''),
(48, 'post', 'nenad_pesic', 'none', '2019-07-19 10:46:14', 'no', 'no', 1, ''),
(49, 'post', 'nenad_pesic', 'none', '2019-07-19 10:46:19', 'no', 'yes', 0, ''),
(50, 'post', 'nenad_pesic', 'none', '2019-07-19 10:46:28', 'no', 'yes', 0, ''),
(51, 'pst 2', 'viktor_pesic', 'none', '2019-07-19 12:54:25', 'no', 'yes', 0, ''),
(52, 'posjdjf', 'viktor_pesic', 'none', '2019-07-19 12:54:32', 'no', 'yes', 0, ''),
(53, 'fddsfsffds', 'viktor_pesic', 'none', '2019-07-19 12:54:35', 'no', 'yes', 0, ''),
(54, 'sadffdf', 'viktor_pesic', 'none', '2019-07-19 12:54:40', 'no', 'yes', 0, ''),
(55, 'sadffdf', 'viktor_pesic', 'none', '2019-07-19 12:54:49', 'no', 'yes', 0, ''),
(56, 'sadffdf', 'viktor_pesic', 'none', '2019-07-19 12:54:55', 'no', 'yes', 0, ''),
(57, 'sda', 'asdfsd', 'asdfsdaf', '2019-07-19 12:56:48', 'no', 'no', 0, ''),
(58, 'ghghf', 'viktor_pesic', 'none', '2019-07-19 12:56:48', 'no', 'yes', 0, ''),
(59, 'sda', 'asdfsd', 'asdfsdaf', '2019-07-19 12:56:52', 'no', 'no', 0, ''),
(60, 'gfhgfhghgf', 'viktor_pesic', 'none', '2019-07-19 12:56:52', 'no', 'yes', 0, ''),
(61, 'sda', 'asdfsd', 'asdfsdaf', '2019-07-19 12:57:24', 'no', 'no', 0, ''),
(62, 'gnbnhg', 'viktor_pesic', 'none', '2019-07-19 12:57:24', 'no', 'yes', 0, ''),
(63, 'sda', 'asdfsd', 'asdfsdaf', '2019-07-19 12:58:58', 'no', 'no', 0, ''),
(64, 'oioio', 'viktor_pesic', 'none', '2019-07-19 12:58:58', 'no', 'yes', 0, ''),
(65, 'sda', 'asdfsd', 'asdfsdaf', '2019-07-19 12:59:03', 'no', 'no', 0, ''),
(66, 'oioio', 'viktor_pesic', 'none', '2019-07-19 12:59:03', 'no', 'yes', 0, ''),
(67, 'sda', 'asdfsd', 'asdfsdaf', '2019-07-19 12:59:09', 'no', 'no', 0, ''),
(68, 'iiiiiiiiiiiiiiiiiiii', 'viktor_pesic', 'none', '2019-07-19 12:59:09', 'no', 'yes', 0, ''),
(69, 'sda', 'asdfsd', 'asdfsdaf', '2019-07-19 12:59:14', 'no', 'no', 0, ''),
(70, 'iiiiiiiiiiiiiiiiiiii', 'viktor_pesic', 'none', '2019-07-19 12:59:14', 'no', 'yes', 0, ''),
(71, 'sda', 'asdfsd', 'asdfsdaf', '2019-07-19 12:06:41', 'no', 'no', 0, ''),
(72, 'jmjmhj', 'viktor_pesic', 'none', '2019-07-19 12:06:41', 'no', 'yes', 0, ''),
(73, 'sda', 'asdfsd', 'asdfsdaf', '2019-07-19 12:06:47', 'no', 'no', 0, ''),
(74, 'jmjmhj', 'viktor_pesic', 'none', '2019-07-19 12:06:47', 'no', 'yes', 0, ''),
(75, 'sda', 'asdfsd', 'asdfsdaf', '2019-07-19 12:06:53', 'no', 'no', 0, ''),
(76, 'rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr', 'viktor_pesic', 'none', '2019-07-19 12:06:53', 'no', 'yes', 0, ''),
(77, 'sda', 'asdfsd', 'asdfsdaf', '2019-07-19 12:06:57', 'no', 'no', 0, ''),
(78, 'rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr', 'viktor_pesic', 'none', '2019-07-19 12:06:57', 'no', 'yes', 1, ''),
(79, 'sda', 'asdfsd', 'asdfsdaf', '2019-07-19 12:07:56', 'no', 'no', 0, ''),
(80, 'rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr', 'viktor_pesic', 'none', '2019-07-19 12:07:56', 'no', 'yes', 0, ''),
(81, 'gghhgfh', 'viktor_pesic', 'neko_nekic', '2019-07-19 14:41:52', 'no', 'yes', 0, ''),
(82, 'fgdfgg', 'viktor_pesic', 'nenad_pesic', '2019-07-19 14:47:20', 'no', 'yes', 0, ''),
(83, 'dddddddddd', 'viktor_pesic', 'nenad_pesic', '2019-07-19 14:47:57', 'no', 'yes', 0, ''),
(84, 'njj', 'viktor_pesic', 'nenad_pesic', '2019-07-19 14:50:27', 'no', 'yes', 0, ''),
(85, 'ghfhghf', 'viktor_pesic', 'dragulje_dragi', '2019-07-19 14:52:27', 'no', 'yes', 0, ''),
(86, 'ghghhf', 'viktor_pesic', 'neko_nekic', '2019-07-19 14:56:34', 'no', 'yes', 0, ''),
(87, 'fgdgsgg', 'viktor_pesic', 'nenad_pesic', '2019-07-19 15:00:06', 'no', 'yes', 0, ''),
(88, 'dsfsfdsf', 'viktor_pesic', 'nenad_pesic', '2019-07-19 15:13:12', 'no', 'yes', 0, ''),
(89, 'fgdg', 'viktor_pesic', 'nenad_pesic', '2019-07-19 15:21:19', 'no', 'yes', 0, ''),
(90, 'jajajajajajajajaj', 'viktor_pesic', 'nenad_pesic', '2019-07-19 15:21:41', 'no', 'yes', 0, ''),
(91, 'fdgdfgff', 'viktor_pesic', 'nenad_pesic', '2019-07-19 15:31:07', 'no', 'yes', 0, ''),
(92, 'Post naslovna', 'viktor_pesic', 'none', '2019-07-19 15:33:27', 'no', 'yes', 0, ''),
(93, 'Post naslovna', 'viktor_pesic', 'none', '2019-07-19 15:33:32', 'no', 'no', 0, ''),
(94, 'POST NA ZIDU', 'viktor_pesic', 'nenad_pesic', '2019-07-19 15:34:10', 'no', 'no', 0, ''),
(95, 'CZXCC', 'viktor_pesic', 'nenad_pesic', '2019-07-19 15:44:38', 'no', 'no', 0, ''),
(96, 'HGHG', 'nenad_pesic', 'viktor_pesic', '2019-07-19 15:49:15', 'no', 'no', 0, ''),
(97, 'kljll', 'viktor_pesic', 'pink_panter', '2019-07-21 08:25:14', 'no', 'no', 0, ''),
(98, 'dasdd', 'viktor_pesic', 'pink_panter', '2019-07-21 08:59:57', 'no', 'no', 0, ''),
(99, 'tryty', 'viktor_pesic', 'pink_panter', '2019-07-21 09:02:03', 'no', 'no', 0, ''),
(100, 'fggfg', 'viktor_pesic', 'pink_panter', '2019-07-21 08:12:39', 'no', 'no', 0, ''),
(101, 'hnn', 'viktor_pesic', 'pink_panter', '2019-07-21 08:13:43', 'no', 'no', 0, ''),
(102, 'kk,kk', 'viktor_pesic', 'pink_panter', '2019-07-21 08:20:54', 'no', 'no', 0, ''),
(103, 'hfghhhf', 'pink_panter', 'viktor_pesic', '2019-07-21 08:21:56', 'no', 'no', 0, ''),
(104, '<br><iframe width=''420'' height=''315'' src=''https://www.youtube.com/embed/znTLzRJimeY''></iframe><br>', 'neko_nekic', 'none', '2019-07-22 11:21:59', 'no', 'yes', 0, ''),
(105, '<br><iframe width=''420'' height=''315'' src=''https://www.youtube.com/embed/znTLzRJimeY''></iframe><br>', 'neko_nekic', 'none', '2019-07-22 11:22:23', 'no', 'yes', 0, ''),
(106, '<br><iframe width=''420'' height=''315'' src=''https://www.youtube.com/embed/znTLzRJimeY''></iframe><br>', 'neko_nekic', 'none', '2019-07-22 11:22:28', 'no', 'yes', 0, ''),
(107, '<br><iframe width=''420'' height=''315'' src=''https://www.youtube.com/embed/znTLzRJimeY''></iframe><br>', 'neko_nekic', 'none', '2019-07-22 11:22:49', 'no', 'no', 0, ''),
(108, 'Hello guys! I am looking forward to the superbow!', 'neko_nekic', 'none', '2019-07-22 11:45:25', 'no', 'no', 0, ''),
(109, 'Post sa slikom', 'neko_nekic', 'none', '2019-07-22 12:49:53', 'no', 'yes', 0, 'assets/images/posts/5d3594d13bcd9asphalt-auto-automobile-170811.jpg'),
(110, 'Post sa slikom', 'neko_nekic', 'none', '2019-07-22 12:51:41', 'no', 'yes', 0, 'assets/images/posts/5d35953d5ad26asphalt-auto-automobile-170811.jpg'),
(111, 'hgfhf', 'neko_nekic', 'none', '2019-07-22 12:52:18', 'no', 'yes', 0, 'assets/images/posts/5d359561f35f2asphalt-auto-automobile-170811.jpg'),
(112, 'hgfhf', 'neko_nekic', 'none', '2019-07-22 12:52:38', 'no', 'yes', 0, 'assets/images/posts/5d359576f2ec4asphalt-auto-automobile-170811.jpg'),
(113, 'hgfhf', 'neko_nekic', 'none', '2019-07-22 12:52:55', 'no', 'no', 0, 'assets/images/posts/5d3595872ed44asphalt-auto-automobile-170811.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `trends`
--

CREATE TABLE `trends` (
  `title` varchar(50) COLLATE utf8_bin NOT NULL,
  `hits` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `trends`
--

INSERT INTO `trends` (`title`, `hits`) VALUES
('Hello', 1),
('Guys', 1),
('Looking', 1),
('Forward', 1),
('Superbow', 1),
('Post', 2),
('Sa', 2),
('Slikom', 2),
('Hgfhf', 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) COLLATE utf8_bin NOT NULL,
  `last_name` varchar(50) COLLATE utf8_bin NOT NULL,
  `username` varchar(100) COLLATE utf8_bin NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `password` varchar(255) COLLATE utf8_bin NOT NULL,
  `signup_date` date NOT NULL,
  `profile_pic` varchar(255) COLLATE utf8_bin NOT NULL,
  `num_posts` int(11) NOT NULL,
  `num_likes` int(11) NOT NULL,
  `user_closed` varchar(3) COLLATE utf8_bin NOT NULL,
  `friend_array` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `email`, `password`, `signup_date`, `profile_pic`, `num_posts`, `num_likes`, `user_closed`, `friend_array`) VALUES
(5, 'Nenad', 'Pesic', 'nenad_pesic', 'nenad.pesic32@gmail.com', '26c00dcb40b12c40a85dbaeaab1c4c82', '2019-07-09', 'assets/images/profile_pics/nenad_pesic224f73b759ac170618e550207a36f432n.jpeg', 17, 2, 'no', ',andrea_pesic,neko_nekic,'),
(6, 'Andrea', 'Pesic', 'andrea_pesic', 'andrea@gmail.com', '26c00dcb40b12c40a85dbaeaab1c4c82', '2019-07-11', 'assets/images/profile_pics/andrea_pesic98ddf5e2643d955070813894bbec3df6n.jpeg', 6, 0, 'no', ',viktor_pesic,nenad_pesic,'),
(7, 'Viktor', 'Pesic', 'viktor_pesic', 'viktor@gmail.com', '26c00dcb40b12c40a85dbaeaab1c4c82', '2019-07-11', 'assets/images/profile_pics/viktor_pesicad70aaee44138251064bc7b7bacfe36fn.jpeg', 30, 2, 'no', ',homer_simson,marc_simson,bart_simson,pink_panter,neko_nekic,miki_maus,dragulje_dragi,'),
(8, 'Neko', 'Nekic', 'neko_nekic', 'nekic@gmail.com', '26c00dcb40b12c40a85dbaeaab1c4c82', '2019-07-11', 'assets/images/profile_pics/neko_nekicbabe7bc75d5800156af688b78e2b9e36n.jpeg', 17, 2, 'no', ',viktor_pesic,nenad_pesic,'),
(9, 'Homer', 'Simson', 'homer_simson', 'homer@gmail.com', '26c00dcb40b12c40a85dbaeaab1c4c82', '2019-07-19', 'assets/images/profile_pics/homer_simsond4bbcc962e0d0b60fe814deb8e4ef78cn.jpeg', 0, 0, 'no', ',viktor_pesic,'),
(10, 'Marc', 'Simson', 'marc_simson', 'marc@gmail.com', '26c00dcb40b12c40a85dbaeaab1c4c82', '2019-07-19', 'assets/images/profile_pics/marc_simsonecfe94bb2ec99c18415cb4cebf98a1een.jpeg', 0, 0, 'no', ',viktor_pesic,'),
(11, 'Bart', 'Simson', 'bart_simson', 'bart@gmail.com', '26c00dcb40b12c40a85dbaeaab1c4c82', '2019-07-19', 'assets/images/profile_pics/bart_simson73a38f5d2f393dd3a7d7a2469352eb1en.jpeg', 1, 0, 'no', ',viktor_pesic,'),
(12, 'Pink', 'Panter', 'pink_panter', 'pnikpanter@gmail.com', '26c00dcb40b12c40a85dbaeaab1c4c82', '2019-07-19', 'assets/images/profile_pics/pink_panter903750942ab4262e75ec8bc7af438effn.jpeg', 2, 1, 'no', ',viktor_pesic,'),
(13, 'Dragulje', 'Dragi', 'dragulje_dragi', 'draguljce@gmail.com', '26c00dcb40b12c40a85dbaeaab1c4c82', '2019-07-19', 'assets/images/profile_pics/dragulje_dragi4bd22730d180da4f2b22fd0e3665a9f2n.jpeg', 11, 0, 'no', ',viktor_pesic,'),
(14, 'Miki', 'Maus', 'miki_maus', 'mikimaus@gmail.com', '26c00dcb40b12c40a85dbaeaab1c4c82', '2019-07-19', 'assets/images/profile_pics/miki_maus189f9ba653165ef42b335f7e1927fcd1n.jpeg', 0, 0, 'no', ',viktor_pesic,');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `friend_requests`
--
ALTER TABLE `friend_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `friend_requests`
--
ALTER TABLE `friend_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
