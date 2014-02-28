-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 28, 2014 at 03:28 PM
-- Server version: 5.5.35
-- PHP Version: 5.3.10-1ubuntu3.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE IF NOT EXISTS `chat` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from` varchar(255) NOT NULL DEFAULT '',
  `to` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `sent` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `recd` int(10) unsigned NOT NULL DEFAULT '0',
  `email` varchar(50) NOT NULL,
  `userid_from` int(50) NOT NULL,
  `userid_to` varchar(11) NOT NULL,
  `group_id` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`id`, `from`, `to`, `message`, `sent`, `recd`, `email`, `userid_from`, `userid_to`, `group_id`) VALUES
(1, 'suraj', 'nilu', 'hi', '2014-02-27 12:44:06', 1, '', 3, '3', ''),
(2, 'nilu', 'suraj', 'hi suraj', '2014-02-27 12:44:53', 1, '', 1, '3', ''),
(3, 'suraj', 'nilu', 'hi', '2014-02-27 13:04:16', 1, '', 3, '1', ''),
(4, 'suraj', 'nilu', 'hello', '2014-02-27 13:05:14', 1, '', 3, '1', ''),
(5, 'suraj', 'nilu', 'ru thr?', '2014-02-27 13:05:49', 1, '', 3, '1', ''),
(6, 'nilu', 'suraj', 'hi', '2014-02-27 13:05:55', 1, '', 1, '1', ''),
(7, 'suraj', 'nilu', 'get?', '2014-02-27 13:06:11', 1, '', 3, '1', ''),
(8, 'nilu', 'suraj', 'not', '2014-02-27 13:06:15', 1, '', 1, '1', ''),
(9, 'nilu', 'suraj', 'thr?', '2014-02-27 13:06:43', 1, '', 1, '1', ''),
(10, 'suraj', 'nilu', 'hhh', '2014-02-27 13:07:32', 1, '', 3, '1', ''),
(11, 'nilu', 'suraj', 'jospa', '2014-02-27 13:07:40', 1, '', 1, '1', ''),
(12, 'nilu', 'suraj', 'nld', '2014-02-27 13:07:50', 1, '', 1, '3', ''),
(13, 'suraj', 'nilu', 'olvp;ad', '2014-02-27 13:07:57', 1, '', 3, '1', ''),
(14, 'nilu', 'suraj', 'pandp', '2014-02-27 13:08:03', 1, '', 1, '3', ''),
(15, 'suraj', 'nilu', 'xojvlndz', '2014-02-27 13:08:27', 1, '', 3, '1', ''),
(16, 'suraj', 'nilu', 'jjjojlz', '2014-02-27 13:08:31', 1, '', 3, '1', ''),
(17, 'nilu', 'suraj', 'bobjlabs', '2014-02-27 13:08:39', 1, '', 1, '3', ''),
(18, 'suraj', 'nilu', 'spfa', '2014-02-27 13:08:43', 1, '', 3, '1', ''),
(19, 'ankita', 'nilu', 'hhhhh', '2014-02-27 13:12:07', 1, '', 2, '1', '');

-- --------------------------------------------------------

--
-- Table structure for table `frei_banned_users`
--

CREATE TABLE IF NOT EXISTS `frei_banned_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `frei_chat`
--

CREATE TABLE IF NOT EXISTS `frei_chat` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from` int(11) NOT NULL,
  `from_name` varchar(30) NOT NULL,
  `to` int(11) NOT NULL,
  `to_name` varchar(30) NOT NULL,
  `message` text NOT NULL,
  `sent` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `recd` int(10) unsigned NOT NULL DEFAULT '0',
  `time` double(15,4) NOT NULL,
  `GMT_time` bigint(20) NOT NULL,
  `message_type` int(11) NOT NULL DEFAULT '0',
  `room_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `frei_chat`
--

INSERT INTO `frei_chat` (`id`, `from`, `from_name`, `to`, `to_name`, `message`, `sent`, `recd`, `time`, `GMT_time`, `message_type`, `room_id`) VALUES
(1, 2, 'ankita', 1, 'nilu', 'hello nilu r u there?', '2014-02-22 10:28:25', 1, 13930649050.3475, 1393045105337, 0, -1),
(2, 2, 'ankita', 1, 'nilu', 'hi ankita', '2014-02-22 10:43:49', 1, 13930658290.7099, 1393046029697, 0, -1),
(3, 2, 'ankita', 1, 'nilu', 'from nilu', '2014-02-22 10:44:06', 1, 13930658460.5195, 1393046046506, 0, -1),
(4, 1, 'nilu', 2, 'ankita', 'hi ankita', '2014-02-22 10:48:30', 1, 13930661100.1148, 1393046310102, 0, -1),
(5, 2, 'ankita', 1, 'nilu', 'hello nilu', '2014-02-22 10:48:48', 1, 13930661280.1613, 1393046328145, 0, -1),
(6, 1, 'nilu', 2, 'ankita', 'finaly its workng', '2014-02-22 10:49:03', 1, 13930661430.6603, 1393046343646, 0, -1),
(7, 2, 'ankita', 1, 'nilu', 'hmm i think so', '2014-02-22 10:49:16', 1, 13930661560.6237, 1393046356610, 0, -1),
(8, 1, 'nilu', 2, 'ankita', 'any ways hows going', '2014-02-22 10:49:29', 1, 13930661690.6826, 1393046369668, 0, -1),
(9, 2, 'ankita', 1, 'nilu', 'hmm not ok', '2014-02-22 10:49:36', 1, 13930661760.6779, 1393046376664, 0, -1),
(10, 2, 'ankita', 1, 'nilu', 'but now thnk will be fine', '2014-02-22 10:49:45', 1, 13930661850.6717, 1393046385656, 0, -1),
(11, 1, 'nilu', 2, 'ankita', 'ok gud anything else&#44;&#44;', '2014-02-22 10:50:00', 1, 13930662000.7222, 1393046400711, 0, -1),
(12, 2, 'ankita', 1, 'nilu', 'not et dear', '2014-02-22 10:50:08', 1, 13930662080.9713, 1393046408958, 0, -1),
(13, 1, 'nilu', 2, 'ankita', 'getting?', '2014-02-22 10:51:19', 1, 13930662790.7130, 1393046479704, 0, -1),
(14, 1, 'nilu', 2, 'ankita', 'hi r u there?', '2014-02-22 11:14:16', 1, 13930676560.5665, 1393047856550, 0, -1),
(15, 2, 'ankita', 1, 'nilu', 'yes', '2014-02-22 11:14:22', 1, 13930676620.9414, 1393047862933, 0, -1);

