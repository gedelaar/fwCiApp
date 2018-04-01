-- phpMyAdmin SQL Dump
-- version 4.4.15
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 31, 2018 at 09:36 PM
-- Server version: 5.5.25-log
-- PHP Version: 5.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `forwodians_nl_2`
--
CREATE DATABASE IF NOT EXISTS `forwodians_nl_2` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `forwodians_nl_2`;

-- --------------------------------------------------------

--
-- Table structure for table `bardienst`
--

CREATE TABLE IF NOT EXISTS `bardienst` (
  `id` bigint(20) NOT NULL,
  `poule` varchar(6) DEFAULT NULL,
  `code` char(5) CHARACTER SET ascii DEFAULT NULL,
  `lidnummer` varchar(11) DEFAULT NULL,
  `dienst` int(1) NOT NULL DEFAULT '0' COMMENT '0 = geselecteerd; 1=mail verzonden;2=dienst geaccepteerd;3=evaluatie form verzonden; 8=uitzondering; 9 = afgemeld voor deze dienst',
  `invdatum` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Stand-in structure for view `baroverzicht`
--
CREATE TABLE IF NOT EXISTS `baroverzicht` (
`datum` varchar(100)
,`tijd` varchar(10)
,`thuis` varchar(250)
,`uit` varchar(250)
,`zvoornaam` varchar(100)
,`ztussenvoegsel` varchar(20)
,`znaam` varchar(100)
,`telnr` varchar(100)
,`mobiel` varchar(11)
,`dienst` int(1)
,`dt_datum` date
);

-- --------------------------------------------------------

--
-- Table structure for table `chauffeur`
--

CREATE TABLE IF NOT EXISTS `chauffeur` (
  `id` bigint(20) NOT NULL,
  `poule` varchar(6) DEFAULT NULL,
  `code` varchar(5) DEFAULT NULL,
  `lidnummer1` varchar(9) DEFAULT NULL,
  `lidnummer2` varchar(9) DEFAULT NULL,
  `lidnummer3` varchar(9) DEFAULT NULL,
  `dienst` int(1) NOT NULL DEFAULT '0',
  `invdatum` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `seizoen` varchar(9) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inschrijving`
--

CREATE TABLE IF NOT EXISTS `inschrijving` (
  `voornaam` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `leden`
--

CREATE TABLE IF NOT EXISTS `leden` (
  `Lidnr` varchar(11) NOT NULL DEFAULT '0',
  `Voornaam` varchar(100) NOT NULL DEFAULT '',
  `Naam` varchar(100) NOT NULL DEFAULT '',
  `Tussenvoegsel` varchar(20) NOT NULL DEFAULT '',
  `Voorletters` varchar(10) NOT NULL DEFAULT '',
  `Straat` varchar(100) NOT NULL DEFAULT '',
  `Huisnr` varchar(8) NOT NULL DEFAULT '',
  `Postcode` varchar(7) NOT NULL DEFAULT '',
  `Woonplaats` varchar(100) NOT NULL DEFAULT '',
  `Gebdat` varchar(10) NOT NULL DEFAULT '',
  `Geslacht` varchar(10) NOT NULL DEFAULT '',
  `Telnr` varchar(100) NOT NULL DEFAULT '',
  `Email` varchar(100) NOT NULL DEFAULT '',
  `Lidsoort` varchar(10) NOT NULL DEFAULT '',
  `Extraoms` varchar(100) NOT NULL DEFAULT '',
  `Lidveld1` varchar(100) NOT NULL DEFAULT '',
  `Lidveld2` varchar(100) NOT NULL DEFAULT '',
  `Datmut` varchar(20) DEFAULT NULL,
  `mobiel` varchar(11) DEFAULT NULL,
  `tbl_upd_datum` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lgtlv_aiowps_events`
--

CREATE TABLE IF NOT EXISTS `lgtlv_aiowps_events` (
  `id` bigint(20) NOT NULL,
  `event_type` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `event_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip_or_host` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer_info` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_data` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lgtlv_aiowps_failed_logins`
--

CREATE TABLE IF NOT EXISTS `lgtlv_aiowps_failed_logins` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `user_login` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_login_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `login_attempt_ip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lgtlv_aiowps_global_meta`
--

CREATE TABLE IF NOT EXISTS `lgtlv_aiowps_global_meta` (
  `meta_id` bigint(20) NOT NULL,
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `meta_key1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_key2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_key3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_key4` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_key5` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value2` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value3` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value4` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value5` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lgtlv_aiowps_login_activity`
--

CREATE TABLE IF NOT EXISTS `lgtlv_aiowps_login_activity` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `user_login` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `logout_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `login_ip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `login_country` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `browser_type` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lgtlv_aiowps_login_lockdown`
--

CREATE TABLE IF NOT EXISTS `lgtlv_aiowps_login_lockdown` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `user_login` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lockdown_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `release_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `failed_login_ip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lock_reason` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `unlock_key` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lgtlv_aiowps_permanent_block`
--

CREATE TABLE IF NOT EXISTS `lgtlv_aiowps_permanent_block` (
  `id` bigint(20) NOT NULL,
  `blocked_ip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block_reason` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `country_origin` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `blocked_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `unblock` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lgtlv_commentmeta`
--

CREATE TABLE IF NOT EXISTS `lgtlv_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lgtlv_comments`
--

CREATE TABLE IF NOT EXISTS `lgtlv_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lgtlv_contactformmaker`
--

CREATE TABLE IF NOT EXISTS `lgtlv_contactformmaker` (
  `id` int(11) NOT NULL,
  `title` varchar(127) NOT NULL,
  `mail` varchar(256) NOT NULL,
  `form_front` longtext NOT NULL,
  `theme` int(4) NOT NULL,
  `submit_text` longtext NOT NULL,
  `url` varchar(256) NOT NULL,
  `submit_text_type` tinyint(4) NOT NULL,
  `script_mail` text NOT NULL,
  `script_mail_user` text NOT NULL,
  `counter` int(11) NOT NULL,
  `published` int(11) NOT NULL DEFAULT '1',
  `label_order` text NOT NULL,
  `label_order_current` text NOT NULL,
  `article_id` varchar(500) NOT NULL,
  `public_key` varchar(50) NOT NULL,
  `private_key` varchar(50) NOT NULL,
  `recaptcha_theme` varchar(20) NOT NULL,
  `form_fields` text NOT NULL,
  `savedb` tinyint(4) NOT NULL DEFAULT '1',
  `sendemail` tinyint(4) NOT NULL DEFAULT '1',
  `requiredmark` varchar(20) NOT NULL DEFAULT '*',
  `mail_from` varchar(128) NOT NULL,
  `mail_from_name` varchar(128) NOT NULL,
  `reply_to` varchar(128) NOT NULL,
  `send_to` varchar(128) NOT NULL,
  `autogen_layout` tinyint(4) NOT NULL DEFAULT '1',
  `custom_front` longtext NOT NULL,
  `mail_from_user` varchar(128) NOT NULL,
  `mail_from_name_user` varchar(128) NOT NULL,
  `reply_to_user` varchar(128) NOT NULL,
  `disabled_fields` varchar(200) NOT NULL,
  `mail_cc` varchar(128) NOT NULL,
  `mail_cc_user` varchar(128) NOT NULL,
  `mail_bcc` varchar(128) NOT NULL,
  `mail_bcc_user` varchar(128) NOT NULL,
  `mail_subject` varchar(128) NOT NULL,
  `mail_subject_user` varchar(128) NOT NULL,
  `mail_mode` tinyint(4) NOT NULL DEFAULT '1',
  `mail_mode_user` tinyint(4) NOT NULL DEFAULT '1',
  `wpmail` tinyint(1) NOT NULL DEFAULT '1',
  `sortable` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lgtlv_contactformmaker_blocked`
--

CREATE TABLE IF NOT EXISTS `lgtlv_contactformmaker_blocked` (
  `id` int(11) NOT NULL,
  `ip` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lgtlv_contactformmaker_submits`
--

CREATE TABLE IF NOT EXISTS `lgtlv_contactformmaker_submits` (
  `id` int(11) NOT NULL,
  `form_id` int(11) NOT NULL,
  `element_label` varchar(128) NOT NULL,
  `element_value` varchar(600) NOT NULL,
  `group_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `ip` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lgtlv_contactformmaker_themes`
--

CREATE TABLE IF NOT EXISTS `lgtlv_contactformmaker_themes` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `css` text NOT NULL,
  `default` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lgtlv_contactformmaker_views`
--

CREATE TABLE IF NOT EXISTS `lgtlv_contactformmaker_views` (
  `form_id` int(11) NOT NULL,
  `views` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lgtlv_ewwwio_images`
--

CREATE TABLE IF NOT EXISTS `lgtlv_ewwwio_images` (
  `id` int(14) unsigned NOT NULL,
  `attachment_id` bigint(20) unsigned DEFAULT NULL,
  `gallery` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resize` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `converted` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `results` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_size` int(10) unsigned DEFAULT NULL,
  `orig_size` int(10) unsigned DEFAULT NULL,
  `backup` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` int(5) unsigned DEFAULT NULL,
  `pending` tinyint(1) NOT NULL DEFAULT '0',
  `updates` int(5) unsigned DEFAULT NULL,
  `updated` timestamp NOT NULL DEFAULT '1970-12-31 23:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `trace` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lgtlv_formmaker`
--

CREATE TABLE IF NOT EXISTS `lgtlv_formmaker` (
  `id` int(11) NOT NULL,
  `title` varchar(127) NOT NULL,
  `type` varchar(100) NOT NULL,
  `mail` varchar(128) NOT NULL,
  `form_front` longtext NOT NULL,
  `theme` int(11) NOT NULL,
  `javascript` text NOT NULL,
  `submit_text` longtext NOT NULL,
  `url` varchar(200) NOT NULL,
  `submit_text_type` tinyint(4) NOT NULL,
  `script_mail` text NOT NULL,
  `script_mail_user` text NOT NULL,
  `counter` int(11) NOT NULL,
  `published` int(11) NOT NULL DEFAULT '1',
  `label_order` text NOT NULL,
  `label_order_current` text NOT NULL,
  `article_id` varchar(500) NOT NULL,
  `pagination` varchar(128) NOT NULL,
  `show_title` varchar(128) NOT NULL,
  `show_numbers` varchar(128) NOT NULL,
  `public_key` varchar(50) NOT NULL,
  `private_key` varchar(50) NOT NULL,
  `recaptcha_theme` varchar(20) NOT NULL,
  `paypal_mode` int(2) NOT NULL,
  `checkout_mode` varchar(20) NOT NULL,
  `paypal_email` varchar(50) NOT NULL,
  `payment_currency` varchar(20) NOT NULL,
  `tax` float NOT NULL,
  `form_fields` longtext NOT NULL,
  `savedb` tinyint(4) NOT NULL DEFAULT '1',
  `sendemail` tinyint(4) NOT NULL DEFAULT '1',
  `requiredmark` varchar(20) NOT NULL DEFAULT '*',
  `from_mail` varchar(128) NOT NULL,
  `from_name` varchar(128) NOT NULL,
  `reply_to` varchar(128) NOT NULL,
  `send_to` varchar(128) NOT NULL,
  `autogen_layout` tinyint(4) NOT NULL DEFAULT '1',
  `custom_front` longtext NOT NULL,
  `mail_from_user` varchar(128) NOT NULL,
  `mail_from_name_user` varchar(128) NOT NULL,
  `reply_to_user` varchar(128) NOT NULL,
  `condition` text NOT NULL,
  `mail_cc` varchar(128) NOT NULL,
  `mail_cc_user` varchar(128) NOT NULL,
  `mail_bcc` varchar(128) NOT NULL,
  `mail_bcc_user` varchar(128) NOT NULL,
  `mail_subject` varchar(128) NOT NULL,
  `mail_subject_user` varchar(128) NOT NULL,
  `mail_mode` tinyint(4) NOT NULL DEFAULT '1',
  `mail_mode_user` tinyint(4) NOT NULL DEFAULT '1',
  `mail_attachment` tinyint(4) NOT NULL DEFAULT '1',
  `mail_attachment_user` tinyint(4) NOT NULL DEFAULT '1',
  `user_id_wd` varchar(220) NOT NULL,
  `sortable` int(11) NOT NULL,
  `frontend_submit_fields` text NOT NULL,
  `frontend_submit_stat_fields` text NOT NULL,
  `mail_emptyfields` tinyint(4) NOT NULL DEFAULT '0',
  `mail_verify` tinyint(4) NOT NULL DEFAULT '0',
  `mail_verify_expiretime` float NOT NULL,
  `mail_verification_post_id` int(11) NOT NULL,
  `save_uploads` tinyint(4) NOT NULL DEFAULT '1',
  `header_title` varchar(255) NOT NULL,
  `header_description` text NOT NULL,
  `header_image_url` varchar(255) NOT NULL,
  `header_image_animation` varchar(200) NOT NULL,
  `header_hide_image` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lgtlv_formmaker_backup`
--

CREATE TABLE IF NOT EXISTS `lgtlv_formmaker_backup` (
  `backup_id` int(11) NOT NULL,
  `cur` int(1) NOT NULL,
  `id` int(11) NOT NULL,
  `title` varchar(127) NOT NULL,
  `type` varchar(100) NOT NULL,
  `mail` varchar(128) NOT NULL,
  `form_front` longtext NOT NULL,
  `theme` int(11) NOT NULL,
  `javascript` text NOT NULL,
  `submit_text` longtext NOT NULL,
  `url` varchar(200) NOT NULL,
  `submit_text_type` tinyint(4) NOT NULL,
  `script_mail` text NOT NULL,
  `script_mail_user` text NOT NULL,
  `counter` int(11) NOT NULL,
  `published` int(11) NOT NULL DEFAULT '1',
  `label_order` text NOT NULL,
  `label_order_current` text NOT NULL,
  `article_id` varchar(500) NOT NULL,
  `pagination` varchar(128) NOT NULL,
  `show_title` varchar(128) NOT NULL,
  `show_numbers` varchar(128) NOT NULL,
  `public_key` varchar(50) NOT NULL,
  `private_key` varchar(50) NOT NULL,
  `recaptcha_theme` varchar(20) NOT NULL,
  `paypal_mode` int(2) NOT NULL,
  `checkout_mode` varchar(20) NOT NULL,
  `paypal_email` varchar(50) NOT NULL,
  `payment_currency` varchar(20) NOT NULL,
  `tax` float NOT NULL,
  `form_fields` longtext NOT NULL,
  `savedb` tinyint(4) NOT NULL DEFAULT '1',
  `sendemail` tinyint(4) NOT NULL DEFAULT '1',
  `requiredmark` varchar(20) NOT NULL DEFAULT '*',
  `from_mail` varchar(128) NOT NULL,
  `from_name` varchar(128) NOT NULL,
  `reply_to` varchar(128) NOT NULL,
  `send_to` varchar(128) NOT NULL,
  `autogen_layout` tinyint(4) NOT NULL DEFAULT '1',
  `custom_front` longtext NOT NULL,
  `mail_from_user` varchar(128) NOT NULL,
  `mail_from_name_user` varchar(128) NOT NULL,
  `reply_to_user` varchar(128) NOT NULL,
  `condition` text NOT NULL,
  `mail_cc` varchar(128) NOT NULL,
  `mail_cc_user` varchar(128) NOT NULL,
  `mail_bcc` varchar(128) NOT NULL,
  `mail_bcc_user` varchar(128) NOT NULL,
  `mail_subject` varchar(128) NOT NULL,
  `mail_subject_user` varchar(128) NOT NULL,
  `mail_mode` tinyint(4) NOT NULL DEFAULT '1',
  `mail_mode_user` tinyint(4) NOT NULL DEFAULT '1',
  `mail_attachment` tinyint(4) NOT NULL DEFAULT '1',
  `mail_attachment_user` tinyint(4) NOT NULL DEFAULT '1',
  `user_id_wd` varchar(220) NOT NULL,
  `sortable` int(11) NOT NULL,
  `frontend_submit_fields` text NOT NULL,
  `frontend_submit_stat_fields` text NOT NULL,
  `mail_emptyfields` tinyint(4) NOT NULL DEFAULT '0',
  `mail_verify` tinyint(4) NOT NULL DEFAULT '0',
  `mail_verify_expiretime` float NOT NULL,
  `mail_verification_post_id` int(11) NOT NULL,
  `save_uploads` tinyint(4) NOT NULL DEFAULT '1',
  `header_title` varchar(255) NOT NULL,
  `header_description` text NOT NULL,
  `header_image_url` varchar(255) NOT NULL,
  `header_image_animation` varchar(200) NOT NULL,
  `header_hide_image` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lgtlv_formmaker_blocked`
--

CREATE TABLE IF NOT EXISTS `lgtlv_formmaker_blocked` (
  `id` int(11) NOT NULL,
  `ip` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lgtlv_formmaker_display_options`
--

CREATE TABLE IF NOT EXISTS `lgtlv_formmaker_display_options` (
  `id` int(11) NOT NULL,
  `form_id` int(11) NOT NULL,
  `type` varchar(100) NOT NULL,
  `popover_animate_effect` varchar(255) NOT NULL,
  `popover_loading_delay` int(11) NOT NULL,
  `popover_frequency` int(4) NOT NULL,
  `topbar_position` tinyint(4) NOT NULL,
  `topbar_remain_top` tinyint(4) NOT NULL,
  `topbar_closing` tinyint(4) NOT NULL,
  `topbar_hide_duration` int(4) NOT NULL,
  `scrollbox_position` tinyint(4) NOT NULL,
  `scrollbox_trigger_point` float NOT NULL,
  `scrollbox_hide_duration` int(4) NOT NULL,
  `scrollbox_auto_hide` tinyint(4) NOT NULL,
  `scrollbox_closing` tinyint(4) NOT NULL DEFAULT '1',
  `scrollbox_minimize` tinyint(4) NOT NULL,
  `scrollbox_minimize_text` varchar(300) NOT NULL,
  `display_on` text NOT NULL,
  `posts_include` text NOT NULL,
  `pages_include` text NOT NULL,
  `display_on_categories` text NOT NULL,
  `current_categories` text NOT NULL,
  `scrollbox_loading_delay` tinyint(4) NOT NULL,
  `hide_mobile` tinyint(4) NOT NULL DEFAULT '1',
  `show_for_admin` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lgtlv_formmaker_query`
--

CREATE TABLE IF NOT EXISTS `lgtlv_formmaker_query` (
  `id` int(11) NOT NULL,
  `form_id` int(11) NOT NULL,
  `query` text NOT NULL,
  `details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lgtlv_formmaker_sessions`
--

CREATE TABLE IF NOT EXISTS `lgtlv_formmaker_sessions` (
  `id` int(11) unsigned NOT NULL,
  `form_id` int(20) NOT NULL,
  `group_id` int(20) NOT NULL,
  `ip` varchar(20) NOT NULL,
  `ord_date` datetime NOT NULL,
  `ord_last_modified` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `mobile_phone` varchar(255) NOT NULL,
  `fax` varchar(255) NOT NULL,
  `address` varchar(300) NOT NULL,
  `paypal_info` text NOT NULL,
  `without_paypal_info` text NOT NULL,
  `ipn` varchar(20) NOT NULL,
  `checkout_method` varchar(20) NOT NULL,
  `tax` float NOT NULL,
  `shipping` float NOT NULL,
  `shipping_type` varchar(200) NOT NULL,
  `read` int(11) NOT NULL,
  `total` float NOT NULL,
  `currency` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lgtlv_formmaker_submits`
--

CREATE TABLE IF NOT EXISTS `lgtlv_formmaker_submits` (
  `id` int(11) NOT NULL,
  `form_id` int(11) NOT NULL,
  `element_label` varchar(128) NOT NULL,
  `element_value` longtext NOT NULL,
  `group_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `ip` varchar(128) NOT NULL,
  `user_id_wd` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lgtlv_formmaker_themes`
--

CREATE TABLE IF NOT EXISTS `lgtlv_formmaker_themes` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `params` text NOT NULL,
  `default` tinyint(4) NOT NULL,
  `version` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lgtlv_formmaker_views`
--

CREATE TABLE IF NOT EXISTS `lgtlv_formmaker_views` (
  `form_id` int(11) NOT NULL,
  `views` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lgtlv_links`
--

CREATE TABLE IF NOT EXISTS `lgtlv_links` (
  `link_id` bigint(20) unsigned NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lgtlv_options`
--

CREATE TABLE IF NOT EXISTS `lgtlv_options` (
  `option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lgtlv_postmeta`
--

CREATE TABLE IF NOT EXISTS `lgtlv_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lgtlv_posts`
--

CREATE TABLE IF NOT EXISTS `lgtlv_posts` (
  `ID` bigint(20) unsigned NOT NULL,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lgtlv_relevanssi`
--

CREATE TABLE IF NOT EXISTS `lgtlv_relevanssi` (
  `doc` bigint(20) NOT NULL DEFAULT '0',
  `term` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `term_reverse` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `content` mediumint(9) NOT NULL DEFAULT '0',
  `title` mediumint(9) NOT NULL DEFAULT '0',
  `comment` mediumint(9) NOT NULL DEFAULT '0',
  `tag` mediumint(9) NOT NULL DEFAULT '0',
  `link` mediumint(9) NOT NULL DEFAULT '0',
  `author` mediumint(9) NOT NULL DEFAULT '0',
  `category` mediumint(9) NOT NULL DEFAULT '0',
  `excerpt` mediumint(9) NOT NULL DEFAULT '0',
  `taxonomy` mediumint(9) NOT NULL DEFAULT '0',
  `customfield` mediumint(9) NOT NULL DEFAULT '0',
  `mysqlcolumn` mediumint(9) NOT NULL DEFAULT '0',
  `taxonomy_detail` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `customfield_detail` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `mysqlcolumn_detail` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(210) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `item` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lgtlv_relevanssi_log`
--

CREATE TABLE IF NOT EXISTS `lgtlv_relevanssi_log` (
  `id` bigint(9) NOT NULL,
  `query` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` mediumint(9) NOT NULL DEFAULT '0',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `ip` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lgtlv_relevanssi_stopwords`
--

CREATE TABLE IF NOT EXISTS `lgtlv_relevanssi_stopwords` (
  `stopword` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lgtlv_term_relationships`
--

CREATE TABLE IF NOT EXISTS `lgtlv_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lgtlv_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `lgtlv_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lgtlv_termmeta`
--

CREATE TABLE IF NOT EXISTS `lgtlv_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lgtlv_terms`
--

CREATE TABLE IF NOT EXISTS `lgtlv_terms` (
  `term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lgtlv_usermeta`
--

CREATE TABLE IF NOT EXISTS `lgtlv_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lgtlv_users`
--

CREATE TABLE IF NOT EXISTS `lgtlv_users` (
  `ID` bigint(20) unsigned NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lgtlv_wfBadLeechers`
--

CREATE TABLE IF NOT EXISTS `lgtlv_wfBadLeechers` (
  `eMin` int(10) unsigned NOT NULL,
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `hits` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lgtlv_wfBlockedCommentLog`
--

CREATE TABLE IF NOT EXISTS `lgtlv_wfBlockedCommentLog` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `countryCode` varchar(2) NOT NULL,
  `blockCount` int(10) unsigned NOT NULL DEFAULT '0',
  `unixday` int(10) unsigned NOT NULL,
  `blockType` varchar(50) NOT NULL DEFAULT 'gsb'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lgtlv_wfBlockedIPLog`
--

CREATE TABLE IF NOT EXISTS `lgtlv_wfBlockedIPLog` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `countryCode` varchar(2) NOT NULL,
  `blockCount` int(10) unsigned NOT NULL DEFAULT '0',
  `unixday` int(10) unsigned NOT NULL,
  `blockType` varchar(50) NOT NULL DEFAULT 'generic'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lgtlv_wfBlocks`
--

CREATE TABLE IF NOT EXISTS `lgtlv_wfBlocks` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `blockedTime` bigint(20) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `lastAttempt` int(10) unsigned DEFAULT '0',
  `blockedHits` int(10) unsigned DEFAULT '0',
  `wfsn` tinyint(3) unsigned DEFAULT '0',
  `permanent` tinyint(3) unsigned DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lgtlv_wfBlocksAdv`
--

CREATE TABLE IF NOT EXISTS `lgtlv_wfBlocksAdv` (
  `id` int(10) unsigned NOT NULL,
  `blockType` char(2) NOT NULL,
  `blockString` varchar(255) NOT NULL,
  `ctime` int(10) unsigned NOT NULL,
  `reason` varchar(255) NOT NULL,
  `totalBlocked` int(10) unsigned DEFAULT '0',
  `lastBlocked` int(10) unsigned DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lgtlv_wfConfig`
--

CREATE TABLE IF NOT EXISTS `lgtlv_wfConfig` (
  `name` varchar(100) NOT NULL,
  `val` longblob,
  `autoload` enum('no','yes') NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lgtlv_wfCrawlers`
--

CREATE TABLE IF NOT EXISTS `lgtlv_wfCrawlers` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `patternSig` binary(16) NOT NULL,
  `status` char(8) NOT NULL,
  `lastUpdate` int(10) unsigned NOT NULL,
  `PTR` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lgtlv_wfFileMods`
--

CREATE TABLE IF NOT EXISTS `lgtlv_wfFileMods` (
  `filenameMD5` binary(16) NOT NULL,
  `filename` varchar(1000) NOT NULL,
  `knownFile` tinyint(3) unsigned NOT NULL,
  `oldMD5` binary(16) NOT NULL,
  `newMD5` binary(16) NOT NULL,
  `SHAC` binary(32) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `stoppedOnSignature` varchar(255) NOT NULL DEFAULT '',
  `stoppedOnPosition` int(10) unsigned NOT NULL DEFAULT '0',
  `isSafeFile` varchar(1) NOT NULL DEFAULT '?'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lgtlv_wfHits`
--

CREATE TABLE IF NOT EXISTS `lgtlv_wfHits` (
  `id` int(10) unsigned NOT NULL,
  `attackLogTime` double(17,6) unsigned NOT NULL,
  `ctime` double(17,6) unsigned NOT NULL,
  `IP` binary(16) DEFAULT NULL,
  `jsRun` tinyint(4) DEFAULT '0',
  `statusCode` int(11) NOT NULL DEFAULT '200',
  `isGoogle` tinyint(4) NOT NULL,
  `userID` int(10) unsigned NOT NULL,
  `newVisit` tinyint(3) unsigned NOT NULL,
  `URL` text,
  `referer` text,
  `UA` text,
  `action` varchar(64) NOT NULL DEFAULT '',
  `actionDescription` text,
  `actionData` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lgtlv_wfHoover`
--

CREATE TABLE IF NOT EXISTS `lgtlv_wfHoover` (
  `id` int(10) unsigned NOT NULL,
  `owner` text,
  `host` text,
  `path` text,
  `hostKey` varbinary(124) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lgtlv_wfIssues`
--

CREATE TABLE IF NOT EXISTS `lgtlv_wfIssues` (
  `id` int(10) unsigned NOT NULL,
  `time` int(10) unsigned NOT NULL,
  `status` varchar(10) NOT NULL,
  `type` varchar(20) NOT NULL,
  `severity` tinyint(3) unsigned NOT NULL,
  `ignoreP` char(32) NOT NULL,
  `ignoreC` char(32) NOT NULL,
  `shortMsg` varchar(255) NOT NULL,
  `longMsg` text,
  `data` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lgtlv_wfKnownFileList`
--

CREATE TABLE IF NOT EXISTS `lgtlv_wfKnownFileList` (
  `id` int(11) unsigned NOT NULL,
  `path` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lgtlv_wfLeechers`
--

CREATE TABLE IF NOT EXISTS `lgtlv_wfLeechers` (
  `eMin` int(10) unsigned NOT NULL,
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `hits` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lgtlv_wfLockedOut`
--

CREATE TABLE IF NOT EXISTS `lgtlv_wfLockedOut` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `blockedTime` bigint(20) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `lastAttempt` int(10) unsigned DEFAULT '0',
  `blockedHits` int(10) unsigned DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lgtlv_wfLocs`
--

CREATE TABLE IF NOT EXISTS `lgtlv_wfLocs` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `ctime` int(10) unsigned NOT NULL,
  `failed` tinyint(3) unsigned NOT NULL,
  `city` varchar(255) DEFAULT '',
  `region` varchar(255) DEFAULT '',
  `countryName` varchar(255) DEFAULT '',
  `countryCode` char(2) DEFAULT '',
  `lat` float(10,7) DEFAULT '0.0000000',
  `lon` float(10,7) DEFAULT '0.0000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lgtlv_wfLogins`
--

CREATE TABLE IF NOT EXISTS `lgtlv_wfLogins` (
  `id` int(10) unsigned NOT NULL,
  `hitID` int(11) DEFAULT NULL,
  `ctime` double(17,6) unsigned NOT NULL,
  `fail` tinyint(3) unsigned NOT NULL,
  `action` varchar(40) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userID` int(10) unsigned NOT NULL,
  `IP` binary(16) DEFAULT NULL,
  `UA` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lgtlv_wfNet404s`
--

CREATE TABLE IF NOT EXISTS `lgtlv_wfNet404s` (
  `sig` binary(16) NOT NULL,
  `ctime` int(10) unsigned NOT NULL,
  `URI` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lgtlv_wfNotifications`
--

CREATE TABLE IF NOT EXISTS `lgtlv_wfNotifications` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `new` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `category` varchar(255) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '1000',
  `ctime` int(10) unsigned NOT NULL,
  `html` text NOT NULL,
  `links` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lgtlv_wfPendingIssues`
--

CREATE TABLE IF NOT EXISTS `lgtlv_wfPendingIssues` (
  `id` int(10) unsigned NOT NULL,
  `time` int(10) unsigned NOT NULL,
  `status` varchar(10) NOT NULL,
  `type` varchar(20) NOT NULL,
  `severity` tinyint(3) unsigned NOT NULL,
  `ignoreP` char(32) NOT NULL,
  `ignoreC` char(32) NOT NULL,
  `shortMsg` varchar(255) NOT NULL,
  `longMsg` text,
  `data` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lgtlv_wfReverseCache`
--

CREATE TABLE IF NOT EXISTS `lgtlv_wfReverseCache` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `host` varchar(255) NOT NULL,
  `lastUpdate` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lgtlv_wfSNIPCache`
--

CREATE TABLE IF NOT EXISTS `lgtlv_wfSNIPCache` (
  `id` int(10) unsigned NOT NULL,
  `IP` varchar(45) NOT NULL DEFAULT '',
  `expiration` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `body` varchar(255) NOT NULL DEFAULT '',
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  `type` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lgtlv_wfScanners`
--

CREATE TABLE IF NOT EXISTS `lgtlv_wfScanners` (
  `eMin` int(10) unsigned NOT NULL,
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `hits` smallint(5) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lgtlv_wfStatus`
--

CREATE TABLE IF NOT EXISTS `lgtlv_wfStatus` (
  `id` bigint(20) unsigned NOT NULL,
  `ctime` double(17,6) unsigned NOT NULL,
  `level` tinyint(3) unsigned NOT NULL,
  `type` char(5) NOT NULL,
  `msg` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lgtlv_wfThrottleLog`
--

CREATE TABLE IF NOT EXISTS `lgtlv_wfThrottleLog` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `startTime` int(10) unsigned NOT NULL,
  `endTime` int(10) unsigned NOT NULL,
  `timesThrottled` int(10) unsigned NOT NULL,
  `lastReason` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lgtlv_wfVulnScanners`
--

CREATE TABLE IF NOT EXISTS `lgtlv_wfVulnScanners` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `ctime` int(10) unsigned NOT NULL,
  `hits` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lgtlv_yoast_seo_links`
--

CREATE TABLE IF NOT EXISTS `lgtlv_yoast_seo_links` (
  `id` bigint(20) unsigned NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL,
  `target_post_id` bigint(20) unsigned NOT NULL,
  `type` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lgtlv_yoast_seo_meta`
--

CREATE TABLE IF NOT EXISTS `lgtlv_yoast_seo_meta` (
  `object_id` bigint(20) unsigned NOT NULL,
  `internal_link_count` int(10) unsigned DEFAULT NULL,
  `incoming_link_count` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Stand-in structure for view `ref_excl`
--
CREATE TABLE IF NOT EXISTS `ref_excl` (
`id` bigint(20)
,`lidnummer` varchar(11)
,`voornaam` varchar(100)
,`naam` varchar(100)
,`huidig_team` varchar(8)
,`bank_team` varchar(8)
,`excl_date` date
,`excl_date_till` date
,`blessure` tinyint(1)
,`day` varchar(2)
,`time_from` time
,`time_till` time
);

-- --------------------------------------------------------

--
-- Table structure for table `referee`
--

CREATE TABLE IF NOT EXISTS `referee` (
  `id` int(11) NOT NULL,
  `LIDNR` varchar(9) DEFAULT NULL,
  `ZOEKNAAM` varchar(30) DEFAULT NULL,
  `ORGID` int(4) DEFAULT NULL,
  `AWGR` varchar(2) DEFAULT NULL,
  `RATIO` varchar(1) DEFAULT NULL,
  `CATEGORIE` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `referee_audittrail`
--

CREATE TABLE IF NOT EXISTS `referee_audittrail` (
  `id` int(11) NOT NULL,
  `run_id` varchar(10) NOT NULL,
  `run_id_sq` int(11) NOT NULL,
  `poule` varchar(10) NOT NULL,
  `code` varchar(5) NOT NULL,
  `role` varchar(1) NOT NULL,
  `nivo` varchar(1) NOT NULL,
  `wedstrijd` varchar(255) NOT NULL,
  `team` varchar(255) NOT NULL,
  `reden` varchar(255) NOT NULL,
  `ref_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `referee_exclude`
--

CREATE TABLE IF NOT EXISTS `referee_exclude` (
  `id` bigint(20) NOT NULL,
  `lidnummer` varchar(11) NOT NULL,
  `excl_date` date DEFAULT NULL,
  `excl_date_till` date DEFAULT NULL,
  `blessure` tinyint(1) NOT NULL DEFAULT '0',
  `day` varchar(2) DEFAULT NULL,
  `time_from` time DEFAULT NULL,
  `time_till` time DEFAULT NULL,
  `opm` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `referee_planned`
--

CREATE TABLE IF NOT EXISTS `referee_planned` (
  `id` int(11) NOT NULL,
  `ref_id` varchar(20) NOT NULL,
  `poule` varchar(10) NOT NULL,
  `code` char(5) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `role` char(2) NOT NULL,
  `status` smallint(6) DEFAULT '0',
  `run_id` int(11) NOT NULL,
  `run_id_sq` int(11) DEFAULT '0',
  `match_nivo` varchar(1) DEFAULT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `systab`
--

CREATE TABLE IF NOT EXISTS `systab` (
  `id` int(11) NOT NULL,
  `syscode` varchar(10) NOT NULL,
  `key_value` varchar(25) NOT NULL,
  `value` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `team_begeleider`
--

CREATE TABLE IF NOT EXISTS `team_begeleider` (
  `id` int(11) NOT NULL,
  `CODE` varchar(5) NOT NULL,
  `ROLE` varchar(1) DEFAULT NULL,
  `LIDNR` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teamindeling`
--

CREATE TABLE IF NOT EXISTS `teamindeling` (
  `team` varchar(6) NOT NULL DEFAULT '0',
  `lidnummer` varchar(11) NOT NULL DEFAULT '0',
  `naam` varchar(99) NOT NULL DEFAULT '?',
  `rugnummer` smallint(2) NOT NULL DEFAULT '0',
  `geboortedatum` date NOT NULL DEFAULT '0000-00-00',
  `geslacht` char(1) NOT NULL DEFAULT '0',
  `huidig_team` varchar(8) NOT NULL DEFAULT '0',
  `bank_team` varchar(8) DEFAULT '0',
  `dispensatie_team` varchar(8) DEFAULT '0',
  `bank_opgave` varchar(8) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE IF NOT EXISTS `teams` (
  `CODE` varchar(5) NOT NULL DEFAULT '',
  `OMS` varchar(42) DEFAULT NULL,
  `TRAINING` varchar(254) DEFAULT NULL,
  `TRAINER` varchar(100) DEFAULT NULL,
  `COACHE` varchar(100) DEFAULT NULL,
  `POULID` varchar(6) DEFAULT NULL,
  `FOTO` varchar(50) DEFAULT NULL,
  `LINKBOND` varchar(200) DEFAULT NULL,
  `SEIZOEN` varchar(9) NOT NULL,
  `CMP_ID` int(4) DEFAULT NULL,
  `PLG_ID` int(8) DEFAULT NULL,
  `nivo` char(5) NOT NULL DEFAULT 'B'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wedstrijden`
--

CREATE TABLE IF NOT EXISTS `wedstrijden` (
  `datum` varchar(100) NOT NULL DEFAULT '',
  `tijd` varchar(10) DEFAULT NULL,
  `poule` varchar(10) NOT NULL DEFAULT '',
  `thuis` varchar(250) DEFAULT NULL,
  `uit` varchar(250) DEFAULT NULL,
  `uitslag` varchar(250) DEFAULT NULL,
  `accommodatie` varchar(250) DEFAULT NULL,
  `adres` varchar(250) DEFAULT NULL,
  `postcode` varchar(10) DEFAULT NULL,
  `plaats` varchar(250) DEFAULT NULL,
  `veld` varchar(250) DEFAULT NULL,
  `accode` varchar(250) DEFAULT NULL,
  `code` char(5) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL DEFAULT '',
  `naam01` varchar(250) DEFAULT NULL,
  `naam02` varchar(250) DEFAULT NULL,
  `naam03` varchar(250) DEFAULT NULL,
  `naam04` varchar(250) DEFAULT NULL,
  `naam05` varchar(250) DEFAULT NULL,
  `naam06` varchar(250) DEFAULT NULL,
  `naam07` varchar(250) DEFAULT NULL,
  `naam08` varchar(250) DEFAULT NULL,
  `official01` varchar(250) DEFAULT NULL,
  `official02` varchar(250) DEFAULT NULL,
  `official03` varchar(250) DEFAULT NULL,
  `official04` varchar(250) DEFAULT NULL,
  `official05` varchar(250) DEFAULT NULL,
  `official06` varchar(250) DEFAULT NULL,
  `official07` varchar(250) DEFAULT NULL,
  `official08` varchar(250) DEFAULT NULL,
  `orgzn01` varchar(250) DEFAULT NULL,
  `orgzn02` varchar(250) DEFAULT NULL,
  `orgzn03` varchar(250) DEFAULT NULL,
  `orgzn04` varchar(250) DEFAULT NULL,
  `orgzn05` varchar(250) DEFAULT NULL,
  `orgzn06` varchar(250) DEFAULT NULL,
  `mutdatum` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wedstrijden_verplaatst`
--

CREATE TABLE IF NOT EXISTS `wedstrijden_verplaatst` (
  `datum` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `tijd` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `poule` varchar(10) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `thuis` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `uit` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `uitslag` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `accommodatie` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `adres` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `postcode` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `plaats` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `veld` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `accode` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `code` char(3) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `naam01` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `naam02` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `naam03` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `naam04` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `naam05` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `naam06` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `naam07` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `naam08` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `official01` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `official02` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `official03` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `official04` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `official05` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `official06` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `official07` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `official08` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `orgzn01` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `orgzn02` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `orgzn03` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `orgzn04` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `orgzn05` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `orgzn06` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `mutdatum` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure for view `baroverzicht`
--
DROP TABLE IF EXISTS `baroverzicht`;

CREATE ALGORITHM=UNDEFINED DEFINER=`forwodians`@`localhost` SQL SECURITY DEFINER VIEW `baroverzicht` AS select `a`.`datum` AS `datum`,`a`.`tijd` AS `tijd`,`a`.`thuis` AS `thuis`,`a`.`uit` AS `uit`,`c`.`Voornaam` AS `zvoornaam`,`c`.`Tussenvoegsel` AS `ztussenvoegsel`,`c`.`Naam` AS `znaam`,`c`.`Telnr` AS `telnr`,`c`.`mobiel` AS `mobiel`,`b`.`dienst` AS `dienst`,str_to_date(`a`.`datum`,'%d-%m-%Y') AS `dt_datum` from ((`wedstrijden` `a` left join `bardienst` `b` on(((`a`.`poule` = `b`.`poule`) and (convert(`a`.`code` using utf8) = convert(`b`.`code` using utf8))))) left join `leden` `c` on((`b`.`lidnummer` = `c`.`Lidnr`))) where ((str_to_date(`a`.`datum`,'%d-%m-%Y') >= (curdate() - interval 1 day)) and ((`b`.`dienst` < 8) or isnull(`b`.`dienst`)) and (`a`.`accode` = 'VHTSC')) order by str_to_date(`a`.`datum`,'%d-%m-%Y'),`a`.`tijd`;

-- --------------------------------------------------------

--
-- Structure for view `ref_excl`
--
DROP TABLE IF EXISTS `ref_excl`;

CREATE ALGORITHM=UNDEFINED DEFINER=`forwodians`@`localhost` SQL SECURITY DEFINER VIEW `ref_excl` AS select `re`.`id` AS `id`,`ti`.`lidnummer` AS `lidnummer`,`l`.`Voornaam` AS `voornaam`,`l`.`Naam` AS `naam`,`ti`.`huidig_team` AS `huidig_team`,`ti`.`bank_team` AS `bank_team`,`re`.`excl_date` AS `excl_date`,`re`.`excl_date_till` AS `excl_date_till`,`re`.`blessure` AS `blessure`,`re`.`day` AS `day`,`re`.`time_from` AS `time_from`,`re`.`time_till` AS `time_till` from ((`referee_exclude` `re` join `leden` `l` on((`l`.`Lidnr` = convert(`re`.`lidnummer` using utf8)))) join `teamindeling` `ti` on((`l`.`Lidnr` = `ti`.`lidnummer`))) order by `re`.`blessure`,`ti`.`lidnummer`,`re`.`excl_date_till`;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bardienst`
--
ALTER TABLE `bardienst`
  ADD PRIMARY KEY (`id`),
  ADD KEY `poule` (`poule`,`code`),
  ADD KEY `dienst` (`dienst`),
  ADD KEY `lidnummer` (`lidnummer`);

--
-- Indexes for table `chauffeur`
--
ALTER TABLE `chauffeur`
  ADD PRIMARY KEY (`id`),
  ADD KEY `poule` (`poule`,`code`),
  ADD KEY `lidnummer` (`lidnummer1`);

--
-- Indexes for table `leden`
--
ALTER TABLE `leden`
  ADD PRIMARY KEY (`Lidnr`);

--
-- Indexes for table `lgtlv_aiowps_events`
--
ALTER TABLE `lgtlv_aiowps_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lgtlv_aiowps_failed_logins`
--
ALTER TABLE `lgtlv_aiowps_failed_logins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lgtlv_aiowps_global_meta`
--
ALTER TABLE `lgtlv_aiowps_global_meta`
  ADD PRIMARY KEY (`meta_id`);

--
-- Indexes for table `lgtlv_aiowps_login_activity`
--
ALTER TABLE `lgtlv_aiowps_login_activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lgtlv_aiowps_login_lockdown`
--
ALTER TABLE `lgtlv_aiowps_login_lockdown`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lgtlv_aiowps_permanent_block`
--
ALTER TABLE `lgtlv_aiowps_permanent_block`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lgtlv_commentmeta`
--
ALTER TABLE `lgtlv_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `lgtlv_comments`
--
ALTER TABLE `lgtlv_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `lgtlv_contactformmaker`
--
ALTER TABLE `lgtlv_contactformmaker`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lgtlv_contactformmaker_blocked`
--
ALTER TABLE `lgtlv_contactformmaker_blocked`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lgtlv_contactformmaker_submits`
--
ALTER TABLE `lgtlv_contactformmaker_submits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lgtlv_contactformmaker_themes`
--
ALTER TABLE `lgtlv_contactformmaker_themes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lgtlv_contactformmaker_views`
--
ALTER TABLE `lgtlv_contactformmaker_views`
  ADD PRIMARY KEY (`form_id`);

--
-- Indexes for table `lgtlv_ewwwio_images`
--
ALTER TABLE `lgtlv_ewwwio_images`
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `path_image_size` (`path`(191),`image_size`),
  ADD KEY `attachment_info` (`gallery`(3),`attachment_id`);

--
-- Indexes for table `lgtlv_formmaker`
--
ALTER TABLE `lgtlv_formmaker`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lgtlv_formmaker_backup`
--
ALTER TABLE `lgtlv_formmaker_backup`
  ADD PRIMARY KEY (`backup_id`);

--
-- Indexes for table `lgtlv_formmaker_blocked`
--
ALTER TABLE `lgtlv_formmaker_blocked`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lgtlv_formmaker_display_options`
--
ALTER TABLE `lgtlv_formmaker_display_options`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `form_id` (`form_id`);

--
-- Indexes for table `lgtlv_formmaker_query`
--
ALTER TABLE `lgtlv_formmaker_query`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lgtlv_formmaker_sessions`
--
ALTER TABLE `lgtlv_formmaker_sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lgtlv_formmaker_submits`
--
ALTER TABLE `lgtlv_formmaker_submits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lgtlv_formmaker_themes`
--
ALTER TABLE `lgtlv_formmaker_themes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lgtlv_formmaker_views`
--
ALTER TABLE `lgtlv_formmaker_views`
  ADD PRIMARY KEY (`form_id`);

--
-- Indexes for table `lgtlv_links`
--
ALTER TABLE `lgtlv_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `lgtlv_options`
--
ALTER TABLE `lgtlv_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `lgtlv_postmeta`
--
ALTER TABLE `lgtlv_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `lgtlv_posts`
--
ALTER TABLE `lgtlv_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `lgtlv_relevanssi`
--
ALTER TABLE `lgtlv_relevanssi`
  ADD UNIQUE KEY `doctermitem` (`doc`,`term`,`item`),
  ADD KEY `terms` (`term`(20)),
  ADD KEY `relevanssi_term_reverse_idx` (`term_reverse`(10)),
  ADD KEY `docs` (`doc`),
  ADD KEY `typeitem` (`type`(191),`item`);

--
-- Indexes for table `lgtlv_relevanssi_log`
--
ALTER TABLE `lgtlv_relevanssi_log`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `lgtlv_relevanssi_stopwords`
--
ALTER TABLE `lgtlv_relevanssi_stopwords`
  ADD UNIQUE KEY `stopword` (`stopword`);

--
-- Indexes for table `lgtlv_term_relationships`
--
ALTER TABLE `lgtlv_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `lgtlv_term_taxonomy`
--
ALTER TABLE `lgtlv_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `lgtlv_termmeta`
--
ALTER TABLE `lgtlv_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `lgtlv_terms`
--
ALTER TABLE `lgtlv_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `lgtlv_usermeta`
--
ALTER TABLE `lgtlv_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `lgtlv_users`
--
ALTER TABLE `lgtlv_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `lgtlv_wfBadLeechers`
--
ALTER TABLE `lgtlv_wfBadLeechers`
  ADD PRIMARY KEY (`eMin`,`IP`);

--
-- Indexes for table `lgtlv_wfBlockedCommentLog`
--
ALTER TABLE `lgtlv_wfBlockedCommentLog`
  ADD PRIMARY KEY (`IP`,`unixday`,`blockType`);

--
-- Indexes for table `lgtlv_wfBlockedIPLog`
--
ALTER TABLE `lgtlv_wfBlockedIPLog`
  ADD PRIMARY KEY (`IP`,`unixday`,`blockType`);

--
-- Indexes for table `lgtlv_wfBlocks`
--
ALTER TABLE `lgtlv_wfBlocks`
  ADD PRIMARY KEY (`IP`),
  ADD KEY `k1` (`wfsn`);

--
-- Indexes for table `lgtlv_wfBlocksAdv`
--
ALTER TABLE `lgtlv_wfBlocksAdv`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lgtlv_wfConfig`
--
ALTER TABLE `lgtlv_wfConfig`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `lgtlv_wfCrawlers`
--
ALTER TABLE `lgtlv_wfCrawlers`
  ADD PRIMARY KEY (`IP`,`patternSig`);

--
-- Indexes for table `lgtlv_wfFileMods`
--
ALTER TABLE `lgtlv_wfFileMods`
  ADD PRIMARY KEY (`filenameMD5`);

--
-- Indexes for table `lgtlv_wfHits`
--
ALTER TABLE `lgtlv_wfHits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `k1` (`ctime`),
  ADD KEY `k2` (`IP`,`ctime`),
  ADD KEY `attackLogTime` (`attackLogTime`);

--
-- Indexes for table `lgtlv_wfHoover`
--
ALTER TABLE `lgtlv_wfHoover`
  ADD PRIMARY KEY (`id`),
  ADD KEY `k2` (`hostKey`);

--
-- Indexes for table `lgtlv_wfIssues`
--
ALTER TABLE `lgtlv_wfIssues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lgtlv_wfKnownFileList`
--
ALTER TABLE `lgtlv_wfKnownFileList`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lgtlv_wfLeechers`
--
ALTER TABLE `lgtlv_wfLeechers`
  ADD PRIMARY KEY (`eMin`,`IP`);

--
-- Indexes for table `lgtlv_wfLockedOut`
--
ALTER TABLE `lgtlv_wfLockedOut`
  ADD PRIMARY KEY (`IP`);

--
-- Indexes for table `lgtlv_wfLocs`
--
ALTER TABLE `lgtlv_wfLocs`
  ADD PRIMARY KEY (`IP`);

--
-- Indexes for table `lgtlv_wfLogins`
--
ALTER TABLE `lgtlv_wfLogins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `k1` (`IP`,`fail`),
  ADD KEY `hitID` (`hitID`);

--
-- Indexes for table `lgtlv_wfNet404s`
--
ALTER TABLE `lgtlv_wfNet404s`
  ADD PRIMARY KEY (`sig`),
  ADD KEY `k1` (`ctime`);

--
-- Indexes for table `lgtlv_wfNotifications`
--
ALTER TABLE `lgtlv_wfNotifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lgtlv_wfPendingIssues`
--
ALTER TABLE `lgtlv_wfPendingIssues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lgtlv_wfReverseCache`
--
ALTER TABLE `lgtlv_wfReverseCache`
  ADD PRIMARY KEY (`IP`);

--
-- Indexes for table `lgtlv_wfSNIPCache`
--
ALTER TABLE `lgtlv_wfSNIPCache`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expiration` (`expiration`),
  ADD KEY `IP` (`IP`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `lgtlv_wfScanners`
--
ALTER TABLE `lgtlv_wfScanners`
  ADD PRIMARY KEY (`eMin`,`IP`);

--
-- Indexes for table `lgtlv_wfStatus`
--
ALTER TABLE `lgtlv_wfStatus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `k1` (`ctime`),
  ADD KEY `k2` (`type`);

--
-- Indexes for table `lgtlv_wfThrottleLog`
--
ALTER TABLE `lgtlv_wfThrottleLog`
  ADD PRIMARY KEY (`IP`),
  ADD KEY `k2` (`endTime`);

--
-- Indexes for table `lgtlv_wfVulnScanners`
--
ALTER TABLE `lgtlv_wfVulnScanners`
  ADD PRIMARY KEY (`IP`);

--
-- Indexes for table `lgtlv_yoast_seo_links`
--
ALTER TABLE `lgtlv_yoast_seo_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_direction` (`post_id`,`type`);

--
-- Indexes for table `lgtlv_yoast_seo_meta`
--
ALTER TABLE `lgtlv_yoast_seo_meta`
  ADD UNIQUE KEY `object_id` (`object_id`);

--
-- Indexes for table `referee`
--
ALTER TABLE `referee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `referee_audittrail`
--
ALTER TABLE `referee_audittrail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `referee_exclude`
--
ALTER TABLE `referee_exclude`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `referee_planned`
--
ALTER TABLE `referee_planned`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role` (`role`);

--
-- Indexes for table `systab`
--
ALTER TABLE `systab`
  ADD PRIMARY KEY (`id`),
  ADD KEY `syscode` (`syscode`);

--
-- Indexes for table `team_begeleider`
--
ALTER TABLE `team_begeleider`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `team_begeleider_LIDNR_idx` (`LIDNR`),
  ADD KEY `CODE` (`CODE`);

--
-- Indexes for table `teamindeling`
--
ALTER TABLE `teamindeling`
  ADD PRIMARY KEY (`lidnummer`),
  ADD KEY `naam` (`naam`),
  ADD KEY `team` (`team`),
  ADD KEY `bank` (`bank_team`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`CODE`),
  ADD UNIQUE KEY `CMP_ID` (`CMP_ID`);

--
-- Indexes for table `wedstrijden`
--
ALTER TABLE `wedstrijden`
  ADD PRIMARY KEY (`poule`,`code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bardienst`
--
ALTER TABLE `bardienst`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `chauffeur`
--
ALTER TABLE `chauffeur`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lgtlv_aiowps_events`
--
ALTER TABLE `lgtlv_aiowps_events`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lgtlv_aiowps_failed_logins`
--
ALTER TABLE `lgtlv_aiowps_failed_logins`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lgtlv_aiowps_global_meta`
--
ALTER TABLE `lgtlv_aiowps_global_meta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lgtlv_aiowps_login_activity`
--
ALTER TABLE `lgtlv_aiowps_login_activity`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lgtlv_aiowps_login_lockdown`
--
ALTER TABLE `lgtlv_aiowps_login_lockdown`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lgtlv_aiowps_permanent_block`
--
ALTER TABLE `lgtlv_aiowps_permanent_block`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lgtlv_commentmeta`
--
ALTER TABLE `lgtlv_commentmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lgtlv_comments`
--
ALTER TABLE `lgtlv_comments`
  MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lgtlv_contactformmaker`
--
ALTER TABLE `lgtlv_contactformmaker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lgtlv_contactformmaker_blocked`
--
ALTER TABLE `lgtlv_contactformmaker_blocked`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lgtlv_contactformmaker_submits`
--
ALTER TABLE `lgtlv_contactformmaker_submits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lgtlv_contactformmaker_themes`
--
ALTER TABLE `lgtlv_contactformmaker_themes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lgtlv_ewwwio_images`
--
ALTER TABLE `lgtlv_ewwwio_images`
  MODIFY `id` int(14) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lgtlv_formmaker`
--
ALTER TABLE `lgtlv_formmaker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lgtlv_formmaker_backup`
--
ALTER TABLE `lgtlv_formmaker_backup`
  MODIFY `backup_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lgtlv_formmaker_blocked`
--
ALTER TABLE `lgtlv_formmaker_blocked`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lgtlv_formmaker_display_options`
--
ALTER TABLE `lgtlv_formmaker_display_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lgtlv_formmaker_query`
--
ALTER TABLE `lgtlv_formmaker_query`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lgtlv_formmaker_sessions`
--
ALTER TABLE `lgtlv_formmaker_sessions`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lgtlv_formmaker_submits`
--
ALTER TABLE `lgtlv_formmaker_submits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lgtlv_formmaker_themes`
--
ALTER TABLE `lgtlv_formmaker_themes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lgtlv_links`
--
ALTER TABLE `lgtlv_links`
  MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lgtlv_options`
--
ALTER TABLE `lgtlv_options`
  MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lgtlv_postmeta`
--
ALTER TABLE `lgtlv_postmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lgtlv_posts`
--
ALTER TABLE `lgtlv_posts`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lgtlv_relevanssi_log`
--
ALTER TABLE `lgtlv_relevanssi_log`
  MODIFY `id` bigint(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lgtlv_term_taxonomy`
--
ALTER TABLE `lgtlv_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lgtlv_termmeta`
--
ALTER TABLE `lgtlv_termmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lgtlv_terms`
--
ALTER TABLE `lgtlv_terms`
  MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lgtlv_usermeta`
--
ALTER TABLE `lgtlv_usermeta`
  MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lgtlv_users`
--
ALTER TABLE `lgtlv_users`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lgtlv_wfBlocksAdv`
--
ALTER TABLE `lgtlv_wfBlocksAdv`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lgtlv_wfHits`
--
ALTER TABLE `lgtlv_wfHits`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lgtlv_wfHoover`
--
ALTER TABLE `lgtlv_wfHoover`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lgtlv_wfIssues`
--
ALTER TABLE `lgtlv_wfIssues`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lgtlv_wfKnownFileList`
--
ALTER TABLE `lgtlv_wfKnownFileList`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lgtlv_wfLogins`
--
ALTER TABLE `lgtlv_wfLogins`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lgtlv_wfPendingIssues`
--
ALTER TABLE `lgtlv_wfPendingIssues`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lgtlv_wfSNIPCache`
--
ALTER TABLE `lgtlv_wfSNIPCache`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lgtlv_wfStatus`
--
ALTER TABLE `lgtlv_wfStatus`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lgtlv_yoast_seo_links`
--
ALTER TABLE `lgtlv_yoast_seo_links`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `referee`
--
ALTER TABLE `referee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `referee_audittrail`
--
ALTER TABLE `referee_audittrail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `referee_exclude`
--
ALTER TABLE `referee_exclude`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `referee_planned`
--
ALTER TABLE `referee_planned`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `systab`
--
ALTER TABLE `systab`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `team_begeleider`
--
ALTER TABLE `team_begeleider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
