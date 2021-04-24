-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 23, 2021 at 09:02 AM
-- Server version: 10.3.24-MariaDB
-- PHP Version: 7.3.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bub36947_trasuabubo`
--

-- --------------------------------------------------------

--
-- Table structure for table `3kuF9kxQ_actionscheduler_actions`
--

CREATE TABLE `3kuF9kxQ_actionscheduler_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `hook` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scheduled_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `last_attempt_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `3kuF9kxQ_actionscheduler_claims`
--

CREATE TABLE `3kuF9kxQ_actionscheduler_claims` (
  `claim_id` bigint(20) UNSIGNED NOT NULL,
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `3kuF9kxQ_actionscheduler_groups`
--

CREATE TABLE `3kuF9kxQ_actionscheduler_groups` (
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `3kuF9kxQ_actionscheduler_groups`
--

INSERT INTO `3kuF9kxQ_actionscheduler_groups` (`group_id`, `slug`) VALUES
(1, 'action-scheduler-migration'),
(2, 'wc-admin-data');

-- --------------------------------------------------------

--
-- Table structure for table `3kuF9kxQ_actionscheduler_logs`
--

CREATE TABLE `3kuF9kxQ_actionscheduler_logs` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `3kuF9kxQ_commentmeta`
--

CREATE TABLE `3kuF9kxQ_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `3kuF9kxQ_commentmeta`
--

INSERT INTO `3kuF9kxQ_commentmeta` (`meta_id`, `comment_id`, `meta_key`, `meta_value`) VALUES
(5, 16, 'rating', '5'),
(6, 16, 'verified', '1');

-- --------------------------------------------------------

--
-- Table structure for table `3kuF9kxQ_comments`
--

CREATE TABLE `3kuF9kxQ_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `3kuF9kxQ_comments`
--

INSERT INTO `3kuF9kxQ_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(3, 250, 'WooCommerce', 'woocommerce@bubotea.eu', '', '', '2020-12-19 01:05:45', '2020-12-19 01:05:45', 'Thực hiện thanh toán khi giao hàng Trạng thái đơn hàng đã được chuyển từ Chờ thanh toán sang Đang xử lý.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(4, 251, 'WooCommerce', 'woocommerce@bubotea.eu', '', '', '2020-12-19 01:09:24', '2020-12-19 01:09:24', 'Thực hiện thanh toán khi giao hàng Trạng thái đơn hàng đã được chuyển từ Chờ thanh toán sang Đang xử lý.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(5, 292, 'WooCommerce', 'woocommerce@bubotea.eu', '', '', '2020-12-19 11:14:00', '2020-12-19 11:14:00', 'Thực hiện thanh toán khi giao hàng Trạng thái đơn hàng đã được chuyển từ Chờ thanh toán sang Đang xử lý.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(6, 293, 'WooCommerce', 'woocommerce@bubotea.eu', '', '', '2020-12-19 11:14:56', '2020-12-19 11:14:56', 'Thực hiện thanh toán khi giao hàng Trạng thái đơn hàng đã được chuyển từ Chờ thanh toán sang Đang xử lý.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(7, 251, 'trasua', 'hungthai56@gmail.com', '', '', '2020-12-19 11:15:22', '2020-12-19 11:15:22', 'Trạng thái đơn hàng đã được chuyển từ Đang xử lý sang Đã hoàn thành.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(8, 327, 'WooCommerce', 'woocommerce@bubotea.eu', '', '', '2020-12-20 02:17:34', '2020-12-20 02:17:34', 'Thực hiện thanh toán khi giao hàng Trạng thái đơn hàng đã được chuyển từ Chờ thanh toán sang Đang xử lý.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(9, 327, 'trasua', 'hungthai56@gmail.com', '', '', '2020-12-21 14:08:53', '2020-12-21 14:08:53', 'Trạng thái đơn hàng đã được chuyển từ Đang xử lý sang Đã hoàn thành.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(10, 400, 'WooCommerce', 'woocommerce@bubotea.eu', '', '', '2020-12-22 10:23:35', '2020-12-22 10:23:35', 'Thực hiện thanh toán khi giao hàng Trạng thái đơn hàng đã được chuyển từ Chờ thanh toán sang Đang xử lý.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(11, 401, 'WooCommerce', 'woocommerce@bubotea.eu', '', '', '2020-12-22 10:27:47', '2020-12-22 10:27:47', 'Thực hiện thanh toán khi giao hàng Trạng thái đơn hàng đã được chuyển từ Chờ thanh toán sang Đang xử lý.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(12, 401, 'trasua', 'hungthai56@gmail.com', '', '', '2020-12-22 10:30:24', '2020-12-22 10:30:24', 'Trạng thái đơn hàng đã được chuyển từ Đang xử lý sang Đã hoàn thành.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(13, 402, 'WooCommerce', 'woocommerce@bubotea.eu', '', '', '2020-12-22 10:44:01', '2020-12-22 10:44:01', 'Thực hiện thanh toán khi giao hàng Trạng thái đơn hàng đã được chuyển từ Chờ thanh toán sang Đang xử lý.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(14, 403, 'WooCommerce', 'woocommerce@bubotea.eu', '', '', '2020-12-22 10:52:55', '2020-12-22 10:52:55', 'Thực hiện thanh toán khi giao hàng Trạng thái đơn hàng đã được chuyển từ Chờ thanh toán sang Đang xử lý.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(16, 88, 'trasua', 'hungthai56@gmail.com', 'http://localhost/trasua', '171.238.156.47', '2020-12-28 08:20:06', '2020-12-28 08:20:06', 'trà sữa ngon', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'review', 0, 1),
(17, 477, 'WooCommerce', 'woocommerce@bubotea.eu', '', '', '2021-01-06 04:08:17', '2021-01-06 04:08:17', 'Thực hiện thanh toán khi giao hàng Trạng thái đơn hàng đã được chuyển từ Chờ thanh toán sang Đang xử lý.', 0, '1', 'WooCommerce', 'order_note', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `3kuF9kxQ_db7_forms`
--

CREATE TABLE `3kuF9kxQ_db7_forms` (
  `form_id` bigint(20) NOT NULL,
  `form_post_id` bigint(20) NOT NULL,
  `form_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `form_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `3kuF9kxQ_links`
--

CREATE TABLE `3kuF9kxQ_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `3kuF9kxQ_mo_openid_linked_user`
--

CREATE TABLE `3kuF9kxQ_mo_openid_linked_user` (
  `id` mediumint(9) NOT NULL,
  `linked_social_app` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `linked_email` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `identifier` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `3kuF9kxQ_options`
--

CREATE TABLE `3kuF9kxQ_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `3kuF9kxQ_options`
--

INSERT INTO `3kuF9kxQ_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'https://annamite.vn', 'yes'),
(2, 'home', 'https://annamite.vn', 'yes'),
(3, 'blogname', 'Bubo Tea', 'yes'),
(4, 'blogdescription', 'Thương hiệu trà sữa hàng đầu', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'hungthai56@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:5:{i:0;s:74:\"/var/www/vhosts/bubotea.com/httpdocs/wp-content/themes/flatsome/header.php\";i:1;s:74:\"/var/www/vhosts/bubotea.com/httpdocs/wp-content/themes/flatsome/footer.php\";i:2;s:77:\"/var/www/vhosts/bubotea.com/httpdocs/wp-content/themes/flatsome/functions.php\";i:3;s:73:\"/var/www/vhosts/bubotea.com/httpdocs/wp-content/themes/flatsome/style.css\";i:4;s:76:\"/var/www/vhosts/bubotea.eu/httpdocs/wp-content/themes/flatsome/functions.php\";}', 'no'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '47018', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:2:{s:29:\"easy-wp-smtp/easy-wp-smtp.php\";s:17:\"swpsmtp_uninstall\";s:27:\"wp-optimize/wp-optimize.php\";s:21:\"wpo_uninstall_actions\";}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '6', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '379', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, '3kuF9kxQ_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1623742255', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'initial_db_version', '49752', 'yes'),
(99, '3kuF9kxQ_user_roles', 'a:8:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:116:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:10:\"loco_admin\";b:1;s:12:\"cfdb7_access\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:10:\"translator\";a:2:{s:4:\"name\";s:10:\"Translator\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:10:\"loco_admin\";b:1;}}}', 'yes'),
(100, 'fresh_site', '0', 'yes'),
(101, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'sidebars_widgets', 'a:7:{s:19:\"wp_inactive_widgets\";a:2:{i:0;s:32:\"woocommerce_product_categories-3\";i:1;s:27:\"woocommerce_rating_filter-3\";}s:12:\"sidebar-main\";a:4:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:25:\"woocommerce_widget_cart-2\";}s:16:\"sidebar-footer-1\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}s:16:\"sidebar-footer-2\";a:0:{}s:12:\"shop-sidebar\";a:2:{i:0;s:38:\"woocommerce_recently_viewed_products-3\";i:1;s:22:\"woocommerce_products-5\";}s:15:\"product-sidebar\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(107, 'cron', 'a:20:{i:1619143083;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1619143085;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1619143832;a:1:{s:34:\"yith_wcwl_delete_expired_wishlists\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1619144849;a:1:{s:33:\"wc_admin_process_orders_milestone\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1619144855;a:1:{s:29:\"wc_admin_unsnooze_admin_notes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1619145055;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1619152848;a:2:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1619163055;a:4:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1619163062;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1619163063;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1619163638;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1619168788;a:1:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1619170049;a:1:{s:14:\"wc_admin_daily\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1619174438;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1619175777;a:1:{s:21:\"ai1wm_storage_cleanup\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1619222400;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1619298328;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1619420399;a:1:{s:21:\"wpo_weekly_cron_tasks\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1620189698;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:11:\"fifteendays\";s:4:\"args\";a:0:{}s:8:\"interval\";i:1296000;}}}s:7:\"version\";i:2;}', 'yes'),
(108, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'recovery_keys', 'a:0:{}', 'yes'),
(122, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1608190397;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(146, 'finished_updating_comment_type', '1', 'yes'),
(149, 'current_theme', 'Flatsome', 'yes'),
(150, 'theme_mods_flatsome', 'a:111:{s:11:\"custom_logo\";i:223;s:17:\"flatsome_fallback\";i:1;s:20:\"topbar_elements_left\";a:1:{i:0;s:4:\"html\";}s:21:\"topbar_elements_right\";a:1:{i:0;s:6:\"html-2\";}s:20:\"header_elements_left\";a:0:{}s:21:\"header_elements_right\";a:7:{i:0;s:3:\"nav\";i:1;s:9:\"divider_2\";i:2;s:7:\"account\";i:3;s:7:\"divider\";i:4;s:4:\"cart\";i:5;s:9:\"divider_3\";i:6;s:8:\"wishlist\";}s:27:\"header_elements_bottom_left\";a:0:{}s:29:\"header_elements_bottom_center\";a:0:{}s:28:\"header_elements_bottom_right\";a:0:{}s:27:\"header_mobile_elements_left\";a:0:{}s:28:\"header_mobile_elements_right\";a:2:{i:0;s:9:\"menu-icon\";i:1;s:4:\"cart\";}s:26:\"header_mobile_elements_top\";a:1:{i:0;s:6:\"html-2\";}s:14:\"mobile_sidebar\";a:5:{i:0;s:11:\"search-form\";i:1;s:3:\"nav\";i:2;s:7:\"account\";i:3;s:6:\"social\";i:4;s:6:\"html-3\";}s:14:\"product_layout\";s:13:\"stacked-right\";s:23:\"payment_icons_placement\";s:6:\"footer\";s:14:\"follow_twitter\";s:0:\"\";s:15:\"follow_facebook\";s:41:\"https://www.facebook.com/BuBotea.official\";s:16:\"follow_instagram\";s:0:\"\";s:12:\"follow_email\";s:15:\"info@bubotea.nl\";s:16:\"flatsome_version\";i:3;s:24:\"portfolio_archive_filter\";s:4:\"left\";s:13:\"type_headings\";a:5:{s:11:\"font-family\";s:6:\"Roboto\";s:7:\"variant\";s:3:\"700\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";i:700;s:10:\"font-style\";s:6:\"normal\";}s:10:\"type_texts\";a:5:{s:11:\"font-family\";s:6:\"Roboto\";s:7:\"variant\";s:7:\"regular\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";i:400;s:10:\"font-style\";s:6:\"normal\";}s:8:\"type_nav\";a:5:{s:11:\"font-family\";s:6:\"Roboto\";s:7:\"variant\";s:3:\"700\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";i:700;s:10:\"font-style\";s:6:\"normal\";}s:8:\"type_alt\";a:2:{s:11:\"font-family\";s:14:\"Dancing Script\";s:7:\"variant\";s:3:\"400\";}s:14:\"pages_template\";s:7:\"default\";s:11:\"site_loader\";s:0:\"\";s:19:\"flatsome_db_version\";s:6:\"3.13.1\";s:7:\"backups\";N;s:9:\"smof_init\";s:31:\"Tue, 22 Dec 2020 03:10:48 +0000\";s:19:\"html_scripts_header\";s:0:\"\";s:19:\"html_scripts_footer\";s:0:\"\";s:23:\"html_scripts_after_body\";s:0:\"\";s:24:\"html_scripts_before_body\";s:0:\"\";s:15:\"html_custom_css\";s:1956:\"p{\n		margin:0\n}\n.title-butotea>.section-title{\n		border-bottom: 0px\n}\n.title-butotea>.section-title>span{\n		border-bottom:0\n}\n.add-to-cart-button>a{\n		padding: 10px;\n		background: #555555 !important;\n		border: #c9d5bd !important;\n		color: #fff !important;\n		box-shadow: 0px 0px 1px 0px;\n		width: 100%\n}\n.add-to-cart-button>a:hover{\n		box-shadow: 1px 1px 3px 0px !important;\n}\n\n}\n.product-design>div>div>div>.box-image{\n		box-shadow: 5px 5px 5px !important\n}\n.bubotea-blog>div>div>div>.col-inner{\n		background: #fbfefb;\n		padding: 10px;\n		box-shadow: 1px 2px 5px 0px\n}\n.blog-bubotea>div>div>a>div>.box-text{\n		padding-bottom: 0 !important\n}\n.blog-bubotea>div>div>a>div>div>div>h5{\n		color: #a3b8a2 !important\n}\n.bubotea-blog>div>div>div>div>a>div>div>div>h5{\n		color: #a3b8a2 !important\n}\n.col-right{\n		background: #a3b8a2;\n		height: 345px\n}\n.col-right>.col-inner{\n		margin-top: 8%;\n}\n.text-white>ul>li>span>a{\n		color: #fff\n}\n.text-left-none{\n		font-family: Fontedit3;\n		font-weight: 600;\n}\n.text-left-none{\n		font-size: 50px !important;\n}\n.title-bubotea{\n		font-family: Fontedit4;\n		font-size: 120px !important;\n		color: #a3b8a2;\n}\n.contact-link p{\n		background: #a3b8a2;\n		color: #fff;\n}\n.row-border>.col-inner{\n		border: 1px solid #a3b8a2;\n		padding: 10px;\n		box-shadow: 2px 1px 5px 2px;\n}\n.link-hot p{\n		letter-spacing: 3px;\n		font-size: 25px\n}\n.text-image>p{\n		font-weight: bold\n}\n.text-green p{\n		color: #18442b;\n		font-weight: 600\n}\n.text-milk p{\n		font-weight: 600\n}\n.product-design>div>div>div>.box-image{\n		box-shadow: 2px 2px 5px 2px\n}\n.font-text-change{\n		font-family: Fontedit5;\n}\n.font-text-change p{\n		font-size: 24px;\n		font-weight: 100 !important\n}\n.bullet-arrow a{\n		color: #000 !important\n}\n.icon-footer i{\n		margin-left: 10px;\n		margin-right: 5px;\n		margin-top: 30px;\n}\n.woocommerce-terms-and-conditions-link:after{\n		content: \" chính sách bảo mật thông tin\";\n}\n.woocommerce-terms-and-conditions-link{\n		box-shadow: 0 1px blue;\n}\";s:22:\"html_custom_css_tablet\";s:237:\".text-left-none{\n		font-size: 40px !important;\n		margin-bottom: -10px\n}\n.title-bubotea{\n		font-family: Fontedit4;\n		font-size: 80px !important;\n		color: #a3b8a2;\n}\n.text-milk >p{\n		padding: 10px !important\n}\n.col-right{\n		height: 100%;\n}\";s:22:\"html_custom_css_mobile\";s:283:\".text-left-none{\n		font-size: 30px !important;\n}\n.title-bubotea{\n		font-family: Fontedit4;\n		font-size: 50px !important;\n		color: #a3b8a2;\n}\n#col-1278087151 > .col-inner{\n		margin: 0 !important\n}\n.col-right{\n		height: 100%;\n}\n.col-margin-bot>.col-inner{\n		    margin: 0 !important;\n}\";s:17:\"perf_instant_page\";i:0;s:21:\"lazy_load_backgrounds\";i:1;s:16:\"lazy_load_images\";i:0;s:26:\"flatsome_disable_style_css\";i:0;s:13:\"disable_emoji\";i:0;s:16:\"disable_blockcss\";i:0;s:14:\"jquery_migrate\";i:0;s:17:\"site_loader_color\";s:5:\"light\";s:14:\"site_loader_bg\";s:0:\"\";s:11:\"live_search\";i:1;s:18:\"search_placeholder\";s:0:\"\";s:13:\"search_result\";i:1;s:19:\"search_result_style\";s:6:\"slider\";s:24:\"search_products_order_by\";s:9:\"relevance\";s:13:\"search_by_sku\";i:0;s:21:\"search_by_product_tag\";i:0;s:14:\"google_map_api\";s:0:\"\";s:16:\"maintenance_mode\";i:0;s:29:\"maintenance_mode_admin_notice\";i:1;s:21:\"maintenance_mode_page\";i:0;s:21:\"maintenance_mode_text\";s:24:\"Please check back soon..\";s:9:\"404_block\";i:0;s:15:\"disable_reviews\";i:0;s:27:\"product_gallery_woocommerce\";i:0;s:14:\"html_shop_page\";s:0:\"\";s:9:\"tab_title\";s:0:\"\";s:11:\"tab_content\";s:0:\"\";s:23:\"html_before_add_to_cart\";s:1:\" \";s:22:\"html_after_add_to_cart\";s:0:\"\";s:14:\"html_thank_you\";s:0:\"\";s:12:\"catalog_mode\";i:0;s:19:\"catalog_mode_prices\";i:0;s:19:\"catalog_mode_header\";s:0:\"\";s:20:\"catalog_mode_product\";s:0:\"\";s:21:\"catalog_mode_lightbox\";s:0:\"\";s:24:\"flatsome_infinite_scroll\";i:0;s:27:\"infinite_scroll_loader_type\";s:7:\"spinner\";s:26:\"infinite_scroll_loader_img\";s:0:\"\";s:18:\"custom_css_post_id\";i:-1;s:12:\"footer_block\";s:6:\"footer\";s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:18:\"account_icon_style\";s:4:\"fill\";s:20:\"header_account_title\";b:0;s:15:\"cart_icon_style\";s:4:\"fill\";s:17:\"header_cart_title\";b:0;s:9:\"site_logo\";s:55:\"https://bubotea.com/wp-content/uploads/2021/02/LOGO.png\";s:11:\"topbar_show\";b:1;s:13:\"payment_icons\";a:0:{}s:8:\"nav_size\";s:0:\"\";s:10:\"logo_width\";s:3:\"145\";s:12:\"logo_padding\";s:1:\"6\";s:18:\"social_icons_style\";s:5:\"small\";s:13:\"color_primary\";s:7:\"#a3b8a2\";s:16:\"type_size_mobile\";s:3:\"100\";s:10:\"grid_style\";s:5:\"grid2\";s:15:\"category_shadow\";s:1:\"0\";s:21:\"category_shadow_hover\";s:1:\"0\";s:16:\"add_to_cart_icon\";s:6:\"button\";s:18:\"disable_quick_view\";b:0;s:20:\"equalize_product_box\";b:1;s:21:\"product_next_prev_nav\";b:0;s:19:\"product_image_width\";s:1:\"5\";s:19:\"product_image_style\";s:6:\"normal\";s:17:\"cart_auto_refresh\";b:1;s:26:\"cart_boxed_shipping_labels\";b:0;s:19:\"wishlist_icon_style\";s:4:\"fill\";s:14:\"wishlist_title\";b:0;s:13:\"header_height\";s:2:\"90\";s:11:\"topbar_left\";s:80:\"<strong class=\"uppercase\">Chào mừng bạn đã đến với bubo tea</strong>\";s:12:\"topbar_right\";s:2739:\"<!-- GTranslate: https://gtranslate.io/ -->\n<a href=\"#\" onclick=\"doGTranslate(\'vi|nl\');return false;\" title=\"Dutch\" class=\"glink nturl notranslate\"><img src=\"//bubotea.com/wp-content/plugins/gtranslate/flags/24/nl.png\" height=\"24\" width=\"24\" alt=\"Dutch\" /></a><a href=\"#\" onclick=\"doGTranslate(\'vi|en\');return false;\" title=\"English\" class=\"glink nturl notranslate\"><img src=\"//bubotea.com/wp-content/plugins/gtranslate/flags/24/en.png\" height=\"24\" width=\"24\" alt=\"English\" /></a><a href=\"#\" onclick=\"doGTranslate(\'vi|de\');return false;\" title=\"German\" class=\"glink nturl notranslate\"><img src=\"//bubotea.com/wp-content/plugins/gtranslate/flags/24/de.png\" height=\"24\" width=\"24\" alt=\"German\" /></a><a href=\"#\" onclick=\"doGTranslate(\'vi|vi\');return false;\" title=\"Vietnamese\" class=\"glink nturl notranslate\"><img src=\"//bubotea.com/wp-content/plugins/gtranslate/flags/24/vi.png\" height=\"24\" width=\"24\" alt=\"Vietnamese\" /></a><style>\n#goog-gt-tt {display:none !important;}\n.goog-te-banner-frame {display:none !important;}\n.goog-te-menu-value:hover {text-decoration:none !important;}\n.goog-text-highlight {background-color:transparent !important;box-shadow:none !important;}\nbody {top:0 !important;}\n#google_translate_element2 {display:none!important;}\n</style>\n\n<div id=\"google_translate_element2\"></div>\n<script>\nfunction googleTranslateElementInit2() {new google.translate.TranslateElement({pageLanguage: \'vi\',autoDisplay: false}, \'google_translate_element2\');}\n</script><script src=\"//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit2\"></script>\n\n\n<script>\nfunction GTranslateGetCurrentLang() {var keyValue = document[\'cookie\'].match(\'(^|;) ?googtrans=([^;]*)(;|$)\');return keyValue ? keyValue[2].split(\'/\')[2] : null;}\nfunction GTranslateFireEvent(element,event){try{if(document.createEventObject){var evt=document.createEventObject();element.fireEvent(\'on\'+event,evt)}else{var evt=document.createEvent(\'HTMLEvents\');evt.initEvent(event,true,true);element.dispatchEvent(evt)}}catch(e){}}\nfunction doGTranslate(lang_pair){if(lang_pair.value)lang_pair=lang_pair.value;if(lang_pair==\'\')return;var lang=lang_pair.split(\'|\')[1];if(GTranslateGetCurrentLang() == null && lang == lang_pair.split(\'|\')[0])return;var teCombo;var sel=document.getElementsByTagName(\'select\');for(var i=0;i<sel.length;i++)if(sel[i].className.indexOf(\'goog-te-combo\')!=-1){teCombo=sel[i];break;}if(document.getElementById(\'google_translate_element2\')==null||document.getElementById(\'google_translate_element2\').innerHTML.length==0||teCombo.length==0||teCombo.innerHTML.length==0){setTimeout(function(){doGTranslate(lang_pair)},500)}else{teCombo.value=lang;GTranslateFireEvent(teCombo,\'change\');GTranslateFireEvent(teCombo,\'change\')}}\n</script>\";s:13:\"logo_position\";s:4:\"left\";s:20:\"logo_position_mobile\";s:4:\"left\";s:16:\"footer_left_text\";s:60:\"Copyright [ux_current_year] © <strong>Vituto Media</strong>\";s:14:\"site_logo_dark\";s:55:\"https://bubotea.com/wp-content/uploads/2021/02/LOGO.png\";}', 'yes'),
(151, 'theme_switched', '', 'yes'),
(152, 'widget_flatsome_recent_posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(153, 'widget_block_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(155, 'flatsome_wup_purchase_code', 'c270da71-41b1-4cac-82f0-23b1cd57d8bf', 'yes'),
(156, 'flatsome_wup_sold_at', '2019-07-02T19:55:30+10:00', 'yes'),
(157, 'flatsome_wup_supported_until', '2020-01-01T11:55:30+11:00', 'yes'),
(158, 'flatsome_wup_buyer', 'taiembkdn', 'yes'),
(159, 'envato_setup_complete', '1608190417', 'yes'),
(165, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(167, 'recently_activated', 'a:0:{}', 'yes'),
(174, 'action_scheduler_hybrid_store_demarkation', '54', 'yes'),
(175, 'schema-ActionScheduler_StoreSchema', '3.0.1608197247', 'yes'),
(176, 'schema-ActionScheduler_LoggerSchema', '2.0.1608197247', 'yes'),
(179, 'woocommerce_schema_version', '430', 'yes'),
(180, 'woocommerce_store_address', 'naritaweg 14, 1043 BZ Amsterdam', 'yes'),
(181, 'woocommerce_store_address_2', 'naritaweg 14, 1043 BZ Amsterdam', 'yes'),
(182, 'woocommerce_store_city', 'Amsterdam', 'yes'),
(183, 'woocommerce_default_country', 'NL', 'yes'),
(184, 'woocommerce_store_postcode', '1043BZ', 'yes'),
(185, 'woocommerce_allowed_countries', 'specific', 'yes'),
(186, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
(187, 'woocommerce_specific_allowed_countries', 'a:1:{i:0;s:2:\"NL\";}', 'yes'),
(188, 'woocommerce_ship_to_countries', 'specific', 'yes'),
(189, 'woocommerce_specific_ship_to_countries', 'a:1:{i:0;s:2:\"NL\";}', 'yes'),
(190, 'woocommerce_default_customer_address', '', 'yes'),
(191, 'woocommerce_calc_taxes', 'yes', 'yes'),
(192, 'woocommerce_enable_coupons', 'no', 'yes'),
(193, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(194, 'woocommerce_currency', 'EUR', 'yes'),
(195, 'woocommerce_currency_pos', 'left', 'yes'),
(196, 'woocommerce_price_thousand_sep', '.', 'yes'),
(197, 'woocommerce_price_decimal_sep', '.', 'yes'),
(198, 'woocommerce_price_num_decimals', '1', 'yes'),
(199, 'woocommerce_shop_page_id', '23', 'yes'),
(200, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(201, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(202, 'woocommerce_placeholder_image', '54', 'yes'),
(203, 'woocommerce_weight_unit', 'kg', 'yes'),
(204, 'woocommerce_dimension_unit', 'cm', 'yes'),
(205, 'woocommerce_enable_reviews', 'yes', 'yes'),
(206, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(207, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(208, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(209, 'woocommerce_review_rating_required', 'yes', 'no'),
(210, 'woocommerce_manage_stock', 'yes', 'yes'),
(211, 'woocommerce_hold_stock_minutes', '60', 'no'),
(212, 'woocommerce_notify_low_stock', 'yes', 'no'),
(213, 'woocommerce_notify_no_stock', 'yes', 'no'),
(214, 'woocommerce_stock_email_recipient', 'hungthai56@gmail.com', 'no'),
(215, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(216, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(217, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(218, 'woocommerce_stock_format', '', 'yes'),
(219, 'woocommerce_file_download_method', 'force', 'no'),
(220, 'woocommerce_downloads_require_login', 'no', 'no'),
(221, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(222, 'woocommerce_downloads_add_hash_to_filename', 'yes', 'yes'),
(223, 'woocommerce_prices_include_tax', 'no', 'yes'),
(224, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(225, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(226, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(227, 'woocommerce_tax_classes', '', 'yes'),
(228, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(229, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(230, 'woocommerce_price_display_suffix', '', 'yes'),
(231, 'woocommerce_tax_total_display', 'itemized', 'no'),
(232, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(233, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(234, 'woocommerce_ship_to_destination', 'billing', 'no'),
(235, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(236, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(237, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(238, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(239, 'woocommerce_enable_myaccount_registration', 'yes', 'no'),
(240, 'woocommerce_registration_generate_username', 'no', 'no'),
(241, 'woocommerce_registration_generate_password', 'no', 'no'),
(242, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(243, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(244, 'woocommerce_allow_bulk_remove_personal_data', 'no', 'no'),
(245, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(246, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(247, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(248, 'woocommerce_trash_pending_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}', 'no'),
(249, 'woocommerce_trash_failed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}', 'no'),
(250, 'woocommerce_trash_cancelled_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}', 'no'),
(251, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(252, 'woocommerce_email_from_name', 'web trà sữa', 'no'),
(253, 'woocommerce_email_from_address', 'vitutodana1@gmail.com', 'no'),
(254, 'woocommerce_email_header_image', '', 'no'),
(255, 'woocommerce_email_footer_text', '{site_title} &mdash; Built with {WooCommerce}', 'no'),
(256, 'woocommerce_email_base_color', '#96588a', 'no'),
(257, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(258, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(259, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(260, 'woocommerce_cart_page_id', '56', 'no'),
(261, 'woocommerce_checkout_page_id', '57', 'no'),
(262, 'woocommerce_myaccount_page_id', '58', 'no'),
(263, 'woocommerce_terms_page_id', '537', 'no'),
(264, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(265, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(266, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(267, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(268, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(269, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(270, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(271, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(272, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(273, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(274, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(275, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(276, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(277, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(278, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(279, 'woocommerce_api_enabled', 'no', 'yes'),
(280, 'woocommerce_allow_tracking', 'yes', 'no'),
(281, 'woocommerce_show_marketplace_suggestions', 'no', 'no'),
(282, 'woocommerce_single_image_width', '600', 'yes'),
(283, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(284, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(285, 'woocommerce_demo_store', 'no', 'yes'),
(286, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:8:\"/product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(287, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(288, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(291, 'default_product_cat', '16', 'yes'),
(294, 'woocommerce_version', '5.0.0', 'yes'),
(295, 'woocommerce_db_version', '4.8.0', 'yes'),
(298, 'action_scheduler_lock_async-request-runner', '1619066943', 'yes'),
(299, 'woocommerce_admin_notices', 'a:2:{i:0;s:6:\"update\";i:1;s:20:\"no_secure_connection\";}', 'yes'),
(300, 'woocommerce_maxmind_geolocation_settings', 'a:1:{s:15:\"database_prefix\";s:32:\"aMpKPx0mKpKQ511qkm5OV4sYMr4frnB9\";}', 'yes'),
(302, 'widget_woocommerce_widget_cart', 'a:2:{i:2;a:2:{s:5:\"title\";s:11:\"Giỏ hàng\";s:13:\"hide_if_empty\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(303, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(304, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(305, 'widget_woocommerce_price_filter', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:0:{}}', 'yes'),
(306, 'widget_woocommerce_product_categories', 'a:3:{s:12:\"_multiwidget\";i:1;i:3;a:8:{s:5:\"title\";s:23:\"Danh mục sản phẩm\";s:7:\"orderby\";s:4:\"name\";s:8:\"dropdown\";i:1;s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:18:\"show_children_only\";i:0;s:10:\"hide_empty\";i:0;s:9:\"max_depth\";s:0:\"\";}i:5;a:0:{}}', 'yes'),
(307, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(308, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(309, 'widget_woocommerce_products', 'a:3:{s:12:\"_multiwidget\";i:1;i:3;a:7:{s:5:\"title\";s:24:\"Sản phẩm nổi bật\";s:6:\"number\";i:5;s:4:\"show\";s:8:\"featured\";s:7:\"orderby\";s:4:\"date\";s:5:\"order\";s:4:\"desc\";s:9:\"hide_free\";i:0;s:11:\"show_hidden\";i:0;}i:5;a:7:{s:5:\"title\";s:24:\"Sản phẩm nổi bật\";s:6:\"number\";i:5;s:4:\"show\";s:0:\"\";s:7:\"orderby\";s:4:\"date\";s:5:\"order\";s:4:\"desc\";s:9:\"hide_free\";i:0;s:11:\"show_hidden\";i:0;}}', 'yes'),
(310, 'widget_woocommerce_recently_viewed_products', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:0:{}}', 'yes'),
(311, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(312, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(313, 'widget_woocommerce_rating_filter', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:0:{}}', 'yes'),
(314, 'widget_upsell_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(318, 'woocommerce_admin_install_timestamp', '1608197249', 'yes'),
(322, 'wc_admin_note_home_screen_feedback_homescreen_accessed', '1608197249', 'yes');
INSERT INTO `3kuF9kxQ_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(323, 'wc_remote_inbox_notifications_specs', 'a:7:{s:37:\"ecomm-need-help-setting-up-your-store\";O:8:\"stdClass\":8:{s:4:\"slug\";s:37:\"ecomm-need-help-setting-up-your-store\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:32:\"Need help setting up your Store?\";s:7:\"content\";s:350:\"Schedule a free 30-min <a href=\"https://wordpress.com/support/concierge-support/\">quick start session</a> and get help from our specialists. We’re happy to walk through setup steps, show you around the WordPress.com dashboard, troubleshoot any issues you may have, and help you the find the features you need to accomplish your goals for your site.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:16:\"set-up-concierge\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:21:\"Schedule free session\";}}s:3:\"url\";s:34:\"https://wordpress.com/me/concierge\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:3:{i:0;s:35:\"woocommerce-shipping-australia-post\";i:1;s:32:\"woocommerce-shipping-canada-post\";i:2;s:30:\"woocommerce-shipping-royalmail\";}}}}s:20:\"woocommerce-services\";O:8:\"stdClass\":8:{s:4:\"slug\";s:20:\"woocommerce-services\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:26:\"WooCommerce Shipping & Tax\";s:7:\"content\";s:255:\"WooCommerce Shipping & Tax helps get your store “ready to sell” as quickly as possible. You create your products. We take care of tax calculation, payment processing, and shipping label printing! Learn more about the extension that you just installed.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:84:\"https://docs.woocommerce.com/document/woocommerce-shipping-and-tax/?utm_source=inbox\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-services\";}}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\"<\";s:4:\"days\";i:2;}}}s:32:\"ecomm-unique-shopping-experience\";O:8:\"stdClass\":8:{s:4:\"slug\";s:32:\"ecomm-unique-shopping-experience\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:53:\"For a shopping experience as unique as your customers\";s:7:\"content\";s:274:\"Product Add-Ons allow your customers to personalize products while they’re shopping on your online store. No more follow-up email requests—customers get what they want, before they’re done checking out. Learn more about this extension that comes included in your plan.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:43:\"learn-more-ecomm-unique-shopping-experience\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:71:\"https://docs.woocommerce.com/document/product-add-ons/?utm_source=inbox\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:3:{i:0;s:35:\"woocommerce-shipping-australia-post\";i:1;s:32:\"woocommerce-shipping-canada-post\";i:2;s:30:\"woocommerce-shipping-royalmail\";}}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\"<\";s:4:\"days\";i:2;}}}s:19:\"wcpay-promo-2020-11\";O:8:\"stdClass\":8:{s:4:\"slug\";s:19:\"wcpay-promo-2020-11\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:54:\"Manage subscriber payments from your store\'s dashboard\";s:7:\"content\";s:643:\"Securely accept cards and manage transactions right from your dashboard with <a href=\"https://woocommerce.com/payments/?utm_medium=notification&utm_source=product&utm_campaign=wcpay_ctrl20\" target=\"_blank\">WooCommerce Payments</a>  – now supporting <a href=\"https://woocommerce.com/products/woocommerce-subscriptions/?utm_medium=notification&utm_source=product&utm_campaign=wcpay_ctrl20\" target=\"_blank\">WooCommerce Subscriptions</a>! <br/><br/><em>By clicking \"Install now,\" you agree to our <a href=\"https://wordpress.com/tos/?utm_medium=notification&utm_source=product&utm_campaign=wcpay_ctrl20\" target=\"_blank\">Terms of Service</a>.</em>\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:11:\"install-now\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:11:\"Install now\";}}s:3:\"url\";s:57:\"admin.php?page=wc-admin&action=setup-woocommerce-payments\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:10:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:17:\"woocommerce-admin\";}}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:17:\"woocommerce-admin\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:5:\"1.7.0\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-payments\";}}}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:26:\"woocommerce-gateway-stripe\";}}}i:4;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";O:8:\"stdClass\":4:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:8:\"industry\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";}}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:11:\"order_count\";s:9:\"operation\";s:2:\">=\";s:5:\"value\";i:10;}i:6;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2020-11-18 14:00:00\";}i:7;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2020-12-07 00:00:00\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"US\";}i:9;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:26:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"CO\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"DE\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"FL\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"HI\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"ID\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"IN\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"KS\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"KY\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"LA\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MA\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MN\";}i:11;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MT\";}i:12;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NE\";}i:13;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NV\";}i:14;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NH\";}i:15;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NM\";}i:16;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"ND\";}i:17;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"OH\";}i:18;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"OR\";}i:19;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"PA\";}i:20;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"SD\";}i:21;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"TN\";}i:22;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"TX\";}i:23;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"VA\";}i:24;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"WA\";}i:25;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"WI\";}}}}}s:27:\"wcpay-subscriptions-2020-11\";O:8:\"stdClass\":8:{s:4:\"slug\";s:27:\"wcpay-subscriptions-2020-11\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:54:\"Manage subscriber payments from your store\'s dashboard\";s:7:\"content\";s:643:\"Securely accept cards and manage transactions right from your dashboard with <a href=\"https://woocommerce.com/payments/?utm_medium=notification&utm_source=product&utm_campaign=wcpay_ctrl20\" target=\"_blank\">WooCommerce Payments</a>  – now supporting <a href=\"https://woocommerce.com/products/woocommerce-subscriptions/?utm_medium=notification&utm_source=product&utm_campaign=wcpay_ctrl20\" target=\"_blank\">WooCommerce Subscriptions</a>! <br/><br/><em>By clicking \"Install now,\" you agree to our <a href=\"https://wordpress.com/tos/?utm_medium=notification&utm_source=product&utm_campaign=wcpay_ctrl20\" target=\"_blank\">Terms of Service</a>.</em>\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:11:\"install-now\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:11:\"Install now\";}}s:3:\"url\";s:57:\"admin.php?page=wc-admin&action=setup-woocommerce-payments\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:10:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:17:\"woocommerce-admin\";}}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:17:\"woocommerce-admin\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:5:\"1.7.0\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-payments\";}}}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:26:\"woocommerce-gateway-stripe\";}}}i:4;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";O:8:\"stdClass\":4:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:8:\"industry\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";}}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:11:\"order_count\";s:9:\"operation\";s:2:\">=\";s:5:\"value\";i:10;}i:6;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2020-11-18 14:00:00\";}i:7;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2020-12-07 00:00:00\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"US\";}i:9;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:24:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"AL\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"AK\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"AZ\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"AR\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"CA\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"CT\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"DC\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"IL\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"IA\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"ME\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MD\";}i:11;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MI\";}i:12;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MS\";}i:13;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MO\";}i:14;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NJ\";}i:15;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NY\";}i:16;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NC\";}i:17;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"OK\";}i:18;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"RI\";}i:19;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"SC\";}i:20;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"UT\";}i:21;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"VT\";}i:22;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"WV\";}i:23;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"WY\";}}}}}s:19:\"wcpay-promo-2020-12\";O:8:\"stdClass\":8:{s:4:\"slug\";s:19:\"wcpay-promo-2020-12\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:54:\"Get 50% off transaction fees with WooCommerce Payments\";s:7:\"content\";s:625:\"Keep more of your hard-earned cash by adding <a href=\"https://woocommerce.com/payments/?utm_medium=notification&utm_source=product&utm_campaign=wcpay_exp20\" target=\"_blank\">WooCommerce Payments</a> to your store. Lock in a discounted rate of 1.5% + $0.15 for $25,000 of payments (or three months, whichever comes first). Limited time offer – don’t miss out! <br/><br/><em>By clicking \"Install now,\" you agree to our promotional <a href=\"https://woocommerce.com/terms-conditions/woocommerce-payments-promotion/?utm_medium=notification&utm_source=product&utm_campaign=wcpay_exp20\" target=\"_blank\">Terms of Service</a>.</em>\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:11:\"install-now\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:11:\"Install now\";}}s:3:\"url\";s:57:\"admin.php?page=wc-admin&action=setup-woocommerce-payments\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:7:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"4.8\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-payments\";}}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:26:\"woocommerce-gateway-stripe\";}}}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";O:8:\"stdClass\":4:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:8:\"industry\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";}}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:11:\"order_count\";s:9:\"operation\";s:2:\">=\";s:5:\"value\";i:10;}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"US\";}i:6;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:26:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"CO\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"DE\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"FL\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"HI\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"ID\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"IN\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"KS\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"KY\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"LA\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MA\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MN\";}i:11;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MT\";}i:12;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NE\";}i:13;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NV\";}i:14;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NH\";}i:15;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NM\";}i:16;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"ND\";}i:17;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"OH\";}i:18;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"OR\";}i:19;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"PA\";}i:20;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"SD\";}i:21;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"TN\";}i:22;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"TX\";}i:23;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"VA\";}i:24;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"WA\";}i:25;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"WI\";}}}}}s:27:\"wcpay-subscriptions-2020-12\";O:8:\"stdClass\":8:{s:4:\"slug\";s:27:\"wcpay-subscriptions-2020-12\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:43:\"Manage payments from your store\'s dashboard\";s:7:\"content\";s:560:\"Securely accept cards and manage transactions right from your dashboard with <a href=\"https://woocommerce.com/payments/?utm_medium=notification&utm_source=product&utm_campaign=wcpay_ctrl20\" target=\"_blank\">WooCommerce Payments</a>! Zero setup fees or monthly fees. Just pay-as-you-go, starting at just 2.9% + $0.30 per transaction for U.S.-issued cards. <br/><br/><em>By clicking \"Install now,\" you agree to our <a href=\"https://wordpress.com/tos/?utm_medium=notification&utm_source=product&utm_campaign=wcpay_ctrl20\" target=\"_blank\">Terms of Service</a>.</em>\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:11:\"install-now\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:11:\"Install now\";}}s:3:\"url\";s:57:\"admin.php?page=wc-admin&action=setup-woocommerce-payments\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:7:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"4.8\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-payments\";}}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:26:\"woocommerce-gateway-stripe\";}}}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";O:8:\"stdClass\":4:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:8:\"industry\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";}}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:11:\"order_count\";s:9:\"operation\";s:2:\">=\";s:5:\"value\";i:10;}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"US\";}i:6;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:24:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"AL\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"AK\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"AZ\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"AR\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"CA\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"CT\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"DC\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"IL\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"IA\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"ME\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MD\";}i:11;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MI\";}i:12;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MS\";}i:13;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MO\";}i:14;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NJ\";}i:15;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NY\";}i:16;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NC\";}i:17;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"OK\";}i:18;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"RI\";}i:19;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"SC\";}i:20;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"UT\";}i:21;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"VT\";}i:22;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"WV\";}i:23;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"WY\";}}}}}}', 'yes'),
(324, 'wc_remote_inbox_notifications_stored_state', 'O:8:\"stdClass\":2:{s:22:\"there_were_no_products\";b:1;s:22:\"there_are_now_products\";b:1;}', 'yes'),
(326, 'wc_blocks_db_schema_version', '260', 'yes'),
(327, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(340, 'woocommerce_onboarding_profile', 'a:9:{s:12:\"setup_client\";b:1;s:8:\"industry\";a:1:{i:0;a:1:{s:4:\"slug\";s:10:\"food-drink\";}}s:13:\"product_types\";a:1:{i:0;s:8:\"physical\";}s:13:\"product_count\";s:8:\"101-1000\";s:14:\"selling_venues\";s:2:\"no\";s:19:\"business_extensions\";a:0:{}s:5:\"theme\";s:8:\"flatsome\";s:7:\"plugins\";s:7:\"skipped\";s:9:\"completed\";b:1;}', 'yes'),
(353, 'woocommerce_task_list_tracked_completed_tasks', 'a:5:{i:0;s:13:\"store_details\";i:1;s:8:\"products\";i:2;s:8:\"payments\";i:3;s:8:\"shipping\";i:4;s:10:\"appearance\";}', 'yes'),
(356, 'woocommerce_task_list_welcome_modal_dismissed', 'yes', 'yes'),
(368, 'woocommerce_marketplace_suggestions', 'a:2:{s:11:\"suggestions\";a:26:{i:0;a:4:{s:4:\"slug\";s:28:\"product-edit-meta-tab-header\";s:7:\"context\";s:28:\"product-edit-meta-tab-header\";s:5:\"title\";s:22:\"Recommended extensions\";s:13:\"allow-dismiss\";b:0;}i:1;a:6:{s:4:\"slug\";s:39:\"product-edit-meta-tab-footer-browse-all\";s:7:\"context\";s:28:\"product-edit-meta-tab-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:2;a:9:{s:4:\"slug\";s:46:\"product-edit-mailchimp-woocommerce-memberships\";s:7:\"product\";s:33:\"woocommerce-memberships-mailchimp\";s:14:\"show-if-active\";a:1:{i:0;s:23:\"woocommerce-memberships\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:116:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/mailchimp-for-memberships.svg\";s:5:\"title\";s:25:\"Mailchimp for Memberships\";s:4:\"copy\";s:79:\"Completely automate your email lists by syncing membership changes to Mailchimp\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:67:\"https://woocommerce.com/products/mailchimp-woocommerce-memberships/\";}i:3;a:9:{s:4:\"slug\";s:19:\"product-edit-addons\";s:7:\"product\";s:26:\"woocommerce-product-addons\";s:14:\"show-if-active\";a:2:{i:0;s:25:\"woocommerce-subscriptions\";i:1;s:20:\"woocommerce-bookings\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/product-add-ons.svg\";s:5:\"title\";s:15:\"Product Add-Ons\";s:4:\"copy\";s:93:\"Offer add-ons like gift wrapping, special messages or other special options for your products\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-add-ons/\";}i:4;a:9:{s:4:\"slug\";s:46:\"product-edit-woocommerce-subscriptions-gifting\";s:7:\"product\";s:33:\"woocommerce-subscriptions-gifting\";s:14:\"show-if-active\";a:1:{i:0;s:25:\"woocommerce-subscriptions\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:116:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/gifting-for-subscriptions.svg\";s:5:\"title\";s:25:\"Gifting for Subscriptions\";s:4:\"copy\";s:70:\"Let customers buy subscriptions for others - they\'re the ultimate gift\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:67:\"https://woocommerce.com/products/woocommerce-subscriptions-gifting/\";}i:5;a:9:{s:4:\"slug\";s:42:\"product-edit-teams-woocommerce-memberships\";s:7:\"product\";s:33:\"woocommerce-memberships-for-teams\";s:14:\"show-if-active\";a:1:{i:0;s:23:\"woocommerce-memberships\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:112:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/teams-for-memberships.svg\";s:5:\"title\";s:21:\"Teams for Memberships\";s:4:\"copy\";s:123:\"Adds B2B functionality to WooCommerce Memberships, allowing sites to sell team, group, corporate, or family member accounts\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:63:\"https://woocommerce.com/products/teams-woocommerce-memberships/\";}i:6;a:8:{s:4:\"slug\";s:29:\"product-edit-variation-images\";s:7:\"product\";s:39:\"woocommerce-additional-variation-images\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:118:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/additional-variation-images.svg\";s:5:\"title\";s:27:\"Additional Variation Images\";s:4:\"copy\";s:72:\"Showcase your products in the best light with a image for each variation\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:73:\"https://woocommerce.com/products/woocommerce-additional-variation-images/\";}i:7;a:9:{s:4:\"slug\";s:47:\"product-edit-woocommerce-subscription-downloads\";s:7:\"product\";s:34:\"woocommerce-subscription-downloads\";s:14:\"show-if-active\";a:1:{i:0;s:25:\"woocommerce-subscriptions\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:113:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/subscription-downloads.svg\";s:5:\"title\";s:22:\"Subscription Downloads\";s:4:\"copy\";s:57:\"Give customers special downloads with their subscriptions\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:68:\"https://woocommerce.com/products/woocommerce-subscription-downloads/\";}i:8;a:8:{s:4:\"slug\";s:31:\"product-edit-min-max-quantities\";s:7:\"product\";s:30:\"woocommerce-min-max-quantities\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:109:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/min-max-quantities.svg\";s:5:\"title\";s:18:\"Min/Max Quantities\";s:4:\"copy\";s:81:\"Specify minimum and maximum allowed product quantities for orders to be completed\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:52:\"https://woocommerce.com/products/min-max-quantities/\";}i:9;a:8:{s:4:\"slug\";s:28:\"product-edit-name-your-price\";s:7:\"product\";s:27:\"woocommerce-name-your-price\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/name-your-price.svg\";s:5:\"title\";s:15:\"Name Your Price\";s:4:\"copy\";s:70:\"Let customers pay what they want - useful for donations, tips and more\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/name-your-price/\";}i:10;a:8:{s:4:\"slug\";s:42:\"product-edit-woocommerce-one-page-checkout\";s:7:\"product\";s:29:\"woocommerce-one-page-checkout\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/one-page-checkout.svg\";s:5:\"title\";s:17:\"One Page Checkout\";s:4:\"copy\";s:92:\"Don\'t make customers click around - let them choose products, checkout & pay all on one page\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:63:\"https://woocommerce.com/products/woocommerce-one-page-checkout/\";}i:11;a:4:{s:4:\"slug\";s:19:\"orders-empty-header\";s:7:\"context\";s:24:\"orders-list-empty-header\";s:5:\"title\";s:20:\"Tools for your store\";s:13:\"allow-dismiss\";b:0;}i:12;a:6:{s:4:\"slug\";s:30:\"orders-empty-footer-browse-all\";s:7:\"context\";s:24:\"orders-list-empty-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:13;a:8:{s:4:\"slug\";s:19:\"orders-empty-zapier\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:18:\"woocommerce-zapier\";s:4:\"icon\";s:97:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/zapier.svg\";s:5:\"title\";s:6:\"Zapier\";s:4:\"copy\";s:88:\"Save time and increase productivity by connecting your store to more than 1000+ services\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:52:\"https://woocommerce.com/products/woocommerce-zapier/\";}i:14;a:8:{s:4:\"slug\";s:30:\"orders-empty-shipment-tracking\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:29:\"woocommerce-shipment-tracking\";s:4:\"icon\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/shipment-tracking.svg\";s:5:\"title\";s:17:\"Shipment Tracking\";s:4:\"copy\";s:86:\"Let customers know when their orders will arrive by adding shipment tracking to emails\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:51:\"https://woocommerce.com/products/shipment-tracking/\";}i:15;a:8:{s:4:\"slug\";s:32:\"orders-empty-table-rate-shipping\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:31:\"woocommerce-table-rate-shipping\";s:4:\"icon\";s:110:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/table-rate-shipping.svg\";s:5:\"title\";s:19:\"Table Rate Shipping\";s:4:\"copy\";s:122:\"Advanced, flexible shipping. Define multiple shipping rates based on location, price, weight, shipping class or item count\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:53:\"https://woocommerce.com/products/table-rate-shipping/\";}i:16;a:8:{s:4:\"slug\";s:40:\"orders-empty-shipping-carrier-extensions\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:4:\"icon\";s:118:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/shipping-carrier-extensions.svg\";s:5:\"title\";s:27:\"Shipping Carrier Extensions\";s:4:\"copy\";s:116:\"Show live rates from FedEx, UPS, USPS and more directly on your store - never under or overcharge for shipping again\";s:11:\"button-text\";s:13:\"Find Carriers\";s:8:\"promoted\";s:26:\"category-shipping-carriers\";s:3:\"url\";s:99:\"https://woocommerce.com/product-category/woocommerce-extensions/shipping-methods/shipping-carriers/\";}i:17;a:8:{s:4:\"slug\";s:32:\"orders-empty-google-product-feed\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:25:\"woocommerce-product-feeds\";s:4:\"icon\";s:110:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/google-product-feed.svg\";s:5:\"title\";s:19:\"Google Product Feed\";s:4:\"copy\";s:76:\"Increase sales by letting customers find you when they\'re shopping on Google\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:53:\"https://woocommerce.com/products/google-product-feed/\";}i:18;a:4:{s:4:\"slug\";s:35:\"products-empty-header-product-types\";s:7:\"context\";s:26:\"products-list-empty-header\";s:5:\"title\";s:23:\"Other types of products\";s:13:\"allow-dismiss\";b:0;}i:19;a:6:{s:4:\"slug\";s:32:\"products-empty-footer-browse-all\";s:7:\"context\";s:26:\"products-list-empty-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:20;a:8:{s:4:\"slug\";s:30:\"products-empty-product-vendors\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:27:\"woocommerce-product-vendors\";s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/product-vendors.svg\";s:5:\"title\";s:15:\"Product Vendors\";s:4:\"copy\";s:47:\"Turn your store into a multi-vendor marketplace\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-vendors/\";}i:21;a:8:{s:4:\"slug\";s:26:\"products-empty-memberships\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:23:\"woocommerce-memberships\";s:4:\"icon\";s:102:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/memberships.svg\";s:5:\"title\";s:11:\"Memberships\";s:4:\"copy\";s:76:\"Give members access to restricted content or products, for a fee or for free\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:57:\"https://woocommerce.com/products/woocommerce-memberships/\";}i:22;a:9:{s:4:\"slug\";s:35:\"products-empty-woocommerce-deposits\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:20:\"woocommerce-deposits\";s:14:\"show-if-active\";a:1:{i:0;s:20:\"woocommerce-bookings\";}s:4:\"icon\";s:99:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/deposits.svg\";s:5:\"title\";s:8:\"Deposits\";s:4:\"copy\";s:75:\"Make it easier for customers to pay by offering a deposit or a payment plan\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:54:\"https://woocommerce.com/products/woocommerce-deposits/\";}i:23;a:8:{s:4:\"slug\";s:40:\"products-empty-woocommerce-subscriptions\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:25:\"woocommerce-subscriptions\";s:4:\"icon\";s:104:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/subscriptions.svg\";s:5:\"title\";s:13:\"Subscriptions\";s:4:\"copy\";s:97:\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:59:\"https://woocommerce.com/products/woocommerce-subscriptions/\";}i:24;a:8:{s:4:\"slug\";s:35:\"products-empty-woocommerce-bookings\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:20:\"woocommerce-bookings\";s:4:\"icon\";s:99:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/bookings.svg\";s:5:\"title\";s:8:\"Bookings\";s:4:\"copy\";s:99:\"Allow customers to book appointments, make reservations or rent equipment without leaving your site\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:54:\"https://woocommerce.com/products/woocommerce-bookings/\";}i:25;a:8:{s:4:\"slug\";s:30:\"products-empty-product-bundles\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:27:\"woocommerce-product-bundles\";s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/product-bundles.svg\";s:5:\"title\";s:15:\"Product Bundles\";s:4:\"copy\";s:49:\"Offer customizable bundles and assembled products\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-bundles/\";}}s:7:\"updated\";i:1608197950;}', 'no'),
(392, 'WPLANG', 'vi', 'yes'),
(393, 'new_admin_email', 'hungthai56@gmail.com', 'yes'),
(464, 'product_cat_children', 'a:0:{}', 'yes'),
(757, 'woocommerce_maybe_regenerate_images_hash', '991b1ca641921cf0f5baf7a2fe85861b', 'yes'),
(840, 'loco_recent', 'a:4:{s:1:\"c\";s:21:\"Loco_data_RecentItems\";s:1:\"v\";i:0;s:1:\"d\";a:1:{s:6:\"bundle\";a:2:{s:14:\"theme.flatsome\";i:1608252560;s:34:\"plugin.woocommerce/woocommerce.php\";i:1608255397;}}s:1:\"t\";i:1608255397;}', 'no'),
(866, 'ai1wm_updater', 'a:2:{s:38:\"all-in-one-wp-migration-file-extension\";a:13:{s:4:\"name\";s:14:\"File Extension\";s:4:\"slug\";s:14:\"file-extension\";s:8:\"homepage\";s:31:\"https://import.wp-migration.com\";s:13:\"download_link\";s:74:\"https://import.wp-migration.com/all-in-one-wp-migration-file-extension.zip\";s:7:\"version\";s:3:\"1.7\";s:6:\"author\";s:8:\"ServMask\";s:15:\"author_homepage\";s:20:\"https://servmask.com\";s:8:\"sections\";a:1:{s:11:\"description\";s:60:\"<ul class=\"description\"><li>Import from file</li></ul><br />\";}s:7:\"banners\";a:2:{s:3:\"low\";s:71:\"https://import.wp-migration.com/img/products/file-extension-772x250.png\";s:4:\"high\";s:72:\"https://import.wp-migration.com/img/products/file-extension-1544x500.png\";}s:5:\"icons\";a:3:{s:2:\"1x\";s:71:\"https://import.wp-migration.com/img/products/file-extension-128x128.png\";s:2:\"2x\";s:71:\"https://import.wp-migration.com/img/products/file-extension-256x256.png\";s:7:\"default\";s:71:\"https://import.wp-migration.com/img/products/file-extension-256x256.png\";}s:6:\"rating\";i:99;s:11:\"num_ratings\";i:309;s:10:\"downloaded\";i:40188;}s:43:\"all-in-one-wp-migration-unlimited-extension\";a:13:{s:4:\"name\";s:19:\"Unlimited Extension\";s:4:\"slug\";s:19:\"unlimited-extension\";s:8:\"homepage\";s:51:\"https://servmask.com/extensions/unlimited-extension\";s:13:\"download_link\";s:29:\"https://servmask.com/purchase\";s:7:\"version\";s:4:\"2.39\";s:6:\"author\";s:8:\"ServMask\";s:15:\"author_homepage\";s:20:\"https://servmask.com\";s:8:\"sections\";a:1:{s:11:\"description\";s:259:\"<ul class=\"description\"><li>Remove the import limit of 512MB</li><li>Lifetime license with lifetime updates</li><li>Use on any number of websites that you own</li><li>Unlimited Extension included</li><li>WP CLI commands</li><li>Premium support</li></ul><br />\";}s:7:\"banners\";a:2:{s:3:\"low\";s:65:\"https://servmask.com/img/products/unlimited-extension-772x250.png\";s:4:\"high\";s:66:\"https://servmask.com/img/products/unlimited-extension-1544x500.png\";}s:5:\"icons\";a:3:{s:2:\"1x\";s:65:\"https://servmask.com/img/products/unlimited-extension-128x128.png\";s:2:\"2x\";s:65:\"https://servmask.com/img/products/unlimited-extension-256x256.png\";s:7:\"default\";s:65:\"https://servmask.com/img/products/unlimited-extension-256x256.png\";}s:6:\"rating\";i:99;s:11:\"num_ratings\";i:309;s:10:\"downloaded\";i:40188;}}', 'yes'),
(934, 'woocommerce_checkout_phone_field', 'required', 'yes'),
(935, 'woocommerce_checkout_company_field', 'hidden', 'yes'),
(936, 'woocommerce_checkout_address_2_field', 'hidden', 'yes'),
(1064, 'category_children', 'a:0:{}', 'yes'),
(1229, 'wc_fields_billing', 'a:6:{s:18:\"billing_first_name\";a:9:{s:5:\"label\";s:4:\"Tên\";s:8:\"required\";b:1;s:5:\"class\";a:1:{i:0;s:14:\"form-row-first\";}s:12:\"autocomplete\";s:10:\"given-name\";s:8:\"priority\";i:10;s:6:\"custom\";i:0;s:7:\"enabled\";s:1:\"1\";s:13:\"show_in_email\";i:1;s:13:\"show_in_order\";i:1;}s:17:\"billing_last_name\";a:9:{s:5:\"label\";s:4:\"Họ\";s:8:\"required\";b:1;s:5:\"class\";a:1:{i:0;s:13:\"form-row-last\";}s:12:\"autocomplete\";s:11:\"family-name\";s:8:\"priority\";i:20;s:6:\"custom\";i:0;s:7:\"enabled\";s:1:\"1\";s:13:\"show_in_email\";i:1;s:13:\"show_in_order\";i:1;}s:17:\"billing_address_1\";a:10:{s:5:\"label\";s:12:\"Địa chỉ\";s:11:\"placeholder\";s:12:\"Địa chỉ\";s:8:\"required\";b:1;s:5:\"class\";a:2:{i:0;s:13:\"form-row-wide\";i:1;s:13:\"address-field\";}s:12:\"autocomplete\";s:13:\"address-line1\";s:8:\"priority\";i:30;s:6:\"custom\";i:0;s:7:\"enabled\";s:1:\"1\";s:13:\"show_in_email\";i:1;s:13:\"show_in_order\";i:1;}s:12:\"billing_city\";a:9:{s:5:\"label\";s:21:\"Tỉnh / Thành phố\";s:8:\"required\";b:1;s:5:\"class\";a:2:{i:0;s:13:\"form-row-wide\";i:1;s:13:\"address-field\";}s:12:\"autocomplete\";s:14:\"address-level2\";s:8:\"priority\";i:40;s:6:\"custom\";i:0;s:7:\"enabled\";s:1:\"1\";s:13:\"show_in_email\";i:1;s:13:\"show_in_order\";i:1;}s:13:\"billing_state\";a:13:{s:4:\"type\";s:5:\"state\";s:5:\"label\";s:12:\"Bang / Hạt\";s:8:\"required\";b:0;s:5:\"class\";a:2:{i:0;s:13:\"form-row-wide\";i:1;s:13:\"address-field\";}s:8:\"validate\";a:1:{i:0;s:5:\"state\";}s:12:\"autocomplete\";s:14:\"address-level1\";s:8:\"priority\";i:50;s:13:\"country_field\";s:15:\"billing_country\";s:7:\"country\";s:2:\"VN\";s:6:\"custom\";i:0;s:7:\"enabled\";s:1:\"1\";s:13:\"show_in_email\";i:1;s:13:\"show_in_order\";i:1;}s:13:\"billing_phone\";a:11:{s:5:\"label\";s:20:\"Số điện thoại\";s:8:\"required\";b:1;s:4:\"type\";s:3:\"tel\";s:5:\"class\";a:1:{i:0;s:13:\"form-row-wide\";}s:8:\"validate\";a:1:{i:0;s:5:\"phone\";}s:12:\"autocomplete\";s:3:\"tel\";s:8:\"priority\";i:60;s:6:\"custom\";i:0;s:7:\"enabled\";s:1:\"1\";s:13:\"show_in_email\";i:1;s:13:\"show_in_order\";i:1;}}', 'yes'),
(1285, 'woocommerce_tracker_ua', 'a:8:{i:0;s:130:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36 Edg/87.0.664.60\";i:1;s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36\";i:2;s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36\";i:3;s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36\";i:4;s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.82 Safari/537.36\";i:5;s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36\";i:6;s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36\";i:7;s:131:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36 Edg/89.0.774.75\";}', 'yes'),
(1353, 'woocommerce_tracker_last_send', '1618634943', 'yes'),
(1422, 'woocommerce_bacs_settings', 'a:11:{s:7:\"enabled\";s:2:\"no\";s:5:\"title\";s:28:\"Chuyển khoản ngân hàng\";s:11:\"description\";s:226:\"Thực hiện thanh toán vào ngay tài khoản ngân hàng của chúng tôi. Vui lòng sử dụng Mã đơn hàng của bạn trong phần Nội dung thanh toán. Đơn hàng sẽ đươc giao sau khi tiền đã chuyển.\";s:12:\"instructions\";s:0:\"\";s:15:\"account_details\";s:0:\"\";s:12:\"account_name\";s:0:\"\";s:14:\"account_number\";s:0:\"\";s:9:\"sort_code\";s:0:\"\";s:9:\"bank_name\";s:0:\"\";s:4:\"iban\";s:0:\"\";s:3:\"bic\";s:0:\"\";}', 'yes'),
(1423, 'woocommerce_cod_settings', 'a:6:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:73:\"Chúng tôi đang xác nhận đơn hàng và sẽ liên hệ lại ngay!\";s:11:\"description\";s:33:\"Trả tiền mặt khi giao hàng\";s:12:\"instructions\";s:33:\"Trả tiền mặt khi giao hàng\";s:18:\"enable_for_methods\";s:0:\"\";s:18:\"enable_for_virtual\";s:3:\"yes\";}', 'yes'),
(1424, 'woocommerce_gateway_order', 'a:4:{s:4:\"bacs\";i:0;s:6:\"cheque\";i:1;s:3:\"cod\";i:2;s:6:\"paypal\";i:3;}', 'yes'),
(1425, 'woocommerce_new_order_settings', 'a:6:{s:7:\"enabled\";s:3:\"yes\";s:9:\"recipient\";s:22:\"maitrinhdn93@gmail.com\";s:7:\"subject\";s:0:\"\";s:7:\"heading\";s:0:\"\";s:18:\"additional_content\";s:28:\"Congratulations on the sale.\";s:10:\"email_type\";s:5:\"plain\";}', 'yes'),
(1452, 'cfdb7_view_install_date', '2020-12-19 1:58:18', 'yes'),
(1672, 'share_app', 'facebook#twitter#google#vkontakte#tumblr#stumble#linkedin#reddit#pinterest#pocket#digg#mail#print#whatsapp', 'yes'),
(1734, 'nsl-version', '3.0.27', 'yes'),
(1735, 'widget_nextend_social_login', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1738, 'yit_recently_activated', 'a:1:{i:0;s:34:\"yith-woocommerce-wishlist/init.php\";}', 'yes'),
(1739, 'yith_wcwl_wishlist_page_id', '360', 'yes'),
(1740, 'yith_wcwl_version', '3.0.17', 'yes'),
(1741, 'yith_wcwl_db_version', '3.0.0', 'yes'),
(1742, 'yith_wcwl_ajax_enable', 'no', 'yes'),
(1743, 'yith_wfbt_enable_integration', 'yes', 'yes');
INSERT INTO `3kuF9kxQ_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1744, 'yith_wcwl_after_add_to_wishlist_behaviour', 'view', 'yes'),
(1745, 'yith_wcwl_show_on_loop', 'no', 'yes'),
(1746, 'yith_wcwl_loop_position', 'after_add_to_cart', 'yes'),
(1747, 'yith_wcwl_button_position', 'after_add_to_cart', 'yes'),
(1748, 'yith_wcwl_add_to_wishlist_text', 'Add to wishlist', 'yes'),
(1749, 'yith_wcwl_product_added_text', 'Product added!', 'yes'),
(1750, 'yith_wcwl_browse_wishlist_text', 'Browse wishlist', 'yes'),
(1751, 'yith_wcwl_already_in_wishlist_text', 'The product is already in your wishlist!', 'yes'),
(1752, 'yith_wcwl_add_to_wishlist_style', 'link', 'yes'),
(1753, 'yith_wcwl_rounded_corners_radius', '16', 'yes'),
(1754, 'yith_wcwl_add_to_wishlist_icon', 'fa-heart-o', 'yes'),
(1755, 'yith_wcwl_add_to_wishlist_custom_icon', '', 'yes'),
(1756, 'yith_wcwl_added_to_wishlist_icon', 'fa-heart', 'yes'),
(1757, 'yith_wcwl_added_to_wishlist_custom_icon', '', 'yes'),
(1758, 'yith_wcwl_custom_css', '', 'yes'),
(1759, 'yith_wcwl_variation_show', '', 'yes'),
(1760, 'yith_wcwl_price_show', 'yes', 'yes'),
(1761, 'yith_wcwl_stock_show', 'yes', 'yes'),
(1762, 'yith_wcwl_show_dateadded', '', 'yes'),
(1763, 'yith_wcwl_add_to_cart_show', 'yes', 'yes'),
(1764, 'yith_wcwl_show_remove', 'yes', 'yes'),
(1765, 'yith_wcwl_repeat_remove_button', '', 'yes'),
(1766, 'yith_wcwl_redirect_cart', 'no', 'yes'),
(1767, 'yith_wcwl_remove_after_add_to_cart', 'yes', 'yes'),
(1768, 'yith_wcwl_enable_share', 'yes', 'yes'),
(1769, 'yith_wcwl_share_fb', 'yes', 'yes'),
(1770, 'yith_wcwl_share_twitter', 'yes', 'yes'),
(1771, 'yith_wcwl_share_pinterest', 'yes', 'yes'),
(1772, 'yith_wcwl_share_email', 'yes', 'yes'),
(1773, 'yith_wcwl_share_whatsapp', 'yes', 'yes'),
(1774, 'yith_wcwl_share_url', 'no', 'yes'),
(1775, 'yith_wcwl_socials_title', 'My wishlist on web trà sữa', 'yes'),
(1776, 'yith_wcwl_socials_text', '', 'yes'),
(1777, 'yith_wcwl_socials_image_url', '', 'yes'),
(1778, 'yith_wcwl_wishlist_title', 'My wishlist', 'yes'),
(1779, 'yith_wcwl_add_to_cart_text', 'Add to cart', 'yes'),
(1780, 'yith_wcwl_add_to_cart_style', 'link', 'yes'),
(1781, 'yith_wcwl_add_to_cart_rounded_corners_radius', '16', 'yes'),
(1782, 'yith_wcwl_add_to_cart_icon', 'fa-shopping-cart', 'yes'),
(1783, 'yith_wcwl_add_to_cart_custom_icon', '', 'yes'),
(1784, 'yith_wcwl_color_headers_background', '#F4F4F4', 'yes'),
(1785, 'yith_wcwl_fb_button_icon', 'fa-facebook', 'yes'),
(1786, 'yith_wcwl_fb_button_custom_icon', '', 'yes'),
(1787, 'yith_wcwl_tw_button_icon', 'fa-twitter', 'yes'),
(1788, 'yith_wcwl_tw_button_custom_icon', '', 'yes'),
(1789, 'yith_wcwl_pr_button_icon', 'fa-pinterest', 'yes'),
(1790, 'yith_wcwl_pr_button_custom_icon', '', 'yes'),
(1791, 'yith_wcwl_em_button_icon', 'fa-envelope-o', 'yes'),
(1792, 'yith_wcwl_em_button_custom_icon', '', 'yes'),
(1793, 'yith_wcwl_wa_button_icon', 'fa-whatsapp', 'yes'),
(1794, 'yith_wcwl_wa_button_custom_icon', '', 'yes'),
(1795, 'yit_plugin_fw_panel_wc_default_options_set', 'a:1:{s:15:\"yith_wcwl_panel\";b:1;}', 'yes'),
(1796, 'yith_plugin_fw_promo_2019_bis', '1', 'yes'),
(1880, 'woocommerce_onboarding_homepage_post_id', '366', 'yes'),
(1881, 'woocommerce_task_list_appearance_complete', '1', 'yes'),
(1882, 'woocommerce_demo_store_notice', 'Web Trà Sữa', 'yes'),
(1954, 'widget_widget_wpmemwidget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1955, 'nsl_google', 's:2311:\"a:48:{s:14:\"settings_saved\";i:1;s:6:\"tested\";s:1:\"0\";s:21:\"custom_default_button\";s:0:\"\";s:18:\"custom_icon_button\";s:0:\"\";s:11:\"login_label\";s:27:\"Continue with <b>Google</b>\";s:14:\"register_label\";s:26:\"Sign up with <b>Google</b>\";s:10:\"link_label\";s:31:\"Link account with <b>Google</b>\";s:12:\"unlink_label\";s:33:\"Unlink account from <b>Google</b>\";s:11:\"user_prefix\";s:0:\"\";s:13:\"user_fallback\";s:0:\"\";s:18:\"oauth_redirect_url\";s:0:\"\";s:5:\"terms\";s:0:\"\";s:16:\"sync_fields/link\";i:0;s:17:\"sync_fields/login\";i:0;s:9:\"ask_email\";s:10:\"when-empty\";s:8:\"ask_user\";s:5:\"never\";s:12:\"ask_password\";s:5:\"never\";s:9:\"auto_link\";s:5:\"email\";s:14:\"disabled_roles\";a:0:{}s:14:\"register_roles\";a:1:{i:0;s:7:\"default\";}s:33:\"sync_fields/fields/gender/enabled\";i:0;s:34:\"sync_fields/fields/gender/meta_key\";s:13:\"google_gender\";s:31:\"sync_fields/fields/link/enabled\";i:0;s:32:\"sync_fields/fields/link/meta_key\";s:11:\"google_link\";s:33:\"sync_fields/fields/locale/enabled\";i:0;s:34:\"sync_fields/fields/locale/meta_key\";s:13:\"google_locale\";s:38:\"sync_fields/fields/biographies/enabled\";i:0;s:39:\"sync_fields/fields/biographies/meta_key\";s:18:\"google_biographies\";s:36:\"sync_fields/fields/birthdays/enabled\";i:0;s:37:\"sync_fields/fields/birthdays/meta_key\";s:16:\"google_birthdays\";s:38:\"sync_fields/fields/occupations/enabled\";i:0;s:39:\"sync_fields/fields/occupations/meta_key\";s:18:\"google_occupations\";s:40:\"sync_fields/fields/organizations/enabled\";i:0;s:41:\"sync_fields/fields/organizations/meta_key\";s:20:\"google_organizations\";s:37:\"sync_fields/fields/residences/enabled\";i:0;s:38:\"sync_fields/fields/residences/meta_key\";s:17:\"google_residences\";s:35:\"sync_fields/fields/taglines/enabled\";i:0;s:36:\"sync_fields/fields/taglines/meta_key\";s:15:\"google_taglines\";s:36:\"sync_fields/fields/ageRanges/enabled\";i:0;s:37:\"sync_fields/fields/ageRanges/meta_key\";s:16:\"google_ageRanges\";s:36:\"sync_fields/fields/addresses/enabled\";i:0;s:37:\"sync_fields/fields/addresses/meta_key\";s:16:\"google_addresses\";s:39:\"sync_fields/fields/phoneNumbers/enabled\";i:0;s:40:\"sync_fields/fields/phoneNumbers/meta_key\";s:19:\"google_phoneNumbers\";s:9:\"client_id\";s:72:\"722622259478-9p4inugtfuktnso30l7r0mqg7n1vp6be.apps.googleusercontent.com\";s:13:\"client_secret\";s:24:\"1M_VqdIB3rmvcU8_3t6h2Y3m\";s:14:\"select_account\";i:1;s:4:\"skin\";s:5:\"light\";}\";', 'yes'),
(1972, '3kuF9kxQ_smtp_options', 'a:9:{s:4:\"from\";s:21:\"vitutodana1@gmail.com\";s:8:\"fromname\";s:25:\"Đăng Ký Web trà sữa\";s:4:\"host\";s:14:\"smtp.gmail.com\";s:10:\"smtpsecure\";s:3:\"ssl\";s:4:\"port\";s:3:\"465\";s:8:\"smtpauth\";s:3:\"yes\";s:8:\"username\";s:11:\"vitutodana1\";s:8:\"password\";s:11:\"vitutodana1\";s:10:\"deactivate\";s:0:\"\";}', 'yes'),
(2036, 'swpsmtp_options', 'a:10:{s:16:\"from_email_field\";s:21:\"vitutodana1@gmail.com\";s:15:\"from_name_field\";s:23:\"VITUTOMEDIA ĐƠN HÀNG\";s:23:\"force_from_name_replace\";b:0;s:8:\"sub_mode\";b:0;s:13:\"smtp_settings\";a:10:{s:4:\"host\";s:14:\"smtp.gmail.com\";s:15:\"type_encryption\";s:3:\"ssl\";s:4:\"port\";s:3:\"465\";s:13:\"autentication\";s:3:\"yes\";s:8:\"username\";s:21:\"vitutodana1@gmail.com\";s:8:\"password\";s:24:\"bGdlY2VpZWp6bXdua3hjbQ==\";s:13:\"log_file_name\";s:33:\"logs/.5fe1ceb67512b4.61435525.txt\";s:12:\"enable_debug\";b:0;s:12:\"insecure_ssl\";b:0;s:12:\"encrypt_pass\";b:0;}s:15:\"allowed_domains\";s:28:\"ZGVtby52aXR1dG9tZWRpYS52bg==\";s:14:\"reply_to_email\";s:0:\"\";s:9:\"bcc_email\";s:0:\"\";s:17:\"email_ignore_list\";s:0:\"\";s:19:\"enable_domain_check\";b:0;}', 'yes'),
(2040, 'smtp_test_mail', 'a:3:{s:10:\"swpsmtp_to\";s:21:\"vitutomedia@gmail.com\";s:15:\"swpsmtp_subject\";s:4:\"test\";s:15:\"swpsmtp_message\";s:4:\"test\";}', 'yes'),
(2161, 'woocommerce_flat_rate_5_settings', 'a:3:{s:5:\"title\";s:15:\"Phí Giao Hàng\";s:10:\"tax_status\";s:7:\"taxable\";s:4:\"cost\";s:1:\"5\";}', 'yes'),
(2245, 'trp_settings', 'a:14:{s:16:\"default-language\";s:2:\"vi\";s:21:\"translation-languages\";a:1:{i:0;s:2:\"vi\";}s:17:\"publish-languages\";a:1:{i:0;s:2:\"vi\";}s:22:\"native_or_english_name\";s:12:\"english_name\";s:36:\"add-subdirectory-to-default-language\";s:2:\"no\";s:30:\"force-language-to-custom-links\";s:3:\"yes\";s:14:\"trp-ls-floater\";s:3:\"yes\";s:17:\"shortcode-options\";s:16:\"flags-full-names\";s:12:\"menu-options\";s:16:\"flags-full-names\";s:15:\"floater-options\";s:16:\"flags-full-names\";s:16:\"floater-position\";s:12:\"bottom-right\";s:13:\"floater-color\";s:4:\"dark\";s:21:\"trp-ls-show-poweredby\";s:2:\"no\";s:9:\"url-slugs\";a:2:{s:5:\"en_US\";s:2:\"en\";i:0;s:0:\"\";}}', 'yes'),
(2246, 'trp_plugin_version', '1.9.0', 'yes'),
(2257, 'polylang', 'a:13:{s:7:\"browser\";i:1;s:7:\"rewrite\";i:1;s:12:\"hide_default\";i:1;s:10:\"force_lang\";i:1;s:13:\"redirect_lang\";i:0;s:13:\"media_support\";i:1;s:9:\"uninstall\";i:0;s:4:\"sync\";a:0:{}s:10:\"post_types\";a:0:{}s:10:\"taxonomies\";a:0:{}s:7:\"domains\";a:0:{}s:7:\"version\";s:5:\"2.9.1\";s:16:\"first_activation\";i:1609149249;}', 'yes'),
(2258, 'polylang_wpml_strings', 'a:0:{}', 'yes'),
(2259, 'widget_polylang', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(2262, 'rewrite_rules', 'a:213:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:47:\"(([^/]+/)*wishlist)(/(.*))?/page/([0-9]{1,})/?$\";s:76:\"index.php?pagename=$matches[1]&wishlist-action=$matches[4]&paged=$matches[5]\";s:30:\"(([^/]+/)*wishlist)(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&wishlist-action=$matches[4]\";s:11:\"san-pham/?$\";s:27:\"index.php?post_type=product\";s:41:\"san-pham/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:36:\"san-pham/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:28:\"san-pham/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:16:\"featured_item/?$\";s:33:\"index.php?post_type=featured_item\";s:46:\"featured_item/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_type=featured_item&feed=$matches[1]\";s:41:\"featured_item/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_type=featured_item&feed=$matches[1]\";s:33:\"featured_item/page/([0-9]{1,})/?$\";s:51:\"index.php?post_type=featured_item&paged=$matches[1]\";s:32:\"blocks/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"blocks/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"blocks/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"blocks/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"blocks/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"blocks/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"blocks/(.+?)/embed/?$\";s:39:\"index.php?blocks=$matches[1]&embed=true\";s:25:\"blocks/(.+?)/trackback/?$\";s:33:\"index.php?blocks=$matches[1]&tb=1\";s:33:\"blocks/(.+?)/page/?([0-9]{1,})/?$\";s:46:\"index.php?blocks=$matches[1]&paged=$matches[2]\";s:40:\"blocks/(.+?)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?blocks=$matches[1]&cpage=$matches[2]\";s:30:\"blocks/(.+?)/wc-api(/(.*))?/?$\";s:47:\"index.php?blocks=$matches[1]&wc-api=$matches[3]\";s:36:\"blocks/.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:47:\"blocks/.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:29:\"blocks/(.+?)(?:/([0-9]+))?/?$\";s:45:\"index.php?blocks=$matches[1]&page=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:57:\"block_categories/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?taxonomy=block_categories&term=$matches[1]&feed=$matches[2]\";s:52:\"block_categories/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?taxonomy=block_categories&term=$matches[1]&feed=$matches[2]\";s:33:\"block_categories/([^/]+)/embed/?$\";s:63:\"index.php?taxonomy=block_categories&term=$matches[1]&embed=true\";s:45:\"block_categories/([^/]+)/page/?([0-9]{1,})/?$\";s:70:\"index.php?taxonomy=block_categories&term=$matches[1]&paged=$matches[2]\";s:27:\"block_categories/([^/]+)/?$\";s:52:\"index.php?taxonomy=block_categories&term=$matches[1]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:41:\"featured_item/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:51:\"featured_item/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:71:\"featured_item/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"featured_item/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"featured_item/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:47:\"featured_item/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:30:\"featured_item/([^/]+)/embed/?$\";s:46:\"index.php?featured_item=$matches[1]&embed=true\";s:34:\"featured_item/([^/]+)/trackback/?$\";s:40:\"index.php?featured_item=$matches[1]&tb=1\";s:54:\"featured_item/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?featured_item=$matches[1]&feed=$matches[2]\";s:49:\"featured_item/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?featured_item=$matches[1]&feed=$matches[2]\";s:42:\"featured_item/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?featured_item=$matches[1]&paged=$matches[2]\";s:49:\"featured_item/([^/]+)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?featured_item=$matches[1]&cpage=$matches[2]\";s:39:\"featured_item/([^/]+)/wc-api(/(.*))?/?$\";s:54:\"index.php?featured_item=$matches[1]&wc-api=$matches[3]\";s:45:\"featured_item/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:56:\"featured_item/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:38:\"featured_item/([^/]+)(?:/([0-9]+))?/?$\";s:52:\"index.php?featured_item=$matches[1]&page=$matches[2]\";s:30:\"featured_item/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:40:\"featured_item/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:60:\"featured_item/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"featured_item/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"featured_item/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:36:\"featured_item/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:63:\"featured_item_category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:61:\"index.php?featured_item_category=$matches[1]&feed=$matches[2]\";s:58:\"featured_item_category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:61:\"index.php?featured_item_category=$matches[1]&feed=$matches[2]\";s:39:\"featured_item_category/([^/]+)/embed/?$\";s:55:\"index.php?featured_item_category=$matches[1]&embed=true\";s:51:\"featured_item_category/([^/]+)/page/?([0-9]{1,})/?$\";s:62:\"index.php?featured_item_category=$matches[1]&paged=$matches[2]\";s:33:\"featured_item_category/([^/]+)/?$\";s:44:\"index.php?featured_item_category=$matches[1]\";s:58:\"featured_item_tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:56:\"index.php?featured_item_tag=$matches[1]&feed=$matches[2]\";s:53:\"featured_item_tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:56:\"index.php?featured_item_tag=$matches[1]&feed=$matches[2]\";s:34:\"featured_item_tag/([^/]+)/embed/?$\";s:50:\"index.php?featured_item_tag=$matches[1]&embed=true\";s:46:\"featured_item_tag/([^/]+)/page/?([0-9]{1,})/?$\";s:57:\"index.php?featured_item_tag=$matches[1]&paged=$matches[2]\";s:28:\"featured_item_tag/([^/]+)/?$\";s:39:\"index.php?featured_item_tag=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=6&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:25:\"([^/]+)/wc-api(/(.*))?/?$\";s:45:\"index.php?name=$matches[1]&wc-api=$matches[3]\";s:31:\"[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(2310, 'ihaf_insert_header', '<script src=\\\"https://kit.fontawesome.com/233eda8453.js\\\" crossorigin=\\\"anonymous\\\"></script>\r\n<!-- Load Facebook SDK for JavaScript -->\r\n      <div id=\\\"fb-root\\\"></div>\r\n      <script>\r\n        window.fbAsyncInit = function() {\r\n          FB.init({\r\n            xfbml            : true,\r\n            version          : \\\'v9.0\\\'\r\n          });\r\n        };\r\n\r\n        (function(d, s, id) {\r\n        var js, fjs = d.getElementsByTagName(s)[0];\r\n        if (d.getElementById(id)) return;\r\n        js = d.createElement(s); js.id = id;\r\n        js.src = \\\'https://connect.facebook.net/nl_NL/sdk/xfbml.customerchat.js\\\';\r\n        fjs.parentNode.insertBefore(js, fjs);\r\n      }(document, \\\'script\\\', \\\'facebook-jssdk\\\'));</script>\r\n\r\n      <!-- Your Chat Plugin code -->\r\n      <div class=\\\"fb-customerchat\\\"\r\n        attribution=setup_tool\r\n        page_id=\\\"105342734750313\\\"\r\n  theme_color=\\\"#a3b8a2\\\"\r\n  logged_in_greeting=\\\" Hoi! Hoe kunnen wij u helpen?\\\"\r\n  logged_out_greeting=\\\" Hoi! Hoe kunnen wij u helpen?\\\">\r\n      </div>', 'yes'),
(2311, 'ihaf_insert_footer', '', 'yes'),
(2312, 'ihaf_insert_body', '', 'yes'),
(2313, 'insert-headers-and-footers_welcome_dismissed_key', '1', 'yes'),
(2393, 'ai1wmte_plugin_key', '1', 'yes'),
(2399, 'swift_performance_plugin_organizer', 'a:0:{}', 'yes'),
(2486, 'woocommerce_admin_last_orders_milestone', '10', 'yes'),
(2565, 'GTranslate', 'a:33:{s:11:\"pro_version\";s:0:\"\";s:18:\"enterprise_version\";s:0:\"\";s:15:\"url_translation\";s:0:\"\";s:17:\"add_hreflang_tags\";s:0:\"\";s:17:\"email_translation\";s:0:\"\";s:23:\"email_translation_debug\";s:0:\"\";s:10:\"new_window\";s:0:\"\";s:12:\"show_in_menu\";s:0:\"\";s:26:\"floating_language_selector\";s:2:\"no\";s:21:\"native_language_names\";s:0:\"\";s:9:\"analytics\";s:0:\"\";s:23:\"detect_browser_language\";s:0:\"\";s:12:\"add_new_line\";i:1;s:16:\"default_language\";s:2:\"vi\";s:18:\"translation_method\";s:5:\"onfly\";s:11:\"widget_look\";s:5:\"flags\";s:9:\"flag_size\";i:24;s:16:\"monochrome_flags\";s:0:\"\";s:11:\"widget_code\";s:2759:\"<!-- GTranslate: https://gtranslate.io/ -->\r\n<a href=\"#\" onclick=\"doGTranslate(\'vi|nl\');return false;\" title=\"Dutch\" class=\"glink nturl notranslate\"><img src=\"//bubotea.com/wp-content/plugins/gtranslate/flags/24/nl.png\" height=\"24\" width=\"24\" alt=\"Dutch\" /></a><a href=\"#\" onclick=\"doGTranslate(\'vi|en\');return false;\" title=\"English\" class=\"glink nturl notranslate\"><img src=\"//bubotea.com/wp-content/plugins/gtranslate/flags/24/en.png\" height=\"24\" width=\"24\" alt=\"English\" /></a><a href=\"#\" onclick=\"doGTranslate(\'vi|de\');return false;\" title=\"German\" class=\"glink nturl notranslate\"><img src=\"//bubotea.com/wp-content/plugins/gtranslate/flags/24/de.png\" height=\"24\" width=\"24\" alt=\"German\" /></a><a href=\"#\" onclick=\"doGTranslate(\'vi|vi\');return false;\" title=\"Vietnamese\" class=\"glink nturl notranslate\"><img src=\"//bubotea.com/wp-content/plugins/gtranslate/flags/24/vi.png\" height=\"24\" width=\"24\" alt=\"Vietnamese\" /></a><style>\r\n#goog-gt-tt {display:none !important;}\r\n.goog-te-banner-frame {display:none !important;}\r\n.goog-te-menu-value:hover {text-decoration:none !important;}\r\n.goog-text-highlight {background-color:transparent !important;box-shadow:none !important;}\r\nbody {top:0 !important;}\r\n#google_translate_element2 {display:none!important;}\r\n</style>\r\n\r\n<div id=\"google_translate_element2\"></div>\r\n<script>\r\nfunction googleTranslateElementInit2() {new google.translate.TranslateElement({pageLanguage: \'vi\',autoDisplay: false}, \'google_translate_element2\');}\r\n</script><script src=\"//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit2\"></script>\r\n\r\n\r\n<script>\r\nfunction GTranslateGetCurrentLang() {var keyValue = document[\'cookie\'].match(\'(^|;) ?googtrans=([^;]*)(;|$)\');return keyValue ? keyValue[2].split(\'/\')[2] : null;}\r\nfunction GTranslateFireEvent(element,event){try{if(document.createEventObject){var evt=document.createEventObject();element.fireEvent(\'on\'+event,evt)}else{var evt=document.createEvent(\'HTMLEvents\');evt.initEvent(event,true,true);element.dispatchEvent(evt)}}catch(e){}}\r\nfunction doGTranslate(lang_pair){if(lang_pair.value)lang_pair=lang_pair.value;if(lang_pair==\'\')return;var lang=lang_pair.split(\'|\')[1];if(GTranslateGetCurrentLang() == null && lang == lang_pair.split(\'|\')[0])return;var teCombo;var sel=document.getElementsByTagName(\'select\');for(var i=0;i<sel.length;i++)if(sel[i].className.indexOf(\'goog-te-combo\')!=-1){teCombo=sel[i];break;}if(document.getElementById(\'google_translate_element2\')==null||document.getElementById(\'google_translate_element2\').innerHTML.length==0||teCombo.length==0||teCombo.innerHTML.length==0){setTimeout(function(){doGTranslate(lang_pair)},500)}else{teCombo.value=lang;GTranslateFireEvent(teCombo,\'change\');GTranslateFireEvent(teCombo,\'change\')}}\r\n</script>\";s:10:\"incl_langs\";a:10:{i:0;s:2:\"ar\";i:1;s:5:\"zh-CN\";i:2;s:2:\"nl\";i:3;s:2:\"en\";i:4;s:2:\"fr\";i:5;s:2:\"de\";i:6;s:2:\"it\";i:7;s:2:\"pt\";i:8;s:2:\"ru\";i:9;s:2:\"es\";}s:11:\"fincl_langs\";a:4:{i:0;s:2:\"nl\";i:1;s:2:\"en\";i:2;s:2:\"de\";i:3;s:2:\"vi\";}s:9:\"alt_flags\";a:0:{}s:19:\"switcher_text_color\";s:4:\"#666\";s:20:\"switcher_arrow_color\";s:4:\"#666\";s:21:\"switcher_border_color\";s:4:\"#ccc\";s:25:\"switcher_background_color\";s:4:\"#fff\";s:32:\"switcher_background_shadow_color\";s:7:\"#efefef\";s:31:\"switcher_background_hover_color\";s:4:\"#fff\";s:19:\"dropdown_text_color\";s:4:\"#000\";s:20:\"dropdown_hover_color\";s:4:\"#fff\";s:25:\"dropdown_background_color\";s:4:\"#eee\";s:14:\"language_codes\";s:320:\"af,sq,am,ar,hy,az,eu,be,bn,bs,bg,ca,ceb,ny,zh-CN,zh-TW,co,hr,cs,da,nl,en,eo,et,tl,fi,fr,fy,gl,ka,de,el,gu,ht,ha,haw,iw,hi,hmn,hu,is,ig,id,ga,it,ja,jw,kn,kk,km,ko,ku,ky,lo,la,lv,lt,lb,mk,mg,ms,ml,mt,mi,mr,mn,my,ne,no,ps,fa,pl,pt,pa,ro,ru,sm,gd,sr,st,sn,sd,si,sk,sl,so,es,su,sw,sv,tg,ta,te,th,tr,uk,ur,uz,vi,cy,xh,yi,yo,zu\";s:15:\"language_codes2\";s:320:\"af,sq,am,ar,hy,az,eu,be,bn,bs,bg,ca,ceb,ny,zh-CN,zh-TW,co,hr,cs,da,nl,en,eo,et,tl,fi,fr,fy,gl,ka,de,el,gu,ht,ha,haw,iw,hi,hmn,hu,is,ig,id,ga,it,ja,jw,kn,kk,km,ko,ku,ky,lo,la,lv,lt,lb,mk,mg,ms,ml,mt,mi,mr,mn,my,ne,no,ps,fa,pl,pt,pa,ro,ru,sm,gd,sr,st,sn,sd,si,sk,sl,so,es,su,sw,sv,tg,ta,te,th,tr,uk,ur,uz,vi,cy,xh,yi,yo,zu\";}', 'yes'),
(2566, 'widget_gtranslate', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(2567, 'gtranslate_admin_notice', 'a:2:{s:15:\"two_week_review\";a:3:{s:5:\"start\";s:9:\"1/11/2021\";s:3:\"int\";i:5;s:9:\"dismissed\";i:1;}s:12:\"upgrade_tips\";a:3:{s:5:\"start\";s:8:\"1/8/2021\";s:3:\"int\";i:2;s:9:\"dismissed\";i:1;}}', 'yes'),
(2789, 'ai1wmue_plugin_key', '547dbfa7-5ad1-4134-abfa-60c6d351ebb9', 'yes'),
(2855, 'woocommerce_merchant_email_notifications', 'yes', 'no'),
(2860, 'woocommerce_admin_version', '1.9.0', 'yes'),
(2878, 'active_plugins', 'a:12:{i:0;s:91:\"all-in-one-wp-migration-unlimited-extension/all-in-one-wp-migration-unlimited-extension.php\";i:1;s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";i:2;s:33:\"classic-editor/classic-editor.php\";i:3;s:29:\"easy-wp-smtp/easy-wp-smtp.php\";i:4;s:25:\"gtranslate/gtranslate.php\";i:5;s:35:\"insert-headers-and-footers/ihaf.php\";i:6;s:23:\"loco-translate/loco.php\";i:7;s:53:\"nextend-facebook-connect/nextend-facebook-connect.php\";i:8;s:56:\"woo-checkout-field-editor-pro/checkout-form-designer.php\";i:9;s:49:\"woo-variation-swatches/woo-variation-swatches.php\";i:10;s:27:\"woocommerce/woocommerce.php\";i:11;s:34:\"yith-woocommerce-wishlist/init.php\";}', 'yes'),
(2880, 'ai1wm_backups_labels', 'a:0:{}', 'yes'),
(2881, 'ai1wm_sites_links', 'a:0:{}', 'yes'),
(2882, 'template', 'flatsome', 'yes'),
(2883, 'stylesheet', 'flatsome', 'yes'),
(2885, '_transient_woocommerce_webhook_ids_status_active', 'a:0:{}', 'yes'),
(2886, '_transient_wc_attribute_taxonomies', 'a:1:{i:0;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"1\";s:14:\"attribute_name\";s:10:\"kich-thuoc\";s:15:\"attribute_label\";s:14:\"Kích thước\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}}', 'yes'),
(2887, '_transient_jetpack_autoloader_plugin_paths', 'a:1:{i:0;s:29:\"{{WP_PLUGIN_DIR}}/woocommerce\";}', 'yes'),
(2890, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:2;s:3:\"all\";i:2;s:9:\"moderated\";s:1:\"1\";s:8:\"approved\";s:1:\"1\";s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(2900, '_transient_shipping-transient-version', '1613718676', 'yes'),
(2905, '_transient_product-transient-version', '1616202481', 'yes'),
(2946, '_transient_product_query-transient-version', '1618209845', 'yes'),
(2975, '_transient_health-check-site-status-result', '{\"good\":7,\"recommended\":9,\"critical\":1}', 'yes'),
(3031, '_transient_woocommerce_reports-transient-version', '1618280693', 'yes'),
(3037, '_site_transient_timeout_yith_promo_message', '3227653008', 'no'),
(3038, '_site_transient_yith_promo_message', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<!-- Default border color: #acc327 -->\n<!-- Default background color: #ecf7ed -->\n\n<promotions>\n    <expiry_date>2019-12-10</expiry_date>\n    <promo>\n        <promo_id>yithblackfriday2019</promo_id>\n        <title><![CDATA[<strong>YITH Black Friday</strong>]]></title>\n        <description><![CDATA[\n            Don\'t miss our <strong>30% discount</strong> on all our products! No coupon needed in cart. Valid from <strong>28th November</strong> to <strong>2nd December</strong>.\n        ]]></description>\n        <link>\n            <label>Get your deals now!</label>\n            <url><![CDATA[https://yithemes.com]]></url>\n        </link>\n        <style>\n            <image_bg_color>#272121</image_bg_color>\n            <border_color>#272121</border_color>\n            <background_color>#ffffff</background_color>\n        </style>\n        <start_date>2019-11-27 23:59:59</start_date>\n        <end_date>2019-12-03 08:00:00</end_date>\n    </promo>\n</promotions>', 'no'),
(4329, 'https_detection_errors', 'a:2:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:36:\"Xác thực SSL không thành công.\";}s:17:\"bad_response_code\";a:1:{i:0;s:11:\"Bad Request\";}}', 'yes'),
(5538, '_transient_wvs_template-transient-version', '1616202481', 'yes'),
(5539, '_transient_wvs_attribute_taxonomy-transient-version', '1616202481', 'yes'),
(5540, '_transient_wvs_archive_template-transient-version', '1616202481', 'yes'),
(5541, '_transient_wvs_variation_attribute_options_html-transient-version', '1616202481', 'yes'),
(5837, '_transient_timeout_wc_term_counts', '1619314821', 'no'),
(5838, '_transient_wc_term_counts', 'a:2:{i:19;s:1:\"6\";i:16;s:1:\"0\";}', 'no'),
(5910, 'updraft_task_manager_dbversion', '1.1', 'yes'),
(5936, 'wp-smush-settings', 'a:22:{s:4:\"auto\";b:1;s:5:\"lossy\";b:0;s:10:\"strip_exif\";b:1;s:6:\"resize\";b:0;s:9:\"detection\";b:0;s:8:\"original\";b:0;s:6:\"backup\";b:0;s:10:\"png_to_jpg\";b:0;s:7:\"nextgen\";b:0;s:2:\"s3\";b:0;s:9:\"gutenberg\";b:0;s:10:\"js_builder\";b:0;s:3:\"cdn\";b:0;s:11:\"auto_resize\";b:0;s:4:\"webp\";b:1;s:5:\"usage\";b:1;s:17:\"accessible_colors\";b:0;s:9:\"keep_data\";b:1;s:9:\"lazy_load\";b:1;s:17:\"background_images\";b:1;s:16:\"rest_api_support\";b:0;s:8:\"webp_mod\";b:0;}', 'yes'),
(5937, 'wp-smush-install-type', 'existing', 'no'),
(5938, 'wp-smush-version', '3.8.3', 'no'),
(5941, 'wdev-frash', 'a:3:{s:7:\"plugins\";a:1:{s:23:\"wp-smushit/wp-smush.php\";i:1616396417;}s:5:\"queue\";a:2:{s:32:\"7de3619981caadc55f30a002bfb299f6\";a:3:{s:6:\"plugin\";s:23:\"wp-smushit/wp-smush.php\";s:4:\"type\";s:5:\"email\";s:7:\"show_at\";i:1616396417;}s:32:\"fc50097023d0d34c5a66f6cddcf77694\";a:3:{s:6:\"plugin\";s:23:\"wp-smushit/wp-smush.php\";s:4:\"type\";s:4:\"rate\";s:7:\"show_at\";i:1617001217;}}s:4:\"done\";a:0:{}}', 'no'),
(5942, 'wpmudev_recommended_plugins_registered', 'a:1:{s:23:\"wp-smushit/wp-smush.php\";a:1:{s:13:\"registered_at\";i:1616396417;}}', 'no'),
(5945, 'smush_global_stats', 'a:9:{s:11:\"size_before\";i:0;s:10:\"size_after\";i:0;s:7:\"percent\";d:0;s:5:\"human\";s:5:\"0,0 B\";s:5:\"bytes\";i:0;s:12:\"total_images\";i:0;s:12:\"resize_count\";i:0;s:14:\"resize_savings\";i:0;s:18:\"conversion_savings\";i:0;}', 'no'),
(5946, 'dir_smush_stats', 'a:2:{s:9:\"dir_smush\";a:2:{s:5:\"total\";i:0;s:9:\"optimised\";i:0;}s:14:\"combined_stats\";a:0:{}}', 'no'),
(5947, 'wp-smush-lazy_load', 'a:9:{s:6:\"format\";a:5:{s:4:\"jpeg\";b:1;s:3:\"png\";b:1;s:3:\"gif\";b:1;s:3:\"svg\";b:1;s:6:\"iframe\";b:1;}s:6:\"output\";a:4:{s:7:\"content\";b:1;s:7:\"widgets\";b:1;s:10:\"thumbnails\";b:1;s:9:\"gravatars\";b:1;}s:9:\"animation\";a:4:{s:8:\"selected\";s:6:\"fadein\";s:6:\"fadein\";a:2:{s:8:\"duration\";i:400;s:5:\"delay\";i:0;}s:7:\"spinner\";a:2:{s:8:\"selected\";s:1:\"1\";s:6:\"custom\";a:0:{}}s:11:\"placeholder\";a:3:{s:8:\"selected\";s:1:\"1\";s:6:\"custom\";a:0:{}s:5:\"color\";s:7:\"#F3F3F3\";}}s:7:\"include\";a:10:{s:9:\"frontpage\";b:1;s:4:\"home\";b:1;s:4:\"page\";b:1;s:6:\"single\";b:1;s:7:\"archive\";b:1;s:8:\"category\";b:1;s:3:\"tag\";b:1;s:6:\"blocks\";b:1;s:7:\"product\";b:1;s:13:\"featured_item\";b:1;}s:13:\"exclude-pages\";a:0:{}s:15:\"exclude-classes\";a:0:{}s:6:\"footer\";b:1;s:6:\"native\";N;s:8:\"noscript\";N;}', 'yes'),
(5948, 'skip-smush-setup', '1', 'yes'),
(5949, 'wp-smush-hide_smush_welcome', '1', 'no'),
(5952, 'action_scheduler_migration_status', 'complete', 'yes'),
(6246, '_transient_timeout_wc_child_has_weight_81', '1619200339', 'no'),
(6247, '_transient_wc_child_has_weight_81', '0', 'no'),
(6248, '_transient_timeout_wc_child_has_dimensions_81', '1619200339', 'no'),
(6249, '_transient_wc_child_has_dimensions_81', '0', 'no'),
(6361, '_transient_timeout_wc_child_has_weight_59', '1619284212', 'no'),
(6362, '_transient_wc_child_has_weight_59', '0', 'no'),
(6363, '_transient_timeout_wc_child_has_dimensions_59', '1619284212', 'no'),
(6364, '_transient_wc_child_has_dimensions_59', '0', 'no'),
(6370, '_transient_timeout_wc_child_has_weight_85', '1619286813', 'no'),
(6371, '_transient_wc_child_has_weight_85', '0', 'no'),
(6372, '_transient_timeout_wc_child_has_dimensions_85', '1619286813', 'no'),
(6373, '_transient_wc_child_has_dimensions_85', '0', 'no'),
(6925, '_transient_timeout_wc_low_stock_count', '1619682031', 'no'),
(6926, '_transient_wc_low_stock_count', '0', 'no'),
(6927, '_transient_timeout_wc_outofstock_count', '1619682031', 'no'),
(6928, '_transient_wc_outofstock_count', '0', 'no'),
(7129, 'w3tc_extensions_hooks', '{\"actions\":[],\"filters\":[],\"next_check_date\":1617522541}', 'yes'),
(7130, 'w3tc_state', '{\"common.install\":1617172230,\"common.install_version\":\"2.1.1\",\"license.status\":\"no_key\",\"license.next_check\":1617604230,\"license.terms\":\"\",\"license.community_terms\":\"accept\"}', 'no'),
(7733, 'w3tc_browsercache_flush_timestamp', '47462', 'yes'),
(7734, 'w3tc_setupguide_completed', '1617172367', 'no'),
(7735, 'w3tc_generic_widgetservices', '{\"content\":{\"items\":[{\"name\":\"Premium Support Response (Usually <1h First Response)\",\"parameter_name\":\"field4\",\"parameter_value\":\"Premium Support Response (Usually <1h First Response)\",\"form_hash\":\"m5pom8z0qy59rm\"},{\"name\":\"Performance Audit \\/ Consult (Theme, Plugin, Content, Server)\",\"parameter_name\":\"field4\",\"parameter_value\":\"Performance Audit \\/ Consult (Theme, Plugin, Content, Server)\",\"form_hash\":\"m5pom8z0qy59rm\"},{\"name\":\"Plugin Configuration\",\"parameter_name\":\"field4\",\"parameter_value\":\"Plugin Configuration\",\"form_hash\":\"m5pom8z0qy59rm\"},{\"name\":\"SSL Performance Setup\",\"parameter_name\":\"field4\",\"parameter_value\":\"SSL Performance Setup\",\"form_hash\":\"m5pom8z0qy59rm\"},{\"name\":\"Full Site Delivery Setup\",\"parameter_name\":\"field4\",\"parameter_value\":\"Full Site Delivery Setup\",\"form_hash\":\"m5pom8z0qy59rm\"},{\"name\":\"Hosting Environment Troubleshooting\",\"parameter_name\":\"field4\",\"parameter_value\":\"Hosting Environment Troubleshooting\",\"form_hash\":\"m5pom8z0qy59rm\"},{\"name\":\"Performance Monitoring\",\"parameter_name\":\"field4\",\"parameter_value\":\"Performance Monitoring\",\"form_hash\":\"m5pom8z0qy59rm\"}],\"ui_strings\":{\"cdn.maxcdn.signUpAndSave\":\"Sign Up Now and save !\",\"cdn.maxcdn.signUpAndSave.description\":\"MaxCDN is a service that lets you speed up your site even more with W3 Total Cache. Sign up now to recieve a special offer!\",\"cdn.stackpath.signUpAndSave\":\"Sign Up Now and save !\",\"cdn.stackpath.signUpAndSave.description\":\"StackPath is a service that lets you speed up your site even more with W3 Total Cache. Sign up now and save!\",\"cdn.stackpath2.signUpAndSave\":\"Sign Up Now and save !\",\"cdn.stackpath2.signUpAndSave.description\":\"StackPath is a service that lets you speed up your site even more with W3 Total Cache. Sign up now to recieve a special offer!\",\"minify.general.header\":\"Reduce load time by decreasing the size and number of <acronym title=\'Cascading Style Sheet\'>CSS<\\/acronym> and <acronym title=\'JavaScript\'>JS<\\/acronym> files. Automatically remove unncessary data from <acronym title=\'Cascading Style Sheet\'>CSS<\\/acronym>, <acronym title=\'JavaScript\'>JS<\\/acronym>, feed, page and post <acronym title=\'Hypertext Markup Language\'>HTML<\\/acronym>.\",\"newrelic.general.header\":\"New Relic may not be installed or not active on this server. <a href=\'%s\' target=\'_blank\'>Sign up for a (free) account<\\/a>. Visit <a href=\'%s\' target=\'_blank\'>New Relic<\\/a> for installation instructions.\",\"reverseproxy.general.header\":\"A reverse proxy adds scale to an server by handling requests before WordPress does. Purge settings are set on the <a href=\'%s\'>Page Cache settings<\\/a> page and <a href=\'%s\'>Browser Cache settings<\\/a> are set on the browser cache settings page.\",\"cdnfsd.general.header\":\"Host the entire website with your compatible <acronym title=\'Content Delivery Network\'>CDN<\\/acronym> provider to reduce page load time.\",\"cdn.general.header\":\"Host static files with your <acronym title=\'Content Delivery Network\'>CDN<\\/acronym> to reduce page load time.\",\"cdn.stackpath.widget.existing\":\"If you\'re an existing StackPath customer, enable <acronym title=\'Content Delivery Network\'>CDN<\\/acronym> and:\",\"cdn.stackpath2.widget.existing\":\"If you\'re an existing StackPath customer, enable <acronym title=\'Content Delivery Network\'>CDN<\\/acronym> and:\",\"cdn.stackpath2.widget.works_magically\":\"StackPath works magically with W3 Total Cache.\",\"cdn.stackpath.widget.header\":\"Dramatically increase website speeds in just a few clicks! Add the StackPath content delivery network (<acronym title=\'Content Delivery Network\'>CDN<\\/acronym>) service to your site.\",\"cdn.stackpath2.widget.header\":\"Dramatically increase website speeds in just a few clicks! Add the StackPath content delivery network (<acronym title=\'Content Delivery Network\'>CDN<\\/acronym>) service to your site.\"}},\"expires\":1617777176}', 'no'),
(9512, 'comment_whitelist', '1', 'yes'),
(9513, 'blacklist_keys', '', 'no'),
(9514, 'wp_page_for_privacy_policy', '0', 'yes'),
(9515, 'db_upgraded', '', 'yes'),
(9516, 'can_compress_scripts', '0', 'yes'),
(9614, 'woocommerce_ces_tracks_queue', 'a:0:{}', 'yes'),
(9615, 'woocommerce_clear_ces_tracks_queue_for_page', '', 'yes'),
(9619, '_transient_timeout_wc_shipping_method_count', '1620814151', 'no');
INSERT INTO `3kuF9kxQ_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(9620, '_transient_wc_shipping_method_count', 'a:2:{s:7:\"version\";s:10:\"1613718676\";s:5:\"value\";i:1;}', 'no'),
(9644, '_transient_timeout_wc_child_has_weight_72', '1620814939', 'no'),
(9645, '_transient_wc_child_has_weight_72', '0', 'no'),
(9646, '_transient_timeout_wc_child_has_dimensions_72', '1620814939', 'no'),
(9647, '_transient_wc_child_has_dimensions_72', '0', 'no'),
(9822, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1619120884;s:7:\"checked\";a:5:{s:8:\"flatsome\";s:6:\"3.13.1\";s:9:\"pub-store\";s:3:\"1.0\";s:14:\"twentynineteen\";s:3:\"1.8\";s:12:\"twentytwenty\";s:3:\"1.6\";s:15:\"twentytwentyone\";s:3:\"1.0\";}s:8:\"response\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.0.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.7.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.2.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(9823, 'ai1wm_secret_key', 'XPeWOTnfNP8e', 'yes'),
(9825, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1619125512;s:7:\"checked\";a:12:{s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:3:\"7.6\";s:91:\"all-in-one-wp-migration-unlimited-extension/all-in-one-wp-migration-unlimited-extension.php\";s:4:\"2.31\";s:56:\"woo-checkout-field-editor-pro/checkout-form-designer.php\";s:5:\"1.4.5\";s:33:\"classic-editor/classic-editor.php\";s:3:\"1.6\";s:29:\"easy-wp-smtp/easy-wp-smtp.php\";s:5:\"1.4.5\";s:25:\"gtranslate/gtranslate.php\";s:6:\"2.8.61\";s:35:\"insert-headers-and-footers/ihaf.php\";s:5:\"1.5.0\";s:23:\"loco-translate/loco.php\";s:5:\"2.5.0\";s:53:\"nextend-facebook-connect/nextend-facebook-connect.php\";s:6:\"3.0.27\";s:49:\"woo-variation-swatches/woo-variation-swatches.php\";s:6:\"1.1.10\";s:27:\"woocommerce/woocommerce.php\";s:5:\"5.0.0\";s:34:\"yith-woocommerce-wishlist/init.php\";s:6:\"3.0.19\";}s:8:\"response\";a:7:{s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:37:\"w.org/plugins/all-in-one-wp-migration\";s:4:\"slug\";s:23:\"all-in-one-wp-migration\";s:6:\"plugin\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:11:\"new_version\";s:4:\"7.41\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/all-in-one-wp-migration/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/all-in-one-wp-migration.7.41.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-256x256.png?rev=2458334\";s:2:\"1x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-128x128.png?rev=2458334\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-1544x500.png?rev=2458349\";s:2:\"1x\";s:78:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-772x250.png?rev=2458349\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.7.1\";s:12:\"requires_php\";s:6:\"5.2.17\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:56:\"woo-checkout-field-editor-pro/checkout-form-designer.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:43:\"w.org/plugins/woo-checkout-field-editor-pro\";s:4:\"slug\";s:29:\"woo-checkout-field-editor-pro\";s:6:\"plugin\";s:56:\"woo-checkout-field-editor-pro/checkout-form-designer.php\";s:11:\"new_version\";s:5:\"1.4.8\";s:3:\"url\";s:60:\"https://wordpress.org/plugins/woo-checkout-field-editor-pro/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/woo-checkout-field-editor-pro.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:82:\"https://ps.w.org/woo-checkout-field-editor-pro/assets/icon-256x256.png?rev=1821155\";s:2:\"1x\";s:82:\"https://ps.w.org/woo-checkout-field-editor-pro/assets/icon-128x128.png?rev=1821155\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:85:\"https://ps.w.org/woo-checkout-field-editor-pro/assets/banner-1544x500.png?rev=1975484\";s:2:\"1x\";s:84:\"https://ps.w.org/woo-checkout-field-editor-pro/assets/banner-772x250.png?rev=1975484\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.7.1\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:29:\"easy-wp-smtp/easy-wp-smtp.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:26:\"w.org/plugins/easy-wp-smtp\";s:4:\"slug\";s:12:\"easy-wp-smtp\";s:6:\"plugin\";s:29:\"easy-wp-smtp/easy-wp-smtp.php\";s:11:\"new_version\";s:5:\"1.4.6\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/easy-wp-smtp/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/plugin/easy-wp-smtp.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/easy-wp-smtp/assets/icon-128x128.png?rev=1242044\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:67:\"https://ps.w.org/easy-wp-smtp/assets/banner-772x250.png?rev=1650323\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.7.1\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:25:\"gtranslate/gtranslate.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:24:\"w.org/plugins/gtranslate\";s:4:\"slug\";s:10:\"gtranslate\";s:6:\"plugin\";s:25:\"gtranslate/gtranslate.php\";s:11:\"new_version\";s:6:\"2.8.62\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/gtranslate/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/gtranslate.2.8.62.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/gtranslate/assets/icon-256x256.png?rev=1625219\";s:2:\"1x\";s:63:\"https://ps.w.org/gtranslate/assets/icon-128x128.png?rev=1579941\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/gtranslate/assets/banner-1544x500.png?rev=2034820\";s:2:\"1x\";s:65:\"https://ps.w.org/gtranslate/assets/banner-772x250.png?rev=2034820\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.7.1\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:23:\"loco-translate/loco.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:28:\"w.org/plugins/loco-translate\";s:4:\"slug\";s:14:\"loco-translate\";s:6:\"plugin\";s:23:\"loco-translate/loco.php\";s:11:\"new_version\";s:5:\"2.5.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/loco-translate/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/loco-translate.2.5.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/loco-translate/assets/icon-256x256.png?rev=1000676\";s:2:\"1x\";s:67:\"https://ps.w.org/loco-translate/assets/icon-128x128.png?rev=1000676\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:68:\"https://ps.w.org/loco-translate/assets/banner-772x250.jpg?rev=745046\";}s:11:\"banners_rtl\";a:0:{}s:14:\"upgrade_notice\";s:53:\"<ul>\n<li>Various improvements and bugfixes</li>\n</ul>\";s:6:\"tested\";s:5:\"5.7.1\";s:12:\"requires_php\";s:5:\"5.2.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:49:\"woo-variation-swatches/woo-variation-swatches.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:36:\"w.org/plugins/woo-variation-swatches\";s:4:\"slug\";s:22:\"woo-variation-swatches\";s:6:\"plugin\";s:49:\"woo-variation-swatches/woo-variation-swatches.php\";s:11:\"new_version\";s:6:\"1.1.14\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/woo-variation-swatches/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/woo-variation-swatches.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:75:\"https://ps.w.org/woo-variation-swatches/assets/icon-128x128.png?rev=1864242\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/woo-variation-swatches/assets/banner-1544x500.png?rev=2462963\";s:2:\"1x\";s:77:\"https://ps.w.org/woo-variation-swatches/assets/banner-772x250.png?rev=2305235\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.7.1\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:34:\"yith-woocommerce-wishlist/init.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:39:\"w.org/plugins/yith-woocommerce-wishlist\";s:4:\"slug\";s:25:\"yith-woocommerce-wishlist\";s:6:\"plugin\";s:34:\"yith-woocommerce-wishlist/init.php\";s:11:\"new_version\";s:6:\"3.0.21\";s:3:\"url\";s:56:\"https://wordpress.org/plugins/yith-woocommerce-wishlist/\";s:7:\"package\";s:75:\"https://downloads.wordpress.org/plugin/yith-woocommerce-wishlist.3.0.21.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:78:\"https://ps.w.org/yith-woocommerce-wishlist/assets/icon-128x128.jpg?rev=2215573\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:81:\"https://ps.w.org/yith-woocommerce-wishlist/assets/banner-1544x500.jpg?rev=2209192\";s:2:\"1x\";s:80:\"https://ps.w.org/yith-woocommerce-wishlist/assets/banner-772x250.jpg?rev=2209192\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.7.1\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:35:\"insert-headers-and-footers/ihaf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:40:\"w.org/plugins/insert-headers-and-footers\";s:4:\"slug\";s:26:\"insert-headers-and-footers\";s:6:\"plugin\";s:35:\"insert-headers-and-footers/ihaf.php\";s:11:\"new_version\";s:5:\"1.5.0\";s:3:\"url\";s:57:\"https://wordpress.org/plugins/insert-headers-and-footers/\";s:7:\"package\";s:75:\"https://downloads.wordpress.org/plugin/insert-headers-and-footers.1.5.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/insert-headers-and-footers/assets/icon-256x256.png?rev=1610266\";s:2:\"1x\";s:79:\"https://ps.w.org/insert-headers-and-footers/assets/icon-128x128.png?rev=1610266\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:81:\"https://ps.w.org/insert-headers-and-footers/assets/banner-772x250.png?rev=1610266\";}s:11:\"banners_rtl\";a:0:{}}s:53:\"nextend-facebook-connect/nextend-facebook-connect.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:38:\"w.org/plugins/nextend-facebook-connect\";s:4:\"slug\";s:24:\"nextend-facebook-connect\";s:6:\"plugin\";s:53:\"nextend-facebook-connect/nextend-facebook-connect.php\";s:11:\"new_version\";s:6:\"3.0.27\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/nextend-facebook-connect/\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/plugin/nextend-facebook-connect.3.0.27.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:77:\"https://ps.w.org/nextend-facebook-connect/assets/icon-256x256.png?rev=1825061\";s:2:\"1x\";s:69:\"https://ps.w.org/nextend-facebook-connect/assets/icon.svg?rev=1825061\";s:3:\"svg\";s:69:\"https://ps.w.org/nextend-facebook-connect/assets/icon.svg?rev=1825061\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:80:\"https://ps.w.org/nextend-facebook-connect/assets/banner-1544x500.png?rev=2159749\";s:2:\"1x\";s:79:\"https://ps.w.org/nextend-facebook-connect/assets/banner-772x250.png?rev=2159749\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"5.2.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.5.2.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2366418\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2366418\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2366418\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2366418\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.7.1\";s:12:\"requires_php\";s:3:\"7.0\";s:13:\"compatibility\";a:0:{}}}}', 'no'),
(9826, 'ai1wm_status', 'a:2:{s:4:\"type\";s:8:\"download\";s:7:\"message\";s:294:\"<a href=\"https://bubotea.com/wp-content/ai1wm-backups/bubotea.com-20210413-023242-748.wpress\" class=\"ai1wm-button-green ai1wm-emphasize ai1wm-button-download\" title=\"bubotea.com\" download=\"bubotea.com-20210413-023242-748.wpress\"><span>Tải bubotea.com</span><em>Kích thước: 299 MB</em></a>\";}', 'yes'),
(10399, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:5:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:62:\"https://downloads.wordpress.org/release/vi/wordpress-5.7.1.zip\";s:6:\"locale\";s:2:\"vi\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:62:\"https://downloads.wordpress.org/release/vi/wordpress-5.7.1.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.7.1\";s:7:\"version\";s:5:\"5.7.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.7.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.7.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.7.1\";s:7:\"version\";s:5:\"5.7.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.7.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.7.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.7.1\";s:7:\"version\";s:5:\"5.7.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.6.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.6.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.6.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.6.3-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.6.3\";s:7:\"version\";s:5:\"5.6.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:4;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.4.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.5.4-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.5.4-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.5.4\";s:7:\"version\";s:5:\"5.5.4\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1619125512;s:15:\"version_checked\";s:5:\"5.4.5\";s:12:\"translations\";a:0:{}}', 'no'),
(10464, '_site_transient_timeout_php_check_4ccb21997ba741599aa1bf51b49f3fe2', '1619164083', 'no'),
(10465, '_site_transient_php_check_4ccb21997ba741599aa1bf51b49f3fe2', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(11130, '_transient_timeout_wc_product_children_88', '1621504965', 'no'),
(11131, '_transient_wc_product_children_88', 'a:2:{s:3:\"all\";a:2:{i:0;i:89;i:1;i:90;}s:7:\"visible\";a:2:{i:0;i:89;i:1;i:90;}}', 'no'),
(11132, '_transient_timeout_wc_var_prices_88', '1621504965', 'no'),
(11133, '_transient_wc_var_prices_88', '{\"version\":\"1616202481\",\"f9e544f77b7eac7add281ef28ca5559f\":{\"price\":{\"89\":\"3.5\",\"90\":\"4.5\"},\"regular_price\":{\"89\":\"3.5\",\"90\":\"4.5\"},\"sale_price\":{\"89\":\"3.5\",\"90\":\"4.5\"}},\"e1b88e1c9a8573a0fff4a38a491fcd6d\":{\"price\":{\"89\":\"3.5\",\"90\":\"4.5\"},\"regular_price\":{\"89\":\"3.5\",\"90\":\"4.5\"},\"sale_price\":{\"89\":\"3.5\",\"90\":\"4.5\"}}}', 'no'),
(11134, '_transient_timeout_wc_product_children_85', '1621504965', 'no'),
(11135, '_transient_wc_product_children_85', 'a:2:{s:3:\"all\";a:2:{i:0;i:86;i:1;i:87;}s:7:\"visible\";a:2:{i:0;i:86;i:1;i:87;}}', 'no'),
(11136, '_transient_timeout_wc_var_prices_85', '1621504965', 'no'),
(11137, '_transient_wc_var_prices_85', '{\"version\":\"1616202481\",\"f9e544f77b7eac7add281ef28ca5559f\":{\"price\":{\"86\":\"3.5\",\"87\":\"4.5\"},\"regular_price\":{\"86\":\"3.5\",\"87\":\"4.5\"},\"sale_price\":{\"86\":\"3.5\",\"87\":\"4.5\"}},\"e1b88e1c9a8573a0fff4a38a491fcd6d\":{\"price\":{\"86\":\"3.5\",\"87\":\"4.5\"},\"regular_price\":{\"86\":\"3.5\",\"87\":\"4.5\"},\"sale_price\":{\"86\":\"3.5\",\"87\":\"4.5\"}}}', 'no'),
(11138, '_transient_timeout_wc_var_prices_81', '1621504965', 'no'),
(11139, '_transient_wc_var_prices_81', '{\"version\":\"1616202481\",\"f9e544f77b7eac7add281ef28ca5559f\":{\"price\":{\"82\":\"3.5\",\"83\":\"4.5\"},\"regular_price\":{\"82\":\"3.5\",\"83\":\"4.5\"},\"sale_price\":{\"82\":\"3.5\",\"83\":\"4.5\"}},\"e1b88e1c9a8573a0fff4a38a491fcd6d\":{\"price\":{\"82\":\"3.5\",\"83\":\"4.5\"},\"regular_price\":{\"82\":\"3.5\",\"83\":\"4.5\"},\"sale_price\":{\"82\":\"3.5\",\"83\":\"4.5\"}}}', 'no'),
(11140, '_transient_timeout_wc_var_prices_77', '1621504965', 'no'),
(11141, '_transient_wc_var_prices_77', '{\"version\":\"1616202481\",\"f9e544f77b7eac7add281ef28ca5559f\":{\"price\":{\"78\":\"3.5\",\"79\":\"4.5\"},\"regular_price\":{\"78\":\"3.5\",\"79\":\"4.5\"},\"sale_price\":{\"78\":\"3.5\",\"79\":\"4.5\"}},\"e1b88e1c9a8573a0fff4a38a491fcd6d\":{\"price\":{\"78\":\"3.5\",\"79\":\"4.5\"},\"regular_price\":{\"78\":\"3.5\",\"79\":\"4.5\"},\"sale_price\":{\"78\":\"3.5\",\"79\":\"4.5\"}}}', 'no'),
(11142, '_transient_timeout_wc_var_prices_72', '1621504965', 'no'),
(11143, '_transient_wc_var_prices_72', '{\"version\":\"1616202481\",\"f9e544f77b7eac7add281ef28ca5559f\":{\"price\":{\"75\":\"3.5\",\"76\":\"4.5\"},\"regular_price\":{\"75\":\"3.5\",\"76\":\"4.5\"},\"sale_price\":{\"75\":\"3.5\",\"76\":\"4.5\"}},\"e1b88e1c9a8573a0fff4a38a491fcd6d\":{\"price\":{\"75\":\"3.5\",\"76\":\"4.5\"},\"regular_price\":{\"75\":\"3.5\",\"76\":\"4.5\"},\"sale_price\":{\"75\":\"3.5\",\"76\":\"4.5\"}}}', 'no'),
(11144, '_transient_timeout_wc_product_children_59', '1621504965', 'no'),
(11145, '_transient_wc_product_children_59', 'a:2:{s:3:\"all\";a:2:{i:0;i:68;i:1;i:69;}s:7:\"visible\";a:2:{i:0;i:68;i:1;i:69;}}', 'no'),
(11146, '_transient_timeout_wc_var_prices_59', '1621504965', 'no'),
(11147, '_transient_wc_var_prices_59', '{\"version\":\"1616202481\",\"f9e544f77b7eac7add281ef28ca5559f\":{\"price\":{\"68\":\"3.5\",\"69\":\"4.5\"},\"regular_price\":{\"68\":\"3.5\",\"69\":\"4.5\"},\"sale_price\":{\"68\":\"3.5\",\"69\":\"4.5\"}},\"e1b88e1c9a8573a0fff4a38a491fcd6d\":{\"price\":{\"68\":\"3.5\",\"69\":\"4.5\"},\"regular_price\":{\"68\":\"3.5\",\"69\":\"4.5\"},\"sale_price\":{\"68\":\"3.5\",\"69\":\"4.5\"}}}', 'no'),
(11454, '_transient_timeout__woocommerce_helper_updates', '1619120886', 'no'),
(11455, '_transient__woocommerce_helper_updates', 'a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1619077686;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}', 'no'),
(11528, '_transient_timeout__woocommerce_helper_subscriptions', '1619121782', 'no'),
(11529, '_transient__woocommerce_helper_subscriptions', 'a:0:{}', 'no'),
(11540, '_site_transient_timeout_theme_roots', '1619127313', 'no'),
(11541, '_site_transient_theme_roots', 'a:6:{s:8:\"flatsome\";s:7:\"/themes\";s:5:\"fonts\";s:7:\"/themes\";s:9:\"pub-store\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}', 'no'),
(11542, '_transient_timeout_wc_onboarding_product_data', '1619211919', 'no');
INSERT INTO `3kuF9kxQ_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(11543, '_transient_wc_onboarding_product_data', 'a:6:{s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:18:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Thu, 22 Apr 2021 21:05:34 GMT\";s:12:\"content-type\";s:31:\"application/json; charset=UTF-8\";s:14:\"content-length\";s:5:\"11509\";s:12:\"x-robots-tag\";s:7:\"noindex\";s:4:\"link\";s:60:\"<https://woocommerce.com/wp-json/>; rel=\"https://api.w.org/\"\";s:22:\"x-content-type-options\";s:7:\"nosniff\";s:29:\"access-control-expose-headers\";s:33:\"X-WP-Total, X-WP-TotalPages, Link\";s:28:\"access-control-allow-headers\";s:73:\"Authorization, X-WP-Nonce, Content-Disposition, Content-MD5, Content-Type\";s:13:\"x-wccom-cache\";s:3:\"HIT\";s:13:\"cache-control\";s:10:\"max-age=60\";s:5:\"allow\";s:3:\"GET\";s:16:\"content-encoding\";s:4:\"gzip\";s:4:\"x-rq\";s:16:\"sin1 91 203 3280\";s:3:\"age\";s:2:\"53\";s:7:\"x-cache\";s:3:\"hit\";s:4:\"vary\";s:23:\"Accept-Encoding, Origin\";s:13:\"accept-ranges\";s:5:\"bytes\";}}s:4:\"body\";s:48132:\"{\"products\":[{\"title\":\"WooCommerce Google Analytics\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/GA-Dark.png\",\"excerpt\":\"Understand your customers and increase revenue with world\\u2019s leading analytics platform - integrated with WooCommerce for free.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-google-analytics\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"2d21f7de14dfb8e9885a4622be701ddf\",\"slug\":\"woocommerce-google-analytics-integration\",\"id\":1442927},{\"title\":\"WooCommerce Tax\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Tax-Dark.png\",\"excerpt\":\"Automatically calculate how much sales tax should be collected for WooCommerce orders - by city, country, or state - at checkout.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/tax\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"f31b3b9273cce188cc2b27f7849d02dd\",\"slug\":\"woocommerce-services\",\"id\":3220291},{\"title\":\"Stripe\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Stripe-Dark-1.png\",\"excerpt\":\"Accept all major debit and credit cards as well as local payment methods with Stripe.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/stripe\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"50bb7a985c691bb943a9da4d2c8b5efd\",\"slug\":\"woocommerce-gateway-stripe\",\"id\":18627},{\"title\":\"Jetpack\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Jetpack-Dark.png\",\"excerpt\":\"Power up and protect your store with Jetpack\\r\\n\\r\\nFor free security, insights and monitoring, connect to Jetpack. It\'s everything you need for a strong, secure start.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/jetpack\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"d5bfef9700b62b2b132c74c74c3193eb\",\"slug\":\"jetpack\",\"id\":2725249},{\"title\":\"Facebook for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Facebook-Dark.png\",\"excerpt\":\"Get the Official Facebook for WooCommerce plugin for three powerful ways to help grow your business.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/facebook\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"0ea4fe4c2d7ca6338f8a322fb3e4e187\",\"slug\":\"facebook-for-woocommerce\",\"id\":2127297},{\"title\":\"Amazon Pay\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Amazon-Pay-Dark.png\",\"excerpt\":\"Amazon Pay is embedded in your WooCommerce store. Transactions take place via\\u00a0Amazon widgets, so the buyer never leaves your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/pay-with-amazon\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"9865e043bbbe4f8c9735af31cb509b53\",\"slug\":\"woocommerce-gateway-amazon-payments-advanced\",\"id\":238816},{\"title\":\"Square for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Square-Dark.png\",\"excerpt\":\"Accepting payments is easy with Square. Clear rates, fast deposits (1-2 business days). Sell online and in person, and sync all payments, items and inventory.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/square\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"e907be8b86d7df0c8f8e0d0020b52638\",\"slug\":\"woocommerce-square\",\"id\":1770503},{\"title\":\"WooCommerce Shipping\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Ship-Dark-1.png\",\"excerpt\":\"Print USPS and DHL labels right from your WooCommerce dashboard and instantly save up to 90%. WooCommerce Shipping is free to use and saves you time and money.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipping\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"f31b3b9273cce188cc2b27f7849d02dd\",\"slug\":\"woocommerce-services\",\"id\":2165910},{\"title\":\"Mailchimp for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/09\\/logo-mailchimp-dark-v2.png\",\"excerpt\":\"Increase traffic, drive repeat purchases, and personalize your marketing when you connect to Mailchimp.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/mailchimp-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"b4481616ebece8b1ff68fc59b90c1a91\",\"slug\":\"mailchimp-for-woocommerce\",\"id\":2545166},{\"title\":\"WooCommerce Payments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Pay-Dark.png\",\"excerpt\":\"The only payment method designed exclusively for WooCommerce, by WooCommerce. Securely accept major credit and debit cards on your site. View and manage your transactions within your WordPress dashboard.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-payments\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"8c6319ca-8f41-4e69-be63-6b15ee37773b\",\"slug\":\"woocommerce-payments\",\"id\":5278104},{\"title\":\"PayPal Checkout\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Paypal-Dark.png\",\"excerpt\":\"PayPal Checkout now with Smart Payment Buttons\\u2122, dynamically displays, PayPal, Venmo, PayPal Credit, or other local payment options in a single stack giving customers the choice to pay with their preferred option.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-paypal-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"69e6cba62ac4021df9e117cc3f716d07\",\"slug\":\"woocommerce-gateway-paypal-express-checkout\",\"id\":1597922},{\"title\":\"WooCommerce Subscriptions\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Subscriptions-Dark.png\",\"excerpt\":\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscriptions\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"6115e6d7e297b623a169fdcf5728b224\",\"slug\":\"woocommerce-subscriptions\",\"id\":27147},{\"title\":\"ShipStation Integration\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Shipstation-Dark.png\",\"excerpt\":\"Fulfill all your Woo orders (and wherever else you sell) quickly and easily using ShipStation. Try it free for 30 days today!\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipstation-integration\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"9de8640767ba64237808ed7f245a49bb\",\"slug\":\"woocommerce-shipstation-integration\",\"id\":18734},{\"title\":\"Product Add-Ons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Product-Add-Ons-Dark.png\",\"excerpt\":\"Offer add-ons like gift wrapping, special messages or other special options for your products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"147d0077e591e16db9d0d67daeb8c484\",\"slug\":\"woocommerce-product-addons\",\"id\":18618},{\"title\":\"PayFast Payment Gateway\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Payfast-Dark-1.png\",\"excerpt\":\"Take payments on your WooCommerce store via PayFast (redirect method).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/payfast-payment-gateway\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"557bf07293ad916f20c207c6c9cd15ff\",\"slug\":\"woocommerce-payfast-gateway\",\"id\":18596},{\"title\":\"Google Ads &amp; Marketing by Kliken\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2019\\/02\\/GA-for-Woo-Logo-374x192px-qu3duk.png\",\"excerpt\":\"Get in front of shoppers and drive traffic to your store so you can grow your business with Smart Shopping Campaigns and free listings.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/google-ads-and-marketing\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"bf66e173-a220-4da7-9512-b5728c20fc16\",\"slug\":\"kliken-marketing-for-google\",\"id\":3866145},{\"title\":\"USPS Shipping Method\",\"image\":\"\",\"excerpt\":\"Get shipping rates from the USPS API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/usps-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"83d1524e8f5f1913e58889f83d442c32\",\"slug\":\"woocommerce-shipping-usps\",\"id\":18657},{\"title\":\"UPS Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/UPS-Shipping-Method-Dark.png\",\"excerpt\":\"Get shipping rates from the UPS API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/ups-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8dae58502913bac0fbcdcaba515ea998\",\"slug\":\"woocommerce-shipping-ups\",\"id\":18665},{\"title\":\"Braintree for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/02\\/braintree-black-copy.png\",\"excerpt\":\"Accept PayPal, credit cards and debit cards with a single payment gateway solution \\u2014 PayPal Powered by Braintree.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-paypal-powered-by-braintree\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"27f010c8e34ca65b205ddec88ad14536\",\"slug\":\"woocommerce-gateway-paypal-powered-by-braintree\",\"id\":1489837},{\"title\":\"WooCommerce Memberships\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/06\\/Thumbnail-Memberships-updated.png\",\"excerpt\":\"Give members access to restricted content or products, for a fee or for free.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-memberships\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"9288e7609ad0b487b81ef6232efa5cfc\",\"slug\":\"woocommerce-memberships\",\"id\":958589},{\"title\":\"Table Rate Shipping\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Product-Table-Rate-Shipping-Dark.png\",\"excerpt\":\"Advanced, flexible shipping. Define multiple shipping rates based on location, price, weight, shipping class or item count.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/table-rate-shipping\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"3034ed8aff427b0f635fe4c86bbf008a\",\"slug\":\"woocommerce-table-rate-shipping\",\"id\":18718},{\"title\":\"Shipment Tracking\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Ship-Tracking-Dark-1.png\",\"excerpt\":\"Add shipment tracking information to your orders.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipment-tracking\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"1968e199038a8a001c9f9966fd06bf88\",\"slug\":\"woocommerce-shipment-tracking\",\"id\":18693},{\"title\":\"Checkout Field Editor\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Checkout-Field-Editor-Dark.png\",\"excerpt\":\"Optimize your checkout process by adding, removing or editing fields to suit your needs.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-checkout-field-editor\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"2b8029f0d7cdd1118f4d843eb3ab43ff\",\"slug\":\"woocommerce-checkout-field-editor\",\"id\":184594},{\"title\":\"WooCommerce Bookings\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Bookings-Dark.png\",\"excerpt\":\"Allow customers to book appointments, make reservations or rent equipment without leaving your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/hotel\\/\",\"price\":\"&#36;249.00\",\"hash\":\"911c438934af094c2b38d5560b9f50f3\",\"slug\":\"WooCommerce Bookings\",\"id\":390890},{\"title\":\"Product Bundles\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-PB.png?v=1\",\"excerpt\":\"Offer personalized product bundles, bulk discount packages, and assembled\\u00a0products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-bundles\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"aa2518b5-ab19-4b75-bde9-60ca51e20f28\",\"slug\":\"woocommerce-product-bundles\",\"id\":18716},{\"title\":\"Multichannel for WooCommerce: Google, Amazon, eBay &amp; Walmart Integration\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/10\\/Woo-Extension-Store-Logo-v2.png\",\"excerpt\":\"Get the official Google, Amazon, eBay and Walmart extension and create, sync and manage multichannel listings directly from WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/amazon-ebay-integration\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"e4000666-9275-4c71-8619-be61fb41c9f9\",\"slug\":\"woocommerce-amazon-ebay-integration\",\"id\":3545890},{\"title\":\"Min\\/Max Quantities\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Min-Max-Qua-Dark.png\",\"excerpt\":\"Specify minimum and maximum allowed product quantities for orders to be completed.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/minmax-quantities\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"2b5188d90baecfb781a5aa2d6abb900a\",\"slug\":\"woocommerce-min-max-quantities\",\"id\":18616},{\"title\":\"LiveChat for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2015\\/11\\/LC_woo_regular-zmiaym.png\",\"excerpt\":\"Live Chat and messaging platform for sales and support -- increase average order value and overall sales through live conversations.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/livechat\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.livechat.com\\/livechat-for-ecommerce\\/?a=woocommerce&amp;utm_source=woocommerce.com&amp;utm_medium=integration&amp;utm_campaign=woocommerce.com\",\"price\":\"&#36;0.00\",\"hash\":\"5344cc1f-ed4a-4d00-beff-9d67f6d372f3\",\"slug\":\"livechat-woocommerce\",\"id\":1348888},{\"title\":\"Authorize.Net\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/04\\/Thumbnail-Authorize.net-updated.png\",\"excerpt\":\"Authorize.Net gateway with support for pre-orders and subscriptions.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/authorize-net\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8b61524fe53add7fdd1a8d1b00b9327d\",\"slug\":\"woocommerce-gateway-authorize-net-cim\",\"id\":178481},{\"title\":\"FedEx Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/01\\/FedEx_Logo_Wallpaper.jpeg\",\"excerpt\":\"Get shipping rates from the FedEx API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/fedex-shipping-module\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1a48b598b47a81559baadef15e320f64\",\"slug\":\"woocommerce-shipping-fedex\",\"id\":18620},{\"title\":\"Product CSV Import Suite\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Product-CSV-Import-Dark.png\",\"excerpt\":\"Import, merge, and export products and variations to and from WooCommerce using a CSV file.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-csv-import-suite\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"7ac9b00a1fe980fb61d28ab54d167d0d\",\"slug\":\"woocommerce-product-csv-import-suite\",\"id\":18680},{\"title\":\"Follow-Ups\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Follow-Ups-Dark.png\",\"excerpt\":\"Automatically contact customers after purchase - be it everyone, your most loyal or your biggest spenders - and keep your store top-of-mind.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/follow-up-emails\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"05ece68fe94558e65278fe54d9ec84d2\",\"slug\":\"woocommerce-follow-up-emails\",\"id\":18686},{\"title\":\"WooCommerce Customer \\/ Order \\/ Coupon Export\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/02\\/Thumbnail-Customer-Order-Coupon-Export-updated.png\",\"excerpt\":\"Export customers, orders, and coupons from WooCommerce manually or on an automated schedule.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/ordercustomer-csv-export\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"914de15813a903c767b55445608bf290\",\"slug\":\"woocommerce-customer-order-csv-export\",\"id\":18652},{\"title\":\"Smart Coupons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/10\\/wc-product-smart-coupons.png\",\"excerpt\":\"Everything you need for discounts, coupons, credits, gift cards, product giveaways, offers, and promotions. Most popular and complete coupons plugin for WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/smart-coupons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demo.storeapps.org\\/?demo=sc\",\"price\":\"&#36;99.00\",\"hash\":\"05c45f2aa466106a466de4402fff9dde\",\"slug\":\"woocommerce-smart-coupons\",\"id\":18729},{\"title\":\"Product Vendors\",\"image\":\"\",\"excerpt\":\"Turn your store into a multi-vendor marketplace\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-vendors\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"a97d99fccd651bbdd728f4d67d492c31\",\"slug\":\"woocommerce-product-vendors\",\"id\":219982},{\"title\":\"Australia Post Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/australia-post.gif\",\"excerpt\":\"Get shipping rates for your WooCommerce store from the Australia Post API, which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/australia-post-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1dbd4dc6bd91a9cda1bd6b9e7a5e4f43\",\"slug\":\"woocommerce-shipping-australia-post\",\"id\":18622},{\"title\":\"Canada Post Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/canada-post.png\",\"excerpt\":\"Get shipping rates from the Canada Post Ratings API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/canada-post-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"ac029cdf3daba20b20c7b9be7dc00e0e\",\"slug\":\"woocommerce-shipping-canada-post\",\"id\":18623},{\"title\":\"WooCommerce Accommodation Bookings\",\"image\":\"\",\"excerpt\":\"Book accommodation using WooCommerce and the WooCommerce Bookings extension.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-accommodation-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"99b2a7a4af90b6cefd2a733b3b1f78e7\",\"slug\":\"woocommerce-accommodation-bookings\",\"id\":1412069},{\"title\":\"WooCommerce Brands\",\"image\":\"\",\"excerpt\":\"Create, assign and list brands for products, and allow customers to view by brand.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/brands\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"8a88c7cbd2f1e73636c331c7a86f818c\",\"slug\":\"woocommerce-brands\",\"id\":18737},{\"title\":\"Xero\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/08\\/xero2.png\",\"excerpt\":\"Save time with automated sync between WooCommerce and your Xero account.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/xero\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"f0dd29d338d3c67cf6cee88eddf6869b\",\"slug\":\"woocommerce-xero\",\"id\":18733},{\"title\":\"Dynamic Pricing\",\"image\":\"\",\"excerpt\":\"Bulk discounts, role-based pricing and much more\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/dynamic-pricing\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"9a41775bb33843f52c93c922b0053986\",\"slug\":\"woocommerce-dynamic-pricing\",\"id\":18643},{\"title\":\"WooCommerce Zapier\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/woocommerce-zapier-logo.png\",\"excerpt\":\"Integrate with 3000+ cloud apps and services today.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-zapier\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;59.00\",\"hash\":\"0782bdbe932c00f4978850268c6cfe40\",\"slug\":\"woocommerce-zapier\",\"id\":243589},{\"title\":\"Name Your Price\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/09\\/nyp-icon-dark-v83owf.png\",\"excerpt\":\"Allow customers to define the product price. Also useful for accepting user-set donations.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/name-your-price\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"31b4e11696cd99a3c0572975a84f1c08\",\"slug\":\"woocommerce-name-your-price\",\"id\":18738},{\"title\":\"WooCommerce Print Invoices &amp; Packing lists\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/03\\/Thumbnail-Print-Invoices-Packing-lists-updated.png\",\"excerpt\":\"Generate invoices, packing slips, and pick lists for your WooCommerce orders.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/print-invoices-packing-lists\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"465de1126817cdfb42d97ebca7eea717\",\"slug\":\"woocommerce-pip\",\"id\":18666},{\"title\":\"Advanced Notifications\",\"image\":\"\",\"excerpt\":\"Easily setup \\\"new order\\\" and stock email notifications for multiple recipients of your choosing.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/advanced-notifications\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"112372c44b002fea2640bd6bfafbca27\",\"slug\":\"woocommerce-advanced-notifications\",\"id\":18740},{\"title\":\"Royal Mail\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/04\\/royalmail.png\",\"excerpt\":\"Offer Royal Mail shipping rates to your customers\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/royal-mail\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"03839cca1a16c4488fcb669aeb91a056\",\"slug\":\"woocommerce-shipping-royalmail\",\"id\":182719},{\"title\":\"AutomateWoo\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-AutomateWoo-Dark-1.png\",\"excerpt\":\"Powerful marketing automation for WooCommerce. AutomateWoo has the tools you need to grow your store and make more money.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/automatewoo\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"ba9299b8-1dba-4aa0-a313-28bc1755cb88\",\"slug\":\"automatewoo\",\"id\":4652610},{\"title\":\"WooCommerce Points and Rewards\",\"image\":\"\",\"excerpt\":\"Reward your customers for purchases and other actions with points which can be redeemed for discounts.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-points-and-rewards\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"1649b6cca5da8b923b01ca56b5cdd246\",\"slug\":\"woocommerce-points-and-rewards\",\"id\":210259},{\"title\":\"WooCommerce Pre-Orders\",\"image\":\"\",\"excerpt\":\"Allow customers to order products before they are available.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-pre-orders\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"b2dc75e7d55e6f5bbfaccb59830f66b7\",\"slug\":\"woocommerce-pre-orders\",\"id\":178477},{\"title\":\"WooCommerce Subscription Downloads\",\"image\":\"\",\"excerpt\":\"Offer additional downloads to your subscribers, via downloadable products listed in your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscription-downloads\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"5be9e21c13953253e4406d2a700382ec\",\"slug\":\"woocommerce-subscription-downloads\",\"id\":420458},{\"title\":\"Google Product Feed\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2011\\/11\\/logo-regular-lscryp.png\",\"excerpt\":\"Feed product data to Google Merchant Center for setting up Google product listings &amp; product ads.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/google-product-feed\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"d55b4f852872025741312839f142447e\",\"slug\":\"woocommerce-product-feeds\",\"id\":18619},{\"title\":\"WooCommerce Additional Variation Images\",\"image\":\"\",\"excerpt\":\"Add gallery images per variation on variable products within WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-additional-variation-images\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/storefront\\/product\\/woo-single-1\\/\",\"price\":\"&#36;49.00\",\"hash\":\"c61dd6de57dcecb32bd7358866de4539\",\"slug\":\"woocommerce-additional-variation-images\",\"id\":477384},{\"title\":\"PayPal Payments Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Paypal-Payments-Pro-Dark.png\",\"excerpt\":\"Take credit card payments directly on your checkout using PayPal Pro.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/paypal-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"6d23ba7f0e0198937c0029f9e865b40e\",\"slug\":\"woocommerce-gateway-paypal-pro\",\"id\":18594},{\"title\":\"WooCommerce Deposits\",\"image\":\"\",\"excerpt\":\"Enable customers to pay for products using a deposit or a payment plan.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-deposits\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;179.00\",\"hash\":\"de192a6cf12c4fd803248da5db700762\",\"slug\":\"woocommerce-deposits\",\"id\":977087},{\"title\":\"WooCommerce AvaTax\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/01\\/Thumbnail-Avalara-updated.png\",\"excerpt\":\"Get 100% accurate sales tax calculations and on time tax return filing. No more tracking sales tax rates, rules, or jurisdictional boundaries.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-avatax\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"57077a4b28ba71cacf692bcf4a1a7f60\",\"slug\":\"woocommerce-avatax\",\"id\":1389326},{\"title\":\"Gravity Forms Product Add-ons\",\"image\":\"\",\"excerpt\":\"Powerful product add-ons, Gravity style\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/gravity-forms-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.elementstark.com\\/woocommerce-extension-demos\\/product-category\\/gravity-forms\\/\",\"price\":\"&#36;99.00\",\"hash\":\"a6ac0ab1a1536e3a357ccf24c0650ed0\",\"slug\":\"woocommerce-gravityforms-product-addons\",\"id\":18633},{\"title\":\"Amazon S3 Storage\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/amazon.png\",\"excerpt\":\"Serve digital products via Amazon S3\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/amazon-s3-storage\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"473bf6f221b865eff165c97881b473bb\",\"slug\":\"woocommerce-amazon-s3-storage\",\"id\":18663},{\"title\":\"Klarna Checkout\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/01\\/Partner_marketing_Klarna_Checkout_Black-1.png\",\"excerpt\":\"Klarna Checkout is a full checkout experience embedded on your site that includes all popular payment methods (Pay Now, Pay Later, Financing, Installments).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/klarna-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.krokedil.se\\/klarnacheckout\\/\",\"price\":\"&#36;0.00\",\"hash\":\"90f8ce584e785fcd8c2d739fd4f40d78\",\"slug\":\"klarna-checkout-for-woocommerce\",\"id\":2754152},{\"title\":\"Composite Products\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-CP.png?v=1\",\"excerpt\":\"Create product kit builders and custom product configurators using existing products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/composite-products\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"0343e0115bbcb97ccd98442b8326a0af\",\"slug\":\"woocommerce-composite-products\",\"id\":216836},{\"title\":\"Cart Add-ons\",\"image\":\"\",\"excerpt\":\"A powerful tool for driving incremental and impulse purchases by customers once they are in the shopping cart\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/cart-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"3a8ef25334396206f5da4cf208adeda3\",\"slug\":\"woocommerce-cart-add-ons\",\"id\":18717},{\"title\":\"Shipping Multiple Addresses\",\"image\":\"\",\"excerpt\":\"Allow your customers to ship individual items in a single order to multiple addresses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipping-multiple-addresses\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"aa0eb6f777846d329952d5b891d6f8cc\",\"slug\":\"woocommerce-shipping-multiple-addresses\",\"id\":18741},{\"title\":\"Bulk Stock Management\",\"image\":\"\",\"excerpt\":\"Edit product and variation stock levels in bulk via this handy interface\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/bulk-stock-management\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"02f4328d52f324ebe06a78eaaae7934f\",\"slug\":\"woocommerce-bulk-stock-management\",\"id\":18670},{\"title\":\"WooCommerce Paid Courses\",\"image\":\"\",\"excerpt\":\"Sell your online courses using the most popular eCommerce platform on the web \\u2013 WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-paid-courses\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"bad2a02a063555b7e2bee59924690763\",\"slug\":\"woothemes-sensei\",\"id\":152116},{\"title\":\"WooCommerce Email Customizer\",\"image\":\"\",\"excerpt\":\"Connect with your customers with each email you send by visually modifying your email templates via the WordPress Customizer.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-email-customizer\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"bd909fa97874d431f203b5336c7e8873\",\"slug\":\"woocommerce-email-customizer\",\"id\":853277},{\"title\":\"TaxJar\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/10\\/taxjar-logotype.png\",\"excerpt\":\"Save hours every month by putting your sales tax on autopilot. Automated, multi-state sales tax calculation, reporting, and filing for your WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/taxjar\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"12072d8e-e933-4561-97b1-9db3c7eeed91\",\"slug\":\"taxjar-simplified-taxes-for-woocommerce\",\"id\":514914},{\"title\":\"Force Sells\",\"image\":\"\",\"excerpt\":\"Force products to be added to the cart\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/force-sells\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"3ebddfc491ca168a4ea4800b893302b0\",\"slug\":\"woocommerce-force-sells\",\"id\":18678},{\"title\":\"WooCommerce Quick View\",\"image\":\"\",\"excerpt\":\"Show a quick-view button to view product details and add to cart via lightbox popup\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-quick-view\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"619c6e57ce72c49c4b57e15b06eddb65\",\"slug\":\"woocommerce-quick-view\",\"id\":187509},{\"title\":\"WooCommerce Purchase Order Gateway\",\"image\":\"\",\"excerpt\":\"Receive purchase orders via your WooCommerce-powered online store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-purchase-order\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"573a92318244ece5facb449d63e74874\",\"slug\":\"woocommerce-gateway-purchase-order\",\"id\":478542},{\"title\":\"Returns and Warranty Requests\",\"image\":\"\",\"excerpt\":\"Manage the RMA process, add warranties to products &amp; let customers request &amp; manage returns \\/ exchanges from their account.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/warranty-requests\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"9b4c41102e6b61ea5f558e16f9b63e25\",\"slug\":\"woocommerce-warranty\",\"id\":228315},{\"title\":\"Product Enquiry Form\",\"image\":\"\",\"excerpt\":\"Allow visitors to contact you directly from the product details page via a reCAPTCHA protected form to enquire about a product.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-enquiry-form\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"5a0f5d72519a8ffcc86669f042296937\",\"slug\":\"woocommerce-product-enquiry-form\",\"id\":18601},{\"title\":\"WooCommerce Box Office\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-BO-Dark.png\",\"excerpt\":\"Sell tickets for your next event, concert, function, fundraiser or conference directly on your own site\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-box-office\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"e704c9160de318216a8fa657404b9131\",\"slug\":\"woocommerce-box-office\",\"id\":1628717},{\"title\":\"WooCommerce Order Barcodes\",\"image\":\"\",\"excerpt\":\"Generates a unique barcode for each order on your site - perfect for e-tickets, packing slips, reservations and a variety of other uses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-barcodes\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"889835bb29ee3400923653e1e44a3779\",\"slug\":\"woocommerce-order-barcodes\",\"id\":391708},{\"title\":\"WooCommerce 360\\u00ba Image\",\"image\":\"\",\"excerpt\":\"An easy way to add a dynamic, controllable 360\\u00ba image rotation to your WooCommerce site, by adding a group of images to a product\\u2019s gallery.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-360-image\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"24eb2cfa3738a66bf3b2587876668cd2\",\"slug\":\"woocommerce-360-image\",\"id\":512186},{\"title\":\"eWAY\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/10\\/eway-logo-3000-2000.jpg\",\"excerpt\":\"Take credit card payments securely via eWay (SG, MY, HK, AU, and NZ) keeping customers on your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/eway\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"2c497769d98d025e0d340cd0b5ea5da1\",\"slug\":\"woocommerce-gateway-eway\",\"id\":18604},{\"title\":\"WooCommerce Photography\",\"image\":\"\",\"excerpt\":\"Sell photos in the blink of an eye using this simple as dragging &amp; dropping interface.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-photography\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"ee76e8b9daf1d97ca4d3874cc9e35687\",\"slug\":\"woocommerce-photography\",\"id\":583602},{\"title\":\"Software Add-on\",\"image\":\"\",\"excerpt\":\"Sell License Keys for Software\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/software-add-on\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"79f6dbfe1f1d3a56a86f0509b6d6b04b\",\"slug\":\"woocommerce-software-add-on\",\"id\":18683},{\"title\":\"WooCommerce Bookings Availability\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Bookings-Aval-Dark.png\",\"excerpt\":\"Sell more bookings by presenting a calendar or schedule of available slots in a page or post.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/bookings-availability\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"30770d2a-e392-4e82-baaa-76cfc7d02ae3\",\"slug\":\"woocommerce-bookings-availability\",\"id\":4228225},{\"title\":\"WooCommerce Products Compare\",\"image\":\"\",\"excerpt\":\"WooCommerce Products Compare will allow your potential customers to easily compare products within your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-products-compare\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"c3ba0a4a3199a0cc7a6112eb24414548\",\"slug\":\"woocommerce-products-compare\",\"id\":853117},{\"title\":\"WooCommerce Store Catalog PDF Download\",\"image\":\"\",\"excerpt\":\"Offer your customers a PDF download of your product catalog, generated by WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-store-catalog-pdf-download\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"79ca7aadafe706364e2d738b7c1090c4\",\"slug\":\"woocommerce-store-catalog-pdf-download\",\"id\":675790},{\"title\":\"Catalog Visibility Options\",\"image\":\"\",\"excerpt\":\"Transform WooCommerce into an online catalog by removing eCommerce functionality\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/catalog-visibility-options\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"12e791110365fdbb5865c8658907967e\",\"slug\":\"woocommerce-catalog-visibility-options\",\"id\":18648},{\"title\":\"Sequential Order Numbers Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/05\\/Thumbnail-Sequential-Order-Numbers-Pro-updated.png\",\"excerpt\":\"Tame your order numbers! Advanced &amp; sequential order numbers with optional prefixes \\/ suffixes\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/sequential-order-numbers-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"0b18a2816e016ba9988b93b1cd8fe766\",\"slug\":\"woocommerce-sequential-order-numbers-pro\",\"id\":18688},{\"title\":\"WooCommerce Blocks\",\"image\":\"\",\"excerpt\":\"WooCommerce Blocks offers a range of Gutenberg blocks you can use to build and customise your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gutenberg-products-block\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"c2e9f13a-f90c-4ffe-a8a5-b432399ec263\",\"slug\":\"woo-gutenberg-products-block\",\"id\":3076677},{\"title\":\"Conditional Shipping and Payments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-CSP.png?v=1\",\"excerpt\":\"Use conditional logic to restrict the shipping and payment options available on your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/conditional-shipping-and-payments\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1f56ff002fa830b77017b0107505211a\",\"slug\":\"woocommerce-conditional-shipping-and-payments\",\"id\":680253},{\"title\":\"WooCommerce Checkout Add-Ons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/07\\/Thumbnail-Checkout-Add-Ons-updated.png\",\"excerpt\":\"Highlight relevant products, offers like free shipping and other up-sells during checkout.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-checkout-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8fdca00b4000b7a8cc26371d0e470a8f\",\"slug\":\"woocommerce-checkout-add-ons\",\"id\":466854},{\"title\":\"WooCommerce Order Status Manager\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/02\\/Thumbnail-Order-Status-Manager-updated.png\",\"excerpt\":\"Create, edit, and delete completely custom order statuses and integrate them seamlessly into your order management flow.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-status-manager\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"51fd9ab45394b4cad5a0ebf58d012342\",\"slug\":\"woocommerce-order-status-manager\",\"id\":588398},{\"title\":\"WooCommerce Google Analytics Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/01\\/Thumbnail-GAPro-updated.png\",\"excerpt\":\"Add advanced event tracking and enhanced eCommerce tracking to your WooCommerce site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-google-analytics-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"d8aed8b7306b509eec1589e59abe319f\",\"slug\":\"woocommerce-google-analytics-pro\",\"id\":1312497},{\"title\":\"WooCommerce One Page Checkout\",\"image\":\"\",\"excerpt\":\"Create special pages where customers can choose products, checkout &amp; pay all on the one page.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-one-page-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"c9ba8f8352cd71b5508af5161268619a\",\"slug\":\"woocommerce-one-page-checkout\",\"id\":527886},{\"title\":\"QuickBooks Sync for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2019\\/04\\/woocommerce-com-logo-1-hyhzbh.png\",\"excerpt\":\"Automatic two-way sync for orders, customers, products, inventory and more between WooCommerce and QuickBooks (Online, Desktop, or POS).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/quickbooks-sync-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"c5e32e20-7c1f-4585-8b15-d930c2d842ac\",\"slug\":\"myworks-woo-sync-for-quickbooks-online\",\"id\":4065824},{\"title\":\"First Data\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/02\\/Thumbnail-FirstData-updated.png\",\"excerpt\":\"FirstData gateway for WooCommerce\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/firstdata\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"eb3e32663ec0810592eaf0d097796230\",\"slug\":\"woocommerce-gateway-firstdata\",\"id\":18645},{\"title\":\"WooCommerce Product Search\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2014\\/10\\/woocommerce-product-search-product-image-1870x960-1-jvsljj.png\",\"excerpt\":\"The perfect search engine helps customers to find and buy products quickly \\u2013 essential for every WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-product-search\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.itthinx.com\\/wps\\/\",\"price\":\"&#36;49.00\",\"hash\":\"c84cc8ca16ddac3408e6b6c5871133a8\",\"slug\":\"woocommerce-product-search\",\"id\":512174},{\"title\":\"WooSlider\",\"image\":\"\",\"excerpt\":\"WooSlider is the ultimate responsive slideshow WordPress slider plugin\\r\\n\\r\\n\\u00a0\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/wooslider\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/www.wooslider.com\\/\",\"price\":\"&#36;49.00\",\"hash\":\"209d98f3ccde6cc3de7e8732a2b20b6a\",\"slug\":\"wooslider\",\"id\":46506},{\"title\":\"WooCommerce Social Login\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/08\\/Thumbnail-Social-Login-updated.png\",\"excerpt\":\"Enable Social Login for seamless checkout and account creation.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-social-login\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demos.skyverge.com\\/woocommerce-social-login\\/\",\"price\":\"&#36;79.00\",\"hash\":\"b231cd6367a79cc8a53b7d992d77525d\",\"slug\":\"woocommerce-social-login\",\"id\":473617},{\"title\":\"Variation Swatches and Photos\",\"image\":\"\",\"excerpt\":\"Show color and image swatches instead of dropdowns for variable products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/variation-swatches-and-photos\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.elementstark.com\\/woocommerce-extension-demos\\/product-category\\/swatches-and-photos\\/\",\"price\":\"&#36;99.00\",\"hash\":\"37bea8d549df279c8278878d081b062f\",\"slug\":\"woocommerce-variation-swatches-and-photos\",\"id\":18697},{\"title\":\"WooCommerce Order Status Control\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/06\\/Thumbnail-Order-Status-Control-updated.png\",\"excerpt\":\"Use this extension to automatically change the order status to \\\"completed\\\" after successful payment.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-status-control\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"32400e509c7c36dcc1cd368e8267d981\",\"slug\":\"woocommerce-order-status-control\",\"id\":439037},{\"title\":\"Coupon Shortcodes\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/09\\/woocommerce-coupon-shortcodes-product-image-1870x960-1-vc5gux.png\",\"excerpt\":\"Show coupon discount info using shortcodes. Allows to render coupon information and content conditionally, based on the validity of coupons.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/coupon-shortcodes\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"ac5d9d51-70b2-4d8f-8b89-24200eea1394\",\"slug\":\"woocommerce-coupon-shortcodes\",\"id\":244762},{\"title\":\"Opayo\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/10\\/Opayo_logo_RGB.png\",\"excerpt\":\"Take payments on your WooCommerce store via Opayo (formally SagePay).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/sage-pay-form\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"6bc0cca47d0274d8ef9b164f6fbec1cc\",\"slug\":\"woocommerce-gateway-sagepay-form\",\"id\":18599},{\"title\":\"Jilt\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2017\\/12\\/Thumbnail-Jilt-updated.png\",\"excerpt\":\"All-in-one email marketing platform built for WooCommerce stores. Send newsletters, abandoned cart reminders, win-backs, welcome automations, and more.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/jilt\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"b53aafb64dca33835e41ee06de7e9816\",\"slug\":\"jilt-for-woocommerce\",\"id\":2754876},{\"title\":\"EU VAT Number\",\"image\":\"\",\"excerpt\":\"Collect VAT numbers at checkout and remove the VAT charge for eligible EU businesses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/eu-vat-number\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"d2720c4b4bb8d6908e530355b7a2d734\",\"slug\":\"woocommerce-eu-vat-number\",\"id\":18592},{\"title\":\"QuickBooks Commerce (formerly TradeGecko)\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/09\\/qbo-mark.png\",\"excerpt\":\"Get a wholesale and multichannel inventory &amp; order management platform for your WooCommerce store with QuickBooks Commerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-tradegecko\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"21da7811f7fc1f13ee19daa7415f0ff3\",\"slug\":\"woocommerce-tradegecko\",\"id\":245960},{\"title\":\"WooCommerce Tab Manager\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/11\\/Thumbnail-Tab-Manager-updated.png\",\"excerpt\":\"Gives you complete control over your product page tabs, create local and global tabs using a visual drag-and-drop interface, and more.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-tab-manager\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"89a9ac74850855cfe772b4b4ee1e31e0\",\"slug\":\"woocommerce-tab-manager\",\"id\":132195}]}\";s:8:\"response\";a:2:{s:4:\"code\";i:200;s:7:\"message\";s:2:\"OK\";}s:7:\"cookies\";a:0:{}s:8:\"filename\";N;s:13:\"http_response\";O:25:\"WP_HTTP_Requests_Response\":5:{s:11:\"\0*\0response\";O:17:\"Requests_Response\":10:{s:4:\"body\";s:48132:\"{\"products\":[{\"title\":\"WooCommerce Google Analytics\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/GA-Dark.png\",\"excerpt\":\"Understand your customers and increase revenue with world\\u2019s leading analytics platform - integrated with WooCommerce for free.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-google-analytics\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"2d21f7de14dfb8e9885a4622be701ddf\",\"slug\":\"woocommerce-google-analytics-integration\",\"id\":1442927},{\"title\":\"WooCommerce Tax\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Tax-Dark.png\",\"excerpt\":\"Automatically calculate how much sales tax should be collected for WooCommerce orders - by city, country, or state - at checkout.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/tax\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"f31b3b9273cce188cc2b27f7849d02dd\",\"slug\":\"woocommerce-services\",\"id\":3220291},{\"title\":\"Stripe\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Stripe-Dark-1.png\",\"excerpt\":\"Accept all major debit and credit cards as well as local payment methods with Stripe.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/stripe\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"50bb7a985c691bb943a9da4d2c8b5efd\",\"slug\":\"woocommerce-gateway-stripe\",\"id\":18627},{\"title\":\"Jetpack\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Jetpack-Dark.png\",\"excerpt\":\"Power up and protect your store with Jetpack\\r\\n\\r\\nFor free security, insights and monitoring, connect to Jetpack. It\'s everything you need for a strong, secure start.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/jetpack\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"d5bfef9700b62b2b132c74c74c3193eb\",\"slug\":\"jetpack\",\"id\":2725249},{\"title\":\"Facebook for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Facebook-Dark.png\",\"excerpt\":\"Get the Official Facebook for WooCommerce plugin for three powerful ways to help grow your business.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/facebook\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"0ea4fe4c2d7ca6338f8a322fb3e4e187\",\"slug\":\"facebook-for-woocommerce\",\"id\":2127297},{\"title\":\"Amazon Pay\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Amazon-Pay-Dark.png\",\"excerpt\":\"Amazon Pay is embedded in your WooCommerce store. Transactions take place via\\u00a0Amazon widgets, so the buyer never leaves your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/pay-with-amazon\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"9865e043bbbe4f8c9735af31cb509b53\",\"slug\":\"woocommerce-gateway-amazon-payments-advanced\",\"id\":238816},{\"title\":\"Square for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Square-Dark.png\",\"excerpt\":\"Accepting payments is easy with Square. Clear rates, fast deposits (1-2 business days). Sell online and in person, and sync all payments, items and inventory.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/square\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"e907be8b86d7df0c8f8e0d0020b52638\",\"slug\":\"woocommerce-square\",\"id\":1770503},{\"title\":\"WooCommerce Shipping\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Ship-Dark-1.png\",\"excerpt\":\"Print USPS and DHL labels right from your WooCommerce dashboard and instantly save up to 90%. WooCommerce Shipping is free to use and saves you time and money.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipping\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"f31b3b9273cce188cc2b27f7849d02dd\",\"slug\":\"woocommerce-services\",\"id\":2165910},{\"title\":\"Mailchimp for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/09\\/logo-mailchimp-dark-v2.png\",\"excerpt\":\"Increase traffic, drive repeat purchases, and personalize your marketing when you connect to Mailchimp.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/mailchimp-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"b4481616ebece8b1ff68fc59b90c1a91\",\"slug\":\"mailchimp-for-woocommerce\",\"id\":2545166},{\"title\":\"WooCommerce Payments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Pay-Dark.png\",\"excerpt\":\"The only payment method designed exclusively for WooCommerce, by WooCommerce. Securely accept major credit and debit cards on your site. View and manage your transactions within your WordPress dashboard.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-payments\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"8c6319ca-8f41-4e69-be63-6b15ee37773b\",\"slug\":\"woocommerce-payments\",\"id\":5278104},{\"title\":\"PayPal Checkout\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Paypal-Dark.png\",\"excerpt\":\"PayPal Checkout now with Smart Payment Buttons\\u2122, dynamically displays, PayPal, Venmo, PayPal Credit, or other local payment options in a single stack giving customers the choice to pay with their preferred option.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-paypal-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"69e6cba62ac4021df9e117cc3f716d07\",\"slug\":\"woocommerce-gateway-paypal-express-checkout\",\"id\":1597922},{\"title\":\"WooCommerce Subscriptions\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Subscriptions-Dark.png\",\"excerpt\":\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscriptions\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"6115e6d7e297b623a169fdcf5728b224\",\"slug\":\"woocommerce-subscriptions\",\"id\":27147},{\"title\":\"ShipStation Integration\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Shipstation-Dark.png\",\"excerpt\":\"Fulfill all your Woo orders (and wherever else you sell) quickly and easily using ShipStation. Try it free for 30 days today!\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipstation-integration\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"9de8640767ba64237808ed7f245a49bb\",\"slug\":\"woocommerce-shipstation-integration\",\"id\":18734},{\"title\":\"Product Add-Ons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Product-Add-Ons-Dark.png\",\"excerpt\":\"Offer add-ons like gift wrapping, special messages or other special options for your products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"147d0077e591e16db9d0d67daeb8c484\",\"slug\":\"woocommerce-product-addons\",\"id\":18618},{\"title\":\"PayFast Payment Gateway\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Payfast-Dark-1.png\",\"excerpt\":\"Take payments on your WooCommerce store via PayFast (redirect method).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/payfast-payment-gateway\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"557bf07293ad916f20c207c6c9cd15ff\",\"slug\":\"woocommerce-payfast-gateway\",\"id\":18596},{\"title\":\"Google Ads &amp; Marketing by Kliken\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2019\\/02\\/GA-for-Woo-Logo-374x192px-qu3duk.png\",\"excerpt\":\"Get in front of shoppers and drive traffic to your store so you can grow your business with Smart Shopping Campaigns and free listings.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/google-ads-and-marketing\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"bf66e173-a220-4da7-9512-b5728c20fc16\",\"slug\":\"kliken-marketing-for-google\",\"id\":3866145},{\"title\":\"USPS Shipping Method\",\"image\":\"\",\"excerpt\":\"Get shipping rates from the USPS API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/usps-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"83d1524e8f5f1913e58889f83d442c32\",\"slug\":\"woocommerce-shipping-usps\",\"id\":18657},{\"title\":\"UPS Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/UPS-Shipping-Method-Dark.png\",\"excerpt\":\"Get shipping rates from the UPS API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/ups-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8dae58502913bac0fbcdcaba515ea998\",\"slug\":\"woocommerce-shipping-ups\",\"id\":18665},{\"title\":\"Braintree for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/02\\/braintree-black-copy.png\",\"excerpt\":\"Accept PayPal, credit cards and debit cards with a single payment gateway solution \\u2014 PayPal Powered by Braintree.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-paypal-powered-by-braintree\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"27f010c8e34ca65b205ddec88ad14536\",\"slug\":\"woocommerce-gateway-paypal-powered-by-braintree\",\"id\":1489837},{\"title\":\"WooCommerce Memberships\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/06\\/Thumbnail-Memberships-updated.png\",\"excerpt\":\"Give members access to restricted content or products, for a fee or for free.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-memberships\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"9288e7609ad0b487b81ef6232efa5cfc\",\"slug\":\"woocommerce-memberships\",\"id\":958589},{\"title\":\"Table Rate Shipping\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Product-Table-Rate-Shipping-Dark.png\",\"excerpt\":\"Advanced, flexible shipping. Define multiple shipping rates based on location, price, weight, shipping class or item count.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/table-rate-shipping\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"3034ed8aff427b0f635fe4c86bbf008a\",\"slug\":\"woocommerce-table-rate-shipping\",\"id\":18718},{\"title\":\"Shipment Tracking\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Ship-Tracking-Dark-1.png\",\"excerpt\":\"Add shipment tracking information to your orders.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipment-tracking\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"1968e199038a8a001c9f9966fd06bf88\",\"slug\":\"woocommerce-shipment-tracking\",\"id\":18693},{\"title\":\"Checkout Field Editor\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Checkout-Field-Editor-Dark.png\",\"excerpt\":\"Optimize your checkout process by adding, removing or editing fields to suit your needs.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-checkout-field-editor\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"2b8029f0d7cdd1118f4d843eb3ab43ff\",\"slug\":\"woocommerce-checkout-field-editor\",\"id\":184594},{\"title\":\"WooCommerce Bookings\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Bookings-Dark.png\",\"excerpt\":\"Allow customers to book appointments, make reservations or rent equipment without leaving your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/hotel\\/\",\"price\":\"&#36;249.00\",\"hash\":\"911c438934af094c2b38d5560b9f50f3\",\"slug\":\"WooCommerce Bookings\",\"id\":390890},{\"title\":\"Product Bundles\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-PB.png?v=1\",\"excerpt\":\"Offer personalized product bundles, bulk discount packages, and assembled\\u00a0products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-bundles\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"aa2518b5-ab19-4b75-bde9-60ca51e20f28\",\"slug\":\"woocommerce-product-bundles\",\"id\":18716},{\"title\":\"Multichannel for WooCommerce: Google, Amazon, eBay &amp; Walmart Integration\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/10\\/Woo-Extension-Store-Logo-v2.png\",\"excerpt\":\"Get the official Google, Amazon, eBay and Walmart extension and create, sync and manage multichannel listings directly from WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/amazon-ebay-integration\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"e4000666-9275-4c71-8619-be61fb41c9f9\",\"slug\":\"woocommerce-amazon-ebay-integration\",\"id\":3545890},{\"title\":\"Min\\/Max Quantities\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Min-Max-Qua-Dark.png\",\"excerpt\":\"Specify minimum and maximum allowed product quantities for orders to be completed.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/minmax-quantities\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"2b5188d90baecfb781a5aa2d6abb900a\",\"slug\":\"woocommerce-min-max-quantities\",\"id\":18616},{\"title\":\"LiveChat for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2015\\/11\\/LC_woo_regular-zmiaym.png\",\"excerpt\":\"Live Chat and messaging platform for sales and support -- increase average order value and overall sales through live conversations.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/livechat\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.livechat.com\\/livechat-for-ecommerce\\/?a=woocommerce&amp;utm_source=woocommerce.com&amp;utm_medium=integration&amp;utm_campaign=woocommerce.com\",\"price\":\"&#36;0.00\",\"hash\":\"5344cc1f-ed4a-4d00-beff-9d67f6d372f3\",\"slug\":\"livechat-woocommerce\",\"id\":1348888},{\"title\":\"Authorize.Net\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/04\\/Thumbnail-Authorize.net-updated.png\",\"excerpt\":\"Authorize.Net gateway with support for pre-orders and subscriptions.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/authorize-net\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8b61524fe53add7fdd1a8d1b00b9327d\",\"slug\":\"woocommerce-gateway-authorize-net-cim\",\"id\":178481},{\"title\":\"FedEx Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/01\\/FedEx_Logo_Wallpaper.jpeg\",\"excerpt\":\"Get shipping rates from the FedEx API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/fedex-shipping-module\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1a48b598b47a81559baadef15e320f64\",\"slug\":\"woocommerce-shipping-fedex\",\"id\":18620},{\"title\":\"Product CSV Import Suite\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Product-CSV-Import-Dark.png\",\"excerpt\":\"Import, merge, and export products and variations to and from WooCommerce using a CSV file.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-csv-import-suite\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"7ac9b00a1fe980fb61d28ab54d167d0d\",\"slug\":\"woocommerce-product-csv-import-suite\",\"id\":18680},{\"title\":\"Follow-Ups\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Follow-Ups-Dark.png\",\"excerpt\":\"Automatically contact customers after purchase - be it everyone, your most loyal or your biggest spenders - and keep your store top-of-mind.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/follow-up-emails\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"05ece68fe94558e65278fe54d9ec84d2\",\"slug\":\"woocommerce-follow-up-emails\",\"id\":18686},{\"title\":\"WooCommerce Customer \\/ Order \\/ Coupon Export\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/02\\/Thumbnail-Customer-Order-Coupon-Export-updated.png\",\"excerpt\":\"Export customers, orders, and coupons from WooCommerce manually or on an automated schedule.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/ordercustomer-csv-export\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"914de15813a903c767b55445608bf290\",\"slug\":\"woocommerce-customer-order-csv-export\",\"id\":18652},{\"title\":\"Smart Coupons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/10\\/wc-product-smart-coupons.png\",\"excerpt\":\"Everything you need for discounts, coupons, credits, gift cards, product giveaways, offers, and promotions. Most popular and complete coupons plugin for WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/smart-coupons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demo.storeapps.org\\/?demo=sc\",\"price\":\"&#36;99.00\",\"hash\":\"05c45f2aa466106a466de4402fff9dde\",\"slug\":\"woocommerce-smart-coupons\",\"id\":18729},{\"title\":\"Product Vendors\",\"image\":\"\",\"excerpt\":\"Turn your store into a multi-vendor marketplace\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-vendors\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"a97d99fccd651bbdd728f4d67d492c31\",\"slug\":\"woocommerce-product-vendors\",\"id\":219982},{\"title\":\"Australia Post Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/australia-post.gif\",\"excerpt\":\"Get shipping rates for your WooCommerce store from the Australia Post API, which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/australia-post-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1dbd4dc6bd91a9cda1bd6b9e7a5e4f43\",\"slug\":\"woocommerce-shipping-australia-post\",\"id\":18622},{\"title\":\"Canada Post Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/canada-post.png\",\"excerpt\":\"Get shipping rates from the Canada Post Ratings API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/canada-post-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"ac029cdf3daba20b20c7b9be7dc00e0e\",\"slug\":\"woocommerce-shipping-canada-post\",\"id\":18623},{\"title\":\"WooCommerce Accommodation Bookings\",\"image\":\"\",\"excerpt\":\"Book accommodation using WooCommerce and the WooCommerce Bookings extension.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-accommodation-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"99b2a7a4af90b6cefd2a733b3b1f78e7\",\"slug\":\"woocommerce-accommodation-bookings\",\"id\":1412069},{\"title\":\"WooCommerce Brands\",\"image\":\"\",\"excerpt\":\"Create, assign and list brands for products, and allow customers to view by brand.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/brands\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"8a88c7cbd2f1e73636c331c7a86f818c\",\"slug\":\"woocommerce-brands\",\"id\":18737},{\"title\":\"Xero\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/08\\/xero2.png\",\"excerpt\":\"Save time with automated sync between WooCommerce and your Xero account.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/xero\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"f0dd29d338d3c67cf6cee88eddf6869b\",\"slug\":\"woocommerce-xero\",\"id\":18733},{\"title\":\"Dynamic Pricing\",\"image\":\"\",\"excerpt\":\"Bulk discounts, role-based pricing and much more\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/dynamic-pricing\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"9a41775bb33843f52c93c922b0053986\",\"slug\":\"woocommerce-dynamic-pricing\",\"id\":18643},{\"title\":\"WooCommerce Zapier\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/woocommerce-zapier-logo.png\",\"excerpt\":\"Integrate with 3000+ cloud apps and services today.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-zapier\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;59.00\",\"hash\":\"0782bdbe932c00f4978850268c6cfe40\",\"slug\":\"woocommerce-zapier\",\"id\":243589},{\"title\":\"Name Your Price\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/09\\/nyp-icon-dark-v83owf.png\",\"excerpt\":\"Allow customers to define the product price. Also useful for accepting user-set donations.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/name-your-price\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"31b4e11696cd99a3c0572975a84f1c08\",\"slug\":\"woocommerce-name-your-price\",\"id\":18738},{\"title\":\"WooCommerce Print Invoices &amp; Packing lists\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/03\\/Thumbnail-Print-Invoices-Packing-lists-updated.png\",\"excerpt\":\"Generate invoices, packing slips, and pick lists for your WooCommerce orders.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/print-invoices-packing-lists\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"465de1126817cdfb42d97ebca7eea717\",\"slug\":\"woocommerce-pip\",\"id\":18666},{\"title\":\"Advanced Notifications\",\"image\":\"\",\"excerpt\":\"Easily setup \\\"new order\\\" and stock email notifications for multiple recipients of your choosing.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/advanced-notifications\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"112372c44b002fea2640bd6bfafbca27\",\"slug\":\"woocommerce-advanced-notifications\",\"id\":18740},{\"title\":\"Royal Mail\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/04\\/royalmail.png\",\"excerpt\":\"Offer Royal Mail shipping rates to your customers\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/royal-mail\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"03839cca1a16c4488fcb669aeb91a056\",\"slug\":\"woocommerce-shipping-royalmail\",\"id\":182719},{\"title\":\"AutomateWoo\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-AutomateWoo-Dark-1.png\",\"excerpt\":\"Powerful marketing automation for WooCommerce. AutomateWoo has the tools you need to grow your store and make more money.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/automatewoo\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"ba9299b8-1dba-4aa0-a313-28bc1755cb88\",\"slug\":\"automatewoo\",\"id\":4652610},{\"title\":\"WooCommerce Points and Rewards\",\"image\":\"\",\"excerpt\":\"Reward your customers for purchases and other actions with points which can be redeemed for discounts.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-points-and-rewards\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"1649b6cca5da8b923b01ca56b5cdd246\",\"slug\":\"woocommerce-points-and-rewards\",\"id\":210259},{\"title\":\"WooCommerce Pre-Orders\",\"image\":\"\",\"excerpt\":\"Allow customers to order products before they are available.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-pre-orders\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"b2dc75e7d55e6f5bbfaccb59830f66b7\",\"slug\":\"woocommerce-pre-orders\",\"id\":178477},{\"title\":\"WooCommerce Subscription Downloads\",\"image\":\"\",\"excerpt\":\"Offer additional downloads to your subscribers, via downloadable products listed in your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscription-downloads\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"5be9e21c13953253e4406d2a700382ec\",\"slug\":\"woocommerce-subscription-downloads\",\"id\":420458},{\"title\":\"Google Product Feed\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2011\\/11\\/logo-regular-lscryp.png\",\"excerpt\":\"Feed product data to Google Merchant Center for setting up Google product listings &amp; product ads.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/google-product-feed\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"d55b4f852872025741312839f142447e\",\"slug\":\"woocommerce-product-feeds\",\"id\":18619},{\"title\":\"WooCommerce Additional Variation Images\",\"image\":\"\",\"excerpt\":\"Add gallery images per variation on variable products within WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-additional-variation-images\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/storefront\\/product\\/woo-single-1\\/\",\"price\":\"&#36;49.00\",\"hash\":\"c61dd6de57dcecb32bd7358866de4539\",\"slug\":\"woocommerce-additional-variation-images\",\"id\":477384},{\"title\":\"PayPal Payments Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Paypal-Payments-Pro-Dark.png\",\"excerpt\":\"Take credit card payments directly on your checkout using PayPal Pro.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/paypal-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"6d23ba7f0e0198937c0029f9e865b40e\",\"slug\":\"woocommerce-gateway-paypal-pro\",\"id\":18594},{\"title\":\"WooCommerce Deposits\",\"image\":\"\",\"excerpt\":\"Enable customers to pay for products using a deposit or a payment plan.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-deposits\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;179.00\",\"hash\":\"de192a6cf12c4fd803248da5db700762\",\"slug\":\"woocommerce-deposits\",\"id\":977087},{\"title\":\"WooCommerce AvaTax\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/01\\/Thumbnail-Avalara-updated.png\",\"excerpt\":\"Get 100% accurate sales tax calculations and on time tax return filing. No more tracking sales tax rates, rules, or jurisdictional boundaries.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-avatax\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"57077a4b28ba71cacf692bcf4a1a7f60\",\"slug\":\"woocommerce-avatax\",\"id\":1389326},{\"title\":\"Gravity Forms Product Add-ons\",\"image\":\"\",\"excerpt\":\"Powerful product add-ons, Gravity style\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/gravity-forms-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.elementstark.com\\/woocommerce-extension-demos\\/product-category\\/gravity-forms\\/\",\"price\":\"&#36;99.00\",\"hash\":\"a6ac0ab1a1536e3a357ccf24c0650ed0\",\"slug\":\"woocommerce-gravityforms-product-addons\",\"id\":18633},{\"title\":\"Amazon S3 Storage\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/amazon.png\",\"excerpt\":\"Serve digital products via Amazon S3\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/amazon-s3-storage\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"473bf6f221b865eff165c97881b473bb\",\"slug\":\"woocommerce-amazon-s3-storage\",\"id\":18663},{\"title\":\"Klarna Checkout\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/01\\/Partner_marketing_Klarna_Checkout_Black-1.png\",\"excerpt\":\"Klarna Checkout is a full checkout experience embedded on your site that includes all popular payment methods (Pay Now, Pay Later, Financing, Installments).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/klarna-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.krokedil.se\\/klarnacheckout\\/\",\"price\":\"&#36;0.00\",\"hash\":\"90f8ce584e785fcd8c2d739fd4f40d78\",\"slug\":\"klarna-checkout-for-woocommerce\",\"id\":2754152},{\"title\":\"Composite Products\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-CP.png?v=1\",\"excerpt\":\"Create product kit builders and custom product configurators using existing products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/composite-products\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"0343e0115bbcb97ccd98442b8326a0af\",\"slug\":\"woocommerce-composite-products\",\"id\":216836},{\"title\":\"Cart Add-ons\",\"image\":\"\",\"excerpt\":\"A powerful tool for driving incremental and impulse purchases by customers once they are in the shopping cart\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/cart-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"3a8ef25334396206f5da4cf208adeda3\",\"slug\":\"woocommerce-cart-add-ons\",\"id\":18717},{\"title\":\"Shipping Multiple Addresses\",\"image\":\"\",\"excerpt\":\"Allow your customers to ship individual items in a single order to multiple addresses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipping-multiple-addresses\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"aa0eb6f777846d329952d5b891d6f8cc\",\"slug\":\"woocommerce-shipping-multiple-addresses\",\"id\":18741},{\"title\":\"Bulk Stock Management\",\"image\":\"\",\"excerpt\":\"Edit product and variation stock levels in bulk via this handy interface\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/bulk-stock-management\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"02f4328d52f324ebe06a78eaaae7934f\",\"slug\":\"woocommerce-bulk-stock-management\",\"id\":18670},{\"title\":\"WooCommerce Paid Courses\",\"image\":\"\",\"excerpt\":\"Sell your online courses using the most popular eCommerce platform on the web \\u2013 WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-paid-courses\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"bad2a02a063555b7e2bee59924690763\",\"slug\":\"woothemes-sensei\",\"id\":152116},{\"title\":\"WooCommerce Email Customizer\",\"image\":\"\",\"excerpt\":\"Connect with your customers with each email you send by visually modifying your email templates via the WordPress Customizer.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-email-customizer\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"bd909fa97874d431f203b5336c7e8873\",\"slug\":\"woocommerce-email-customizer\",\"id\":853277},{\"title\":\"TaxJar\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/10\\/taxjar-logotype.png\",\"excerpt\":\"Save hours every month by putting your sales tax on autopilot. Automated, multi-state sales tax calculation, reporting, and filing for your WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/taxjar\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"12072d8e-e933-4561-97b1-9db3c7eeed91\",\"slug\":\"taxjar-simplified-taxes-for-woocommerce\",\"id\":514914},{\"title\":\"Force Sells\",\"image\":\"\",\"excerpt\":\"Force products to be added to the cart\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/force-sells\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"3ebddfc491ca168a4ea4800b893302b0\",\"slug\":\"woocommerce-force-sells\",\"id\":18678},{\"title\":\"WooCommerce Quick View\",\"image\":\"\",\"excerpt\":\"Show a quick-view button to view product details and add to cart via lightbox popup\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-quick-view\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"619c6e57ce72c49c4b57e15b06eddb65\",\"slug\":\"woocommerce-quick-view\",\"id\":187509},{\"title\":\"WooCommerce Purchase Order Gateway\",\"image\":\"\",\"excerpt\":\"Receive purchase orders via your WooCommerce-powered online store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-purchase-order\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"573a92318244ece5facb449d63e74874\",\"slug\":\"woocommerce-gateway-purchase-order\",\"id\":478542},{\"title\":\"Returns and Warranty Requests\",\"image\":\"\",\"excerpt\":\"Manage the RMA process, add warranties to products &amp; let customers request &amp; manage returns \\/ exchanges from their account.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/warranty-requests\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"9b4c41102e6b61ea5f558e16f9b63e25\",\"slug\":\"woocommerce-warranty\",\"id\":228315},{\"title\":\"Product Enquiry Form\",\"image\":\"\",\"excerpt\":\"Allow visitors to contact you directly from the product details page via a reCAPTCHA protected form to enquire about a product.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-enquiry-form\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"5a0f5d72519a8ffcc86669f042296937\",\"slug\":\"woocommerce-product-enquiry-form\",\"id\":18601},{\"title\":\"WooCommerce Box Office\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-BO-Dark.png\",\"excerpt\":\"Sell tickets for your next event, concert, function, fundraiser or conference directly on your own site\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-box-office\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"e704c9160de318216a8fa657404b9131\",\"slug\":\"woocommerce-box-office\",\"id\":1628717},{\"title\":\"WooCommerce Order Barcodes\",\"image\":\"\",\"excerpt\":\"Generates a unique barcode for each order on your site - perfect for e-tickets, packing slips, reservations and a variety of other uses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-barcodes\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"889835bb29ee3400923653e1e44a3779\",\"slug\":\"woocommerce-order-barcodes\",\"id\":391708},{\"title\":\"WooCommerce 360\\u00ba Image\",\"image\":\"\",\"excerpt\":\"An easy way to add a dynamic, controllable 360\\u00ba image rotation to your WooCommerce site, by adding a group of images to a product\\u2019s gallery.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-360-image\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"24eb2cfa3738a66bf3b2587876668cd2\",\"slug\":\"woocommerce-360-image\",\"id\":512186},{\"title\":\"eWAY\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/10\\/eway-logo-3000-2000.jpg\",\"excerpt\":\"Take credit card payments securely via eWay (SG, MY, HK, AU, and NZ) keeping customers on your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/eway\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"2c497769d98d025e0d340cd0b5ea5da1\",\"slug\":\"woocommerce-gateway-eway\",\"id\":18604},{\"title\":\"WooCommerce Photography\",\"image\":\"\",\"excerpt\":\"Sell photos in the blink of an eye using this simple as dragging &amp; dropping interface.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-photography\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"ee76e8b9daf1d97ca4d3874cc9e35687\",\"slug\":\"woocommerce-photography\",\"id\":583602},{\"title\":\"Software Add-on\",\"image\":\"\",\"excerpt\":\"Sell License Keys for Software\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/software-add-on\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"79f6dbfe1f1d3a56a86f0509b6d6b04b\",\"slug\":\"woocommerce-software-add-on\",\"id\":18683},{\"title\":\"WooCommerce Bookings Availability\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Bookings-Aval-Dark.png\",\"excerpt\":\"Sell more bookings by presenting a calendar or schedule of available slots in a page or post.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/bookings-availability\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"30770d2a-e392-4e82-baaa-76cfc7d02ae3\",\"slug\":\"woocommerce-bookings-availability\",\"id\":4228225},{\"title\":\"WooCommerce Products Compare\",\"image\":\"\",\"excerpt\":\"WooCommerce Products Compare will allow your potential customers to easily compare products within your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-products-compare\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"c3ba0a4a3199a0cc7a6112eb24414548\",\"slug\":\"woocommerce-products-compare\",\"id\":853117},{\"title\":\"WooCommerce Store Catalog PDF Download\",\"image\":\"\",\"excerpt\":\"Offer your customers a PDF download of your product catalog, generated by WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-store-catalog-pdf-download\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"79ca7aadafe706364e2d738b7c1090c4\",\"slug\":\"woocommerce-store-catalog-pdf-download\",\"id\":675790},{\"title\":\"Catalog Visibility Options\",\"image\":\"\",\"excerpt\":\"Transform WooCommerce into an online catalog by removing eCommerce functionality\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/catalog-visibility-options\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"12e791110365fdbb5865c8658907967e\",\"slug\":\"woocommerce-catalog-visibility-options\",\"id\":18648},{\"title\":\"Sequential Order Numbers Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/05\\/Thumbnail-Sequential-Order-Numbers-Pro-updated.png\",\"excerpt\":\"Tame your order numbers! Advanced &amp; sequential order numbers with optional prefixes \\/ suffixes\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/sequential-order-numbers-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"0b18a2816e016ba9988b93b1cd8fe766\",\"slug\":\"woocommerce-sequential-order-numbers-pro\",\"id\":18688},{\"title\":\"WooCommerce Blocks\",\"image\":\"\",\"excerpt\":\"WooCommerce Blocks offers a range of Gutenberg blocks you can use to build and customise your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gutenberg-products-block\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"c2e9f13a-f90c-4ffe-a8a5-b432399ec263\",\"slug\":\"woo-gutenberg-products-block\",\"id\":3076677},{\"title\":\"Conditional Shipping and Payments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-CSP.png?v=1\",\"excerpt\":\"Use conditional logic to restrict the shipping and payment options available on your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/conditional-shipping-and-payments\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1f56ff002fa830b77017b0107505211a\",\"slug\":\"woocommerce-conditional-shipping-and-payments\",\"id\":680253},{\"title\":\"WooCommerce Checkout Add-Ons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/07\\/Thumbnail-Checkout-Add-Ons-updated.png\",\"excerpt\":\"Highlight relevant products, offers like free shipping and other up-sells during checkout.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-checkout-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8fdca00b4000b7a8cc26371d0e470a8f\",\"slug\":\"woocommerce-checkout-add-ons\",\"id\":466854},{\"title\":\"WooCommerce Order Status Manager\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/02\\/Thumbnail-Order-Status-Manager-updated.png\",\"excerpt\":\"Create, edit, and delete completely custom order statuses and integrate them seamlessly into your order management flow.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-status-manager\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"51fd9ab45394b4cad5a0ebf58d012342\",\"slug\":\"woocommerce-order-status-manager\",\"id\":588398},{\"title\":\"WooCommerce Google Analytics Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/01\\/Thumbnail-GAPro-updated.png\",\"excerpt\":\"Add advanced event tracking and enhanced eCommerce tracking to your WooCommerce site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-google-analytics-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"d8aed8b7306b509eec1589e59abe319f\",\"slug\":\"woocommerce-google-analytics-pro\",\"id\":1312497},{\"title\":\"WooCommerce One Page Checkout\",\"image\":\"\",\"excerpt\":\"Create special pages where customers can choose products, checkout &amp; pay all on the one page.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-one-page-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"c9ba8f8352cd71b5508af5161268619a\",\"slug\":\"woocommerce-one-page-checkout\",\"id\":527886},{\"title\":\"QuickBooks Sync for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2019\\/04\\/woocommerce-com-logo-1-hyhzbh.png\",\"excerpt\":\"Automatic two-way sync for orders, customers, products, inventory and more between WooCommerce and QuickBooks (Online, Desktop, or POS).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/quickbooks-sync-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"c5e32e20-7c1f-4585-8b15-d930c2d842ac\",\"slug\":\"myworks-woo-sync-for-quickbooks-online\",\"id\":4065824},{\"title\":\"First Data\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/02\\/Thumbnail-FirstData-updated.png\",\"excerpt\":\"FirstData gateway for WooCommerce\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/firstdata\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"eb3e32663ec0810592eaf0d097796230\",\"slug\":\"woocommerce-gateway-firstdata\",\"id\":18645},{\"title\":\"WooCommerce Product Search\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2014\\/10\\/woocommerce-product-search-product-image-1870x960-1-jvsljj.png\",\"excerpt\":\"The perfect search engine helps customers to find and buy products quickly \\u2013 essential for every WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-product-search\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.itthinx.com\\/wps\\/\",\"price\":\"&#36;49.00\",\"hash\":\"c84cc8ca16ddac3408e6b6c5871133a8\",\"slug\":\"woocommerce-product-search\",\"id\":512174},{\"title\":\"WooSlider\",\"image\":\"\",\"excerpt\":\"WooSlider is the ultimate responsive slideshow WordPress slider plugin\\r\\n\\r\\n\\u00a0\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/wooslider\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/www.wooslider.com\\/\",\"price\":\"&#36;49.00\",\"hash\":\"209d98f3ccde6cc3de7e8732a2b20b6a\",\"slug\":\"wooslider\",\"id\":46506},{\"title\":\"WooCommerce Social Login\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/08\\/Thumbnail-Social-Login-updated.png\",\"excerpt\":\"Enable Social Login for seamless checkout and account creation.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-social-login\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demos.skyverge.com\\/woocommerce-social-login\\/\",\"price\":\"&#36;79.00\",\"hash\":\"b231cd6367a79cc8a53b7d992d77525d\",\"slug\":\"woocommerce-social-login\",\"id\":473617},{\"title\":\"Variation Swatches and Photos\",\"image\":\"\",\"excerpt\":\"Show color and image swatches instead of dropdowns for variable products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/variation-swatches-and-photos\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.elementstark.com\\/woocommerce-extension-demos\\/product-category\\/swatches-and-photos\\/\",\"price\":\"&#36;99.00\",\"hash\":\"37bea8d549df279c8278878d081b062f\",\"slug\":\"woocommerce-variation-swatches-and-photos\",\"id\":18697},{\"title\":\"WooCommerce Order Status Control\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/06\\/Thumbnail-Order-Status-Control-updated.png\",\"excerpt\":\"Use this extension to automatically change the order status to \\\"completed\\\" after successful payment.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-status-control\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"32400e509c7c36dcc1cd368e8267d981\",\"slug\":\"woocommerce-order-status-control\",\"id\":439037},{\"title\":\"Coupon Shortcodes\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/09\\/woocommerce-coupon-shortcodes-product-image-1870x960-1-vc5gux.png\",\"excerpt\":\"Show coupon discount info using shortcodes. Allows to render coupon information and content conditionally, based on the validity of coupons.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/coupon-shortcodes\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"ac5d9d51-70b2-4d8f-8b89-24200eea1394\",\"slug\":\"woocommerce-coupon-shortcodes\",\"id\":244762},{\"title\":\"Opayo\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/10\\/Opayo_logo_RGB.png\",\"excerpt\":\"Take payments on your WooCommerce store via Opayo (formally SagePay).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/sage-pay-form\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"6bc0cca47d0274d8ef9b164f6fbec1cc\",\"slug\":\"woocommerce-gateway-sagepay-form\",\"id\":18599},{\"title\":\"Jilt\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2017\\/12\\/Thumbnail-Jilt-updated.png\",\"excerpt\":\"All-in-one email marketing platform built for WooCommerce stores. Send newsletters, abandoned cart reminders, win-backs, welcome automations, and more.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/jilt\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"b53aafb64dca33835e41ee06de7e9816\",\"slug\":\"jilt-for-woocommerce\",\"id\":2754876},{\"title\":\"EU VAT Number\",\"image\":\"\",\"excerpt\":\"Collect VAT numbers at checkout and remove the VAT charge for eligible EU businesses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/eu-vat-number\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"d2720c4b4bb8d6908e530355b7a2d734\",\"slug\":\"woocommerce-eu-vat-number\",\"id\":18592},{\"title\":\"QuickBooks Commerce (formerly TradeGecko)\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/09\\/qbo-mark.png\",\"excerpt\":\"Get a wholesale and multichannel inventory &amp; order management platform for your WooCommerce store with QuickBooks Commerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-tradegecko\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"21da7811f7fc1f13ee19daa7415f0ff3\",\"slug\":\"woocommerce-tradegecko\",\"id\":245960},{\"title\":\"WooCommerce Tab Manager\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/11\\/Thumbnail-Tab-Manager-updated.png\",\"excerpt\":\"Gives you complete control over your product page tabs, create local and global tabs using a visual drag-and-drop interface, and more.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-tab-manager\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"89a9ac74850855cfe772b4b4ee1e31e0\",\"slug\":\"woocommerce-tab-manager\",\"id\":132195}]}\";s:3:\"raw\";s:48770:\"HTTP/1.1 200 OK\r\nServer: nginx\r\nDate: Thu, 22 Apr 2021 21:05:34 GMT\r\nContent-Type: application/json; charset=UTF-8\r\nContent-Length: 11509\r\nConnection: close\r\nX-Robots-Tag: noindex\r\nLink: <https://woocommerce.com/wp-json/>; rel=\"https://api.w.org/\"\r\nX-Content-Type-Options: nosniff\r\nAccess-Control-Expose-Headers: X-WP-Total, X-WP-TotalPages, Link\r\nAccess-Control-Allow-Headers: Authorization, X-WP-Nonce, Content-Disposition, Content-MD5, Content-Type\r\nX-WCCOM-Cache: HIT\r\nCache-Control: max-age=60\r\nAllow: GET\r\nContent-Encoding: gzip\r\nX-rq: sin1 91 203 3280\r\nAge: 53\r\nX-Cache: hit\r\nVary: Accept-Encoding, Origin\r\nAccept-Ranges: bytes\r\n\r\n{\"products\":[{\"title\":\"WooCommerce Google Analytics\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/GA-Dark.png\",\"excerpt\":\"Understand your customers and increase revenue with world\\u2019s leading analytics platform - integrated with WooCommerce for free.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-google-analytics\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"2d21f7de14dfb8e9885a4622be701ddf\",\"slug\":\"woocommerce-google-analytics-integration\",\"id\":1442927},{\"title\":\"WooCommerce Tax\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Tax-Dark.png\",\"excerpt\":\"Automatically calculate how much sales tax should be collected for WooCommerce orders - by city, country, or state - at checkout.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/tax\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"f31b3b9273cce188cc2b27f7849d02dd\",\"slug\":\"woocommerce-services\",\"id\":3220291},{\"title\":\"Stripe\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Stripe-Dark-1.png\",\"excerpt\":\"Accept all major debit and credit cards as well as local payment methods with Stripe.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/stripe\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"50bb7a985c691bb943a9da4d2c8b5efd\",\"slug\":\"woocommerce-gateway-stripe\",\"id\":18627},{\"title\":\"Jetpack\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Jetpack-Dark.png\",\"excerpt\":\"Power up and protect your store with Jetpack\\r\\n\\r\\nFor free security, insights and monitoring, connect to Jetpack. It\'s everything you need for a strong, secure start.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/jetpack\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"d5bfef9700b62b2b132c74c74c3193eb\",\"slug\":\"jetpack\",\"id\":2725249},{\"title\":\"Facebook for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Facebook-Dark.png\",\"excerpt\":\"Get the Official Facebook for WooCommerce plugin for three powerful ways to help grow your business.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/facebook\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"0ea4fe4c2d7ca6338f8a322fb3e4e187\",\"slug\":\"facebook-for-woocommerce\",\"id\":2127297},{\"title\":\"Amazon Pay\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Amazon-Pay-Dark.png\",\"excerpt\":\"Amazon Pay is embedded in your WooCommerce store. Transactions take place via\\u00a0Amazon widgets, so the buyer never leaves your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/pay-with-amazon\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"9865e043bbbe4f8c9735af31cb509b53\",\"slug\":\"woocommerce-gateway-amazon-payments-advanced\",\"id\":238816},{\"title\":\"Square for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Square-Dark.png\",\"excerpt\":\"Accepting payments is easy with Square. Clear rates, fast deposits (1-2 business days). Sell online and in person, and sync all payments, items and inventory.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/square\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"e907be8b86d7df0c8f8e0d0020b52638\",\"slug\":\"woocommerce-square\",\"id\":1770503},{\"title\":\"WooCommerce Shipping\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Ship-Dark-1.png\",\"excerpt\":\"Print USPS and DHL labels right from your WooCommerce dashboard and instantly save up to 90%. WooCommerce Shipping is free to use and saves you time and money.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipping\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"f31b3b9273cce188cc2b27f7849d02dd\",\"slug\":\"woocommerce-services\",\"id\":2165910},{\"title\":\"Mailchimp for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/09\\/logo-mailchimp-dark-v2.png\",\"excerpt\":\"Increase traffic, drive repeat purchases, and personalize your marketing when you connect to Mailchimp.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/mailchimp-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"b4481616ebece8b1ff68fc59b90c1a91\",\"slug\":\"mailchimp-for-woocommerce\",\"id\":2545166},{\"title\":\"WooCommerce Payments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Pay-Dark.png\",\"excerpt\":\"The only payment method designed exclusively for WooCommerce, by WooCommerce. Securely accept major credit and debit cards on your site. View and manage your transactions within your WordPress dashboard.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-payments\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"8c6319ca-8f41-4e69-be63-6b15ee37773b\",\"slug\":\"woocommerce-payments\",\"id\":5278104},{\"title\":\"PayPal Checkout\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Paypal-Dark.png\",\"excerpt\":\"PayPal Checkout now with Smart Payment Buttons\\u2122, dynamically displays, PayPal, Venmo, PayPal Credit, or other local payment options in a single stack giving customers the choice to pay with their preferred option.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-paypal-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"69e6cba62ac4021df9e117cc3f716d07\",\"slug\":\"woocommerce-gateway-paypal-express-checkout\",\"id\":1597922},{\"title\":\"WooCommerce Subscriptions\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Subscriptions-Dark.png\",\"excerpt\":\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscriptions\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"6115e6d7e297b623a169fdcf5728b224\",\"slug\":\"woocommerce-subscriptions\",\"id\":27147},{\"title\":\"ShipStation Integration\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Shipstation-Dark.png\",\"excerpt\":\"Fulfill all your Woo orders (and wherever else you sell) quickly and easily using ShipStation. Try it free for 30 days today!\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipstation-integration\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"9de8640767ba64237808ed7f245a49bb\",\"slug\":\"woocommerce-shipstation-integration\",\"id\":18734},{\"title\":\"Product Add-Ons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Product-Add-Ons-Dark.png\",\"excerpt\":\"Offer add-ons like gift wrapping, special messages or other special options for your products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"147d0077e591e16db9d0d67daeb8c484\",\"slug\":\"woocommerce-product-addons\",\"id\":18618},{\"title\":\"PayFast Payment Gateway\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Payfast-Dark-1.png\",\"excerpt\":\"Take payments on your WooCommerce store via PayFast (redirect method).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/payfast-payment-gateway\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"557bf07293ad916f20c207c6c9cd15ff\",\"slug\":\"woocommerce-payfast-gateway\",\"id\":18596},{\"title\":\"Google Ads &amp; Marketing by Kliken\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2019\\/02\\/GA-for-Woo-Logo-374x192px-qu3duk.png\",\"excerpt\":\"Get in front of shoppers and drive traffic to your store so you can grow your business with Smart Shopping Campaigns and free listings.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/google-ads-and-marketing\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"bf66e173-a220-4da7-9512-b5728c20fc16\",\"slug\":\"kliken-marketing-for-google\",\"id\":3866145},{\"title\":\"USPS Shipping Method\",\"image\":\"\",\"excerpt\":\"Get shipping rates from the USPS API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/usps-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"83d1524e8f5f1913e58889f83d442c32\",\"slug\":\"woocommerce-shipping-usps\",\"id\":18657},{\"title\":\"UPS Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/UPS-Shipping-Method-Dark.png\",\"excerpt\":\"Get shipping rates from the UPS API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/ups-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8dae58502913bac0fbcdcaba515ea998\",\"slug\":\"woocommerce-shipping-ups\",\"id\":18665},{\"title\":\"Braintree for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/02\\/braintree-black-copy.png\",\"excerpt\":\"Accept PayPal, credit cards and debit cards with a single payment gateway solution \\u2014 PayPal Powered by Braintree.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-paypal-powered-by-braintree\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"27f010c8e34ca65b205ddec88ad14536\",\"slug\":\"woocommerce-gateway-paypal-powered-by-braintree\",\"id\":1489837},{\"title\":\"WooCommerce Memberships\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/06\\/Thumbnail-Memberships-updated.png\",\"excerpt\":\"Give members access to restricted content or products, for a fee or for free.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-memberships\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"9288e7609ad0b487b81ef6232efa5cfc\",\"slug\":\"woocommerce-memberships\",\"id\":958589},{\"title\":\"Table Rate Shipping\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Product-Table-Rate-Shipping-Dark.png\",\"excerpt\":\"Advanced, flexible shipping. Define multiple shipping rates based on location, price, weight, shipping class or item count.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/table-rate-shipping\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"3034ed8aff427b0f635fe4c86bbf008a\",\"slug\":\"woocommerce-table-rate-shipping\",\"id\":18718},{\"title\":\"Shipment Tracking\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Ship-Tracking-Dark-1.png\",\"excerpt\":\"Add shipment tracking information to your orders.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipment-tracking\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"1968e199038a8a001c9f9966fd06bf88\",\"slug\":\"woocommerce-shipment-tracking\",\"id\":18693},{\"title\":\"Checkout Field Editor\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Checkout-Field-Editor-Dark.png\",\"excerpt\":\"Optimize your checkout process by adding, removing or editing fields to suit your needs.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-checkout-field-editor\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"2b8029f0d7cdd1118f4d843eb3ab43ff\",\"slug\":\"woocommerce-checkout-field-editor\",\"id\":184594},{\"title\":\"WooCommerce Bookings\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Bookings-Dark.png\",\"excerpt\":\"Allow customers to book appointments, make reservations or rent equipment without leaving your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/hotel\\/\",\"price\":\"&#36;249.00\",\"hash\":\"911c438934af094c2b38d5560b9f50f3\",\"slug\":\"WooCommerce Bookings\",\"id\":390890},{\"title\":\"Product Bundles\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-PB.png?v=1\",\"excerpt\":\"Offer personalized product bundles, bulk discount packages, and assembled\\u00a0products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-bundles\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"aa2518b5-ab19-4b75-bde9-60ca51e20f28\",\"slug\":\"woocommerce-product-bundles\",\"id\":18716},{\"title\":\"Multichannel for WooCommerce: Google, Amazon, eBay &amp; Walmart Integration\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/10\\/Woo-Extension-Store-Logo-v2.png\",\"excerpt\":\"Get the official Google, Amazon, eBay and Walmart extension and create, sync and manage multichannel listings directly from WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/amazon-ebay-integration\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"e4000666-9275-4c71-8619-be61fb41c9f9\",\"slug\":\"woocommerce-amazon-ebay-integration\",\"id\":3545890},{\"title\":\"Min\\/Max Quantities\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Min-Max-Qua-Dark.png\",\"excerpt\":\"Specify minimum and maximum allowed product quantities for orders to be completed.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/minmax-quantities\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"2b5188d90baecfb781a5aa2d6abb900a\",\"slug\":\"woocommerce-min-max-quantities\",\"id\":18616},{\"title\":\"LiveChat for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2015\\/11\\/LC_woo_regular-zmiaym.png\",\"excerpt\":\"Live Chat and messaging platform for sales and support -- increase average order value and overall sales through live conversations.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/livechat\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.livechat.com\\/livechat-for-ecommerce\\/?a=woocommerce&amp;utm_source=woocommerce.com&amp;utm_medium=integration&amp;utm_campaign=woocommerce.com\",\"price\":\"&#36;0.00\",\"hash\":\"5344cc1f-ed4a-4d00-beff-9d67f6d372f3\",\"slug\":\"livechat-woocommerce\",\"id\":1348888},{\"title\":\"Authorize.Net\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/04\\/Thumbnail-Authorize.net-updated.png\",\"excerpt\":\"Authorize.Net gateway with support for pre-orders and subscriptions.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/authorize-net\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8b61524fe53add7fdd1a8d1b00b9327d\",\"slug\":\"woocommerce-gateway-authorize-net-cim\",\"id\":178481},{\"title\":\"FedEx Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/01\\/FedEx_Logo_Wallpaper.jpeg\",\"excerpt\":\"Get shipping rates from the FedEx API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/fedex-shipping-module\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1a48b598b47a81559baadef15e320f64\",\"slug\":\"woocommerce-shipping-fedex\",\"id\":18620},{\"title\":\"Product CSV Import Suite\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Product-CSV-Import-Dark.png\",\"excerpt\":\"Import, merge, and export products and variations to and from WooCommerce using a CSV file.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-csv-import-suite\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"7ac9b00a1fe980fb61d28ab54d167d0d\",\"slug\":\"woocommerce-product-csv-import-suite\",\"id\":18680},{\"title\":\"Follow-Ups\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Follow-Ups-Dark.png\",\"excerpt\":\"Automatically contact customers after purchase - be it everyone, your most loyal or your biggest spenders - and keep your store top-of-mind.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/follow-up-emails\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"05ece68fe94558e65278fe54d9ec84d2\",\"slug\":\"woocommerce-follow-up-emails\",\"id\":18686},{\"title\":\"WooCommerce Customer \\/ Order \\/ Coupon Export\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/02\\/Thumbnail-Customer-Order-Coupon-Export-updated.png\",\"excerpt\":\"Export customers, orders, and coupons from WooCommerce manually or on an automated schedule.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/ordercustomer-csv-export\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"914de15813a903c767b55445608bf290\",\"slug\":\"woocommerce-customer-order-csv-export\",\"id\":18652},{\"title\":\"Smart Coupons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/10\\/wc-product-smart-coupons.png\",\"excerpt\":\"Everything you need for discounts, coupons, credits, gift cards, product giveaways, offers, and promotions. Most popular and complete coupons plugin for WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/smart-coupons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demo.storeapps.org\\/?demo=sc\",\"price\":\"&#36;99.00\",\"hash\":\"05c45f2aa466106a466de4402fff9dde\",\"slug\":\"woocommerce-smart-coupons\",\"id\":18729},{\"title\":\"Product Vendors\",\"image\":\"\",\"excerpt\":\"Turn your store into a multi-vendor marketplace\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-vendors\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"a97d99fccd651bbdd728f4d67d492c31\",\"slug\":\"woocommerce-product-vendors\",\"id\":219982},{\"title\":\"Australia Post Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/australia-post.gif\",\"excerpt\":\"Get shipping rates for your WooCommerce store from the Australia Post API, which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/australia-post-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1dbd4dc6bd91a9cda1bd6b9e7a5e4f43\",\"slug\":\"woocommerce-shipping-australia-post\",\"id\":18622},{\"title\":\"Canada Post Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/canada-post.png\",\"excerpt\":\"Get shipping rates from the Canada Post Ratings API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/canada-post-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"ac029cdf3daba20b20c7b9be7dc00e0e\",\"slug\":\"woocommerce-shipping-canada-post\",\"id\":18623},{\"title\":\"WooCommerce Accommodation Bookings\",\"image\":\"\",\"excerpt\":\"Book accommodation using WooCommerce and the WooCommerce Bookings extension.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-accommodation-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"99b2a7a4af90b6cefd2a733b3b1f78e7\",\"slug\":\"woocommerce-accommodation-bookings\",\"id\":1412069},{\"title\":\"WooCommerce Brands\",\"image\":\"\",\"excerpt\":\"Create, assign and list brands for products, and allow customers to view by brand.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/brands\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"8a88c7cbd2f1e73636c331c7a86f818c\",\"slug\":\"woocommerce-brands\",\"id\":18737},{\"title\":\"Xero\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/08\\/xero2.png\",\"excerpt\":\"Save time with automated sync between WooCommerce and your Xero account.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/xero\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"f0dd29d338d3c67cf6cee88eddf6869b\",\"slug\":\"woocommerce-xero\",\"id\":18733},{\"title\":\"Dynamic Pricing\",\"image\":\"\",\"excerpt\":\"Bulk discounts, role-based pricing and much more\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/dynamic-pricing\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"9a41775bb33843f52c93c922b0053986\",\"slug\":\"woocommerce-dynamic-pricing\",\"id\":18643},{\"title\":\"WooCommerce Zapier\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/woocommerce-zapier-logo.png\",\"excerpt\":\"Integrate with 3000+ cloud apps and services today.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-zapier\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;59.00\",\"hash\":\"0782bdbe932c00f4978850268c6cfe40\",\"slug\":\"woocommerce-zapier\",\"id\":243589},{\"title\":\"Name Your Price\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/09\\/nyp-icon-dark-v83owf.png\",\"excerpt\":\"Allow customers to define the product price. Also useful for accepting user-set donations.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/name-your-price\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"31b4e11696cd99a3c0572975a84f1c08\",\"slug\":\"woocommerce-name-your-price\",\"id\":18738},{\"title\":\"WooCommerce Print Invoices &amp; Packing lists\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/03\\/Thumbnail-Print-Invoices-Packing-lists-updated.png\",\"excerpt\":\"Generate invoices, packing slips, and pick lists for your WooCommerce orders.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/print-invoices-packing-lists\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"465de1126817cdfb42d97ebca7eea717\",\"slug\":\"woocommerce-pip\",\"id\":18666},{\"title\":\"Advanced Notifications\",\"image\":\"\",\"excerpt\":\"Easily setup \\\"new order\\\" and stock email notifications for multiple recipients of your choosing.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/advanced-notifications\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"112372c44b002fea2640bd6bfafbca27\",\"slug\":\"woocommerce-advanced-notifications\",\"id\":18740},{\"title\":\"Royal Mail\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/04\\/royalmail.png\",\"excerpt\":\"Offer Royal Mail shipping rates to your customers\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/royal-mail\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"03839cca1a16c4488fcb669aeb91a056\",\"slug\":\"woocommerce-shipping-royalmail\",\"id\":182719},{\"title\":\"AutomateWoo\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-AutomateWoo-Dark-1.png\",\"excerpt\":\"Powerful marketing automation for WooCommerce. AutomateWoo has the tools you need to grow your store and make more money.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/automatewoo\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"ba9299b8-1dba-4aa0-a313-28bc1755cb88\",\"slug\":\"automatewoo\",\"id\":4652610},{\"title\":\"WooCommerce Points and Rewards\",\"image\":\"\",\"excerpt\":\"Reward your customers for purchases and other actions with points which can be redeemed for discounts.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-points-and-rewards\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"1649b6cca5da8b923b01ca56b5cdd246\",\"slug\":\"woocommerce-points-and-rewards\",\"id\":210259},{\"title\":\"WooCommerce Pre-Orders\",\"image\":\"\",\"excerpt\":\"Allow customers to order products before they are available.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-pre-orders\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"b2dc75e7d55e6f5bbfaccb59830f66b7\",\"slug\":\"woocommerce-pre-orders\",\"id\":178477},{\"title\":\"WooCommerce Subscription Downloads\",\"image\":\"\",\"excerpt\":\"Offer additional downloads to your subscribers, via downloadable products listed in your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscription-downloads\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"5be9e21c13953253e4406d2a700382ec\",\"slug\":\"woocommerce-subscription-downloads\",\"id\":420458},{\"title\":\"Google Product Feed\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2011\\/11\\/logo-regular-lscryp.png\",\"excerpt\":\"Feed product data to Google Merchant Center for setting up Google product listings &amp; product ads.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/google-product-feed\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"d55b4f852872025741312839f142447e\",\"slug\":\"woocommerce-product-feeds\",\"id\":18619},{\"title\":\"WooCommerce Additional Variation Images\",\"image\":\"\",\"excerpt\":\"Add gallery images per variation on variable products within WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-additional-variation-images\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/storefront\\/product\\/woo-single-1\\/\",\"price\":\"&#36;49.00\",\"hash\":\"c61dd6de57dcecb32bd7358866de4539\",\"slug\":\"woocommerce-additional-variation-images\",\"id\":477384},{\"title\":\"PayPal Payments Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Paypal-Payments-Pro-Dark.png\",\"excerpt\":\"Take credit card payments directly on your checkout using PayPal Pro.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/paypal-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"6d23ba7f0e0198937c0029f9e865b40e\",\"slug\":\"woocommerce-gateway-paypal-pro\",\"id\":18594},{\"title\":\"WooCommerce Deposits\",\"image\":\"\",\"excerpt\":\"Enable customers to pay for products using a deposit or a payment plan.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-deposits\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;179.00\",\"hash\":\"de192a6cf12c4fd803248da5db700762\",\"slug\":\"woocommerce-deposits\",\"id\":977087},{\"title\":\"WooCommerce AvaTax\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/01\\/Thumbnail-Avalara-updated.png\",\"excerpt\":\"Get 100% accurate sales tax calculations and on time tax return filing. No more tracking sales tax rates, rules, or jurisdictional boundaries.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-avatax\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"57077a4b28ba71cacf692bcf4a1a7f60\",\"slug\":\"woocommerce-avatax\",\"id\":1389326},{\"title\":\"Gravity Forms Product Add-ons\",\"image\":\"\",\"excerpt\":\"Powerful product add-ons, Gravity style\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/gravity-forms-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.elementstark.com\\/woocommerce-extension-demos\\/product-category\\/gravity-forms\\/\",\"price\":\"&#36;99.00\",\"hash\":\"a6ac0ab1a1536e3a357ccf24c0650ed0\",\"slug\":\"woocommerce-gravityforms-product-addons\",\"id\":18633},{\"title\":\"Amazon S3 Storage\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/amazon.png\",\"excerpt\":\"Serve digital products via Amazon S3\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/amazon-s3-storage\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"473bf6f221b865eff165c97881b473bb\",\"slug\":\"woocommerce-amazon-s3-storage\",\"id\":18663},{\"title\":\"Klarna Checkout\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/01\\/Partner_marketing_Klarna_Checkout_Black-1.png\",\"excerpt\":\"Klarna Checkout is a full checkout experience embedded on your site that includes all popular payment methods (Pay Now, Pay Later, Financing, Installments).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/klarna-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.krokedil.se\\/klarnacheckout\\/\",\"price\":\"&#36;0.00\",\"hash\":\"90f8ce584e785fcd8c2d739fd4f40d78\",\"slug\":\"klarna-checkout-for-woocommerce\",\"id\":2754152},{\"title\":\"Composite Products\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-CP.png?v=1\",\"excerpt\":\"Create product kit builders and custom product configurators using existing products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/composite-products\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"0343e0115bbcb97ccd98442b8326a0af\",\"slug\":\"woocommerce-composite-products\",\"id\":216836},{\"title\":\"Cart Add-ons\",\"image\":\"\",\"excerpt\":\"A powerful tool for driving incremental and impulse purchases by customers once they are in the shopping cart\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/cart-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"3a8ef25334396206f5da4cf208adeda3\",\"slug\":\"woocommerce-cart-add-ons\",\"id\":18717},{\"title\":\"Shipping Multiple Addresses\",\"image\":\"\",\"excerpt\":\"Allow your customers to ship individual items in a single order to multiple addresses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipping-multiple-addresses\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"aa0eb6f777846d329952d5b891d6f8cc\",\"slug\":\"woocommerce-shipping-multiple-addresses\",\"id\":18741},{\"title\":\"Bulk Stock Management\",\"image\":\"\",\"excerpt\":\"Edit product and variation stock levels in bulk via this handy interface\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/bulk-stock-management\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"02f4328d52f324ebe06a78eaaae7934f\",\"slug\":\"woocommerce-bulk-stock-management\",\"id\":18670},{\"title\":\"WooCommerce Paid Courses\",\"image\":\"\",\"excerpt\":\"Sell your online courses using the most popular eCommerce platform on the web \\u2013 WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-paid-courses\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"bad2a02a063555b7e2bee59924690763\",\"slug\":\"woothemes-sensei\",\"id\":152116},{\"title\":\"WooCommerce Email Customizer\",\"image\":\"\",\"excerpt\":\"Connect with your customers with each email you send by visually modifying your email templates via the WordPress Customizer.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-email-customizer\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"bd909fa97874d431f203b5336c7e8873\",\"slug\":\"woocommerce-email-customizer\",\"id\":853277},{\"title\":\"TaxJar\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/10\\/taxjar-logotype.png\",\"excerpt\":\"Save hours every month by putting your sales tax on autopilot. Automated, multi-state sales tax calculation, reporting, and filing for your WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/taxjar\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"12072d8e-e933-4561-97b1-9db3c7eeed91\",\"slug\":\"taxjar-simplified-taxes-for-woocommerce\",\"id\":514914},{\"title\":\"Force Sells\",\"image\":\"\",\"excerpt\":\"Force products to be added to the cart\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/force-sells\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"3ebddfc491ca168a4ea4800b893302b0\",\"slug\":\"woocommerce-force-sells\",\"id\":18678},{\"title\":\"WooCommerce Quick View\",\"image\":\"\",\"excerpt\":\"Show a quick-view button to view product details and add to cart via lightbox popup\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-quick-view\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"619c6e57ce72c49c4b57e15b06eddb65\",\"slug\":\"woocommerce-quick-view\",\"id\":187509},{\"title\":\"WooCommerce Purchase Order Gateway\",\"image\":\"\",\"excerpt\":\"Receive purchase orders via your WooCommerce-powered online store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-purchase-order\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"573a92318244ece5facb449d63e74874\",\"slug\":\"woocommerce-gateway-purchase-order\",\"id\":478542},{\"title\":\"Returns and Warranty Requests\",\"image\":\"\",\"excerpt\":\"Manage the RMA process, add warranties to products &amp; let customers request &amp; manage returns \\/ exchanges from their account.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/warranty-requests\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"9b4c41102e6b61ea5f558e16f9b63e25\",\"slug\":\"woocommerce-warranty\",\"id\":228315},{\"title\":\"Product Enquiry Form\",\"image\":\"\",\"excerpt\":\"Allow visitors to contact you directly from the product details page via a reCAPTCHA protected form to enquire about a product.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-enquiry-form\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"5a0f5d72519a8ffcc86669f042296937\",\"slug\":\"woocommerce-product-enquiry-form\",\"id\":18601},{\"title\":\"WooCommerce Box Office\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-BO-Dark.png\",\"excerpt\":\"Sell tickets for your next event, concert, function, fundraiser or conference directly on your own site\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-box-office\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"e704c9160de318216a8fa657404b9131\",\"slug\":\"woocommerce-box-office\",\"id\":1628717},{\"title\":\"WooCommerce Order Barcodes\",\"image\":\"\",\"excerpt\":\"Generates a unique barcode for each order on your site - perfect for e-tickets, packing slips, reservations and a variety of other uses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-barcodes\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"889835bb29ee3400923653e1e44a3779\",\"slug\":\"woocommerce-order-barcodes\",\"id\":391708},{\"title\":\"WooCommerce 360\\u00ba Image\",\"image\":\"\",\"excerpt\":\"An easy way to add a dynamic, controllable 360\\u00ba image rotation to your WooCommerce site, by adding a group of images to a product\\u2019s gallery.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-360-image\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"24eb2cfa3738a66bf3b2587876668cd2\",\"slug\":\"woocommerce-360-image\",\"id\":512186},{\"title\":\"eWAY\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/10\\/eway-logo-3000-2000.jpg\",\"excerpt\":\"Take credit card payments securely via eWay (SG, MY, HK, AU, and NZ) keeping customers on your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/eway\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"2c497769d98d025e0d340cd0b5ea5da1\",\"slug\":\"woocommerce-gateway-eway\",\"id\":18604},{\"title\":\"WooCommerce Photography\",\"image\":\"\",\"excerpt\":\"Sell photos in the blink of an eye using this simple as dragging &amp; dropping interface.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-photography\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"ee76e8b9daf1d97ca4d3874cc9e35687\",\"slug\":\"woocommerce-photography\",\"id\":583602},{\"title\":\"Software Add-on\",\"image\":\"\",\"excerpt\":\"Sell License Keys for Software\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/software-add-on\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"79f6dbfe1f1d3a56a86f0509b6d6b04b\",\"slug\":\"woocommerce-software-add-on\",\"id\":18683},{\"title\":\"WooCommerce Bookings Availability\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Bookings-Aval-Dark.png\",\"excerpt\":\"Sell more bookings by presenting a calendar or schedule of available slots in a page or post.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/bookings-availability\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"30770d2a-e392-4e82-baaa-76cfc7d02ae3\",\"slug\":\"woocommerce-bookings-availability\",\"id\":4228225},{\"title\":\"WooCommerce Products Compare\",\"image\":\"\",\"excerpt\":\"WooCommerce Products Compare will allow your potential customers to easily compare products within your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-products-compare\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"c3ba0a4a3199a0cc7a6112eb24414548\",\"slug\":\"woocommerce-products-compare\",\"id\":853117},{\"title\":\"WooCommerce Store Catalog PDF Download\",\"image\":\"\",\"excerpt\":\"Offer your customers a PDF download of your product catalog, generated by WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-store-catalog-pdf-download\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"79ca7aadafe706364e2d738b7c1090c4\",\"slug\":\"woocommerce-store-catalog-pdf-download\",\"id\":675790},{\"title\":\"Catalog Visibility Options\",\"image\":\"\",\"excerpt\":\"Transform WooCommerce into an online catalog by removing eCommerce functionality\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/catalog-visibility-options\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"12e791110365fdbb5865c8658907967e\",\"slug\":\"woocommerce-catalog-visibility-options\",\"id\":18648},{\"title\":\"Sequential Order Numbers Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/05\\/Thumbnail-Sequential-Order-Numbers-Pro-updated.png\",\"excerpt\":\"Tame your order numbers! Advanced &amp; sequential order numbers with optional prefixes \\/ suffixes\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/sequential-order-numbers-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"0b18a2816e016ba9988b93b1cd8fe766\",\"slug\":\"woocommerce-sequential-order-numbers-pro\",\"id\":18688},{\"title\":\"WooCommerce Blocks\",\"image\":\"\",\"excerpt\":\"WooCommerce Blocks offers a range of Gutenberg blocks you can use to build and customise your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gutenberg-products-block\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"c2e9f13a-f90c-4ffe-a8a5-b432399ec263\",\"slug\":\"woo-gutenberg-products-block\",\"id\":3076677},{\"title\":\"Conditional Shipping and Payments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-CSP.png?v=1\",\"excerpt\":\"Use conditional logic to restrict the shipping and payment options available on your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/conditional-shipping-and-payments\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1f56ff002fa830b77017b0107505211a\",\"slug\":\"woocommerce-conditional-shipping-and-payments\",\"id\":680253},{\"title\":\"WooCommerce Checkout Add-Ons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/07\\/Thumbnail-Checkout-Add-Ons-updated.png\",\"excerpt\":\"Highlight relevant products, offers like free shipping and other up-sells during checkout.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-checkout-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8fdca00b4000b7a8cc26371d0e470a8f\",\"slug\":\"woocommerce-checkout-add-ons\",\"id\":466854},{\"title\":\"WooCommerce Order Status Manager\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/02\\/Thumbnail-Order-Status-Manager-updated.png\",\"excerpt\":\"Create, edit, and delete completely custom order statuses and integrate them seamlessly into your order management flow.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-status-manager\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"51fd9ab45394b4cad5a0ebf58d012342\",\"slug\":\"woocommerce-order-status-manager\",\"id\":588398},{\"title\":\"WooCommerce Google Analytics Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/01\\/Thumbnail-GAPro-updated.png\",\"excerpt\":\"Add advanced event tracking and enhanced eCommerce tracking to your WooCommerce site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-google-analytics-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"d8aed8b7306b509eec1589e59abe319f\",\"slug\":\"woocommerce-google-analytics-pro\",\"id\":1312497},{\"title\":\"WooCommerce One Page Checkout\",\"image\":\"\",\"excerpt\":\"Create special pages where customers can choose products, checkout &amp; pay all on the one page.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-one-page-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"c9ba8f8352cd71b5508af5161268619a\",\"slug\":\"woocommerce-one-page-checkout\",\"id\":527886},{\"title\":\"QuickBooks Sync for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2019\\/04\\/woocommerce-com-logo-1-hyhzbh.png\",\"excerpt\":\"Automatic two-way sync for orders, customers, products, inventory and more between WooCommerce and QuickBooks (Online, Desktop, or POS).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/quickbooks-sync-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"c5e32e20-7c1f-4585-8b15-d930c2d842ac\",\"slug\":\"myworks-woo-sync-for-quickbooks-online\",\"id\":4065824},{\"title\":\"First Data\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/02\\/Thumbnail-FirstData-updated.png\",\"excerpt\":\"FirstData gateway for WooCommerce\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/firstdata\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"eb3e32663ec0810592eaf0d097796230\",\"slug\":\"woocommerce-gateway-firstdata\",\"id\":18645},{\"title\":\"WooCommerce Product Search\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2014\\/10\\/woocommerce-product-search-product-image-1870x960-1-jvsljj.png\",\"excerpt\":\"The perfect search engine helps customers to find and buy products quickly \\u2013 essential for every WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-product-search\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.itthinx.com\\/wps\\/\",\"price\":\"&#36;49.00\",\"hash\":\"c84cc8ca16ddac3408e6b6c5871133a8\",\"slug\":\"woocommerce-product-search\",\"id\":512174},{\"title\":\"WooSlider\",\"image\":\"\",\"excerpt\":\"WooSlider is the ultimate responsive slideshow WordPress slider plugin\\r\\n\\r\\n\\u00a0\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/wooslider\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/www.wooslider.com\\/\",\"price\":\"&#36;49.00\",\"hash\":\"209d98f3ccde6cc3de7e8732a2b20b6a\",\"slug\":\"wooslider\",\"id\":46506},{\"title\":\"WooCommerce Social Login\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/08\\/Thumbnail-Social-Login-updated.png\",\"excerpt\":\"Enable Social Login for seamless checkout and account creation.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-social-login\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demos.skyverge.com\\/woocommerce-social-login\\/\",\"price\":\"&#36;79.00\",\"hash\":\"b231cd6367a79cc8a53b7d992d77525d\",\"slug\":\"woocommerce-social-login\",\"id\":473617},{\"title\":\"Variation Swatches and Photos\",\"image\":\"\",\"excerpt\":\"Show color and image swatches instead of dropdowns for variable products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/variation-swatches-and-photos\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.elementstark.com\\/woocommerce-extension-demos\\/product-category\\/swatches-and-photos\\/\",\"price\":\"&#36;99.00\",\"hash\":\"37bea8d549df279c8278878d081b062f\",\"slug\":\"woocommerce-variation-swatches-and-photos\",\"id\":18697},{\"title\":\"WooCommerce Order Status Control\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/06\\/Thumbnail-Order-Status-Control-updated.png\",\"excerpt\":\"Use this extension to automatically change the order status to \\\"completed\\\" after successful payment.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-status-control\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"32400e509c7c36dcc1cd368e8267d981\",\"slug\":\"woocommerce-order-status-control\",\"id\":439037},{\"title\":\"Coupon Shortcodes\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/09\\/woocommerce-coupon-shortcodes-product-image-1870x960-1-vc5gux.png\",\"excerpt\":\"Show coupon discount info using shortcodes. Allows to render coupon information and content conditionally, based on the validity of coupons.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/coupon-shortcodes\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"ac5d9d51-70b2-4d8f-8b89-24200eea1394\",\"slug\":\"woocommerce-coupon-shortcodes\",\"id\":244762},{\"title\":\"Opayo\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/10\\/Opayo_logo_RGB.png\",\"excerpt\":\"Take payments on your WooCommerce store via Opayo (formally SagePay).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/sage-pay-form\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"6bc0cca47d0274d8ef9b164f6fbec1cc\",\"slug\":\"woocommerce-gateway-sagepay-form\",\"id\":18599},{\"title\":\"Jilt\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2017\\/12\\/Thumbnail-Jilt-updated.png\",\"excerpt\":\"All-in-one email marketing platform built for WooCommerce stores. Send newsletters, abandoned cart reminders, win-backs, welcome automations, and more.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/jilt\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"b53aafb64dca33835e41ee06de7e9816\",\"slug\":\"jilt-for-woocommerce\",\"id\":2754876},{\"title\":\"EU VAT Number\",\"image\":\"\",\"excerpt\":\"Collect VAT numbers at checkout and remove the VAT charge for eligible EU businesses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/eu-vat-number\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"d2720c4b4bb8d6908e530355b7a2d734\",\"slug\":\"woocommerce-eu-vat-number\",\"id\":18592},{\"title\":\"QuickBooks Commerce (formerly TradeGecko)\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/09\\/qbo-mark.png\",\"excerpt\":\"Get a wholesale and multichannel inventory &amp; order management platform for your WooCommerce store with QuickBooks Commerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-tradegecko\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"21da7811f7fc1f13ee19daa7415f0ff3\",\"slug\":\"woocommerce-tradegecko\",\"id\":245960},{\"title\":\"WooCommerce Tab Manager\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/11\\/Thumbnail-Tab-Manager-updated.png\",\"excerpt\":\"Gives you complete control over your product page tabs, create local and global tabs using a visual drag-and-drop interface, and more.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-tab-manager\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"89a9ac74850855cfe772b4b4ee1e31e0\",\"slug\":\"woocommerce-tab-manager\",\"id\":132195}]}\";s:7:\"headers\";O:25:\"Requests_Response_Headers\":1:{s:7:\"\0*\0data\";a:18:{s:6:\"server\";a:1:{i:0;s:5:\"nginx\";}s:4:\"date\";a:1:{i:0;s:29:\"Thu, 22 Apr 2021 21:05:34 GMT\";}s:12:\"content-type\";a:1:{i:0;s:31:\"application/json; charset=UTF-8\";}s:14:\"content-length\";a:1:{i:0;s:5:\"11509\";}s:12:\"x-robots-tag\";a:1:{i:0;s:7:\"noindex\";}s:4:\"link\";a:1:{i:0;s:60:\"<https://woocommerce.com/wp-json/>; rel=\"https://api.w.org/\"\";}s:22:\"x-content-type-options\";a:1:{i:0;s:7:\"nosniff\";}s:29:\"access-control-expose-headers\";a:1:{i:0;s:33:\"X-WP-Total, X-WP-TotalPages, Link\";}s:28:\"access-control-allow-headers\";a:1:{i:0;s:73:\"Authorization, X-WP-Nonce, Content-Disposition, Content-MD5, Content-Type\";}s:13:\"x-wccom-cache\";a:1:{i:0;s:3:\"HIT\";}s:13:\"cache-control\";a:1:{i:0;s:10:\"max-age=60\";}s:5:\"allow\";a:1:{i:0;s:3:\"GET\";}s:16:\"content-encoding\";a:1:{i:0;s:4:\"gzip\";}s:4:\"x-rq\";a:1:{i:0;s:16:\"sin1 91 203 3280\";}s:3:\"age\";a:1:{i:0;s:2:\"53\";}s:7:\"x-cache\";a:1:{i:0;s:3:\"hit\";}s:4:\"vary\";a:1:{i:0;s:23:\"Accept-Encoding, Origin\";}s:13:\"accept-ranges\";a:1:{i:0;s:5:\"bytes\";}}}s:11:\"status_code\";i:200;s:16:\"protocol_version\";d:1.1;s:7:\"success\";b:1;s:9:\"redirects\";i:0;s:3:\"url\";s:59:\"https://woocommerce.com/wp-json/wccom-extensions/1.0/search\";s:7:\"history\";a:0:{}s:7:\"cookies\";O:19:\"Requests_Cookie_Jar\":1:{s:10:\"\0*\0cookies\";a:0:{}}}s:11:\"\0*\0filename\";N;s:4:\"data\";N;s:7:\"headers\";N;s:6:\"status\";N;}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `3kuF9kxQ_postmeta`
--

CREATE TABLE `3kuF9kxQ_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `3kuF9kxQ_postmeta`
--

INSERT INTO `3kuF9kxQ_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(6, 6, '_customize_changeset_uuid', 'e8d8ad04-3203-4c6c-a8bb-568c98388729'),
(9, 9, '_wp_attached_file', '2020/12/logo-bubotea-knen-01.png'),
(10, 9, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:811;s:6:\"height\";i:811;s:4:\"file\";s:32:\"2020/12/logo-bubotea-knen-01.png\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:32:\"logo-bubotea-knen-01-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:32:\"logo-bubotea-knen-01-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:32:\"logo-bubotea-knen-01-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"logo-bubotea-knen-01-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"logo-bubotea-knen-01-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"logo-bubotea-knen-01-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(23, 15, '_edit_lock', '1608192804:1'),
(24, 15, '_edit_last', '1'),
(25, 15, '_footer', 'normal'),
(26, 17, '_edit_lock', '1608192998:1'),
(27, 17, '_edit_last', '1'),
(28, 17, '_footer', 'normal'),
(29, 19, '_edit_lock', '1608429446:1'),
(30, 19, '_edit_last', '1'),
(31, 19, '_footer', 'normal'),
(32, 21, '_edit_lock', '1608429263:1'),
(33, 21, '_edit_last', '1'),
(34, 21, '_footer', 'normal'),
(35, 23, '_edit_lock', '1609906458:1'),
(36, 23, '_edit_last', '1'),
(37, 23, '_footer', 'normal'),
(38, 25, '_menu_item_type', 'post_type'),
(39, 25, '_menu_item_menu_item_parent', '0'),
(40, 25, '_menu_item_object_id', '23'),
(41, 25, '_menu_item_object', 'page'),
(42, 25, '_menu_item_target', ''),
(43, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(44, 25, '_menu_item_xfn', ''),
(45, 25, '_menu_item_url', ''),
(47, 26, '_menu_item_type', 'post_type'),
(48, 26, '_menu_item_menu_item_parent', '0'),
(49, 26, '_menu_item_object_id', '21'),
(50, 26, '_menu_item_object', 'page'),
(51, 26, '_menu_item_target', ''),
(52, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(53, 26, '_menu_item_xfn', ''),
(54, 26, '_menu_item_url', ''),
(56, 27, '_menu_item_type', 'post_type'),
(57, 27, '_menu_item_menu_item_parent', '0'),
(58, 27, '_menu_item_object_id', '19'),
(59, 27, '_menu_item_object', 'page'),
(60, 27, '_menu_item_target', ''),
(61, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(62, 27, '_menu_item_xfn', ''),
(63, 27, '_menu_item_url', ''),
(65, 28, '_menu_item_type', 'post_type'),
(66, 28, '_menu_item_menu_item_parent', '0'),
(67, 28, '_menu_item_object_id', '17'),
(68, 28, '_menu_item_object', 'page'),
(69, 28, '_menu_item_target', ''),
(70, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(71, 28, '_menu_item_xfn', ''),
(72, 28, '_menu_item_url', ''),
(74, 29, '_menu_item_type', 'post_type'),
(75, 29, '_menu_item_menu_item_parent', '0'),
(76, 29, '_menu_item_object_id', '15'),
(77, 29, '_menu_item_object', 'page'),
(78, 29, '_menu_item_target', ''),
(79, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(80, 29, '_menu_item_xfn', ''),
(81, 29, '_menu_item_url', ''),
(83, 30, '_menu_item_type', 'post_type'),
(84, 30, '_menu_item_menu_item_parent', '0'),
(85, 30, '_menu_item_object_id', '6'),
(86, 30, '_menu_item_object', 'page'),
(87, 30, '_menu_item_target', ''),
(88, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(89, 30, '_menu_item_xfn', ''),
(90, 30, '_menu_item_url', ''),
(92, 30, '_menu_item_design', 'default'),
(93, 30, '_menu_item_width', ''),
(94, 30, '_menu_item_height', ''),
(95, 30, '_menu_item_block', ''),
(96, 30, '_menu_item_behavior', 'hover'),
(97, 30, '_menu_item_icon-type', 'media'),
(98, 30, '_menu_item_icon-id', ''),
(99, 30, '_menu_item_icon-width', ''),
(100, 30, '_menu_item_icon-height', ''),
(101, 30, '_menu_item_icon-html', ''),
(102, 25, '_menu_item_design', 'default'),
(103, 25, '_menu_item_width', ''),
(104, 25, '_menu_item_height', ''),
(105, 25, '_menu_item_block', ''),
(106, 25, '_menu_item_behavior', 'hover'),
(107, 25, '_menu_item_icon-type', 'media'),
(108, 25, '_menu_item_icon-id', ''),
(109, 25, '_menu_item_icon-width', ''),
(110, 25, '_menu_item_icon-height', ''),
(111, 25, '_menu_item_icon-html', ''),
(112, 26, '_menu_item_design', 'default'),
(113, 26, '_menu_item_width', ''),
(114, 26, '_menu_item_height', ''),
(115, 26, '_menu_item_block', ''),
(116, 26, '_menu_item_behavior', 'hover'),
(117, 26, '_menu_item_icon-type', 'media'),
(118, 26, '_menu_item_icon-id', ''),
(119, 26, '_menu_item_icon-width', ''),
(120, 26, '_menu_item_icon-height', ''),
(121, 26, '_menu_item_icon-html', ''),
(122, 27, '_menu_item_design', 'default'),
(123, 27, '_menu_item_width', ''),
(124, 27, '_menu_item_height', ''),
(125, 27, '_menu_item_block', ''),
(126, 27, '_menu_item_behavior', 'hover'),
(127, 27, '_menu_item_icon-type', 'media'),
(128, 27, '_menu_item_icon-id', ''),
(129, 27, '_menu_item_icon-width', ''),
(130, 27, '_menu_item_icon-height', ''),
(131, 27, '_menu_item_icon-html', ''),
(132, 28, '_menu_item_design', 'default'),
(133, 28, '_menu_item_width', ''),
(134, 28, '_menu_item_height', ''),
(135, 28, '_menu_item_block', ''),
(136, 28, '_menu_item_behavior', 'hover'),
(137, 28, '_menu_item_icon-type', 'media'),
(138, 28, '_menu_item_icon-id', ''),
(139, 28, '_menu_item_icon-width', ''),
(140, 28, '_menu_item_icon-height', ''),
(141, 28, '_menu_item_icon-html', ''),
(142, 29, '_menu_item_design', 'default'),
(143, 29, '_menu_item_width', ''),
(144, 29, '_menu_item_height', ''),
(145, 29, '_menu_item_block', ''),
(146, 29, '_menu_item_behavior', 'hover'),
(147, 29, '_menu_item_icon-type', 'media'),
(148, 29, '_menu_item_icon-id', ''),
(149, 29, '_menu_item_icon-width', ''),
(150, 29, '_menu_item_icon-height', ''),
(151, 29, '_menu_item_icon-html', ''),
(154, 32, '_wp_attached_file', '2020/12/LOGO.png'),
(155, 32, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:349;s:6:\"height\";i:486;s:4:\"file\";s:16:\"2020/12/LOGO.png\";s:5:\"sizes\";a:4:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:16:\"LOGO-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:16:\"LOGO-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"LOGO-215x300.png\";s:5:\"width\";i:215;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"LOGO-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(167, 6, '_wp_page_template', 'page-blank.php'),
(168, 6, '_footer', ''),
(169, 6, '_thumbnail_id', ''),
(170, 38, '_wp_attached_file', '2020/12/banner-web.png'),
(171, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:6600;s:6:\"height\";i:2938;s:4:\"file\";s:22:\"2020/12/banner-web.png\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"banner-web-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"banner-web-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"banner-web-600x267.png\";s:5:\"width\";i:600;s:6:\"height\";i:267;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"banner-web-300x134.png\";s:5:\"width\";i:300;s:6:\"height\";i:134;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"banner-web-1024x456.png\";s:5:\"width\";i:1024;s:6:\"height\";i:456;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"banner-web-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"banner-web-768x342.png\";s:5:\"width\";i:768;s:6:\"height\";i:342;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:23:\"banner-web-1536x684.png\";s:5:\"width\";i:1536;s:6:\"height\";i:684;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:23:\"banner-web-2048x912.png\";s:5:\"width\";i:2048;s:6:\"height\";i:912;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(189, 54, '_wp_attached_file', 'woocommerce-placeholder.png'),
(190, 54, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(191, 59, '_edit_last', '1'),
(192, 59, '_edit_lock', '1609907210:1'),
(203, 65, '_wp_attached_file', '2020/12/Truyenthong.png'),
(204, 65, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2350;s:6:\"height\";i:3521;s:4:\"file\";s:23:\"2020/12/Truyenthong.png\";s:5:\"sizes\";a:12:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"Truyenthong-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"Truyenthong-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"Truyenthong-600x899.png\";s:5:\"width\";i:600;s:6:\"height\";i:899;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"Truyenthong-200x300.png\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"Truyenthong-683x1024.png\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"Truyenthong-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"Truyenthong-768x1151.png\";s:5:\"width\";i:768;s:6:\"height\";i:1151;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:25:\"Truyenthong-1025x1536.png\";s:5:\"width\";i:1025;s:6:\"height\";i:1536;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:25:\"Truyenthong-1367x2048.png\";s:5:\"width\";i:1367;s:6:\"height\";i:2048;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:23:\"Truyenthong-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"Truyenthong-600x899.png\";s:5:\"width\";i:600;s:6:\"height\";i:899;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"Truyenthong-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(205, 59, 'total_sales', '1'),
(206, 59, '_tax_status', 'taxable'),
(207, 59, '_tax_class', ''),
(208, 59, '_manage_stock', 'no'),
(209, 59, '_backorders', 'no'),
(210, 59, '_sold_individually', 'no'),
(211, 59, '_virtual', 'no'),
(212, 59, '_downloadable', 'no'),
(213, 59, '_download_limit', '-1'),
(214, 59, '_download_expiry', '-1'),
(215, 59, '_stock', NULL),
(216, 59, '_stock_status', 'instock'),
(217, 59, '_wc_average_rating', '0'),
(218, 59, '_wc_review_count', '0'),
(219, 59, '_product_version', '4.8.0'),
(220, 59, '_product_attributes', 'a:1:{s:13:\"pa_kich-thuoc\";a:6:{s:4:\"name\";s:13:\"pa_kich-thuoc\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}}'),
(221, 68, '_variation_description', ''),
(222, 68, 'total_sales', '0'),
(223, 68, '_tax_status', 'taxable'),
(224, 68, '_tax_class', 'parent'),
(225, 68, '_manage_stock', 'no'),
(226, 68, '_backorders', 'no'),
(227, 68, '_sold_individually', 'no'),
(228, 68, '_virtual', 'no'),
(229, 68, '_downloadable', 'no'),
(230, 68, '_download_limit', '-1'),
(231, 68, '_download_expiry', '-1'),
(232, 68, '_stock', NULL),
(233, 68, '_stock_status', 'instock'),
(234, 68, '_wc_average_rating', '0'),
(235, 68, '_wc_review_count', '0'),
(236, 68, 'attribute_pa_kich-thuoc', '250ml'),
(237, 68, '_product_version', '4.8.0'),
(238, 69, '_variation_description', ''),
(239, 69, 'total_sales', '0'),
(240, 69, '_tax_status', 'taxable'),
(241, 69, '_tax_class', 'parent'),
(242, 69, '_manage_stock', 'no'),
(243, 69, '_backorders', 'no'),
(244, 69, '_sold_individually', 'no'),
(245, 69, '_virtual', 'no'),
(246, 69, '_downloadable', 'no'),
(247, 69, '_download_limit', '-1'),
(248, 69, '_download_expiry', '-1'),
(249, 69, '_stock', NULL),
(250, 69, '_stock_status', 'instock'),
(251, 69, '_wc_average_rating', '0'),
(252, 69, '_wc_review_count', '0'),
(253, 69, 'attribute_pa_kich-thuoc', '330ml'),
(254, 69, '_product_version', '4.8.0'),
(256, 59, 'wc_productdata_options', 'a:1:{i:0;a:10:{s:14:\"_product_block\";s:1:\"0\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";}}'),
(257, 68, '_regular_price', '3.5'),
(258, 68, '_price', '3.5'),
(259, 69, '_regular_price', '4.5'),
(261, 69, '_price', '4.5'),
(263, 59, '_thumbnail_id', '443'),
(264, 59, '_price', '3.5'),
(265, 59, '_price', '4.5'),
(266, 72, '_edit_last', '1'),
(267, 72, '_edit_lock', '1609907178:1'),
(268, 72, 'wc_productdata_options', 'a:1:{i:0;a:10:{s:14:\"_product_block\";s:1:\"0\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";}}'),
(269, 72, 'total_sales', '1'),
(270, 72, '_tax_status', 'taxable'),
(271, 72, '_tax_class', ''),
(272, 72, '_manage_stock', 'no'),
(273, 72, '_backorders', 'no'),
(274, 72, '_sold_individually', 'no'),
(275, 72, '_virtual', 'no'),
(276, 72, '_downloadable', 'no'),
(277, 72, '_download_limit', '-1'),
(278, 72, '_download_expiry', '-1'),
(279, 72, '_stock', NULL),
(280, 72, '_stock_status', 'instock'),
(281, 72, '_wc_average_rating', '0'),
(282, 72, '_wc_review_count', '0'),
(283, 72, '_product_version', '4.8.0'),
(284, 72, '_product_attributes', 'a:1:{s:13:\"pa_kich-thuoc\";a:6:{s:4:\"name\";s:13:\"pa_kich-thuoc\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}}'),
(302, 75, '_variation_description', ''),
(303, 75, 'total_sales', '0'),
(304, 75, '_tax_status', 'taxable'),
(305, 75, '_tax_class', 'parent'),
(306, 75, '_manage_stock', 'no'),
(307, 75, '_backorders', 'no'),
(308, 75, '_sold_individually', 'no'),
(309, 75, '_virtual', 'no'),
(310, 75, '_downloadable', 'no'),
(311, 75, '_download_limit', '-1'),
(312, 75, '_download_expiry', '-1'),
(313, 75, '_stock', NULL),
(314, 75, '_stock_status', 'instock'),
(315, 75, '_wc_average_rating', '0'),
(316, 75, '_wc_review_count', '0'),
(317, 75, 'attribute_pa_kich-thuoc', '250ml'),
(318, 75, '_product_version', '4.8.0'),
(319, 76, '_variation_description', ''),
(320, 76, 'total_sales', '0'),
(321, 76, '_tax_status', 'taxable'),
(322, 76, '_tax_class', 'parent'),
(323, 76, '_manage_stock', 'no'),
(324, 76, '_backorders', 'no'),
(325, 76, '_sold_individually', 'no'),
(326, 76, '_virtual', 'no'),
(327, 76, '_downloadable', 'no'),
(328, 76, '_download_limit', '-1'),
(329, 76, '_download_expiry', '-1'),
(330, 76, '_stock', NULL),
(331, 76, '_stock_status', 'instock'),
(332, 76, '_wc_average_rating', '0'),
(333, 76, '_wc_review_count', '0'),
(334, 76, 'attribute_pa_kich-thuoc', '330ml'),
(335, 76, '_product_version', '4.8.0'),
(336, 75, '_regular_price', '3.5'),
(338, 75, '_price', '3.5'),
(339, 76, '_regular_price', '4.5'),
(341, 76, '_price', '4.5'),
(342, 72, '_price', '3.5'),
(343, 72, '_price', '4.5'),
(345, 77, '_edit_last', '1'),
(346, 77, '_edit_lock', '1609907090:1'),
(347, 77, 'total_sales', '10'),
(348, 77, '_tax_status', 'taxable'),
(349, 77, '_tax_class', ''),
(350, 77, '_manage_stock', 'no'),
(351, 77, '_backorders', 'no'),
(352, 77, '_sold_individually', 'no'),
(353, 77, '_virtual', 'no'),
(354, 77, '_downloadable', 'no'),
(355, 77, '_download_limit', '-1'),
(356, 77, '_download_expiry', '-1'),
(357, 77, '_stock', NULL),
(358, 77, '_stock_status', 'instock'),
(359, 77, '_wc_average_rating', '0'),
(360, 77, '_wc_review_count', '0'),
(361, 77, '_product_attributes', 'a:1:{s:13:\"pa_kich-thuoc\";a:6:{s:4:\"name\";s:13:\"pa_kich-thuoc\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}}'),
(362, 77, '_product_version', '4.8.0'),
(363, 78, '_variation_description', ''),
(364, 78, 'total_sales', '0'),
(365, 78, '_tax_status', 'taxable'),
(366, 78, '_tax_class', 'parent'),
(367, 78, '_manage_stock', 'no'),
(368, 78, '_backorders', 'no'),
(369, 78, '_sold_individually', 'no'),
(370, 78, '_virtual', 'no'),
(371, 78, '_downloadable', 'no'),
(372, 78, '_download_limit', '-1'),
(373, 78, '_download_expiry', '-1'),
(374, 78, '_stock', NULL),
(375, 78, '_stock_status', 'instock'),
(376, 78, '_wc_average_rating', '0'),
(377, 78, '_wc_review_count', '0'),
(378, 78, 'attribute_pa_kich-thuoc', '250ml'),
(379, 78, '_product_version', '4.8.0'),
(380, 79, '_variation_description', ''),
(381, 79, 'total_sales', '0'),
(382, 79, '_tax_status', 'taxable'),
(383, 79, '_tax_class', 'parent'),
(384, 79, '_manage_stock', 'no'),
(385, 79, '_backorders', 'no'),
(386, 79, '_sold_individually', 'no'),
(387, 79, '_virtual', 'no'),
(388, 79, '_downloadable', 'no'),
(389, 79, '_download_limit', '-1'),
(390, 79, '_download_expiry', '-1'),
(391, 79, '_stock', NULL),
(392, 79, '_stock_status', 'instock'),
(393, 79, '_wc_average_rating', '0'),
(394, 79, '_wc_review_count', '0'),
(395, 79, 'attribute_pa_kich-thuoc', '330ml'),
(396, 79, '_product_version', '4.8.0'),
(397, 78, '_regular_price', '3.5'),
(399, 78, '_price', '3.5'),
(400, 79, '_regular_price', '4.5'),
(402, 79, '_price', '4.5'),
(403, 77, '_price', '3.5'),
(404, 77, '_price', '4.5'),
(406, 77, 'wc_productdata_options', 'a:1:{i:0;a:10:{s:14:\"_product_block\";s:1:\"0\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";}}'),
(407, 81, '_edit_last', '1'),
(408, 81, '_edit_lock', '1609907066:1'),
(409, 81, 'total_sales', '0'),
(410, 81, '_tax_status', 'taxable'),
(411, 81, '_tax_class', ''),
(412, 81, '_manage_stock', 'no'),
(413, 81, '_backorders', 'no'),
(414, 81, '_sold_individually', 'no'),
(415, 81, '_virtual', 'no'),
(416, 81, '_downloadable', 'no'),
(417, 81, '_download_limit', '-1'),
(418, 81, '_download_expiry', '-1'),
(419, 81, '_stock', NULL),
(420, 81, '_stock_status', 'instock'),
(421, 81, '_wc_average_rating', '5.00'),
(422, 81, '_wc_review_count', '1'),
(423, 81, '_product_attributes', 'a:1:{s:13:\"pa_kich-thuoc\";a:6:{s:4:\"name\";s:13:\"pa_kich-thuoc\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}}'),
(424, 81, '_product_version', '4.8.0'),
(425, 82, '_variation_description', ''),
(426, 82, 'total_sales', '0'),
(427, 82, '_tax_status', 'taxable'),
(428, 82, '_tax_class', 'parent'),
(429, 82, '_manage_stock', 'no'),
(430, 82, '_backorders', 'no'),
(431, 82, '_sold_individually', 'no'),
(432, 82, '_virtual', 'no'),
(433, 82, '_downloadable', 'no'),
(434, 82, '_download_limit', '-1'),
(435, 82, '_download_expiry', '-1'),
(436, 82, '_stock', NULL),
(437, 82, '_stock_status', 'instock'),
(438, 82, '_wc_average_rating', '0'),
(439, 82, '_wc_review_count', '0'),
(440, 82, 'attribute_pa_kich-thuoc', '250ml'),
(441, 82, '_product_version', '4.8.0'),
(442, 83, '_variation_description', ''),
(443, 83, 'total_sales', '0'),
(444, 83, '_tax_status', 'taxable'),
(445, 83, '_tax_class', 'parent'),
(446, 83, '_manage_stock', 'no'),
(447, 83, '_backorders', 'no'),
(448, 83, '_sold_individually', 'no'),
(449, 83, '_virtual', 'no'),
(450, 83, '_downloadable', 'no'),
(451, 83, '_download_limit', '-1'),
(452, 83, '_download_expiry', '-1'),
(453, 83, '_stock', NULL),
(454, 83, '_stock_status', 'instock'),
(455, 83, '_wc_average_rating', '0'),
(456, 83, '_wc_review_count', '0'),
(457, 83, 'attribute_pa_kich-thuoc', '330ml'),
(458, 83, '_product_version', '4.8.0'),
(459, 82, '_regular_price', '3.5'),
(461, 82, '_price', '3.5'),
(462, 83, '_regular_price', '4.5'),
(464, 83, '_price', '4.5'),
(465, 81, '_price', '3.5'),
(466, 81, '_price', '4.5'),
(468, 81, 'wc_productdata_options', 'a:1:{i:0;a:10:{s:14:\"_product_block\";s:1:\"0\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";}}'),
(469, 85, '_edit_last', '1'),
(470, 85, '_edit_lock', '1609907187:1'),
(471, 85, 'total_sales', '24'),
(472, 85, '_tax_status', 'taxable'),
(473, 85, '_tax_class', ''),
(474, 85, '_manage_stock', 'no'),
(475, 85, '_backorders', 'no'),
(476, 85, '_sold_individually', 'no'),
(477, 85, '_virtual', 'no'),
(478, 85, '_downloadable', 'no'),
(479, 85, '_download_limit', '-1'),
(480, 85, '_download_expiry', '-1'),
(481, 85, '_stock', NULL),
(482, 85, '_stock_status', 'instock'),
(483, 85, '_wc_average_rating', '0'),
(484, 85, '_wc_review_count', '0'),
(485, 85, '_product_attributes', 'a:1:{s:13:\"pa_kich-thuoc\";a:6:{s:4:\"name\";s:13:\"pa_kich-thuoc\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}}'),
(486, 85, '_product_version', '4.8.0'),
(487, 86, '_variation_description', ''),
(488, 86, 'total_sales', '0'),
(489, 86, '_tax_status', 'taxable'),
(490, 86, '_tax_class', 'parent'),
(491, 86, '_manage_stock', 'no'),
(492, 86, '_backorders', 'no'),
(493, 86, '_sold_individually', 'no'),
(494, 86, '_virtual', 'no'),
(495, 86, '_downloadable', 'no'),
(496, 86, '_download_limit', '-1'),
(497, 86, '_download_expiry', '-1'),
(498, 86, '_stock', NULL),
(499, 86, '_stock_status', 'instock'),
(500, 86, '_wc_average_rating', '0'),
(501, 86, '_wc_review_count', '0'),
(502, 86, 'attribute_pa_kich-thuoc', '250ml'),
(503, 86, '_product_version', '4.8.0'),
(504, 87, '_variation_description', ''),
(505, 87, 'total_sales', '0'),
(506, 87, '_tax_status', 'taxable'),
(507, 87, '_tax_class', 'parent'),
(508, 87, '_manage_stock', 'no'),
(509, 87, '_backorders', 'no'),
(510, 87, '_sold_individually', 'no'),
(511, 87, '_virtual', 'no'),
(512, 87, '_downloadable', 'no'),
(513, 87, '_download_limit', '-1'),
(514, 87, '_download_expiry', '-1'),
(515, 87, '_stock', NULL),
(516, 87, '_stock_status', 'instock'),
(517, 87, '_wc_average_rating', '0'),
(518, 87, '_wc_review_count', '0'),
(519, 87, 'attribute_pa_kich-thuoc', '330ml'),
(520, 87, '_product_version', '4.8.0'),
(521, 86, '_regular_price', '3.5'),
(523, 86, '_price', '3.5'),
(524, 87, '_regular_price', '4.5'),
(526, 87, '_price', '4.5'),
(527, 85, '_price', '3.5'),
(528, 85, '_price', '4.5'),
(530, 85, 'wc_productdata_options', 'a:1:{i:0;a:10:{s:14:\"_product_block\";s:1:\"0\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";}}'),
(531, 88, '_edit_last', '1'),
(532, 88, '_edit_lock', '1616202914:1'),
(533, 88, 'total_sales', '35'),
(534, 88, '_tax_status', 'taxable'),
(535, 88, '_tax_class', ''),
(536, 88, '_manage_stock', 'no'),
(537, 88, '_backorders', 'no'),
(538, 88, '_sold_individually', 'no'),
(539, 88, '_virtual', 'no'),
(540, 88, '_downloadable', 'no'),
(541, 88, '_download_limit', '-1'),
(542, 88, '_download_expiry', '-1'),
(543, 88, '_stock', NULL),
(544, 88, '_stock_status', 'instock'),
(545, 88, '_wc_average_rating', '5.00'),
(546, 88, '_wc_review_count', '1'),
(547, 88, '_product_attributes', 'a:1:{s:13:\"pa_kich-thuoc\";a:6:{s:4:\"name\";s:13:\"pa_kich-thuoc\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}}'),
(548, 88, '_product_version', '5.0.0'),
(549, 89, '_variation_description', ''),
(550, 89, 'total_sales', '0'),
(551, 89, '_tax_status', 'taxable'),
(552, 89, '_tax_class', 'parent'),
(553, 89, '_manage_stock', 'no'),
(554, 89, '_backorders', 'no'),
(555, 89, '_sold_individually', 'no'),
(556, 89, '_virtual', 'no'),
(557, 89, '_downloadable', 'no'),
(558, 89, '_download_limit', '-1'),
(559, 89, '_download_expiry', '-1'),
(560, 89, '_stock', NULL),
(561, 89, '_stock_status', 'instock'),
(562, 89, '_wc_average_rating', '0'),
(563, 89, '_wc_review_count', '0'),
(564, 89, 'attribute_pa_kich-thuoc', '250ml'),
(565, 89, '_product_version', '5.0.0'),
(566, 90, '_variation_description', ''),
(567, 90, 'total_sales', '0'),
(568, 90, '_tax_status', 'taxable'),
(569, 90, '_tax_class', 'parent'),
(570, 90, '_manage_stock', 'no'),
(571, 90, '_backorders', 'no'),
(572, 90, '_sold_individually', 'no'),
(573, 90, '_virtual', 'no'),
(574, 90, '_downloadable', 'no'),
(575, 90, '_download_limit', '-1'),
(576, 90, '_download_expiry', '-1'),
(577, 90, '_stock', NULL),
(578, 90, '_stock_status', 'instock'),
(579, 90, '_wc_average_rating', '0'),
(580, 90, '_wc_review_count', '0'),
(581, 90, 'attribute_pa_kich-thuoc', '330ml'),
(582, 90, '_product_version', '5.0.0'),
(583, 89, '_regular_price', '3.5'),
(584, 89, '_thumbnail_id', '65'),
(585, 89, '_price', '3.5'),
(586, 90, '_regular_price', '4.5'),
(587, 90, '_thumbnail_id', '65'),
(588, 90, '_price', '4.5'),
(591, 88, '_thumbnail_id', '449'),
(592, 88, 'wc_productdata_options', 'a:1:{i:0;a:10:{s:14:\"_product_block\";s:1:\"0\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";}}'),
(611, 81, '_wc_rating_count', 'a:1:{i:5;i:1;}'),
(612, 100, '_wp_attached_file', '2020/12/173-scaled.jpg'),
(613, 100, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:22:\"2020/12/173-scaled.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"173-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"173-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"173-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"173-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:17:\"173-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:17:\"173-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:15:\"173-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:15:\"173-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:15:\"173-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:15:\"173-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:15:\"173-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"173-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:7:\"173.jpg\";}'),
(635, 115, '_wp_attached_file', '2020/12/3032-scaled.jpg'),
(636, 115, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:23:\"2020/12/3032-scaled.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"3032-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"3032-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"3032-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"3032-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:18:\"3032-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:18:\"3032-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:16:\"3032-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:16:\"3032-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:16:\"3032-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:16:\"3032-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:16:\"3032-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:16:\"3032-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:8:\"3032.jpg\";}'),
(637, 117, '_wp_attached_file', '2020/12/banner.png'),
(638, 117, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:6282;s:6:\"height\";i:3608;s:4:\"file\";s:18:\"2020/12/banner.png\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"banner-300x172.png\";s:5:\"width\";i:300;s:6:\"height\";i:172;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"banner-1024x588.png\";s:5:\"width\";i:1024;s:6:\"height\";i:588;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"banner-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"banner-768x441.png\";s:5:\"width\";i:768;s:6:\"height\";i:441;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:19:\"banner-1536x882.png\";s:5:\"width\";i:1536;s:6:\"height\";i:882;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:20:\"banner-2048x1176.png\";s:5:\"width\";i:2048;s:6:\"height\";i:1176;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:18:\"banner-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:18:\"banner-600x345.png\";s:5:\"width\";i:600;s:6:\"height\";i:345;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"banner-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:18:\"banner-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:18:\"banner-600x345.png\";s:5:\"width\";i:600;s:6:\"height\";i:345;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"banner-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(639, 15, '_wp_page_template', 'page-blank.php'),
(640, 15, '_thumbnail_id', ''),
(645, 127, '_edit_lock', '1609238058:1'),
(646, 129, '_wp_attached_file', '2020/12/store_xuanla_hn_master.jpg'),
(647, 129, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:1153;s:4:\"file\";s:34:\"2020/12/store_xuanla_hn_master.jpg\";s:5:\"sizes\";a:11:{s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"store_xuanla_hn_master-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"store_xuanla_hn_master-1024x577.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:577;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"store_xuanla_hn_master-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"store_xuanla_hn_master-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:35:\"store_xuanla_hn_master-1536x865.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:865;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:34:\"store_xuanla_hn_master-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:34:\"store_xuanla_hn_master-600x338.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:338;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:34:\"store_xuanla_hn_master-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:34:\"store_xuanla_hn_master-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:34:\"store_xuanla_hn_master-600x338.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:338;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:34:\"store_xuanla_hn_master-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(650, 127, '_thumbnail_id', '456'),
(651, 130, '_edit_lock', '1609236718:1'),
(654, 130, '_thumbnail_id', '452'),
(655, 132, '_edit_lock', '1609236912:1'),
(656, 133, '_wp_attached_file', '2020/12/3e0a8783_master.jpg'),
(657, 133, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:1349;s:4:\"file\";s:27:\"2020/12/3e0a8783_master.jpg\";s:5:\"sizes\";a:11:{s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"3e0a8783_master-300x198.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:198;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"3e0a8783_master-1024x675.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:675;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"3e0a8783_master-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"3e0a8783_master-768x506.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:506;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:29:\"3e0a8783_master-1536x1012.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1012;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:27:\"3e0a8783_master-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:27:\"3e0a8783_master-600x395.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:395;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:27:\"3e0a8783_master-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:27:\"3e0a8783_master-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:27:\"3e0a8783_master-600x395.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:395;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:27:\"3e0a8783_master-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(660, 132, '_thumbnail_id', '454'),
(663, 140, '_wp_attached_file', '2020/12/br-scaled.jpg'),
(664, 140, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1919;s:6:\"height\";i:2560;s:4:\"file\";s:21:\"2020/12/br-scaled.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"br-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"br-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"br-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"br-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:16:\"br-1151x1536.jpg\";s:5:\"width\";i:1151;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:16:\"br-1535x2048.jpg\";s:5:\"width\";i:1535;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:14:\"br-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:14:\"br-600x800.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:14:\"br-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:14:\"br-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:14:\"br-600x800.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:14:\"br-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:6:\"br.jpg\";}'),
(686, 154, '_wp_attached_file', '2020/12/19139510-scaled.jpg'),
(687, 154, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1725;s:4:\"file\";s:27:\"2020/12/19139510-scaled.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"19139510-300x202.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:202;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"19139510-1024x690.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:690;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"19139510-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"19139510-768x518.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:518;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"19139510-1536x1035.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1035;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:22:\"19139510-2048x1380.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1380;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"19139510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"19139510-600x404.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:404;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"19139510-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"19139510-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"19139510-600x404.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:404;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"19139510-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:12:\"19139510.jpg\";}'),
(691, 158, '_wp_attached_file', '2020/12/bot1457-scaled.jpg'),
(692, 158, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1725;s:4:\"file\";s:26:\"2020/12/bot1457-scaled.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"bot1457-300x202.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:202;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"bot1457-1024x690.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:690;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"bot1457-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"bot1457-768x518.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:518;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:21:\"bot1457-1536x1035.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1035;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:21:\"bot1457-2048x1380.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1380;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"bot1457-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:19:\"bot1457-600x404.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:404;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"bot1457-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"bot1457-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:19:\"bot1457-600x404.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:404;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"bot1457-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:11:\"bot1457.jpg\";}'),
(711, 170, '_edit_last', '1'),
(712, 170, '_edit_lock', '1608265479:1'),
(713, 172, '_wp_attached_file', '2020/12/archive-line.png'),
(714, 172, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"file\";s:24:\"2020/12/archive-line.png\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"archive-line-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"archive-line-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(715, 172, '_flatsome_studio_id', '17469'),
(716, 173, '_wp_attached_file', '2020/12/arrow-go-back-line.png');
INSERT INTO `3kuF9kxQ_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(717, 173, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"file\";s:30:\"2020/12/arrow-go-back-line.png\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"arrow-go-back-line-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"arrow-go-back-line-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(718, 173, '_flatsome_studio_id', '17473'),
(719, 174, '_wp_attached_file', '2020/12/user-heart-line.png'),
(720, 174, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"file\";s:27:\"2020/12/user-heart-line.png\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:27:\"user-heart-line-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:27:\"user-heart-line-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(721, 174, '_flatsome_studio_id', '17474'),
(722, 175, '_wp_attached_file', '2020/12/secure-payment-line.png'),
(723, 175, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"file\";s:31:\"2020/12/secure-payment-line.png\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:31:\"secure-payment-line-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:31:\"secure-payment-line-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(724, 175, '_flatsome_studio_id', '17475'),
(725, 170, '_thumbnail_id', ''),
(730, 184, '_edit_lock', '1609237289:1'),
(731, 185, '_wp_attached_file', '2020/12/pepper-tea.jpg'),
(732, 185, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1080;s:6:\"height\";i:810;s:4:\"file\";s:22:\"2020/12/pepper-tea.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"pepper-tea-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"pepper-tea-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"pepper-tea-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"pepper-tea-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"pepper-tea-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"pepper-tea-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"pepper-tea-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"pepper-tea-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"pepper-tea-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"pepper-tea-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(735, 184, '_thumbnail_id', '458'),
(767, 208, '_wp_attached_file', '2020/12/Asset-1.png'),
(768, 208, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:379;s:6:\"height\";i:409;s:4:\"file\";s:19:\"2020/12/Asset-1.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"Asset-1-278x300.png\";s:5:\"width\";i:278;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"Asset-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"Asset-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"Asset-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"Asset-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"Asset-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(769, 209, '_wp_attached_file', '2020/12/web-bubo-08.png'),
(770, 209, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1539;s:6:\"height\";i:1667;s:4:\"file\";s:23:\"2020/12/web-bubo-08.png\";s:5:\"sizes\";a:11:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"web-bubo-08-277x300.png\";s:5:\"width\";i:277;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"web-bubo-08-945x1024.png\";s:5:\"width\";i:945;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"web-bubo-08-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"web-bubo-08-768x832.png\";s:5:\"width\";i:768;s:6:\"height\";i:832;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:25:\"web-bubo-08-1418x1536.png\";s:5:\"width\";i:1418;s:6:\"height\";i:1536;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"web-bubo-08-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"web-bubo-08-600x650.png\";s:5:\"width\";i:600;s:6:\"height\";i:650;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"web-bubo-08-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:23:\"web-bubo-08-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"web-bubo-08-600x650.png\";s:5:\"width\";i:600;s:6:\"height\";i:650;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"web-bubo-08-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(775, 217, '_wp_attached_file', '2020/12/web-bubo-09.png'),
(776, 217, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4268;s:6:\"height\";i:1347;s:4:\"file\";s:23:\"2020/12/web-bubo-09.png\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"web-bubo-09-300x95.png\";s:5:\"width\";i:300;s:6:\"height\";i:95;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"web-bubo-09-1024x323.png\";s:5:\"width\";i:1024;s:6:\"height\";i:323;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"web-bubo-09-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"web-bubo-09-768x242.png\";s:5:\"width\";i:768;s:6:\"height\";i:242;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:24:\"web-bubo-09-1536x485.png\";s:5:\"width\";i:1536;s:6:\"height\";i:485;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:24:\"web-bubo-09-2048x646.png\";s:5:\"width\";i:2048;s:6:\"height\";i:646;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"web-bubo-09-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"web-bubo-09-600x189.png\";s:5:\"width\";i:600;s:6:\"height\";i:189;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"web-bubo-09-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:23:\"web-bubo-09-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"web-bubo-09-600x189.png\";s:5:\"width\";i:600;s:6:\"height\";i:189;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"web-bubo-09-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(777, 219, '_wp_attached_file', '2020/12/web-bubo-02.png'),
(778, 219, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1551;s:6:\"height\";i:2389;s:4:\"file\";s:23:\"2020/12/web-bubo-02.png\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"web-bubo-02-195x300.png\";s:5:\"width\";i:195;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"web-bubo-02-665x1024.png\";s:5:\"width\";i:665;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"web-bubo-02-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"web-bubo-02-768x1183.png\";s:5:\"width\";i:768;s:6:\"height\";i:1183;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:24:\"web-bubo-02-997x1536.png\";s:5:\"width\";i:997;s:6:\"height\";i:1536;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:25:\"web-bubo-02-1330x2048.png\";s:5:\"width\";i:1330;s:6:\"height\";i:2048;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"web-bubo-02-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"web-bubo-02-600x924.png\";s:5:\"width\";i:600;s:6:\"height\";i:924;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"web-bubo-02-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:23:\"web-bubo-02-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"web-bubo-02-600x924.png\";s:5:\"width\";i:600;s:6:\"height\";i:924;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"web-bubo-02-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(779, 220, '_wp_attached_file', '2020/12/web-bubo-04.png'),
(780, 220, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1792;s:6:\"height\";i:2389;s:4:\"file\";s:23:\"2020/12/web-bubo-04.png\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"web-bubo-04-225x300.png\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"web-bubo-04-768x1024.png\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"web-bubo-04-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"web-bubo-04-768x1024.png\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:25:\"web-bubo-04-1152x1536.png\";s:5:\"width\";i:1152;s:6:\"height\";i:1536;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:25:\"web-bubo-04-1536x2048.png\";s:5:\"width\";i:1536;s:6:\"height\";i:2048;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"web-bubo-04-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"web-bubo-04-600x800.png\";s:5:\"width\";i:600;s:6:\"height\";i:800;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"web-bubo-04-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:23:\"web-bubo-04-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"web-bubo-04-600x800.png\";s:5:\"width\";i:600;s:6:\"height\";i:800;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"web-bubo-04-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(781, 223, '_wp_attached_file', '2020/12/LOGO-1.png'),
(782, 223, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:349;s:6:\"height\";i:486;s:4:\"file\";s:18:\"2020/12/LOGO-1.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"LOGO-1-215x300.png\";s:5:\"width\";i:215;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"LOGO-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:18:\"LOGO-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"LOGO-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:18:\"LOGO-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"LOGO-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(789, 228, '_wp_attached_file', '2020/12/web-bubo.png'),
(790, 228, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1551;s:6:\"height\";i:1830;s:4:\"file\";s:20:\"2020/12/web-bubo.png\";s:5:\"sizes\";a:11:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"web-bubo-254x300.png\";s:5:\"width\";i:254;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"web-bubo-868x1024.png\";s:5:\"width\";i:868;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"web-bubo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"web-bubo-768x906.png\";s:5:\"width\";i:768;s:6:\"height\";i:906;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"web-bubo-1302x1536.png\";s:5:\"width\";i:1302;s:6:\"height\";i:1536;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"web-bubo-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"web-bubo-600x708.png\";s:5:\"width\";i:600;s:6:\"height\";i:708;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"web-bubo-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"web-bubo-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"web-bubo-600x708.png\";s:5:\"width\";i:600;s:6:\"height\";i:708;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"web-bubo-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(791, 232, '_wp_attached_file', '2020/12/web-bubo-05.png'),
(792, 232, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:687;s:6:\"height\";i:687;s:4:\"file\";s:23:\"2020/12/web-bubo-05.png\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"web-bubo-05-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"web-bubo-05-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"web-bubo-05-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"web-bubo-05-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"web-bubo-05-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:23:\"web-bubo-05-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"web-bubo-05-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"web-bubo-05-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(795, 237, '_wp_attached_file', '2020/12/web-bubo-07.png'),
(796, 237, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:687;s:6:\"height\";i:687;s:4:\"file\";s:23:\"2020/12/web-bubo-07.png\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"web-bubo-07-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"web-bubo-07-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"web-bubo-07-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"web-bubo-07-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"web-bubo-07-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:23:\"web-bubo-07-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"web-bubo-07-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"web-bubo-07-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(797, 238, '_wp_attached_file', '2020/12/web-bubo-06.png'),
(798, 238, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:687;s:6:\"height\";i:687;s:4:\"file\";s:23:\"2020/12/web-bubo-06.png\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"web-bubo-06-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"web-bubo-06-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"web-bubo-06-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"web-bubo-06-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"web-bubo-06-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:23:\"web-bubo-06-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"web-bubo-06-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"web-bubo-06-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(799, 239, '_wp_attached_file', '2020/12/Asset-3.png'),
(800, 239, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:166;s:6:\"height\";i:165;s:4:\"file\";s:19:\"2020/12/Asset-3.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"Asset-3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"Asset-3-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"Asset-3-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(801, 240, '_wp_attached_file', '2020/12/Asset-4.png'),
(802, 240, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1025;s:6:\"height\";i:309;s:4:\"file\";s:19:\"2020/12/Asset-4.png\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"Asset-4-300x90.png\";s:5:\"width\";i:300;s:6:\"height\";i:90;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"Asset-4-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"Asset-4-768x232.png\";s:5:\"width\";i:768;s:6:\"height\";i:232;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"Asset-4-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:19:\"Asset-4-600x181.png\";s:5:\"width\";i:600;s:6:\"height\";i:181;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"Asset-4-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"Asset-4-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:19:\"Asset-4-600x181.png\";s:5:\"width\";i:600;s:6:\"height\";i:181;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"Asset-4-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(803, 19, '_wp_page_template', 'page-blank.php'),
(804, 19, '_thumbnail_id', ''),
(805, 21, '_wp_page_template', 'page-blank.php'),
(806, 21, '_thumbnail_id', ''),
(807, 250, '_order_key', 'wc_order_32W3iq08CKFMx'),
(808, 250, '_customer_user', '1'),
(809, 250, '_payment_method', 'cod'),
(810, 250, '_payment_method_title', 'Trả tiền mặt khi nhận hàng'),
(811, 250, '_customer_ip_address', '116.105.79.232'),
(812, 250, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36 Edg/87.0.664.60'),
(813, 250, '_created_via', 'checkout'),
(814, 250, '_cart_hash', '62437af8a9f8f563a7dcce93870b5657'),
(815, 250, '_billing_first_name', 'hùng'),
(816, 250, '_billing_last_name', 'thái'),
(817, 250, '_billing_address_1', 'đà nẵng'),
(818, 250, '_billing_city', 'đà nẵng'),
(819, 250, '_billing_country', 'VN'),
(820, 250, '_billing_email', 'hungthai56@gmail.com'),
(821, 250, '_billing_phone', '0124578745'),
(822, 250, '_order_currency', 'EUR'),
(823, 250, '_cart_discount', '0'),
(824, 250, '_cart_discount_tax', '0'),
(825, 250, '_order_shipping', '0.0'),
(826, 250, '_order_shipping_tax', '0'),
(827, 250, '_order_tax', '0'),
(828, 250, '_order_total', '7.0'),
(829, 250, '_order_version', '4.8.0'),
(830, 250, '_prices_include_tax', 'no'),
(831, 250, '_billing_address_index', 'hùng thái  đà nẵng  đà nẵng   VN hungthai56@gmail.com 0124578745'),
(832, 250, '_shipping_address_index', '        '),
(833, 250, 'is_vat_exempt', 'no'),
(834, 250, '_download_permissions_granted', 'yes'),
(835, 250, '_recorded_sales', 'yes'),
(836, 250, '_recorded_coupon_usage_counts', 'yes'),
(837, 250, '_order_stock_reduced', 'yes'),
(838, 251, '_order_key', 'wc_order_I46X3jYZoZ2hm'),
(839, 251, '_customer_user', '1'),
(840, 251, '_payment_method', 'cod'),
(841, 251, '_payment_method_title', 'Trả tiền mặt khi nhận hàng'),
(842, 251, '_customer_ip_address', '116.105.79.232'),
(843, 251, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36 Edg/87.0.664.60'),
(844, 251, '_created_via', 'checkout'),
(845, 251, '_cart_hash', '44aee08245ae6d412c0e2ed9ebfb426f'),
(846, 251, '_billing_first_name', 'hùng'),
(847, 251, '_billing_last_name', 'thái'),
(848, 251, '_billing_address_1', 'đà nẵng'),
(849, 251, '_billing_city', 'đà nẵng'),
(850, 251, '_billing_country', 'VN'),
(851, 251, '_billing_email', 'hungthai56@gmail.com'),
(852, 251, '_billing_phone', '0124578745'),
(853, 251, '_order_currency', 'EUR'),
(854, 251, '_cart_discount', '0'),
(855, 251, '_cart_discount_tax', '0'),
(856, 251, '_order_shipping', '0'),
(857, 251, '_order_shipping_tax', '0'),
(858, 251, '_order_tax', '0'),
(859, 251, '_order_total', '3.5'),
(860, 251, '_order_version', '4.8.0'),
(861, 251, '_prices_include_tax', 'no'),
(862, 251, '_billing_address_index', 'hùng thái  đà nẵng  đà nẵng   VN hungthai56@gmail.com 0124578745'),
(863, 251, '_shipping_address_index', '        '),
(864, 251, 'is_vat_exempt', 'no'),
(865, 251, '_download_permissions_granted', 'yes'),
(866, 251, '_recorded_sales', 'yes'),
(867, 251, '_recorded_coupon_usage_counts', 'yes'),
(868, 251, '_order_stock_reduced', 'yes'),
(869, 251, '_edit_lock', '1608376446:1'),
(870, 252, '_wp_attached_file', '2020/12/3013.png'),
(871, 252, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4600;s:6:\"height\";i:2000;s:4:\"file\";s:16:\"2020/12/3013.png\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"3013-300x130.png\";s:5:\"width\";i:300;s:6:\"height\";i:130;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"3013-1024x445.png\";s:5:\"width\";i:1024;s:6:\"height\";i:445;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"3013-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"3013-768x334.png\";s:5:\"width\";i:768;s:6:\"height\";i:334;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:17:\"3013-1536x668.png\";s:5:\"width\";i:1536;s:6:\"height\";i:668;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:17:\"3013-2048x890.png\";s:5:\"width\";i:2048;s:6:\"height\";i:890;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:16:\"3013-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:16:\"3013-600x261.png\";s:5:\"width\";i:600;s:6:\"height\";i:261;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:16:\"3013-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:16:\"3013-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:16:\"3013-600x261.png\";s:5:\"width\";i:600;s:6:\"height\";i:261;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:16:\"3013-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(872, 254, '_wp_attached_file', '2020/12/3013-scaled.jpg'),
(873, 254, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1113;s:4:\"file\";s:23:\"2020/12/3013-scaled.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"3013-300x130.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:130;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"3013-1024x445.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:445;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"3013-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"3013-768x334.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:334;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:17:\"3013-1536x668.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:668;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:17:\"3013-2048x890.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:890;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:16:\"3013-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:16:\"3013-600x261.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:261;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:16:\"3013-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:16:\"3013-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:16:\"3013-600x261.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:261;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:16:\"3013-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:8:\"3013.jpg\";}'),
(874, 255, '_wp_attached_file', '2020/12/3033-scaled.jpg'),
(875, 255, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1113;s:4:\"file\";s:23:\"2020/12/3033-scaled.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"3033-300x130.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:130;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"3033-1024x445.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:445;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"3033-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"3033-768x334.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:334;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:17:\"3033-1536x668.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:668;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:17:\"3033-2048x890.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:890;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:16:\"3033-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:16:\"3033-600x261.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:261;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:16:\"3033-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:16:\"3033-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:16:\"3033-600x261.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:261;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:16:\"3033-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:8:\"3033.jpg\";}'),
(895, 280, '_wp_attached_file', '2020/12/bannertrasua.jpg'),
(896, 281, '_wp_attached_file', '2020/12/bannertrasua-1-scaled.jpg'),
(897, 281, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1130;s:4:\"file\";s:33:\"2020/12/bannertrasua-1-scaled.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"bannertrasua-1-300x132.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:132;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"bannertrasua-1-1024x452.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:452;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"bannertrasua-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"bannertrasua-1-768x339.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:339;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:27:\"bannertrasua-1-1536x678.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:678;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:18:\"bannertrasua-1.jpg\";}'),
(898, 282, '_wp_attached_file', '2020/12/bannertrasua-2-scaled.jpg'),
(899, 282, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1470;s:4:\"file\";s:33:\"2020/12/bannertrasua-2-scaled.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"bannertrasua-2-300x172.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:172;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"bannertrasua-2-1024x588.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:588;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"bannertrasua-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"bannertrasua-2-768x441.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:441;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:18:\"bannertrasua-2.jpg\";}'),
(912, 292, '_order_key', 'wc_order_DmtfEew8AX79u'),
(913, 292, '_customer_user', '1'),
(914, 292, '_payment_method', 'cod'),
(915, 292, '_payment_method_title', 'Trả tiền mặt khi nhận hàng'),
(916, 292, '_customer_ip_address', '14.236.9.170'),
(917, 292, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36'),
(918, 292, '_created_via', 'checkout'),
(919, 292, '_cart_hash', 'cb0adfc94207f3321f6aa534bc6889dc'),
(920, 292, '_billing_first_name', 'hùng'),
(921, 292, '_billing_last_name', 'thái'),
(922, 292, '_billing_address_1', 'đà nẵng'),
(923, 292, '_billing_city', 'đà nẵng'),
(924, 292, '_billing_country', 'FI'),
(925, 292, '_billing_email', 'hungthai56@gmail.com'),
(926, 292, '_billing_phone', '0124578745'),
(927, 292, '_shipping_first_name', 'hùng'),
(928, 292, '_shipping_last_name', 'thái'),
(929, 292, '_shipping_address_1', 'đà nẵng'),
(930, 292, '_shipping_city', 'đà nẵng'),
(931, 292, '_shipping_country', 'FI'),
(932, 292, '_order_currency', 'EUR'),
(933, 292, '_cart_discount', '0'),
(934, 292, '_cart_discount_tax', '0'),
(935, 292, '_order_shipping', '0.0'),
(936, 292, '_order_shipping_tax', '0'),
(937, 292, '_order_tax', '0'),
(938, 292, '_order_total', '35.0'),
(939, 292, '_order_version', '4.8.0'),
(940, 292, '_prices_include_tax', 'no'),
(941, 292, '_billing_address_index', 'hùng thái  đà nẵng  đà nẵng   FI hungthai56@gmail.com 0124578745'),
(942, 292, '_shipping_address_index', 'hùng thái  đà nẵng  đà nẵng   FI'),
(943, 292, 'is_vat_exempt', 'no'),
(944, 292, '_download_permissions_granted', 'yes'),
(945, 292, '_recorded_sales', 'yes'),
(946, 292, '_recorded_coupon_usage_counts', 'yes'),
(947, 292, '_order_stock_reduced', 'yes'),
(948, 293, '_order_key', 'wc_order_rLJwwmlAgZFTC'),
(949, 293, '_customer_user', '1'),
(950, 293, '_payment_method', 'cod'),
(951, 293, '_payment_method_title', 'Trả tiền mặt khi nhận hàng'),
(952, 293, '_customer_ip_address', '14.236.9.170'),
(953, 293, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36'),
(954, 293, '_created_via', 'checkout'),
(955, 293, '_cart_hash', 'cb0adfc94207f3321f6aa534bc6889dc'),
(956, 293, '_billing_first_name', 'hùng'),
(957, 293, '_billing_last_name', 'thái'),
(958, 293, '_billing_address_1', 'đà nẵng'),
(959, 293, '_billing_city', 'đà nẵng'),
(960, 293, '_billing_country', 'FI'),
(961, 293, '_billing_email', 'hungthai56@gmail.com'),
(962, 293, '_billing_phone', '0124578745'),
(963, 293, '_shipping_first_name', 'hùng'),
(964, 293, '_shipping_last_name', 'thái'),
(965, 293, '_shipping_address_1', 'đà nẵng'),
(966, 293, '_shipping_city', 'đà nẵng'),
(967, 293, '_shipping_country', 'FI'),
(968, 293, '_order_currency', 'EUR'),
(969, 293, '_cart_discount', '0'),
(970, 293, '_cart_discount_tax', '0'),
(971, 293, '_order_shipping', '0.0'),
(972, 293, '_order_shipping_tax', '0'),
(973, 293, '_order_tax', '0'),
(974, 293, '_order_total', '35.0'),
(975, 293, '_order_version', '4.8.0'),
(976, 293, '_prices_include_tax', 'no'),
(977, 293, '_billing_address_index', 'hùng thái  đà nẵng  đà nẵng   FI hungthai56@gmail.com 0124578745'),
(978, 293, '_shipping_address_index', 'hùng thái  đà nẵng  đà nẵng   FI'),
(979, 293, 'is_vat_exempt', 'no'),
(980, 293, '_download_permissions_granted', 'yes'),
(981, 293, '_recorded_sales', 'yes'),
(982, 293, '_recorded_coupon_usage_counts', 'yes'),
(983, 293, '_order_stock_reduced', 'yes'),
(984, 251, '_edit_last', '1'),
(985, 251, '_date_completed', '1608376522'),
(986, 251, '_date_paid', '1608376522'),
(987, 251, '_paid_date', '2020-12-19 11:15:22'),
(988, 251, '_completed_date', '2020-12-19 11:15:22'),
(989, 294, '_wp_attached_file', '2020/12/WEB-NguyenLieu-02.png'),
(990, 294, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2135;s:6:\"height\";i:961;s:4:\"file\";s:29:\"2020/12/WEB-NguyenLieu-02.png\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"WEB-NguyenLieu-02-300x135.png\";s:5:\"width\";i:300;s:6:\"height\";i:135;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"WEB-NguyenLieu-02-1024x461.png\";s:5:\"width\";i:1024;s:6:\"height\";i:461;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"WEB-NguyenLieu-02-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"WEB-NguyenLieu-02-768x346.png\";s:5:\"width\";i:768;s:6:\"height\";i:346;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:30:\"WEB-NguyenLieu-02-1536x691.png\";s:5:\"width\";i:1536;s:6:\"height\";i:691;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:30:\"WEB-NguyenLieu-02-2048x922.png\";s:5:\"width\";i:2048;s:6:\"height\";i:922;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:29:\"WEB-NguyenLieu-02-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:29:\"WEB-NguyenLieu-02-600x270.png\";s:5:\"width\";i:600;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:29:\"WEB-NguyenLieu-02-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:29:\"WEB-NguyenLieu-02-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:29:\"WEB-NguyenLieu-02-600x270.png\";s:5:\"width\";i:600;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:29:\"WEB-NguyenLieu-02-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(991, 295, '_wp_attached_file', '2020/12/WEB-NguyenLieu-03.png'),
(992, 295, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:669;s:6:\"height\";i:1005;s:4:\"file\";s:29:\"2020/12/WEB-NguyenLieu-03.png\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"WEB-NguyenLieu-03-200x300.png\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"WEB-NguyenLieu-03-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:29:\"WEB-NguyenLieu-03-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:29:\"WEB-NguyenLieu-03-600x901.png\";s:5:\"width\";i:600;s:6:\"height\";i:901;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:29:\"WEB-NguyenLieu-03-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:29:\"WEB-NguyenLieu-03-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:29:\"WEB-NguyenLieu-03-600x901.png\";s:5:\"width\";i:600;s:6:\"height\";i:901;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:29:\"WEB-NguyenLieu-03-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(993, 296, '_wp_attached_file', '2020/12/WEB-NguyenLieu-04.png');
INSERT INTO `3kuF9kxQ_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(994, 296, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:707;s:6:\"height\";i:837;s:4:\"file\";s:29:\"2020/12/WEB-NguyenLieu-04.png\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"WEB-NguyenLieu-04-253x300.png\";s:5:\"width\";i:253;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"WEB-NguyenLieu-04-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:29:\"WEB-NguyenLieu-04-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:29:\"WEB-NguyenLieu-04-600x710.png\";s:5:\"width\";i:600;s:6:\"height\";i:710;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:29:\"WEB-NguyenLieu-04-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:29:\"WEB-NguyenLieu-04-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:29:\"WEB-NguyenLieu-04-600x710.png\";s:5:\"width\";i:600;s:6:\"height\";i:710;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:29:\"WEB-NguyenLieu-04-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(995, 297, '_wp_attached_file', '2020/12/WEB-NguyenLieu-05.png'),
(996, 297, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1710;s:6:\"height\";i:707;s:4:\"file\";s:29:\"2020/12/WEB-NguyenLieu-05.png\";s:5:\"sizes\";a:11:{s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"WEB-NguyenLieu-05-300x124.png\";s:5:\"width\";i:300;s:6:\"height\";i:124;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"WEB-NguyenLieu-05-1024x423.png\";s:5:\"width\";i:1024;s:6:\"height\";i:423;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"WEB-NguyenLieu-05-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"WEB-NguyenLieu-05-768x318.png\";s:5:\"width\";i:768;s:6:\"height\";i:318;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:30:\"WEB-NguyenLieu-05-1536x635.png\";s:5:\"width\";i:1536;s:6:\"height\";i:635;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:29:\"WEB-NguyenLieu-05-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:29:\"WEB-NguyenLieu-05-600x248.png\";s:5:\"width\";i:600;s:6:\"height\";i:248;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:29:\"WEB-NguyenLieu-05-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:29:\"WEB-NguyenLieu-05-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:29:\"WEB-NguyenLieu-05-600x248.png\";s:5:\"width\";i:600;s:6:\"height\";i:248;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:29:\"WEB-NguyenLieu-05-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(997, 298, '_wp_attached_file', '2020/12/WEB-NguyenLieu-06.png'),
(998, 298, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:792;s:6:\"height\";i:1018;s:4:\"file\";s:29:\"2020/12/WEB-NguyenLieu-06.png\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"WEB-NguyenLieu-06-233x300.png\";s:5:\"width\";i:233;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"WEB-NguyenLieu-06-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"WEB-NguyenLieu-06-768x987.png\";s:5:\"width\";i:768;s:6:\"height\";i:987;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:29:\"WEB-NguyenLieu-06-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:29:\"WEB-NguyenLieu-06-600x771.png\";s:5:\"width\";i:600;s:6:\"height\";i:771;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:29:\"WEB-NguyenLieu-06-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:29:\"WEB-NguyenLieu-06-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:29:\"WEB-NguyenLieu-06-600x771.png\";s:5:\"width\";i:600;s:6:\"height\";i:771;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:29:\"WEB-NguyenLieu-06-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1001, 17, '_wp_page_template', 'page-blank.php'),
(1002, 17, '_thumbnail_id', ''),
(1019, 327, '_order_key', 'wc_order_0SYv8qSy0Bi7h'),
(1020, 327, '_customer_user', '1'),
(1021, 327, '_payment_method', 'cod'),
(1022, 327, '_payment_method_title', 'Trả tiền mặt khi nhận hàng'),
(1023, 327, '_customer_ip_address', '14.236.9.170'),
(1024, 327, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36'),
(1025, 327, '_created_via', 'checkout'),
(1026, 327, '_cart_hash', 'f3936c10b95a80c0e5b749459f770b01'),
(1027, 327, '_billing_first_name', 'hùng'),
(1028, 327, '_billing_last_name', 'thái'),
(1029, 327, '_billing_address_1', 'đà nẵng'),
(1030, 327, '_billing_city', 'đà nẵng'),
(1031, 327, '_billing_country', 'FI'),
(1032, 327, '_billing_email', 'hungthai56@gmail.com'),
(1033, 327, '_billing_phone', '0124578745'),
(1034, 327, '_shipping_first_name', 'hùng'),
(1035, 327, '_shipping_last_name', 'thái'),
(1036, 327, '_shipping_address_1', 'đà nẵng'),
(1037, 327, '_shipping_city', 'đà nẵng'),
(1038, 327, '_shipping_country', 'FI'),
(1039, 327, '_order_currency', 'EUR'),
(1040, 327, '_cart_discount', '0'),
(1041, 327, '_cart_discount_tax', '0'),
(1042, 327, '_order_shipping', '0'),
(1043, 327, '_order_shipping_tax', '0'),
(1044, 327, '_order_tax', '0'),
(1045, 327, '_order_total', '36.0'),
(1046, 327, '_order_version', '4.8.0'),
(1047, 327, '_prices_include_tax', 'no'),
(1048, 327, '_billing_address_index', 'hùng thái  đà nẵng  đà nẵng   FI hungthai56@gmail.com 0124578745'),
(1049, 327, '_shipping_address_index', 'hùng thái  đà nẵng  đà nẵng   FI'),
(1050, 327, 'is_vat_exempt', 'no'),
(1051, 327, '_download_permissions_granted', 'yes'),
(1052, 327, '_recorded_sales', 'yes'),
(1053, 327, '_recorded_coupon_usage_counts', 'yes'),
(1054, 327, '_order_stock_reduced', 'yes'),
(1063, 6, '_edit_lock', '1609123143:1'),
(1068, 341, '_wp_attached_file', '2020/12/anh-02.png'),
(1069, 341, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3419;s:6:\"height\";i:1983;s:4:\"file\";s:18:\"2020/12/anh-02.png\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"anh-02-300x174.png\";s:5:\"width\";i:300;s:6:\"height\";i:174;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"anh-02-1024x594.png\";s:5:\"width\";i:1024;s:6:\"height\";i:594;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"anh-02-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"anh-02-768x445.png\";s:5:\"width\";i:768;s:6:\"height\";i:445;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:19:\"anh-02-1536x891.png\";s:5:\"width\";i:1536;s:6:\"height\";i:891;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:20:\"anh-02-2048x1188.png\";s:5:\"width\";i:2048;s:6:\"height\";i:1188;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:18:\"anh-02-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:18:\"anh-02-600x348.png\";s:5:\"width\";i:600;s:6:\"height\";i:348;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"anh-02-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:18:\"anh-02-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:18:\"anh-02-600x348.png\";s:5:\"width\";i:600;s:6:\"height\";i:348;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"anh-02-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1074, 345, '_wp_attached_file', '2020/12/FIX-scaled.jpg'),
(1075, 345, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1113;s:4:\"file\";s:22:\"2020/12/FIX-scaled.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"FIX-300x130.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:130;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"FIX-1024x445.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:445;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"FIX-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"FIX-768x334.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:334;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:16:\"FIX-1536x668.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:668;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:16:\"FIX-2048x890.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:890;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:15:\"FIX-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:15:\"FIX-600x261.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:261;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:15:\"FIX-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:15:\"FIX-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:15:\"FIX-600x261.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:261;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"FIX-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:7:\"FIX.jpg\";}'),
(1076, 347, '_wp_attached_file', '2020/12/Artboard-1.png'),
(1077, 347, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1260;s:6:\"height\";i:2013;s:4:\"file\";s:22:\"2020/12/Artboard-1.png\";s:5:\"sizes\";a:11:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"Artboard-1-188x300.png\";s:5:\"width\";i:188;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"Artboard-1-641x1024.png\";s:5:\"width\";i:641;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"Artboard-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"Artboard-1-768x1227.png\";s:5:\"width\";i:768;s:6:\"height\";i:1227;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:23:\"Artboard-1-961x1536.png\";s:5:\"width\";i:961;s:6:\"height\";i:1536;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"Artboard-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"Artboard-1-600x959.png\";s:5:\"width\";i:600;s:6:\"height\";i:959;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"Artboard-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"Artboard-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"Artboard-1-600x959.png\";s:5:\"width\";i:600;s:6:\"height\";i:959;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"Artboard-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1078, 348, '_wp_attached_file', '2020/12/Mobile.png'),
(1079, 348, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1263;s:6:\"height\";i:2289;s:4:\"file\";s:18:\"2020/12/Mobile.png\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"Mobile-166x300.png\";s:5:\"width\";i:166;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"Mobile-565x1024.png\";s:5:\"width\";i:565;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"Mobile-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"Mobile-768x1392.png\";s:5:\"width\";i:768;s:6:\"height\";i:1392;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:19:\"Mobile-848x1536.png\";s:5:\"width\";i:848;s:6:\"height\";i:1536;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:20:\"Mobile-1130x2048.png\";s:5:\"width\";i:1130;s:6:\"height\";i:2048;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:18:\"Mobile-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:19:\"Mobile-600x1087.png\";s:5:\"width\";i:600;s:6:\"height\";i:1087;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"Mobile-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:18:\"Mobile-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:19:\"Mobile-600x1087.png\";s:5:\"width\";i:600;s:6:\"height\";i:1087;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"Mobile-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1085, 327, '_edit_lock', '1608559601:1'),
(1086, 327, '_edit_last', '1'),
(1087, 327, '_date_completed', '1608559732'),
(1088, 327, '_date_paid', '1608559732'),
(1089, 327, '_paid_date', '2020-12-21 14:08:52'),
(1090, 327, '_completed_date', '2020-12-21 14:08:52'),
(1102, 362, '_edit_lock', '1608605081:1'),
(1103, 362, '_edit_last', '1'),
(1104, 362, '_footer', 'normal'),
(1105, 362, '_wp_page_template', 'page-blank.php'),
(1106, 362, '_thumbnail_id', ''),
(1107, 364, '_edit_last', '1'),
(1108, 364, '_edit_lock', '1608606324:1'),
(1109, 367, '_wp_attached_file', '2020/12/other-small.jpg'),
(1110, 367, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:23:\"2020/12/other-small.jpg\";s:5:\"sizes\";a:11:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"other-small-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"other-small-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"other-small-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"other-small-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:25:\"other-small-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"other-small-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"other-small-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"other-small-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:23:\"other-small-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"other-small-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"other-small-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1111, 367, '_source_url', 'https://bubotea.euwp-content/plugins/woocommerce/packages/woocommerce-admin/images/onboarding/other-small.jpg'),
(1135, 379, '_wp_attached_file', '2020/12/cropped-LOGO-1.png'),
(1136, 379, '_wp_attachment_context', 'site-icon'),
(1137, 379, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:26:\"2020/12/cropped-LOGO-1.png\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"cropped-LOGO-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"cropped-LOGO-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:26:\"cropped-LOGO-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"cropped-LOGO-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:26:\"cropped-LOGO-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"cropped-LOGO-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:26:\"cropped-LOGO-1-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:26:\"cropped-LOGO-1-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:26:\"cropped-LOGO-1-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:24:\"cropped-LOGO-1-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1153, 390, '_wp_attached_file', '2020/12/4502441-scaled.jpg'),
(1154, 390, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1708;s:4:\"file\";s:26:\"2020/12/4502441-scaled.jpg\";s:5:\"sizes\";a:1:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"4502441-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:11:\"4502441.jpg\";}'),
(1155, 391, '_wp_attached_file', '2020/12/mockup-logo-Recovered-scaled.jpg'),
(1156, 391, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1706;s:4:\"file\";s:40:\"2020/12/mockup-logo-Recovered-scaled.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"mockup-logo-Recovered-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:34:\"mockup-logo-Recovered-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"mockup-logo-Recovered-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:33:\"mockup-logo-Recovered-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:25:\"mockup-logo-Recovered.jpg\";}'),
(1157, 392, '_wp_attached_file', '2020/12/4502441-1.jpg'),
(1158, 393, '_wp_attached_file', '2020/12/mockup-logo-Recovered-1-scaled.jpg'),
(1159, 393, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1706;s:4:\"file\";s:42:\"2020/12/mockup-logo-Recovered-1-scaled.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"mockup-logo-Recovered-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"mockup-logo-Recovered-1-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"mockup-logo-Recovered-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"mockup-logo-Recovered-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:27:\"mockup-logo-Recovered-1.jpg\";}'),
(1162, 400, '_order_key', 'wc_order_pr1Sv4vUbjZBq'),
(1163, 400, '_customer_user', '1'),
(1164, 400, '_payment_method', 'cod'),
(1165, 400, '_payment_method_title', 'Trả tiền mặt khi nhận hàng'),
(1166, 400, '_customer_ip_address', '116.105.79.232'),
(1167, 400, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36'),
(1168, 400, '_created_via', 'checkout'),
(1169, 400, '_cart_hash', 'cfb884ab687324c2ae18f65560c80b41'),
(1170, 400, '_billing_first_name', 'hùng'),
(1171, 400, '_billing_last_name', 'thái'),
(1172, 400, '_billing_address_1', 'naritaweg 14, 1043 BZ Amsterdam'),
(1173, 400, '_billing_city', 'naritaweg'),
(1174, 400, '_billing_email', 'hungthai56@gmail.com'),
(1175, 400, '_billing_phone', '0124578745'),
(1176, 400, '_shipping_first_name', 'hùng'),
(1177, 400, '_shipping_last_name', 'thái'),
(1178, 400, '_shipping_address_1', 'Đà Nẵng'),
(1179, 400, '_shipping_city', 'Đà Nẵng'),
(1180, 400, '_shipping_postcode', '1043 BZ'),
(1181, 400, '_shipping_country', 'NL'),
(1182, 400, '_order_currency', 'EUR'),
(1183, 400, '_cart_discount', '0'),
(1184, 400, '_cart_discount_tax', '0'),
(1185, 400, '_order_shipping', '0.0'),
(1186, 400, '_order_shipping_tax', '0'),
(1187, 400, '_order_tax', '0'),
(1188, 400, '_order_total', '10.5'),
(1189, 400, '_order_version', '4.8.0'),
(1190, 400, '_prices_include_tax', 'no'),
(1191, 400, '_billing_address_index', 'hùng thái  naritaweg 14, 1043 BZ Amsterdam  naritaweg    hungthai56@gmail.com 0124578745'),
(1192, 400, '_shipping_address_index', 'hùng thái  Đà Nẵng  Đà Nẵng  1043 BZ NL'),
(1193, 400, 'is_vat_exempt', 'no'),
(1194, 400, '_download_permissions_granted', 'yes'),
(1195, 400, '_recorded_sales', 'yes'),
(1196, 400, '_recorded_coupon_usage_counts', 'yes'),
(1197, 400, '_order_stock_reduced', 'yes'),
(1198, 401, '_order_key', 'wc_order_MO1AiaR7gsUkc'),
(1199, 401, '_customer_user', '1'),
(1200, 401, '_payment_method', 'cod'),
(1201, 401, '_payment_method_title', 'Trả tiền mặt khi nhận hàng'),
(1202, 401, '_customer_ip_address', '116.105.79.232'),
(1203, 401, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36'),
(1204, 401, '_created_via', 'checkout'),
(1205, 401, '_cart_hash', '5fce99d1e2e9ac2a2689d4dda931e8a8'),
(1206, 401, '_billing_first_name', 'hùng'),
(1207, 401, '_billing_last_name', 'thái'),
(1208, 401, '_billing_address_1', 'naritaweg 14, 1043 BZ Amsterdam'),
(1209, 401, '_billing_city', 'naritaweg'),
(1210, 401, '_billing_email', 'hungthai56@gmail.com'),
(1211, 401, '_billing_phone', '0124578745'),
(1212, 401, '_shipping_first_name', 'hùng'),
(1213, 401, '_shipping_last_name', 'thái'),
(1214, 401, '_shipping_address_1', 'đà nẵng'),
(1215, 401, '_shipping_city', 'Đà Nẵng'),
(1216, 401, '_shipping_postcode', '1043 BZ'),
(1217, 401, '_shipping_country', 'NL'),
(1218, 401, '_order_currency', 'EUR'),
(1219, 401, '_cart_discount', '0'),
(1220, 401, '_cart_discount_tax', '0'),
(1221, 401, '_order_shipping', '0'),
(1222, 401, '_order_shipping_tax', '0'),
(1223, 401, '_order_tax', '0'),
(1224, 401, '_order_total', '35.0'),
(1225, 401, '_order_version', '4.8.0'),
(1226, 401, '_prices_include_tax', 'no'),
(1227, 401, '_billing_address_index', 'hùng thái  naritaweg 14, 1043 BZ Amsterdam  naritaweg    hungthai56@gmail.com 0124578745'),
(1228, 401, '_shipping_address_index', 'hùng thái  đà nẵng  Đà Nẵng  1043 BZ NL'),
(1229, 401, 'is_vat_exempt', 'no'),
(1230, 401, '_download_permissions_granted', 'yes'),
(1231, 401, '_recorded_sales', 'yes'),
(1232, 401, '_recorded_coupon_usage_counts', 'yes'),
(1233, 401, '_order_stock_reduced', 'yes'),
(1234, 401, '_edit_lock', '1608632898:1'),
(1235, 401, '_edit_last', '1'),
(1236, 401, '_date_completed', '1608633022'),
(1237, 401, '_date_paid', '1608633022'),
(1238, 401, '_paid_date', '2020-12-22 10:30:22'),
(1239, 401, '_completed_date', '2020-12-22 10:30:22'),
(1240, 402, '_order_key', 'wc_order_3YlecTYx8AbqW'),
(1241, 402, '_customer_user', '1'),
(1242, 402, '_payment_method', 'cod'),
(1243, 402, '_payment_method_title', 'Trả tiền mặt khi nhận hàng'),
(1244, 402, '_customer_ip_address', '116.105.79.232'),
(1245, 402, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36'),
(1246, 402, '_created_via', 'checkout'),
(1247, 402, '_cart_hash', '5fce99d1e2e9ac2a2689d4dda931e8a8'),
(1248, 402, '_billing_first_name', 'hùng'),
(1249, 402, '_billing_last_name', 'thái'),
(1250, 402, '_billing_address_1', 'naritaweg 14, 1043 BZ Amsterdam'),
(1251, 402, '_billing_city', 'naritaweg'),
(1252, 402, '_billing_email', 'hungthai56@gmail.com'),
(1253, 402, '_billing_phone', '0124578745'),
(1254, 402, '_shipping_first_name', 'hùng'),
(1255, 402, '_shipping_last_name', 'thái'),
(1256, 402, '_shipping_address_1', 'đà nẵng'),
(1257, 402, '_shipping_city', 'Đà Nẵng'),
(1258, 402, '_shipping_postcode', '1043 BZ'),
(1259, 402, '_shipping_country', 'NL'),
(1260, 402, '_order_currency', 'EUR'),
(1261, 402, '_cart_discount', '0'),
(1262, 402, '_cart_discount_tax', '0'),
(1263, 402, '_order_shipping', '0.0'),
(1264, 402, '_order_shipping_tax', '0'),
(1265, 402, '_order_tax', '0'),
(1266, 402, '_order_total', '35.0'),
(1267, 402, '_order_version', '4.8.0'),
(1268, 402, '_prices_include_tax', 'no'),
(1269, 402, '_billing_address_index', 'hùng thái  naritaweg 14, 1043 BZ Amsterdam  naritaweg    hungthai56@gmail.com 0124578745'),
(1270, 402, '_shipping_address_index', 'hùng thái  đà nẵng  Đà Nẵng  1043 BZ NL'),
(1271, 402, 'is_vat_exempt', 'no'),
(1272, 402, '_download_permissions_granted', 'yes'),
(1273, 402, '_recorded_sales', 'yes'),
(1274, 402, '_recorded_coupon_usage_counts', 'yes'),
(1275, 402, '_order_stock_reduced', 'yes'),
(1276, 403, '_order_key', 'wc_order_ryLuFZqfEmdrz'),
(1277, 403, '_customer_user', '1'),
(1278, 403, '_payment_method', 'cod'),
(1279, 403, '_payment_method_title', 'Trả tiền mặt khi nhận hàng'),
(1280, 403, '_customer_ip_address', '116.105.79.232'),
(1281, 403, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36'),
(1282, 403, '_created_via', 'checkout'),
(1283, 403, '_cart_hash', '5fce99d1e2e9ac2a2689d4dda931e8a8'),
(1284, 403, '_billing_first_name', 'hùng'),
(1285, 403, '_billing_last_name', 'thái'),
(1286, 403, '_billing_address_1', 'naritaweg 14, 1043 BZ Amsterdam'),
(1287, 403, '_billing_city', 'naritaweg'),
(1288, 403, '_billing_email', 'hungthai56@gmail.com'),
(1289, 403, '_billing_phone', '0124578745'),
(1290, 403, '_shipping_first_name', 'hùng'),
(1291, 403, '_shipping_last_name', 'thái'),
(1292, 403, '_shipping_address_1', 'đà nẵng'),
(1293, 403, '_shipping_city', 'Đà Nẵng'),
(1294, 403, '_shipping_postcode', '1043 BZ'),
(1295, 403, '_shipping_country', 'NL'),
(1296, 403, '_order_currency', 'EUR'),
(1297, 403, '_cart_discount', '0'),
(1298, 403, '_cart_discount_tax', '0'),
(1299, 403, '_order_shipping', '0.0'),
(1300, 403, '_order_shipping_tax', '0'),
(1301, 403, '_order_tax', '0'),
(1302, 403, '_order_total', '35.0'),
(1303, 403, '_order_version', '4.8.0'),
(1304, 403, '_prices_include_tax', 'no'),
(1305, 403, '_billing_address_index', 'hùng thái  naritaweg 14, 1043 BZ Amsterdam  naritaweg    hungthai56@gmail.com 0124578745'),
(1306, 403, '_shipping_address_index', 'hùng thái  đà nẵng  Đà Nẵng  1043 BZ NL'),
(1307, 403, 'is_vat_exempt', 'no'),
(1308, 403, '_download_permissions_granted', 'yes'),
(1309, 403, '_recorded_sales', 'yes'),
(1310, 403, '_recorded_coupon_usage_counts', 'yes'),
(1311, 403, '_order_stock_reduced', 'yes'),
(1337, 417, '_edit_lock', '1609123167:1'),
(1338, 417, '_edit_last', '1'),
(1339, 417, '_footer', 'normal'),
(1364, 88, '_wc_rating_count', 'a:1:{i:5;i:1;}'),
(1365, 443, '_wp_attached_file', '2020/12/khoaimon1.png'),
(1366, 443, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2350;s:6:\"height\";i:2602;s:4:\"file\";s:21:\"2020/12/khoaimon1.png\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"khoaimon1-271x300.png\";s:5:\"width\";i:271;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"khoaimon1-925x1024.png\";s:5:\"width\";i:925;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"khoaimon1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"khoaimon1-768x850.png\";s:5:\"width\";i:768;s:6:\"height\";i:850;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:23:\"khoaimon1-1387x1536.png\";s:5:\"width\";i:1387;s:6:\"height\";i:1536;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:23:\"khoaimon1-1850x2048.png\";s:5:\"width\";i:1850;s:6:\"height\";i:2048;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"khoaimon1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"khoaimon1-600x664.png\";s:5:\"width\";i:600;s:6:\"height\";i:664;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"khoaimon1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"khoaimon1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"khoaimon1-600x664.png\";s:5:\"width\";i:600;s:6:\"height\";i:664;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"khoaimon1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1367, 444, '_wp_attached_file', '2020/12/peach1.png'),
(1368, 444, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2350;s:6:\"height\";i:2602;s:4:\"file\";s:18:\"2020/12/peach1.png\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"peach1-271x300.png\";s:5:\"width\";i:271;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"peach1-925x1024.png\";s:5:\"width\";i:925;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"peach1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"peach1-768x850.png\";s:5:\"width\";i:768;s:6:\"height\";i:850;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:20:\"peach1-1387x1536.png\";s:5:\"width\";i:1387;s:6:\"height\";i:1536;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:20:\"peach1-1850x2048.png\";s:5:\"width\";i:1850;s:6:\"height\";i:2048;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:18:\"peach1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:18:\"peach1-600x664.png\";s:5:\"width\";i:600;s:6:\"height\";i:664;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"peach1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:18:\"peach1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:18:\"peach1-600x664.png\";s:5:\"width\";i:600;s:6:\"height\";i:664;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"peach1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1369, 446, '_wp_attached_file', '2020/12/Thaido1.png'),
(1370, 446, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2350;s:6:\"height\";i:2602;s:4:\"file\";s:19:\"2020/12/Thaido1.png\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"Thaido1-271x300.png\";s:5:\"width\";i:271;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"Thaido1-925x1024.png\";s:5:\"width\";i:925;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"Thaido1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"Thaido1-768x850.png\";s:5:\"width\";i:768;s:6:\"height\";i:850;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:21:\"Thaido1-1387x1536.png\";s:5:\"width\";i:1387;s:6:\"height\";i:1536;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:21:\"Thaido1-1850x2048.png\";s:5:\"width\";i:1850;s:6:\"height\";i:2048;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"Thaido1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:19:\"Thaido1-600x664.png\";s:5:\"width\";i:600;s:6:\"height\";i:664;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"Thaido1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"Thaido1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:19:\"Thaido1-600x664.png\";s:5:\"width\";i:600;s:6:\"height\";i:664;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"Thaido1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1371, 447, '_wp_attached_file', '2020/12/thaixanh1.png'),
(1372, 447, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2350;s:6:\"height\";i:2602;s:4:\"file\";s:21:\"2020/12/thaixanh1.png\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"thaixanh1-271x300.png\";s:5:\"width\";i:271;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"thaixanh1-925x1024.png\";s:5:\"width\";i:925;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"thaixanh1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"thaixanh1-768x850.png\";s:5:\"width\";i:768;s:6:\"height\";i:850;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:23:\"thaixanh1-1387x1536.png\";s:5:\"width\";i:1387;s:6:\"height\";i:1536;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:23:\"thaixanh1-1850x2048.png\";s:5:\"width\";i:1850;s:6:\"height\";i:2048;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"thaixanh1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"thaixanh1-600x664.png\";s:5:\"width\";i:600;s:6:\"height\";i:664;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"thaixanh1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"thaixanh1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"thaixanh1-600x664.png\";s:5:\"width\";i:600;s:6:\"height\";i:664;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"thaixanh1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1373, 448, '_wp_attached_file', '2020/12/tropical1.png'),
(1374, 448, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2350;s:6:\"height\";i:2602;s:4:\"file\";s:21:\"2020/12/tropical1.png\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"tropical1-271x300.png\";s:5:\"width\";i:271;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"tropical1-925x1024.png\";s:5:\"width\";i:925;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"tropical1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"tropical1-768x850.png\";s:5:\"width\";i:768;s:6:\"height\";i:850;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:23:\"tropical1-1387x1536.png\";s:5:\"width\";i:1387;s:6:\"height\";i:1536;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:23:\"tropical1-1850x2048.png\";s:5:\"width\";i:1850;s:6:\"height\";i:2048;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"tropical1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"tropical1-600x664.png\";s:5:\"width\";i:600;s:6:\"height\";i:664;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"tropical1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"tropical1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"tropical1-600x664.png\";s:5:\"width\";i:600;s:6:\"height\";i:664;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"tropical1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1375, 449, '_wp_attached_file', '2020/12/Truyenthong1.png'),
(1376, 449, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2350;s:6:\"height\";i:2602;s:4:\"file\";s:24:\"2020/12/Truyenthong1.png\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"Truyenthong1-271x300.png\";s:5:\"width\";i:271;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"Truyenthong1-925x1024.png\";s:5:\"width\";i:925;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"Truyenthong1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"Truyenthong1-768x850.png\";s:5:\"width\";i:768;s:6:\"height\";i:850;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:26:\"Truyenthong1-1387x1536.png\";s:5:\"width\";i:1387;s:6:\"height\";i:1536;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:26:\"Truyenthong1-1850x2048.png\";s:5:\"width\";i:1850;s:6:\"height\";i:2048;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"Truyenthong1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:24:\"Truyenthong1-600x664.png\";s:5:\"width\";i:600;s:6:\"height\";i:664;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"Truyenthong1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:24:\"Truyenthong1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:24:\"Truyenthong1-600x664.png\";s:5:\"width\";i:600;s:6:\"height\";i:664;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"Truyenthong1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1377, 85, '_thumbnail_id', '448'),
(1378, 81, '_thumbnail_id', '447'),
(1379, 77, '_thumbnail_id', '446'),
(1380, 72, '_thumbnail_id', '444'),
(1381, 452, '_wp_attached_file', '2020/12/4606079-scaled.jpg');
INSERT INTO `3kuF9kxQ_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1382, 452, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:2560;s:4:\"file\";s:26:\"2020/12/4606079-scaled.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"4606079-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"4606079-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"4606079-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"4606079-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:21:\"4606079-1536x1536.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:21:\"4606079-2048x2048.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"4606079-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:19:\"4606079-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"4606079-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"4606079-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:19:\"4606079-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"4606079-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"4.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:20:\"Canon EOS 5D Mark II\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1559655592\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"320\";s:13:\"shutter_speed\";s:7:\"0.00625\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:11:\"4606079.jpg\";}'),
(1383, 130, '_edit_last', '1'),
(1384, 454, '_wp_attached_file', '2020/12/4735478-scaled.jpg'),
(1385, 454, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:2560;s:4:\"file\";s:26:\"2020/12/4735478-scaled.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"4735478-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"4735478-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"4735478-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"4735478-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:21:\"4735478-1536x1536.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:21:\"4735478-2048x2048.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"4735478-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:19:\"4735478-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"4735478-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"4735478-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:19:\"4735478-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"4735478-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.8\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:20:\"Canon EOS 5D Mark II\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1559655973\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"400\";s:13:\"shutter_speed\";s:5:\"0.004\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:11:\"4735478.jpg\";}'),
(1386, 456, '_wp_attached_file', '2020/12/17902348-scaled.jpg'),
(1387, 456, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:2560;s:4:\"file\";s:27:\"2020/12/17902348-scaled.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"17902348-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"17902348-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"17902348-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"17902348-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"17902348-1536x1536.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:22:\"17902348-2048x2048.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"17902348-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"17902348-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"17902348-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"17902348-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"17902348-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"17902348-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"7.1\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:12:\"Canon EOS 6D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1599144895\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"35\";s:3:\"iso\";s:3:\"160\";s:13:\"shutter_speed\";s:7:\"0.00625\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:12:\"17902348.jpg\";}'),
(1388, 458, '_wp_attached_file', '2020/12/PHTENK1-scaled.jpg'),
(1389, 458, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:2560;s:4:\"file\";s:26:\"2020/12/PHTENK1-scaled.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"PHTENK1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"PHTENK1-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"PHTENK1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"PHTENK1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:21:\"PHTENK1-1536x1536.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:21:\"PHTENK1-2048x2048.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"PHTENK1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:19:\"PHTENK1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"PHTENK1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"PHTENK1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:19:\"PHTENK1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"PHTENK1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:2:\"11\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 80D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1530792943\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"45\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:3:\"0.6\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:11:\"PHTENK1.jpg\";}'),
(1390, 184, '_edit_last', '1'),
(1391, 132, '_edit_last', '1'),
(1392, 127, '_edit_last', '1'),
(1396, 463, '_wp_attached_file', '2020/12/4686769-scaled.jpg'),
(1397, 463, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1700;s:4:\"file\";s:26:\"2020/12/4686769-scaled.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"4686769-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"4686769-1024x680.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:680;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"4686769-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"4686769-768x510.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:21:\"4686769-1536x1020.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1020;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:21:\"4686769-2048x1360.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1360;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"4686769-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:19:\"4686769-600x398.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:398;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"4686769-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"4686769-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:19:\"4686769-600x398.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:398;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"4686769-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:11:\"4686769.jpg\";}'),
(1398, 464, '_wp_attached_file', '2020/12/4686769.png'),
(1399, 464, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2620;s:6:\"height\";i:1740;s:4:\"file\";s:19:\"2020/12/4686769.png\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"4686769-300x199.png\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"4686769-1024x680.png\";s:5:\"width\";i:1024;s:6:\"height\";i:680;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"4686769-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"4686769-768x510.png\";s:5:\"width\";i:768;s:6:\"height\";i:510;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:21:\"4686769-1536x1020.png\";s:5:\"width\";i:1536;s:6:\"height\";i:1020;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:21:\"4686769-2048x1360.png\";s:5:\"width\";i:2048;s:6:\"height\";i:1360;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"4686769-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:19:\"4686769-600x398.png\";s:5:\"width\";i:600;s:6:\"height\";i:398;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"4686769-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"4686769-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:19:\"4686769-600x398.png\";s:5:\"width\";i:600;s:6:\"height\";i:398;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"4686769-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1400, 466, '_wp_attached_file', '2020/12/3326978-scaled.jpg'),
(1401, 466, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1810;s:6:\"height\";i:2560;s:4:\"file\";s:26:\"2020/12/3326978-scaled.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"3326978-212x300.jpg\";s:5:\"width\";i:212;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"3326978-724x1024.jpg\";s:5:\"width\";i:724;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"3326978-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"3326978-768x1086.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1086;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:21:\"3326978-1086x1536.jpg\";s:5:\"width\";i:1086;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:21:\"3326978-1448x2048.jpg\";s:5:\"width\";i:1448;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"3326978-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:19:\"3326978-600x849.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:849;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"3326978-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"3326978-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:19:\"3326978-600x849.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:849;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"3326978-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:11:\"3326978.jpg\";}'),
(1414, 477, '_order_key', 'wc_order_BBcP1srwZwKN6'),
(1415, 477, '_customer_user', '1'),
(1416, 477, '_payment_method', 'cod'),
(1417, 477, '_payment_method_title', 'Trả tiền mặt khi nhận hàng hoặc thanh toán qua paypal và Tài khoản ngân hàng'),
(1418, 477, '_customer_ip_address', '116.98.59.120'),
(1419, 477, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36'),
(1420, 477, '_created_via', 'checkout'),
(1421, 477, '_cart_hash', '37e7430e61e9be4729b99cdf5efe0f61'),
(1422, 477, '_billing_first_name', 'hùng'),
(1423, 477, '_billing_last_name', 'thái'),
(1424, 477, '_billing_address_1', 'naritaweg 14, 1043 BZ Amsterdam'),
(1425, 477, '_billing_city', 'naritaweg'),
(1426, 477, '_billing_email', 'hungthai56@gmail.com'),
(1427, 477, '_billing_phone', '0124578745'),
(1428, 477, '_shipping_first_name', 'hùng'),
(1429, 477, '_shipping_last_name', 'thái'),
(1430, 477, '_shipping_address_1', 'naritaweg 14, 1043 BZ Amsterdam'),
(1431, 477, '_shipping_city', 'naritaweg'),
(1432, 477, '_shipping_postcode', '1043 BZ'),
(1433, 477, '_shipping_country', 'NL'),
(1434, 477, '_order_currency', 'EUR'),
(1435, 477, '_cart_discount', '0'),
(1436, 477, '_cart_discount_tax', '0'),
(1437, 477, '_order_shipping', '5.0'),
(1438, 477, '_order_shipping_tax', '0'),
(1439, 477, '_order_tax', '0'),
(1440, 477, '_order_total', '23.5'),
(1441, 477, '_order_version', '4.8.0'),
(1442, 477, '_prices_include_tax', 'no'),
(1443, 477, '_billing_address_index', 'hùng thái  naritaweg 14, 1043 BZ Amsterdam  naritaweg    hungthai56@gmail.com 0124578745'),
(1444, 477, '_shipping_address_index', 'hùng thái  naritaweg 14, 1043 BZ Amsterdam  naritaweg  1043 BZ NL'),
(1445, 477, 'is_vat_exempt', 'no'),
(1446, 477, '_download_permissions_granted', 'yes'),
(1447, 477, '_recorded_sales', 'yes'),
(1448, 477, '_recorded_coupon_usage_counts', 'yes'),
(1449, 477, '_order_stock_reduced', 'yes'),
(1461, 485, '_wp_attached_file', '2021/02/LOGO.png'),
(1462, 485, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:349;s:6:\"height\";i:486;s:4:\"file\";s:16:\"2021/02/LOGO.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"LOGO-215x300.png\";s:5:\"width\";i:215;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"LOGO-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:16:\"LOGO-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:16:\"LOGO-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:16:\"LOGO-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:16:\"LOGO-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1488, 88, '_default_attributes', 'a:1:{s:13:\"pa_kich-thuoc\";s:5:\"250ml\";}'),
(1493, 88, '_price', '3.5'),
(1494, 88, '_price', '4.5'),
(1502, 515, '_wp_attached_file', '2021/03/bannertrasua-1.jpg'),
(1506, 521, '_wp_trash_meta_status', 'publish'),
(1507, 521, '_wp_trash_meta_time', '1616722870'),
(1508, 522, '_wp_trash_meta_status', 'publish'),
(1509, 522, '_wp_trash_meta_time', '1616722935'),
(1510, 524, '_edit_lock', '1617092476:1'),
(1511, 524, '_wp_trash_meta_status', 'publish'),
(1512, 524, '_wp_trash_meta_time', '1617092486'),
(1513, 527, '_wp_trash_meta_status', 'publish'),
(1514, 527, '_wp_trash_meta_time', '1617174155'),
(1515, 531, '_edit_lock', '1618220055:1'),
(1516, 531, '_edit_last', '1'),
(1519, 535, '_wp_trash_meta_status', 'publish'),
(1520, 535, '_wp_trash_meta_time', '1618220954'),
(1521, 536, '_wp_trash_meta_status', 'publish'),
(1522, 536, '_wp_trash_meta_time', '1618220969'),
(1523, 537, '_edit_lock', '1618223223:1'),
(1524, 537, '_edit_last', '1'),
(1525, 537, '_footer', 'normal'),
(1526, 537, '_wp_page_template', 'default'),
(1527, 539, '_wp_trash_meta_status', 'publish'),
(1528, 539, '_wp_trash_meta_time', '1618223059'),
(1529, 540, '_edit_lock', '1618223201:1'),
(1530, 540, '_wp_trash_meta_status', 'publish'),
(1531, 540, '_wp_trash_meta_time', '1618223228');

-- --------------------------------------------------------

--
-- Table structure for table `3kuF9kxQ_posts`
--

CREATE TABLE `3kuF9kxQ_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `3kuF9kxQ_posts`
--

INSERT INTO `3kuF9kxQ_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(6, 1, '2020-12-17 07:35:51', '2020-12-17 07:35:51', '[section label=\"DESKTOP\" padding=\"0px\" visibility=\"hide-for-small\"]\n\n[ux_slider]\n\n[ux_banner height=\"700px\" bg=\"254\" bg_size=\"original\" bg_pos=\"50% 31%\"]\n\n[text_box width__sm=\"60\" position_x=\"50\" position_y=\"50\"]\n\n\n[/text_box]\n\n[/ux_banner]\n[ux_banner height=\"700px\" bg=\"345\" bg_size=\"original\" bg_pos=\"50% 33%\"]\n\n[text_box width__sm=\"60\" position_x=\"50\" position_y=\"50\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/ux_slider]\n\n[/section]\n[section label=\"MOBILE\" padding=\"0px\" visibility=\"show-for-small\"]\n\n[ux_slider]\n\n[ux_banner height=\"100%\" height__sm=\"100%\" bg=\"347\" bg_size=\"original\"]\n\n[text_box width__sm=\"60\" position_x=\"50\" position_y=\"50\"]\n\n\n[/text_box]\n\n[/ux_banner]\n[ux_banner height=\"100%\" bg=\"348\" bg_size=\"original\"]\n\n[text_box width__sm=\"60\" position_x=\"50\" position_y=\"50\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/ux_slider]\n\n[/section]\n[section bg=\"100\" bg_overlay=\"rgba(255, 255, 255, 0.483)\"]\n\n[title style=\"center\" text=\"menu bubo tea\" size=\"200\" link_text=\"Còn nữa\" link=\"/san-pham/\" class=\"title-butotea\"]\n\n[ux_products type=\"row\" columns=\"3\" show_cat=\"0\" equalize_box=\"true\" class=\"product-design\"]\n\n\n[/section]\n[section bg=\"140\" bg_overlay=\"rgba(255, 255, 255, 0.488)\"]\n\n[title style=\"center\" text=\"BLOG\" size=\"200\" link_text=\"Xem thêm\" link=\"/tin-tuc/\" class=\"title-butotea\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[ux_image id=\"390\"]\n\n\n[/col]\n\n[/row]\n[title style=\"center\" text=\"giá trị cốt lõi\" tag_name=\"h1\" color=\"rgb(163, 184, 162)\"]\n\n[blog_posts style=\"normal\" columns__md=\"1\" ids=\"132,184,127,130\" show_date=\"false\" excerpt_length=\"9\" image_height=\"56.25%\" class=\"bubotea-blog\"]\n\n\n[/section]\n[section bg=\"158\"]\n\n[title style=\"center\" text=\"cửa hàng\" size=\"200\" class=\"title-butotea\"]\n\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"391\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\" class=\"col-right\"]\n\n[ux_text text_align=\"center\" text_color=\"rgb(255, 255, 255)\" class=\"text-top\"]\n\n<h1>BUBO TEA</h1>\n[/ux_text]\n[ux_text font_size=\"0.75\" text_color=\"rgb(255, 255, 255)\" class=\"font-text-change\"]\n\n<p style=\"font-size: 20px\">Bubo Tea là thương hiệu trà sữa mang đến thức uống ngọt ngào hương vị Việt. Việc tự mình chuẩn bị nguyên liệu thiên nhiên đạt chuẩn chất lượng chính là ưu tiên hàng đầu của Bubo tea. Chúng tôi tự hào cung cấp những thức uống ngon, phong phú và an toàn cho sức khỏe.\nMỗi sản phẩm được tạo ra là tâm huyết chúng tôi muốn gửi đến nơi bạn.</p>\n[/ux_text]\n\n[/col]\n\n[/row]\n\n[/section]', 'Trang chu', '', 'publish', 'closed', 'closed', '', 'trang-chu', '', '', '2021-04-12 06:44:01', '2021-04-12 06:44:01', '', 0, 'http://localhost/trasua/?page_id=6', 0, 'page', '', 0),
(9, 1, '2020-12-17 08:12:51', '2020-12-17 08:12:51', '', 'logo bubotea-knen-01', '', 'inherit', 'open', 'closed', '', 'logo-bubotea-knen-01', '', '', '2020-12-17 08:12:51', '2020-12-17 08:12:51', '', 0, 'http://localhost/trasua/wp-content/uploads/2020/12/logo-bubotea-knen-01.png', 0, 'attachment', 'image/png', 0),
(15, 1, '2020-12-17 08:15:45', '2020-12-17 08:15:45', '[section padding=\"0px\"]\n\n[ux_banner height=\"700px\" bg=\"515\" bg_size=\"original\" bg_pos=\"40% 71%\"]\n\n[text_box width__sm=\"60\" position_x=\"50\" position_y=\"50\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/section]\n[section bg=\"140\" bg_color=\"rgb(255, 255, 251)\"]\n\n[gap visibility=\"hide-for-small\"]\n\n[row]\n\n[col span=\"6\" span__sm=\"12\" animate=\"fadeInLeft\"]\n\n[gap]\n\n[ux_text font_size=\"2.5\" line_height=\"1\" text_align=\"center\" text_color=\"rgb(163, 184, 162)\" class=\"text-left-none\"]\n\n<p>Câu chuyện về</p>\n[/ux_text]\n[ux_text font_size=\"4\" line_height=\"1\" text_align=\"right\" class=\"title-bubotea\"]\n\n<p>BUBO TEA</p>\n[/ux_text]\n[ux_text font_size=\"1.5\" text_color=\"rgb(24, 68, 43)\" class=\"font-text-change\"]\n\n<p>Bubo Tea là thương hiệu trà sữa mang đến thức uống ngọt ngào đậm vị Việt Nam. </p>\n[/ux_text]\n[ux_image id=\"466\" image_size=\"large\" depth=\"4\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"208\" image_size=\"medium\" depth=\"4\"]\n\n[ux_text font_size=\"1.5\" text_color=\"rgb(24, 68, 43)\" class=\"font-text-change\"]\n\n<p>Việc tự mình chuẩn bị nguyên liệu thiên nhiên đạt chuẩn chất lượng chính là ưu tiên hàng đầu của Bubo tea. Chúng tôi tự hào cung cấp những thức uống ngon, phong phú và an toàn cho sức khỏe. </p>\n[/ux_text]\n\n[/col]\n\n[/row]\n\n[/section]\n[ux_image id=\"217\" image_size=\"original\"]\n\n[section bg_color=\"rgb(255, 255, 251)\" padding=\"0px\"]\n\n[gap height=\"40px\"]\n\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"220\" depth=\"4\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"228\" animate=\"fadeInRight\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section bg=\"100\" bg_overlay=\"rgba(251, 251, 251, 0.436)\"]\n\n[ux_text font_size=\"1.5\" text_align=\"center\" text_color=\"rgb(163, 184, 162)\"]\n\n<h1>GIÁ TRỊ CỐT LÕI</h1>\n[/ux_text]\n[row v_align=\"middle\"]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"458\" depth=\"4\"]\n\n\n[/col]\n[col span=\"8\" span__sm=\"12\" animate=\"fadeInRight\"]\n\n[ux_text font_size=\"1.2\" text_align=\"left\" text_color=\"rgb(24, 68, 43)\" class=\"text-image font-text-change\"]\n\n<h1 style=\"font-family: Fontedit3\">Chân thành</h1>\n<p>Chúng tôi tin rằng, khi làm việc với tất cả sự chân thành và tôn trọng đều sẽ mang lại những điều tuyệt vời nhất đến với khách hàng.</p>\n[/ux_text]\n\n[/col]\n\n[/row]\n[row v_align=\"middle\"]\n\n[col span=\"8\" span__sm=\"12\" animate=\"fadeInLeft\"]\n\n[ux_text font_size=\"1.2\" text_align=\"left\" text_color=\"rgb(24, 68, 43)\" class=\"text-image font-text-change\"]\n\n<h1 style=\"font-family: Fontedit3\">Quan tâm</h1>\n<p>Bubo tea luôn quan tâm đến từng suy nghĩ và cảm nhận của khách hàng, nhân viên và cộng đồng. Vì khi có bạn, chúng tôi như được tiếp thêm sức mạnh để cùng lan tỏa những giá trị tốt đẹp..</p>\n[/ux_text]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"454\" depth=\"4\"]\n\n\n[/col]\n\n[/row]\n[row v_align=\"middle\"]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"452\" depth=\"4\"]\n\n\n[/col]\n[col span=\"8\" span__sm=\"12\" animate=\"fadeInRight\"]\n\n[ux_text font_size=\"1.2\" text_align=\"left\" text_color=\"rgb(24, 68, 43)\" class=\"text-image font-text-change\"]\n\n<h1 style=\"font-family: Fontedit3\">Sáng tạo</h1>\n<p>Chúng tôi luôn không ngừng nổ lực đem lại những sản phẩm mang dấu ấn khác biệt và tuyệt vời nhất cho khách hàng.</p>\n[/ux_text]\n\n[/col]\n\n[/row]\n[row v_align=\"middle\"]\n\n[col span=\"8\" span__sm=\"12\" animate=\"fadeInLeft\"]\n\n[ux_text font_size=\"1.2\" text_align=\"left\" text_color=\"rgb(24, 68, 43)\" class=\"text-image font-text-change\"]\n\n<h1 style=\"font-family: Fontedit3\">Dũng cảm</h1>\n<p>Nổ lực mang thương hiệu trà Việt Nam ra thế giới là mục tiêu hàng đầu của Bubo tea.</p>\n[/ux_text]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"456\" image_size=\"original\" depth=\"4\"]\n\n\n[/col]\n\n[/row]\n\n[/section]', 'CÂU CHUYỆN THƯƠNG HIỆU', '', 'publish', 'closed', 'closed', '', 'cau-chuyen-thuong-hieu', '', '', '2021-03-22 07:20:59', '2021-03-22 07:20:59', '', 0, 'http://localhost/trasua/?page_id=15', 0, 'page', '', 0),
(17, 1, '2020-12-17 08:16:37', '2020-12-17 08:16:37', '[ux_banner height=\"500px\" bg=\"294\"]\n\n[text_box width__sm=\"60\" position_x=\"50\" position_y=\"50\"]\n\n\n[/text_box]\n\n[/ux_banner]\n[row]\n\n[col span=\"6\" span__sm=\"12\" animate=\"fadeInLeft\"]\n\n[ux_text font_size=\"1.5\" text_align=\"left\"]\n\n<h1 style=\"font-family: Fontedit3;margin:0\">Câu chuyện về</h1>\n[/ux_text]\n[ux_text font_size=\"2.5\" text_align=\"center\"]\n\n<h1 style=\"font-family: Fontedit3;margin:0\">TRÀ</h1>\n[/ux_text]\n[ux_text font_size=\"1.2\" class=\"text-green font-text-change\"]\n\n<p>Việt Nam - quê hương của những vùng trà thiên nhiên và cây trà dường như đã trở thành hình ảnh rất đỗi thân quen đối văn hoá & đời sống canh tác của người dân miền núi nơi đây. Việt Nam đã và đang luôn chú trọng từng khâu nhỏ nhất trong quy trình sản xuất trà, cùng nhiều điều kiện cũng như phương pháp hết sức nghiêm ngặt và phức tạp để sản phẩm đảm bảo chất lượng với mong muốn dần khẳng định vị thế trong mắt bạn bè quốc tế. Trong số đó phải kể đến Trà Đen đang là một trong những loại trà nổi tiếng làm nguyên liệu chính tạo nên món thức uống trà sữa được mọi người ưa thích không chỉ bởi hương vị thơm ngon mà còn mang lại nhiều lợi ích cho sức khỏe. </p>\n[/ux_text]\n\n[/col]\n[col span=\"6\" span__sm=\"12\" margin=\"-200px 0px 0px 0px\" margin__md=\"0 0px 0px 0px\" class=\"col-margin-bot\"]\n\n[ux_image id=\"295\" depth=\"4\"]\n\n\n[/col]\n\n[/row]\n[section bg=\"140\"]\n\n[row v_align=\"middle\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"296\" depth=\"4\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\" animate=\"fadeInRight\"]\n\n[ux_text font_size=\"1.2\" class=\"text-green font-text-change\"]\n\n<p>Với tình cảm đặc biệt dành cho những đồi trà xanh Việt Nam, mong muốn mãnh liệt mang hương vị trà quê hương đến bạn bè quốc tế, BuBo Tea đã ưu tiên chọn nguồn cung Trà Đen chất lượng cao từ Việt Nam theo tiêu chuẩn kiểm định an toàn thực phẩm Bộ Y tế đề ra.</p>\n[/ux_text]\n\n[/col]\n\n[/row]\n\n[/section]\n[section bg=\"297\" bg_overlay=\"rgba(0, 0, 0, 0.523)\" padding=\"0px\"]\n\n[ux_banner height=\"500px\" bg=\"297\" bg_overlay=\"rgba(0, 0, 0, 0.43)\"]\n\n[text_box width=\"70\" animate=\"bounceIn\" position_x=\"50\" position_y=\"50\"]\n\n[title style=\"center\" text=\"NGUỒN SỮA\" tag_name=\"h1\" color=\"rgb(255, 255, 255)\" size=\"200\" class=\"title-butotea\"]\n\n[ux_text font_size=\"1.25\" text_align=\"left\" text_color=\"rgb(255, 255, 255)\" class=\"text-milk font-text-change\"]\n\n<p>Là một đất nước nổi tiếng hàng đầu thế giới về chất lượng sữa - Hà Lan chính là sự lựa chọn đáng tin cậy dành cho trà sữa BuBo Tea. Quy trình chế biến và đóng gói nguyên liệu sữa được thực hiện chặt chẽ bởi các thiết bị công nghệ cao, đảm bảo an toàn vệ sinh và đáp ứng tiêu chuẩn Châu Âu mục đích mang lại sự trải nghiệm hoàn hảo cho khách hàng.</p>\n[/ux_text]\n\n[/text_box]\n\n[/ux_banner]\n\n[/section]\n[section bg=\"100\"]\n\n[row v_align=\"middle\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"298\" depth=\"4\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\" animate=\"fadeInDown\"]\n\n[title style=\"center\" text=\"TOPPING\" tag_name=\"h1\" size=\"200\" class=\"title-butotea\"]\n\n[ux_text font_size=\"1.2\" class=\"text-green font-text-change\"]\n\n<p>Để tạo nét khác biệt cho thức uống của BuBo tea, chúng tôi đã chế biến nhiều loại thạch tươi ngon từ nguồn trái cây đa dạng. Đặc biệt hơn nữa BuBo tea đã chọn nguyên liệu trân châu chiết xuất 100% từ rong biển đạt tiêu chuẩn kiểm định IS22000</p>\n[/ux_text]\n\n[/col]\n\n[/row]\n\n[/section]\n[ux_image id=\"341\" image_size=\"original\"]', 'VÙNG NGUYÊN LIỆU', '', 'publish', 'closed', 'closed', '', 'vung-nguyen-lieu', '', '', '2021-04-12 04:18:16', '2021-04-12 04:18:16', '', 0, 'http://localhost/trasua/?page_id=17', 0, 'page', '', 0),
(19, 1, '2020-12-17 08:16:53', '2020-12-17 08:16:53', '[section bg=\"140\"]\n\n[ux_text font_size=\"1.5\" text_align=\"center\"]\n\n<h1>LIÊN HỆ VỚI BUBO TEA</h1>\n[/ux_text]\n[row]\n\n[col span=\"6\" span__sm=\"12\" class=\"row-border\"]\n\n[ux_text font_size=\"2\" text_align=\"center\" class=\"contact-link\"]\n\n<p>liên hệ</p>\n[/ux_text]\n[ux_text font_size=\"1.25\" line_height=\"2.4\" class=\"link-hot\"]\n\n<p><span style=\"font-size: 90%;\">Hotline: +31 618 235 898</span></p>\n<p><span style=\"font-size: 90%;\">Địa chỉ: naritaweg 14, 1043 BZ Amsterdam</span></p>\n<p><span style=\"font-size: 90%;\">Email: info@bubotea.nl</span></p>\n<p><span style=\"font-size: 90%;\">Facebook: @BuBotea.official</span></p>\n[/ux_text]\n\n[/col]\n[col span=\"6\" span__sm=\"12\" class=\"row-border\"]\n\n[ux_text font_size=\"2\" text_align=\"center\" class=\"contact-link\"]\n\n<p>bản đồ</p>\n[/ux_text]\n<p><iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2435.2041731240556!2d4.837456271589512!3d52.38484895516194!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47c5e257a1ddb4f7%3A0xaa1dd9bf221b343b!2sNaritaweg%2014%2C%201043%20BZ%20Amsterdam%2C%20Netherlands!5e0!3m2!1sen!2s!4v1608344298948!5m2!1sen!2s\" width=\"100%\" height=\"292\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe></p>\n\n[/col]\n\n[/row]\n\n[/section]', 'LIÊN HỆ', '', 'publish', 'closed', 'closed', '', 'lien-he', '', '', '2020-12-28 08:07:04', '2020-12-28 08:07:04', '', 0, 'http://localhost/trasua/?page_id=19', 0, 'page', '', 0),
(21, 1, '2020-12-17 08:17:00', '2020-12-17 08:17:00', '<!-- wp:flatsome/uxbuilder -->\n[title style=\"center\" text=\"bài viết bubo tea\" tag_name=\"h1\" size=\"200\" class=\"title-butotea\"]\n\n[blog_posts style=\"normal\" type=\"row\" columns=\"3\" columns__md=\"1\" show_date=\"false\" image_height=\"56.25%\"]\n\n\n<!-- /wp:flatsome/uxbuilder -->', 'TIN TỨC', '', 'publish', 'closed', 'closed', '', 'tin-tuc', '', '', '2020-12-18 13:42:27', '2020-12-18 13:42:27', '', 0, 'http://localhost/trasua/?page_id=21', 0, 'page', '', 0),
(23, 1, '2020-12-17 08:17:07', '2020-12-17 08:17:07', '<!-- wp:html /-->', 'SẢN PHẨM', '', 'publish', 'closed', 'closed', '', 'san-pham', '', '', '2021-01-06 04:02:16', '2021-01-06 04:02:16', '', 0, 'http://localhost/trasua/?page_id=23', 0, 'page', '', 0),
(25, 1, '2020-12-17 08:17:57', '2020-12-17 08:17:57', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2020-12-19 01:50:01', '2020-12-19 01:50:01', '', 0, 'http://localhost/trasua/?p=25', 4, 'nav_menu_item', '', 0),
(26, 1, '2020-12-17 08:17:57', '2020-12-17 08:17:57', ' ', '', '', 'publish', 'closed', 'closed', '', '26', '', '', '2020-12-19 01:50:01', '2020-12-19 01:50:01', '', 0, 'http://localhost/trasua/?p=26', 5, 'nav_menu_item', '', 0),
(27, 1, '2020-12-17 08:17:57', '2020-12-17 08:17:57', '', 'LIÊN HỆ', '', 'publish', 'closed', 'closed', '', '27', '', '', '2020-12-19 01:50:01', '2020-12-19 01:50:01', '', 0, 'http://localhost/trasua/?p=27', 6, 'nav_menu_item', '', 0),
(28, 1, '2020-12-17 08:17:57', '2020-12-17 08:17:57', ' ', '', '', 'publish', 'closed', 'closed', '', '28', '', '', '2020-12-19 01:50:01', '2020-12-19 01:50:01', '', 0, 'http://localhost/trasua/?p=28', 3, 'nav_menu_item', '', 0),
(29, 1, '2020-12-17 08:17:57', '2020-12-17 08:17:57', ' ', '', '', 'publish', 'closed', 'closed', '', '29', '', '', '2020-12-19 01:50:01', '2020-12-19 01:50:01', '', 0, 'http://localhost/trasua/?p=29', 2, 'nav_menu_item', '', 0),
(30, 1, '2020-12-17 08:17:57', '2020-12-17 08:17:57', '', 'TRANG CHỦ', '', 'publish', 'closed', 'closed', '', 'trang-chu', '', '', '2020-12-19 01:50:01', '2020-12-19 01:50:01', '', 0, 'http://localhost/trasua/?p=30', 1, 'nav_menu_item', '', 0),
(32, 1, '2020-12-17 08:21:08', '2020-12-17 08:21:08', '', 'LOGO', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2020-12-17 08:21:08', '2020-12-17 08:21:08', '', 0, 'http://localhost/trasua/wp-content/uploads/2020/12/LOGO.png', 0, 'attachment', 'image/png', 0),
(38, 1, '2020-12-17 08:25:39', '2020-12-17 08:25:39', '', 'banner web', '', 'inherit', 'open', 'closed', '', 'banner-web', '', '', '2020-12-17 08:25:39', '2020-12-17 08:25:39', '', 0, 'http://localhost/trasua/wp-content/uploads/2020/12/banner-web.png', 0, 'attachment', 'image/png', 0),
(54, 1, '2020-12-17 09:27:28', '2020-12-17 09:27:28', '', 'woocommerce-placeholder', '', 'inherit', 'open', 'closed', '', 'woocommerce-placeholder', '', '', '2020-12-17 09:27:28', '2020-12-17 09:27:28', '', 0, 'http://localhost/trasua/wp-content/uploads/2020/12/woocommerce-placeholder.png', 0, 'attachment', 'image/png', 0),
(55, 1, '2020-12-17 09:27:28', '2020-12-17 09:27:28', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2020-12-17 09:27:28', '2020-12-17 09:27:28', '', 0, 'http://localhost/trasua/shop/', 0, 'page', '', 0),
(56, 1, '2020-12-17 09:27:28', '2020-12-17 09:27:28', '<!-- wp:shortcode -->[woocommerce_cart]<!-- /wp:shortcode -->', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2020-12-17 09:27:28', '2020-12-17 09:27:28', '', 0, 'http://localhost/trasua/cart/', 0, 'page', '', 0),
(57, 1, '2020-12-17 09:27:28', '2020-12-17 09:27:28', '<!-- wp:shortcode -->[woocommerce_checkout]<!-- /wp:shortcode -->', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2020-12-17 09:27:28', '2020-12-17 09:27:28', '', 0, 'http://localhost/trasua/checkout/', 0, 'page', '', 0),
(58, 1, '2020-12-17 09:27:28', '2020-12-17 09:27:28', '<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->', 'My account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2020-12-17 09:27:28', '2020-12-17 09:27:28', '', 0, 'http://localhost/trasua/my-account/', 0, 'page', '', 0),
(59, 1, '2020-12-17 10:07:50', '2020-12-17 10:07:50', 'Vị Khoai Môn béo bùi được hòa quyện với TRÀ ĐEN thơm lừng kết hợp cùng trân châu trắng giòn dai chắc chắn sẽ là một trong những thức uống ‘must-try’ khi ghé BUBO TEA.', 'Trà Sữa Khoai Môn', 'Vị Khoai Môn béo bùi được hòa quyện với trà đen thơm lừng kết hợp cùng trân châu trắng giòn dai chắc chắn sẽ là một trong những thức uống ‘must-try’ khi ghé BUBO TEA.', 'publish', 'open', 'closed', '', 'tra-sua-khoai-mon', '', '', '2021-01-06 04:29:06', '2021-01-06 04:29:06', '', 0, 'http://localhost/trasua/?post_type=product&#038;p=59', 0, 'product', '', 0),
(65, 1, '2020-12-17 09:43:52', '2020-12-17 09:43:52', '', 'Truyenthong', '', 'inherit', 'open', 'closed', '', 'truyenthong', '', '', '2020-12-17 09:43:52', '2020-12-17 09:43:52', '', 59, 'http://localhost/trasua/wp-content/uploads/2020/12/Truyenthong.png', 0, 'attachment', 'image/png', 0),
(68, 1, '2020-12-17 10:06:18', '2020-12-17 10:06:18', '', 'Trà Sữa Khoai Môn - 250ML', 'Kích thước: 250ML', 'publish', 'closed', 'closed', '', 'tra-sua-khoai-mon-250ml', '', '', '2020-12-17 10:13:57', '2020-12-17 10:13:57', '', 59, 'http://localhost/trasua/?post_type=product_variation&p=68', 1, 'product_variation', '', 0),
(69, 1, '2020-12-17 10:06:18', '2020-12-17 10:06:18', '', 'Trà Sữa Khoai Môn - 330ML', 'Kích thước: 330ML', 'publish', 'closed', 'closed', '', 'tra-sua-khoai-mon-330ml', '', '', '2020-12-17 10:22:50', '2020-12-17 10:22:50', '', 59, 'http://localhost/trasua/?post_type=product_variation&p=69', 2, 'product_variation', '', 0),
(72, 1, '2020-12-17 10:27:42', '2020-12-17 10:27:42', 'trà đào thượng hạng, sữa nguyên kem, syrup đào, trân châu, đường.', 'Trà Sữa Đào', 'Hương vị đào thơm ngon, cộng với lượng đường phù hợp tạo nên một thức uống tròn vị ngon khó cưỡng...', 'publish', 'open', 'closed', '', 'tra-sua-dao', '', '', '2021-01-06 04:28:16', '2021-01-06 04:28:16', '', 0, 'http://localhost/trasua/?post_type=product&#038;p=72', 0, 'product', '', 0),
(75, 1, '2020-12-17 10:31:19', '2020-12-17 10:31:19', '', 'Trà Sữa Đào - 250ML', 'Kích thước: 250ML', 'publish', 'closed', 'closed', '', 'tra-sua-dao-250ml', '', '', '2020-12-17 10:31:59', '2020-12-17 10:31:59', '', 72, 'http://localhost/trasua/?post_type=product_variation&#038;p=75', 2, 'product_variation', '', 0),
(76, 1, '2020-12-17 10:31:19', '2020-12-17 10:31:19', '', 'Trà Sữa Đào - 330ML', 'Kích thước: 330ML', 'publish', 'closed', 'closed', '', 'tra-sua-dao-330ml', '', '', '2020-12-17 10:31:59', '2020-12-17 10:31:59', '', 72, 'http://localhost/trasua/?post_type=product_variation&#038;p=76', 3, 'product_variation', '', 0),
(77, 1, '2020-12-17 10:36:13', '2020-12-17 10:36:13', 'Trà thái đỏ, sữa nguyên kem, trân châu, đường', 'Trà Sữa Thái Đỏ', 'Khác với trà sữa thái xanh, Trà sữa Thái đỏ nhà BUBO TEA luôn đảm bảo được vị trà đậm, đặc trưng của các loại thảo mộc ,beo béo và độ ngọt vừa phải...', 'publish', 'open', 'closed', '', 'tra-sua-thai-do', '', '', '2021-01-06 04:27:07', '2021-01-06 04:27:07', '', 0, 'http://localhost/trasua/?post_type=product&#038;p=77', 0, 'product', '', 0),
(78, 1, '2020-12-17 10:35:47', '2020-12-17 10:35:47', '', 'Trà Sữa Thái Đỏ - 250ML', 'Kích thước: 250ML', 'publish', 'closed', 'closed', '', 'tra-sua-thai-do-250ml', '', '', '2020-12-17 10:36:09', '2020-12-17 10:36:09', '', 77, 'http://localhost/trasua/?post_type=product_variation&p=78', 1, 'product_variation', '', 0),
(79, 1, '2020-12-17 10:35:47', '2020-12-17 10:35:47', '', 'Trà Sữa Thái Đỏ - 330ML', 'Kích thước: 330ML', 'publish', 'closed', 'closed', '', 'tra-sua-thai-do-330ml', '', '', '2020-12-17 10:36:09', '2020-12-17 10:36:09', '', 77, 'http://localhost/trasua/?post_type=product_variation&p=79', 2, 'product_variation', '', 0),
(81, 1, '2020-12-17 10:38:42', '2020-12-17 10:38:42', 'trà đen, trà xanh, sữa nguyên kem, trân châu, đường', 'Trà Sữa Thái Xanh', 'Với vị đắng nhẹ và hương thơm từ Matcha cùng trà đen sẽ tạo nên hương vị  khiến những ai là fan trà sữa cũng phải xiêu lòng...', 'publish', 'open', 'closed', '', 'tra-sua-thai-xanh', '', '', '2021-01-06 04:26:43', '2021-01-06 04:26:43', '', 0, 'http://localhost/trasua/?post_type=product&#038;p=81', 0, 'product', '', 1),
(82, 1, '2020-12-17 10:38:02', '2020-12-17 10:38:02', '', 'Trà Sữa Thái Xanh - 250ML', 'Kích thước: 250ML', 'publish', 'closed', 'closed', '', 'tra-sua-thai-xanh-250ml', '', '', '2020-12-17 10:38:24', '2020-12-17 10:38:24', '', 81, 'http://localhost/trasua/?post_type=product_variation&p=82', 1, 'product_variation', '', 0),
(83, 1, '2020-12-17 10:38:02', '2020-12-17 10:38:02', '', 'Trà Sữa Thái Xanh - 330ML', 'Kích thước: 330ML', 'publish', 'closed', 'closed', '', 'tra-sua-thai-xanh-330ml', '', '', '2020-12-17 10:38:24', '2020-12-17 10:38:24', '', 81, 'http://localhost/trasua/?post_type=product_variation&p=83', 2, 'product_variation', '', 0),
(85, 1, '2020-12-17 10:41:54', '2020-12-17 10:41:54', 'trà tropical paradise, sữa nguyên kem, syrup trái cây, trân châu, đường.', 'Trà Sữa TROPICAL PARADISE', 'Trà sữa vị ngon khó cưỡng lại với hương vị ngon thật đậm đà.', 'publish', 'open', 'closed', '', 'tra-sua-tropical-paradise', '', '', '2020-12-28 09:30:52', '2020-12-28 09:30:52', '', 0, 'http://localhost/trasua/?post_type=product&#038;p=85', 0, 'product', '', 0),
(86, 1, '2020-12-17 10:41:17', '2020-12-17 10:41:17', '', 'Trà Sữa TROPICAL PARADISE - 250ML', 'Kích thước: 250ML', 'publish', 'closed', 'closed', '', 'tra-sua-tropical-paradise-250ml', '', '', '2020-12-17 10:41:48', '2020-12-17 10:41:48', '', 85, 'http://localhost/trasua/?post_type=product_variation&p=86', 1, 'product_variation', '', 0),
(87, 1, '2020-12-17 10:41:18', '2020-12-17 10:41:18', '', 'Trà Sữa TROPICAL PARADISE - 330ML', 'Kích thước: 330ML', 'publish', 'closed', 'closed', '', 'tra-sua-tropical-paradise-330ml', '', '', '2020-12-17 10:41:48', '2020-12-17 10:41:48', '', 85, 'http://localhost/trasua/?post_type=product_variation&p=87', 2, 'product_variation', '', 0),
(88, 1, '2020-12-17 10:44:03', '2020-12-17 10:44:03', 'trà đen, sữa nguyên kem, trân châu, đường.', 'Trà Sữa Original', 'Mặc dù trà sữa gần đây được biến tấu thêm nhiều hương vị mới lạ...Thế nhưng trà sữa Original vẫn luôn là sự lựa chọn hoàn hảo mà BUBO TEA gửi đến mọi người .', 'publish', 'open', 'closed', '', 'tra-sua-nguyen-vi', '', '', '2021-03-20 01:08:01', '2021-03-20 01:08:01', '', 0, 'http://localhost/trasua/?post_type=product&#038;p=88', 0, 'product', '', 1),
(89, 1, '2020-12-17 10:43:33', '2020-12-17 10:43:33', '', 'Trà Sữa Original - 250ML', 'Kích thước: 250ML', 'publish', 'closed', 'closed', '', 'tra-sua-nguyen-vi-250ml', '', '', '2021-03-20 01:08:01', '2021-03-20 01:08:01', '', 88, 'http://localhost/trasua/?post_type=product_variation&p=89', 1, 'product_variation', '', 0),
(90, 1, '2020-12-17 10:43:33', '2020-12-17 10:43:33', '', 'Trà Sữa Original - 330ML', 'Kích thước: 330ML', 'publish', 'closed', 'closed', '', 'tra-sua-nguyen-vi-330ml', '', '', '2021-03-20 01:08:01', '2021-03-20 01:08:01', '', 88, 'http://localhost/trasua/?post_type=product_variation&p=90', 2, 'product_variation', '', 0),
(100, 1, '2020-12-18 01:00:05', '2020-12-18 01:00:05', '', '173', '', 'inherit', 'open', 'closed', '', '173', '', '', '2020-12-18 01:00:05', '2020-12-18 01:00:05', '', 0, 'http://localhost/trasua/wp-content/uploads/2020/12/173.jpg', 0, 'attachment', 'image/jpeg', 0),
(115, 1, '2020-12-18 01:46:33', '2020-12-18 01:46:33', '', '3032', '', 'inherit', 'open', 'closed', '', '3032', '', '', '2020-12-18 01:46:33', '2020-12-18 01:46:33', '', 0, 'http://localhost/trasua/wp-content/uploads/2020/12/3032.jpg', 0, 'attachment', 'image/jpeg', 0),
(117, 1, '2020-12-18 02:23:57', '2020-12-18 02:23:57', '', 'banner', '', 'inherit', 'open', 'closed', '', 'banner', '', '', '2020-12-18 02:23:57', '2020-12-18 02:23:57', '', 0, 'http://localhost/trasua/wp-content/uploads/2020/12/banner.png', 0, 'attachment', 'image/png', 0),
(127, 1, '2020-12-18 02:43:28', '2020-12-18 02:43:28', '<!-- wp:paragraph -->\r\n<p>Nổ lực mang thương hiệu trà Việt Nam ra thế giới là mục tiêu hàng đầu của Bubo tea.</p>\r\n<!-- /wp:paragraph -->', 'Dũng cảm', '', 'publish', 'open', 'open', '', 'bubo-tea', '', '', '2020-12-29 10:15:25', '2020-12-29 10:15:25', '', 0, 'http://localhost/trasua/?p=127', 0, 'post', '', 0),
(129, 1, '2020-12-18 02:43:17', '2020-12-18 02:43:17', '', 'store_xuanla_hn_master', '', 'inherit', 'open', 'closed', '', 'store_xuanla_hn_master', '', '', '2020-12-18 02:43:17', '2020-12-18 02:43:17', '', 127, 'http://localhost/trasua/wp-content/uploads/2020/12/store_xuanla_hn_master.jpg', 0, 'attachment', 'image/jpeg', 0),
(130, 1, '2020-12-18 02:44:15', '2020-12-18 02:44:15', '<!-- wp:paragraph -->\r\n<p>Chúng tôi luôn không ngừng nổ lực đem lại những sản phẩm mang dấu ấn khác biệt và tuyệt vời nhất cho khách hàng.</p>\r\n<!-- /wp:paragraph -->', 'Sáng tạo', '', 'publish', 'open', 'open', '', 'tra-sua', '', '', '2020-12-29 09:29:59', '2020-12-29 09:29:59', '', 0, 'http://localhost/trasua/?p=130', 0, 'post', '', 0),
(132, 1, '2020-12-18 02:46:35', '2020-12-18 02:46:35', '<!-- wp:paragraph -->\r\n<p>Bubo tea luôn quan tâm đến từng suy nghĩ và cảm nhận của khách hàng, nhân viên và cộng đồng. Vì khi có bạn, chúng tôi như được tiếp thêm sức mạnh để cùng lan tỏa những giá trị tốt đẹp.</p>\r\n<!-- /wp:paragraph -->', 'Quan tâm', '', 'publish', 'open', 'open', '', 'doi-ngu-nhan-vien', '', '', '2020-12-29 10:15:09', '2020-12-29 10:15:09', '', 0, 'http://localhost/trasua/?p=132', 0, 'post', '', 0),
(133, 1, '2020-12-18 02:46:30', '2020-12-18 02:46:30', '', '3e0a8783_master', '', 'inherit', 'open', 'closed', '', '3e0a8783_master', '', '', '2020-12-18 02:46:30', '2020-12-18 02:46:30', '', 132, 'http://localhost/trasua/wp-content/uploads/2020/12/3e0a8783_master.jpg', 0, 'attachment', 'image/jpeg', 0),
(140, 1, '2020-12-18 03:02:13', '2020-12-18 03:02:13', '', 'br', '', 'inherit', 'open', 'closed', '', 'br', '', '', '2020-12-18 03:02:13', '2020-12-18 03:02:13', '', 0, 'http://localhost/trasua/wp-content/uploads/2020/12/br.jpg', 0, 'attachment', 'image/jpeg', 0),
(154, 1, '2020-12-18 03:55:47', '2020-12-18 03:55:47', '', '19139510', '', 'inherit', 'open', 'closed', '', '19139510', '', '', '2020-12-18 03:55:47', '2020-12-18 03:55:47', '', 0, 'http://localhost/trasua/wp-content/uploads/2020/12/19139510.jpg', 0, 'attachment', 'image/jpeg', 0),
(158, 1, '2020-12-18 04:00:40', '2020-12-18 04:00:40', '', 'bot1457', '', 'inherit', 'open', 'closed', '', 'bot1457', '', '', '2020-12-18 04:00:40', '2020-12-18 04:00:40', '', 0, 'http://localhost/trasua/wp-content/uploads/2020/12/bot1457.jpg', 0, 'attachment', 'image/jpeg', 0),
(170, 1, '2020-12-18 04:26:56', '2020-12-18 04:26:56', '[section label=\"Footer\" bg_color=\"rgb(163, 184, 162)\"]\n\n[gap height=\"20px\"]\n\n[row label=\"Icon Boxes\"]\n\n[col span__sm=\"12\"]\n\n[row_inner style=\"small\"]\n\n[col_inner span=\"4\" span__sm=\"12\" span__md=\"6\"]\n\n[featured_box img=\"172\" img_width=\"25\" pos=\"center\"]\n\n[ux_text text_color=\"rgb(0, 0, 0)\"]\n\n<p><span style=\"font-size: 90%;\"><strong>Từ 100% tự nhiên</strong></span></p>\n[/ux_text]\n\n[/featured_box]\n\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\" span__md=\"6\"]\n\n[featured_box img=\"174\" img_width=\"25\" pos=\"center\"]\n\n[ux_text text_color=\"rgb(0, 0, 0)\"]\n\n<p><span style=\"font-size: 90%;\"><strong>Hương vị Việt</strong></span></p>\n[/ux_text]\n\n[/featured_box]\n\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\" span__md=\"6\"]\n\n[featured_box img=\"175\" img_width=\"25\" pos=\"center\"]\n\n[ux_text text_color=\"rgb(0, 0, 0)\"]\n\n<p><span style=\"font-size: 90%;\"><strong>Luôn lắng nghe đóng góp</strong></span></p>\n[/ux_text]\n\n[/featured_box]\n\n[/col_inner]\n\n[/row_inner]\n[divider width=\"100%\" height=\"1px\" margin=\"1.5em\"]\n\n\n[/col]\n\n[/row]\n[row label=\"Info + Links + Newsletter\" style=\"small\"]\n\n[col span=\"4\" span__sm=\"12\" span__md=\"12\"]\n\n[ux_text text_color=\"rgb(0, 0, 0)\" class=\"icon-footer\"]\n\n<h5>BUBO TEA</h5>\n<p><span style=\"font-size: 90%;\">Hotline: +31 618 235 898</span></p>\n<p><span style=\"font-size: 90%;\">Địa chỉ: naritaweg 14, 1043 BZ Amsterdam</span></p>\n<p><span style=\"font-size: 90%;\">Email: info@bubotea.nl</span></p>\n<p><span style=\"font-size: 90%;\">Facebook: @BuBotea.official</span></p>\n<a href=\"tel:+31618235898\"><i class=\"fas fa-phone-alt\"></i><strong>CALL US</strong></a>\n<a href=\"mailto:info@bubotea.nl\"><i class=\"fas fa-envelope\"></i></i><strong>EMAIL US</strong></a>\n[/ux_text]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" span__md=\"12\"]\n\n[row_inner style=\"collapse\"]\n\n[col_inner span=\"6\" span__sm=\"12\"]\n\n[ux_text text_color=\"rgb(0, 0, 0)\" class=\"text-white\"]\n\n<h5>Khách Hàng</h5>\n<ul>\n<li class=\"bullet-arrow\"><span style=\"font-size: 90%;\"><a href=\"/trasua/cart/\">Đơn hàng của tôi</a></span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 90%;\"><a href=\"/trasua/cau-chuyen-thuong-hieu/\">Giới thiệu</a></span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 90%;\"><a href=\"/trasua/vung-nguyen-lieu/\">Vùng nguyên liệu</a></span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 90%;\"><a href=\"/trasua/tin-tuc/\">Tin tức</a></span></li>\n</ul>\n[/ux_text]\n\n[/col_inner]\n[col_inner span=\"6\" span__sm=\"12\"]\n\n[ux_text text_color=\"rgb(0, 0, 0)\" class=\"text-white\"]\n\n<h5>Liên hệ</h5>\n<ul>\n<li class=\"bullet-arrow\"><span style=\"font-size: 90%;\"><a href=\"/lien-he/\">Liên hệ</a></span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 90%;\"><a href=\"/\">Trang chủ</a></span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 90%;\"><a href=\"/tin-tuc/\">Blog</a></span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 90%;\"><a href=\"/san-pham/\">Sản phẩm</a></span></li>\n</ul>\n[/ux_text]\n\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" span__md=\"12\"]\n\n[ux_text text_color=\"rgb(0, 0, 0)\"]\n\n<h5>Chính sách</h5>\n[/ux_text]\n<ul>\n<li class=\"bullet-arrow\"><span style=\"font-size: 90%;\"><a href=\" https://bubotea.com/chinh-sach-bao-mat-thong-tin/\"> Chính sách bảo mật thông tin</a></span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 90%;\"><a href=\"#\">Chính sách thanh toán - đổi trả</a></span></li>\n</ul>\n[ux_text line_height=\"3\" text_color=\"rgb(0, 0, 0)\"]\n\n<h5>Theo dõi</h5>\n[/ux_text]\n[follow style=\"small\" facebook=\"https://www.facebook.com/BuBotea.official\" email=\"info@bubotea.nl\" phone=\"+31 618 235 898\" class=\"contact-black\"]\n\n\n[/col]\n\n[/row]\n\n[/section]', 'footer', '', 'publish', 'closed', 'closed', '', 'footer', '', '', '2021-04-12 09:35:10', '2021-04-12 09:35:10', '', 0, 'http://localhost/trasua/?post_type=blocks&#038;p=170', 0, 'blocks', '', 0),
(172, 1, '2020-12-18 04:29:31', '2020-12-18 04:29:31', '', 'archive-line', '', 'inherit', 'open', 'closed', '', 'archive-line', '', '', '2020-12-18 04:29:31', '2020-12-18 04:29:31', '', 0, 'http://localhost/trasua/wp-content/uploads/2020/12/archive-line.png', 0, 'attachment', 'image/png', 0),
(173, 1, '2020-12-18 04:29:32', '2020-12-18 04:29:32', '', 'arrow-go-back-line', '', 'inherit', 'open', 'closed', '', 'arrow-go-back-line', '', '', '2020-12-18 04:29:32', '2020-12-18 04:29:32', '', 0, 'http://localhost/trasua/wp-content/uploads/2020/12/arrow-go-back-line.png', 0, 'attachment', 'image/png', 0),
(174, 1, '2020-12-18 04:29:36', '2020-12-18 04:29:36', '', 'user-heart-line', '', 'inherit', 'open', 'closed', '', 'user-heart-line', '', '', '2020-12-18 04:29:36', '2020-12-18 04:29:36', '', 0, 'http://localhost/trasua/wp-content/uploads/2020/12/user-heart-line.png', 0, 'attachment', 'image/png', 0),
(175, 1, '2020-12-18 04:29:38', '2020-12-18 04:29:38', '', 'secure-payment-line', '', 'inherit', 'open', 'closed', '', 'secure-payment-line', '', '', '2020-12-18 04:29:38', '2020-12-18 04:29:38', '', 0, 'http://localhost/trasua/wp-content/uploads/2020/12/secure-payment-line.png', 0, 'attachment', 'image/png', 0),
(184, 1, '2020-12-18 07:48:56', '2020-12-18 07:48:56', '<!-- wp:paragraph -->\r\n<p>Chúng tôi tin rằng, khi làm việc với tất cả sự chân thành và tôn trọng đều sẽ mang lại những điều tuyệt vời nhất đến với khách hàng.</p>\r\n<!-- /wp:paragraph -->', 'Chân Thành', '', 'publish', 'open', 'open', '', 'nguyen-lieu', '', '', '2020-12-29 10:14:42', '2020-12-29 10:14:42', '', 0, 'http://localhost/trasua/?p=184', 0, 'post', '', 0),
(185, 1, '2020-12-18 07:48:51', '2020-12-18 07:48:51', '', 'pepper-tea', '', 'inherit', 'open', 'closed', '', 'pepper-tea', '', '', '2020-12-18 07:48:51', '2020-12-18 07:48:51', '', 184, 'http://localhost/trasua/wp-content/uploads/2020/12/pepper-tea.jpg', 0, 'attachment', 'image/jpeg', 0),
(208, 1, '2020-12-18 08:38:47', '2020-12-18 08:38:47', '', 'Asset 1', '', 'inherit', 'open', 'closed', '', 'asset-1', '', '', '2020-12-18 08:38:47', '2020-12-18 08:38:47', '', 0, 'http://localhost/trasua/wp-content/uploads/2020/12/Asset-1.png', 0, 'attachment', 'image/png', 0),
(209, 1, '2020-12-18 08:40:47', '2020-12-18 08:40:47', '', 'web bubo-08', '', 'inherit', 'open', 'closed', '', 'web-bubo-08', '', '', '2020-12-18 08:40:47', '2020-12-18 08:40:47', '', 0, 'http://localhost/trasua/wp-content/uploads/2020/12/web-bubo-08.png', 0, 'attachment', 'image/png', 0),
(217, 1, '2020-12-18 08:53:59', '2020-12-18 08:53:59', '', 'web bubo-09', '', 'inherit', 'open', 'closed', '', 'web-bubo-09', '', '', '2020-12-18 08:53:59', '2020-12-18 08:53:59', '', 0, 'http://localhost/trasua/wp-content/uploads/2020/12/web-bubo-09.png', 0, 'attachment', 'image/png', 0),
(219, 1, '2020-12-18 08:59:39', '2020-12-18 08:59:39', '', 'web bubo-02', '', 'inherit', 'open', 'closed', '', 'web-bubo-02', '', '', '2020-12-18 08:59:39', '2020-12-18 08:59:39', '', 0, 'http://localhost/trasua/wp-content/uploads/2020/12/web-bubo-02.png', 0, 'attachment', 'image/png', 0),
(220, 1, '2020-12-18 09:00:15', '2020-12-18 09:00:15', '', 'web bubo-04', '', 'inherit', 'open', 'closed', '', 'web-bubo-04', '', '', '2020-12-18 09:00:15', '2020-12-18 09:00:15', '', 0, 'http://localhost/trasua/wp-content/uploads/2020/12/web-bubo-04.png', 0, 'attachment', 'image/png', 0),
(223, 1, '2020-12-18 11:11:08', '2020-12-18 11:11:08', '', 'LOGO', '', 'inherit', 'open', 'closed', '', 'logo-2', '', '', '2020-12-18 11:11:08', '2020-12-18 11:11:08', '', 0, 'https://bubotea.euwp-content/uploads/2020/12/LOGO-1.png', 0, 'attachment', 'image/png', 0),
(228, 1, '2020-12-18 12:23:27', '2020-12-18 12:23:27', '', 'web-bubo', '', 'inherit', 'open', 'closed', '', 'web-bubo', '', '', '2020-12-18 12:23:27', '2020-12-18 12:23:27', '', 0, 'https://bubotea.euwp-content/uploads/2020/12/web-bubo.png', 0, 'attachment', 'image/png', 0),
(232, 1, '2020-12-18 12:33:01', '2020-12-18 12:33:01', '', 'web bubo-05', '', 'inherit', 'open', 'closed', '', 'web-bubo-05', '', '', '2020-12-18 12:33:01', '2020-12-18 12:33:01', '', 0, 'https://bubotea.euwp-content/uploads/2020/12/web-bubo-05.png', 0, 'attachment', 'image/png', 0),
(237, 1, '2020-12-18 12:53:38', '2020-12-18 12:53:38', '', 'web bubo-07', '', 'inherit', 'open', 'closed', '', 'web-bubo-07', '', '', '2020-12-18 12:53:38', '2020-12-18 12:53:38', '', 0, 'https://bubotea.euwp-content/uploads/2020/12/web-bubo-07.png', 0, 'attachment', 'image/png', 0),
(238, 1, '2020-12-18 12:54:41', '2020-12-18 12:54:41', '', 'web bubo-06', '', 'inherit', 'open', 'closed', '', 'web-bubo-06', '', '', '2020-12-18 12:54:41', '2020-12-18 12:54:41', '', 0, 'https://bubotea.euwp-content/uploads/2020/12/web-bubo-06.png', 0, 'attachment', 'image/png', 0),
(239, 1, '2020-12-18 12:58:20', '2020-12-18 12:58:20', '', 'Asset 3', '', 'inherit', 'open', 'closed', '', 'asset-3', '', '', '2020-12-18 12:58:20', '2020-12-18 12:58:20', '', 0, 'https://bubotea.euwp-content/uploads/2020/12/Asset-3.png', 0, 'attachment', 'image/png', 0),
(240, 1, '2020-12-18 12:59:03', '2020-12-18 12:59:03', '', 'Asset 4', '', 'inherit', 'open', 'closed', '', 'asset-4', '', '', '2020-12-18 12:59:03', '2020-12-18 12:59:03', '', 0, 'https://bubotea.euwp-content/uploads/2020/12/Asset-4.png', 0, 'attachment', 'image/png', 0),
(250, 1, '2020-12-19 01:05:44', '2020-12-19 01:05:44', '', 'Order &ndash; Tháng Mười Hai 19, 2020 @ 01:05 Sáng', '', 'wc-processing', 'open', 'closed', 'wc_order_32W3iq08CKFMx', 'don-hang-dec-19-2020-0105-am', '', '', '2020-12-19 01:05:45', '2020-12-19 01:05:45', '', 0, 'https://bubotea.eu?post_type=shop_order&#038;p=250', 0, 'shop_order', '', 1),
(251, 1, '2020-12-19 01:09:24', '2020-12-19 01:09:24', '', 'Order &ndash; Tháng Mười Hai 19, 2020 @ 01:09 Sáng', 'nhiều đường ít sữa', 'wc-completed', 'closed', 'closed', 'wc_order_I46X3jYZoZ2hm', 'don-hang-dec-19-2020-0109-am', '', '', '2020-12-19 11:15:22', '2020-12-19 11:15:22', '', 0, 'https://bubotea.eu?post_type=shop_order&#038;p=251', 0, 'shop_order', '', 2),
(252, 1, '2020-12-19 01:21:21', '2020-12-19 01:21:21', '', '3013', '', 'inherit', 'open', 'closed', '', '3013', '', '', '2020-12-19 01:21:21', '2020-12-19 01:21:21', '', 0, 'https://bubotea.euwp-content/uploads/2020/12/3013.png', 0, 'attachment', 'image/png', 0),
(254, 1, '2020-12-19 01:40:30', '2020-12-19 01:40:30', '', '3013', '', 'inherit', 'open', 'closed', '', '3013-2', '', '', '2020-12-19 01:40:30', '2020-12-19 01:40:30', '', 0, 'https://bubotea.euwp-content/uploads/2020/12/3013.jpg', 0, 'attachment', 'image/jpeg', 0),
(255, 1, '2020-12-19 01:40:40', '2020-12-19 01:40:40', '', '3033', '', 'inherit', 'open', 'closed', '', '3033', '', '', '2020-12-19 01:40:40', '2020-12-19 01:40:40', '', 0, 'https://bubotea.euwp-content/uploads/2020/12/3033.jpg', 0, 'attachment', 'image/jpeg', 0),
(280, 1, '2020-12-19 03:18:47', '2020-12-19 03:18:47', '', 'bannertrasua', '', 'inherit', 'open', 'closed', '', 'bannertrasua', '', '', '2020-12-19 03:18:47', '2020-12-19 03:18:47', '', 0, 'https://bubotea.euwp-content/uploads/2020/12/bannertrasua.jpg', 0, 'attachment', 'image/jpeg', 0),
(281, 1, '2020-12-19 03:21:52', '2020-12-19 03:21:52', '', 'bannertrasua', '', 'inherit', 'open', 'closed', '', 'bannertrasua-2', '', '', '2020-12-19 03:21:52', '2020-12-19 03:21:52', '', 0, 'https://bubotea.euwp-content/uploads/2020/12/bannertrasua-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(282, 1, '2020-12-19 03:23:59', '2020-12-19 03:23:59', '', 'bannertrasua', '', 'inherit', 'open', 'closed', '', 'bannertrasua-3', '', '', '2020-12-19 03:23:59', '2020-12-19 03:23:59', '', 0, 'https://bubotea.euwp-content/uploads/2020/12/bannertrasua-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(292, 1, '2020-12-19 11:14:00', '2020-12-19 11:14:00', '', 'Order &ndash; Tháng Mười Hai 19, 2020 @ 11:14 Sáng', '', 'wc-processing', 'open', 'closed', 'wc_order_DmtfEew8AX79u', 'don-hang-dec-19-2020-1114-am', '', '', '2020-12-19 11:14:00', '2020-12-19 11:14:00', '', 0, 'https://bubotea.eu?post_type=shop_order&#038;p=292', 0, 'shop_order', '', 1),
(293, 1, '2020-12-19 11:14:56', '2020-12-19 11:14:56', '', 'Order &ndash; Tháng Mười Hai 19, 2020 @ 11:14 Sáng', '', 'wc-processing', 'open', 'closed', 'wc_order_rLJwwmlAgZFTC', 'don-hang-dec-19-2020-1114-am-2', '', '', '2020-12-19 11:14:56', '2020-12-19 11:14:56', '', 0, 'https://bubotea.eu?post_type=shop_order&#038;p=293', 0, 'shop_order', '', 1),
(294, 1, '2020-12-19 14:11:19', '2020-12-19 14:11:19', '', 'WEB NguyenLieu-02', '', 'inherit', 'open', 'closed', '', 'web-nguyenlieu-02', '', '', '2020-12-19 14:11:19', '2020-12-19 14:11:19', '', 0, 'https://bubotea.euwp-content/uploads/2020/12/WEB-NguyenLieu-02.png', 0, 'attachment', 'image/png', 0),
(295, 1, '2020-12-19 14:11:51', '2020-12-19 14:11:51', '', 'WEB NguyenLieu-03', '', 'inherit', 'open', 'closed', '', 'web-nguyenlieu-03', '', '', '2020-12-19 14:11:51', '2020-12-19 14:11:51', '', 0, 'https://bubotea.euwp-content/uploads/2020/12/WEB-NguyenLieu-03.png', 0, 'attachment', 'image/png', 0),
(296, 1, '2020-12-19 14:12:02', '2020-12-19 14:12:02', '', 'WEB NguyenLieu-04', '', 'inherit', 'open', 'closed', '', 'web-nguyenlieu-04', '', '', '2020-12-19 14:12:02', '2020-12-19 14:12:02', '', 0, 'https://bubotea.euwp-content/uploads/2020/12/WEB-NguyenLieu-04.png', 0, 'attachment', 'image/png', 0),
(297, 1, '2020-12-19 14:12:11', '2020-12-19 14:12:11', '', 'WEB NguyenLieu-05', '', 'inherit', 'open', 'closed', '', 'web-nguyenlieu-05', '', '', '2020-12-19 14:12:11', '2020-12-19 14:12:11', '', 0, 'https://bubotea.euwp-content/uploads/2020/12/WEB-NguyenLieu-05.png', 0, 'attachment', 'image/png', 0),
(298, 1, '2020-12-19 14:12:23', '2020-12-19 14:12:23', '', 'WEB NguyenLieu-06', '', 'inherit', 'open', 'closed', '', 'web-nguyenlieu-06', '', '', '2020-12-19 14:12:23', '2020-12-19 14:12:23', '', 0, 'https://bubotea.euwp-content/uploads/2020/12/WEB-NguyenLieu-06.png', 0, 'attachment', 'image/png', 0),
(327, 1, '2020-12-20 02:17:33', '2020-12-20 02:17:33', '', 'Order &ndash; Tháng Mười Hai 20, 2020 @ 02:17 Sáng', '', 'wc-completed', 'closed', 'closed', 'wc_order_0SYv8qSy0Bi7h', 'don-hang-dec-20-2020-0217-am', '', '', '2020-12-21 14:08:52', '2020-12-21 14:08:52', '', 0, 'https://bubotea.eu?post_type=shop_order&#038;p=327', 0, 'shop_order', '', 2),
(341, 1, '2020-12-20 08:24:02', '2020-12-20 08:24:02', '', 'anh-02', '', 'inherit', 'open', 'closed', '', 'anh-02', '', '', '2020-12-20 08:24:02', '2020-12-20 08:24:02', '', 0, 'https://bubotea.euwp-content/uploads/2020/12/anh-02.png', 0, 'attachment', 'image/png', 0),
(345, 1, '2020-12-21 03:49:37', '2020-12-21 03:49:37', '', 'FIX', '', 'inherit', 'open', 'closed', '', 'fix', '', '', '2020-12-21 03:49:37', '2020-12-21 03:49:37', '', 0, 'https://bubotea.euwp-content/uploads/2020/12/FIX.jpg', 0, 'attachment', 'image/jpeg', 0),
(347, 1, '2020-12-21 04:07:12', '2020-12-21 04:07:12', '', 'Artboard 1', '', 'inherit', 'open', 'closed', '', 'artboard-1', '', '', '2020-12-21 04:07:12', '2020-12-21 04:07:12', '', 0, 'https://bubotea.euwp-content/uploads/2020/12/Artboard-1.png', 0, 'attachment', 'image/png', 0),
(348, 1, '2020-12-21 04:07:19', '2020-12-21 04:07:19', '', 'Mobile', '', 'inherit', 'open', 'closed', '', 'mobile', '', '', '2020-12-21 04:07:19', '2020-12-21 04:07:19', '', 0, 'https://bubotea.euwp-content/uploads/2020/12/Mobile.png', 0, 'attachment', 'image/png', 0),
(360, 1, '2020-12-22 02:10:40', '2020-12-22 02:10:40', '<!-- wp:shortcode -->[yith_wcwl_wishlist]<!-- /wp:shortcode -->', 'Wishlist', '', 'publish', 'closed', 'closed', '', 'wishlist', '', '', '2020-12-22 02:10:40', '2020-12-22 02:10:40', '', 0, 'https://bubotea.euwishlist/', 0, 'page', '', 0),
(362, 1, '2020-12-22 02:44:39', '2020-12-22 02:44:39', '', 'Thanh Toán', '', 'publish', 'closed', 'closed', '', 'thanh-toan', '', '', '2020-12-22 02:45:12', '2020-12-22 02:45:12', '', 0, 'https://bubotea.eu?page_id=362', 0, 'page', '', 0),
(364, 1, '2020-12-22 03:04:46', '2020-12-22 03:04:46', '', 'thanh toán', '', 'publish', 'closed', 'closed', '', 'thanh-toan', '', '', '2020-12-22 03:04:46', '2020-12-22 03:04:46', '', 0, 'https://bubotea.eu?post_type=blocks&#038;p=364', 0, 'blocks', '', 0),
(366, 1, '2020-12-22 03:10:05', '2020-12-22 03:10:05', '<!-- wp:cover {\"url\":\"https://bubotea.euwp-content/uploads/2020/12/other-small.jpg\",\"id\":367,\"dimRatio\":0} -->\n			<div class=\"wp-block-cover\" style=\"background-image:url(https://bubotea.euwp-content/uploads/2020/12/other-small.jpg)\"><div class=\"wp-block-cover__inner-container\"><!-- wp:paragraph {\"align\":\"center\",\"placeholder\":\"Write title…\",\"textColor\":\"white\",\"fontSize\":\"large\"} -->\n			<p class=\"has-text-align-center has-large-font-size\">Welcome to the store</p>\n			<!-- /wp:paragraph -->\n\n			<!-- wp:paragraph {\"align\":\"center\",\"textColor\":\"white\"} -->\n			<p class=\"has-text-color has-text-align-center\">Write a short welcome message here</p>\n			<!-- /wp:paragraph -->\n\n			<!-- wp:button {\"align\":\"center\"} -->\n			<div class=\"wp-block-button aligncenter\"><a href=\"https://bubotea.eucua-hang/\" class=\"wp-block-button__link\">Go shopping</a></div>\n			<!-- /wp:button --></div></div>\n			<!-- /wp:cover -->\n				<!-- wp:heading {\"align\":\"center\"} -->\n				<h2 style=\"text-align:center\">Duyệt theo danh mục</h2>\n				<!-- /wp:heading -->\n				<!-- wp:shortcode -->\n				[product_categories number=\"0\" parent=\"0\"]\n				<!-- /wp:shortcode -->\n				<!-- wp:heading {\"align\":\"center\"} -->\n				<h2 style=\"text-align:center\">New In</h2>\n				<!-- /wp:heading -->\n				<!-- wp:woocommerce/product-new {\"columns\":4} /-->\n				<!-- wp:heading {\"align\":\"center\"} -->\n				<h2 style=\"text-align:center\">Fan Favorites</h2>\n				<!-- /wp:heading -->\n				<!-- wp:woocommerce/product-top-rated {\"columns\":4} /-->\n				<!-- wp:heading {\"align\":\"center\"} -->\n				<h2 style=\"text-align:center\">On Sale</h2>\n				<!-- /wp:heading -->\n				<!-- wp:woocommerce/product-on-sale {\"columns\":4} /-->\n				<!-- wp:heading {\"align\":\"center\"} -->\n				<h2 style=\"text-align:center\">Best Sellers</h2>\n				<!-- /wp:heading -->\n				<!-- wp:woocommerce/product-best-sellers {\"columns\":4} /-->\n			', 'Homepage', '', 'publish', 'closed', 'closed', '', 'homepage', '', '', '2020-12-22 03:10:09', '2020-12-22 03:10:09', '', 0, 'https://bubotea.euhomepage/', 0, 'page', '', 0),
(367, 1, '2020-12-22 03:10:05', '2020-12-22 03:10:05', '', 'other-small', '', 'inherit', 'open', 'closed', '', 'other-small', '', '', '2020-12-22 03:10:05', '2020-12-22 03:10:05', '', 366, 'https://bubotea.euwp-content/uploads/2020/12/other-small.jpg', 0, 'attachment', 'image/jpeg', 0),
(379, 1, '2020-12-22 03:24:33', '2020-12-22 03:24:33', 'https://bubotea.euwp-content/uploads/2020/12/cropped-LOGO-1.png', 'cropped-LOGO-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-1-png', '', '', '2020-12-22 03:24:33', '2020-12-22 03:24:33', '', 0, 'https://bubotea.euwp-content/uploads/2020/12/cropped-LOGO-1.png', 0, 'attachment', 'image/png', 0),
(390, 1, '2020-12-22 07:34:19', '2020-12-22 07:34:19', '', '4502441', '', 'inherit', 'open', 'closed', '', '4502441', '', '', '2020-12-22 07:34:19', '2020-12-22 07:34:19', '', 0, 'https://bubotea.euwp-content/uploads/2020/12/4502441.jpg', 0, 'attachment', 'image/jpeg', 0),
(391, 1, '2020-12-22 07:34:29', '2020-12-22 07:34:29', '', 'mockup logo-Recovered', '', 'inherit', 'open', 'closed', '', 'mockup-logo-recovered', '', '', '2020-12-22 07:34:29', '2020-12-22 07:34:29', '', 0, 'https://bubotea.euwp-content/uploads/2020/12/mockup-logo-Recovered.jpg', 0, 'attachment', 'image/jpeg', 0),
(392, 1, '2020-12-22 07:35:47', '2020-12-22 07:35:47', '', '4502441', '', 'inherit', 'open', 'closed', '', '4502441-2', '', '', '2020-12-22 07:35:47', '2020-12-22 07:35:47', '', 0, 'https://bubotea.euwp-content/uploads/2020/12/4502441-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(393, 1, '2020-12-22 07:35:53', '2020-12-22 07:35:53', '', 'mockup logo-Recovered', '', 'inherit', 'open', 'closed', '', 'mockup-logo-recovered-2', '', '', '2020-12-22 07:35:53', '2020-12-22 07:35:53', '', 0, 'https://bubotea.euwp-content/uploads/2020/12/mockup-logo-Recovered-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(400, 1, '2020-12-22 10:23:34', '2020-12-22 10:23:34', '', 'Order &ndash; Tháng Mười Hai 22, 2020 @ 10:23 Sáng', '', 'wc-processing', 'open', 'closed', 'wc_order_pr1Sv4vUbjZBq', 'don-hang-dec-22-2020-1023-am', '', '', '2020-12-22 10:23:35', '2020-12-22 10:23:35', '', 0, 'https://bubotea.eu?post_type=shop_order&#038;p=400', 0, 'shop_order', '', 1),
(401, 1, '2020-12-22 10:27:47', '2020-12-22 10:27:47', '', 'Order &ndash; Tháng Mười Hai 22, 2020 @ 10:27 Sáng', '', 'wc-completed', 'closed', 'closed', 'wc_order_MO1AiaR7gsUkc', 'don-hang-dec-22-2020-1027-am', '', '', '2020-12-22 10:30:22', '2020-12-22 10:30:22', '', 0, 'https://bubotea.eu?post_type=shop_order&#038;p=401', 0, 'shop_order', '', 2),
(402, 1, '2020-12-22 10:44:01', '2020-12-22 10:44:01', '', 'Order &ndash; Tháng Mười Hai 22, 2020 @ 10:44 Sáng', '', 'wc-processing', 'open', 'closed', 'wc_order_3YlecTYx8AbqW', 'don-hang-dec-22-2020-1044-am', '', '', '2020-12-22 10:44:01', '2020-12-22 10:44:01', '', 0, 'https://bubotea.eu?post_type=shop_order&#038;p=402', 0, 'shop_order', '', 1),
(403, 1, '2020-12-22 10:52:54', '2020-12-22 10:52:54', '', 'Order &ndash; Tháng Mười Hai 22, 2020 @ 10:52 Sáng', '', 'wc-processing', 'open', 'closed', 'wc_order_ryLuFZqfEmdrz', 'don-hang-dec-22-2020-1052-am', '', '', '2020-12-22 10:52:55', '2020-12-22 10:52:55', '', 0, 'https://bubotea.eu?post_type=shop_order&#038;p=403', 0, 'shop_order', '', 1),
(417, 1, '2020-12-28 02:39:22', '2020-12-28 02:39:22', '', 'Thanh Toán new', '', 'publish', 'closed', 'closed', '', 'thanh-toan-new', '', '', '2020-12-28 02:39:25', '2020-12-28 02:39:25', '', 0, 'https://bubotea.eu?page_id=417', 0, 'page', '', 0);
INSERT INTO `3kuF9kxQ_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(443, 1, '2020-12-28 09:15:13', '2020-12-28 09:15:13', '', 'khoaimon1', '', 'inherit', 'open', 'closed', '', 'khoaimon1', '', '', '2020-12-28 09:15:13', '2020-12-28 09:15:13', '', 59, 'https://bubotea.euwp-content/uploads/2020/12/khoaimon1.png', 0, 'attachment', 'image/png', 0),
(444, 1, '2020-12-28 09:23:44', '2020-12-28 09:23:44', '', 'peach1', '', 'inherit', 'open', 'closed', '', 'peach1', '', '', '2020-12-28 09:23:44', '2020-12-28 09:23:44', '', 85, 'https://bubotea.euwp-content/uploads/2020/12/peach1.png', 0, 'attachment', 'image/png', 0),
(446, 1, '2020-12-28 09:27:43', '2020-12-28 09:27:43', '', 'Thaido1', '', 'inherit', 'open', 'closed', '', 'thaido1', '', '', '2020-12-28 09:27:43', '2020-12-28 09:27:43', '', 85, 'https://bubotea.euwp-content/uploads/2020/12/Thaido1.png', 0, 'attachment', 'image/png', 0),
(447, 1, '2020-12-28 09:28:16', '2020-12-28 09:28:16', '', 'thaixanh1', '', 'inherit', 'open', 'closed', '', 'thaixanh1', '', '', '2020-12-28 09:28:16', '2020-12-28 09:28:16', '', 85, 'https://bubotea.euwp-content/uploads/2020/12/thaixanh1.png', 0, 'attachment', 'image/png', 0),
(448, 1, '2020-12-28 09:28:51', '2020-12-28 09:28:51', '', 'tropical1', '', 'inherit', 'open', 'closed', '', 'tropical1', '', '', '2020-12-28 09:28:51', '2020-12-28 09:28:51', '', 85, 'https://bubotea.euwp-content/uploads/2020/12/tropical1.png', 0, 'attachment', 'image/png', 0),
(449, 1, '2020-12-28 09:29:24', '2020-12-28 09:29:24', '', 'Truyenthong1', '', 'inherit', 'open', 'closed', '', 'truyenthong1', '', '', '2020-12-28 09:29:24', '2020-12-28 09:29:24', '', 85, 'https://bubotea.euwp-content/uploads/2020/12/Truyenthong1.png', 0, 'attachment', 'image/png', 0),
(452, 1, '2020-12-29 09:29:32', '2020-12-29 09:29:32', '', '4606079', '', 'inherit', 'open', 'closed', '', '4606079', '', '', '2020-12-29 09:29:32', '2020-12-29 09:29:32', '', 130, 'https://bubotea.euwp-content/uploads/2020/12/4606079.jpg', 0, 'attachment', 'image/jpeg', 0),
(454, 1, '2020-12-29 09:34:01', '2020-12-29 09:34:01', '', '4735478', '', 'inherit', 'open', 'closed', '', '4735478', '', '', '2020-12-29 09:34:01', '2020-12-29 09:34:01', '', 0, 'https://bubotea.euwp-content/uploads/2020/12/4735478.jpg', 0, 'attachment', 'image/jpeg', 0),
(456, 1, '2020-12-29 09:45:21', '2020-12-29 09:45:21', '', '17902348', '', 'inherit', 'open', 'closed', '', '17902348', '', '', '2020-12-29 09:45:21', '2020-12-29 09:45:21', '', 0, 'https://bubotea.euwp-content/uploads/2020/12/17902348.jpg', 0, 'attachment', 'image/jpeg', 0),
(458, 1, '2020-12-29 10:12:16', '2020-12-29 10:12:16', '', 'PHTENK1', '', 'inherit', 'open', 'closed', '', 'phtenk1', '', '', '2020-12-29 10:12:16', '2020-12-29 10:12:16', '', 0, 'https://bubotea.euwp-content/uploads/2020/12/PHTENK1.jpg', 0, 'attachment', 'image/jpeg', 0),
(463, 1, '2020-12-31 09:32:00', '2020-12-31 09:32:00', '', '4686769', '', 'inherit', 'open', 'closed', '', '4686769', '', '', '2020-12-31 09:32:00', '2020-12-31 09:32:00', '', 0, 'https://bubotea.euwp-content/uploads/2020/12/4686769.jpg', 0, 'attachment', 'image/jpeg', 0),
(464, 1, '2020-12-31 09:33:27', '2020-12-31 09:33:27', '', '4686769', '', 'inherit', 'open', 'closed', '', '4686769-2', '', '', '2020-12-31 09:33:27', '2020-12-31 09:33:27', '', 0, 'https://bubotea.euwp-content/uploads/2020/12/4686769.png', 0, 'attachment', 'image/png', 0),
(466, 1, '2020-12-31 09:48:09', '2020-12-31 09:48:09', '', '3326978', '', 'inherit', 'open', 'closed', '', '3326978', '', '', '2020-12-31 09:48:09', '2020-12-31 09:48:09', '', 0, 'https://bubotea.euwp-content/uploads/2020/12/3326978.jpg', 0, 'attachment', 'image/jpeg', 0),
(477, 1, '2021-01-06 04:08:17', '2021-01-06 04:08:17', '', 'Order &ndash; Tháng Một 6, 2021 @ 04:08 Sáng', 'nhẹ tay hàng dễ vỡ', 'wc-processing', 'open', 'closed', 'wc_order_BBcP1srwZwKN6', 'don-hang-jan-06-2021-0408-am', '', '', '2021-01-06 04:08:17', '2021-01-06 04:08:17', '', 0, 'https://bubotea.eu?post_type=shop_order&#038;p=477', 0, 'shop_order', '', 1),
(485, 1, '2021-02-19 07:20:35', '2021-02-19 07:20:35', '', 'LOGO', '', 'inherit', 'open', 'closed', '', 'logo-3', '', '', '2021-02-19 07:20:35', '2021-02-19 07:20:35', '', 0, 'https://bubotea.eu/wp-content/uploads/2021/02/LOGO.png', 0, 'attachment', 'image/png', 0),
(515, 1, '2021-03-22 07:18:38', '2021-03-22 07:18:38', '', 'bannertrasua-1', '', 'inherit', 'open', 'closed', '', 'bannertrasua-1', '', '', '2021-03-22 07:18:38', '2021-03-22 07:18:38', '', 0, 'https://bubotea.eu/wp-content/uploads/2021/03/bannertrasua-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(516, 1, '2021-03-22 07:19:47', '2021-03-22 07:19:47', '[section padding=\"0px\"]\n\n[ux_banner height=\"700px\" bg=\"515\" bg_size=\"original\" bg_pos=\"36% 65%\"]\n\n[text_box width__sm=\"60\" position_x=\"50\" position_y=\"50\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/section]\n[section bg=\"140\" bg_color=\"rgb(255, 255, 251)\"]\n\n[gap visibility=\"hide-for-small\"]\n\n[row]\n\n[col span=\"6\" span__sm=\"12\" animate=\"fadeInLeft\"]\n\n[gap]\n\n[ux_text font_size=\"2.5\" line_height=\"1\" text_align=\"center\" text_color=\"rgb(163, 184, 162)\" class=\"text-left-none\"]\n\n<p>Câu chuyện về</p>\n[/ux_text]\n[ux_text font_size=\"4\" line_height=\"1\" text_align=\"right\" class=\"title-bubotea\"]\n\n<p>BUBO TEA</p>\n[/ux_text]\n[ux_text font_size=\"1.5\" text_color=\"rgb(24, 68, 43)\" class=\"font-text-change\"]\n\n<p>Bubo Tea là thương hiệu trà sữa mang đến thức uống ngọt ngào đậm vị Việt Nam. </p>\n[/ux_text]\n[ux_image id=\"466\" image_size=\"large\" depth=\"4\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"208\" image_size=\"medium\" depth=\"4\"]\n\n[ux_text font_size=\"1.5\" text_color=\"rgb(24, 68, 43)\" class=\"font-text-change\"]\n\n<p>Việc tự mình chuẩn bị nguyên liệu thiên nhiên đạt chuẩn chất lượng chính là ưu tiên hàng đầu của Bubo tea. Chúng tôi tự hào cung cấp những thức uống ngon, phong phú và an toàn cho sức khỏe. </p>\n[/ux_text]\n\n[/col]\n\n[/row]\n\n[/section]\n[ux_image id=\"217\" image_size=\"original\"]\n\n[section bg_color=\"rgb(255, 255, 251)\" padding=\"0px\"]\n\n[gap height=\"40px\"]\n\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"220\" depth=\"4\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"228\" animate=\"fadeInRight\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section bg=\"100\" bg_overlay=\"rgba(251, 251, 251, 0.436)\"]\n\n[ux_text font_size=\"1.5\" text_align=\"center\" text_color=\"rgb(163, 184, 162)\"]\n\n<h1>GIÁ TRỊ CỐT LÕI</h1>\n[/ux_text]\n[row v_align=\"middle\"]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"458\" depth=\"4\"]\n\n\n[/col]\n[col span=\"8\" span__sm=\"12\" animate=\"fadeInRight\"]\n\n[ux_text font_size=\"1.2\" text_align=\"left\" text_color=\"rgb(24, 68, 43)\" class=\"text-image font-text-change\"]\n\n<h1 style=\"font-family: Fontedit3\">Chân thành</h1>\n<p>Chúng tôi tin rằng, khi làm việc với tất cả sự chân thành và tôn trọng đều sẽ mang lại những điều tuyệt vời nhất đến với khách hàng.</p>\n[/ux_text]\n\n[/col]\n\n[/row]\n[row v_align=\"middle\"]\n\n[col span=\"8\" span__sm=\"12\" animate=\"fadeInLeft\"]\n\n[ux_text font_size=\"1.2\" text_align=\"left\" text_color=\"rgb(24, 68, 43)\" class=\"text-image font-text-change\"]\n\n<h1 style=\"font-family: Fontedit3\">Quan tâm</h1>\n<p>Bubo tea luôn quan tâm đến từng suy nghĩ và cảm nhận của khách hàng, nhân viên và cộng đồng. Vì khi có bạn, chúng tôi như được tiếp thêm sức mạnh để cùng lan tỏa những giá trị tốt đẹp..</p>\n[/ux_text]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"454\" depth=\"4\"]\n\n\n[/col]\n\n[/row]\n[row v_align=\"middle\"]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"452\" depth=\"4\"]\n\n\n[/col]\n[col span=\"8\" span__sm=\"12\" animate=\"fadeInRight\"]\n\n[ux_text font_size=\"1.2\" text_align=\"left\" text_color=\"rgb(24, 68, 43)\" class=\"text-image font-text-change\"]\n\n<h1 style=\"font-family: Fontedit3\">Sáng tạo</h1>\n<p>Chúng tôi luôn không ngừng nổ lực đem lại những sản phẩm mang dấu ấn khác biệt và tuyệt vời nhất cho khách hàng.</p>\n[/ux_text]\n\n[/col]\n\n[/row]\n[row v_align=\"middle\"]\n\n[col span=\"8\" span__sm=\"12\" animate=\"fadeInLeft\"]\n\n[ux_text font_size=\"1.2\" text_align=\"left\" text_color=\"rgb(24, 68, 43)\" class=\"text-image font-text-change\"]\n\n<h1 style=\"font-family: Fontedit3\">Dũng cảm</h1>\n<p>Nổ lực mang thương hiệu trà Việt Nam ra thế giới là mục tiêu hàng đầu của Bubo tea.</p>\n[/ux_text]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"456\" image_size=\"original\" depth=\"4\"]\n\n\n[/col]\n\n[/row]\n\n[/section]', 'CÂU CHUYỆN THƯƠNG HIỆU', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2021-03-22 07:19:47', '2021-03-22 07:19:47', '', 15, 'https://bubotea.eu/?p=516', 0, 'revision', '', 0),
(517, 1, '2021-03-22 07:20:59', '2021-03-22 07:20:59', '[section padding=\"0px\"]\n\n[ux_banner height=\"700px\" bg=\"515\" bg_size=\"original\" bg_pos=\"40% 71%\"]\n\n[text_box width__sm=\"60\" position_x=\"50\" position_y=\"50\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/section]\n[section bg=\"140\" bg_color=\"rgb(255, 255, 251)\"]\n\n[gap visibility=\"hide-for-small\"]\n\n[row]\n\n[col span=\"6\" span__sm=\"12\" animate=\"fadeInLeft\"]\n\n[gap]\n\n[ux_text font_size=\"2.5\" line_height=\"1\" text_align=\"center\" text_color=\"rgb(163, 184, 162)\" class=\"text-left-none\"]\n\n<p>Câu chuyện về</p>\n[/ux_text]\n[ux_text font_size=\"4\" line_height=\"1\" text_align=\"right\" class=\"title-bubotea\"]\n\n<p>BUBO TEA</p>\n[/ux_text]\n[ux_text font_size=\"1.5\" text_color=\"rgb(24, 68, 43)\" class=\"font-text-change\"]\n\n<p>Bubo Tea là thương hiệu trà sữa mang đến thức uống ngọt ngào đậm vị Việt Nam. </p>\n[/ux_text]\n[ux_image id=\"466\" image_size=\"large\" depth=\"4\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"208\" image_size=\"medium\" depth=\"4\"]\n\n[ux_text font_size=\"1.5\" text_color=\"rgb(24, 68, 43)\" class=\"font-text-change\"]\n\n<p>Việc tự mình chuẩn bị nguyên liệu thiên nhiên đạt chuẩn chất lượng chính là ưu tiên hàng đầu của Bubo tea. Chúng tôi tự hào cung cấp những thức uống ngon, phong phú và an toàn cho sức khỏe. </p>\n[/ux_text]\n\n[/col]\n\n[/row]\n\n[/section]\n[ux_image id=\"217\" image_size=\"original\"]\n\n[section bg_color=\"rgb(255, 255, 251)\" padding=\"0px\"]\n\n[gap height=\"40px\"]\n\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"220\" depth=\"4\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"228\" animate=\"fadeInRight\"]\n\n\n[/col]\n\n[/row]\n\n[/section]\n[section bg=\"100\" bg_overlay=\"rgba(251, 251, 251, 0.436)\"]\n\n[ux_text font_size=\"1.5\" text_align=\"center\" text_color=\"rgb(163, 184, 162)\"]\n\n<h1>GIÁ TRỊ CỐT LÕI</h1>\n[/ux_text]\n[row v_align=\"middle\"]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"458\" depth=\"4\"]\n\n\n[/col]\n[col span=\"8\" span__sm=\"12\" animate=\"fadeInRight\"]\n\n[ux_text font_size=\"1.2\" text_align=\"left\" text_color=\"rgb(24, 68, 43)\" class=\"text-image font-text-change\"]\n\n<h1 style=\"font-family: Fontedit3\">Chân thành</h1>\n<p>Chúng tôi tin rằng, khi làm việc với tất cả sự chân thành và tôn trọng đều sẽ mang lại những điều tuyệt vời nhất đến với khách hàng.</p>\n[/ux_text]\n\n[/col]\n\n[/row]\n[row v_align=\"middle\"]\n\n[col span=\"8\" span__sm=\"12\" animate=\"fadeInLeft\"]\n\n[ux_text font_size=\"1.2\" text_align=\"left\" text_color=\"rgb(24, 68, 43)\" class=\"text-image font-text-change\"]\n\n<h1 style=\"font-family: Fontedit3\">Quan tâm</h1>\n<p>Bubo tea luôn quan tâm đến từng suy nghĩ và cảm nhận của khách hàng, nhân viên và cộng đồng. Vì khi có bạn, chúng tôi như được tiếp thêm sức mạnh để cùng lan tỏa những giá trị tốt đẹp..</p>\n[/ux_text]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"454\" depth=\"4\"]\n\n\n[/col]\n\n[/row]\n[row v_align=\"middle\"]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"452\" depth=\"4\"]\n\n\n[/col]\n[col span=\"8\" span__sm=\"12\" animate=\"fadeInRight\"]\n\n[ux_text font_size=\"1.2\" text_align=\"left\" text_color=\"rgb(24, 68, 43)\" class=\"text-image font-text-change\"]\n\n<h1 style=\"font-family: Fontedit3\">Sáng tạo</h1>\n<p>Chúng tôi luôn không ngừng nổ lực đem lại những sản phẩm mang dấu ấn khác biệt và tuyệt vời nhất cho khách hàng.</p>\n[/ux_text]\n\n[/col]\n\n[/row]\n[row v_align=\"middle\"]\n\n[col span=\"8\" span__sm=\"12\" animate=\"fadeInLeft\"]\n\n[ux_text font_size=\"1.2\" text_align=\"left\" text_color=\"rgb(24, 68, 43)\" class=\"text-image font-text-change\"]\n\n<h1 style=\"font-family: Fontedit3\">Dũng cảm</h1>\n<p>Nổ lực mang thương hiệu trà Việt Nam ra thế giới là mục tiêu hàng đầu của Bubo tea.</p>\n[/ux_text]\n\n[/col]\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"456\" image_size=\"original\" depth=\"4\"]\n\n\n[/col]\n\n[/row]\n\n[/section]', 'CÂU CHUYỆN THƯƠNG HIỆU', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2021-03-22 07:20:59', '2021-03-22 07:20:59', '', 15, 'https://bubotea.eu/?p=517', 0, 'revision', '', 0),
(519, 1, '2021-03-26 01:33:44', '2021-03-26 01:33:44', '[section label=\"DESKTOP\" padding=\"0px\" visibility=\"hide-for-small\"]\n\n[ux_slider]\n\n[ux_banner height=\"700px\" bg=\"254\" bg_size=\"original\" bg_pos=\"0% 48%\" effect=\"snow\"]\n\n[text_box width__sm=\"60\" position_x=\"50\" position_y=\"50\"]\n\n\n[/text_box]\n\n[/ux_banner]\n[ux_banner height=\"100%\" bg=\"345\" bg_size=\"original\" effect=\"snow\"]\n\n[text_box width__sm=\"60\" position_x=\"50\" position_y=\"50\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/ux_slider]\n\n[/section]\n[section label=\"MOBILE\" padding=\"0px\" visibility=\"show-for-small\"]\n\n[ux_slider]\n\n[ux_banner height=\"100%\" height__sm=\"100%\" bg=\"347\" bg_size=\"original\"]\n\n[text_box width__sm=\"60\" position_x=\"50\" position_y=\"50\"]\n\n\n[/text_box]\n\n[/ux_banner]\n[ux_banner height=\"100%\" bg=\"348\" bg_size=\"original\"]\n\n[text_box width__sm=\"60\" position_x=\"50\" position_y=\"50\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/ux_slider]\n\n[/section]\n[section bg=\"100\" bg_overlay=\"rgba(255, 255, 255, 0.483)\"]\n\n[title style=\"center\" text=\"menu bubo tea\" size=\"200\" link_text=\"Còn nữa\" link=\"/san-pham/\" class=\"title-butotea\"]\n\n[ux_products type=\"row\" columns=\"3\" show_cat=\"0\" equalize_box=\"true\" class=\"product-design\"]\n\n\n[/section]\n[section bg=\"140\" bg_overlay=\"rgba(255, 255, 255, 0.488)\"]\n\n[title style=\"center\" text=\"BLOG\" size=\"200\" link_text=\"Xem thêm\" link=\"/tin-tuc/\" class=\"title-butotea\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[ux_image id=\"390\"]\n\n\n[/col]\n\n[/row]\n[title style=\"center\" text=\"giá trị cốt lõi\" tag_name=\"h1\" color=\"rgb(163, 184, 162)\"]\n\n[blog_posts style=\"normal\" columns__md=\"1\" show_date=\"false\" excerpt_length=\"9\" image_height=\"56.25%\" class=\"bubotea-blog\"]\n\n\n[/section]\n[section bg=\"158\"]\n\n[title style=\"center\" text=\"cửa hàng\" size=\"200\" class=\"title-butotea\"]\n\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"391\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\" class=\"col-right\"]\n\n[ux_text text_align=\"center\" text_color=\"rgb(255, 255, 255)\" class=\"text-top\"]\n\n<h1>BUBO TEA</h1>\n[/ux_text]\n[ux_text font_size=\"0.75\" text_color=\"rgb(255, 255, 255)\" class=\"font-text-change\"]\n\n<p style=\"font-size: 20px\">Bubo Tea là thương hiệu trà sữa mang đến thức uống ngọt ngào hương vị Việt. Việc tự mình chuẩn bị nguyên liệu thiên nhiên đạt chuẩn chất lượng chính là ưu tiên hàng đầu của Bubo tea. Chúng tôi tự hào cung cấp những thức uống ngon, phong phú và an toàn cho sức khỏe.\nMỗi sản phẩm được tạo ra là tâm huyết chúng tôi muốn gửi đến nơi bạn.</p>\n[/ux_text]\n\n[/col]\n\n[/row]\n\n[/section]', 'Trang chu', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2021-03-26 01:33:44', '2021-03-26 01:33:44', '', 6, 'https://bubotea.eu/?p=519', 0, 'revision', '', 0),
(520, 1, '2021-03-26 01:34:22', '2021-03-26 01:34:22', '[section label=\"DESKTOP\" padding=\"0px\" visibility=\"hide-for-small\"]\n\n[ux_slider]\n\n[ux_banner height=\"700px\" bg=\"254\" bg_size=\"original\" bg_pos=\"0% 48%\" effect=\"snow\"]\n\n[text_box width__sm=\"60\" position_x=\"50\" position_y=\"50\"]\n\n\n[/text_box]\n\n[/ux_banner]\n[ux_banner height=\"700px\" bg=\"345\" bg_size=\"original\" bg_pos=\"0% 52%\" effect=\"snow\"]\n\n[text_box width__sm=\"60\" position_x=\"50\" position_y=\"50\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/ux_slider]\n\n[/section]\n[section label=\"MOBILE\" padding=\"0px\" visibility=\"show-for-small\"]\n\n[ux_slider]\n\n[ux_banner height=\"100%\" height__sm=\"100%\" bg=\"347\" bg_size=\"original\"]\n\n[text_box width__sm=\"60\" position_x=\"50\" position_y=\"50\"]\n\n\n[/text_box]\n\n[/ux_banner]\n[ux_banner height=\"100%\" bg=\"348\" bg_size=\"original\"]\n\n[text_box width__sm=\"60\" position_x=\"50\" position_y=\"50\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/ux_slider]\n\n[/section]\n[section bg=\"100\" bg_overlay=\"rgba(255, 255, 255, 0.483)\"]\n\n[title style=\"center\" text=\"menu bubo tea\" size=\"200\" link_text=\"Còn nữa\" link=\"/san-pham/\" class=\"title-butotea\"]\n\n[ux_products type=\"row\" columns=\"3\" show_cat=\"0\" equalize_box=\"true\" class=\"product-design\"]\n\n\n[/section]\n[section bg=\"140\" bg_overlay=\"rgba(255, 255, 255, 0.488)\"]\n\n[title style=\"center\" text=\"BLOG\" size=\"200\" link_text=\"Xem thêm\" link=\"/tin-tuc/\" class=\"title-butotea\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[ux_image id=\"390\"]\n\n\n[/col]\n\n[/row]\n[title style=\"center\" text=\"giá trị cốt lõi\" tag_name=\"h1\" color=\"rgb(163, 184, 162)\"]\n\n[blog_posts style=\"normal\" columns__md=\"1\" show_date=\"false\" excerpt_length=\"9\" image_height=\"56.25%\" class=\"bubotea-blog\"]\n\n\n[/section]\n[section bg=\"158\"]\n\n[title style=\"center\" text=\"cửa hàng\" size=\"200\" class=\"title-butotea\"]\n\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"391\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\" class=\"col-right\"]\n\n[ux_text text_align=\"center\" text_color=\"rgb(255, 255, 255)\" class=\"text-top\"]\n\n<h1>BUBO TEA</h1>\n[/ux_text]\n[ux_text font_size=\"0.75\" text_color=\"rgb(255, 255, 255)\" class=\"font-text-change\"]\n\n<p style=\"font-size: 20px\">Bubo Tea là thương hiệu trà sữa mang đến thức uống ngọt ngào hương vị Việt. Việc tự mình chuẩn bị nguyên liệu thiên nhiên đạt chuẩn chất lượng chính là ưu tiên hàng đầu của Bubo tea. Chúng tôi tự hào cung cấp những thức uống ngon, phong phú và an toàn cho sức khỏe.\nMỗi sản phẩm được tạo ra là tâm huyết chúng tôi muốn gửi đến nơi bạn.</p>\n[/ux_text]\n\n[/col]\n\n[/row]\n\n[/section]', 'Trang chu', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2021-03-26 01:34:22', '2021-03-26 01:34:22', '', 6, 'https://bubotea.eu/?p=520', 0, 'revision', '', 0),
(521, 1, '2021-03-26 01:41:10', '2021-03-26 01:41:10', '{\n    \"sidebars_widgets[shop-sidebar]\": {\n        \"value\": [\n            \"woocommerce_recently_viewed_products-3\",\n            \"woocommerce_products-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-26 01:41:10\"\n    },\n    \"widget_woocommerce_price_filter[3]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-26 01:41:10\"\n    },\n    \"widget_woocommerce_product_categories[5]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-26 01:41:10\"\n    },\n    \"widget_woocommerce_products[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo3OntzOjU6InRpdGxlIjtzOjI0OiJT4bqjbiBwaOG6qW0gbuG7lWkgYuG6rXQiO3M6NjoibnVtYmVyIjtpOjY7czo0OiJzaG93IjtzOjg6ImZlYXR1cmVkIjtzOjc6Im9yZGVyYnkiO3M6NDoiZGF0ZSI7czo1OiJvcmRlciI7czo0OiJkZXNjIjtzOjk6ImhpZGVfZnJlZSI7aTowO3M6MTE6InNob3dfaGlkZGVuIjtpOjA7fQ==\",\n            \"title\": \"S\\u1ea3n ph\\u1ea9m n\\u1ed5i b\\u1eadt\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"009016484208c1a7a3ea2a279ba6c953\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-26 01:41:10\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '63f2e708-7f0d-440d-94a9-56b8a4f45ba2', '', '', '2021-03-26 01:41:10', '2021-03-26 01:41:10', '', 0, 'https://bubotea.eu/63f2e708-7f0d-440d-94a9-56b8a4f45ba2/', 0, 'customize_changeset', '', 0),
(522, 1, '2021-03-26 01:42:15', '2021-03-26 01:42:15', '{\n    \"widget_woocommerce_products[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo3OntzOjU6InRpdGxlIjtzOjI0OiJT4bqjbiBwaOG6qW0gbuG7lWkgYuG6rXQiO3M6NjoibnVtYmVyIjtpOjU7czo0OiJzaG93IjtzOjg6ImZlYXR1cmVkIjtzOjc6Im9yZGVyYnkiO3M6NDoiZGF0ZSI7czo1OiJvcmRlciI7czo0OiJkZXNjIjtzOjk6ImhpZGVfZnJlZSI7aTowO3M6MTE6InNob3dfaGlkZGVuIjtpOjA7fQ==\",\n            \"title\": \"S\\u1ea3n ph\\u1ea9m n\\u1ed5i b\\u1eadt\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"a94be4a752adc1f4a256284c510e0032\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-26 01:42:15\"\n    },\n    \"sidebars_widgets[shop-sidebar]\": {\n        \"value\": [\n            \"woocommerce_recently_viewed_products-3\",\n            \"woocommerce_products-5\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-26 01:42:15\"\n    },\n    \"widget_woocommerce_products[5]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo3OntzOjU6InRpdGxlIjtzOjI0OiJT4bqjbiBwaOG6qW0gbuG7lWkgYuG6rXQiO3M6NjoibnVtYmVyIjtpOjU7czo0OiJzaG93IjtzOjA6IiI7czo3OiJvcmRlcmJ5IjtzOjQ6ImRhdGUiO3M6NToib3JkZXIiO3M6NDoiZGVzYyI7czo5OiJoaWRlX2ZyZWUiO2k6MDtzOjExOiJzaG93X2hpZGRlbiI7aTowO30=\",\n            \"title\": \"S\\u1ea3n ph\\u1ea9m n\\u1ed5i b\\u1eadt\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"695f7e195527788524e8cbdc50cbab2d\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-26 01:42:15\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6e53a717-8bfe-4fdc-9efc-218e22ea9ce0', '', '', '2021-03-26 01:42:15', '2021-03-26 01:42:15', '', 0, 'https://bubotea.eu/6e53a717-8bfe-4fdc-9efc-218e22ea9ce0/', 0, 'customize_changeset', '', 0),
(524, 1, '2021-03-30 08:21:26', '2021-03-30 08:21:26', '{\n    \"flatsome::site_logo_dark\": {\n        \"value\": \"https://bubotea.com/wp-content/uploads/2021/02/LOGO.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-30 08:21:16\"\n    },\n    \"flatsome::site_logo\": {\n        \"value\": \"https://bubotea.com/wp-content/uploads/2021/02/LOGO.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-30 08:21:26\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6cf2d8a8-be43-4ff0-b44e-f96a141daf20', '', '', '2021-03-30 08:21:26', '2021-03-30 08:21:26', '', 0, 'https://bubotea.com/?p=524', 0, 'customize_changeset', '', 0),
(525, 1, '2021-03-30 08:36:04', '2021-03-30 08:36:04', '[section label=\"Footer\" bg_color=\"rgb(163, 184, 162)\"]\n\n[gap height=\"20px\"]\n\n[row label=\"Icon Boxes\"]\n\n[col span__sm=\"12\"]\n\n[row_inner style=\"small\"]\n\n[col_inner span=\"4\" span__sm=\"12\" span__md=\"6\"]\n\n[featured_box img=\"172\" img_width=\"25\" pos=\"center\"]\n\n[ux_text text_color=\"rgb(0, 0, 0)\"]\n\n<p><span style=\"font-size: 90%;\"><strong>Từ 100% tự nhiên</strong></span></p>\n[/ux_text]\n\n[/featured_box]\n\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\" span__md=\"6\"]\n\n[featured_box img=\"174\" img_width=\"25\" pos=\"center\"]\n\n[ux_text text_color=\"rgb(0, 0, 0)\"]\n\n<p><span style=\"font-size: 90%;\"><strong>Hương vị Việt</strong></span></p>\n[/ux_text]\n\n[/featured_box]\n\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\" span__md=\"6\"]\n\n[featured_box img=\"175\" img_width=\"25\" pos=\"center\"]\n\n[ux_text text_color=\"rgb(0, 0, 0)\"]\n\n<p><span style=\"font-size: 90%;\"><strong>Luôn lắng nghe đóng góp</strong></span></p>\n[/ux_text]\n\n[/featured_box]\n\n[/col_inner]\n\n[/row_inner]\n[divider width=\"100%\" height=\"1px\" margin=\"1.5em\"]\n\n\n[/col]\n\n[/row]\n[row label=\"Info + Links + Newsletter\" style=\"small\"]\n\n[col span=\"4\" span__sm=\"12\" span__md=\"12\"]\n\n[ux_text text_color=\"rgb(0, 0, 0)\" class=\"icon-footer\"]\n\n<h5>BUBO TEA</h5>\n<p><span style=\"font-size: 90%;\">Hotline: +31 618 235 898</span></p>\n<p><span style=\"font-size: 90%;\">Địa chỉ: naritaweg 14, 1043 BZ Amsterdam</span></p>\n<p><span style=\"font-size: 90%;\">Email: info@bubotea.nl</span></p>\n<p><span style=\"font-size: 90%;\">Facebook: @BuBotea.official</span></p>\n<a href=\"tel:+31618235898\"><i class=\"fas fa-phone-alt\"></i><strong>CALL US</strong></a>\n<a href=\"mailto:info@bubotea.nl\"><i class=\"fas fa-envelope\"></i></i><strong>EMAIL US</strong></a>\n[/ux_text]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" span__md=\"12\"]\n\n[row_inner style=\"collapse\"]\n\n[col_inner span=\"6\" span__sm=\"12\"]\n\n[ux_text text_color=\"rgb(0, 0, 0)\" class=\"text-white\"]\n\n<h5>Khách Hàng</h5>\n<ul>\n<li class=\"bullet-arrow\"><span style=\"font-size: 90%;\"><a href=\"/trasua/cart/\">Đơn hàng của tôi</a></span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 90%;\"><a href=\"/trasua/cau-chuyen-thuong-hieu/\">Giới thiệu</a></span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 90%;\"><a href=\"/trasua/vung-nguyen-lieu/\">Vùng nguyên liệu</a></span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 90%;\"><a href=\"/trasua/tin-tuc/\">Tin tức</a></span></li>\n</ul>\n[/ux_text]\n\n[/col_inner]\n[col_inner span=\"6\" span__sm=\"12\"]\n\n[ux_text text_color=\"rgb(0, 0, 0)\" class=\"text-white\"]\n\n<h5>Liên hệ</h5>\n<ul>\n<li class=\"bullet-arrow\"><span style=\"font-size: 90%;\"><a href=\"/lien-he/\">Liên hệ</a></span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 90%;\"><a href=\"/\">Trang chủ</a></span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 90%;\"><a href=\"/tin-tuc/\">Blog</a></span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 90%;\"><a href=\"/san-pham/\">Sản phẩm</a></span></li>\n</ul>\n[/ux_text]\n\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" span__md=\"12\"]\n\n[ux_text text_color=\"rgb(0, 0, 0)\"]\n\n<h5>Chính sách</h5>\n[/ux_text]\n<ul>\n<li class=\"bullet-arrow\"><span style=\"font-size: 90%;\"><a href=\"#\"> Chính sách bảo mật thông tin</a></span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 90%;\"><a href=\"#\">Chính sách thanh toán - đổi trả</a></span></li>\n</ul>\n[ux_text line_height=\"3\" text_color=\"rgb(0, 0, 0)\"]\n\n<h5>Theo dõi</h5>\n[/ux_text]\n[follow style=\"small\" facebook=\"https://www.facebook.com/BuBotea.official\" email=\"info@bubotea.nl\" phone=\"+31 618 235 898\" class=\"contact-black\"]\n\n\n[/col]\n\n[/row]\n\n[/section]', 'footer', '', 'inherit', 'closed', 'closed', '', '170-revision-v1', '', '', '2021-03-30 08:36:04', '2021-03-30 08:36:04', '', 170, 'https://bubotea.com/?p=525', 0, 'revision', '', 0),
(526, 1, '2021-03-30 08:39:47', '2021-03-30 08:39:47', '[section label=\"DESKTOP\" padding=\"0px\" visibility=\"hide-for-small\"]\n\n[ux_slider]\n\n[ux_banner height=\"700px\" bg=\"254\" bg_size=\"original\" bg_pos=\"0% 48%\"]\n\n[text_box width__sm=\"60\" position_x=\"50\" position_y=\"50\"]\n\n\n[/text_box]\n\n[/ux_banner]\n[ux_banner height=\"700px\" bg=\"345\" bg_size=\"original\" bg_pos=\"0% 52%\"]\n\n[text_box width__sm=\"60\" position_x=\"50\" position_y=\"50\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/ux_slider]\n\n[/section]\n[section label=\"MOBILE\" padding=\"0px\" visibility=\"show-for-small\"]\n\n[ux_slider]\n\n[ux_banner height=\"100%\" height__sm=\"100%\" bg=\"347\" bg_size=\"original\"]\n\n[text_box width__sm=\"60\" position_x=\"50\" position_y=\"50\"]\n\n\n[/text_box]\n\n[/ux_banner]\n[ux_banner height=\"100%\" bg=\"348\" bg_size=\"original\"]\n\n[text_box width__sm=\"60\" position_x=\"50\" position_y=\"50\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/ux_slider]\n\n[/section]\n[section bg=\"100\" bg_overlay=\"rgba(255, 255, 255, 0.483)\"]\n\n[title style=\"center\" text=\"menu bubo tea\" size=\"200\" link_text=\"Còn nữa\" link=\"/san-pham/\" class=\"title-butotea\"]\n\n[ux_products type=\"row\" columns=\"3\" show_cat=\"0\" equalize_box=\"true\" class=\"product-design\"]\n\n\n[/section]\n[section bg=\"140\" bg_overlay=\"rgba(255, 255, 255, 0.488)\"]\n\n[title style=\"center\" text=\"BLOG\" size=\"200\" link_text=\"Xem thêm\" link=\"/tin-tuc/\" class=\"title-butotea\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[ux_image id=\"390\"]\n\n\n[/col]\n\n[/row]\n[title style=\"center\" text=\"giá trị cốt lõi\" tag_name=\"h1\" color=\"rgb(163, 184, 162)\"]\n\n[blog_posts style=\"normal\" columns__md=\"1\" show_date=\"false\" excerpt_length=\"9\" image_height=\"56.25%\" class=\"bubotea-blog\"]\n\n\n[/section]\n[section bg=\"158\"]\n\n[title style=\"center\" text=\"cửa hàng\" size=\"200\" class=\"title-butotea\"]\n\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"391\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\" class=\"col-right\"]\n\n[ux_text text_align=\"center\" text_color=\"rgb(255, 255, 255)\" class=\"text-top\"]\n\n<h1>BUBO TEA</h1>\n[/ux_text]\n[ux_text font_size=\"0.75\" text_color=\"rgb(255, 255, 255)\" class=\"font-text-change\"]\n\n<p style=\"font-size: 20px\">Bubo Tea là thương hiệu trà sữa mang đến thức uống ngọt ngào hương vị Việt. Việc tự mình chuẩn bị nguyên liệu thiên nhiên đạt chuẩn chất lượng chính là ưu tiên hàng đầu của Bubo tea. Chúng tôi tự hào cung cấp những thức uống ngon, phong phú và an toàn cho sức khỏe.\nMỗi sản phẩm được tạo ra là tâm huyết chúng tôi muốn gửi đến nơi bạn.</p>\n[/ux_text]\n\n[/col]\n\n[/row]\n\n[/section]', 'Trang chu', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2021-03-30 08:39:47', '2021-03-30 08:39:47', '', 6, 'https://bubotea.com/?p=526', 0, 'revision', '', 0),
(527, 1, '2021-03-31 07:02:25', '2021-03-31 07:02:25', '{\n    \"flatsome::topbar_right\": {\n        \"value\": \"<!-- GTranslate: https://gtranslate.io/ -->\\n<a href=\\\"#\\\" onclick=\\\"doGTranslate(\'vi|nl\');return false;\\\" title=\\\"Dutch\\\" class=\\\"glink nturl notranslate\\\"><img src=\\\"//bubotea.com/wp-content/plugins/gtranslate/flags/24/nl.png\\\" height=\\\"24\\\" width=\\\"24\\\" alt=\\\"Dutch\\\" /></a><a href=\\\"#\\\" onclick=\\\"doGTranslate(\'vi|en\');return false;\\\" title=\\\"English\\\" class=\\\"glink nturl notranslate\\\"><img src=\\\"//bubotea.com/wp-content/plugins/gtranslate/flags/24/en.png\\\" height=\\\"24\\\" width=\\\"24\\\" alt=\\\"English\\\" /></a><a href=\\\"#\\\" onclick=\\\"doGTranslate(\'vi|de\');return false;\\\" title=\\\"German\\\" class=\\\"glink nturl notranslate\\\"><img src=\\\"//bubotea.com/wp-content/plugins/gtranslate/flags/24/de.png\\\" height=\\\"24\\\" width=\\\"24\\\" alt=\\\"German\\\" /></a><a href=\\\"#\\\" onclick=\\\"doGTranslate(\'vi|vi\');return false;\\\" title=\\\"Vietnamese\\\" class=\\\"glink nturl notranslate\\\"><img src=\\\"//bubotea.com/wp-content/plugins/gtranslate/flags/24/vi.png\\\" height=\\\"24\\\" width=\\\"24\\\" alt=\\\"Vietnamese\\\" /></a><style>\\n#goog-gt-tt {display:none !important;}\\n.goog-te-banner-frame {display:none !important;}\\n.goog-te-menu-value:hover {text-decoration:none !important;}\\n.goog-text-highlight {background-color:transparent !important;box-shadow:none !important;}\\nbody {top:0 !important;}\\n#google_translate_element2 {display:none!important;}\\n</style>\\n\\n<div id=\\\"google_translate_element2\\\"></div>\\n<script>\\nfunction googleTranslateElementInit2() {new google.translate.TranslateElement({pageLanguage: \'vi\',autoDisplay: false}, \'google_translate_element2\');}\\n</script><script src=\\\"//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit2\\\"></script>\\n\\n\\n<script>\\nfunction GTranslateGetCurrentLang() {var keyValue = document[\'cookie\'].match(\'(^|;) ?googtrans=([^;]*)(;|$)\');return keyValue ? keyValue[2].split(\'/\')[2] : null;}\\nfunction GTranslateFireEvent(element,event){try{if(document.createEventObject){var evt=document.createEventObject();element.fireEvent(\'on\'+event,evt)}else{var evt=document.createEvent(\'HTMLEvents\');evt.initEvent(event,true,true);element.dispatchEvent(evt)}}catch(e){}}\\nfunction doGTranslate(lang_pair){if(lang_pair.value)lang_pair=lang_pair.value;if(lang_pair==\'\')return;var lang=lang_pair.split(\'|\')[1];if(GTranslateGetCurrentLang() == null && lang == lang_pair.split(\'|\')[0])return;var teCombo;var sel=document.getElementsByTagName(\'select\');for(var i=0;i<sel.length;i++)if(sel[i].className.indexOf(\'goog-te-combo\')!=-1){teCombo=sel[i];break;}if(document.getElementById(\'google_translate_element2\')==null||document.getElementById(\'google_translate_element2\').innerHTML.length==0||teCombo.length==0||teCombo.innerHTML.length==0){setTimeout(function(){doGTranslate(lang_pair)},500)}else{teCombo.value=lang;GTranslateFireEvent(teCombo,\'change\');GTranslateFireEvent(teCombo,\'change\')}}\\n</script>\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-31 07:02:25\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b98e2db3-83e7-4b22-b57a-273f5455612a', '', '', '2021-03-31 07:02:25', '2021-03-31 07:02:25', '', 0, 'https://bubotea.com/b98e2db3-83e7-4b22-b57a-273f5455612a/', 0, 'customize_changeset', '', 0),
(529, 1, '2021-04-12 04:07:01', '2021-04-12 04:07:01', '[section label=\"DESKTOP\" padding=\"0px\" visibility=\"hide-for-small\"]\n\n[ux_slider]\n\n[ux_banner height=\"700px\" bg=\"254\" bg_size=\"original\" bg_pos=\"50% 31%\"]\n\n[text_box width__sm=\"60\" position_x=\"50\" position_y=\"50\"]\n\n\n[/text_box]\n\n[/ux_banner]\n[ux_banner height=\"700px\" bg=\"345\" bg_size=\"original\" bg_pos=\"50% 33%\"]\n\n[text_box width__sm=\"60\" position_x=\"50\" position_y=\"50\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/ux_slider]\n\n[/section]\n[section label=\"MOBILE\" padding=\"0px\" visibility=\"show-for-small\"]\n\n[ux_slider]\n\n[ux_banner height=\"100%\" height__sm=\"100%\" bg=\"347\" bg_size=\"original\"]\n\n[text_box width__sm=\"60\" position_x=\"50\" position_y=\"50\"]\n\n\n[/text_box]\n\n[/ux_banner]\n[ux_banner height=\"100%\" bg=\"348\" bg_size=\"original\"]\n\n[text_box width__sm=\"60\" position_x=\"50\" position_y=\"50\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/ux_slider]\n\n[/section]\n[section bg=\"100\" bg_overlay=\"rgba(255, 255, 255, 0.483)\"]\n\n[title style=\"center\" text=\"menu bubo tea\" size=\"200\" link_text=\"Còn nữa\" link=\"/san-pham/\" class=\"title-butotea\"]\n\n[ux_products type=\"row\" columns=\"3\" show_cat=\"0\" equalize_box=\"true\" class=\"product-design\"]\n\n\n[/section]\n[section bg=\"140\" bg_overlay=\"rgba(255, 255, 255, 0.488)\"]\n\n[title style=\"center\" text=\"BLOG\" size=\"200\" link_text=\"Xem thêm\" link=\"/tin-tuc/\" class=\"title-butotea\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[ux_image id=\"390\"]\n\n\n[/col]\n\n[/row]\n[title style=\"center\" text=\"giá trị cốt lõi\" tag_name=\"h1\" color=\"rgb(163, 184, 162)\"]\n\n[blog_posts style=\"normal\" columns__md=\"1\" show_date=\"false\" excerpt_length=\"9\" image_height=\"56.25%\" class=\"bubotea-blog\"]\n\n\n[/section]\n[section bg=\"158\"]\n\n[title style=\"center\" text=\"cửa hàng\" size=\"200\" class=\"title-butotea\"]\n\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"391\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\" class=\"col-right\"]\n\n[ux_text text_align=\"center\" text_color=\"rgb(255, 255, 255)\" class=\"text-top\"]\n\n<h1>BUBO TEA</h1>\n[/ux_text]\n[ux_text font_size=\"0.75\" text_color=\"rgb(255, 255, 255)\" class=\"font-text-change\"]\n\n<p style=\"font-size: 20px\">Bubo Tea là thương hiệu trà sữa mang đến thức uống ngọt ngào hương vị Việt. Việc tự mình chuẩn bị nguyên liệu thiên nhiên đạt chuẩn chất lượng chính là ưu tiên hàng đầu của Bubo tea. Chúng tôi tự hào cung cấp những thức uống ngon, phong phú và an toàn cho sức khỏe.\nMỗi sản phẩm được tạo ra là tâm huyết chúng tôi muốn gửi đến nơi bạn.</p>\n[/ux_text]\n\n[/col]\n\n[/row]\n\n[/section]', 'Trang chu', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2021-04-12 04:07:01', '2021-04-12 04:07:01', '', 6, 'https://bubotea.com/6-revision-v1/', 0, 'revision', '', 0),
(530, 1, '2021-04-12 04:18:16', '2021-04-12 04:18:16', '[ux_banner height=\"500px\" bg=\"294\"]\n\n[text_box width__sm=\"60\" position_x=\"50\" position_y=\"50\"]\n\n\n[/text_box]\n\n[/ux_banner]\n[row]\n\n[col span=\"6\" span__sm=\"12\" animate=\"fadeInLeft\"]\n\n[ux_text font_size=\"1.5\" text_align=\"left\"]\n\n<h1 style=\"font-family: Fontedit3;margin:0\">Câu chuyện về</h1>\n[/ux_text]\n[ux_text font_size=\"2.5\" text_align=\"center\"]\n\n<h1 style=\"font-family: Fontedit3;margin:0\">TRÀ</h1>\n[/ux_text]\n[ux_text font_size=\"1.2\" class=\"text-green font-text-change\"]\n\n<p>Việt Nam - quê hương của những vùng trà thiên nhiên và cây trà dường như đã trở thành hình ảnh rất đỗi thân quen đối văn hoá & đời sống canh tác của người dân miền núi nơi đây. Việt Nam đã và đang luôn chú trọng từng khâu nhỏ nhất trong quy trình sản xuất trà, cùng nhiều điều kiện cũng như phương pháp hết sức nghiêm ngặt và phức tạp để sản phẩm đảm bảo chất lượng với mong muốn dần khẳng định vị thế trong mắt bạn bè quốc tế. Trong số đó phải kể đến Trà Đen đang là một trong những loại trà nổi tiếng làm nguyên liệu chính tạo nên món thức uống trà sữa được mọi người ưa thích không chỉ bởi hương vị thơm ngon mà còn mang lại nhiều lợi ích cho sức khỏe. </p>\n[/ux_text]\n\n[/col]\n[col span=\"6\" span__sm=\"12\" margin=\"-200px 0px 0px 0px\" margin__md=\"0 0px 0px 0px\" class=\"col-margin-bot\"]\n\n[ux_image id=\"295\" depth=\"4\"]\n\n\n[/col]\n\n[/row]\n[section bg=\"140\"]\n\n[row v_align=\"middle\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"296\" depth=\"4\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\" animate=\"fadeInRight\"]\n\n[ux_text font_size=\"1.2\" class=\"text-green font-text-change\"]\n\n<p>Với tình cảm đặc biệt dành cho những đồi trà xanh Việt Nam, mong muốn mãnh liệt mang hương vị trà quê hương đến bạn bè quốc tế, BuBo Tea đã ưu tiên chọn nguồn cung Trà Đen chất lượng cao từ Việt Nam theo tiêu chuẩn kiểm định an toàn thực phẩm Bộ Y tế đề ra.</p>\n[/ux_text]\n\n[/col]\n\n[/row]\n\n[/section]\n[section bg=\"297\" bg_overlay=\"rgba(0, 0, 0, 0.523)\" padding=\"0px\"]\n\n[ux_banner height=\"500px\" bg=\"297\" bg_overlay=\"rgba(0, 0, 0, 0.43)\"]\n\n[text_box width=\"70\" animate=\"bounceIn\" position_x=\"50\" position_y=\"50\"]\n\n[title style=\"center\" text=\"NGUỒN SỮA\" tag_name=\"h1\" color=\"rgb(255, 255, 255)\" size=\"200\" class=\"title-butotea\"]\n\n[ux_text font_size=\"1.25\" text_align=\"left\" text_color=\"rgb(255, 255, 255)\" class=\"text-milk font-text-change\"]\n\n<p>Là một đất nước nổi tiếng hàng đầu thế giới về chất lượng sữa - Hà Lan chính là sự lựa chọn đáng tin cậy dành cho trà sữa BuBo Tea. Quy trình chế biến và đóng gói nguyên liệu sữa được thực hiện chặt chẽ bởi các thiết bị công nghệ cao, đảm bảo an toàn vệ sinh và đáp ứng tiêu chuẩn Châu Âu mục đích mang lại sự trải nghiệm hoàn hảo cho khách hàng.</p>\n[/ux_text]\n\n[/text_box]\n\n[/ux_banner]\n\n[/section]\n[section bg=\"100\"]\n\n[row v_align=\"middle\"]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"298\" depth=\"4\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\" animate=\"fadeInDown\"]\n\n[title style=\"center\" text=\"TOPPING\" tag_name=\"h1\" size=\"200\" class=\"title-butotea\"]\n\n[ux_text font_size=\"1.2\" class=\"text-green font-text-change\"]\n\n<p>Để tạo nét khác biệt cho thức uống của BuBo tea, chúng tôi đã chế biến nhiều loại thạch tươi ngon từ nguồn trái cây đa dạng. Đặc biệt hơn nữa BuBo tea đã chọn nguyên liệu trân châu chiết xuất 100% từ rong biển đạt tiêu chuẩn kiểm định IS22000</p>\n[/ux_text]\n\n[/col]\n\n[/row]\n\n[/section]\n[ux_image id=\"341\" image_size=\"original\"]', 'VÙNG NGUYÊN LIỆU', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2021-04-12 04:18:16', '2021-04-12 04:18:16', '', 17, 'https://bubotea.com/17-revision-v1/', 0, 'revision', '', 0),
(531, 1, '2021-04-12 06:44:05', '2021-04-12 06:44:05', '', 'Chính sách bảo mật thông tin', '', 'publish', 'open', 'open', '', 'chinh-sach-bao-mat-thong-tin', '', '', '2021-04-12 06:44:05', '2021-04-12 06:44:05', '', 0, 'https://bubotea.com/?p=531', 0, 'post', '', 0),
(532, 1, '2021-04-12 06:43:21', '2021-04-12 06:43:21', '[section label=\"DESKTOP\" padding=\"0px\" visibility=\"hide-for-small\"]\n\n[ux_slider]\n\n[ux_banner height=\"700px\" bg=\"254\" bg_size=\"original\" bg_pos=\"50% 31%\"]\n\n[text_box width__sm=\"60\" position_x=\"50\" position_y=\"50\"]\n\n\n[/text_box]\n\n[/ux_banner]\n[ux_banner height=\"700px\" bg=\"345\" bg_size=\"original\" bg_pos=\"50% 33%\"]\n\n[text_box width__sm=\"60\" position_x=\"50\" position_y=\"50\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/ux_slider]\n\n[/section]\n[section label=\"MOBILE\" padding=\"0px\" visibility=\"show-for-small\"]\n\n[ux_slider]\n\n[ux_banner height=\"100%\" height__sm=\"100%\" bg=\"347\" bg_size=\"original\"]\n\n[text_box width__sm=\"60\" position_x=\"50\" position_y=\"50\"]\n\n\n[/text_box]\n\n[/ux_banner]\n[ux_banner height=\"100%\" bg=\"348\" bg_size=\"original\"]\n\n[text_box width__sm=\"60\" position_x=\"50\" position_y=\"50\"]\n\n\n[/text_box]\n\n[/ux_banner]\n\n[/ux_slider]\n\n[/section]\n[section bg=\"100\" bg_overlay=\"rgba(255, 255, 255, 0.483)\"]\n\n[title style=\"center\" text=\"menu bubo tea\" size=\"200\" link_text=\"Còn nữa\" link=\"/san-pham/\" class=\"title-butotea\"]\n\n[ux_products type=\"row\" columns=\"3\" show_cat=\"0\" equalize_box=\"true\" class=\"product-design\"]\n\n\n[/section]\n[section bg=\"140\" bg_overlay=\"rgba(255, 255, 255, 0.488)\"]\n\n[title style=\"center\" text=\"BLOG\" size=\"200\" link_text=\"Xem thêm\" link=\"/tin-tuc/\" class=\"title-butotea\"]\n\n[row]\n\n[col span__sm=\"12\"]\n\n[ux_image id=\"390\"]\n\n\n[/col]\n\n[/row]\n[title style=\"center\" text=\"giá trị cốt lõi\" tag_name=\"h1\" color=\"rgb(163, 184, 162)\"]\n\n[blog_posts style=\"normal\" columns__md=\"1\" ids=\"132,184,127,130\" show_date=\"false\" excerpt_length=\"9\" image_height=\"56.25%\" class=\"bubotea-blog\"]\n\n\n[/section]\n[section bg=\"158\"]\n\n[title style=\"center\" text=\"cửa hàng\" size=\"200\" class=\"title-butotea\"]\n\n[row]\n\n[col span=\"6\" span__sm=\"12\"]\n\n[ux_image id=\"391\"]\n\n\n[/col]\n[col span=\"6\" span__sm=\"12\" class=\"col-right\"]\n\n[ux_text text_align=\"center\" text_color=\"rgb(255, 255, 255)\" class=\"text-top\"]\n\n<h1>BUBO TEA</h1>\n[/ux_text]\n[ux_text font_size=\"0.75\" text_color=\"rgb(255, 255, 255)\" class=\"font-text-change\"]\n\n<p style=\"font-size: 20px\">Bubo Tea là thương hiệu trà sữa mang đến thức uống ngọt ngào hương vị Việt. Việc tự mình chuẩn bị nguyên liệu thiên nhiên đạt chuẩn chất lượng chính là ưu tiên hàng đầu của Bubo tea. Chúng tôi tự hào cung cấp những thức uống ngon, phong phú và an toàn cho sức khỏe.\nMỗi sản phẩm được tạo ra là tâm huyết chúng tôi muốn gửi đến nơi bạn.</p>\n[/ux_text]\n\n[/col]\n\n[/row]\n\n[/section]', 'Trang chu', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2021-04-12 06:43:21', '2021-04-12 06:43:21', '', 6, 'https://bubotea.com/6-revision-v1/', 0, 'revision', '', 0),
(533, 1, '2021-04-12 06:44:05', '2021-04-12 06:44:05', '', 'Chính sách bảo mật thông tin', '', 'inherit', 'closed', 'closed', '', '531-revision-v1', '', '', '2021-04-12 06:44:05', '2021-04-12 06:44:05', '', 531, 'https://bubotea.com/531-revision-v1/', 0, 'revision', '', 0),
(534, 1, '2021-04-12 09:35:06', '2021-04-12 09:35:06', '[section label=\"Footer\" bg_color=\"rgb(163, 184, 162)\"]\n\n[gap height=\"20px\"]\n\n[row label=\"Icon Boxes\"]\n\n[col span__sm=\"12\"]\n\n[row_inner style=\"small\"]\n\n[col_inner span=\"4\" span__sm=\"12\" span__md=\"6\"]\n\n[featured_box img=\"172\" img_width=\"25\" pos=\"center\"]\n\n[ux_text text_color=\"rgb(0, 0, 0)\"]\n\n<p><span style=\"font-size: 90%;\"><strong>Từ 100% tự nhiên</strong></span></p>\n[/ux_text]\n\n[/featured_box]\n\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\" span__md=\"6\"]\n\n[featured_box img=\"174\" img_width=\"25\" pos=\"center\"]\n\n[ux_text text_color=\"rgb(0, 0, 0)\"]\n\n<p><span style=\"font-size: 90%;\"><strong>Hương vị Việt</strong></span></p>\n[/ux_text]\n\n[/featured_box]\n\n[/col_inner]\n[col_inner span=\"4\" span__sm=\"12\" span__md=\"6\"]\n\n[featured_box img=\"175\" img_width=\"25\" pos=\"center\"]\n\n[ux_text text_color=\"rgb(0, 0, 0)\"]\n\n<p><span style=\"font-size: 90%;\"><strong>Luôn lắng nghe đóng góp</strong></span></p>\n[/ux_text]\n\n[/featured_box]\n\n[/col_inner]\n\n[/row_inner]\n[divider width=\"100%\" height=\"1px\" margin=\"1.5em\"]\n\n\n[/col]\n\n[/row]\n[row label=\"Info + Links + Newsletter\" style=\"small\"]\n\n[col span=\"4\" span__sm=\"12\" span__md=\"12\"]\n\n[ux_text text_color=\"rgb(0, 0, 0)\" class=\"icon-footer\"]\n\n<h5>BUBO TEA</h5>\n<p><span style=\"font-size: 90%;\">Hotline: +31 618 235 898</span></p>\n<p><span style=\"font-size: 90%;\">Địa chỉ: naritaweg 14, 1043 BZ Amsterdam</span></p>\n<p><span style=\"font-size: 90%;\">Email: info@bubotea.nl</span></p>\n<p><span style=\"font-size: 90%;\">Facebook: @BuBotea.official</span></p>\n<a href=\"tel:+31618235898\"><i class=\"fas fa-phone-alt\"></i><strong>CALL US</strong></a>\n<a href=\"mailto:info@bubotea.nl\"><i class=\"fas fa-envelope\"></i></i><strong>EMAIL US</strong></a>\n[/ux_text]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" span__md=\"12\"]\n\n[row_inner style=\"collapse\"]\n\n[col_inner span=\"6\" span__sm=\"12\"]\n\n[ux_text text_color=\"rgb(0, 0, 0)\" class=\"text-white\"]\n\n<h5>Khách Hàng</h5>\n<ul>\n<li class=\"bullet-arrow\"><span style=\"font-size: 90%;\"><a href=\"/trasua/cart/\">Đơn hàng của tôi</a></span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 90%;\"><a href=\"/trasua/cau-chuyen-thuong-hieu/\">Giới thiệu</a></span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 90%;\"><a href=\"/trasua/vung-nguyen-lieu/\">Vùng nguyên liệu</a></span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 90%;\"><a href=\"/trasua/tin-tuc/\">Tin tức</a></span></li>\n</ul>\n[/ux_text]\n\n[/col_inner]\n[col_inner span=\"6\" span__sm=\"12\"]\n\n[ux_text text_color=\"rgb(0, 0, 0)\" class=\"text-white\"]\n\n<h5>Liên hệ</h5>\n<ul>\n<li class=\"bullet-arrow\"><span style=\"font-size: 90%;\"><a href=\"/lien-he/\">Liên hệ</a></span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 90%;\"><a href=\"/\">Trang chủ</a></span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 90%;\"><a href=\"/tin-tuc/\">Blog</a></span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 90%;\"><a href=\"/san-pham/\">Sản phẩm</a></span></li>\n</ul>\n[/ux_text]\n\n[/col_inner]\n\n[/row_inner]\n\n[/col]\n[col span=\"4\" span__sm=\"12\" span__md=\"12\"]\n\n[ux_text text_color=\"rgb(0, 0, 0)\"]\n\n<h5>Chính sách</h5>\n[/ux_text]\n<ul>\n<li class=\"bullet-arrow\"><span style=\"font-size: 90%;\"><a href=\" https://bubotea.com/chinh-sach-bao-mat-thong-tin/\"> Chính sách bảo mật thông tin</a></span></li>\n<li class=\"bullet-arrow\"><span style=\"font-size: 90%;\"><a href=\"#\">Chính sách thanh toán - đổi trả</a></span></li>\n</ul>\n[ux_text line_height=\"3\" text_color=\"rgb(0, 0, 0)\"]\n\n<h5>Theo dõi</h5>\n[/ux_text]\n[follow style=\"small\" facebook=\"https://www.facebook.com/BuBotea.official\" email=\"info@bubotea.nl\" phone=\"+31 618 235 898\" class=\"contact-black\"]\n\n\n[/col]\n\n[/row]\n\n[/section]', 'footer', '', 'inherit', 'closed', 'closed', '', '170-revision-v1', '', '', '2021-04-12 09:35:06', '2021-04-12 09:35:06', '', 170, 'https://bubotea.com/170-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `3kuF9kxQ_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(535, 1, '2021-04-12 09:49:14', '2021-04-12 09:49:14', '{\n    \"flatsome::html_custom_css\": {\n        \"value\": \"p{\\n\\t\\tmargin:0\\n}\\n.title-butotea>.section-title{\\n\\t\\tborder-bottom: 0px\\n}\\n.title-butotea>.section-title>span{\\n\\t\\tborder-bottom:0\\n}\\n.add-to-cart-button>a{\\n\\t\\tpadding: 10px;\\n\\t\\tbackground: #555555 !important;\\n\\t\\tborder: #c9d5bd !important;\\n\\t\\tcolor: #fff !important;\\n\\t\\tbox-shadow: 0px 0px 1px 0px;\\n\\t\\twidth: 100%\\n}\\n.add-to-cart-button>a:hover{\\n\\t\\tbox-shadow: 1px 1px 3px 0px !important;\\n}\\n\\n}\\n.product-design>div>div>div>.box-image{\\n\\t\\tbox-shadow: 5px 5px 5px !important\\n}\\n.bubotea-blog>div>div>div>.col-inner{\\n\\t\\tbackground: #fbfefb;\\n\\t\\tpadding: 10px;\\n\\t\\tbox-shadow: 1px 2px 5px 0px\\n}\\n.blog-bubotea>div>div>a>div>.box-text{\\n\\t\\tpadding-bottom: 0 !important\\n}\\n.blog-bubotea>div>div>a>div>div>div>h5{\\n\\t\\tcolor: #a3b8a2 !important\\n}\\n.bubotea-blog>div>div>div>div>a>div>div>div>h5{\\n\\t\\tcolor: #a3b8a2 !important\\n}\\n.col-right{\\n\\t\\tbackground: #a3b8a2;\\n\\t\\theight: 345px\\n}\\n.col-right>.col-inner{\\n\\t\\tmargin-top: 8%;\\n}\\n.text-white>ul>li>span>a{\\n\\t\\tcolor: #fff\\n}\\n.text-left-none{\\n\\t\\tfont-family: Fontedit3;\\n\\t\\tfont-weight: 600;\\n}\\n.text-left-none{\\n\\t\\tfont-size: 50px !important;\\n}\\n.title-bubotea{\\n\\t\\tfont-family: Fontedit4;\\n\\t\\tfont-size: 120px !important;\\n\\t\\tcolor: #a3b8a2;\\n}\\n.contact-link p{\\n\\t\\tbackground: #a3b8a2;\\n\\t\\tcolor: #fff;\\n}\\n.row-border>.col-inner{\\n\\t\\tborder: 1px solid #a3b8a2;\\n\\t\\tpadding: 10px;\\n\\t\\tbox-shadow: 2px 1px 5px 2px;\\n}\\n.link-hot p{\\n\\t\\tletter-spacing: 3px;\\n\\t\\tfont-size: 25px\\n}\\n.text-image>p{\\n\\t\\tfont-weight: bold\\n}\\n.text-green p{\\n\\t\\tcolor: #18442b;\\n\\t\\tfont-weight: 600\\n}\\n.text-milk p{\\n\\t\\tfont-weight: 600\\n}\\n.product-design>div>div>div>.box-image{\\n\\t\\tbox-shadow: 2px 2px 5px 2px\\n}\\n.font-text-change{\\n\\t\\tfont-family: Fontedit5;\\n}\\n.font-text-change p{\\n\\t\\tfont-size: 24px;\\n\\t\\tfont-weight: 100 !important\\n}\\n.bullet-arrow a{\\n\\t\\tcolor: #000 !important\\n}\\n.icon-footer i{\\n\\t\\tmargin-left: 10px;\\n\\t\\tmargin-right: 5px;\\n\\t\\tmargin-top: 30px;\\n}\\n.header-main{\\n\\t\\twidth: 1250px;\\n    margin: auto;\\n}\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-04-12 09:49:14\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '21b8cd3f-dd20-431d-990d-f9edf5824051', '', '', '2021-04-12 09:49:14', '2021-04-12 09:49:14', '', 0, 'https://bubotea.com/21b8cd3f-dd20-431d-990d-f9edf5824051/', 0, 'customize_changeset', '', 0),
(536, 1, '2021-04-12 09:49:29', '2021-04-12 09:49:29', '{\n    \"flatsome::html_custom_css\": {\n        \"value\": \"p{\\n\\t\\tmargin:0\\n}\\n.title-butotea>.section-title{\\n\\t\\tborder-bottom: 0px\\n}\\n.title-butotea>.section-title>span{\\n\\t\\tborder-bottom:0\\n}\\n.add-to-cart-button>a{\\n\\t\\tpadding: 10px;\\n\\t\\tbackground: #555555 !important;\\n\\t\\tborder: #c9d5bd !important;\\n\\t\\tcolor: #fff !important;\\n\\t\\tbox-shadow: 0px 0px 1px 0px;\\n\\t\\twidth: 100%\\n}\\n.add-to-cart-button>a:hover{\\n\\t\\tbox-shadow: 1px 1px 3px 0px !important;\\n}\\n\\n}\\n.product-design>div>div>div>.box-image{\\n\\t\\tbox-shadow: 5px 5px 5px !important\\n}\\n.bubotea-blog>div>div>div>.col-inner{\\n\\t\\tbackground: #fbfefb;\\n\\t\\tpadding: 10px;\\n\\t\\tbox-shadow: 1px 2px 5px 0px\\n}\\n.blog-bubotea>div>div>a>div>.box-text{\\n\\t\\tpadding-bottom: 0 !important\\n}\\n.blog-bubotea>div>div>a>div>div>div>h5{\\n\\t\\tcolor: #a3b8a2 !important\\n}\\n.bubotea-blog>div>div>div>div>a>div>div>div>h5{\\n\\t\\tcolor: #a3b8a2 !important\\n}\\n.col-right{\\n\\t\\tbackground: #a3b8a2;\\n\\t\\theight: 345px\\n}\\n.col-right>.col-inner{\\n\\t\\tmargin-top: 8%;\\n}\\n.text-white>ul>li>span>a{\\n\\t\\tcolor: #fff\\n}\\n.text-left-none{\\n\\t\\tfont-family: Fontedit3;\\n\\t\\tfont-weight: 600;\\n}\\n.text-left-none{\\n\\t\\tfont-size: 50px !important;\\n}\\n.title-bubotea{\\n\\t\\tfont-family: Fontedit4;\\n\\t\\tfont-size: 120px !important;\\n\\t\\tcolor: #a3b8a2;\\n}\\n.contact-link p{\\n\\t\\tbackground: #a3b8a2;\\n\\t\\tcolor: #fff;\\n}\\n.row-border>.col-inner{\\n\\t\\tborder: 1px solid #a3b8a2;\\n\\t\\tpadding: 10px;\\n\\t\\tbox-shadow: 2px 1px 5px 2px;\\n}\\n.link-hot p{\\n\\t\\tletter-spacing: 3px;\\n\\t\\tfont-size: 25px\\n}\\n.text-image>p{\\n\\t\\tfont-weight: bold\\n}\\n.text-green p{\\n\\t\\tcolor: #18442b;\\n\\t\\tfont-weight: 600\\n}\\n.text-milk p{\\n\\t\\tfont-weight: 600\\n}\\n.product-design>div>div>div>.box-image{\\n\\t\\tbox-shadow: 2px 2px 5px 2px\\n}\\n.font-text-change{\\n\\t\\tfont-family: Fontedit5;\\n}\\n.font-text-change p{\\n\\t\\tfont-size: 24px;\\n\\t\\tfont-weight: 100 !important\\n}\\n.bullet-arrow a{\\n\\t\\tcolor: #000 !important\\n}\\n.icon-footer i{\\n\\t\\tmargin-left: 10px;\\n\\t\\tmargin-right: 5px;\\n\\t\\tmargin-top: 30px;\\n}\\n\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-04-12 09:49:29\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a6a4f7ef-ce9b-48f9-bc89-eaecd637a1bd', '', '', '2021-04-12 09:49:29', '2021-04-12 09:49:29', '', 0, 'https://bubotea.com/a6a4f7ef-ce9b-48f9-bc89-eaecd637a1bd/', 0, 'customize_changeset', '', 0),
(537, 1, '2021-04-12 09:53:10', '2021-04-12 09:53:10', '', 'Chính sách bảo mật', '', 'publish', 'closed', 'closed', '', 'chinh-sach-bao-mat', '', '', '2021-04-12 09:53:14', '2021-04-12 09:53:14', '', 0, 'https://bubotea.com/?page_id=537', 0, 'page', '', 0),
(538, 1, '2021-04-12 09:53:10', '2021-04-12 09:53:10', '', 'Chính sách bảo mật', '', 'inherit', 'closed', 'closed', '', '537-revision-v1', '', '', '2021-04-12 09:53:10', '2021-04-12 09:53:10', '', 537, 'https://bubotea.com/537-revision-v1/', 0, 'revision', '', 0),
(539, 1, '2021-04-12 10:24:19', '2021-04-12 10:24:19', '{\n    \"flatsome::html_custom_css\": {\n        \"value\": \"p{\\n\\t\\tmargin:0\\n}\\n.title-butotea>.section-title{\\n\\t\\tborder-bottom: 0px\\n}\\n.title-butotea>.section-title>span{\\n\\t\\tborder-bottom:0\\n}\\n.add-to-cart-button>a{\\n\\t\\tpadding: 10px;\\n\\t\\tbackground: #555555 !important;\\n\\t\\tborder: #c9d5bd !important;\\n\\t\\tcolor: #fff !important;\\n\\t\\tbox-shadow: 0px 0px 1px 0px;\\n\\t\\twidth: 100%\\n}\\n.add-to-cart-button>a:hover{\\n\\t\\tbox-shadow: 1px 1px 3px 0px !important;\\n}\\n\\n}\\n.product-design>div>div>div>.box-image{\\n\\t\\tbox-shadow: 5px 5px 5px !important\\n}\\n.bubotea-blog>div>div>div>.col-inner{\\n\\t\\tbackground: #fbfefb;\\n\\t\\tpadding: 10px;\\n\\t\\tbox-shadow: 1px 2px 5px 0px\\n}\\n.blog-bubotea>div>div>a>div>.box-text{\\n\\t\\tpadding-bottom: 0 !important\\n}\\n.blog-bubotea>div>div>a>div>div>div>h5{\\n\\t\\tcolor: #a3b8a2 !important\\n}\\n.bubotea-blog>div>div>div>div>a>div>div>div>h5{\\n\\t\\tcolor: #a3b8a2 !important\\n}\\n.col-right{\\n\\t\\tbackground: #a3b8a2;\\n\\t\\theight: 345px\\n}\\n.col-right>.col-inner{\\n\\t\\tmargin-top: 8%;\\n}\\n.text-white>ul>li>span>a{\\n\\t\\tcolor: #fff\\n}\\n.text-left-none{\\n\\t\\tfont-family: Fontedit3;\\n\\t\\tfont-weight: 600;\\n}\\n.text-left-none{\\n\\t\\tfont-size: 50px !important;\\n}\\n.title-bubotea{\\n\\t\\tfont-family: Fontedit4;\\n\\t\\tfont-size: 120px !important;\\n\\t\\tcolor: #a3b8a2;\\n}\\n.contact-link p{\\n\\t\\tbackground: #a3b8a2;\\n\\t\\tcolor: #fff;\\n}\\n.row-border>.col-inner{\\n\\t\\tborder: 1px solid #a3b8a2;\\n\\t\\tpadding: 10px;\\n\\t\\tbox-shadow: 2px 1px 5px 2px;\\n}\\n.link-hot p{\\n\\t\\tletter-spacing: 3px;\\n\\t\\tfont-size: 25px\\n}\\n.text-image>p{\\n\\t\\tfont-weight: bold\\n}\\n.text-green p{\\n\\t\\tcolor: #18442b;\\n\\t\\tfont-weight: 600\\n}\\n.text-milk p{\\n\\t\\tfont-weight: 600\\n}\\n.product-design>div>div>div>.box-image{\\n\\t\\tbox-shadow: 2px 2px 5px 2px\\n}\\n.font-text-change{\\n\\t\\tfont-family: Fontedit5;\\n}\\n.font-text-change p{\\n\\t\\tfont-size: 24px;\\n\\t\\tfont-weight: 100 !important\\n}\\n.bullet-arrow a{\\n\\t\\tcolor: #000 !important\\n}\\n.icon-footer i{\\n\\t\\tmargin-left: 10px;\\n\\t\\tmargin-right: 5px;\\n\\t\\tmargin-top: 30px;\\n}\\n.woocommerce-terms-and-conditions-link:after{\\n\\t\\tcontent: \\\" ch\\u00ednh s\\u00e1ch b\\u1ea3o m\\u1eadt th\\u00f4ng tin\\\"\\n}\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-04-12 10:24:19\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '895ac48d-12d4-428f-992f-83dbbf5a047f', '', '', '2021-04-12 10:24:19', '2021-04-12 10:24:19', '', 0, 'https://bubotea.com/895ac48d-12d4-428f-992f-83dbbf5a047f/', 0, 'customize_changeset', '', 0),
(540, 1, '2021-04-12 10:27:08', '2021-04-12 10:27:08', '{\n    \"flatsome::html_custom_css\": {\n        \"value\": \"p{\\n\\t\\tmargin:0\\n}\\n.title-butotea>.section-title{\\n\\t\\tborder-bottom: 0px\\n}\\n.title-butotea>.section-title>span{\\n\\t\\tborder-bottom:0\\n}\\n.add-to-cart-button>a{\\n\\t\\tpadding: 10px;\\n\\t\\tbackground: #555555 !important;\\n\\t\\tborder: #c9d5bd !important;\\n\\t\\tcolor: #fff !important;\\n\\t\\tbox-shadow: 0px 0px 1px 0px;\\n\\t\\twidth: 100%\\n}\\n.add-to-cart-button>a:hover{\\n\\t\\tbox-shadow: 1px 1px 3px 0px !important;\\n}\\n\\n}\\n.product-design>div>div>div>.box-image{\\n\\t\\tbox-shadow: 5px 5px 5px !important\\n}\\n.bubotea-blog>div>div>div>.col-inner{\\n\\t\\tbackground: #fbfefb;\\n\\t\\tpadding: 10px;\\n\\t\\tbox-shadow: 1px 2px 5px 0px\\n}\\n.blog-bubotea>div>div>a>div>.box-text{\\n\\t\\tpadding-bottom: 0 !important\\n}\\n.blog-bubotea>div>div>a>div>div>div>h5{\\n\\t\\tcolor: #a3b8a2 !important\\n}\\n.bubotea-blog>div>div>div>div>a>div>div>div>h5{\\n\\t\\tcolor: #a3b8a2 !important\\n}\\n.col-right{\\n\\t\\tbackground: #a3b8a2;\\n\\t\\theight: 345px\\n}\\n.col-right>.col-inner{\\n\\t\\tmargin-top: 8%;\\n}\\n.text-white>ul>li>span>a{\\n\\t\\tcolor: #fff\\n}\\n.text-left-none{\\n\\t\\tfont-family: Fontedit3;\\n\\t\\tfont-weight: 600;\\n}\\n.text-left-none{\\n\\t\\tfont-size: 50px !important;\\n}\\n.title-bubotea{\\n\\t\\tfont-family: Fontedit4;\\n\\t\\tfont-size: 120px !important;\\n\\t\\tcolor: #a3b8a2;\\n}\\n.contact-link p{\\n\\t\\tbackground: #a3b8a2;\\n\\t\\tcolor: #fff;\\n}\\n.row-border>.col-inner{\\n\\t\\tborder: 1px solid #a3b8a2;\\n\\t\\tpadding: 10px;\\n\\t\\tbox-shadow: 2px 1px 5px 2px;\\n}\\n.link-hot p{\\n\\t\\tletter-spacing: 3px;\\n\\t\\tfont-size: 25px\\n}\\n.text-image>p{\\n\\t\\tfont-weight: bold\\n}\\n.text-green p{\\n\\t\\tcolor: #18442b;\\n\\t\\tfont-weight: 600\\n}\\n.text-milk p{\\n\\t\\tfont-weight: 600\\n}\\n.product-design>div>div>div>.box-image{\\n\\t\\tbox-shadow: 2px 2px 5px 2px\\n}\\n.font-text-change{\\n\\t\\tfont-family: Fontedit5;\\n}\\n.font-text-change p{\\n\\t\\tfont-size: 24px;\\n\\t\\tfont-weight: 100 !important\\n}\\n.bullet-arrow a{\\n\\t\\tcolor: #000 !important\\n}\\n.icon-footer i{\\n\\t\\tmargin-left: 10px;\\n\\t\\tmargin-right: 5px;\\n\\t\\tmargin-top: 30px;\\n}\\n.woocommerce-terms-and-conditions-link:after{\\n\\t\\tcontent: \\\" ch\\u00ednh s\\u00e1ch b\\u1ea3o m\\u1eadt th\\u00f4ng tin\\\";\\n}\\n.woocommerce-terms-and-conditions-link{\\n\\t\\tbox-shadow: 0 1px blue;\\n}\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-04-12 10:27:08\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6a6cf479-5e94-4259-8d79-cdc54fb8386b', '', '', '2021-04-12 10:27:08', '2021-04-12 10:27:08', '', 0, 'https://bubotea.com/?p=540', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `3kuF9kxQ_smush_dir_images`
--

CREATE TABLE `3kuF9kxQ_smush_dir_images` (
  `id` mediumint(9) NOT NULL,
  `path` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `path_hash` char(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resize` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lossy` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `error` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_size` int(10) UNSIGNED DEFAULT NULL,
  `orig_size` int(10) UNSIGNED DEFAULT NULL,
  `file_time` int(10) UNSIGNED DEFAULT NULL,
  `last_scan` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `meta` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `3kuF9kxQ_social_users`
--

CREATE TABLE `3kuF9kxQ_social_users` (
  `ID` int(11) NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `identifier` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `register_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `login_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `social_users_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `3kuF9kxQ_termmeta`
--

CREATE TABLE `3kuF9kxQ_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `3kuF9kxQ_termmeta`
--

INSERT INTO `3kuF9kxQ_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 17, 'order_pa_kich-thuoc', '0'),
(2, 18, 'order_pa_kich-thuoc', '0'),
(3, 16, 'product_count_product_cat', '0'),
(4, 19, 'order', '0'),
(5, 19, 'product_count_product_cat', '6');

-- --------------------------------------------------------

--
-- Table structure for table `3kuF9kxQ_terms`
--

CREATE TABLE `3kuF9kxQ_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `3kuF9kxQ_terms`
--

INSERT INTO `3kuF9kxQ_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'menu', 'menu', 0),
(3, 'simple', 'simple', 0),
(4, 'grouped', 'grouped', 0),
(5, 'variable', 'variable', 0),
(6, 'external', 'external', 0),
(7, 'exclude-from-search', 'exclude-from-search', 0),
(8, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(9, 'featured', 'featured', 0),
(10, 'outofstock', 'outofstock', 0),
(11, 'rated-1', 'rated-1', 0),
(12, 'rated-2', 'rated-2', 0),
(13, 'rated-3', 'rated-3', 0),
(14, 'rated-4', 'rated-4', 0),
(15, 'rated-5', 'rated-5', 0),
(16, 'Uncategorized', 'uncategorized', 0),
(17, '250ML', '250ml', 0),
(18, '330ML', '330ml', 0),
(19, 'Bubo tea', 'bubo-tea', 0);

-- --------------------------------------------------------

--
-- Table structure for table `3kuF9kxQ_term_relationships`
--

CREATE TABLE `3kuF9kxQ_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `3kuF9kxQ_term_relationships`
--

INSERT INTO `3kuF9kxQ_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(25, 2, 0),
(26, 2, 0),
(27, 2, 0),
(28, 2, 0),
(29, 2, 0),
(30, 2, 0),
(59, 5, 0),
(59, 17, 0),
(59, 18, 0),
(59, 19, 0),
(72, 5, 0),
(72, 17, 0),
(72, 18, 0),
(72, 19, 0),
(77, 5, 0),
(77, 17, 0),
(77, 18, 0),
(77, 19, 0),
(81, 5, 0),
(81, 15, 0),
(81, 17, 0),
(81, 18, 0),
(81, 19, 0),
(85, 5, 0),
(85, 17, 0),
(85, 18, 0),
(85, 19, 0),
(88, 5, 0),
(88, 15, 0),
(88, 17, 0),
(88, 18, 0),
(88, 19, 0),
(127, 1, 0),
(130, 1, 0),
(132, 1, 0),
(184, 1, 0),
(531, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `3kuF9kxQ_term_taxonomy`
--

CREATE TABLE `3kuF9kxQ_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `3kuF9kxQ_term_taxonomy`
--

INSERT INTO `3kuF9kxQ_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 5),
(2, 2, 'nav_menu', '', 0, 6),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 6),
(6, 6, 'product_type', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_visibility', '', 0, 2),
(16, 16, 'product_cat', '', 0, 0),
(17, 17, 'pa_kich-thuoc', '', 0, 6),
(18, 18, 'pa_kich-thuoc', '', 0, 6),
(19, 19, 'product_cat', '', 0, 6);

-- --------------------------------------------------------

--
-- Table structure for table `3kuF9kxQ_tm_taskmeta`
--

CREATE TABLE `3kuF9kxQ_tm_taskmeta` (
  `meta_id` bigint(20) NOT NULL,
  `task_id` bigint(20) NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `3kuF9kxQ_tm_tasks`
--

CREATE TABLE `3kuF9kxQ_tm_tasks` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `type` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_identifier` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `attempts` int(11) DEFAULT 0,
  `description` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `last_locked_at` bigint(20) DEFAULT 0,
  `status` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `3kuF9kxQ_usermeta`
--

CREATE TABLE `3kuF9kxQ_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `3kuF9kxQ_usermeta`
--

INSERT INTO `3kuF9kxQ_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'trasua'),
(2, 1, 'first_name', 'hùng'),
(3, 1, 'last_name', 'thái'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, '3kuF9kxQ_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, '3kuF9kxQ_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:5:{s:64:\"619be5b13c1fa6eda36063dfa10c688336d652c4df3561b7ff3f8f6d4c4cf248\";a:4:{s:10:\"expiration\";i:1618301847;s:2:\"ip\";s:14:\"116.105.75.199\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36\";s:5:\"login\";i:1617092247;}s:64:\"eec3fb2f3a583a0c95cfbb10c0bbc680aa51871490423fb13b0e3bc603ff0d6e\";a:4:{s:10:\"expiration\";i:1618381745;s:2:\"ip\";s:14:\"116.105.75.199\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36\";s:5:\"login\";i:1617172145;}s:64:\"78ad2e1fd3413c3ce370c2ed038a0ed91d472a4cce532627cc11465b827b8aff\";a:4:{s:10:\"expiration\";i:1619490293;s:2:\"ip\";s:13:\"172.104.59.81\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36\";s:5:\"login\";i:1618280693;}s:64:\"a8a9cc08d68e8725c81dd0f2c50e99e4637daa352d349130ae3621ba7555f496\";a:4:{s:10:\"expiration\";i:1619490523;s:2:\"ip\";s:13:\"116.103.18.14\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36\";s:5:\"login\";i:1618280923;}s:64:\"90bb8487092fe8cc5fbc129b646bba9889b4f606e65181406018bba4f072e9ae\";a:4:{s:10:\"expiration\";i:1619493935;s:2:\"ip\";s:13:\"116.103.18.14\";s:2:\"ua\";s:131:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36 Edg/89.0.774.75\";s:5:\"login\";i:1618284335;}}'),
(17, 1, '3kuF9kxQ_dashboard_quick_press_last_post_id', '528'),
(18, 1, '3kuF9kxQ_user-settings', 'libraryContent=browse&editor=tinymce&posts_list_mode=list'),
(19, 1, '3kuF9kxQ_user-settings-time', '1616202290'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:7:{i:0;s:20:\"add-post-type-blocks\";i:1;s:27:\"add-post-type-featured_item\";i:2;s:12:\"add-post_tag\";i:3;s:15:\"add-post_format\";i:4;s:20:\"add-block_categories\";i:5;s:26:\"add-featured_item_category\";i:6;s:21:\"add-featured_item_tag\";}'),
(22, 1, 'nav_menu_recently_edited', '2'),
(23, 1, '_woocommerce_tracks_anon_id', 'woo:SZqD2zjsmllIIx+8rum36dam'),
(24, 1, 'last_update', '1609906097'),
(25, 1, 'woocommerce_admin_activity_panel_inbox_last_read', '1608606590221'),
(26, 1, 'wc_last_active', '1618272000'),
(27, 1, 'meta-box-order_product', 'a:3:{s:4:\"side\";s:84:\"submitdiv,product_catdiv,tagsdiv-product_tag,postimagediv,woocommerce-product-images\";s:6:\"normal\";s:55:\"postcustom,slugdiv,woocommerce-product-data,commentsdiv\";s:8:\"advanced\";s:11:\"postexcerpt\";}'),
(28, 1, 'screen_layout_product', '2'),
(29, 1, 'closedpostboxes_product', 'a:0:{}'),
(30, 1, 'metaboxhidden_product', 'a:2:{i:0;s:10:\"postcustom\";i:1;s:7:\"slugdiv\";}'),
(33, 1, 'dismissed_no_secure_connection_notice', '1'),
(36, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:12:\"116.103.18.0\";}'),
(39, 1, 'billing_first_name', 'hùng'),
(40, 1, 'billing_last_name', 'thái'),
(41, 1, 'billing_address_1', 'naritaweg 14, 1043 BZ Amsterdam'),
(42, 1, 'billing_city', 'naritaweg'),
(43, 1, 'billing_country', 'FI'),
(44, 1, 'billing_email', 'hungthai56@gmail.com'),
(45, 1, 'billing_phone', '0124578745'),
(46, 1, 'shipping_method', 'a:1:{i:0;s:11:\"flat_rate:5\";}'),
(51, 1, 'shipping_first_name', 'hùng'),
(52, 1, 'shipping_last_name', 'thái'),
(53, 1, 'shipping_address_1', 'naritaweg 14, 1043 BZ Amsterdam'),
(54, 1, 'shipping_city', 'naritaweg'),
(55, 1, 'shipping_country', 'NL'),
(58, 1, 'paying_customer', '1'),
(67, 2, 'nickname', 'hunghthai12'),
(68, 2, 'first_name', ''),
(69, 2, 'last_name', ''),
(70, 2, 'description', ''),
(71, 2, 'rich_editing', 'true'),
(72, 2, 'syntax_highlighting', 'true'),
(73, 2, 'comment_shortcuts', 'false'),
(74, 2, 'admin_color', 'fresh'),
(75, 2, 'use_ssl', '0'),
(76, 2, 'show_admin_bar_front', 'true'),
(77, 2, 'locale', ''),
(78, 2, '3kuF9kxQ_capabilities', 'a:1:{s:8:\"customer\";b:1;}'),
(79, 2, '3kuF9kxQ_user_level', '0'),
(81, 2, 'wc_last_active', '1608595200'),
(82, 3, 'nickname', 'langtumientrung104'),
(83, 3, 'first_name', ''),
(84, 3, 'last_name', ''),
(85, 3, 'description', ''),
(86, 3, 'rich_editing', 'true'),
(87, 3, 'syntax_highlighting', 'true'),
(88, 3, 'comment_shortcuts', 'false'),
(89, 3, 'admin_color', 'fresh'),
(90, 3, 'use_ssl', '0'),
(91, 3, 'show_admin_bar_front', 'true'),
(92, 3, 'locale', ''),
(93, 3, '3kuF9kxQ_capabilities', 'a:1:{s:8:\"customer\";b:1;}'),
(94, 3, '3kuF9kxQ_user_level', '0'),
(96, 3, 'wc_last_active', '1608595200'),
(97, 4, 'nickname', 'gamehuyenthoai2'),
(98, 4, 'first_name', ''),
(99, 4, 'last_name', ''),
(100, 4, 'description', ''),
(101, 4, 'rich_editing', 'true'),
(102, 4, 'syntax_highlighting', 'true'),
(103, 4, 'comment_shortcuts', 'false'),
(104, 4, 'admin_color', 'fresh'),
(105, 4, 'use_ssl', '0'),
(106, 4, 'show_admin_bar_front', 'true'),
(107, 4, 'locale', ''),
(108, 4, '3kuF9kxQ_capabilities', 'a:1:{s:8:\"customer\";b:1;}'),
(109, 4, '3kuF9kxQ_user_level', '0'),
(111, 4, 'wc_last_active', '1608595200'),
(112, 3, 'last_update', '1608608232'),
(113, 5, 'nickname', 'kythuat.vitutomedia'),
(114, 5, 'first_name', 'Thái'),
(115, 5, 'last_name', 'Hùng'),
(116, 5, 'description', ''),
(117, 5, 'rich_editing', 'true'),
(118, 5, 'syntax_highlighting', 'true'),
(119, 5, 'comment_shortcuts', 'false'),
(120, 5, 'admin_color', 'fresh'),
(121, 5, 'use_ssl', '0'),
(122, 5, 'show_admin_bar_front', 'true'),
(123, 5, 'locale', ''),
(124, 5, '3kuF9kxQ_capabilities', 'a:1:{s:8:\"customer\";b:1;}'),
(125, 5, '3kuF9kxQ_user_level', '0'),
(126, 5, 'last_update', '1614993553'),
(127, 5, 'billing_address_1', '145 sajana'),
(128, 5, 'billing_city', 'Đà Nẵng'),
(129, 5, 'billing_state', 'đà nẵng'),
(130, 5, 'billing_postcode', '550000'),
(131, 5, 'billing_country', ''),
(132, 5, 'billing_phone', '03458639014'),
(133, 5, 'wpmem_reg_ip', '116.105.79.232'),
(135, 5, 'wc_last_active', '1608595200'),
(136, 5, '_order_count', '0'),
(137, 5, 'billing_first_name', 'Thái'),
(138, 5, 'billing_last_name', 'Hùng'),
(139, 5, 'billing_company', ''),
(140, 5, 'billing_address_2', ''),
(141, 5, 'billing_email', 'kythuat.vitutomedia@gmail.com'),
(142, 5, 'shipping_first_name', ''),
(143, 5, 'shipping_last_name', ''),
(144, 5, 'shipping_company', ''),
(145, 5, 'shipping_address_1', ''),
(146, 5, 'shipping_address_2', ''),
(147, 5, 'shipping_city', ''),
(148, 5, 'shipping_postcode', ''),
(149, 5, 'shipping_country', ''),
(150, 5, 'shipping_state', ''),
(153, 6, 'nickname', 'hungthai'),
(154, 6, 'first_name', ''),
(155, 6, 'last_name', ''),
(156, 6, 'description', ''),
(157, 6, 'rich_editing', 'true'),
(158, 6, 'syntax_highlighting', 'true'),
(159, 6, 'comment_shortcuts', 'false'),
(160, 6, 'admin_color', 'fresh'),
(161, 6, 'use_ssl', '0'),
(162, 6, 'show_admin_bar_front', 'true'),
(163, 6, 'locale', ''),
(164, 6, '3kuF9kxQ_capabilities', 'a:1:{s:8:\"customer\";b:1;}'),
(165, 6, '3kuF9kxQ_user_level', '0'),
(167, 6, 'wc_last_active', '1608595200'),
(168, 6, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:1:{s:32:\"bb3dbac501925903e5c576723bcbb107\";a:6:{s:3:\"key\";s:32:\"bb3dbac501925903e5c576723bcbb107\";s:10:\"product_id\";i:88;s:12:\"variation_id\";i:89;s:9:\"variation\";a:1:{s:23:\"attribute_pa_kich-thuoc\";s:5:\"250ml\";}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"8cb25cfb230477a3b438476a4913fcbf\";}}}'),
(169, 1, 'shipping_postcode', '1043 BZ'),
(178, 1, '3kuF9kxQ_yoast_notifications', 'a:2:{i:0;a:2:{s:7:\"message\";O:61:\"Yoast\\WP\\SEO\\Presenters\\Admin\\Indexing_Notification_Presenter\":3:{s:18:\"\0*\0total_unindexed\";i:10;s:9:\"\0*\0reason\";s:23:\"home_url_option_changed\";s:20:\"\0*\0short_link_helper\";O:38:\"Yoast\\WP\\SEO\\Helpers\\Short_Link_Helper\":2:{s:17:\"\0*\0options_helper\";O:35:\"Yoast\\WP\\SEO\\Helpers\\Options_Helper\":0:{}s:17:\"\0*\0product_helper\";O:35:\"Yoast\\WP\\SEO\\Helpers\\Product_Helper\":0:{}}}s:7:\"options\";a:10:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:13:\"wpseo-reindex\";s:4:\"user\";O:7:\"WP_User\":8:{s:4:\"data\";O:8:\"stdClass\":10:{s:2:\"ID\";s:1:\"1\";s:10:\"user_login\";s:8:\"ruouvang\";s:9:\"user_pass\";s:34:\"$P$BsP2KSZji5iSytluwF4MrCGo5wRwh3.\";s:13:\"user_nicename\";s:8:\"ruouvang\";s:10:\"user_email\";s:21:\"vitutodana1@gmail.com\";s:8:\"user_url\";s:18:\"https://bubotea.eu\";s:15:\"user_registered\";s:19:\"2020-12-31 06:39:24\";s:19:\"user_activation_key\";s:0:\"\";s:11:\"user_status\";s:1:\"0\";s:12:\"display_name\";s:5:\"admin\";}s:2:\"ID\";i:1;s:4:\"caps\";a:1:{s:13:\"administrator\";b:1;}s:7:\"cap_key\";s:19:\"jKh5IZ_capabilities\";s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:7:\"allcaps\";a:63:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpseo_manage_options\";b:1;s:13:\"administrator\";b:1;}s:6:\"filter\";N;s:16:\"\0WP_User\0site_id\";i:1;}s:5:\"nonce\";N;s:8:\"priority\";d:0.8;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:1;a:2:{s:7:\"message\";s:426:\"<strong>New in Yoast SEO 15.5: </strong>Writing in Hungarian? You can now easily check if you are doing a great job in terms of the readability of your text when writing in Hungarian! <a href=\"https://yoa.st/yoast15-5?php_version=7.2&#038;platform=wordpress&#038;platform_version=5.6&#038;software=free&#038;software_version=15.5&#038;days_active=2-5&#038;user_language=vi\" target=\"_blank\">Read all about version 15.5 here</a>\";s:7:\"options\";a:10:{s:4:\"type\";s:7:\"updated\";s:2:\"id\";s:20:\"wpseo-plugin-updated\";s:4:\"user\";O:7:\"WP_User\":8:{s:4:\"data\";O:8:\"stdClass\":10:{s:2:\"ID\";s:1:\"1\";s:10:\"user_login\";s:8:\"ruouvang\";s:9:\"user_pass\";s:34:\"$P$BsP2KSZji5iSytluwF4MrCGo5wRwh3.\";s:13:\"user_nicename\";s:8:\"ruouvang\";s:10:\"user_email\";s:21:\"vitutodana1@gmail.com\";s:8:\"user_url\";s:18:\"https://bubotea.eu\";s:15:\"user_registered\";s:19:\"2020-12-31 06:39:24\";s:19:\"user_activation_key\";s:0:\"\";s:11:\"user_status\";s:1:\"0\";s:12:\"display_name\";s:5:\"admin\";}s:2:\"ID\";i:1;s:4:\"caps\";a:1:{s:13:\"administrator\";b:1;}s:7:\"cap_key\";s:19:\"jKh5IZ_capabilities\";s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:7:\"allcaps\";a:63:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpseo_manage_options\";b:1;s:13:\"administrator\";b:1;}s:6:\"filter\";N;s:16:\"\0WP_User\0site_id\";i:1;}s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:1:{s:13:\"dismiss_value\";s:4:\"15.5\";}s:13:\"dismissal_key\";s:20:\"wpseo-plugin-updated\";s:12:\"capabilities\";a:1:{i:0;s:20:\"wpseo_manage_options\";}s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}}'),
(180, 1, '_order_count', '10'),
(181, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:2:{s:32:\"2bb281b498af49ca92e6450f0fd8498b\";a:11:{s:3:\"key\";s:32:\"2bb281b498af49ca92e6450f0fd8498b\";s:10:\"product_id\";i:88;s:12:\"variation_id\";i:90;s:9:\"variation\";a:1:{s:23:\"attribute_pa_kich-thuoc\";s:5:\"330ml\";}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"89ecf70f44c14aa75cc2c3307d2ca292\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:4.5;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:4.5;s:8:\"line_tax\";i:0;}s:32:\"bb3dbac501925903e5c576723bcbb107\";a:6:{s:3:\"key\";s:32:\"bb3dbac501925903e5c576723bcbb107\";s:10:\"product_id\";i:88;s:12:\"variation_id\";i:89;s:9:\"variation\";a:1:{s:23:\"attribute_pa_kich-thuoc\";s:5:\"250ml\";}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"8cb25cfb230477a3b438476a4913fcbf\";}}}'),
(184, 1, '_last_order', '477'),
(191, 1, 'w3tc_features_seen', 'a:2:{i:1;s:14:\"lazyload_gmaps\";i:2;s:11:\"setup_guide\";}'),
(195, 7, 'nickname', 'Trang Nguyen'),
(196, 7, 'first_name', ''),
(197, 7, 'last_name', ''),
(198, 7, 'description', ''),
(199, 7, 'rich_editing', 'true'),
(200, 7, 'syntax_highlighting', 'true'),
(201, 7, 'comment_shortcuts', 'false'),
(202, 7, 'admin_color', 'fresh'),
(203, 7, 'use_ssl', '0'),
(204, 7, 'show_admin_bar_front', 'true'),
(205, 7, 'locale', ''),
(206, 7, '3kuF9kxQ_capabilities', 'a:1:{s:8:\"customer\";b:1;}'),
(207, 7, '3kuF9kxQ_user_level', '0'),
(208, 7, 'session_tokens', 'a:1:{s:64:\"f0e6069f6313074cf7f9a02a32f663c6fcb605834f1f3a7a965ac33bcd458d4a\";a:4:{s:10:\"expiration\";i:1619497768;s:2:\"ip\";s:13:\"116.103.18.14\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36\";s:5:\"login\";i:1618288168;}}'),
(209, 7, 'wc_last_active', '1618272000');

-- --------------------------------------------------------

--
-- Table structure for table `3kuF9kxQ_users`
--

CREATE TABLE `3kuF9kxQ_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `3kuF9kxQ_users`
--

INSERT INTO `3kuF9kxQ_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'trasua', '$P$BSTdLRNTAu0EBV0Kg.XydwPI8rQDo40', 'trasua', 'hungthai56@gmail.com', 'http://localhost/trasua', '2020-12-17 07:30:55', '', 0, 'trasua'),
(2, 'hunghthai12', '$P$BCxPHKD.bnzyh3hCdjnKIdGml/rvrC.', 'hunghthai12', 'hunghthai12@gmail.com', '', '2020-12-22 01:22:33', '', 0, 'hunghthai12'),
(3, 'langtumientrung104', '$P$BaN1lJ5F3Dolw0W6ntCKdpHQyjJe5h0', 'langtumientrung104', 'langtumientrung104@gmail.com', '', '2020-12-22 02:02:59', '1608608232:$P$Bk.k9sj.oXEz3TzywH8.j4G448bcRW1', 0, 'langtumientrung104'),
(4, 'gamehuyenthoai2', '$P$BH5A6x7eg238YwX4odq.58J1/3rrAV.', 'gamehuyenthoai2', 'gamehuyenthoai2@gmail.com', '', '2020-12-22 02:04:25', '', 0, 'gamehuyenthoai2'),
(5, 'kythuat.vitutomedia', '$P$BTjXLiugwHpztFrNYmPJaVku6dqmfJ/', 'kythuat-vitutomedia', 'kythuat.vitutomedia@gmail.com', '', '2020-12-22 03:55:45', '1614993553:$P$BLJR4fY63VvSCqc1C0hINHuPJsnZKU0', 0, 'kythuat.vitutomedia'),
(6, 'hungthai', '$P$B4gDzSRSxecvQExiYmYOX5Yd7oVpXd1', 'hungthai', 'hungthai3@yahoo.com', '', '2020-12-22 04:12:03', '', 0, 'hungthai'),
(7, 'Trang Nguyen', '$P$BxwwABFUYJCtxmkqmkfoHPjKNT6W0X/', 'trang-nguyen', 'trangnguyenthi1682@gmail.com', '', '2021-04-13 04:29:27', '', 0, 'Trang Nguyen');

-- --------------------------------------------------------

--
-- Table structure for table `3kuF9kxQ_wc_admin_notes`
--

CREATE TABLE `3kuF9kxQ_wc_admin_notes` (
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_reminder` datetime DEFAULT NULL,
  `is_snoozable` tinyint(1) NOT NULL DEFAULT 0,
  `layout` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `icon` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'info'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `3kuF9kxQ_wc_admin_notes`
--

INSERT INTO `3kuF9kxQ_wc_admin_notes` (`note_id`, `name`, `type`, `locale`, `title`, `content`, `content_data`, `status`, `source`, `date_created`, `date_reminder`, `is_snoozable`, `layout`, `image`, `is_deleted`, `icon`) VALUES
(1, 'wc-admin-onboarding-email-marketing', 'info', 'en_US', 'Tips, product updates, and inspiration', 'We\'re here for you - get tips, product updates and inspiration straight to your email box', '{}', 'unactioned', 'woocommerce-admin', '2020-12-17 09:27:29', NULL, 0, 'plain', '', 0, 'info'),
(2, 'wc-admin-marketing-intro', 'info', 'en_US', 'Connect with your audience', 'Grow your customer base and increase your sales with marketing tools built for WooCommerce.', '{}', 'unactioned', 'woocommerce-admin', '2020-12-17 09:27:29', NULL, 0, 'plain', '', 0, 'info'),
(3, 'ecomm-need-help-setting-up-your-store', 'info', 'en_US', 'Need help setting up your Store?', 'Schedule a free 30-min <a href=\"https://wordpress.com/support/concierge-support/\">quick start session</a> and get help from our specialists. We’re happy to walk through setup steps, show you around the WordPress.com dashboard, troubleshoot any issues you may have, and help you the find the features you need to accomplish your goals for your site.', '{}', 'pending', 'woocommerce.com', '2020-12-17 09:27:30', NULL, 0, 'plain', '', 0, 'info'),
(4, 'woocommerce-services', 'info', 'en_US', 'WooCommerce Shipping & Tax', 'WooCommerce Shipping &amp; Tax helps get your store “ready to sell” as quickly as possible. You create your products. We take care of tax calculation, payment processing, and shipping label printing! Learn more about the extension that you just installed.', '{}', 'pending', 'woocommerce.com', '2020-12-17 09:27:30', NULL, 0, 'plain', '', 0, 'info'),
(5, 'ecomm-unique-shopping-experience', 'info', 'en_US', 'For a shopping experience as unique as your customers', 'Product Add-Ons allow your customers to personalize products while they’re shopping on your online store. No more follow-up email requests—customers get what they want, before they’re done checking out. Learn more about this extension that comes included in your plan.', '{}', 'pending', 'woocommerce.com', '2020-12-17 09:27:30', NULL, 0, 'plain', '', 0, 'info'),
(10, 'wc-admin-wc-helper-connection', 'info', 'en_US', 'Connect to WooCommerce.com', 'Connect to get important product notifications and updates.', '{}', 'unactioned', 'woocommerce-admin', '2020-12-17 09:27:30', NULL, 0, 'plain', '', 0, 'info'),
(11, 'wcpay-promo-2020-11', 'marketing', 'en_US', 'Manage subscriber payments from your store\'s dashboard', 'Securely accept cards and manage transactions right from your dashboard with <a href=\"https://woocommerce.com/payments/?utm_medium=notification&amp;utm_source=product&amp;utm_campaign=wcpay_ctrl20\" target=\"_blank\">WooCommerce Payments</a>  – now supporting <a href=\"https://woocommerce.com/products/woocommerce-subscriptions/?utm_medium=notification&amp;utm_source=product&amp;utm_campaign=wcpay_ctrl20\" target=\"_blank\">WooCommerce Subscriptions</a>! <br /><br /><em>By clicking \"Install now,\" you agree to our <a href=\"https://wordpress.com/tos/?utm_medium=notification&amp;utm_source=product&amp;utm_campaign=wcpay_ctrl20\" target=\"_blank\">Terms of Service</a>.</em>', '{}', 'pending', 'woocommerce.com', '2020-12-21 04:21:52', NULL, 0, 'plain', '', 0, 'info'),
(12, 'wcpay-subscriptions-2020-11', 'marketing', 'en_US', 'Manage subscriber payments from your store\'s dashboard', 'Securely accept cards and manage transactions right from your dashboard with <a href=\"https://woocommerce.com/payments/?utm_medium=notification&amp;utm_source=product&amp;utm_campaign=wcpay_ctrl20\" target=\"_blank\">WooCommerce Payments</a>  – now supporting <a href=\"https://woocommerce.com/products/woocommerce-subscriptions/?utm_medium=notification&amp;utm_source=product&amp;utm_campaign=wcpay_ctrl20\" target=\"_blank\">WooCommerce Subscriptions</a>! <br /><br /><em>By clicking \"Install now,\" you agree to our <a href=\"https://wordpress.com/tos/?utm_medium=notification&amp;utm_source=product&amp;utm_campaign=wcpay_ctrl20\" target=\"_blank\">Terms of Service</a>.</em>', '{}', 'pending', 'woocommerce.com', '2020-12-21 04:21:52', NULL, 0, 'plain', '', 0, 'info'),
(13, 'wcpay-promo-2020-12', 'marketing', 'en_US', 'Get 50% off transaction fees with WooCommerce Payments', 'Keep more of your hard-earned cash by adding <a href=\"https://woocommerce.com/payments/?utm_medium=notification&amp;utm_source=product&amp;utm_campaign=wcpay_exp20\" target=\"_blank\">WooCommerce Payments</a> to your store. Lock in a discounted rate of 1.5% + $0.15 for $25,000 of payments (or three months, whichever comes first). Limited time offer – don’t miss out! <br /><br /><em>By clicking \"Install now,\" you agree to our promotional <a href=\"https://woocommerce.com/terms-conditions/woocommerce-payments-promotion/?utm_medium=notification&amp;utm_source=product&amp;utm_campaign=wcpay_exp20\" target=\"_blank\">Terms of Service</a>.</em>', '{}', 'pending', 'woocommerce.com', '2020-12-21 04:21:52', NULL, 0, 'plain', '', 0, 'info'),
(14, 'wcpay-subscriptions-2020-12', 'marketing', 'en_US', 'Manage payments from your store\'s dashboard', 'Securely accept cards and manage transactions right from your dashboard with <a href=\"https://woocommerce.com/payments/?utm_medium=notification&amp;utm_source=product&amp;utm_campaign=wcpay_ctrl20\" target=\"_blank\">WooCommerce Payments</a>! Zero setup fees or monthly fees. Just pay-as-you-go, starting at just 2.9% + $0.30 per transaction for U.S.-issued cards. <br /><br /><em>By clicking \"Install now,\" you agree to our <a href=\"https://wordpress.com/tos/?utm_medium=notification&amp;utm_source=product&amp;utm_campaign=wcpay_ctrl20\" target=\"_blank\">Terms of Service</a>.</em>', '{}', 'pending', 'woocommerce.com', '2020-12-21 04:21:52', NULL, 0, 'plain', '', 0, 'info'),
(16, 'wc-admin-mobile-app', 'info', 'en_US', 'Install Woo mobile app', 'Install the WooCommerce mobile app to manage orders, receive sales notifications, and view key metrics — wherever you are.', '{}', 'unactioned', 'woocommerce-admin', '2021-01-05 02:43:47', NULL, 0, 'plain', '', 0, 'info'),
(17, 'wc-admin-personalize-store', 'info', 'en_US', 'Personalize your store\'s homepage', 'The homepage is one of the most important entry points in your store. When done right it can lead to higher conversions and engagement. Don\'t forget to personalize the homepage that we created for your store during the onboarding.', '{}', 'unactioned', 'woocommerce-admin', '2021-01-05 02:43:47', NULL, 0, 'plain', '', 0, 'info'),
(18, 'wc-admin-store-notice-giving-feedback-2', 'info', 'en_US', 'Give feedback', 'Now that you’ve chosen us as a partner, our goal is to make sure we\'re providing the right tools to meet your needs. We\'re looking forward to having your feedback on the store setup experience so we can improve it in the future.', '{}', 'unactioned', 'woocommerce-admin', '2021-01-05 02:43:47', NULL, 0, 'plain', '', 0, 'info'),
(19, 'wc-admin-insight-first-sale', 'survey', 'en_US', 'Did you know?', 'A WooCommerce powered store needs on average 31 days to get the first sale. You\'re on the right track! Do you find this type of insight useful?', '{}', 'unactioned', 'woocommerce-admin', '2021-01-05 02:43:47', NULL, 0, 'plain', '', 0, 'info'),
(21, 'wc-admin-orders-milestone', 'info', 'en_US', 'Congratulations on processing 10 orders!', 'You\'ve hit the 10 orders milestone! Look at you go. Browse some WooCommerce success stories for inspiration.', '{}', 'unactioned', 'woocommerce-admin', '2021-01-06 04:27:44', NULL, 0, 'plain', '', 0, 'info'),
(22, 'wc-admin-manage-store-activity-from-home-screen', 'info', 'en_US', 'New! Manage your store activity from the Home screen', 'Start your day knowing the next steps you need to take with your orders, products, and customer feedback.<br /><br />Read more about how to use the activity panels on the Home screen.', '{}', 'unactioned', 'woocommerce-admin', '2021-02-19 04:40:38', NULL, 0, 'plain', '', 0, 'info'),
(23, 'wc-update-db-reminder', 'update', 'en_US', 'Yêu cầu cập nhật cơ sở dữ liệu WooCommerce', 'WooCommerce đã được cập nhật! Để đảm bảo mọi thứ hoạt động trơn tru, chúng tôi cần cập nhật cơ sở dữ liệu lên bản mới nhất. Quá trình cập nhật cơ sở dữ liệu sẽ chạy nền và sẽ mất chút thời gian, hãy kiên nhẫn. Người dùng cao cấp có thể cập nhật thay thế qua <a href=\"https://github.com/woocommerce/woocommerce/wiki/Upgrading-the-database-using-WP-CLI\">WP CLI</a>.', '{}', 'unactioned', 'woocommerce-core', '2021-02-19 04:40:39', NULL, 0, 'plain', '', 0, 'info'),
(24, 'wc-admin-filter-by-product-variations-in-reports', 'info', 'en_US', 'New - filter by product variations in orders and products reports', 'One of the most awaited features has just arrived! You can now have insights into each product variation in the orders and products reports.', '{}', 'unactioned', 'woocommerce-admin', '2021-02-19 09:56:02', NULL, 0, 'banner', 'http://bubotea.eu/wp-content/plugins/woocommerce/packages/woocommerce-admin/images/admin_notes/filter-by-product-variations-note.svg', 0, 'info'),
(25, 'wc-admin-insight-first-product-and-payment', 'survey', 'en_US', 'Insight', 'More than 80% of new merchants add the first product and have at least one payment method set up during the first week. We\'re here to help your business succeed! Do you find this type of insight useful?', '{}', 'unactioned', 'woocommerce-admin', '2021-02-19 09:56:02', NULL, 0, 'plain', '', 0, 'info'),
(26, 'wc-admin-real-time-order-alerts', 'info', 'en_US', 'Get real-time order alerts anywhere', 'Get notifications about store activity, including new orders and product reviews directly on your mobile devices with the Woo app.', '{}', 'unactioned', 'woocommerce-admin', '2021-03-17 09:28:02', NULL, 0, 'plain', '', 0, 'info');

-- --------------------------------------------------------

--
-- Table structure for table `3kuF9kxQ_wc_admin_note_actions`
--

CREATE TABLE `3kuF9kxQ_wc_admin_note_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `query` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT 0,
  `actioned_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `3kuF9kxQ_wc_admin_note_actions`
--

INSERT INTO `3kuF9kxQ_wc_admin_note_actions` (`action_id`, `note_id`, `name`, `label`, `query`, `status`, `is_primary`, `actioned_text`) VALUES
(1, 1, 'yes-please', 'Yes please!', 'https://woocommerce.us8.list-manage.com/subscribe/post?u=2c1434dc56f9506bf3c3ecd21&amp;id=13860df971&amp;SIGNUPPAGE=plugin', 'actioned', 0, ''),
(2, 2, 'open-marketing-hub', 'Open marketing hub', 'http://localhost/trasua/wp-admin/admin.php?page=wc-admin&path=/marketing', 'actioned', 0, ''),
(10, 10, 'connect', 'Connect', '?page=wc-addons&section=helper', 'unactioned', 0, ''),
(495, 16, 'learn-more', 'Tìm hiểu thêm', 'https://woocommerce.com/mobile/', 'actioned', 0, ''),
(496, 17, 'personalize-homepage', 'Personalize homepage', 'https://bubotea.euwp-admin/post.php?post=366&action=edit', 'actioned', 1, ''),
(497, 18, 'share-feedback', 'Share feedback', 'https://automattic.survey.fm/new-onboarding-survey', 'actioned', 0, ''),
(498, 19, 'affirm-insight-first-sale', 'Có', '', 'actioned', 0, 'Thanks for your feedback'),
(499, 19, 'deny-insight-first-sale', 'Không', '', 'actioned', 0, 'Thanks for your feedback'),
(529, 21, 'browse', 'Browse', 'https://woocommerce.com/success-stories/?utm_source=inbox', 'actioned', 0, ''),
(551, 22, 'learn-more', 'Tìm hiểu thêm', 'https://docs.woocommerce.com/document/home-screen/?utm_source=inbox', 'actioned', 1, ''),
(568, 24, 'learn-more', 'Tìm hiểu thêm', 'https://docs.woocommerce.com/document/woocommerce-analytics/#variations-report', 'actioned', 0, ''),
(569, 25, 'affirm-insight-first-product-and-payment', 'Có', '', 'actioned', 0, 'Thanks for your feedback'),
(612, 26, 'learn-more', 'Tìm hiểu thêm', 'https://woocommerce.com/mobile/?utm_source=inbox', 'actioned', 0, ''),
(907, 3, 'set-up-concierge', 'Schedule free session', 'https://wordpress.com/me/concierge', 'actioned', 1, ''),
(908, 4, 'learn-more', 'Learn more', 'https://docs.woocommerce.com/document/woocommerce-shipping-and-tax/?utm_source=inbox', 'unactioned', 1, ''),
(909, 5, 'learn-more-ecomm-unique-shopping-experience', 'Learn more', 'https://docs.woocommerce.com/document/product-add-ons/?utm_source=inbox', 'actioned', 1, ''),
(910, 11, 'install-now', 'Install now', 'admin.php?page=wc-admin&action=setup-woocommerce-payments', 'actioned', 1, ''),
(911, 12, 'install-now', 'Install now', 'admin.php?page=wc-admin&action=setup-woocommerce-payments', 'actioned', 1, ''),
(912, 13, 'install-now', 'Install now', 'admin.php?page=wc-admin&action=setup-woocommerce-payments', 'actioned', 1, ''),
(913, 14, 'install-now', 'Install now', 'admin.php?page=wc-admin&action=setup-woocommerce-payments', 'actioned', 1, ''),
(922, 23, 'update-db_run', 'Cập nhật cơ sở dữ liệu WooCommerce', 'https://bubotea.com/wp-admin/admin.php?page=wc-settings&do_update_woocommerce=true&wc_db_update_nonce=30f619e19e', 'unactioned', 1, ''),
(923, 23, 'update-db_learn-more', 'Tìm hiểu về bản cập nhật', 'https://docs.woocommerce.com/document/how-to-update-woocommerce/', 'unactioned', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `3kuF9kxQ_wc_category_lookup`
--

CREATE TABLE `3kuF9kxQ_wc_category_lookup` (
  `category_tree_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `3kuF9kxQ_wc_category_lookup`
--

INSERT INTO `3kuF9kxQ_wc_category_lookup` (`category_tree_id`, `category_id`) VALUES
(16, 16),
(19, 19);

-- --------------------------------------------------------

--
-- Table structure for table `3kuF9kxQ_wc_customer_lookup`
--

CREATE TABLE `3kuF9kxQ_wc_customer_lookup` (
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_last_active` timestamp NULL DEFAULT NULL,
  `date_registered` timestamp NULL DEFAULT NULL,
  `country` char(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `postcode` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `3kuF9kxQ_wc_customer_lookup`
--

INSERT INTO `3kuF9kxQ_wc_customer_lookup` (`customer_id`, `user_id`, `username`, `first_name`, `last_name`, `email`, `date_last_active`, `date_registered`, `country`, `postcode`, `city`, `state`) VALUES
(1, 1, 'trasua', 'hùng', 'thái', 'hungthai56@gmail.com', '2021-04-12 17:00:00', '2020-12-17 00:30:55', 'FI', '', 'naritaweg', '');

-- --------------------------------------------------------

--
-- Table structure for table `3kuF9kxQ_wc_download_log`
--

CREATE TABLE `3kuF9kxQ_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `3kuF9kxQ_wc_order_coupon_lookup`
--

CREATE TABLE `3kuF9kxQ_wc_order_coupon_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `coupon_id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `discount_amount` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `3kuF9kxQ_wc_order_product_lookup`
--

CREATE TABLE `3kuF9kxQ_wc_order_product_lookup` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variation_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_qty` int(11) NOT NULL,
  `product_net_revenue` double NOT NULL DEFAULT 0,
  `product_gross_revenue` double NOT NULL DEFAULT 0,
  `coupon_amount` double NOT NULL DEFAULT 0,
  `tax_amount` double NOT NULL DEFAULT 0,
  `shipping_amount` double NOT NULL DEFAULT 0,
  `shipping_tax_amount` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `3kuF9kxQ_wc_order_product_lookup`
--

INSERT INTO `3kuF9kxQ_wc_order_product_lookup` (`order_item_id`, `order_id`, `product_id`, `variation_id`, `customer_id`, `date_created`, `product_qty`, `product_net_revenue`, `product_gross_revenue`, `coupon_amount`, `tax_amount`, `shipping_amount`, `shipping_tax_amount`) VALUES
(1, 250, 72, 75, 1, '2020-12-19 01:05:44', 1, 3.5, 3.5, 0, 0, 0, 0),
(2, 250, 59, 68, 1, '2020-12-19 01:05:44', 1, 3.5, 3.5, 0, 0, 0, 0),
(3, 251, 77, 78, 1, '2020-12-19 01:09:24', 1, 3.5, 3.5, 0, 0, 0, 0),
(4, 292, 85, 86, 1, '2020-12-19 11:14:00', 10, 35, 35, 0, 0, 0, 0),
(6, 293, 85, 86, 1, '2020-12-19 11:14:56', 10, 35, 35, 0, 0, 0, 0),
(8, 327, 77, 78, 1, '2020-12-20 02:17:33', 9, 31.5, 31.5, 0, 0, 0, 0),
(9, 327, 85, 87, 1, '2020-12-20 02:17:33', 1, 4.5, 4.5, 0, 0, 0, 0),
(11, 400, 85, 86, 1, '2020-12-22 10:23:34', 2, 7, 7, 0, 0, 0, 0),
(12, 400, 88, 89, 1, '2020-12-22 10:23:34', 1, 3.5, 3.5, 0, 0, 0, 0),
(14, 401, 88, 89, 1, '2020-12-22 10:27:47', 10, 35, 35, 0, 0, 0, 0),
(16, 402, 88, 89, 1, '2020-12-22 10:44:01', 10, 35, 35, 0, 0, 0, 0),
(18, 403, 88, 89, 1, '2020-12-22 10:52:54', 10, 35, 35, 0, 0, 0, 0),
(20, 477, 88, 89, 1, '2021-01-06 04:08:17', 4, 14, 18, 0, 0, 4, 0),
(21, 477, 85, 87, 1, '2021-01-06 04:08:17', 1, 4.5, 5.5, 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `3kuF9kxQ_wc_order_stats`
--

CREATE TABLE `3kuF9kxQ_wc_order_stats` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `num_items_sold` int(11) NOT NULL DEFAULT 0,
  `total_sales` double NOT NULL DEFAULT 0,
  `tax_total` double NOT NULL DEFAULT 0,
  `shipping_total` double NOT NULL DEFAULT 0,
  `net_total` double NOT NULL DEFAULT 0,
  `returning_customer` tinyint(1) DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `3kuF9kxQ_wc_order_stats`
--

INSERT INTO `3kuF9kxQ_wc_order_stats` (`order_id`, `parent_id`, `date_created`, `date_created_gmt`, `num_items_sold`, `total_sales`, `tax_total`, `shipping_total`, `net_total`, `returning_customer`, `status`, `customer_id`) VALUES
(250, 0, '2020-12-19 01:05:44', '2020-12-19 01:05:44', 2, 7, 0, 0, 7, 0, 'wc-processing', 1),
(251, 0, '2020-12-19 01:09:24', '2020-12-19 01:09:24', 1, 3.5, 0, 0, 3.5, 1, 'wc-completed', 1),
(292, 0, '2020-12-19 11:14:00', '2020-12-19 11:14:00', 10, 35, 0, 0, 35, 1, 'wc-processing', 1),
(293, 0, '2020-12-19 11:14:56', '2020-12-19 11:14:56', 10, 35, 0, 0, 35, 1, 'wc-processing', 1),
(327, 0, '2020-12-20 02:17:33', '2020-12-20 02:17:33', 10, 36, 0, 0, 36, 1, 'wc-completed', 1),
(400, 0, '2020-12-22 10:23:34', '2020-12-22 10:23:34', 3, 10.5, 0, 0, 10.5, 1, 'wc-processing', 1),
(401, 0, '2020-12-22 10:27:47', '2020-12-22 10:27:47', 10, 35, 0, 0, 35, 1, 'wc-completed', 1),
(402, 0, '2020-12-22 10:44:01', '2020-12-22 10:44:01', 10, 35, 0, 0, 35, 1, 'wc-processing', 1),
(403, 0, '2020-12-22 10:52:54', '2020-12-22 10:52:54', 10, 35, 0, 0, 35, 1, 'wc-processing', 1),
(477, 0, '2021-01-06 04:08:17', '2021-01-06 04:08:17', 5, 23.5, 0, 5, 18.5, 1, 'wc-processing', 1);

-- --------------------------------------------------------

--
-- Table structure for table `3kuF9kxQ_wc_order_tax_lookup`
--

CREATE TABLE `3kuF9kxQ_wc_order_tax_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipping_tax` double NOT NULL DEFAULT 0,
  `order_tax` double NOT NULL DEFAULT 0,
  `total_tax` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `3kuF9kxQ_wc_product_meta_lookup`
--

CREATE TABLE `3kuF9kxQ_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT 0,
  `downloadable` tinyint(1) DEFAULT 0,
  `min_price` decimal(19,4) DEFAULT NULL,
  `max_price` decimal(19,4) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT 0,
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT 0,
  `average_rating` decimal(3,2) DEFAULT 0.00,
  `total_sales` bigint(20) DEFAULT 0,
  `tax_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'taxable',
  `tax_class` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `3kuF9kxQ_wc_product_meta_lookup`
--

INSERT INTO `3kuF9kxQ_wc_product_meta_lookup` (`product_id`, `sku`, `virtual`, `downloadable`, `min_price`, `max_price`, `onsale`, `stock_quantity`, `stock_status`, `rating_count`, `average_rating`, `total_sales`, `tax_status`, `tax_class`) VALUES
(59, '', 0, 0, '3.5000', '4.5000', 0, NULL, 'instock', 0, '0.00', 1, 'taxable', ''),
(68, '', 0, 0, '3.5000', '3.5000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(69, '', 0, 0, '4.5000', '4.5000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(72, '', 0, 0, '3.5000', '4.5000', 0, NULL, 'instock', 0, '0.00', 1, 'taxable', ''),
(75, '', 0, 0, '3.5000', '3.5000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(76, '', 0, 0, '4.5000', '4.5000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(77, '', 0, 0, '3.5000', '4.5000', 0, NULL, 'instock', 0, '0.00', 10, 'taxable', ''),
(78, '', 0, 0, '3.5000', '3.5000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(79, '', 0, 0, '4.5000', '4.5000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(81, '', 0, 0, '3.5000', '4.5000', 0, NULL, 'instock', 1, '5.00', 0, 'taxable', ''),
(82, '', 0, 0, '3.5000', '3.5000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(83, '', 0, 0, '4.5000', '4.5000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(85, '', 0, 0, '3.5000', '4.5000', 0, NULL, 'instock', 0, '0.00', 24, 'taxable', ''),
(86, '', 0, 0, '3.5000', '3.5000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(87, '', 0, 0, '4.5000', '4.5000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(88, '', 0, 0, '3.5000', '4.5000', 0, NULL, 'instock', 1, '5.00', 35, 'taxable', ''),
(89, '', 0, 0, '3.5000', '3.5000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(90, '', 0, 0, '4.5000', '4.5000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', 'parent');

-- --------------------------------------------------------

--
-- Table structure for table `3kuF9kxQ_wc_reserved_stock`
--

CREATE TABLE `3kuF9kxQ_wc_reserved_stock` (
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `stock_quantity` double NOT NULL DEFAULT 0,
  `timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expires` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `3kuF9kxQ_wc_tax_rate_classes`
--

CREATE TABLE `3kuF9kxQ_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `3kuF9kxQ_wc_tax_rate_classes`
--

INSERT INTO `3kuF9kxQ_wc_tax_rate_classes` (`tax_rate_class_id`, `name`, `slug`) VALUES
(1, 'Reduced rate', 'reduced-rate'),
(2, 'Zero rate', 'zero-rate');

-- --------------------------------------------------------

--
-- Table structure for table `3kuF9kxQ_wc_webhooks`
--

CREATE TABLE `3kuF9kxQ_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT 0,
  `pending_delivery` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `3kuF9kxQ_woocommerce_api_keys`
--

CREATE TABLE `3kuF9kxQ_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `3kuF9kxQ_woocommerce_attribute_taxonomies`
--

CREATE TABLE `3kuF9kxQ_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `3kuF9kxQ_woocommerce_attribute_taxonomies`
--

INSERT INTO `3kuF9kxQ_woocommerce_attribute_taxonomies` (`attribute_id`, `attribute_name`, `attribute_label`, `attribute_type`, `attribute_orderby`, `attribute_public`) VALUES
(1, 'kich-thuoc', 'Kích thước', 'select', 'menu_order', 0);

-- --------------------------------------------------------

--
-- Table structure for table `3kuF9kxQ_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `3kuF9kxQ_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `3kuF9kxQ_woocommerce_log`
--

CREATE TABLE `3kuF9kxQ_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `3kuF9kxQ_woocommerce_order_itemmeta`
--

CREATE TABLE `3kuF9kxQ_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `3kuF9kxQ_woocommerce_order_itemmeta`
--

INSERT INTO `3kuF9kxQ_woocommerce_order_itemmeta` (`meta_id`, `order_item_id`, `meta_key`, `meta_value`) VALUES
(1, 1, '_product_id', '72'),
(2, 1, '_variation_id', '75'),
(3, 1, '_qty', '1'),
(4, 1, '_tax_class', ''),
(5, 1, '_line_subtotal', '3.5'),
(6, 1, '_line_subtotal_tax', '0'),
(7, 1, '_line_total', '3.5'),
(8, 1, '_line_tax', '0'),
(9, 1, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(10, 1, 'pa_kich-thuoc', '250ml'),
(11, 2, '_product_id', '59'),
(12, 2, '_variation_id', '68'),
(13, 2, '_qty', '1'),
(14, 2, '_tax_class', ''),
(15, 2, '_line_subtotal', '3.5'),
(16, 2, '_line_subtotal_tax', '0'),
(17, 2, '_line_total', '3.5'),
(18, 2, '_line_tax', '0'),
(19, 2, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(20, 2, 'pa_kich-thuoc', '250ml'),
(21, 3, '_product_id', '77'),
(22, 3, '_variation_id', '78'),
(23, 3, '_qty', '1'),
(24, 3, '_tax_class', ''),
(25, 3, '_line_subtotal', '3.5'),
(26, 3, '_line_subtotal_tax', '0'),
(27, 3, '_line_total', '3.5'),
(28, 3, '_line_tax', '0'),
(29, 3, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(30, 3, 'pa_kich-thuoc', '250ml'),
(31, 4, '_product_id', '85'),
(32, 4, '_variation_id', '86'),
(33, 4, '_qty', '10'),
(34, 4, '_tax_class', ''),
(35, 4, '_line_subtotal', '35'),
(36, 4, '_line_subtotal_tax', '0'),
(37, 4, '_line_total', '35'),
(38, 4, '_line_tax', '0'),
(39, 4, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(40, 4, 'pa_kich-thuoc', '250ml'),
(41, 5, 'method_id', 'free_shipping'),
(42, 5, 'instance_id', '4'),
(43, 5, 'cost', '0.0'),
(44, 5, 'total_tax', '0'),
(45, 5, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(46, 5, 'Mặt hàng', 'Trà Sữa TROPICAL PARADISE - 250ML &times; 10'),
(47, 6, '_product_id', '85'),
(48, 6, '_variation_id', '86'),
(49, 6, '_qty', '10'),
(50, 6, '_tax_class', ''),
(51, 6, '_line_subtotal', '35'),
(52, 6, '_line_subtotal_tax', '0'),
(53, 6, '_line_total', '35'),
(54, 6, '_line_tax', '0'),
(55, 6, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(56, 6, 'pa_kich-thuoc', '250ml'),
(57, 7, 'method_id', 'free_shipping'),
(58, 7, 'instance_id', '4'),
(59, 7, 'cost', '0.0'),
(60, 7, 'total_tax', '0'),
(61, 7, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(62, 7, 'Mặt hàng', 'Trà Sữa TROPICAL PARADISE - 250ML &times; 10'),
(63, 8, '_product_id', '77'),
(64, 8, '_variation_id', '78'),
(65, 8, '_qty', '9'),
(66, 8, '_tax_class', ''),
(67, 8, '_line_subtotal', '31.5'),
(68, 8, '_line_subtotal_tax', '0'),
(69, 8, '_line_total', '31.5'),
(70, 8, '_line_tax', '0'),
(71, 8, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(72, 8, 'pa_kich-thuoc', '250ml'),
(73, 9, '_product_id', '85'),
(74, 9, '_variation_id', '87'),
(75, 9, '_qty', '1'),
(76, 9, '_tax_class', ''),
(77, 9, '_line_subtotal', '4.5'),
(78, 9, '_line_subtotal_tax', '0'),
(79, 9, '_line_total', '4.5'),
(80, 9, '_line_tax', '0'),
(81, 9, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(82, 9, 'pa_kich-thuoc', '330ml'),
(83, 10, 'method_id', 'free_shipping'),
(84, 10, 'instance_id', '4'),
(85, 10, 'cost', '0.0'),
(86, 10, 'total_tax', '0'),
(87, 10, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(88, 10, 'Mặt hàng', 'Trà Sữa Thái Đỏ - 250ML &times; 9, Trà Sữa TROPICAL PARADISE - 330ML &times; 1'),
(89, 11, '_product_id', '85'),
(90, 11, '_variation_id', '86'),
(91, 11, '_qty', '2'),
(92, 11, '_tax_class', ''),
(93, 11, '_line_subtotal', '7'),
(94, 11, '_line_subtotal_tax', '0'),
(95, 11, '_line_total', '7'),
(96, 11, '_line_tax', '0'),
(97, 11, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(98, 11, 'pa_kich-thuoc', '250ml'),
(99, 12, '_product_id', '88'),
(100, 12, '_variation_id', '89'),
(101, 12, '_qty', '1'),
(102, 12, '_tax_class', ''),
(103, 12, '_line_subtotal', '3.5'),
(104, 12, '_line_subtotal_tax', '0'),
(105, 12, '_line_total', '3.5'),
(106, 12, '_line_tax', '0'),
(107, 12, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(108, 12, 'pa_kich-thuoc', '250ml'),
(109, 13, 'method_id', 'free_shipping'),
(110, 13, 'instance_id', '4'),
(111, 13, 'cost', '0.0'),
(112, 13, 'total_tax', '0'),
(113, 13, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(114, 13, 'Mặt hàng', 'Trà Sữa TROPICAL PARADISE - 250ML &times; 2, Trà Sữa Nguyên Vị - 250ML &times; 1'),
(115, 14, '_product_id', '88'),
(116, 14, '_variation_id', '89'),
(117, 14, '_qty', '10'),
(118, 14, '_tax_class', ''),
(119, 14, '_line_subtotal', '35'),
(120, 14, '_line_subtotal_tax', '0'),
(121, 14, '_line_total', '35'),
(122, 14, '_line_tax', '0'),
(123, 14, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(124, 14, 'pa_kich-thuoc', '250ml'),
(125, 15, 'method_id', 'free_shipping'),
(126, 15, 'instance_id', '4'),
(127, 15, 'cost', '0.0'),
(128, 15, 'total_tax', '0'),
(129, 15, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(130, 15, 'Mặt hàng', 'Trà Sữa Nguyên Vị - 250ML &times; 10'),
(131, 16, '_product_id', '88'),
(132, 16, '_variation_id', '89'),
(133, 16, '_qty', '10'),
(134, 16, '_tax_class', ''),
(135, 16, '_line_subtotal', '35'),
(136, 16, '_line_subtotal_tax', '0'),
(137, 16, '_line_total', '35'),
(138, 16, '_line_tax', '0'),
(139, 16, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(140, 16, 'pa_kich-thuoc', '250ml'),
(141, 17, 'method_id', 'free_shipping'),
(142, 17, 'instance_id', '4'),
(143, 17, 'cost', '0.0'),
(144, 17, 'total_tax', '0'),
(145, 17, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(146, 17, 'Mặt hàng', 'Trà Sữa Nguyên Vị - 250ML &times; 10'),
(147, 18, '_product_id', '88'),
(148, 18, '_variation_id', '89'),
(149, 18, '_qty', '10'),
(150, 18, '_tax_class', ''),
(151, 18, '_line_subtotal', '35'),
(152, 18, '_line_subtotal_tax', '0'),
(153, 18, '_line_total', '35'),
(154, 18, '_line_tax', '0'),
(155, 18, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(156, 18, 'pa_kich-thuoc', '250ml'),
(157, 19, 'method_id', 'free_shipping'),
(158, 19, 'instance_id', '4'),
(159, 19, 'cost', '0.0'),
(160, 19, 'total_tax', '0'),
(161, 19, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(162, 19, 'Mặt hàng', 'Trà Sữa Nguyên Vị - 250ML &times; 10'),
(163, 20, '_product_id', '88'),
(164, 20, '_variation_id', '89'),
(165, 20, '_qty', '4'),
(166, 20, '_tax_class', ''),
(167, 20, '_line_subtotal', '14'),
(168, 20, '_line_subtotal_tax', '0'),
(169, 20, '_line_total', '14'),
(170, 20, '_line_tax', '0'),
(171, 20, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(172, 20, 'pa_kich-thuoc', '250ml'),
(173, 21, '_product_id', '85'),
(174, 21, '_variation_id', '87'),
(175, 21, '_qty', '1'),
(176, 21, '_tax_class', ''),
(177, 21, '_line_subtotal', '4.5'),
(178, 21, '_line_subtotal_tax', '0'),
(179, 21, '_line_total', '4.5'),
(180, 21, '_line_tax', '0'),
(181, 21, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(182, 21, 'pa_kich-thuoc', '330ml'),
(183, 22, 'method_id', 'flat_rate'),
(184, 22, 'instance_id', '5'),
(185, 22, 'cost', '5.0'),
(186, 22, 'total_tax', '0'),
(187, 22, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(188, 22, 'Mặt hàng', 'Trà Sữa Original - 250ML &times; 4, Trà Sữa TROPICAL PARADISE - 330ML &times; 1');

-- --------------------------------------------------------

--
-- Table structure for table `3kuF9kxQ_woocommerce_order_items`
--

CREATE TABLE `3kuF9kxQ_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `3kuF9kxQ_woocommerce_order_items`
--

INSERT INTO `3kuF9kxQ_woocommerce_order_items` (`order_item_id`, `order_item_name`, `order_item_type`, `order_id`) VALUES
(1, 'Trà Sữa Đào - 250ML', 'line_item', 250),
(2, 'Trà Sữa Khoai Môn - 250ML', 'line_item', 250),
(3, 'Trà Sữa Thái Đỏ - 250ML', 'line_item', 251),
(4, 'Trà Sữa TROPICAL PARADISE - 250ML', 'line_item', 292),
(5, 'Giao hàng miễn phí', 'shipping', 292),
(6, 'Trà Sữa TROPICAL PARADISE - 250ML', 'line_item', 293),
(7, 'Giao hàng miễn phí', 'shipping', 293),
(8, 'Trà Sữa Thái Đỏ - 250ML', 'line_item', 327),
(9, 'Trà Sữa TROPICAL PARADISE - 330ML', 'line_item', 327),
(10, 'Giao hàng miễn phí', 'shipping', 327),
(11, 'Trà Sữa TROPICAL PARADISE - 250ML', 'line_item', 400),
(12, 'Trà Sữa Nguyên Vị - 250ML', 'line_item', 400),
(13, 'Giao hàng miễn phí', 'shipping', 400),
(14, 'Trà Sữa Nguyên Vị - 250ML', 'line_item', 401),
(15, 'Giao hàng miễn phí', 'shipping', 401),
(16, 'Trà Sữa Nguyên Vị - 250ML', 'line_item', 402),
(17, 'Giao hàng miễn phí', 'shipping', 402),
(18, 'Trà Sữa Nguyên Vị - 250ML', 'line_item', 403),
(19, 'Giao hàng miễn phí', 'shipping', 403),
(20, 'Trà Sữa Original - 250ML', 'line_item', 477),
(21, 'Trà Sữa TROPICAL PARADISE - 330ML', 'line_item', 477),
(22, 'Phí Giao Hàng', 'shipping', 477);

-- --------------------------------------------------------

--
-- Table structure for table `3kuF9kxQ_woocommerce_payment_tokenmeta`
--

CREATE TABLE `3kuF9kxQ_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `3kuF9kxQ_woocommerce_payment_tokens`
--

CREATE TABLE `3kuF9kxQ_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `3kuF9kxQ_woocommerce_sessions`
--

CREATE TABLE `3kuF9kxQ_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `3kuF9kxQ_woocommerce_shipping_zones`
--

CREATE TABLE `3kuF9kxQ_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `3kuF9kxQ_woocommerce_shipping_zones`
--

INSERT INTO `3kuF9kxQ_woocommerce_shipping_zones` (`zone_id`, `zone_name`, `zone_order`) VALUES
(1, 'Hà Lan', 0);

-- --------------------------------------------------------

--
-- Table structure for table `3kuF9kxQ_woocommerce_shipping_zone_locations`
--

CREATE TABLE `3kuF9kxQ_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `3kuF9kxQ_woocommerce_shipping_zone_locations`
--

INSERT INTO `3kuF9kxQ_woocommerce_shipping_zone_locations` (`location_id`, `zone_id`, `location_code`, `location_type`) VALUES
(2, 1, 'NL', 'country');

-- --------------------------------------------------------

--
-- Table structure for table `3kuF9kxQ_woocommerce_shipping_zone_methods`
--

CREATE TABLE `3kuF9kxQ_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `3kuF9kxQ_woocommerce_shipping_zone_methods`
--

INSERT INTO `3kuF9kxQ_woocommerce_shipping_zone_methods` (`zone_id`, `instance_id`, `method_id`, `method_order`, `is_enabled`) VALUES
(1, 5, 'flat_rate', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `3kuF9kxQ_woocommerce_tax_rates`
--

CREATE TABLE `3kuF9kxQ_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT 0,
  `tax_rate_shipping` int(1) NOT NULL DEFAULT 1,
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `3kuF9kxQ_woocommerce_tax_rate_locations`
--

CREATE TABLE `3kuF9kxQ_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `3kuF9kxQ_wpsmtp_logs`
--

CREATE TABLE `3kuF9kxQ_wpsmtp_logs` (
  `mail_id` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `to` varchar(200) NOT NULL DEFAULT '0',
  `subject` varchar(200) NOT NULL DEFAULT '0',
  `message` text DEFAULT NULL,
  `headers` text DEFAULT NULL,
  `error` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `3kuF9kxQ_wpsmtp_logs`
--

INSERT INTO `3kuF9kxQ_wpsmtp_logs` (`mail_id`, `timestamp`, `to`, `subject`, `message`, `headers`, `error`) VALUES
(1, '2020-12-22 04:02:26', 'a:1:{i:0;s:29:\"kythuat.vitutomedia@gmail.com\";}', 'Yêu cầu khôi phục mật khẩu tại website web trà sữa', '<!DOCTYPE html>\n<html lang=\"vi\">\n<head>\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n<title>web trà sữa</title>\n</head>\n<body leftmargin=\"0\" marginwidth=\"0\" topmargin=\"0\" marginheight=\"0\" offset=\"0\" style=\"padding: 0;\">\n		<div id=\"wrapper\" dir=\"ltr\" style=\"background-color: #f7f7f7; margin: 0; padding: 70px 0; width: 100%; -webkit-text-size-adjust: none;\">\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" height=\"100%\" width=\"100%\">\n<tr>\n<td align=\"center\" valign=\"top\">\n						<div id=\"template_header_image\">\n													</div>\n						<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" id=\"template_container\" style=\"background-color: #ffffff; border: 1px solid #dedede; box-shadow: 0 1px 4px rgba(0, 0, 0, 0.1); border-radius: 3px;\">\n<tr>\n<td align=\"center\" valign=\"top\">\n									<!-- Header -->\n									<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" id=\"template_header\" style=\'background-color: #96588a; color: #ffffff; border-bottom: 0; font-weight: bold; line-height: 100%; vertical-align: middle; font-family: \"Helvetica Neue\", Helvetica, Roboto, Arial, sans-serif; border-radius: 3px 3px 0 0;\'><tr>\n<td id=\"header_wrapper\" style=\"padding: 36px 48px; display: block;\">\n												<h1 style=\'font-family: \"Helvetica Neue\", Helvetica, Roboto, Arial, sans-serif; font-size: 30px; font-weight: 300; line-height: 150%; margin: 0; text-align: left; text-shadow: 0 1px 0 #ab79a1; color: #ffffff; background-color: inherit;\'>Yêu cầu khôi phục mật khẩu</h1>\n											</td>\n										</tr></table>\n<!-- End Header -->\n</td>\n							</tr>\n<tr>\n<td align=\"center\" valign=\"top\">\n									<!-- Body -->\n									<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" id=\"template_body\"><tr>\n<td valign=\"top\" id=\"body_content\" style=\"background-color: #ffffff;\">\n												<!-- Content -->\n												<table border=\"0\" cellpadding=\"20\" cellspacing=\"0\" width=\"100%\"><tr>\n<td valign=\"top\" style=\"padding: 48px 48px 32px;\">\n															<div id=\"body_content_inner\" style=\'color: #636363; font-family: \"Helvetica Neue\", Helvetica, Roboto, Arial, sans-serif; font-size: 14px; line-height: 150%; text-align: left;\'>\n\n<p style=\"margin: 0 0 16px;\">Xin chào kythuat.vitutomedia,</p>\n<p style=\"margin: 0 0 16px;\">Ai đó đã yêu cầu mật khẩu mới cho tài khoản sau trên web trà sữa:</p>\n<p style=\"margin: 0 0 16px;\">Tên đăng nhập: kythuat.vitutomedia</p>\n<p style=\"margin: 0 0 16px;\">Nếu bạn không tạo yêu cầu này, hãy bỏ qua email. Nếu bạn muốn thực hiện:</p>\n<p style=\"margin: 0 0 16px;\">\n	<a class=\"link\" href=\"https://bubotea.eumy-account/lost-password/?key=JTSTrpe7Rev9kwgu0qko&amp;id=5\" style=\"font-weight: normal; text-decoration: underline; color: #96588a;\">		Ấn vào đây để đặt lại mật khẩu	</a>\n</p>\n\n<p style=\"margin: 0 0 16px;\">Cảm ơn đã đọc.</p>\n															</div>\n														</td>\n													</tr></table>\n<!-- End Content -->\n</td>\n										</tr></table>\n<!-- End Body -->\n</td>\n							</tr>\n</table>\n</td>\n				</tr>\n<tr>\n<td align=\"center\" valign=\"top\">\n						<!-- Footer -->\n						<table border=\"0\" cellpadding=\"10\" cellspacing=\"0\" width=\"600\" id=\"template_footer\"><tr>\n<td valign=\"top\" style=\"padding: 0; border-radius: 6px;\">\n									<table border=\"0\" cellpadding=\"10\" cellspacing=\"0\" width=\"100%\"><tr>\n<td colspan=\"2\" valign=\"middle\" id=\"credit\" style=\'border-radius: 6px; border: 0; color: #8a8a8a; font-family: \"Helvetica Neue\", Helvetica, Roboto, Arial, sans-serif; font-size: 12px; line-height: 150%; text-align: center; padding: 24px 0;\'>\n												<p style=\"margin: 0 0 16px;\">web trà sữa — Built with <a href=\"https://woocommerce.com\" style=\"color: #96588a; font-weight: normal; text-decoration: underline;\">WooCommerce</a></p>\n											</td>\n										</tr></table>\n</td>\n							</tr></table>\n<!-- End Footer -->\n</td>\n				</tr>\n</table>\n</div>\n	</body>\n</html>\n', 'a:0:{}', 'SMTP Error: Could not authenticate.'),
(2, '2020-12-22 04:06:34', 'a:1:{i:0;s:29:\"kythuat.vitutomedia@gmail.com\";}', 'Yêu cầu khôi phục mật khẩu tại website web trà sữa', '<!DOCTYPE html>\n<html lang=\"vi\">\n<head>\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n<title>web trà sữa</title>\n</head>\n<body leftmargin=\"0\" marginwidth=\"0\" topmargin=\"0\" marginheight=\"0\" offset=\"0\" style=\"padding: 0;\">\n		<div id=\"wrapper\" dir=\"ltr\" style=\"background-color: #f7f7f7; margin: 0; padding: 70px 0; width: 100%; -webkit-text-size-adjust: none;\">\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" height=\"100%\" width=\"100%\">\n<tr>\n<td align=\"center\" valign=\"top\">\n						<div id=\"template_header_image\">\n													</div>\n						<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" id=\"template_container\" style=\"background-color: #ffffff; border: 1px solid #dedede; box-shadow: 0 1px 4px rgba(0, 0, 0, 0.1); border-radius: 3px;\">\n<tr>\n<td align=\"center\" valign=\"top\">\n									<!-- Header -->\n									<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" id=\"template_header\" style=\'background-color: #96588a; color: #ffffff; border-bottom: 0; font-weight: bold; line-height: 100%; vertical-align: middle; font-family: \"Helvetica Neue\", Helvetica, Roboto, Arial, sans-serif; border-radius: 3px 3px 0 0;\'><tr>\n<td id=\"header_wrapper\" style=\"padding: 36px 48px; display: block;\">\n												<h1 style=\'font-family: \"Helvetica Neue\", Helvetica, Roboto, Arial, sans-serif; font-size: 30px; font-weight: 300; line-height: 150%; margin: 0; text-align: left; text-shadow: 0 1px 0 #ab79a1; color: #ffffff; background-color: inherit;\'>Yêu cầu khôi phục mật khẩu</h1>\n											</td>\n										</tr></table>\n<!-- End Header -->\n</td>\n							</tr>\n<tr>\n<td align=\"center\" valign=\"top\">\n									<!-- Body -->\n									<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" id=\"template_body\"><tr>\n<td valign=\"top\" id=\"body_content\" style=\"background-color: #ffffff;\">\n												<!-- Content -->\n												<table border=\"0\" cellpadding=\"20\" cellspacing=\"0\" width=\"100%\"><tr>\n<td valign=\"top\" style=\"padding: 48px 48px 32px;\">\n															<div id=\"body_content_inner\" style=\'color: #636363; font-family: \"Helvetica Neue\", Helvetica, Roboto, Arial, sans-serif; font-size: 14px; line-height: 150%; text-align: left;\'>\n\n<p style=\"margin: 0 0 16px;\">Xin chào kythuat.vitutomedia,</p>\n<p style=\"margin: 0 0 16px;\">Ai đó đã yêu cầu mật khẩu mới cho tài khoản sau trên web trà sữa:</p>\n<p style=\"margin: 0 0 16px;\">Tên đăng nhập: kythuat.vitutomedia</p>\n<p style=\"margin: 0 0 16px;\">Nếu bạn không tạo yêu cầu này, hãy bỏ qua email. Nếu bạn muốn thực hiện:</p>\n<p style=\"margin: 0 0 16px;\">\n	<a class=\"link\" href=\"https://bubotea.eumy-account/lost-password/?key=xS7rLE4jic3spddduHgZ&amp;id=5\" style=\"font-weight: normal; text-decoration: underline; color: #96588a;\">		Ấn vào đây để đặt lại mật khẩu	</a>\n</p>\n\n<p style=\"margin: 0 0 16px;\">Cảm ơn đã đọc.</p>\n															</div>\n														</td>\n													</tr></table>\n<!-- End Content -->\n</td>\n										</tr></table>\n<!-- End Body -->\n</td>\n							</tr>\n</table>\n</td>\n				</tr>\n<tr>\n<td align=\"center\" valign=\"top\">\n						<!-- Footer -->\n						<table border=\"0\" cellpadding=\"10\" cellspacing=\"0\" width=\"600\" id=\"template_footer\"><tr>\n<td valign=\"top\" style=\"padding: 0; border-radius: 6px;\">\n									<table border=\"0\" cellpadding=\"10\" cellspacing=\"0\" width=\"100%\"><tr>\n<td colspan=\"2\" valign=\"middle\" id=\"credit\" style=\'border-radius: 6px; border: 0; color: #8a8a8a; font-family: \"Helvetica Neue\", Helvetica, Roboto, Arial, sans-serif; font-size: 12px; line-height: 150%; text-align: center; padding: 24px 0;\'>\n												<p style=\"margin: 0 0 16px;\">web trà sữa — Built with <a href=\"https://woocommerce.com\" style=\"color: #96588a; font-weight: normal; text-decoration: underline;\">WooCommerce</a></p>\n											</td>\n										</tr></table>\n</td>\n							</tr></table>\n<!-- End Footer -->\n</td>\n				</tr>\n</table>\n</div>\n	</body>\n</html>\n', 'a:0:{}', 'SMTP Error: Could not authenticate.'),
(3, '2020-12-22 04:08:15', 'a:1:{i:0;s:29:\"kythuat.vitutomedia@gmail.com\";}', '[web trà sữa] Mật khẩu đã thay đổi', 'Chào kythuat.vitutomedia,\n\nThông báo này xác nhận rằng mật khẩu của bạn đã được thay đổi trên web trà sữa.\n\nNếu bạn không thay đổi mật khẩu, vui lòng liên hệ người quản trị website qua email  \nhungthai56@gmail.com\n\nEmail này đã được gửi đến  kythuat.vitutomedia@gmail.com\n\nXin cảm ơn\nweb trà sữa\nhttps://bubotea.eu', 'a:0:{}', 'SMTP Error: Could not authenticate.'),
(4, '2020-12-22 04:12:03', 'a:1:{i:0;s:19:\"hungthai3@yahoo.com\";}', 'Tài khoản của bạn ở web trà sữa đã được tạo!', '<!DOCTYPE html>\n<html lang=\"vi\">\n<head>\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n<title>web trà sữa</title>\n</head>\n<body leftmargin=\"0\" marginwidth=\"0\" topmargin=\"0\" marginheight=\"0\" offset=\"0\" style=\"padding: 0;\">\n		<div id=\"wrapper\" dir=\"ltr\" style=\"background-color: #f7f7f7; margin: 0; padding: 70px 0; width: 100%; -webkit-text-size-adjust: none;\">\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" height=\"100%\" width=\"100%\">\n<tr>\n<td align=\"center\" valign=\"top\">\n						<div id=\"template_header_image\">\n													</div>\n						<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" id=\"template_container\" style=\"background-color: #ffffff; border: 1px solid #dedede; box-shadow: 0 1px 4px rgba(0, 0, 0, 0.1); border-radius: 3px;\">\n<tr>\n<td align=\"center\" valign=\"top\">\n									<!-- Header -->\n									<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" id=\"template_header\" style=\'background-color: #96588a; color: #ffffff; border-bottom: 0; font-weight: bold; line-height: 100%; vertical-align: middle; font-family: \"Helvetica Neue\", Helvetica, Roboto, Arial, sans-serif; border-radius: 3px 3px 0 0;\'><tr>\n<td id=\"header_wrapper\" style=\"padding: 36px 48px; display: block;\">\n												<h1 style=\'font-family: \"Helvetica Neue\", Helvetica, Roboto, Arial, sans-serif; font-size: 30px; font-weight: 300; line-height: 150%; margin: 0; text-align: left; text-shadow: 0 1px 0 #ab79a1; color: #ffffff; background-color: inherit;\'>Chào mừng tới web trà sữa</h1>\n											</td>\n										</tr></table>\n<!-- End Header -->\n</td>\n							</tr>\n<tr>\n<td align=\"center\" valign=\"top\">\n									<!-- Body -->\n									<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" id=\"template_body\"><tr>\n<td valign=\"top\" id=\"body_content\" style=\"background-color: #ffffff;\">\n												<!-- Content -->\n												<table border=\"0\" cellpadding=\"20\" cellspacing=\"0\" width=\"100%\"><tr>\n<td valign=\"top\" style=\"padding: 48px 48px 32px;\">\n															<div id=\"body_content_inner\" style=\'color: #636363; font-family: \"Helvetica Neue\", Helvetica, Roboto, Arial, sans-serif; font-size: 14px; line-height: 150%; text-align: left;\'>\n\n<p style=\"margin: 0 0 16px;\">Xin chào hungthai,</p>\n<p style=\"margin: 0 0 16px;\">Cảm ơn bạn đã tạo tài khoản ở web trà sữa. Tên tài khoản của bạn là <strong>hungthai</strong>. Bạn có thể truy cập trang tài khoản để xem đơn hàng, đổi mật khẩu, và nhiều thứ khác tại: <a href=\"https://bubotea.eumy-account/\" rel=\"nofollow\" style=\"color: #96588a; font-weight: normal; text-decoration: underline;\">https://bubotea.eumy-account/</a></p>\n\n<p style=\"margin: 0 0 16px;\">We look forward to seeing you soon.</p>\n															</div>\n														</td>\n													</tr></table>\n<!-- End Content -->\n</td>\n										</tr></table>\n<!-- End Body -->\n</td>\n							</tr>\n</table>\n</td>\n				</tr>\n<tr>\n<td align=\"center\" valign=\"top\">\n						<!-- Footer -->\n						<table border=\"0\" cellpadding=\"10\" cellspacing=\"0\" width=\"600\" id=\"template_footer\"><tr>\n<td valign=\"top\" style=\"padding: 0; border-radius: 6px;\">\n									<table border=\"0\" cellpadding=\"10\" cellspacing=\"0\" width=\"100%\"><tr>\n<td colspan=\"2\" valign=\"middle\" id=\"credit\" style=\'border-radius: 6px; border: 0; color: #8a8a8a; font-family: \"Helvetica Neue\", Helvetica, Roboto, Arial, sans-serif; font-size: 12px; line-height: 150%; text-align: center; padding: 24px 0;\'>\n												<p style=\"margin: 0 0 16px;\">web trà sữa — Built with <a href=\"https://woocommerce.com\" style=\"color: #96588a; font-weight: normal; text-decoration: underline;\">WooCommerce</a></p>\n											</td>\n										</tr></table>\n</td>\n							</tr></table>\n<!-- End Footer -->\n</td>\n				</tr>\n</table>\n</div>\n	</body>\n</html>\n', 'a:0:{}', 'SMTP Error: Could not authenticate.'),
(5, '2020-12-22 10:23:35', 'a:1:{i:0;s:20:\"hungthai56@gmail.com\";}', '[web trà sữa] Đơn hàng mới #400', '=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\nĐơn hàng mới: #400\n=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n\nBạn vừa nhận được đơn hàng từ hùng thái. Đơn hàng\nnhư sau:\n\n[ĐƠN HÀNG #400] (THÁNG MƯỜI HAI 22, 2020)\n\nTrà Sữa TROPICAL PARADISE - 250ML X 2 = EUR7.0\n\n\nTrà Sữa Nguyên Vị - 250ML X 1 = EUR3.5\n\n\n==========\n\nTổng số phụ:	 EUR10.5\nGiao nhận hàng:	 Giao hàng miễn phí\nPhương thức thanh toán:	 Trả tiền mặt khi nhận hàng\nTổng cộng:	 EUR10.5\n\nXem đơn hàng:\nhttps://bubotea.euwp-admin/post.php?post=400&action=edit\n\n----------------------------------------\n\n\nĐỊA CHỈ THANH TOÁN\n\nhùng thái\nnaritaweg 14, 1043 BZ Amsterdam\nnaritaweg\n0124578745\nhungthai56@gmail.com\n\nĐỊA CHỈ GIAO HÀNG\n\nhùng thái\nĐà Nẵng\n1043 BZ Đà Nẵng\n\n\n----------------------------------------\n\nCongratulations on the sale.\n\n----------------------------------------\n\nweb trà sữa -- Built with WooCommerce', 'a:0:{}', 'SMTP Error: Could not authenticate.'),
(6, '2020-12-22 10:23:37', 'a:1:{i:0;s:20:\"hungthai56@gmail.com\";}', 'Đơn hàng tại web trà sữa đã được đặt!', '<!DOCTYPE html>\n<html lang=\"vi\">\n<head>\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n<title>web trà sữa</title>\n</head>\n<body leftmargin=\"0\" marginwidth=\"0\" topmargin=\"0\" marginheight=\"0\" offset=\"0\" style=\"padding: 0;\">\n		<div id=\"wrapper\" dir=\"ltr\" style=\"background-color: #f7f7f7; margin: 0; padding: 70px 0; width: 100%; -webkit-text-size-adjust: none;\">\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" height=\"100%\" width=\"100%\">\n<tr>\n<td align=\"center\" valign=\"top\">\n						<div id=\"template_header_image\">\n													</div>\n						<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" id=\"template_container\" style=\"background-color: #ffffff; border: 1px solid #dedede; box-shadow: 0 1px 4px rgba(0, 0, 0, 0.1); border-radius: 3px;\">\n<tr>\n<td align=\"center\" valign=\"top\">\n									<!-- Header -->\n									<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" id=\"template_header\" style=\'background-color: #96588a; color: #ffffff; border-bottom: 0; font-weight: bold; line-height: 100%; vertical-align: middle; font-family: \"Helvetica Neue\", Helvetica, Roboto, Arial, sans-serif; border-radius: 3px 3px 0 0;\'><tr>\n<td id=\"header_wrapper\" style=\"padding: 36px 48px; display: block;\">\n												<h1 style=\'font-family: \"Helvetica Neue\", Helvetica, Roboto, Arial, sans-serif; font-size: 30px; font-weight: 300; line-height: 150%; margin: 0; text-align: left; text-shadow: 0 1px 0 #ab79a1; color: #ffffff; background-color: inherit;\'>Cảm ơn bạn đã đặt hàng</h1>\n											</td>\n										</tr></table>\n<!-- End Header -->\n</td>\n							</tr>\n<tr>\n<td align=\"center\" valign=\"top\">\n									<!-- Body -->\n									<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" id=\"template_body\"><tr>\n<td valign=\"top\" id=\"body_content\" style=\"background-color: #ffffff;\">\n												<!-- Content -->\n												<table border=\"0\" cellpadding=\"20\" cellspacing=\"0\" width=\"100%\"><tr>\n<td valign=\"top\" style=\"padding: 48px 48px 32px;\">\n															<div id=\"body_content_inner\" style=\'color: #636363; font-family: \"Helvetica Neue\", Helvetica, Roboto, Arial, sans-serif; font-size: 14px; line-height: 150%; text-align: left;\'>\n\n<p style=\"margin: 0 0 16px;\">Xin chào hùng,</p>\n<p style=\"margin: 0 0 16px;\">Đơn hàng #400 đã được đặt thành công và chúng tôi đang xử lý</p>\n\n<p style=\"margin: 0 0 16px;\">Trả tiền mặt khi giao hàng</p>\n\n\n<h2 style=\'color: #96588a; display: block; font-family: \"Helvetica Neue\", Helvetica, Roboto, Arial, sans-serif; font-size: 18px; font-weight: bold; line-height: 130%; margin: 0 0 18px; text-align: left;\'>\n	[Đơn hàng #400] (Tháng Mười Hai 22, 2020)</h2>\n\n<div style=\"margin-bottom: 40px;\">\n	<table class=\"td\" cellspacing=\"0\" cellpadding=\"6\" border=\"1\" style=\"color: #636363; border: 1px solid #e5e5e5; vertical-align: middle; width: 100%; font-family: \'Helvetica Neue\', Helvetica, Roboto, Arial, sans-serif;\">\n<thead><tr>\n<th class=\"td\" scope=\"col\" style=\"color: #636363; border: 1px solid #e5e5e5; vertical-align: middle; padding: 12px; text-align: left;\">Sản phẩm</th>\n				<th class=\"td\" scope=\"col\" style=\"color: #636363; border: 1px solid #e5e5e5; vertical-align: middle; padding: 12px; text-align: left;\">Số lượng</th>\n				<th class=\"td\" scope=\"col\" style=\"color: #636363; border: 1px solid #e5e5e5; vertical-align: middle; padding: 12px; text-align: left;\">Giá</th>\n			</tr></thead>\n<tbody>\n<tr class=\"order_item\">\n<td class=\"td\" style=\"color: #636363; border: 1px solid #e5e5e5; padding: 12px; text-align: left; vertical-align: middle; font-family: \'Helvetica Neue\', Helvetica, Roboto, Arial, sans-serif; word-wrap: break-word;\">\n		Trà Sữa TROPICAL PARADISE - 250ML		</td>\n		<td class=\"td\" style=\"color: #636363; border: 1px solid #e5e5e5; padding: 12px; text-align: left; vertical-align: middle; font-family: \'Helvetica Neue\', Helvetica, Roboto, Arial, sans-serif;\">\n			2		</td>\n		<td class=\"td\" style=\"color: #636363; border: 1px solid #e5e5e5; padding: 12px; text-align: left; vertical-align: middle; font-family: \'Helvetica Neue\', Helvetica, Roboto, Arial, sans-serif;\">\n			<span class=\"woocommerce-Price-amount amount\"><span class=\"woocommerce-Price-currencySymbol\">€</span>7.0</span>		</td>\n	</tr>\n<tr class=\"order_item\">\n<td class=\"td\" style=\"color: #636363; border: 1px solid #e5e5e5; padding: 12px; text-align: left; vertical-align: middle; font-family: \'Helvetica Neue\', Helvetica, Roboto, Arial, sans-serif; word-wrap: break-word;\">\n		Trà Sữa Nguyên Vị - 250ML		</td>\n		<td class=\"td\" style=\"color: #636363; border: 1px solid #e5e5e5; padding: 12px; text-align: left; vertical-align: middle; font-family: \'Helvetica Neue\', Helvetica, Roboto, Arial, sans-serif;\">\n			1		</td>\n		<td class=\"td\" style=\"color: #636363; border: 1px solid #e5e5e5; padding: 12px; text-align: left; vertical-align: middle; font-family: \'Helvetica Neue\', Helvetica, Roboto, Arial, sans-serif;\">\n			<span class=\"woocommerce-Price-amount amount\"><span class=\"woocommerce-Price-currencySymbol\">€</span>3.5</span>		</td>\n	</tr>\n</tbody>\n<tfoot>\n<tr>\n<th class=\"td\" scope=\"row\" colspan=\"2\" style=\"color: #636363; border: 1px solid #e5e5e5; vertical-align: middle; padding: 12px; text-align: left; border-top-width: 4px;\">Tổng số phụ:</th>\n						<td class=\"td\" style=\"color: #636363; border: 1px solid #e5e5e5; vertical-align: middle; padding: 12px; text-align: left; border-top-width: 4px;\"><span class=\"woocommerce-Price-amount amount\"><span class=\"woocommerce-Price-currencySymbol\">€</span>10.5</span></td>\n					</tr>\n<tr>\n<th class=\"td\" scope=\"row\" colspan=\"2\" style=\"color: #636363; border: 1px solid #e5e5e5; vertical-align: middle; padding: 12px; text-align: left;\">Giao nhận hàng:</th>\n						<td class=\"td\" style=\"color: #636363; border: 1px solid #e5e5e5; vertical-align: middle; padding: 12px; text-align: left;\">Giao hàng miễn phí</td>\n					</tr>\n<tr>\n<th class=\"td\" scope=\"row\" colspan=\"2\" style=\"color: #636363; border: 1px solid #e5e5e5; vertical-align: middle; padding: 12px; text-align: left;\">Phương thức thanh toán:</th>\n						<td class=\"td\" style=\"color: #636363; border: 1px solid #e5e5e5; vertical-align: middle; padding: 12px; text-align: left;\">Trả tiền mặt khi nhận hàng</td>\n					</tr>\n<tr>\n<th class=\"td\" scope=\"row\" colspan=\"2\" style=\"color: #636363; border: 1px solid #e5e5e5; vertical-align: middle; padding: 12px; text-align: left;\">Tổng cộng:</th>\n						<td class=\"td\" style=\"color: #636363; border: 1px solid #e5e5e5; vertical-align: middle; padding: 12px; text-align: left;\"><span class=\"woocommerce-Price-amount amount\"><span class=\"woocommerce-Price-currencySymbol\">€</span>10.5</span></td>\n					</tr>\n</tfoot>\n</table>\n</div>\n\n\n<table id=\"addresses\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" style=\"width: 100%; vertical-align: top; margin-bottom: 40px; padding: 0;\"><tr>\n<td valign=\"top\" width=\"50%\" style=\"text-align: left; font-family: \'Helvetica Neue\', Helvetica, Roboto, Arial, sans-serif; border: 0; padding: 0;\">\n			<h2 style=\'color: #96588a; display: block; font-family: \"Helvetica Neue\", Helvetica, Roboto, Arial, sans-serif; font-size: 18px; font-weight: bold; line-height: 130%; margin: 0 0 18px; text-align: left;\'>Địa chỉ thanh toán</h2>\n\n			<address class=\"address\" style=\"padding: 12px; color: #636363; border: 1px solid #e5e5e5;\">\n				hùng thái<br>naritaweg 14, 1043 BZ Amsterdam<br>naritaweg									<br><a href=\"tel:0124578745\" style=\"color: #96588a; font-weight: normal; text-decoration: underline;\">0124578745</a>													<br>hungthai56@gmail.com							</address>\n		</td>\n					<td valign=\"top\" width=\"50%\" style=\"text-align: left; font-family: \'Helvetica Neue\', Helvetica, Roboto, Arial, sans-serif; padding: 0;\">\n				<h2 style=\'color: #96588a; display: block; font-family: \"Helvetica Neue\", Helvetica, Roboto, Arial, sans-serif; font-size: 18px; font-weight: bold; line-height: 130%; margin: 0 0 18px; text-align: left;\'>Địa chỉ giao hàng</h2>\n\n				<address class=\"address\" style=\"padding: 12px; color: #636363; border: 1px solid #e5e5e5;\">hùng thái<br>Đà Nẵng<br>1043 BZ Đà Nẵng</address>\n			</td>\n			</tr></table>\n<p style=\"margin: 0 0 16px;\">Thanks for using demo.vitutomedia.vn!</p>\n															</div>\n														</td>\n													</tr></table>\n<!-- End Content -->\n</td>\n										</tr></table>\n<!-- End Body -->\n</td>\n							</tr>\n</table>\n</td>\n				</tr>\n<tr>\n<td align=\"center\" valign=\"top\">\n						<!-- Footer -->\n						<table border=\"0\" cellpadding=\"10\" cellspacing=\"0\" width=\"600\" id=\"template_footer\"><tr>\n<td valign=\"top\" style=\"padding: 0; border-radius: 6px;\">\n									<table border=\"0\" cellpadding=\"10\" cellspacing=\"0\" width=\"100%\"><tr>\n<td colspan=\"2\" valign=\"middle\" id=\"credit\" style=\'border-radius: 6px; border: 0; color: #8a8a8a; font-family: \"Helvetica Neue\", Helvetica, Roboto, Arial, sans-serif; font-size: 12px; line-height: 150%; text-align: center; padding: 24px 0;\'>\n												<p style=\"margin: 0 0 16px;\">web trà sữa — Built with <a href=\"https://woocommerce.com\" style=\"color: #96588a; font-weight: normal; text-decoration: underline;\">WooCommerce</a></p>\n											</td>\n										</tr></table>\n</td>\n							</tr></table>\n<!-- End Footer -->\n</td>\n				</tr>\n</table>\n</div>\n	</body>\n</html>\n', 'a:0:{}', 'SMTP Error: Could not authenticate.'),
(7, '2020-12-22 10:27:47', 'a:1:{i:0;s:21:\"vitutodana1@gmail.com\";}', '[web trà sữa] Đơn hàng mới #401', '=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\nĐơn hàng mới: #401\n=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n\nBạn vừa nhận được đơn hàng từ hùng thái. Đơn hàng\nnhư sau:\n\n[ĐƠN HÀNG #401] (THÁNG MƯỜI HAI 22, 2020)\n\nTrà Sữa Nguyên Vị - 250ML X 10 = EUR35.0\n\n\n==========\n\nTổng số phụ:	 EUR35.0\nGiao nhận hàng:	 Giao hàng miễn phí\nPhương thức thanh toán:	 Trả tiền mặt khi nhận hàng\nTổng cộng:	 EUR35.0\n\nXem đơn hàng:\nhttps://bubotea.euwp-admin/post.php?post=401&action=edit\n\n----------------------------------------\n\n\nĐỊA CHỈ THANH TOÁN\n\nhùng thái\nnaritaweg 14, 1043 BZ Amsterdam\nnaritaweg\n0124578745\nhungthai56@gmail.com\n\nĐỊA CHỈ GIAO HÀNG\n\nhùng thái\nđà nẵng\n1043 BZ Đà Nẵng\n\n\n----------------------------------------\n\nCongratulations on the sale.\n\n----------------------------------------\n\nweb trà sữa -- Built with WooCommerce', 'a:0:{}', 'SMTP Error: Could not authenticate.'),
(8, '2020-12-22 10:27:49', 'a:1:{i:0;s:20:\"hungthai56@gmail.com\";}', 'Đơn hàng tại web trà sữa đã được đặt!', '<!DOCTYPE html>\n<html lang=\"vi\">\n<head>\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n<title>web trà sữa</title>\n</head>\n<body leftmargin=\"0\" marginwidth=\"0\" topmargin=\"0\" marginheight=\"0\" offset=\"0\" style=\"padding: 0;\">\n		<div id=\"wrapper\" dir=\"ltr\" style=\"background-color: #f7f7f7; margin: 0; padding: 70px 0; width: 100%; -webkit-text-size-adjust: none;\">\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" height=\"100%\" width=\"100%\">\n<tr>\n<td align=\"center\" valign=\"top\">\n						<div id=\"template_header_image\">\n													</div>\n						<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" id=\"template_container\" style=\"background-color: #ffffff; border: 1px solid #dedede; box-shadow: 0 1px 4px rgba(0, 0, 0, 0.1); border-radius: 3px;\">\n<tr>\n<td align=\"center\" valign=\"top\">\n									<!-- Header -->\n									<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" id=\"template_header\" style=\'background-color: #96588a; color: #ffffff; border-bottom: 0; font-weight: bold; line-height: 100%; vertical-align: middle; font-family: \"Helvetica Neue\", Helvetica, Roboto, Arial, sans-serif; border-radius: 3px 3px 0 0;\'><tr>\n<td id=\"header_wrapper\" style=\"padding: 36px 48px; display: block;\">\n												<h1 style=\'font-family: \"Helvetica Neue\", Helvetica, Roboto, Arial, sans-serif; font-size: 30px; font-weight: 300; line-height: 150%; margin: 0; text-align: left; text-shadow: 0 1px 0 #ab79a1; color: #ffffff; background-color: inherit;\'>Cảm ơn bạn đã đặt hàng</h1>\n											</td>\n										</tr></table>\n<!-- End Header -->\n</td>\n							</tr>\n<tr>\n<td align=\"center\" valign=\"top\">\n									<!-- Body -->\n									<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" id=\"template_body\"><tr>\n<td valign=\"top\" id=\"body_content\" style=\"background-color: #ffffff;\">\n												<!-- Content -->\n												<table border=\"0\" cellpadding=\"20\" cellspacing=\"0\" width=\"100%\"><tr>\n<td valign=\"top\" style=\"padding: 48px 48px 32px;\">\n															<div id=\"body_content_inner\" style=\'color: #636363; font-family: \"Helvetica Neue\", Helvetica, Roboto, Arial, sans-serif; font-size: 14px; line-height: 150%; text-align: left;\'>\n\n<p style=\"margin: 0 0 16px;\">Xin chào hùng,</p>\n<p style=\"margin: 0 0 16px;\">Đơn hàng #401 đã được đặt thành công và chúng tôi đang xử lý</p>\n\n<p style=\"margin: 0 0 16px;\">Trả tiền mặt khi giao hàng</p>\n\n\n<h2 style=\'color: #96588a; display: block; font-family: \"Helvetica Neue\", Helvetica, Roboto, Arial, sans-serif; font-size: 18px; font-weight: bold; line-height: 130%; margin: 0 0 18px; text-align: left;\'>\n	[Đơn hàng #401] (Tháng Mười Hai 22, 2020)</h2>\n\n<div style=\"margin-bottom: 40px;\">\n	<table class=\"td\" cellspacing=\"0\" cellpadding=\"6\" border=\"1\" style=\"color: #636363; border: 1px solid #e5e5e5; vertical-align: middle; width: 100%; font-family: \'Helvetica Neue\', Helvetica, Roboto, Arial, sans-serif;\">\n<thead><tr>\n<th class=\"td\" scope=\"col\" style=\"color: #636363; border: 1px solid #e5e5e5; vertical-align: middle; padding: 12px; text-align: left;\">Sản phẩm</th>\n				<th class=\"td\" scope=\"col\" style=\"color: #636363; border: 1px solid #e5e5e5; vertical-align: middle; padding: 12px; text-align: left;\">Số lượng</th>\n				<th class=\"td\" scope=\"col\" style=\"color: #636363; border: 1px solid #e5e5e5; vertical-align: middle; padding: 12px; text-align: left;\">Giá</th>\n			</tr></thead>\n<tbody><tr class=\"order_item\">\n<td class=\"td\" style=\"color: #636363; border: 1px solid #e5e5e5; padding: 12px; text-align: left; vertical-align: middle; font-family: \'Helvetica Neue\', Helvetica, Roboto, Arial, sans-serif; word-wrap: break-word;\">\n		Trà Sữa Nguyên Vị - 250ML		</td>\n		<td class=\"td\" style=\"color: #636363; border: 1px solid #e5e5e5; padding: 12px; text-align: left; vertical-align: middle; font-family: \'Helvetica Neue\', Helvetica, Roboto, Arial, sans-serif;\">\n			10		</td>\n		<td class=\"td\" style=\"color: #636363; border: 1px solid #e5e5e5; padding: 12px; text-align: left; vertical-align: middle; font-family: \'Helvetica Neue\', Helvetica, Roboto, Arial, sans-serif;\">\n			<span class=\"woocommerce-Price-amount amount\"><span class=\"woocommerce-Price-currencySymbol\">€</span>35.0</span>		</td>\n	</tr></tbody>\n<tfoot>\n<tr>\n<th class=\"td\" scope=\"row\" colspan=\"2\" style=\"color: #636363; border: 1px solid #e5e5e5; vertical-align: middle; padding: 12px; text-align: left; border-top-width: 4px;\">Tổng số phụ:</th>\n						<td class=\"td\" style=\"color: #636363; border: 1px solid #e5e5e5; vertical-align: middle; padding: 12px; text-align: left; border-top-width: 4px;\"><span class=\"woocommerce-Price-amount amount\"><span class=\"woocommerce-Price-currencySymbol\">€</span>35.0</span></td>\n					</tr>\n<tr>\n<th class=\"td\" scope=\"row\" colspan=\"2\" style=\"color: #636363; border: 1px solid #e5e5e5; vertical-align: middle; padding: 12px; text-align: left;\">Giao nhận hàng:</th>\n						<td class=\"td\" style=\"color: #636363; border: 1px solid #e5e5e5; vertical-align: middle; padding: 12px; text-align: left;\">Giao hàng miễn phí</td>\n					</tr>\n<tr>\n<th class=\"td\" scope=\"row\" colspan=\"2\" style=\"color: #636363; border: 1px solid #e5e5e5; vertical-align: middle; padding: 12px; text-align: left;\">Phương thức thanh toán:</th>\n						<td class=\"td\" style=\"color: #636363; border: 1px solid #e5e5e5; vertical-align: middle; padding: 12px; text-align: left;\">Trả tiền mặt khi nhận hàng</td>\n					</tr>\n<tr>\n<th class=\"td\" scope=\"row\" colspan=\"2\" style=\"color: #636363; border: 1px solid #e5e5e5; vertical-align: middle; padding: 12px; text-align: left;\">Tổng cộng:</th>\n						<td class=\"td\" style=\"color: #636363; border: 1px solid #e5e5e5; vertical-align: middle; padding: 12px; text-align: left;\"><span class=\"woocommerce-Price-amount amount\"><span class=\"woocommerce-Price-currencySymbol\">€</span>35.0</span></td>\n					</tr>\n</tfoot>\n</table>\n</div>\n\n\n<table id=\"addresses\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" style=\"width: 100%; vertical-align: top; margin-bottom: 40px; padding: 0;\"><tr>\n<td valign=\"top\" width=\"50%\" style=\"text-align: left; font-family: \'Helvetica Neue\', Helvetica, Roboto, Arial, sans-serif; border: 0; padding: 0;\">\n			<h2 style=\'color: #96588a; display: block; font-family: \"Helvetica Neue\", Helvetica, Roboto, Arial, sans-serif; font-size: 18px; font-weight: bold; line-height: 130%; margin: 0 0 18px; text-align: left;\'>Địa chỉ thanh toán</h2>\n\n			<address class=\"address\" style=\"padding: 12px; color: #636363; border: 1px solid #e5e5e5;\">\n				hùng thái<br>naritaweg 14, 1043 BZ Amsterdam<br>naritaweg									<br><a href=\"tel:0124578745\" style=\"color: #96588a; font-weight: normal; text-decoration: underline;\">0124578745</a>													<br>hungthai56@gmail.com							</address>\n		</td>\n					<td valign=\"top\" width=\"50%\" style=\"text-align: left; font-family: \'Helvetica Neue\', Helvetica, Roboto, Arial, sans-serif; padding: 0;\">\n				<h2 style=\'color: #96588a; display: block; font-family: \"Helvetica Neue\", Helvetica, Roboto, Arial, sans-serif; font-size: 18px; font-weight: bold; line-height: 130%; margin: 0 0 18px; text-align: left;\'>Địa chỉ giao hàng</h2>\n\n				<address class=\"address\" style=\"padding: 12px; color: #636363; border: 1px solid #e5e5e5;\">hùng thái<br>đà nẵng<br>1043 BZ Đà Nẵng</address>\n			</td>\n			</tr></table>\n<p style=\"margin: 0 0 16px;\">Thanks for using demo.vitutomedia.vn!</p>\n															</div>\n														</td>\n													</tr></table>\n<!-- End Content -->\n</td>\n										</tr></table>\n<!-- End Body -->\n</td>\n							</tr>\n</table>\n</td>\n				</tr>\n<tr>\n<td align=\"center\" valign=\"top\">\n						<!-- Footer -->\n						<table border=\"0\" cellpadding=\"10\" cellspacing=\"0\" width=\"600\" id=\"template_footer\"><tr>\n<td valign=\"top\" style=\"padding: 0; border-radius: 6px;\">\n									<table border=\"0\" cellpadding=\"10\" cellspacing=\"0\" width=\"100%\"><tr>\n<td colspan=\"2\" valign=\"middle\" id=\"credit\" style=\'border-radius: 6px; border: 0; color: #8a8a8a; font-family: \"Helvetica Neue\", Helvetica, Roboto, Arial, sans-serif; font-size: 12px; line-height: 150%; text-align: center; padding: 24px 0;\'>\n												<p style=\"margin: 0 0 16px;\">web trà sữa — Built with <a href=\"https://woocommerce.com\" style=\"color: #96588a; font-weight: normal; text-decoration: underline;\">WooCommerce</a></p>\n											</td>\n										</tr></table>\n</td>\n							</tr></table>\n<!-- End Footer -->\n</td>\n				</tr>\n</table>\n</div>\n	</body>\n</html>\n', 'a:0:{}', 'SMTP Error: Could not authenticate.'),
(9, '2020-12-22 10:30:22', 'a:1:{i:0;s:20:\"hungthai56@gmail.com\";}', 'Đơn hàng ở web trà sữa đã hoàn thành', '<!DOCTYPE html>\n<html lang=\"vi\">\n<head>\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n<title>web trà sữa</title>\n</head>\n<body leftmargin=\"0\" marginwidth=\"0\" topmargin=\"0\" marginheight=\"0\" offset=\"0\" style=\"padding: 0;\">\n		<div id=\"wrapper\" dir=\"ltr\" style=\"background-color: #f7f7f7; margin: 0; padding: 70px 0; width: 100%; -webkit-text-size-adjust: none;\">\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" height=\"100%\" width=\"100%\">\n<tr>\n<td align=\"center\" valign=\"top\">\n						<div id=\"template_header_image\">\n													</div>\n						<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" id=\"template_container\" style=\"background-color: #ffffff; border: 1px solid #dedede; box-shadow: 0 1px 4px rgba(0, 0, 0, 0.1); border-radius: 3px;\">\n<tr>\n<td align=\"center\" valign=\"top\">\n									<!-- Header -->\n									<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" id=\"template_header\" style=\'background-color: #96588a; color: #ffffff; border-bottom: 0; font-weight: bold; line-height: 100%; vertical-align: middle; font-family: \"Helvetica Neue\", Helvetica, Roboto, Arial, sans-serif; border-radius: 3px 3px 0 0;\'><tr>\n<td id=\"header_wrapper\" style=\"padding: 36px 48px; display: block;\">\n												<h1 style=\'font-family: \"Helvetica Neue\", Helvetica, Roboto, Arial, sans-serif; font-size: 30px; font-weight: 300; line-height: 150%; margin: 0; text-align: left; text-shadow: 0 1px 0 #ab79a1; color: #ffffff; background-color: inherit;\'>Cảm ơn đã mua hàng của chúng tôi</h1>\n											</td>\n										</tr></table>\n<!-- End Header -->\n</td>\n							</tr>\n<tr>\n<td align=\"center\" valign=\"top\">\n									<!-- Body -->\n									<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" id=\"template_body\"><tr>\n<td valign=\"top\" id=\"body_content\" style=\"background-color: #ffffff;\">\n												<!-- Content -->\n												<table border=\"0\" cellpadding=\"20\" cellspacing=\"0\" width=\"100%\"><tr>\n<td valign=\"top\" style=\"padding: 48px 48px 32px;\">\n															<div id=\"body_content_inner\" style=\'color: #636363; font-family: \"Helvetica Neue\", Helvetica, Roboto, Arial, sans-serif; font-size: 14px; line-height: 150%; text-align: left;\'>\n\n<p style=\"margin: 0 0 16px;\">Xin chào hùng,</p>\n<p style=\"margin: 0 0 16px;\">Chúng tôi đã xử lý xong đơn hàng của bạn.</p>\n<p style=\"margin: 0 0 16px;\">Trả tiền mặt khi giao hàng</p>\n\n\n<h2 style=\'color: #96588a; display: block; font-family: \"Helvetica Neue\", Helvetica, Roboto, Arial, sans-serif; font-size: 18px; font-weight: bold; line-height: 130%; margin: 0 0 18px; text-align: left;\'>\n	[Đơn hàng #401] (Tháng Mười Hai 22, 2020)</h2>\n\n<div style=\"margin-bottom: 40px;\">\n	<table class=\"td\" cellspacing=\"0\" cellpadding=\"6\" border=\"1\" style=\"color: #636363; border: 1px solid #e5e5e5; vertical-align: middle; width: 100%; font-family: \'Helvetica Neue\', Helvetica, Roboto, Arial, sans-serif;\">\n<thead><tr>\n<th class=\"td\" scope=\"col\" style=\"color: #636363; border: 1px solid #e5e5e5; vertical-align: middle; padding: 12px; text-align: left;\">Sản phẩm</th>\n				<th class=\"td\" scope=\"col\" style=\"color: #636363; border: 1px solid #e5e5e5; vertical-align: middle; padding: 12px; text-align: left;\">Số lượng</th>\n				<th class=\"td\" scope=\"col\" style=\"color: #636363; border: 1px solid #e5e5e5; vertical-align: middle; padding: 12px; text-align: left;\">Giá</th>\n			</tr></thead>\n<tbody><tr class=\"order_item\">\n<td class=\"td\" style=\"color: #636363; border: 1px solid #e5e5e5; padding: 12px; text-align: left; vertical-align: middle; font-family: \'Helvetica Neue\', Helvetica, Roboto, Arial, sans-serif; word-wrap: break-word;\">\n		Trà Sữa Nguyên Vị - 250ML		</td>\n		<td class=\"td\" style=\"color: #636363; border: 1px solid #e5e5e5; padding: 12px; text-align: left; vertical-align: middle; font-family: \'Helvetica Neue\', Helvetica, Roboto, Arial, sans-serif;\">\n			10		</td>\n		<td class=\"td\" style=\"color: #636363; border: 1px solid #e5e5e5; padding: 12px; text-align: left; vertical-align: middle; font-family: \'Helvetica Neue\', Helvetica, Roboto, Arial, sans-serif;\">\n			<span class=\"woocommerce-Price-amount amount\"><span class=\"woocommerce-Price-currencySymbol\">€</span>35.0</span>		</td>\n	</tr></tbody>\n<tfoot>\n<tr>\n<th class=\"td\" scope=\"row\" colspan=\"2\" style=\"color: #636363; border: 1px solid #e5e5e5; vertical-align: middle; padding: 12px; text-align: left; border-top-width: 4px;\">Tổng số phụ:</th>\n						<td class=\"td\" style=\"color: #636363; border: 1px solid #e5e5e5; vertical-align: middle; padding: 12px; text-align: left; border-top-width: 4px;\"><span class=\"woocommerce-Price-amount amount\"><span class=\"woocommerce-Price-currencySymbol\">€</span>35.0</span></td>\n					</tr>\n<tr>\n<th class=\"td\" scope=\"row\" colspan=\"2\" style=\"color: #636363; border: 1px solid #e5e5e5; vertical-align: middle; padding: 12px; text-align: left;\">Giao nhận hàng:</th>\n						<td class=\"td\" style=\"color: #636363; border: 1px solid #e5e5e5; vertical-align: middle; padding: 12px; text-align: left;\">Giao hàng miễn phí</td>\n					</tr>\n<tr>\n<th class=\"td\" scope=\"row\" colspan=\"2\" style=\"color: #636363; border: 1px solid #e5e5e5; vertical-align: middle; padding: 12px; text-align: left;\">Phương thức thanh toán:</th>\n						<td class=\"td\" style=\"color: #636363; border: 1px solid #e5e5e5; vertical-align: middle; padding: 12px; text-align: left;\">Trả tiền mặt khi nhận hàng</td>\n					</tr>\n<tr>\n<th class=\"td\" scope=\"row\" colspan=\"2\" style=\"color: #636363; border: 1px solid #e5e5e5; vertical-align: middle; padding: 12px; text-align: left;\">Tổng cộng:</th>\n						<td class=\"td\" style=\"color: #636363; border: 1px solid #e5e5e5; vertical-align: middle; padding: 12px; text-align: left;\"><span class=\"woocommerce-Price-amount amount\"><span class=\"woocommerce-Price-currencySymbol\">€</span>35.0</span></td>\n					</tr>\n</tfoot>\n</table>\n</div>\n\n\n<table id=\"addresses\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" style=\"width: 100%; vertical-align: top; margin-bottom: 40px; padding: 0;\"><tr>\n<td valign=\"top\" width=\"50%\" style=\"text-align: left; font-family: \'Helvetica Neue\', Helvetica, Roboto, Arial, sans-serif; border: 0; padding: 0;\">\n			<h2 style=\'color: #96588a; display: block; font-family: \"Helvetica Neue\", Helvetica, Roboto, Arial, sans-serif; font-size: 18px; font-weight: bold; line-height: 130%; margin: 0 0 18px; text-align: left;\'>Địa chỉ thanh toán</h2>\n\n			<address class=\"address\" style=\"padding: 12px; color: #636363; border: 1px solid #e5e5e5;\">\n				hùng thái<br>naritaweg 14, 1043 BZ Amsterdam<br>naritaweg									<br><a href=\"tel:0124578745\" style=\"color: #96588a; font-weight: normal; text-decoration: underline;\">0124578745</a>													<br>hungthai56@gmail.com							</address>\n		</td>\n					<td valign=\"top\" width=\"50%\" style=\"text-align: left; font-family: \'Helvetica Neue\', Helvetica, Roboto, Arial, sans-serif; padding: 0;\">\n				<h2 style=\'color: #96588a; display: block; font-family: \"Helvetica Neue\", Helvetica, Roboto, Arial, sans-serif; font-size: 18px; font-weight: bold; line-height: 130%; margin: 0 0 18px; text-align: left;\'>Địa chỉ giao hàng</h2>\n\n				<address class=\"address\" style=\"padding: 12px; color: #636363; border: 1px solid #e5e5e5;\">hùng thái<br>đà nẵng<br>1043 BZ Đà Nẵng</address>\n			</td>\n			</tr></table>\n<p style=\"margin: 0 0 16px;\">Cảm ơn đã mua hàng của chúng tôi.</p>\n															</div>\n														</td>\n													</tr></table>\n<!-- End Content -->\n</td>\n										</tr></table>\n<!-- End Body -->\n</td>\n							</tr>\n</table>\n</td>\n				</tr>\n<tr>\n<td align=\"center\" valign=\"top\">\n						<!-- Footer -->\n						<table border=\"0\" cellpadding=\"10\" cellspacing=\"0\" width=\"600\" id=\"template_footer\"><tr>\n<td valign=\"top\" style=\"padding: 0; border-radius: 6px;\">\n									<table border=\"0\" cellpadding=\"10\" cellspacing=\"0\" width=\"100%\"><tr>\n<td colspan=\"2\" valign=\"middle\" id=\"credit\" style=\'border-radius: 6px; border: 0; color: #8a8a8a; font-family: \"Helvetica Neue\", Helvetica, Roboto, Arial, sans-serif; font-size: 12px; line-height: 150%; text-align: center; padding: 24px 0;\'>\n												<p style=\"margin: 0 0 16px;\">web trà sữa — Built with <a href=\"https://woocommerce.com\" style=\"color: #96588a; font-weight: normal; text-decoration: underline;\">WooCommerce</a></p>\n											</td>\n										</tr></table>\n</td>\n							</tr></table>\n<!-- End Footer -->\n</td>\n				</tr>\n</table>\n</div>\n	</body>\n</html>\n', 'a:0:{}', 'SMTP Error: Could not authenticate.'),
(10, '2020-12-22 10:44:01', 'a:1:{i:0;s:20:\"hungthai56@gmail.com\";}', '[web trà sữa] Đơn hàng mới #402', '=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\nĐơn hàng mới: #402\n=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n\nBạn vừa nhận được đơn hàng từ hùng thái. Đơn hàng\nnhư sau:\n\n[ĐƠN HÀNG #402] (THÁNG MƯỜI HAI 22, 2020)\n\nTrà Sữa Nguyên Vị - 250ML X 10 = EUR35.0\n\n\n==========\n\nTổng số phụ:	 EUR35.0\nGiao nhận hàng:	 Giao hàng miễn phí\nPhương thức thanh toán:	 Trả tiền mặt khi nhận hàng\nTổng cộng:	 EUR35.0\n\nXem đơn hàng:\nhttps://bubotea.euwp-admin/post.php?post=402&action=edit\n\n----------------------------------------\n\n\nĐỊA CHỈ THANH TOÁN\n\nhùng thái\nnaritaweg 14, 1043 BZ Amsterdam\nnaritaweg\n0124578745\nhungthai56@gmail.com\n\nĐỊA CHỈ GIAO HÀNG\n\nhùng thái\nđà nẵng\n1043 BZ Đà Nẵng\n\n\n----------------------------------------\n\nCongratulations on the sale.\n\n----------------------------------------\n\nweb trà sữa -- Built with WooCommerce', 'a:0:{}', 'SMTP Error: Could not authenticate.');
INSERT INTO `3kuF9kxQ_wpsmtp_logs` (`mail_id`, `timestamp`, `to`, `subject`, `message`, `headers`, `error`) VALUES
(11, '2020-12-22 10:44:03', 'a:1:{i:0;s:20:\"hungthai56@gmail.com\";}', 'Đơn hàng tại web trà sữa đã được đặt!', '<!DOCTYPE html>\n<html lang=\"vi\">\n<head>\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n<title>web trà sữa</title>\n</head>\n<body leftmargin=\"0\" marginwidth=\"0\" topmargin=\"0\" marginheight=\"0\" offset=\"0\" style=\"padding: 0;\">\n		<div id=\"wrapper\" dir=\"ltr\" style=\"background-color: #f7f7f7; margin: 0; padding: 70px 0; width: 100%; -webkit-text-size-adjust: none;\">\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" height=\"100%\" width=\"100%\">\n<tr>\n<td align=\"center\" valign=\"top\">\n						<div id=\"template_header_image\">\n													</div>\n						<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" id=\"template_container\" style=\"background-color: #ffffff; border: 1px solid #dedede; box-shadow: 0 1px 4px rgba(0, 0, 0, 0.1); border-radius: 3px;\">\n<tr>\n<td align=\"center\" valign=\"top\">\n									<!-- Header -->\n									<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" id=\"template_header\" style=\'background-color: #96588a; color: #ffffff; border-bottom: 0; font-weight: bold; line-height: 100%; vertical-align: middle; font-family: \"Helvetica Neue\", Helvetica, Roboto, Arial, sans-serif; border-radius: 3px 3px 0 0;\'><tr>\n<td id=\"header_wrapper\" style=\"padding: 36px 48px; display: block;\">\n												<h1 style=\'font-family: \"Helvetica Neue\", Helvetica, Roboto, Arial, sans-serif; font-size: 30px; font-weight: 300; line-height: 150%; margin: 0; text-align: left; text-shadow: 0 1px 0 #ab79a1; color: #ffffff; background-color: inherit;\'>Cảm ơn bạn đã đặt hàng</h1>\n											</td>\n										</tr></table>\n<!-- End Header -->\n</td>\n							</tr>\n<tr>\n<td align=\"center\" valign=\"top\">\n									<!-- Body -->\n									<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" id=\"template_body\"><tr>\n<td valign=\"top\" id=\"body_content\" style=\"background-color: #ffffff;\">\n												<!-- Content -->\n												<table border=\"0\" cellpadding=\"20\" cellspacing=\"0\" width=\"100%\"><tr>\n<td valign=\"top\" style=\"padding: 48px 48px 32px;\">\n															<div id=\"body_content_inner\" style=\'color: #636363; font-family: \"Helvetica Neue\", Helvetica, Roboto, Arial, sans-serif; font-size: 14px; line-height: 150%; text-align: left;\'>\n\n<p style=\"margin: 0 0 16px;\">Xin chào hùng,</p>\n<p style=\"margin: 0 0 16px;\">Đơn hàng #402 đã được đặt thành công và chúng tôi đang xử lý</p>\n\n<p style=\"margin: 0 0 16px;\">Trả tiền mặt khi giao hàng</p>\n\n\n<h2 style=\'color: #96588a; display: block; font-family: \"Helvetica Neue\", Helvetica, Roboto, Arial, sans-serif; font-size: 18px; font-weight: bold; line-height: 130%; margin: 0 0 18px; text-align: left;\'>\n	[Đơn hàng #402] (Tháng Mười Hai 22, 2020)</h2>\n\n<div style=\"margin-bottom: 40px;\">\n	<table class=\"td\" cellspacing=\"0\" cellpadding=\"6\" border=\"1\" style=\"color: #636363; border: 1px solid #e5e5e5; vertical-align: middle; width: 100%; font-family: \'Helvetica Neue\', Helvetica, Roboto, Arial, sans-serif;\">\n<thead><tr>\n<th class=\"td\" scope=\"col\" style=\"color: #636363; border: 1px solid #e5e5e5; vertical-align: middle; padding: 12px; text-align: left;\">Sản phẩm</th>\n				<th class=\"td\" scope=\"col\" style=\"color: #636363; border: 1px solid #e5e5e5; vertical-align: middle; padding: 12px; text-align: left;\">Số lượng</th>\n				<th class=\"td\" scope=\"col\" style=\"color: #636363; border: 1px solid #e5e5e5; vertical-align: middle; padding: 12px; text-align: left;\">Giá</th>\n			</tr></thead>\n<tbody><tr class=\"order_item\">\n<td class=\"td\" style=\"color: #636363; border: 1px solid #e5e5e5; padding: 12px; text-align: left; vertical-align: middle; font-family: \'Helvetica Neue\', Helvetica, Roboto, Arial, sans-serif; word-wrap: break-word;\">\n		Trà Sữa Nguyên Vị - 250ML		</td>\n		<td class=\"td\" style=\"color: #636363; border: 1px solid #e5e5e5; padding: 12px; text-align: left; vertical-align: middle; font-family: \'Helvetica Neue\', Helvetica, Roboto, Arial, sans-serif;\">\n			10		</td>\n		<td class=\"td\" style=\"color: #636363; border: 1px solid #e5e5e5; padding: 12px; text-align: left; vertical-align: middle; font-family: \'Helvetica Neue\', Helvetica, Roboto, Arial, sans-serif;\">\n			<span class=\"woocommerce-Price-amount amount\"><span class=\"woocommerce-Price-currencySymbol\">€</span>35.0</span>		</td>\n	</tr></tbody>\n<tfoot>\n<tr>\n<th class=\"td\" scope=\"row\" colspan=\"2\" style=\"color: #636363; border: 1px solid #e5e5e5; vertical-align: middle; padding: 12px; text-align: left; border-top-width: 4px;\">Tổng số phụ:</th>\n						<td class=\"td\" style=\"color: #636363; border: 1px solid #e5e5e5; vertical-align: middle; padding: 12px; text-align: left; border-top-width: 4px;\"><span class=\"woocommerce-Price-amount amount\"><span class=\"woocommerce-Price-currencySymbol\">€</span>35.0</span></td>\n					</tr>\n<tr>\n<th class=\"td\" scope=\"row\" colspan=\"2\" style=\"color: #636363; border: 1px solid #e5e5e5; vertical-align: middle; padding: 12px; text-align: left;\">Giao nhận hàng:</th>\n						<td class=\"td\" style=\"color: #636363; border: 1px solid #e5e5e5; vertical-align: middle; padding: 12px; text-align: left;\">Giao hàng miễn phí</td>\n					</tr>\n<tr>\n<th class=\"td\" scope=\"row\" colspan=\"2\" style=\"color: #636363; border: 1px solid #e5e5e5; vertical-align: middle; padding: 12px; text-align: left;\">Phương thức thanh toán:</th>\n						<td class=\"td\" style=\"color: #636363; border: 1px solid #e5e5e5; vertical-align: middle; padding: 12px; text-align: left;\">Trả tiền mặt khi nhận hàng</td>\n					</tr>\n<tr>\n<th class=\"td\" scope=\"row\" colspan=\"2\" style=\"color: #636363; border: 1px solid #e5e5e5; vertical-align: middle; padding: 12px; text-align: left;\">Tổng cộng:</th>\n						<td class=\"td\" style=\"color: #636363; border: 1px solid #e5e5e5; vertical-align: middle; padding: 12px; text-align: left;\"><span class=\"woocommerce-Price-amount amount\"><span class=\"woocommerce-Price-currencySymbol\">€</span>35.0</span></td>\n					</tr>\n</tfoot>\n</table>\n</div>\n\n\n<table id=\"addresses\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" style=\"width: 100%; vertical-align: top; margin-bottom: 40px; padding: 0;\"><tr>\n<td valign=\"top\" width=\"50%\" style=\"text-align: left; font-family: \'Helvetica Neue\', Helvetica, Roboto, Arial, sans-serif; border: 0; padding: 0;\">\n			<h2 style=\'color: #96588a; display: block; font-family: \"Helvetica Neue\", Helvetica, Roboto, Arial, sans-serif; font-size: 18px; font-weight: bold; line-height: 130%; margin: 0 0 18px; text-align: left;\'>Địa chỉ thanh toán</h2>\n\n			<address class=\"address\" style=\"padding: 12px; color: #636363; border: 1px solid #e5e5e5;\">\n				hùng thái<br>naritaweg 14, 1043 BZ Amsterdam<br>naritaweg									<br><a href=\"tel:0124578745\" style=\"color: #96588a; font-weight: normal; text-decoration: underline;\">0124578745</a>													<br>hungthai56@gmail.com							</address>\n		</td>\n					<td valign=\"top\" width=\"50%\" style=\"text-align: left; font-family: \'Helvetica Neue\', Helvetica, Roboto, Arial, sans-serif; padding: 0;\">\n				<h2 style=\'color: #96588a; display: block; font-family: \"Helvetica Neue\", Helvetica, Roboto, Arial, sans-serif; font-size: 18px; font-weight: bold; line-height: 130%; margin: 0 0 18px; text-align: left;\'>Địa chỉ giao hàng</h2>\n\n				<address class=\"address\" style=\"padding: 12px; color: #636363; border: 1px solid #e5e5e5;\">hùng thái<br>đà nẵng<br>1043 BZ Đà Nẵng</address>\n			</td>\n			</tr></table>\n<p style=\"margin: 0 0 16px;\">Thanks for using demo.vitutomedia.vn!</p>\n															</div>\n														</td>\n													</tr></table>\n<!-- End Content -->\n</td>\n										</tr></table>\n<!-- End Body -->\n</td>\n							</tr>\n</table>\n</td>\n				</tr>\n<tr>\n<td align=\"center\" valign=\"top\">\n						<!-- Footer -->\n						<table border=\"0\" cellpadding=\"10\" cellspacing=\"0\" width=\"600\" id=\"template_footer\"><tr>\n<td valign=\"top\" style=\"padding: 0; border-radius: 6px;\">\n									<table border=\"0\" cellpadding=\"10\" cellspacing=\"0\" width=\"100%\"><tr>\n<td colspan=\"2\" valign=\"middle\" id=\"credit\" style=\'border-radius: 6px; border: 0; color: #8a8a8a; font-family: \"Helvetica Neue\", Helvetica, Roboto, Arial, sans-serif; font-size: 12px; line-height: 150%; text-align: center; padding: 24px 0;\'>\n												<p style=\"margin: 0 0 16px;\">web trà sữa — Built with <a href=\"https://woocommerce.com\" style=\"color: #96588a; font-weight: normal; text-decoration: underline;\">WooCommerce</a></p>\n											</td>\n										</tr></table>\n</td>\n							</tr></table>\n<!-- End Footer -->\n</td>\n				</tr>\n</table>\n</div>\n	</body>\n</html>\n', 'a:0:{}', 'SMTP Error: Could not authenticate.');

-- --------------------------------------------------------

--
-- Table structure for table `3kuF9kxQ_yith_wcwl`
--

CREATE TABLE `3kuF9kxQ_yith_wcwl` (
  `ID` bigint(20) NOT NULL,
  `prod_id` bigint(20) NOT NULL,
  `quantity` int(11) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `wishlist_id` bigint(20) DEFAULT NULL,
  `position` int(11) DEFAULT 0,
  `original_price` decimal(9,3) DEFAULT NULL,
  `original_currency` char(3) DEFAULT NULL,
  `dateadded` timestamp NOT NULL DEFAULT current_timestamp(),
  `on_sale` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `3kuF9kxQ_yith_wcwl`
--

INSERT INTO `3kuF9kxQ_yith_wcwl` (`ID`, `prod_id`, `quantity`, `user_id`, `wishlist_id`, `position`, `original_price`, `original_currency`, `dateadded`, `on_sale`) VALUES
(1, 77, 1, 1, 1, 0, '3.500', 'EUR', '2020-12-22 03:20:55', 0),
(2, 72, 1, 1, 1, 0, '3.500', 'EUR', '2020-12-28 09:33:42', 0),
(3, 88, 1, 1, 1, 0, '3.500', 'EUR', '2021-01-06 04:05:06', 0),
(4, 81, 1, 1, 1, 0, '3.500', 'EUR', '2021-03-06 01:15:08', 0);

-- --------------------------------------------------------

--
-- Table structure for table `3kuF9kxQ_yith_wcwl_lists`
--

CREATE TABLE `3kuF9kxQ_yith_wcwl_lists` (
  `ID` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  `wishlist_slug` varchar(200) NOT NULL,
  `wishlist_name` text DEFAULT NULL,
  `wishlist_token` varchar(64) NOT NULL,
  `wishlist_privacy` tinyint(1) NOT NULL DEFAULT 0,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `dateadded` timestamp NOT NULL DEFAULT current_timestamp(),
  `expiration` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `3kuF9kxQ_yith_wcwl_lists`
--

INSERT INTO `3kuF9kxQ_yith_wcwl_lists` (`ID`, `user_id`, `session_id`, `wishlist_slug`, `wishlist_name`, `wishlist_token`, `wishlist_privacy`, `is_default`, `dateadded`, `expiration`) VALUES
(1, 1, NULL, '', '', '3NYASU3TC2SM', 0, 1, '2020-12-22 03:20:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `3kuF9kxQ_yoast_indexable`
--

CREATE TABLE `3kuF9kxQ_yoast_indexable` (
  `id` int(11) UNSIGNED NOT NULL,
  `permalink` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permalink_hash` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `object_id` int(11) UNSIGNED DEFAULT NULL,
  `object_type` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `object_sub_type` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` int(11) UNSIGNED DEFAULT NULL,
  `post_parent` int(11) UNSIGNED DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `breadcrumb_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT NULL,
  `is_protected` tinyint(1) DEFAULT 0,
  `has_public_posts` tinyint(1) DEFAULT NULL,
  `number_of_pages` int(11) UNSIGNED DEFAULT NULL,
  `canonical` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary_focus_keyword` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary_focus_keyword_score` int(3) DEFAULT NULL,
  `readability_score` int(3) DEFAULT NULL,
  `is_cornerstone` tinyint(1) DEFAULT 0,
  `is_robots_noindex` tinyint(1) DEFAULT 0,
  `is_robots_nofollow` tinyint(1) DEFAULT 0,
  `is_robots_noarchive` tinyint(1) DEFAULT 0,
  `is_robots_noimageindex` tinyint(1) DEFAULT 0,
  `is_robots_nosnippet` tinyint(1) DEFAULT 0,
  `twitter_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_image` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_image_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_image_source` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_image` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_image_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_image_source` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_image_meta` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_count` int(11) DEFAULT NULL,
  `incoming_link_count` int(11) DEFAULT NULL,
  `prominent_words_version` int(11) UNSIGNED DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `blog_id` bigint(20) NOT NULL DEFAULT 1,
  `language` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schema_page_type` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schema_article_type` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `has_ancestors` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `3kuF9kxQ_yoast_indexable`
--

INSERT INTO `3kuF9kxQ_yoast_indexable` (`id`, `permalink`, `permalink_hash`, `object_id`, `object_type`, `object_sub_type`, `author_id`, `post_parent`, `title`, `description`, `breadcrumb_title`, `post_status`, `is_public`, `is_protected`, `has_public_posts`, `number_of_pages`, `canonical`, `primary_focus_keyword`, `primary_focus_keyword_score`, `readability_score`, `is_cornerstone`, `is_robots_noindex`, `is_robots_nofollow`, `is_robots_noarchive`, `is_robots_noimageindex`, `is_robots_nosnippet`, `twitter_title`, `twitter_image`, `twitter_description`, `twitter_image_id`, `twitter_image_source`, `open_graph_title`, `open_graph_description`, `open_graph_image`, `open_graph_image_id`, `open_graph_image_source`, `open_graph_image_meta`, `link_count`, `incoming_link_count`, `prominent_words_version`, `created_at`, `updated_at`, `blog_id`, `language`, `region`, `schema_page_type`, `schema_article_type`, `has_ancestors`) VALUES
(1, NULL, NULL, 0, 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'https://0.gravatar.com/avatar/?s=500&d=mm&r=g', NULL, NULL, 'gravatar-image', NULL, NULL, 'https://0.gravatar.com/avatar/?s=500&d=mm&r=g', NULL, 'gravatar-image', NULL, NULL, NULL, NULL, '2020-12-31 06:40:26', '2020-12-31 06:49:09', 1, NULL, NULL, NULL, NULL, 0),
(2, NULL, NULL, 4, 'post', 'wpcf7_contact_form', 0, 0, NULL, NULL, 'Contact form 1', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-12-31 06:40:26', '2020-12-31 06:49:09', 1, NULL, NULL, NULL, NULL, 0),
(3, 'https://bubotea.eu', '32:556786dcbb7b6846856a17d948a67dd3', NULL, 'home-page', NULL, NULL, NULL, '%%sitename%% %%page%% %%sep%% %%sitedesc%%', 'Just another WordPress site', 'Home', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '', '', '', '', NULL, NULL, NULL, NULL, NULL, '2020-12-31 06:49:08', '2020-12-30 23:55:31', 1, NULL, NULL, NULL, NULL, 0),
(4, 'https://bubotea.eu?author=1', '41:74f74867248760cfbfccbdfc43073cbd', 1, 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'https://secure.gravatar.com/avatar/8d991380dffbd1fe73f009361a83fa07?s=500&d=mm&r=g', NULL, NULL, 'gravatar-image', NULL, NULL, 'https://secure.gravatar.com/avatar/8d991380dffbd1fe73f009361a83fa07?s=500&d=mm&r=g', NULL, 'gravatar-image', NULL, NULL, NULL, NULL, '2021-01-04 03:18:43', '2021-01-03 20:24:12', 1, NULL, NULL, NULL, NULL, 0),
(5, 'https://bubotea.eu?p=5', '36:3bf6ee1a3e5081cf68a8ca68fa370d81', 5, 'post', 'post', 1, 0, NULL, NULL, 'Lưu bản nháp tự động', 'auto-draft', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-01-04 03:18:43', '2021-01-03 20:18:43', 1, NULL, NULL, NULL, NULL, 0),
(6, 'https://bubotea.eu?page_id=3', '42:97ecf7ccb4348eff19d89c90423284be', 3, 'post', 'page', 1, 0, NULL, NULL, 'Privacy Policy', 'draft', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-04 03:18:43', '2021-01-03 20:18:43', 1, NULL, NULL, NULL, NULL, 0),
(7, 'https://bubotea.eu?page_id=2', '42:b2a6f440bc93c4d7f616f2fa407c0638', 2, 'post', 'page', 1, 0, NULL, NULL, 'Sample Page', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2021-01-04 03:18:43', '2021-01-03 20:18:43', 1, NULL, NULL, NULL, NULL, 0),
(8, 'https://bubotea.eu?p=1', '36:d38303548dc3784978d2b7ca4a06516a', 1, 'post', 'post', 1, 0, NULL, NULL, 'Hello world!', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-01-04 03:18:43', '2021-01-03 20:18:43', 1, NULL, NULL, NULL, NULL, 0),
(9, 'https://bubotea.eu?cat=1', '38:95d2e7ea083edff102965762816dda7a', 1, 'term', 'category', NULL, NULL, NULL, NULL, 'Uncategorized', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-01-04 03:18:43', '2021-01-03 20:18:43', 1, NULL, NULL, NULL, NULL, 0),
(10, NULL, NULL, NULL, 'system-page', '404', NULL, NULL, 'Page not found %%sep%% %%sitename%%', NULL, 'Error 404: Page not found', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-04 03:18:43', '2021-01-03 20:18:43', 1, NULL, NULL, NULL, NULL, 0),
(11, NULL, NULL, NULL, 'system-page', 'search-result', NULL, NULL, 'You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-04 03:18:43', '2021-01-03 20:18:43', 1, NULL, NULL, NULL, NULL, 0),
(12, NULL, NULL, NULL, 'date-archive', NULL, NULL, NULL, '%%date%% %%page%% %%sep%% %%sitename%%', '', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-04 03:18:43', '2021-01-03 20:18:43', 1, NULL, NULL, NULL, NULL, 0),
(14, 'https://bubotea.eu?p=7', '36:f40bce80654548c2cab49e6164455a40', 7, 'post', 'oembed_cache', 1, 0, NULL, NULL, 'Untitled', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-01-04 03:24:08', '2021-01-03 20:24:08', 1, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `3kuF9kxQ_yoast_indexable_hierarchy`
--

CREATE TABLE `3kuF9kxQ_yoast_indexable_hierarchy` (
  `indexable_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `ancestor_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `depth` int(11) UNSIGNED DEFAULT NULL,
  `blog_id` bigint(20) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `3kuF9kxQ_yoast_migrations`
--

CREATE TABLE `3kuF9kxQ_yoast_migrations` (
  `id` int(11) UNSIGNED NOT NULL,
  `version` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `3kuF9kxQ_yoast_migrations`
--

INSERT INTO `3kuF9kxQ_yoast_migrations` (`id`, `version`) VALUES
(1, '20171228151840'),
(2, '20171228151841'),
(3, '20190529075038'),
(4, '20191011111109'),
(5, '20200408101900'),
(6, '20200420073606'),
(7, '20200428123747'),
(8, '20200428194858'),
(9, '20200429105310'),
(10, '20200430075614'),
(11, '20200430150130'),
(12, '20200507054848'),
(13, '20200513133401'),
(14, '20200609154515'),
(15, '20200616130143'),
(16, '20200617122511'),
(17, '20200702141921'),
(18, '20200728095334');

-- --------------------------------------------------------

--
-- Table structure for table `3kuF9kxQ_yoast_primary_term`
--

CREATE TABLE `3kuF9kxQ_yoast_primary_term` (
  `id` int(11) UNSIGNED NOT NULL,
  `post_id` int(11) UNSIGNED NOT NULL,
  `term_id` int(11) UNSIGNED NOT NULL,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `blog_id` bigint(20) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `3kuF9kxQ_yoast_seo_links`
--

CREATE TABLE `3kuF9kxQ_yoast_seo_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `target_post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` varchar(8) DEFAULT NULL,
  `indexable_id` int(11) UNSIGNED DEFAULT NULL,
  `target_indexable_id` int(11) UNSIGNED DEFAULT NULL,
  `height` int(11) UNSIGNED DEFAULT NULL,
  `width` int(11) UNSIGNED DEFAULT NULL,
  `size` int(11) UNSIGNED DEFAULT NULL,
  `language` varchar(32) DEFAULT NULL,
  `region` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `3kuF9kxQ_yoast_seo_links`
--

INSERT INTO `3kuF9kxQ_yoast_seo_links` (`id`, `url`, `post_id`, `target_post_id`, `type`, `indexable_id`, `target_indexable_id`, `height`, `width`, `size`, `language`, `region`) VALUES
(1, 'https://bubotea.euwp-admin/', 2, NULL, 'internal', 7, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `3kuF9kxQ_actionscheduler_actions`
--
ALTER TABLE `3kuF9kxQ_actionscheduler_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `hook` (`hook`),
  ADD KEY `status` (`status`),
  ADD KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  ADD KEY `args` (`args`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `last_attempt_gmt` (`last_attempt_gmt`),
  ADD KEY `claim_id` (`claim_id`);

--
-- Indexes for table `3kuF9kxQ_actionscheduler_claims`
--
ALTER TABLE `3kuF9kxQ_actionscheduler_claims`
  ADD PRIMARY KEY (`claim_id`),
  ADD KEY `date_created_gmt` (`date_created_gmt`);

--
-- Indexes for table `3kuF9kxQ_actionscheduler_groups`
--
ALTER TABLE `3kuF9kxQ_actionscheduler_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `slug` (`slug`(191));

--
-- Indexes for table `3kuF9kxQ_actionscheduler_logs`
--
ALTER TABLE `3kuF9kxQ_actionscheduler_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `log_date_gmt` (`log_date_gmt`);

--
-- Indexes for table `3kuF9kxQ_commentmeta`
--
ALTER TABLE `3kuF9kxQ_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `3kuF9kxQ_comments`
--
ALTER TABLE `3kuF9kxQ_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Indexes for table `3kuF9kxQ_db7_forms`
--
ALTER TABLE `3kuF9kxQ_db7_forms`
  ADD PRIMARY KEY (`form_id`);

--
-- Indexes for table `3kuF9kxQ_links`
--
ALTER TABLE `3kuF9kxQ_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `3kuF9kxQ_mo_openid_linked_user`
--
ALTER TABLE `3kuF9kxQ_mo_openid_linked_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `3kuF9kxQ_options`
--
ALTER TABLE `3kuF9kxQ_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `3kuF9kxQ_postmeta`
--
ALTER TABLE `3kuF9kxQ_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `3kuF9kxQ_posts`
--
ALTER TABLE `3kuF9kxQ_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `3kuF9kxQ_smush_dir_images`
--
ALTER TABLE `3kuF9kxQ_smush_dir_images`
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `path_hash` (`path_hash`),
  ADD KEY `image_size` (`image_size`);

--
-- Indexes for table `3kuF9kxQ_social_users`
--
ALTER TABLE `3kuF9kxQ_social_users`
  ADD PRIMARY KEY (`social_users_id`),
  ADD KEY `ID` (`ID`,`type`),
  ADD KEY `identifier` (`identifier`);

--
-- Indexes for table `3kuF9kxQ_termmeta`
--
ALTER TABLE `3kuF9kxQ_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `3kuF9kxQ_terms`
--
ALTER TABLE `3kuF9kxQ_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `3kuF9kxQ_term_relationships`
--
ALTER TABLE `3kuF9kxQ_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `3kuF9kxQ_term_taxonomy`
--
ALTER TABLE `3kuF9kxQ_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `3kuF9kxQ_tm_taskmeta`
--
ALTER TABLE `3kuF9kxQ_tm_taskmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `meta_key` (`meta_key`(191)),
  ADD KEY `task_id` (`task_id`);

--
-- Indexes for table `3kuF9kxQ_tm_tasks`
--
ALTER TABLE `3kuF9kxQ_tm_tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `3kuF9kxQ_usermeta`
--
ALTER TABLE `3kuF9kxQ_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `3kuF9kxQ_users`
--
ALTER TABLE `3kuF9kxQ_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `3kuF9kxQ_wc_admin_notes`
--
ALTER TABLE `3kuF9kxQ_wc_admin_notes`
  ADD PRIMARY KEY (`note_id`);

--
-- Indexes for table `3kuF9kxQ_wc_admin_note_actions`
--
ALTER TABLE `3kuF9kxQ_wc_admin_note_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `note_id` (`note_id`);

--
-- Indexes for table `3kuF9kxQ_wc_category_lookup`
--
ALTER TABLE `3kuF9kxQ_wc_category_lookup`
  ADD PRIMARY KEY (`category_tree_id`,`category_id`);

--
-- Indexes for table `3kuF9kxQ_wc_customer_lookup`
--
ALTER TABLE `3kuF9kxQ_wc_customer_lookup`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `3kuF9kxQ_wc_download_log`
--
ALTER TABLE `3kuF9kxQ_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indexes for table `3kuF9kxQ_wc_order_coupon_lookup`
--
ALTER TABLE `3kuF9kxQ_wc_order_coupon_lookup`
  ADD PRIMARY KEY (`order_id`,`coupon_id`),
  ADD KEY `coupon_id` (`coupon_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indexes for table `3kuF9kxQ_wc_order_product_lookup`
--
ALTER TABLE `3kuF9kxQ_wc_order_product_lookup`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indexes for table `3kuF9kxQ_wc_order_stats`
--
ALTER TABLE `3kuF9kxQ_wc_order_stats`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `date_created` (`date_created`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `status` (`status`(191));

--
-- Indexes for table `3kuF9kxQ_wc_order_tax_lookup`
--
ALTER TABLE `3kuF9kxQ_wc_order_tax_lookup`
  ADD PRIMARY KEY (`order_id`,`tax_rate_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indexes for table `3kuF9kxQ_wc_product_meta_lookup`
--
ALTER TABLE `3kuF9kxQ_wc_product_meta_lookup`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `virtual` (`virtual`),
  ADD KEY `downloadable` (`downloadable`),
  ADD KEY `stock_status` (`stock_status`),
  ADD KEY `stock_quantity` (`stock_quantity`),
  ADD KEY `onsale` (`onsale`),
  ADD KEY `min_max_price` (`min_price`,`max_price`);

--
-- Indexes for table `3kuF9kxQ_wc_reserved_stock`
--
ALTER TABLE `3kuF9kxQ_wc_reserved_stock`
  ADD PRIMARY KEY (`order_id`,`product_id`);

--
-- Indexes for table `3kuF9kxQ_wc_tax_rate_classes`
--
ALTER TABLE `3kuF9kxQ_wc_tax_rate_classes`
  ADD PRIMARY KEY (`tax_rate_class_id`),
  ADD UNIQUE KEY `slug` (`slug`(191));

--
-- Indexes for table `3kuF9kxQ_wc_webhooks`
--
ALTER TABLE `3kuF9kxQ_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `3kuF9kxQ_woocommerce_api_keys`
--
ALTER TABLE `3kuF9kxQ_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `3kuF9kxQ_woocommerce_attribute_taxonomies`
--
ALTER TABLE `3kuF9kxQ_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indexes for table `3kuF9kxQ_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `3kuF9kxQ_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`);

--
-- Indexes for table `3kuF9kxQ_woocommerce_log`
--
ALTER TABLE `3kuF9kxQ_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `3kuF9kxQ_woocommerce_order_itemmeta`
--
ALTER TABLE `3kuF9kxQ_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `3kuF9kxQ_woocommerce_order_items`
--
ALTER TABLE `3kuF9kxQ_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `3kuF9kxQ_woocommerce_payment_tokenmeta`
--
ALTER TABLE `3kuF9kxQ_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `3kuF9kxQ_woocommerce_payment_tokens`
--
ALTER TABLE `3kuF9kxQ_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `3kuF9kxQ_woocommerce_sessions`
--
ALTER TABLE `3kuF9kxQ_woocommerce_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_key` (`session_key`);

--
-- Indexes for table `3kuF9kxQ_woocommerce_shipping_zones`
--
ALTER TABLE `3kuF9kxQ_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `3kuF9kxQ_woocommerce_shipping_zone_locations`
--
ALTER TABLE `3kuF9kxQ_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `3kuF9kxQ_woocommerce_shipping_zone_methods`
--
ALTER TABLE `3kuF9kxQ_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indexes for table `3kuF9kxQ_woocommerce_tax_rates`
--
ALTER TABLE `3kuF9kxQ_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `3kuF9kxQ_woocommerce_tax_rate_locations`
--
ALTER TABLE `3kuF9kxQ_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `3kuF9kxQ_wpsmtp_logs`
--
ALTER TABLE `3kuF9kxQ_wpsmtp_logs`
  ADD PRIMARY KEY (`mail_id`);

--
-- Indexes for table `3kuF9kxQ_yith_wcwl`
--
ALTER TABLE `3kuF9kxQ_yith_wcwl`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `prod_id` (`prod_id`);

--
-- Indexes for table `3kuF9kxQ_yith_wcwl_lists`
--
ALTER TABLE `3kuF9kxQ_yith_wcwl_lists`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `wishlist_token` (`wishlist_token`),
  ADD KEY `wishlist_slug` (`wishlist_slug`);

--
-- Indexes for table `3kuF9kxQ_yoast_indexable`
--
ALTER TABLE `3kuF9kxQ_yoast_indexable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_type_and_sub_type` (`object_type`,`object_sub_type`),
  ADD KEY `object_id_and_type` (`object_id`,`object_type`),
  ADD KEY `permalink_hash_and_object_type` (`permalink_hash`,`object_type`),
  ADD KEY `subpages` (`post_parent`,`object_type`,`post_status`,`object_id`),
  ADD KEY `prominent_words` (`prominent_words_version`,`object_type`,`object_sub_type`,`post_status`);

--
-- Indexes for table `3kuF9kxQ_yoast_indexable_hierarchy`
--
ALTER TABLE `3kuF9kxQ_yoast_indexable_hierarchy`
  ADD PRIMARY KEY (`indexable_id`,`ancestor_id`),
  ADD KEY `indexable_id` (`indexable_id`),
  ADD KEY `ancestor_id` (`ancestor_id`),
  ADD KEY `depth` (`depth`);

--
-- Indexes for table `3kuF9kxQ_yoast_migrations`
--
ALTER TABLE `3kuF9kxQ_yoast_migrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `jKh5IZ_yoast_migrations_version` (`version`);

--
-- Indexes for table `3kuF9kxQ_yoast_primary_term`
--
ALTER TABLE `3kuF9kxQ_yoast_primary_term`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_taxonomy` (`post_id`,`taxonomy`),
  ADD KEY `post_term` (`post_id`,`term_id`);

--
-- Indexes for table `3kuF9kxQ_yoast_seo_links`
--
ALTER TABLE `3kuF9kxQ_yoast_seo_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_direction` (`post_id`,`type`),
  ADD KEY `indexable_link_direction` (`indexable_id`,`type`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `3kuF9kxQ_actionscheduler_actions`
--
ALTER TABLE `3kuF9kxQ_actionscheduler_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `3kuF9kxQ_actionscheduler_claims`
--
ALTER TABLE `3kuF9kxQ_actionscheduler_claims`
  MODIFY `claim_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7042;

--
-- AUTO_INCREMENT for table `3kuF9kxQ_actionscheduler_groups`
--
ALTER TABLE `3kuF9kxQ_actionscheduler_groups`
  MODIFY `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `3kuF9kxQ_actionscheduler_logs`
--
ALTER TABLE `3kuF9kxQ_actionscheduler_logs`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `3kuF9kxQ_commentmeta`
--
ALTER TABLE `3kuF9kxQ_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `3kuF9kxQ_comments`
--
ALTER TABLE `3kuF9kxQ_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `3kuF9kxQ_db7_forms`
--
ALTER TABLE `3kuF9kxQ_db7_forms`
  MODIFY `form_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `3kuF9kxQ_links`
--
ALTER TABLE `3kuF9kxQ_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `3kuF9kxQ_mo_openid_linked_user`
--
ALTER TABLE `3kuF9kxQ_mo_openid_linked_user`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `3kuF9kxQ_options`
--
ALTER TABLE `3kuF9kxQ_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11574;

--
-- AUTO_INCREMENT for table `3kuF9kxQ_postmeta`
--
ALTER TABLE `3kuF9kxQ_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1536;

--
-- AUTO_INCREMENT for table `3kuF9kxQ_posts`
--
ALTER TABLE `3kuF9kxQ_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=543;

--
-- AUTO_INCREMENT for table `3kuF9kxQ_smush_dir_images`
--
ALTER TABLE `3kuF9kxQ_smush_dir_images`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `3kuF9kxQ_social_users`
--
ALTER TABLE `3kuF9kxQ_social_users`
  MODIFY `social_users_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `3kuF9kxQ_termmeta`
--
ALTER TABLE `3kuF9kxQ_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `3kuF9kxQ_terms`
--
ALTER TABLE `3kuF9kxQ_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `3kuF9kxQ_term_taxonomy`
--
ALTER TABLE `3kuF9kxQ_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `3kuF9kxQ_tm_taskmeta`
--
ALTER TABLE `3kuF9kxQ_tm_taskmeta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `3kuF9kxQ_tm_tasks`
--
ALTER TABLE `3kuF9kxQ_tm_tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `3kuF9kxQ_usermeta`
--
ALTER TABLE `3kuF9kxQ_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

--
-- AUTO_INCREMENT for table `3kuF9kxQ_users`
--
ALTER TABLE `3kuF9kxQ_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `3kuF9kxQ_wc_admin_notes`
--
ALTER TABLE `3kuF9kxQ_wc_admin_notes`
  MODIFY `note_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `3kuF9kxQ_wc_admin_note_actions`
--
ALTER TABLE `3kuF9kxQ_wc_admin_note_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=924;

--
-- AUTO_INCREMENT for table `3kuF9kxQ_wc_customer_lookup`
--
ALTER TABLE `3kuF9kxQ_wc_customer_lookup`
  MODIFY `customer_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `3kuF9kxQ_wc_download_log`
--
ALTER TABLE `3kuF9kxQ_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `3kuF9kxQ_wc_tax_rate_classes`
--
ALTER TABLE `3kuF9kxQ_wc_tax_rate_classes`
  MODIFY `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `3kuF9kxQ_wc_webhooks`
--
ALTER TABLE `3kuF9kxQ_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `3kuF9kxQ_woocommerce_api_keys`
--
ALTER TABLE `3kuF9kxQ_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `3kuF9kxQ_woocommerce_attribute_taxonomies`
--
ALTER TABLE `3kuF9kxQ_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `3kuF9kxQ_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `3kuF9kxQ_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `3kuF9kxQ_woocommerce_log`
--
ALTER TABLE `3kuF9kxQ_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `3kuF9kxQ_woocommerce_order_itemmeta`
--
ALTER TABLE `3kuF9kxQ_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;

--
-- AUTO_INCREMENT for table `3kuF9kxQ_woocommerce_order_items`
--
ALTER TABLE `3kuF9kxQ_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `3kuF9kxQ_woocommerce_payment_tokenmeta`
--
ALTER TABLE `3kuF9kxQ_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `3kuF9kxQ_woocommerce_payment_tokens`
--
ALTER TABLE `3kuF9kxQ_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `3kuF9kxQ_woocommerce_sessions`
--
ALTER TABLE `3kuF9kxQ_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=338;

--
-- AUTO_INCREMENT for table `3kuF9kxQ_woocommerce_shipping_zones`
--
ALTER TABLE `3kuF9kxQ_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `3kuF9kxQ_woocommerce_shipping_zone_locations`
--
ALTER TABLE `3kuF9kxQ_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `3kuF9kxQ_woocommerce_shipping_zone_methods`
--
ALTER TABLE `3kuF9kxQ_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `3kuF9kxQ_woocommerce_tax_rates`
--
ALTER TABLE `3kuF9kxQ_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `3kuF9kxQ_woocommerce_tax_rate_locations`
--
ALTER TABLE `3kuF9kxQ_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `3kuF9kxQ_wpsmtp_logs`
--
ALTER TABLE `3kuF9kxQ_wpsmtp_logs`
  MODIFY `mail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `3kuF9kxQ_yith_wcwl`
--
ALTER TABLE `3kuF9kxQ_yith_wcwl`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `3kuF9kxQ_yith_wcwl_lists`
--
ALTER TABLE `3kuF9kxQ_yith_wcwl_lists`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `3kuF9kxQ_yoast_indexable`
--
ALTER TABLE `3kuF9kxQ_yoast_indexable`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `3kuF9kxQ_yoast_migrations`
--
ALTER TABLE `3kuF9kxQ_yoast_migrations`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `3kuF9kxQ_yoast_primary_term`
--
ALTER TABLE `3kuF9kxQ_yoast_primary_term`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `3kuF9kxQ_yoast_seo_links`
--
ALTER TABLE `3kuF9kxQ_yoast_seo_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