-- --------------------------------------------------------

--
-- Table structure for table `frei_config`
--

CREATE TABLE IF NOT EXISTS `frei_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(30) DEFAULT 'NULL',
  `cat` varchar(20) DEFAULT 'NULL',
  `subcat` varchar(20) DEFAULT 'NULL',
  `val` varchar(500) DEFAULT 'NULL',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=67 ;

--
-- Dumping data for table `frei_config`
--

INSERT INTO `frei_config` (`id`, `key`, `cat`, `subcat`, `val`) VALUES
(1, 'PATH', 'NULL', 'NULL', 'freichat/'),
(2, 'show_name', 'NULL', 'NULL', 'guest'),
(3, 'displayname', 'NULL', 'NULL', 'username'),
(4, 'chatspeed', 'NULL', 'NULL', '5000'),
(5, 'fxval', 'NULL', 'NULL', 'true'),
(6, 'draggable', 'NULL', 'NULL', 'enable'),
(7, 'conflict', 'NULL', 'NULL', ''),
(8, 'msgSendSpeed', 'NULL', 'NULL', '1000'),
(9, 'show_avatar', 'NULL', 'NULL', 'block'),
(10, 'debug', 'NULL', 'NULL', 'false'),
(11, 'freichat_theme', 'NULL', 'NULL', 'basic'),
(12, 'lang', 'NULL', 'NULL', 'english'),
(13, 'load', 'NULL', 'NULL', 'show'),
(14, 'time', 'NULL', 'NULL', '7'),
(15, 'JSdebug', 'NULL', 'NULL', 'false'),
(16, 'busy_timeOut', 'NULL', 'NULL', '500'),
(17, 'offline_timeOut', 'NULL', 'NULL', '1000'),
(18, 'cache', 'NULL', 'NULL', 'enabled'),
(19, 'GZIP_handler', 'NULL', 'NULL', 'ON'),
(20, 'plugins', 'file_sender', 'show', 'true'),
(21, 'plugins', 'file_sender', 'file_size', '2000'),
(22, 'plugins', 'file_sender', 'expiry', '300'),
(23, 'plugins', 'file_sender', 'valid_exts', 'jpeg,jpg,png,gif,zip'),
(24, 'plugins', 'send_conv', 'show', 'true'),
(25, 'plugins', 'send_conv', 'mailtype', 'smtp'),
(26, 'plugins', 'send_conv', 'smtp_server', 'smtp.gmail.com'),
(27, 'plugins', 'send_conv', 'smtp_port', '465'),
(28, 'plugins', 'send_conv', 'smtp_protocol', 'ssl'),
(29, 'plugins', 'send_conv', 'from_address', 'you@domain.com'),
(30, 'plugins', 'send_conv', 'from_name', 'FreiChat'),
(31, 'playsound', 'NULL', 'NULL', 'true'),
(32, 'ACL', 'filesend', 'user', 'allow'),
(33, 'ACL', 'filesend', 'guest', 'noallow'),
(34, 'ACL', 'chatroom', 'user', 'allow'),
(35, 'ACL', 'chatroom', 'guest', 'allow'),
(36, 'ACL', 'mail', 'user', 'allow'),
(37, 'ACL', 'mail', 'guest', 'allow'),
(38, 'ACL', 'save', 'user', 'allow'),
(39, 'ACL', 'save', 'guest', 'allow'),
(40, 'ACL', 'smiley', 'user', 'allow'),
(41, 'ACL', 'smiley', 'guest', 'allow'),
(42, 'polling', 'NULL', 'NULL', 'disabled'),
(43, 'polling_time', 'NULL', 'NULL', '30'),
(44, 'link_profile', 'NULL', 'NULL', 'disabled'),
(46, 'sef_link_profile', 'NULL', 'NULL', 'disabled'),
(47, 'plugins', 'chatroom', 'location', 'bottom'),
(48, 'plugins', 'chatroom', 'autoclose', 'true'),
(49, 'content_height', 'NULL', 'NULL', '200px'),
(50, 'chatbox_status', 'NULL', 'NULL', 'false'),
(51, 'BOOT', 'NULL', 'NULL', 'yes'),
(52, 'exit_for_guests', 'NULL', 'NULL', 'no'),
(53, 'plugins', 'chatroom', 'offset', '50px'),
(54, 'plugins', 'chatroom', 'label_offset', '0.8%'),
(55, 'addedoptions_visibility', 'NULL', 'NULL', 'HIDDEN'),
(56, 'ug_ids', 'NULL', 'NULL', ''),
(57, 'ACL', 'chat', 'user', 'allow'),
(58, 'ACL', 'chat', 'guest', 'allow'),
(59, 'plugins', 'chatroom', 'override_positions', 'yes'),
(60, 'ACL', 'video', 'user', 'allow'),
(61, 'ACL', 'video', 'guest', 'allow'),
(62, 'ACL', 'chatroom_crt', 'user', 'allow'),
(63, 'ACL', 'chatroom_crt', 'guest', 'noallow'),
(64, 'plugins', 'chatroom', 'chatroom_expiry', '3600'),
(65, 'chat_time_shown_always', 'NULL', 'NULL', 'no'),
(66, 'allow_guest_name_change', 'NULL', 'NULL', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `frei_rooms`
--

CREATE TABLE IF NOT EXISTS `frei_rooms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `room_author` varchar(100) NOT NULL,
  `room_name` varchar(200) NOT NULL,
  `room_type` tinyint(4) NOT NULL,
  `room_password` varchar(100) NOT NULL,
  `room_created` int(11) NOT NULL,
  `room_last_active` int(11) NOT NULL,
  `room_order` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `room_name` (`room_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `frei_rooms`
--

INSERT INTO `frei_rooms` (`id`, `room_author`, `room_name`, `room_type`, `room_password`, `room_created`, `room_last_active`, `room_order`) VALUES
(1, 'admin', 'Fun Talk', 0, '', 1373557250, 1393050110, 1),
(2, 'admin', 'Crazy chat', 0, '', 1373557260, 1373557260, 5),
(3, 'admin', 'Think out loud', 0, '', 1373557872, 1393060449, 2),
(4, 'admin', 'Talk to me ', 0, '', 1373558017, 1373558017, 3),
(5, 'admin', 'Talk innovative', 0, '', 1373558039, 1373799404, 4);

-- --------------------------------------------------------

--
-- Table structure for table `frei_session`
--

CREATE TABLE IF NOT EXISTS `frei_session` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `time` int(100) NOT NULL,
  `session_id` varchar(100) NOT NULL,
  `permanent_id` int(100) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `status_mesg` varchar(100) NOT NULL,
  `guest` tinyint(3) NOT NULL,
  `in_room` int(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `permanent_id` (`permanent_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `frei_session`
--

INSERT INTO `frei_session` (`id`, `username`, `time`, `session_id`, `permanent_id`, `status`, `status_mesg`, `guest`, `in_room`) VALUES
(12, 'nilu', 1393136390, '1', 1393358256, 1, 'I am available', 0, -1),
(15, 'nilu', 1393136873, '1', 1393450676, 1, 'I am available', 0, -1),
(14, 'ankita', 1393136699, '2', 1393382675, 1, 'I am available', 0, -1),
(13, 'ankita', 1393136443, '2', 1393471005, 1, 'I am available', 0, -1);

-- --------------------------------------------------------

--
-- Table structure for table `frei_smileys`
--

CREATE TABLE IF NOT EXISTS `frei_smileys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `symbol` varchar(10) NOT NULL,
  `image_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `frei_smileys`
--

INSERT INTO `frei_smileys` (`id`, `symbol`, `image_name`) VALUES
(1, ':S', 'worried55231.gif'),
(2, '(wasntme)', 'itwasntme55198.gif'),
(3, 'x(', 'angry55174.gif'),
(4, '(doh)', 'doh55146.gif'),
(5, '|-()', 'yawn55117.gif'),
(6, ']:)', 'evilgrin55088.gif'),
(7, '|(', 'dull55062.gif'),
(8, '|-)', 'sleepy55036.gif'),
(9, '(blush)', 'blush54981.gif'),
(10, ':P', 'tongueout54953.gif'),
(11, '(:|', 'sweat54888.gif'),
(12, ';(', 'crying54854.gif'),
(13, ':)', 'smile54593.gif'),
(14, ':(', 'sad54749.gif'),
(15, ':D', 'bigsmile54781.gif'),
(16, '8)', 'cool54801.gif'),
(17, ':o', 'wink54827.gif'),
(18, '(mm)', 'mmm55255.gif'),
(19, ':x', 'lipssealed55304.gif');

-- --------------------------------------------------------

--
-- Table structure for table `frei_video_session`
--

CREATE TABLE IF NOT EXISTS `frei_video_session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) DEFAULT NULL COMMENT 'unique room id',
  `from_id` int(11) NOT NULL,
  `msg_type` varchar(10) NOT NULL,
  `msg_label` int(2) NOT NULL,
  `msg_data` varchar(3000) NOT NULL,
  `msg_time` decimal(15,4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `frei_webrtc`
--

CREATE TABLE IF NOT EXISTS `frei_webrtc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `frm_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `participants_id` int(11) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `grop_chat`
--

CREATE TABLE IF NOT EXISTS `grop_chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from` varchar(20) NOT NULL,
  `to` varchar(30) NOT NULL,
  `msg` text NOT NULL,
  `sent` date NOT NULL,
  `recd` int(11) NOT NULL,
  `uid_frm` int(11) NOT NULL,
  `uid_to` int(11) NOT NULL,
  `grp_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `grop_chat`
--

INSERT INTO `grop_chat` (`id`, `from`, `to`, `msg`, `sent`, `recd`, `uid_frm`, `uid_to`, `grp_id`) VALUES
(1, 'nilu', 'suraj', 'hi', '2014-02-27', 1, 1, 3, 32),
(2, 'nilu', 'ankita', 'hi', '2014-02-27', 1, 1, 2, 32),
(3, 'nilu', 'suraj', 'hello', '2014-02-27', 1, 1, 3, 32),
(4, 'nilu', 'ankita', 'hello', '2014-02-27', 1, 1, 2, 32),
(5, 'nilu', 'suraj', 'get my message?', '2014-02-27', 1, 1, 3, 32),
(6, 'nilu', 'ankita', 'get my message?', '2014-02-27', 1, 1, 2, 32),
(7, 'nilu', 'suraj', 'hey suraj thre', '2014-02-27', 1, 1, 3, 32),
(8, 'nilu', 'ankita', 'hey suraj thre', '2014-02-27', 1, 1, 2, 32),
(9, 'nilu', 'suraj', '?', '2014-02-27', 1, 1, 3, 32),
(10, 'nilu', 'ankita', '?', '2014-02-27', 1, 1, 2, 32),
(11, 'nilu', 'suraj', 'hey suajjj ?', '2014-02-27', 1, 1, 3, 32),
(12, 'nilu', 'ankita', 'hey suajjj ?', '2014-02-27', 1, 1, 2, 32),
(13, 'suraj', 'nilu', 'hi user ther?', '2014-02-28', 1, 3, 1, 12),
(14, 'suraj', 'ankita', 'hi user ther?', '2014-02-28', 1, 3, 2, 12),
(15, 'suraj', 'nilu', 'hi helo', '2014-02-28', 1, 3, 1, 12),
(16, 'suraj', 'ankita', 'hi helo', '2014-02-28', 1, 3, 2, 12),
(17, 'suraj', 'nilu', 'hey thr?', '2014-02-28', 1, 3, 1, 12),
(18, 'suraj', 'ankita', 'hey thr?', '2014-02-28', 1, 3, 2, 12);

-- --------------------------------------------------------

--
-- Table structure for table `group_community_chat`
--

CREATE TABLE IF NOT EXISTS `group_community_chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_user` varchar(50) NOT NULL,
  `uid` int(11) NOT NULL,
  `msg` text NOT NULL,
  `recd` tinyint(4) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=226 ;

--
-- Dumping data for table `group_community_chat`
--

INSERT INTO `group_community_chat` (`id`, `from_user`, `uid`, `msg`, `recd`, `date`) VALUES
(1, 'nilu', 1, 'hi is anyone present here?', 1, '2014-02-28 10:17:12'),
(2, 'nilu', 1, 'yes nilu want u want?', 1, '2014-02-28 11:27:03'),
(3, 'nilu', 1, 'hi ther?', 1, '2014-02-28 11:36:00'),
(4, 'nilu', 1, 'ye i am here..', 1, '2014-02-28 11:37:37'),
(5, 'nilu', 1, 'ther?', 1, '2014-02-28 11:49:05'),
(6, 'suraj', 3, 'fdfhbkgd', 1, '2014-02-28 11:56:21'),
(7, 'suraj', 3, 'vxjlvlnxc', 1, '2014-02-28 11:56:26'),
(8, 'nilu', 1, 'khikx', 1, '2014-02-28 11:57:17'),
(9, 'suraj', 3, 'hhhhhh', 1, '2014-02-28 12:05:22'),
(10, 'nilu', 1, 'hi thre?', 1, '2014-02-28 12:07:20'),
(11, 'nilu', 1, 'yes', 1, '2014-02-28 12:07:32'),
(12, 'suraj', 3, 'getting', 1, '2014-02-28 12:08:28'),
(13, 'nilu', 1, 'not', 1, '2014-02-28 12:08:35'),
(14, 'suraj', 3, 'kksjfks', 1, '2014-02-28 12:11:00'),
(15, 'suraj', 3, 'khhksd', 1, '2014-02-28 12:11:54'),
(16, 'nilu', 1, 'ffdguokdsj', 1, '2014-02-28 12:12:04'),
(17, 'suraj', 3, 'usdfkj,s', 1, '2014-02-28 12:12:10'),
(18, 'nilu', 1, 'fhsgifkjs,', 1, '2014-02-28 12:12:20'),
(19, 'nilu', 1, 'dgsd9fuol', 1, '2014-02-28 12:12:31'),
(20, 'suraj', 3, 'mjjbjdkfdm,s', 1, '2014-02-28 12:12:37'),
(21, 'nilu', 1, 'kblngd', 1, '2014-02-28 12:12:43'),
(22, 'suraj', 3, 'odslnla', 1, '2014-02-28 12:12:47'),
(23, 'nilu', 1, 'odilnfka', 1, '2014-02-28 12:12:50'),
(24, 'suraj', 3, 'ufggolfd', 1, '2014-02-28 12:13:03'),
(25, 'suraj', 3, 'dbfhibhfjksd', 1, '2014-02-28 12:13:04'),
(26, 'suraj', 3, 'fdbkjfdsn.', 1, '2014-02-28 12:13:05'),
(27, 'suraj', 3, 'jfkjls', 1, '2014-02-28 12:13:06'),
(28, 'suraj', 3, 'ojlsd', 1, '2014-02-28 12:13:07'),
(29, 'nilu', 1, 'hi hdtf musdfskadbjal', 1, '2014-02-28 12:13:14'),
(30, 'suraj', 3, 'wqpiqweojffdb?', 1, '2014-02-28 12:13:24'),
(31, 'nilu', 1, 'ffujsdbjosuofsl', 1, '2014-02-28 12:13:32'),
(32, 'suraj', 3, 'vivksa,', 1, '2014-02-28 12:13:36'),
(33, 'nilu', 1, 'ifip;as', 1, '2014-02-28 12:13:44'),
(34, 'nilu', 1, 'bdfsdk', 1, '2014-02-28 12:13:54'),
(35, 'nilu', 1, 'dddgs9ufjksl', 1, '2014-02-28 12:13:56'),
(36, 'nilu', 1, 'ffgisk', 1, '2014-02-28 12:13:58'),
(37, 'nilu', 1, 'hduo', 1, '2014-02-28 12:13:59'),
(38, 'nilu', 1, 'dk', 1, '2014-02-28 12:14:00'),
(39, 'nilu', 1, 'ddpkddkf;s', 1, '2014-02-28 12:14:03'),
(40, 'suraj', 3, 'sfosl', 1, '2014-02-28 12:14:07'),
(41, 'nilu', 1, 'nlbofls', 1, '2014-02-28 12:14:10'),
(42, 'suraj', 3, 'fovls', 1, '2014-02-28 12:14:12'),
(43, 'nilu', 1, 'oj', 1, '2014-02-28 12:14:15'),
(44, 'suraj', 3, 'jjsfolks', 1, '2014-02-28 12:14:22'),
(45, 'nilu', 1, 'hkfsdbofbs', 1, '2014-02-28 12:14:28'),
(46, 'nilu', 1, 'ujdklf;s', 1, '2014-02-28 12:17:04'),
(47, 'suraj', 3, 'sfusjkl', 1, '2014-02-28 12:17:09'),
(48, 'nilu', 1, 'sgufls', 1, '2014-02-28 12:18:21'),
(49, 'suraj', 3, 'sygfyikas', 1, '2014-02-28 12:18:42'),
(50, 'suraj', 3, 'fdik', 1, '2014-02-28 12:18:54'),
(51, 'nilu', 1, 'k', 1, '2014-02-28 12:18:59'),
(52, 'suraj', 3, 'xjfol', 0, '2014-02-28 12:19:21'),
(53, 'nilu', 1, 'ksbdjl', 1, '2014-02-28 12:19:33'),
(54, 'suraj', 3, 'dkks', 1, '2014-02-28 12:19:37'),
(55, 'nilu', 1, 'dks', 1, '2014-02-28 12:19:40'),
(56, 'nilu', 1, 'sidfks', 1, '2014-02-28 12:20:03'),
(57, 'suraj', 3, 'dfbojfsd', 1, '2014-02-28 12:20:06'),
(58, 'nilu', 1, 'sofls', 1, '2014-02-28 12:20:11'),
(59, 'suraj', 3, 'sddifjsd', 1, '2014-02-28 12:20:26'),
(60, 'nilu', 1, 'sojflsd', 0, '2014-02-28 12:20:33'),
(61, 'suraj', 3, 'there', 1, '2014-02-28 12:20:44'),
(62, 'nilu', 1, 'yes here', 1, '2014-02-28 12:20:56'),
(63, 'nilu', 1, 'so any thing else', 1, '2014-02-28 12:21:20'),
(64, 'nilu', 1, 'hkdbskbflsd', 1, '2014-02-28 12:23:10'),
(65, 'suraj', 3, 'chgifkx', 1, '2014-02-28 12:23:35'),
(66, 'suraj', 3, 'dsdgfidsk', 1, '2014-02-28 12:23:41'),
(67, 'nilu', 1, 'xfvhdk', 1, '2014-02-28 12:23:46'),
(68, 'nilu', 1, 'dhsdiks', 1, '2014-02-28 12:23:52'),
(69, 'nilu', 1, 'bdgvujhs', 1, '2014-02-28 12:23:55'),
(70, 'suraj', 3, 'sfk', 1, '2014-02-28 12:23:59'),
(71, 'suraj', 3, 'sdful4', 0, '2014-02-28 12:24:04'),
(72, 'nilu', 1, 'thre?', 1, '2014-02-28 12:24:16'),
(73, 'suraj', 3, 'shifdhsk', 1, '2014-02-28 12:24:32'),
(74, 'nilu', 1, 'bsikd', 1, '2014-02-28 12:24:35'),
(75, 'suraj', 3, 'sjfslf', 1, '2014-02-28 12:24:42'),
(76, 'suraj', 3, 'fkfdfks', 1, '2014-02-28 12:24:51'),
(77, 'suraj', 3, 'hi thre?', 1, '2014-02-28 12:25:06'),
(78, 'nilu', 1, 'got my message?', 0, '2014-02-28 12:25:18'),
(79, 'suraj', 3, 'not yet..', 1, '2014-02-28 12:25:31'),
(80, 'nilu', 1, 'why not', 1, '2014-02-28 12:25:41'),
(81, 'nilu', 1, 'rjsjk', 1, '2014-02-28 12:25:59'),
(82, 'nilu', 1, 'jsspifks', 0, '2014-02-28 12:26:00'),
(83, 'nilu', 1, 'nspdikf', 1, '2014-02-28 12:26:01'),
(84, 'nilu', 1, 'fh', 1, '2014-02-28 12:26:04'),
(85, 'suraj', 3, 'kisgik', 1, '2014-02-28 12:26:11'),
(86, 'suraj', 3, 'hi thre?', 1, '2014-02-28 12:26:43'),
(87, 'nilu', 1, 'get message?', 1, '2014-02-28 12:26:51'),
(88, 'suraj', 3, 'not yet..', 1, '2014-02-28 12:27:00'),
(89, 'nilu', 1, 'ok me 2', 1, '2014-02-28 12:27:09'),
(90, 'suraj', 3, 'so threr?', 1, '2014-02-28 12:27:20'),
(91, 'nilu', 1, 'yes what to do?', 1, '2014-02-28 12:27:29'),
(92, 'nilu', 1, 'nothing just send message..', 1, '2014-02-28 12:27:59'),
(93, 'suraj', 3, 'ok got it..', 1, '2014-02-28 12:28:07'),
(94, 'nilu', 1, 'so got my message', 1, '2014-02-28 12:28:22'),
(95, 'nilu', 1, 'so got my message?', 1, '2014-02-28 12:28:32'),
(96, 'suraj', 3, 'yes got ur message', 1, '2014-02-28 12:28:44'),
(97, 'nilu', 1, 'ok then reply me..', 1, '2014-02-28 12:29:01'),
(98, 'nilu', 1, 'hi there?', 1, '2014-02-28 12:29:32'),
(99, 'suraj', 3, 'yes m here..', 1, '2014-02-28 12:29:39'),
(100, 'nilu', 1, 'got my message?', 1, '2014-02-28 12:29:53'),
(101, 'nilu', 1, 'z8c68sgZK', 1, '2014-02-28 12:30:25'),
(102, 'suraj', 3, 'hi', 0, '2014-02-28 13:09:47'),
(103, 'suraj', 3, 'h thr?', 1, '2014-02-28 13:19:12'),
(104, 'nilu', 1, 'yes', 1, '2014-02-28 13:19:19'),
(105, 'suraj', 3, 'got my message?', 1, '2014-02-28 13:29:17'),
(106, 'nilu', 1, 'yes', 1, '2014-02-28 13:29:46'),
(107, 'nilu', 1, 'so anything else?', 1, '2014-02-28 13:30:06'),
(108, 'nilu', 1, 'nothing', 1, '2014-02-28 13:30:26'),
(109, 'simi', 5, 'hey simi', 1, '2014-02-28 13:49:52'),
(110, 'simi', 5, 'hellotesting demo', 1, '2014-02-28 14:02:21'),
(111, 'simmi', 7, 'helllo guys', 1, '2014-02-28 14:02:35'),
(112, 'hemanshu', 6, 'hi', 1, '2014-02-28 14:02:49'),
(113, 'simi', 5, 'got message..', 1, '2014-02-28 14:02:51'),
(114, 'hemanshu', 6, 'hello room', 1, '2014-02-28 14:05:12'),
(115, 'dimple', 8, 'hi hemanshu', 1, '2014-02-28 14:05:23'),
(116, 'suraj', 3, 'hi', 1, '2014-02-28 14:14:49'),
(117, 'hemanshu', 6, 'hello', 1, '2014-02-28 14:14:56'),
(118, 'kailas', 9, 'kailas', 1, '2014-02-28 14:15:17'),
(119, 'kamlesh', 12, 'dfdsf', 1, '2014-02-28 14:15:25'),
(120, 'kamlesh', 12, 'I am kamlesh', 1, '2014-02-28 14:15:50'),
(121, 'suraj', 3, 'hey hi guyes', 1, '2014-02-28 14:15:59'),
(122, 'kamlesh', 12, 'How are you', 1, '2014-02-28 14:16:00'),
(123, 'kailas', 9, 'jxbvj', 1, '2014-02-28 14:16:00'),
(124, 'kailas', 9, 'mnbxcvb', 1, '2014-02-28 14:16:01'),
(125, 'kailas', 9, 'nxbbx', 1, '2014-02-28 14:16:03'),
(126, 'kailas', 9, 'n nxcnb', 1, '2014-02-28 14:16:05'),
(127, 'kamlesh', 12, 'hey', 1, '2014-02-28 14:16:05'),
(128, 'kailas', 9, 'nbxcnvxnc', 1, '2014-02-28 14:16:07'),
(129, 'kailas', 9, 'mnxbnxb', 1, '2014-02-28 14:16:08'),
(130, 'kailas', 9, 'jmhbdb', 1, '2014-02-28 14:16:10'),
(131, 'kailas', 9, 'kailas', 1, '2014-02-28 14:16:12'),
(132, 'kailas', 9, 'pawan', 1, '2014-02-28 14:16:16'),
(133, 'suraj', 3, 'thamb re kailas', 1, '2014-02-28 14:16:22'),
(134, 'kailas', 9, 'hi', 1, '2014-02-28 14:16:42'),
(135, 'vaibhav', 11, 'hii', 1, '2014-02-28 14:17:21'),
(136, 'kailas', 9, 'ooo', 1, '2014-02-28 14:17:25'),
(137, 'simi', 5, 'get message?', 1, '2014-02-28 14:17:29'),
(138, 'mangal', 10, 'hiii', 1, '2014-02-28 14:17:33'),
(139, 'kailas', 9, 'ye mangya', 1, '2014-02-28 14:17:36'),
(140, 'kamlesh', 12, 'hello', 1, '2014-02-28 14:17:39'),
(141, 'hemanshu', 6, 'hello world', 1, '2014-02-28 14:17:41'),
(142, 'vaibhav', 11, 'how was your lunch??', 1, '2014-02-28 14:17:43'),
(143, 'simi', 5, 'hello', 1, '2014-02-28 14:17:45'),
(144, 'mangal', 10, 'yup', 1, '2014-02-28 14:17:47'),
(145, 'kailas', 9, 'kasay mangau', 1, '2014-02-28 14:17:48'),
(146, 'kamlesh', 12, 'kon mangya', 1, '2014-02-28 14:17:50'),
(147, 'kailas', 9, 'chup', 1, '2014-02-28 14:17:54'),
(148, 'simi', 5, 'it was gud @vaibahv', 1, '2014-02-28 14:18:00'),
(149, 'kamlesh', 12, 'who is mangya kailas', 1, '2014-02-28 14:18:01'),
(150, 'kailas', 9, 'mangya is testing part which usefull in bootstrap', 1, '2014-02-28 14:18:26'),
(151, 'mangal', 10, 'hey hii evry 1', 1, '2014-02-28 14:18:35'),
(152, 'vaibhav', 11, 'nick name of mangal @ kamlesh', 1, '2014-02-28 14:18:35'),
(153, 'simi', 5, 'jdfgolfdnl', 1, '2014-02-28 14:18:36'),
(154, 'simi', 5, 'shik', 1, '2014-02-28 14:18:42'),
(155, 'kamlesh', 12, 'are you sure to mangya', 1, '2014-02-28 14:18:43'),
(156, 'mangal', 10, 'SDF', 1, '2014-02-28 14:18:45'),
(157, 'mangal', 10, 'SdF', 1, '2014-02-28 14:18:45'),
(158, 'mangal', 10, 'SD', 1, '2014-02-28 14:18:46'),
(159, 'hemanshu', 6, 'hi', 1, '2014-02-28 14:18:50'),
(160, 'suraj', 3, 'hi', 1, '2014-02-28 14:18:54'),
(161, 'vaibhav', 11, 'opening for testing', 1, '2014-02-28 14:18:57'),
(162, 'kailas', 9, 'double', 1, '2014-02-28 14:18:58'),
(163, 'simi', 5, 'nnnnnnn', 1, '2014-02-28 14:19:04'),
(164, 'kamlesh', 12, 'What is this?', 1, '2014-02-28 14:19:04'),
(165, 'hemanshu', 6, 'ok there is some problem', 1, '2014-02-28 14:19:07'),
(166, 'suraj', 3, 'testing buddy', 1, '2014-02-28 14:19:18'),
(167, 'simi', 5, 'group chat testing @kamlesh', 1, '2014-02-28 14:19:23'),
(168, 'kailas', 9, 'mangal pande kuteay', 1, '2014-02-28 14:19:25'),
(169, 'vaibhav', 11, 'its group chat', 1, '2014-02-28 14:19:28'),
(170, 'vaibhav', 11, '@kamlesh', 1, '2014-02-28 14:19:34'),
(171, 'kailas', 9, 'mangal maza voice yetoy ka?', 1, '2014-02-28 14:19:34'),
(172, 'suraj', 3, 'haan ala', 1, '2014-02-28 14:19:50'),
(173, 'kailas', 9, 'hello', 1, '2014-02-28 14:19:51'),
(174, 'mangal', 10, 'HOO AALA', 1, '2014-02-28 14:19:53'),
(175, 'kamlesh', 12, 'Kailas kya kha raho ho', 1, '2014-02-28 14:19:59'),
(176, 'simi', 5, 'mala pan ala', 1, '2014-02-28 14:20:05'),
(177, 'vaibhav', 11, 'where is testing guy????', 1, '2014-02-28 14:20:14'),
(178, 'hemanshu', 6, 'aan ala\nkailas:  hello\nmangal:  HOO AALA', 1, '2014-02-28 14:20:14'),
(179, 'kailas', 9, 'ulla la ulla la', 1, '2014-02-28 14:20:23'),
(180, 'hemanshu', 6, 'LKJL', 1, '2014-02-28 14:20:26'),
(181, 'mangal', 10, 'kamlesh aa ke 2 bar msg aa rahe he', 1, '2014-02-28 14:20:26'),
(182, 'hemanshu', 6, 'DASDAS', 1, '2014-02-28 14:20:32'),
(183, 'hemanshu', 6, 'NOOOOOO', 1, '2014-02-28 14:20:41'),
(184, 'kailas', 9, 'maqngal devdas', 1, '2014-02-28 14:20:44'),
(185, 'hemanshu', 6, '12311232', 1, '2014-02-28 14:20:55'),
(186, 'vaibhav', 11, 'sakdlmas', 1, '2014-02-28 14:21:10'),
(187, 'kamlesh', 12, 'hello r u ready', 1, '2014-02-28 14:21:29'),
(188, 'suraj', 3, 'this is sooraj testing', 1, '2014-02-28 14:21:33'),
(189, 'hemanshu', 6, 'HELLLOOOOOOO', 1, '2014-02-28 14:21:33'),
(190, 'vaibhav', 11, '...vaibhav...', 1, '2014-02-28 14:21:33'),
(191, 'mangal', 10, 'bhbvbsdafvbhydf', 1, '2014-02-28 14:21:33'),
(192, 'simi', 5, 'sdhfbdsksdfhold 129821', 1, '2014-02-28 14:21:33'),
(193, 'kailas', 9, 'kailas kokate \nkailas kokate \nkailas kokate', 1, '2014-02-28 14:21:33'),
(194, 'kamlesh', 12, 'yes', 1, '2014-02-28 14:21:33'),
(195, 'mangal', 10, 'his is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokatehis is sooraj testing\nhemanshu:  HELLLOOOOOOO\nvaibhav:  ...vaibhav...\nmangal:  bhbvbsdafvbhydf\nsimi:  sdhfbdsksdfhold 129821\nkailas:  kailas kokate kailas kokate kailas kokate', 1, '2014-02-28 14:22:01'),
(196, 'kailas', 9, 'kailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate \nkailas kokate', 1, '2014-02-28 14:22:02'),
(197, 'hemanshu', 6, 'GGGGGGGGGGGG', 1, '2014-02-28 14:23:00'),
(198, 'hemanshu', 6, 'ASDASD', 1, '2014-02-28 14:23:04'),
(199, 'hemanshu', 6, 'JJJJJJJJJJJJJJJJJJJJJ', 1, '2014-02-28 14:23:29'),
(200, 'hemanshu', 6, 'KKKKKKKKKKKKKKKKKKKKKK', 1, '2014-02-28 14:23:36'),
(201, 'hemanshu', 6, 'MMMMMMMMMMMMMMMMMMMM', 1, '2014-02-28 14:23:49'),
(202, 'suraj', 3, 's', 1, '2014-02-28 14:24:45'),
(203, 'simi', 5, 'ugshj', 1, '2014-02-28 14:26:25'),
(204, 'simi', 5, 'dshivfks', 1, '2014-02-28 14:26:30'),
(205, 'simi', 5, 'sjfuvdj', 1, '2014-02-28 14:26:34'),
(206, 'simi', 5, 'sdgufugsdj', 1, '2014-02-28 14:26:39'),
(207, 'simi', 5, 'ddbsgfikd', 1, '2014-02-28 14:26:40'),
(208, 'suraj', 3, 'hhhiii', 1, '2014-02-28 14:26:53'),
(209, 'suraj', 3, 'higisdda', 1, '2014-02-28 14:27:03'),
(210, 'suraj', 3, 'hello', 1, '2014-02-28 14:27:04'),
(211, 'suraj', 3, 'sjhhfjd', 1, '2014-02-28 14:27:09'),
(212, 'suraj', 3, 'ssiifsdkttusj', 1, '2014-02-28 14:27:19'),
(213, 'nilu', 1, 'hey got?', 1, '2014-02-28 14:28:14'),
(214, 'simi', 5, 'ddy8gfjkd', 1, '2014-02-28 14:28:31'),
(215, 'nilu', 1, 'dyydfgika', 1, '2014-02-28 14:28:47'),
(216, 'nilu', 1, 'dgudgsaj', 1, '2014-02-28 14:28:53'),
(217, 'simi', 5, 'sdibfbsdikbf', 1, '2014-02-28 14:29:44'),
(218, 'suraj', 3, 'hhhhhh', 1, '2014-02-28 14:29:45'),
(219, 'nilu', 1, 'bgvifdjbidfbkdj', 1, '2014-02-28 14:30:00'),
(220, 'nilu', 1, 'odhfgnld', 1, '2014-02-28 14:30:34'),
(221, 'simi', 5, 'fhfivkfs', 1, '2014-02-28 14:30:40'),
(222, 'simi', 5, 'hsdifhbksdlfdof', 1, '2014-02-28 14:30:43'),
(223, 'simi', 5, 'vjdjas', 1, '2014-02-28 14:30:52'),
(224, 'simi', 5, 'bkbbd', 1, '2014-02-28 14:30:53'),
(225, 'suraj', 3, 'asas', 1, '2014-02-28 14:31:04');

-- --------------------------------------------------------

--
-- Table structure for table `invite_users`
--

CREATE TABLE IF NOT EXISTS `invite_users` (
  `invite_user` int(11) NOT NULL AUTO_INCREMENT,
  `to_id` varchar(50) NOT NULL,
  `from_id` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `entry_time` datetime NOT NULL,
  `with_user` varchar(50) NOT NULL,
  PRIMARY KEY (`invite_user`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `invite_users`
--

INSERT INTO `invite_users` (`invite_user`, `to_id`, `from_id`, `status`, `entry_time`, `with_user`) VALUES
(1, '2', '1', 'sent', '2014-02-27 13:09:23', '3'),
(2, '3', '2', 'sent', '2014-02-27 13:12:38', '1'),
(3, '3', '2', 'sent', '2014-02-27 13:12:38', '1'),
(4, '3', '2', 'sent', '2014-02-27 13:13:47', '1'),
(5, '3', '2', 'sent', '2014-02-27 13:20:19', '1'),
(6, '2', '3', 'sent', '2014-02-27 14:04:45', '1'),
(7, '2', '3', 'sent', '2014-02-27 14:48:01', '1'),
(8, '2', '3', 'sent', '2014-02-27 14:50:08', '1'),
(9, '2', '3', 'sent', '2014-02-27 15:23:09', '1'),
(10, '2', '3', 'sent', '2014-02-27 15:35:11', '1'),
(11, '2', '1', 'sent', '2014-02-27 15:45:07', '3'),
(12, '2', '1', 'sent', '2014-02-27 15:47:14', '3'),
(13, '2', '1', 'sent', '2014-02-27 15:57:36', '3'),
(14, '2', '1', 'sent', '2014-02-27 16:00:59', '3'),
(15, '2', '1', 'sent', '2014-02-27 16:05:39', '3'),
(16, '2', '1', 'sent', '2014-02-27 16:13:54', '3'),
(17, '2', '3', 'sent', '2014-02-28 14:09:25', '1'),
(18, '2', '3', 'sent', '2014-02-28 14:12:02', '1');

-- --------------------------------------------------------

--
-- Table structure for table `users_list`
--

CREATE TABLE IF NOT EXISTS `users_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `image` varchar(500) NOT NULL,
  `online` enum('yes','no') NOT NULL DEFAULT 'yes',
  `in_community` enum('yes','no') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `users_list`
--

INSERT INTO `users_list` (`id`, `username`, `password`, `email`, `image`, `online`, `in_community`) VALUES
(1, 'nilu', 'nilu', 'nilam@esapienz.com', '', 'yes', 'no'),
(2, 'ankita', 'ankita', 'ankita@gmail.com', '', 'yes', 'yes'),
(3, 'suraj', 'suraj', 'suraj@esapienz.com', '', 'yes', 'no'),
(4, 'sir', 'sir', 'sir@sir.com', '', 'yes', ''),
(5, 'simi', 'simi', 'simi@gmail.com', '', 'yes', 'no'),
(6, 'hemanshu', 'abcd1234', 'hemanshu.mahajan@gmail.com', '', 'yes', 'no'),
(7, 'simmi', 'abcd1234', 'simi', '', 'yes', 'yes'),
(8, 'dimple', 'abcd1234', 'dimple', '', 'yes', 'no'),
(9, 'kailas', 'kailas', 'kailas.kokate@esapienz.com', '', 'yes', 'no'),
(10, 'mangal', '7588686927', 'mangal.zambad@gmail.com', '', 'yes', 'no'),
(11, 'vaibhav', 'abcd1234', 'vaibhavk32@gmail.com', '', 'yes', 'no'),
(12, 'kamlesh', 'kamlesh', 'kamlesh.kumar@esapienz.com', '', 'yes', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `user_nfo`
--

CREATE TABLE IF NOT EXISTS `user_nfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `uid` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user_nfo`
--

INSERT INTO `user_nfo` (`id`, `name`, `uid`, `email`, `status`) VALUES
(1, 'Nilam', '1', 'nilam@esapienz.com', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `user_request`
--

CREATE TABLE IF NOT EXISTS `user_request` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `frm_usr` varchar(50) NOT NULL,
  `to_user` varchar(50) NOT NULL,
  `request_for` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `user_request`
--

INSERT INTO `user_request` (`id`, `frm_usr`, `to_user`, `request_for`, `status`) VALUES
(1, '1', '2', 'mentor', 'accepted'),
(2, '2', '1', 'shishya', 'accepted'),
(3, '1', '3', 'mate', 'accepted'),
(4, '3', '1', 'mate', 'accepted'),
(5, '4', '2', 'mentor', 'accepted'),
(6, '2', '4', 'shishya', 'accepted'),
(7, '6', '1', 'mentor', 'accepted'),
(8, '1', '6', 'shishya', 'accepted'),
(9, '12', '9', 'mate', 'not_accept'),
(10, '9', '12', 'mate', 'accepted');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
