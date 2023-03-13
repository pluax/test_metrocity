-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Мар 13 2023 г., 21:57
-- Версия сервера: 10.1.37-MariaDB
-- Версия PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `misha_test`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Комментатор WordPress', 'wapuu@wordpress.example', 'https://ru.wordpress.org/', '', '2023-03-11 13:54:43', '2023-03-11 10:54:43', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href=\"https://ru.gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost', 'yes'),
(2, 'home', 'http://localhost', 'yes'),
(3, 'blogname', 'Metro City', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'aplugatarev@bk.ru', 'yes'),
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
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:120:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:9:\"houses/?$\";s:26:\"index.php?post_type=houses\";s:39:\"houses/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=houses&feed=$matches[1]\";s:34:\"houses/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=houses&feed=$matches[1]\";s:26:\"houses/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=houses&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:34:\"houses/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"houses/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"houses/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"houses/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"houses/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"houses/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"houses/([^/]+)/embed/?$\";s:39:\"index.php?houses=$matches[1]&embed=true\";s:27:\"houses/([^/]+)/trackback/?$\";s:33:\"index.php?houses=$matches[1]&tb=1\";s:47:\"houses/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?houses=$matches[1]&feed=$matches[2]\";s:42:\"houses/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?houses=$matches[1]&feed=$matches[2]\";s:35:\"houses/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?houses=$matches[1]&paged=$matches[2]\";s:42:\"houses/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?houses=$matches[1]&cpage=$matches[2]\";s:31:\"houses/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?houses=$matches[1]&page=$matches[2]\";s:23:\"houses/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"houses/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"houses/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"houses/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"houses/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"houses/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:33:\"classic-editor/classic-editor.php\";i:2;s:22:\"cyr2lat/cyr-to-lat.php\";i:3;s:32:\"duplicate-page/duplicatepage.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:4:{i:0;s:69:\"C:\\xampp\\htdocs\\HoNo\\public/wp-content/themes/metrocity/functions.php\";i:2;s:65:\"C:\\xampp\\htdocs\\HoNo\\public/wp-content/themes/metrocity/style.css\";i:3;s:70:\"C:\\xampp\\htdocs\\HoNo\\public/wp-content/themes/metrocity/front-page.php\";i:4;s:0:\"\";}', 'no'),
(40, 'template', 'metrocity', 'yes'),
(41, 'stylesheet', 'metrocity', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '53496', 'yes'),
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
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '2', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1694084083', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '53496', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'WPLANG', 'ru_RU', 'yes'),
(103, 'user_count', '1', 'no'),
(104, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:167:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Свежие записи</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:247:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Свежие комментарии</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Архивы</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Рубрики</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(106, 'cron', 'a:8:{i:1678740884;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1678748084;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1678748098;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1678791284;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1678791298;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1678791299;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1679223284;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(107, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(122, 'recovery_keys', 'a:2:{s:22:\"lbLxF1dz2QESS6ZCevJ39U\";a:2:{s:10:\"hashed_key\";s:34:\"$P$BG3A9YhVhF50kShRnJKC4VI6ogc78s1\";s:10:\"created_at\";i:1678646289;}s:22:\"Za4EVaOK8Z35TVOnBXtWb5\";a:2:{s:10:\"hashed_key\";s:34:\"$P$BK2ml1324iK34zGZVJoXnRH1UTOk5l1\";s:10:\"created_at\";i:1678737260;}}', 'yes'),
(123, 'https_detection_errors', 'a:2:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:38:\"Проверка SSL неудачна.\";}s:17:\"bad_response_code\";a:1:{i:0;s:9:\"Forbidden\";}}', 'yes'),
(127, 'theme_mods_twentytwentythree', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1678535090;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(141, '_site_transient_timeout_browser_2ce1fd67485cfe92adf700d716e9f29f', '1679136898', 'no'),
(142, '_site_transient_browser_2ce1fd67485cfe92adf700d716e9f29f', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"110.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(143, '_site_transient_timeout_php_check_baf661bc1e7958f3dc9ec8c07cccafb4', '1679136899', 'no'),
(144, '_site_transient_php_check_baf661bc1e7958f3dc9ec8c07cccafb4', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:0;s:13:\"is_acceptable\";b:0;}', 'no'),
(152, 'can_compress_scripts', '1', 'no'),
(161, 'finished_updating_comment_type', '1', 'yes'),
(172, 'current_theme', 'metro_city', 'yes'),
(173, 'theme_mods_metrocity', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(174, 'theme_switched', '', 'yes'),
(182, 'recently_activated', 'a:0:{}', 'yes'),
(210, 'acf_version', '6.0.7', 'yes'),
(213, '_transient_timeout_acf_plugin_updates', '1678814272', 'no'),
(214, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:0:{}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"6.0.7\";}}', 'no'),
(221, '_transient_health-check-site-status-result', '{\"good\":11,\"recommended\":8,\"critical\":2}', 'yes'),
(229, 'duplicate_page_options', 'a:4:{s:21:\"duplicate_post_status\";s:5:\"draft\";s:23:\"duplicate_post_redirect\";s:7:\"to_list\";s:21:\"duplicate_post_suffix\";s:0:\"\";s:21:\"duplicate_post_editor\";s:7:\"classic\";}', 'yes'),
(232, 'recovery_mode_email_last_sent', '1678737260', 'yes'),
(246, 'wp_calendar_block_has_published_posts', '1', 'yes'),
(259, '_site_transient_timeout_available_translations', '1678707327', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(260, '_site_transient_available_translations', 'a:130:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-05-13 15:59:22\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"am\";a:8:{s:8:\"language\";s:2:\"am\";s:7:\"version\";s:5:\"6.0.3\";s:7:\"updated\";s:19:\"2022-09-29 20:43:49\";s:12:\"english_name\";s:7:\"Amharic\";s:11:\"native_name\";s:12:\"አማርኛ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.0.3/am.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"am\";i:2;s:3:\"amh\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"ቀጥል\";}}s:3:\"arg\";a:8:{s:8:\"language\";s:3:\"arg\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-09-22 16:46:56\";s:12:\"english_name\";s:9:\"Aragonese\";s:11:\"native_name\";s:9:\"Aragonés\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.1.1/arg.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"an\";i:2;s:3:\"arg\";i:3;s:3:\"arg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continar\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2023-03-07 13:09:35\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.1.1/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"متابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:6:\"4.8.21\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.21/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2023-03-04 12:54:13\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.1.1/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:6:\"4.9.22\";s:7:\"updated\";s:19:\"2019-10-29 07:54:22\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.9.22/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2023-02-17 10:40:57\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:6:\"5.4.12\";s:7:\"updated\";s:19:\"2020-10-31 08:48:37\";s:12:\"english_name\";s:20:\"Bengali (Bangladesh)\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.4.12/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:23:\"এগিয়ে চল.\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2020-10-30 03:24:38\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:33:\"མུ་མཐུད་དུ།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2023-02-22 20:45:53\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2023-03-04 21:20:13\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.1.1/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2023-02-21 08:26:37\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2023-03-06 11:56:19\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.1.1/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2023-01-10 08:19:28\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsæt\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2023-01-16 12:27:22\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2023-01-16 12:27:34\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/6.1.1/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2023-03-04 22:06:32\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/6.1.1/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2023-03-04 21:36:27\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_AT\";a:8:{s:8:\"language\";s:5:\"de_AT\";s:7:\"version\";s:5:\"6.0.3\";s:7:\"updated\";s:19:\"2022-03-17 12:58:14\";s:12:\"english_name\";s:16:\"German (Austria)\";s:11:\"native_name\";s:21:\"Deutsch (Österreich)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.0.3/de_AT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dsb\";a:8:{s:8:\"language\";s:3:\"dsb\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-07-16 12:13:09\";s:12:\"english_name\";s:13:\"Lower Sorbian\";s:11:\"native_name\";s:16:\"Dolnoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.1.1/dsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"dsb\";i:3;s:3:\"dsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Dalej\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2023-02-22 14:01:36\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.1.1/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-11-10 21:58:00\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"6.0.3\";s:7:\"updated\";s:19:\"2022-04-01 22:35:34\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.0.3/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2023-01-31 12:11:44\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2023-02-21 05:55:12\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"6.0.3\";s:7:\"updated\";s:19:\"2021-12-24 12:36:39\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.0.3/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-12-18 21:56:09\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.1.1/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2023-02-27 22:40:37\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2023-02-01 03:10:20\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_EC\";a:8:{s:8:\"language\";s:5:\"es_EC\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2023-02-13 17:54:51\";s:12:\"english_name\";s:17:\"Spanish (Ecuador)\";s:11:\"native_name\";s:19:\"Español de Ecuador\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/es_EC.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2023-03-03 04:18:58\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_DO\";a:8:{s:8:\"language\";s:5:\"es_DO\";s:7:\"version\";s:5:\"5.8.6\";s:7:\"updated\";s:19:\"2021-10-08 14:32:50\";s:12:\"english_name\";s:28:\"Spanish (Dominican Republic)\";s:11:\"native_name\";s:33:\"Español de República Dominicana\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.6/es_DO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"5.8.6\";s:7:\"updated\";s:19:\"2021-10-04 20:53:18\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.6/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-06-14 16:02:22\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_UY\";a:8:{s:8:\"language\";s:5:\"es_UY\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-31 18:33:26\";s:12:\"english_name\";s:17:\"Spanish (Uruguay)\";s:11:\"native_name\";s:19:\"Español de Uruguay\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/es_UY.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PR\";a:8:{s:8:\"language\";s:5:\"es_PR\";s:7:\"version\";s:6:\"5.4.12\";s:7:\"updated\";s:19:\"2020-04-29 15:36:59\";s:12:\"english_name\";s:21:\"Spanish (Puerto Rico)\";s:11:\"native_name\";s:23:\"Español de Puerto Rico\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.4.12/es_PR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:6:\"5.2.17\";s:7:\"updated\";s:19:\"2019-03-02 06:35:01\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.2.17/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-07-22 14:08:10\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-11-10 19:19:07\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-12-16 13:13:32\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2020-08-12 08:38:59\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2023-02-25 16:37:05\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.1.1/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2023-02-25 09:13:10\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"fa_AF\";a:8:{s:8:\"language\";s:5:\"fa_AF\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2023-02-19 17:10:42\";s:12:\"english_name\";s:21:\"Persian (Afghanistan)\";s:11:\"native_name\";s:31:\"(فارسی (افغانستان\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/fa_AF.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-12-07 05:25:25\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.1.1/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2023-03-07 20:28:50\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2023-03-03 21:31:57\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-02-22 13:54:46\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:6:\"4.8.21\";s:7:\"updated\";s:19:\"2018-01-29 17:32:35\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.21/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"fy\";a:8:{s:8:\"language\";s:2:\"fy\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-12-25 12:53:23\";s:12:\"english_name\";s:7:\"Frisian\";s:11:\"native_name\";s:5:\"Frysk\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.1.1/fy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fy\";i:2;s:3:\"fry\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Trochgean\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2023-03-03 11:38:42\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:6:\"4.9.22\";s:7:\"updated\";s:19:\"2018-09-14 12:33:48\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.22/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"ચાલુ રાખવું\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:6:\"4.4.29\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.4.29/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2023-02-27 14:23:57\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:6:\"5.4.12\";s:7:\"updated\";s:19:\"2020-11-06 12:34:38\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.4.12/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"जारी रखें\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2023-02-06 12:29:04\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.1.1/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:3:\"hsb\";a:8:{s:8:\"language\";s:3:\"hsb\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-07-18 19:40:10\";s:12:\"english_name\";s:13:\"Upper Sorbian\";s:11:\"native_name\";s:17:\"Hornjoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.1.1/hsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"hsb\";i:3;s:3:\"hsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:4:\"Dale\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2023-02-28 13:53:25\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2023-03-03 08:44:20\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.9.22\";s:7:\"updated\";s:19:\"2018-12-11 10:40:02\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.22/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2023-03-12 20:02:23\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2023-01-06 07:11:58\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.1.1/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"次へ\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:6:\"4.9.22\";s:7:\"updated\";s:19:\"2019-02-16 23:58:56\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.22/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Nerusaké\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"6.0.3\";s:7:\"updated\";s:19:\"2022-10-24 08:01:09\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.0.3/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2023-01-21 21:13:06\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.1.1/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Kemmel\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:6:\"4.9.22\";s:7:\"updated\";s:19:\"2018-07-10 11:35:44\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.22/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:6:\"5.2.17\";s:7:\"updated\";s:19:\"2019-06-10 16:18:28\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.2.17/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:2:\"kn\";a:8:{s:8:\"language\";s:2:\"kn\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-10-20 17:15:28\";s:12:\"english_name\";s:7:\"Kannada\";s:11:\"native_name\";s:15:\"ಕನ್ನಡ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.1.1/kn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kn\";i:2;s:3:\"kan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"ಮುಂದುವರಿಸು\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-12-21 23:01:12\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"5.8.6\";s:7:\"updated\";s:19:\"2021-12-07 16:32:30\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.8.6/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"ຕໍ່​ໄປ\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-11-24 03:51:58\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2023-03-03 00:36:37\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.1.1/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"6.0.3\";s:7:\"updated\";s:19:\"2022-10-01 09:23:52\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.0.3/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2023-01-02 15:24:05\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.1.1/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:6:\"4.9.22\";s:7:\"updated\";s:19:\"2019-11-22 15:32:08\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.22/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:6:\"5.5.11\";s:7:\"updated\";s:19:\"2022-03-11 13:52:22\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.5.11/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.2.34\";s:7:\"updated\";s:19:\"2017-12-26 11:57:10\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.34/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2023-03-09 10:03:46\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2023-02-25 10:09:15\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:43:\"जारी राख्नुहोस्\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-12-05 12:28:58\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/6.1.1/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2023-03-06 13:27:56\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2023-01-26 10:11:03\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-18 10:59:16\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:6:\"4.8.21\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.21/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:15:\"Panjabi (India)\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2023-02-21 19:04:45\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.3.30\";s:7:\"updated\";s:19:\"2015-12-02 21:41:29\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.3.30/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-08-09 12:26:21\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/6.1.1/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_AO\";a:8:{s:8:\"language\";s:5:\"pt_AO\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-10-01 12:16:29\";s:12:\"english_name\";s:19:\"Portuguese (Angola)\";s:11:\"native_name\";s:20:\"Português de Angola\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/pt_AO.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2023-03-08 12:44:25\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2023-02-28 17:30:24\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2023-03-07 12:03:46\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2023-02-27 14:35:22\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:3:\"snd\";a:8:{s:8:\"language\";s:3:\"snd\";s:7:\"version\";s:6:\"5.4.12\";s:7:\"updated\";s:19:\"2020-07-07 01:53:37\";s:12:\"english_name\";s:6:\"Sindhi\";s:11:\"native_name\";s:8:\"سنڌي\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/5.4.12/snd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"sd\";i:2;s:3:\"snd\";i:3;s:3:\"snd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"اڳتي هلو\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2023-01-20 04:27:59\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:3:\"skr\";a:8:{s:8:\"language\";s:3:\"skr\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2023-02-16 15:38:21\";s:12:\"english_name\";s:7:\"Saraiki\";s:11:\"native_name\";s:14:\"سرائیکی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.1.1/skr.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"skr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"جاری رکھو\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-11-11 12:48:55\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2023-03-11 14:39:54\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.1.1/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"5.8.6\";s:7:\"updated\";s:19:\"2021-08-01 21:21:06\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.6/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2023-02-21 12:06:05\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:2:\"sw\";a:8:{s:8:\"language\";s:2:\"sw\";s:7:\"version\";s:6:\"5.3.14\";s:7:\"updated\";s:19:\"2019-10-13 15:35:35\";s:12:\"english_name\";s:7:\"Swahili\";s:11:\"native_name\";s:9:\"Kiswahili\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.3.14/sw.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sw\";i:2;s:3:\"swa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Endelea\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:5:\"ta_LK\";a:8:{s:8:\"language\";s:5:\"ta_LK\";s:7:\"version\";s:6:\"4.2.34\";s:7:\"updated\";s:19:\"2015-12-03 01:07:44\";s:12:\"english_name\";s:17:\"Tamil (Sri Lanka)\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.34/ta_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"தொடர்க\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"5.8.6\";s:7:\"updated\";s:19:\"2022-06-08 04:30:30\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.6/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:6:\"4.8.21\";s:7:\"updated\";s:19:\"2017-09-30 09:04:29\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.21/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2023-02-28 14:43:36\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:6:\"4.9.22\";s:7:\"updated\";s:19:\"2021-07-03 18:41:33\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.22/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2023-03-04 10:46:30\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.1.1/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:6:\"5.4.12\";s:7:\"updated\";s:19:\"2020-04-09 11:17:33\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4.12/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-02-28 12:02:22\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Davom etish\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2023-02-12 07:49:12\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.1.1/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-07-15 15:25:03\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:12:\"香港中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2023-03-13 05:10:41\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-12-18 06:20:30\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(270, '_site_transient_timeout_theme_roots', '1678706790', 'no'),
(271, '_site_transient_theme_roots', 'a:4:{s:9:\"metrocity\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'no'),
(273, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-6.1.1.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-6.1.1.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.1.1\";s:7:\"version\";s:5:\"6.1.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1678704992;s:15:\"version_checked\";s:5:\"6.1.1\";s:12:\"translations\";a:0:{}}', 'no'),
(274, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1678704993;s:7:\"checked\";a:4:{s:9:\"metrocity\";s:0:\"\";s:15:\"twentytwentyone\";s:3:\"1.7\";s:17:\"twentytwentythree\";s:3:\"1.0\";s:15:\"twentytwentytwo\";s:3:\"1.3\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.7.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.0\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.0.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.3.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:15:\"twentytwentytwo\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:3:\"1.3\";s:7:\"updated\";s:19:\"2023-03-02 09:32:08\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/theme/twentytwentytwo/1.3/ru_RU.zip\";s:10:\"autoupdate\";b:1;}}}', 'no'),
(275, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1678704993;s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"5.0.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.5.0.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";s:6:\"tested\";s:5:\"6.1.1\";s:12:\"requires_php\";s:3:\"5.2\";}}s:12:\"translations\";a:4:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:14:\"classic-editor\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"1.6.2\";s:7:\"updated\";s:19:\"2021-08-08 08:05:06\";s:7:\"package\";s:81:\"https://downloads.wordpress.org/translation/plugin/classic-editor/1.6.2/ru_RU.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"cyr2lat\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"5.4.0\";s:7:\"updated\";s:19:\"2021-07-29 11:03:49\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/translation/plugin/cyr2lat/5.4.0/ru_RU.zip\";s:10:\"autoupdate\";b:1;}i:2;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:14:\"duplicate-page\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"4.5.1\";s:7:\"updated\";s:19:\"2021-12-08 13:04:12\";s:7:\"package\";s:81:\"https://downloads.wordpress.org/translation/plugin/duplicate-page/4.5.1/ru_RU.zip\";s:10:\"autoupdate\";b:1;}i:3;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:11:\"hello-dolly\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"1.7.2\";s:7:\"updated\";s:19:\"2018-06-04 21:57:16\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/plugin/hello-dolly/1.7.2/ru_RU.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:4:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:22:\"cyr2lat/cyr-to-lat.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/cyr2lat\";s:4:\"slug\";s:7:\"cyr2lat\";s:6:\"plugin\";s:22:\"cyr2lat/cyr-to-lat.php\";s:11:\"new_version\";s:5:\"5.4.0\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/cyr2lat/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/cyr2lat.5.4.0.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:60:\"https://ps.w.org/cyr2lat/assets/icon-256x256.jpg?rev=2434252\";s:2:\"1x\";s:52:\"https://ps.w.org/cyr2lat/assets/icon.svg?rev=2834364\";s:3:\"svg\";s:52:\"https://ps.w.org/cyr2lat/assets/icon.svg?rev=2834364\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/cyr2lat/assets/banner-1544x500.png?rev=2434252\";s:2:\"1x\";s:62:\"https://ps.w.org/cyr2lat/assets/banner-772x250.png?rev=2434252\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.1\";}s:32:\"duplicate-page/duplicatepage.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/duplicate-page\";s:4:\"slug\";s:14:\"duplicate-page\";s:6:\"plugin\";s:32:\"duplicate-page/duplicatepage.php\";s:11:\"new_version\";s:5:\"4.5.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/duplicate-page/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/duplicate-page.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:67:\"https://ps.w.org/duplicate-page/assets/icon-128x128.jpg?rev=1412874\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:69:\"https://ps.w.org/duplicate-page/assets/banner-772x250.jpg?rev=1410328\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.4\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:6:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"6.0.7\";s:19:\"akismet/akismet.php\";s:5:\"5.0.1\";s:33:\"classic-editor/classic-editor.php\";s:5:\"1.6.2\";s:22:\"cyr2lat/cyr-to-lat.php\";s:5:\"5.4.0\";s:32:\"duplicate-page/duplicatepage.php\";s:5:\"4.5.1\";s:9:\"hello.php\";s:5:\"1.7.2\";}}', 'no'),
(545, '_transient_timeout_global_styles_metrocity', '1678738094', 'no'),
(546, '_transient_global_styles_metrocity', 'body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url(\'#wp-duotone-dark-grayscale\');--wp--preset--duotone--grayscale: url(\'#wp-duotone-grayscale\');--wp--preset--duotone--purple-yellow: url(\'#wp-duotone-purple-yellow\');--wp--preset--duotone--blue-red: url(\'#wp-duotone-blue-red\');--wp--preset--duotone--midnight: url(\'#wp-duotone-midnight\');--wp--preset--duotone--magenta-yellow: url(\'#wp-duotone-magenta-yellow\');--wp--preset--duotone--purple-green: url(\'#wp-duotone-purple-green\');--wp--preset--duotone--blue-orange: url(\'#wp-duotone-blue-orange\');--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;--wp--preset--spacing--20: 0.44rem;--wp--preset--spacing--30: 0.67rem;--wp--preset--spacing--40: 1rem;--wp--preset--spacing--50: 1.5rem;--wp--preset--spacing--60: 2.25rem;--wp--preset--spacing--70: 3.38rem;--wp--preset--spacing--80: 5.06rem;}:where(.is-layout-flex){gap: 0.5em;}body .is-layout-flow > .alignleft{float: left;margin-inline-start: 0;margin-inline-end: 2em;}body .is-layout-flow > .alignright{float: right;margin-inline-start: 2em;margin-inline-end: 0;}body .is-layout-flow > .aligncenter{margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > .alignleft{float: left;margin-inline-start: 0;margin-inline-end: 2em;}body .is-layout-constrained > .alignright{float: right;margin-inline-start: 2em;margin-inline-end: 0;}body .is-layout-constrained > .aligncenter{margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > :where(:not(.alignleft):not(.alignright):not(.alignfull)){max-width: var(--wp--style--global--content-size);margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > .alignwide{max-width: var(--wp--style--global--wide-size);}body .is-layout-flex{display: flex;}body .is-layout-flex{flex-wrap: wrap;align-items: center;}body .is-layout-flex > *{margin: 0;}:where(.wp-block-columns.is-layout-flex){gap: 2em;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 6, '_edit_last', '1'),
(4, 6, '_edit_lock', '1678709225:1'),
(7, 9, '_edit_last', '1'),
(8, 9, '_edit_lock', '1678733621:1'),
(9, 11, '_wp_attached_file', '2023/03/building.jpg'),
(10, 11, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:270;s:6:\"height\";i:250;s:4:\"file\";s:20:\"2023/03/building.jpg\";s:8:\"filesize\";i:79927;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"building-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5975;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(11, 6, '_thumbnail_id', '11'),
(12, 12, '_edit_last', '1'),
(13, 12, '_edit_lock', '1678649962:1'),
(14, 12, '_thumbnail_id', '11'),
(15, 13, '_edit_last', '1'),
(16, 13, '_edit_lock', '1678644769:1'),
(17, 13, '_thumbnail_id', '11'),
(18, 14, '_edit_last', '1'),
(19, 14, '_edit_lock', '1678649968:1'),
(20, 14, '_thumbnail_id', '11'),
(21, 13, '_wp_trash_meta_status', 'draft'),
(22, 13, '_wp_trash_meta_time', '1678645187'),
(23, 13, '_wp_desired_post_slug', ''),
(24, 12, '_wp_page_template', 'single.php'),
(25, 12, '_wp_old_slug', '%d1%82%d0%b5%d1%81%d1%82%d0%be%d0%b2%d1%8b%d0%b9-%d0%b6%d0%ba-2'),
(26, 6, '_wp_page_template', 'single.php'),
(27, 6, '_wp_old_slug', '%d1%82%d0%b5%d1%81%d1%82%d0%be%d0%b2%d1%8b%d0%b9-%d0%b6%d0%ba'),
(28, 14, '_wp_page_template', 'single.php'),
(29, 14, '_wp_old_slug', '%d1%82%d0%b5%d1%81%d1%82%d0%be%d0%b2%d1%8b%d0%b9-%d0%b6%d0%ba-1'),
(30, 2, '_edit_last', '1'),
(31, 2, '_edit_lock', '1678696656:1'),
(32, 17, '_edit_last', '1'),
(33, 17, '_edit_lock', '1678690072:1'),
(34, 17, '_wp_page_template', 'single.php'),
(35, 17, '_thumbnail_id', '11'),
(36, 19, '_edit_last', '1'),
(37, 19, '_edit_lock', '1678649496:1'),
(40, 19, '_', 'field_640e113c94453'),
(41, 21, '_edit_last', '1'),
(42, 21, '_edit_lock', '1678690075:1'),
(43, 6, 'full_img', '23'),
(44, 6, '_full_img', 'field_640ec628e4db0'),
(45, 23, '_wp_attached_file', '2023/03/image.jpg'),
(46, 23, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:870;s:6:\"height\";i:400;s:4:\"file\";s:17:\"2023/03/image.jpg\";s:8:\"filesize\";i:372853;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:17:\"image-300x138.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:138;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13341;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"image-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7507;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:17:\"image-768x353.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:353;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:63771;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(47, 6, 'class', 'comfort'),
(48, 6, '_class', 'field_640e113c94453'),
(49, 6, 'konstruktiv', 'Монолит-кирпич'),
(50, 6, '_konstruktiv', 'field_640ecd4e35117'),
(51, 6, 'otdelka', 'Чистовая'),
(52, 6, '_otdelka', 'field_640ecdca35118'),
(53, 6, 'potolok', '2.5'),
(54, 6, '_potolok', 'field_640ecde735119'),
(55, 6, 'parking', '1'),
(56, 6, '_parking', 'field_640ece1ca20cf'),
(57, 6, 'floor_min', '10'),
(58, 6, '_floor_min', 'field_640eced5c0d5e'),
(59, 6, 'floor_max', '17'),
(60, 6, '_floor_max', 'field_640ed0120c44c'),
(61, 6, 'price_group', 'mid_up'),
(62, 6, '_price_group', 'field_640ed04beb0d5'),
(63, 6, 'deadline_kvartal', '1'),
(64, 6, '_deadline_kvartal', 'field_640edb416b62b'),
(65, 6, 'deadline_year', '2023'),
(66, 6, '_deadline_year', 'field_640edbae9bb90'),
(67, 6, 'deadline', ''),
(68, 6, '_deadline', 'field_640ed21f6b62a'),
(69, 6, 'zero', '1'),
(70, 6, '_zero', 'field_640ee84db5e6b'),
(71, 6, 'raiting', '8.8'),
(72, 6, '_raiting', 'field_640eeca2dfcc2'),
(73, 6, 'deadline_quarter', '2'),
(74, 6, '_deadline_quarter', 'field_640edb416b62b'),
(75, 38, '_edit_last', '1'),
(76, 38, '_edit_lock', '1678713521:1'),
(77, 6, 'metro', '3'),
(78, 6, '_metro', 'field_640f03a49dbdc'),
(79, 6, 'adress_adress1', 'Новосибирск, Гоголя 15'),
(80, 6, '_adress_adress1', 'field_640f052a8a199'),
(81, 6, 'adress_map', ''),
(82, 6, '_adress_map', 'field_640f05368a19a'),
(83, 6, 'adress', ''),
(84, 6, '_adress', 'field_640f05148a198'),
(85, 6, 'metro_0_branch', 'green'),
(86, 6, '_metro_0_branch', 'field_640f03b69dbdd'),
(87, 6, 'metro_0_staition', 'Студенческая'),
(88, 6, '_metro_0_staition', 'field_640f03f09dbde'),
(89, 6, 'metro_0_minutes', '6'),
(90, 6, '_metro_0_minutes', 'field_640f040c9dbdf'),
(91, 6, 'metro_1_branch', 'red'),
(92, 6, '_metro_1_branch', 'field_640f03b69dbdd'),
(93, 6, 'metro_1_staition', 'Станция'),
(94, 6, '_metro_1_staition', 'field_640f03f09dbde'),
(95, 6, 'metro_1_minutes', '20'),
(96, 6, '_metro_1_minutes', 'field_640f040c9dbdf'),
(97, 6, 'metro_2_branch', 'green'),
(98, 6, '_metro_2_branch', 'field_640f03b69dbdd'),
(99, 6, 'metro_2_staition', 'Третья'),
(100, 6, '_metro_2_staition', 'field_640f03f09dbde'),
(101, 6, 'metro_2_minutes', '40'),
(102, 6, '_metro_2_minutes', 'field_640f040c9dbdf'),
(103, 17, '_wp_trash_meta_status', 'publish'),
(104, 17, '_wp_trash_meta_time', '1678709373'),
(105, 17, '_wp_desired_post_slug', 'sdfsdfsdfs'),
(106, 12, '_wp_trash_meta_status', 'publish'),
(107, 12, '_wp_trash_meta_time', '1678709379'),
(108, 12, '_wp_desired_post_slug', 'testovyj-zhk-2'),
(109, 14, '_wp_trash_meta_status', 'publish'),
(110, 14, '_wp_trash_meta_time', '1678709379'),
(111, 14, '_wp_desired_post_slug', 'testovyj-zhk-1'),
(112, 46, '_edit_last', '1'),
(113, 46, '_edit_lock', '1678709499:1'),
(114, 46, '_thumbnail_id', '11'),
(115, 46, '_wp_page_template', 'single.php'),
(116, 46, '_wp_old_slug', '%d1%82%d0%b5%d1%81%d1%82%d0%be%d0%b2%d1%8b%d0%b9-%d0%b6%d0%ba'),
(117, 46, 'full_img', '23'),
(118, 46, '_full_img', 'field_640ec628e4db0'),
(119, 46, 'class', 'econom'),
(120, 46, '_class', 'field_640e113c94453'),
(121, 46, 'konstruktiv', 'Монолит-кирпич'),
(122, 46, '_konstruktiv', 'field_640ecd4e35117'),
(123, 46, 'otdelka', 'Чистовая'),
(124, 46, '_otdelka', 'field_640ecdca35118'),
(125, 46, 'potolok', '2.5'),
(126, 46, '_potolok', 'field_640ecde735119'),
(127, 46, 'parking', '1'),
(128, 46, '_parking', 'field_640ece1ca20cf'),
(129, 46, 'floor_min', '10'),
(130, 46, '_floor_min', 'field_640eced5c0d5e'),
(131, 46, 'floor_max', '17'),
(132, 46, '_floor_max', 'field_640ed0120c44c'),
(133, 46, 'price_group', 'mid_up'),
(134, 46, '_price_group', 'field_640ed04beb0d5'),
(135, 46, 'deadline_kvartal', '1'),
(136, 46, '_deadline_kvartal', 'field_640edb416b62b'),
(137, 46, 'deadline_year', '2023'),
(138, 46, '_deadline_year', 'field_640edbae9bb90'),
(139, 46, 'deadline', ''),
(140, 46, '_deadline', 'field_640ed21f6b62a'),
(141, 46, 'zero', '0'),
(142, 46, '_zero', 'field_640ee84db5e6b'),
(143, 46, 'raiting', '8.8'),
(144, 46, '_raiting', 'field_640eeca2dfcc2'),
(145, 46, 'deadline_quarter', '2'),
(146, 46, '_deadline_quarter', 'field_640edb416b62b'),
(147, 46, 'metro', '1'),
(148, 46, '_metro', 'field_640f03a49dbdc'),
(149, 46, 'adress_adress1', 'Новосибирск, Гоголя 15'),
(150, 46, '_adress_adress1', 'field_640f052a8a199'),
(151, 46, 'adress_map', ''),
(152, 46, '_adress_map', 'field_640f05368a19a'),
(153, 46, 'adress', ''),
(154, 46, '_adress', 'field_640f05148a198'),
(155, 46, 'metro_0_branch', 'red'),
(156, 46, '_metro_0_branch', 'field_640f03b69dbdd'),
(157, 46, 'metro_0_staition', 'Студенческая'),
(158, 46, '_metro_0_staition', 'field_640f03f09dbde'),
(159, 46, 'metro_0_minutes', '20'),
(160, 46, '_metro_0_minutes', 'field_640f040c9dbdf'),
(173, 47, '_edit_last', '1'),
(174, 47, '_edit_lock', '1678709712:1'),
(175, 47, '_thumbnail_id', '11'),
(176, 47, '_wp_page_template', 'single.php'),
(177, 47, '_wp_old_slug', '%d1%82%d0%b5%d1%81%d1%82%d0%be%d0%b2%d1%8b%d0%b9-%d0%b6%d0%ba'),
(178, 47, 'full_img', '23'),
(179, 47, '_full_img', 'field_640ec628e4db0'),
(180, 47, 'class', 'comfort'),
(181, 47, '_class', 'field_640e113c94453'),
(182, 47, 'konstruktiv', 'Монолит-кирпич'),
(183, 47, '_konstruktiv', 'field_640ecd4e35117'),
(184, 47, 'otdelka', 'Чистовая'),
(185, 47, '_otdelka', 'field_640ecdca35118'),
(186, 47, 'potolok', '2.5'),
(187, 47, '_potolok', 'field_640ecde735119'),
(188, 47, 'parking', '1'),
(189, 47, '_parking', 'field_640ece1ca20cf'),
(190, 47, 'floor_min', '10'),
(191, 47, '_floor_min', 'field_640eced5c0d5e'),
(192, 47, 'floor_max', '17'),
(193, 47, '_floor_max', 'field_640ed0120c44c'),
(194, 47, 'price_group', 'mid_up'),
(195, 47, '_price_group', 'field_640ed04beb0d5'),
(196, 47, 'deadline_kvartal', '1'),
(197, 47, '_deadline_kvartal', 'field_640edb416b62b'),
(198, 47, 'deadline_year', '2023'),
(199, 47, '_deadline_year', 'field_640edbae9bb90'),
(200, 47, 'deadline', ''),
(201, 47, '_deadline', 'field_640ed21f6b62a'),
(202, 47, 'zero', '0'),
(203, 47, '_zero', 'field_640ee84db5e6b'),
(204, 47, 'raiting', '8.8'),
(205, 47, '_raiting', 'field_640eeca2dfcc2'),
(206, 47, 'deadline_quarter', '2'),
(207, 47, '_deadline_quarter', 'field_640edb416b62b'),
(208, 47, 'metro', '2'),
(209, 47, '_metro', 'field_640f03a49dbdc'),
(210, 47, 'adress_adress1', 'Новосибирск, Гоголя 15'),
(211, 47, '_adress_adress1', 'field_640f052a8a199'),
(212, 47, 'adress_map', ''),
(213, 47, '_adress_map', 'field_640f05368a19a'),
(214, 47, 'adress', ''),
(215, 47, '_adress', 'field_640f05148a198'),
(216, 47, 'metro_0_branch', 'green'),
(217, 47, '_metro_0_branch', 'field_640f03b69dbdd'),
(218, 47, 'metro_0_staition', 'Студенческая'),
(219, 47, '_metro_0_staition', 'field_640f03f09dbde'),
(220, 47, 'metro_0_minutes', '5'),
(221, 47, '_metro_0_minutes', 'field_640f040c9dbdf'),
(222, 47, 'metro_1_branch', 'red'),
(223, 47, '_metro_1_branch', 'field_640f03b69dbdd'),
(224, 47, 'metro_1_staition', 'Другая'),
(225, 47, '_metro_1_staition', 'field_640f03f09dbde'),
(226, 47, 'metro_1_minutes', '18'),
(227, 47, '_metro_1_minutes', 'field_640f040c9dbdf'),
(234, 48, '_edit_last', '1'),
(235, 48, '_edit_lock', '1678724155:1'),
(236, 48, '_thumbnail_id', '11'),
(237, 48, '_wp_page_template', 'single.php'),
(238, 48, '_wp_old_slug', '%d1%82%d0%b5%d1%81%d1%82%d0%be%d0%b2%d1%8b%d0%b9-%d0%b6%d0%ba'),
(239, 48, 'full_img', '23'),
(240, 48, '_full_img', 'field_640ec628e4db0'),
(241, 48, 'class', 'econom'),
(242, 48, '_class', 'field_640e113c94453'),
(243, 48, 'konstruktiv', 'Монолит-кирпич'),
(244, 48, '_konstruktiv', 'field_640ecd4e35117'),
(245, 48, 'otdelka', 'Чистовая'),
(246, 48, '_otdelka', 'field_640ecdca35118'),
(247, 48, 'potolok', '2.5'),
(248, 48, '_potolok', 'field_640ecde735119'),
(249, 48, 'parking', '1'),
(250, 48, '_parking', 'field_640ece1ca20cf'),
(251, 48, 'floor_min', '10'),
(252, 48, '_floor_min', 'field_640eced5c0d5e'),
(253, 48, 'floor_max', '17'),
(254, 48, '_floor_max', 'field_640ed0120c44c'),
(255, 48, 'price_group', 'mid_up'),
(256, 48, '_price_group', 'field_640ed04beb0d5'),
(257, 48, 'deadline_kvartal', '1'),
(258, 48, '_deadline_kvartal', 'field_640edb416b62b'),
(259, 48, 'deadline_year', '2024'),
(260, 48, '_deadline_year', 'field_640edbae9bb90'),
(261, 48, 'deadline', ''),
(262, 48, '_deadline', 'field_640ed21f6b62a'),
(263, 48, 'zero', '1'),
(264, 48, '_zero', 'field_640ee84db5e6b'),
(265, 48, 'raiting', '8.8'),
(266, 48, '_raiting', 'field_640eeca2dfcc2'),
(267, 48, 'deadline_quarter', '2'),
(268, 48, '_deadline_quarter', 'field_640edb416b62b'),
(269, 48, 'metro', '1'),
(270, 48, '_metro', 'field_640f03a49dbdc'),
(271, 48, 'adress_adress1', 'Новосибирск, Гоголя 15'),
(272, 48, '_adress_adress1', 'field_640f052a8a199'),
(273, 48, 'adress_map', ''),
(274, 48, '_adress_map', 'field_640f05368a19a'),
(275, 48, 'adress', ''),
(276, 48, '_adress', 'field_640f05148a198'),
(277, 48, 'metro_0_branch', 'red'),
(278, 48, '_metro_0_branch', 'field_640f03b69dbdd'),
(279, 48, 'metro_0_staition', 'Курская'),
(280, 48, '_metro_0_staition', 'field_640f03f09dbde'),
(281, 48, 'metro_0_minutes', '16'),
(282, 48, '_metro_0_minutes', 'field_640f040c9dbdf'),
(283, 50, '_edit_last', '1'),
(284, 50, '_edit_lock', '1678724857:1'),
(285, 50, '_thumbnail_id', '11'),
(286, 50, '_wp_page_template', 'single.php'),
(287, 50, '_wp_old_slug', '%d1%82%d0%b5%d1%81%d1%82%d0%be%d0%b2%d1%8b%d0%b9-%d0%b6%d0%ba'),
(288, 50, 'full_img', '23'),
(289, 50, '_full_img', 'field_640ec628e4db0'),
(290, 50, 'class', 'business'),
(291, 50, '_class', 'field_640e113c94453'),
(292, 50, 'konstruktiv', 'Монолит-кирпич'),
(293, 50, '_konstruktiv', 'field_640ecd4e35117'),
(294, 50, 'otdelka', 'Чистовая'),
(295, 50, '_otdelka', 'field_640ecdca35118'),
(296, 50, 'potolok', '5'),
(297, 50, '_potolok', 'field_640ecde735119'),
(298, 50, 'parking', '1'),
(299, 50, '_parking', 'field_640ece1ca20cf'),
(300, 50, 'floor_min', '10'),
(301, 50, '_floor_min', 'field_640eced5c0d5e'),
(302, 50, 'floor_max', '20'),
(303, 50, '_floor_max', 'field_640ed0120c44c'),
(304, 50, 'price_group', 'med'),
(305, 50, '_price_group', 'field_640ed04beb0d5'),
(306, 50, 'deadline_kvartal', '1'),
(307, 50, '_deadline_kvartal', 'field_640edb416b62b'),
(308, 50, 'deadline_year', '2025'),
(309, 50, '_deadline_year', 'field_640edbae9bb90'),
(310, 50, 'deadline', ''),
(311, 50, '_deadline', 'field_640ed21f6b62a'),
(312, 50, 'zero', '1'),
(313, 50, '_zero', 'field_640ee84db5e6b'),
(314, 50, 'raiting', '9'),
(315, 50, '_raiting', 'field_640eeca2dfcc2'),
(316, 50, 'deadline_quarter', '4'),
(317, 50, '_deadline_quarter', 'field_640edb416b62b'),
(318, 50, 'metro', '1'),
(319, 50, '_metro', 'field_640f03a49dbdc'),
(320, 50, 'adress_adress1', 'Новосибирск, Гоголя 15'),
(321, 50, '_adress_adress1', 'field_640f052a8a199'),
(322, 50, 'adress_map', ''),
(323, 50, '_adress_map', 'field_640f05368a19a'),
(324, 50, 'adress', ''),
(325, 50, '_adress', 'field_640f05148a198'),
(326, 50, 'metro_0_branch', 'red'),
(327, 50, '_metro_0_branch', 'field_640f03b69dbdd'),
(328, 50, 'metro_0_staition', 'Студенческая'),
(329, 50, '_metro_0_staition', 'field_640f03f09dbde'),
(330, 50, 'metro_0_minutes', '30'),
(331, 50, '_metro_0_minutes', 'field_640f040c9dbdf'),
(338, 51, '_edit_last', '1'),
(339, 51, '_edit_lock', '1678724914:1'),
(340, 51, '_thumbnail_id', '11'),
(341, 51, '_wp_page_template', 'single.php'),
(342, 51, '_wp_old_slug', '%d1%82%d0%b5%d1%81%d1%82%d0%be%d0%b2%d1%8b%d0%b9-%d0%b6%d0%ba'),
(343, 51, 'full_img', '23'),
(344, 51, '_full_img', 'field_640ec628e4db0'),
(345, 51, 'class', 'comfort'),
(346, 51, '_class', 'field_640e113c94453'),
(347, 51, 'konstruktiv', 'Монолит-кирпич'),
(348, 51, '_konstruktiv', 'field_640ecd4e35117'),
(349, 51, 'otdelka', 'Чистовая'),
(350, 51, '_otdelka', 'field_640ecdca35118'),
(351, 51, 'potolok', '3'),
(352, 51, '_potolok', 'field_640ecde735119'),
(353, 51, 'parking', '1'),
(354, 51, '_parking', 'field_640ece1ca20cf'),
(355, 51, 'floor_min', '8'),
(356, 51, '_floor_min', 'field_640eced5c0d5e'),
(357, 51, 'floor_max', '17'),
(358, 51, '_floor_max', 'field_640ed0120c44c'),
(359, 51, 'price_group', 'mid_up'),
(360, 51, '_price_group', 'field_640ed04beb0d5'),
(361, 51, 'deadline_kvartal', '1'),
(362, 51, '_deadline_kvartal', 'field_640edb416b62b'),
(363, 51, 'deadline_year', '2024'),
(364, 51, '_deadline_year', 'field_640edbae9bb90'),
(365, 51, 'deadline', ''),
(366, 51, '_deadline', 'field_640ed21f6b62a'),
(367, 51, 'zero', '1'),
(368, 51, '_zero', 'field_640ee84db5e6b'),
(369, 51, 'raiting', '8.8'),
(370, 51, '_raiting', 'field_640eeca2dfcc2'),
(371, 51, 'deadline_quarter', '2'),
(372, 51, '_deadline_quarter', 'field_640edb416b62b'),
(373, 51, 'metro', '1'),
(374, 51, '_metro', 'field_640f03a49dbdc'),
(375, 51, 'adress_adress1', 'Новосибирск, Гоголя 15'),
(376, 51, '_adress_adress1', 'field_640f052a8a199'),
(377, 51, 'adress_map', ''),
(378, 51, '_adress_map', 'field_640f05368a19a'),
(379, 51, 'adress', ''),
(380, 51, '_adress', 'field_640f05148a198'),
(381, 51, 'metro_0_branch', 'green'),
(382, 51, '_metro_0_branch', 'field_640f03b69dbdd'),
(383, 51, 'metro_0_staition', 'Конечная'),
(384, 51, '_metro_0_staition', 'field_640f03f09dbde'),
(385, 51, 'metro_0_minutes', '25'),
(386, 51, '_metro_0_minutes', 'field_640f040c9dbdf'),
(393, 52, '_edit_last', '1'),
(394, 52, '_edit_lock', '1678724983:1'),
(395, 52, '_thumbnail_id', '11'),
(396, 52, '_wp_page_template', 'single.php'),
(397, 52, '_wp_old_slug', '%d1%82%d0%b5%d1%81%d1%82%d0%be%d0%b2%d1%8b%d0%b9-%d0%b6%d0%ba'),
(398, 52, 'full_img', '23'),
(399, 52, '_full_img', 'field_640ec628e4db0'),
(400, 52, 'class', 'comfort'),
(401, 52, '_class', 'field_640e113c94453'),
(402, 52, 'konstruktiv', 'Деревянный'),
(403, 52, '_konstruktiv', 'field_640ecd4e35117'),
(404, 52, 'otdelka', 'Чистовая'),
(405, 52, '_otdelka', 'field_640ecdca35118'),
(406, 52, 'potolok', '2.5'),
(407, 52, '_potolok', 'field_640ecde735119'),
(408, 52, 'parking', '1'),
(409, 52, '_parking', 'field_640ece1ca20cf'),
(410, 52, 'floor_min', '10'),
(411, 52, '_floor_min', 'field_640eced5c0d5e'),
(412, 52, 'floor_max', '17'),
(413, 52, '_floor_max', 'field_640ed0120c44c'),
(414, 52, 'price_group', 'mid_up'),
(415, 52, '_price_group', 'field_640ed04beb0d5'),
(416, 52, 'deadline_kvartal', '1'),
(417, 52, '_deadline_kvartal', 'field_640edb416b62b'),
(418, 52, 'deadline_year', '2022'),
(419, 52, '_deadline_year', 'field_640edbae9bb90'),
(420, 52, 'deadline', ''),
(421, 52, '_deadline', 'field_640ed21f6b62a'),
(422, 52, 'zero', '1'),
(423, 52, '_zero', 'field_640ee84db5e6b'),
(424, 52, 'raiting', '8.8'),
(425, 52, '_raiting', 'field_640eeca2dfcc2'),
(426, 52, 'deadline_quarter', '2'),
(427, 52, '_deadline_quarter', 'field_640edb416b62b'),
(428, 52, 'metro', '2'),
(429, 52, '_metro', 'field_640f03a49dbdc'),
(430, 52, 'adress_adress1', 'Новосибирск, Гоголя 15'),
(431, 52, '_adress_adress1', 'field_640f052a8a199'),
(432, 52, 'adress_map', ''),
(433, 52, '_adress_map', 'field_640f05368a19a'),
(434, 52, 'adress', ''),
(435, 52, '_adress', 'field_640f05148a198'),
(436, 52, 'metro_0_branch', 'green'),
(437, 52, '_metro_0_branch', 'field_640f03b69dbdd'),
(438, 52, 'metro_0_staition', 'Новая'),
(439, 52, '_metro_0_staition', 'field_640f03f09dbde'),
(440, 52, 'metro_0_minutes', '35'),
(441, 52, '_metro_0_minutes', 'field_640f040c9dbdf'),
(442, 52, 'metro_1_branch', 'red'),
(443, 52, '_metro_1_branch', 'field_640f03b69dbdd'),
(444, 52, 'metro_1_staition', 'Другая'),
(445, 52, '_metro_1_staition', 'field_640f03f09dbde'),
(446, 52, 'metro_1_minutes', '40'),
(447, 52, '_metro_1_minutes', 'field_640f040c9dbdf'),
(448, 53, '_edit_last', '1'),
(449, 53, '_edit_lock', '1678734023:1'),
(450, 53, '_thumbnail_id', '11'),
(451, 53, '_wp_page_template', 'single.php'),
(452, 53, '_wp_old_slug', '%d1%82%d0%b5%d1%81%d1%82%d0%be%d0%b2%d1%8b%d0%b9-%d0%b6%d0%ba'),
(453, 53, 'full_img', '23'),
(454, 53, '_full_img', 'field_640ec628e4db0'),
(455, 53, 'class', 'comfort'),
(456, 53, '_class', 'field_640e113c94453'),
(457, 53, 'konstruktiv', 'Деревянный'),
(458, 53, '_konstruktiv', 'field_640ecd4e35117'),
(459, 53, 'otdelka', 'Чистовая'),
(460, 53, '_otdelka', 'field_640ecdca35118'),
(461, 53, 'potolok', '2.5'),
(462, 53, '_potolok', 'field_640ecde735119'),
(463, 53, 'parking', '1'),
(464, 53, '_parking', 'field_640ece1ca20cf'),
(465, 53, 'floor_min', '10'),
(466, 53, '_floor_min', 'field_640eced5c0d5e'),
(467, 53, 'floor_max', '17'),
(468, 53, '_floor_max', 'field_640ed0120c44c'),
(469, 53, 'price_group', 'mid_up'),
(470, 53, '_price_group', 'field_640ed04beb0d5'),
(471, 53, 'deadline_kvartal', '1'),
(472, 53, '_deadline_kvartal', 'field_640edb416b62b'),
(473, 53, 'deadline_year', '2023'),
(474, 53, '_deadline_year', 'field_640edbae9bb90'),
(475, 53, 'deadline', ''),
(476, 53, '_deadline', 'field_640ed21f6b62a'),
(477, 53, 'zero', '0'),
(478, 53, '_zero', 'field_640ee84db5e6b'),
(479, 53, 'raiting', '8.8'),
(480, 53, '_raiting', 'field_640eeca2dfcc2'),
(481, 53, 'deadline_quarter', '2'),
(482, 53, '_deadline_quarter', 'field_640edb416b62b'),
(483, 53, 'metro', '1'),
(484, 53, '_metro', 'field_640f03a49dbdc'),
(485, 53, 'adress_adress1', 'Новосибирск, Гоголя 15'),
(486, 53, '_adress_adress1', 'field_640f052a8a199'),
(487, 53, 'adress_map', ''),
(488, 53, '_adress_map', 'field_640f05368a19a'),
(489, 53, 'adress', ''),
(490, 53, '_adress', 'field_640f05148a198'),
(491, 53, 'metro_0_branch', 'red'),
(492, 53, '_metro_0_branch', 'field_640f03b69dbdd'),
(493, 53, 'metro_0_staition', 'Армейская'),
(494, 53, '_metro_0_staition', 'field_640f03f09dbde'),
(495, 53, 'metro_0_minutes', '9'),
(496, 53, '_metro_0_minutes', 'field_640f040c9dbdf'),
(503, 54, '_edit_last', '1'),
(504, 54, '_edit_lock', '1678725056:1'),
(505, 54, '_thumbnail_id', '11'),
(506, 54, '_wp_page_template', 'single.php'),
(507, 54, '_wp_old_slug', '%d1%82%d0%b5%d1%81%d1%82%d0%be%d0%b2%d1%8b%d0%b9-%d0%b6%d0%ba'),
(508, 54, 'full_img', '23'),
(509, 54, '_full_img', 'field_640ec628e4db0'),
(510, 54, 'class', 'comfort'),
(511, 54, '_class', 'field_640e113c94453'),
(512, 54, 'konstruktiv', 'Монолит-кирпич'),
(513, 54, '_konstruktiv', 'field_640ecd4e35117'),
(514, 54, 'otdelka', 'Чистовая'),
(515, 54, '_otdelka', 'field_640ecdca35118'),
(516, 54, 'potolok', '2.5'),
(517, 54, '_potolok', 'field_640ecde735119'),
(518, 54, 'parking', '1'),
(519, 54, '_parking', 'field_640ece1ca20cf'),
(520, 54, 'floor_min', '10'),
(521, 54, '_floor_min', 'field_640eced5c0d5e'),
(522, 54, 'floor_max', '17'),
(523, 54, '_floor_max', 'field_640ed0120c44c'),
(524, 54, 'price_group', 'mid_up'),
(525, 54, '_price_group', 'field_640ed04beb0d5'),
(526, 54, 'deadline_kvartal', '1'),
(527, 54, '_deadline_kvartal', 'field_640edb416b62b'),
(528, 54, 'deadline_year', '2023'),
(529, 54, '_deadline_year', 'field_640edbae9bb90'),
(530, 54, 'deadline', ''),
(531, 54, '_deadline', 'field_640ed21f6b62a'),
(532, 54, 'zero', '0'),
(533, 54, '_zero', 'field_640ee84db5e6b'),
(534, 54, 'raiting', '8.8'),
(535, 54, '_raiting', 'field_640eeca2dfcc2'),
(536, 54, 'deadline_quarter', '2'),
(537, 54, '_deadline_quarter', 'field_640edb416b62b'),
(538, 54, 'metro', '3'),
(539, 54, '_metro', 'field_640f03a49dbdc'),
(540, 54, 'adress_adress1', 'Новосибирск, Гоголя 15'),
(541, 54, '_adress_adress1', 'field_640f052a8a199'),
(542, 54, 'adress_map', ''),
(543, 54, '_adress_map', 'field_640f05368a19a'),
(544, 54, 'adress', ''),
(545, 54, '_adress', 'field_640f05148a198'),
(546, 54, 'metro_0_branch', 'green'),
(547, 54, '_metro_0_branch', 'field_640f03b69dbdd'),
(548, 54, 'metro_0_staition', 'Студенческая'),
(549, 54, '_metro_0_staition', 'field_640f03f09dbde'),
(550, 54, 'metro_0_minutes', '5'),
(551, 54, '_metro_0_minutes', 'field_640f040c9dbdf'),
(552, 54, 'metro_1_branch', 'red'),
(553, 54, '_metro_1_branch', 'field_640f03b69dbdd'),
(554, 54, 'metro_1_staition', 'Другая'),
(555, 54, '_metro_1_staition', 'field_640f03f09dbde'),
(556, 54, 'metro_1_minutes', '18'),
(557, 54, '_metro_1_minutes', 'field_640f040c9dbdf'),
(558, 55, '_edit_last', '1'),
(559, 55, '_edit_lock', '1678725084:1'),
(560, 55, '_thumbnail_id', '11'),
(561, 55, '_wp_page_template', 'single.php'),
(562, 55, '_wp_old_slug', '%d1%82%d0%b5%d1%81%d1%82%d0%be%d0%b2%d1%8b%d0%b9-%d0%b6%d0%ba'),
(563, 55, 'full_img', '23'),
(564, 55, '_full_img', 'field_640ec628e4db0'),
(565, 55, 'class', 'comfort'),
(566, 55, '_class', 'field_640e113c94453'),
(567, 55, 'konstruktiv', 'Монолит-кирпич'),
(568, 55, '_konstruktiv', 'field_640ecd4e35117'),
(569, 55, 'otdelka', 'Чистовая'),
(570, 55, '_otdelka', 'field_640ecdca35118'),
(571, 55, 'potolok', '2.5'),
(572, 55, '_potolok', 'field_640ecde735119'),
(573, 55, 'parking', '1'),
(574, 55, '_parking', 'field_640ece1ca20cf'),
(575, 55, 'floor_min', '10'),
(576, 55, '_floor_min', 'field_640eced5c0d5e'),
(577, 55, 'floor_max', '17'),
(578, 55, '_floor_max', 'field_640ed0120c44c'),
(579, 55, 'price_group', 'mid_up'),
(580, 55, '_price_group', 'field_640ed04beb0d5'),
(581, 55, 'deadline_kvartal', '1'),
(582, 55, '_deadline_kvartal', 'field_640edb416b62b'),
(583, 55, 'deadline_year', '2023'),
(584, 55, '_deadline_year', 'field_640edbae9bb90'),
(585, 55, 'deadline', ''),
(586, 55, '_deadline', 'field_640ed21f6b62a'),
(587, 55, 'zero', '1'),
(588, 55, '_zero', 'field_640ee84db5e6b'),
(589, 55, 'raiting', '9'),
(590, 55, '_raiting', 'field_640eeca2dfcc2'),
(591, 55, 'deadline_quarter', '2'),
(592, 55, '_deadline_quarter', 'field_640edb416b62b'),
(593, 55, 'metro', '1'),
(594, 55, '_metro', 'field_640f03a49dbdc'),
(595, 55, 'adress_adress1', 'Новосибирск, Гоголя 15'),
(596, 55, '_adress_adress1', 'field_640f052a8a199'),
(597, 55, 'adress_map', ''),
(598, 55, '_adress_map', 'field_640f05368a19a'),
(599, 55, 'adress', ''),
(600, 55, '_adress', 'field_640f05148a198'),
(601, 55, 'metro_0_branch', 'red'),
(602, 55, '_metro_0_branch', 'field_640f03b69dbdd'),
(603, 55, 'metro_0_staition', 'Другая'),
(604, 55, '_metro_0_staition', 'field_640f03f09dbde'),
(605, 55, 'metro_0_minutes', '18'),
(606, 55, '_metro_0_minutes', 'field_640f040c9dbdf'),
(613, 56, '_edit_last', '1'),
(614, 56, '_edit_lock', '1678725340:1'),
(615, 56, '_thumbnail_id', '11'),
(616, 56, '_wp_page_template', 'single.php'),
(617, 56, '_wp_old_slug', '%d1%82%d0%b5%d1%81%d1%82%d0%be%d0%b2%d1%8b%d0%b9-%d0%b6%d0%ba'),
(618, 56, 'full_img', '23'),
(619, 56, '_full_img', 'field_640ec628e4db0'),
(620, 56, 'class', 'elit'),
(621, 56, '_class', 'field_640e113c94453'),
(622, 56, 'konstruktiv', 'Монолит-кирпич'),
(623, 56, '_konstruktiv', 'field_640ecd4e35117'),
(624, 56, 'otdelka', 'Чистовая'),
(625, 56, '_otdelka', 'field_640ecdca35118'),
(626, 56, 'potolok', '2.5'),
(627, 56, '_potolok', 'field_640ecde735119'),
(628, 56, 'parking', '0'),
(629, 56, '_parking', 'field_640ece1ca20cf'),
(630, 56, 'floor_min', '10'),
(631, 56, '_floor_min', 'field_640eced5c0d5e'),
(632, 56, 'floor_max', '17'),
(633, 56, '_floor_max', 'field_640ed0120c44c'),
(634, 56, 'price_group', 'mid_up'),
(635, 56, '_price_group', 'field_640ed04beb0d5'),
(636, 56, 'deadline_kvartal', '1'),
(637, 56, '_deadline_kvartal', 'field_640edb416b62b'),
(638, 56, 'deadline_year', '2023'),
(639, 56, '_deadline_year', 'field_640edbae9bb90'),
(640, 56, 'deadline', ''),
(641, 56, '_deadline', 'field_640ed21f6b62a'),
(642, 56, 'zero', '0'),
(643, 56, '_zero', 'field_640ee84db5e6b'),
(644, 56, 'raiting', '8.8'),
(645, 56, '_raiting', 'field_640eeca2dfcc2'),
(646, 56, 'deadline_quarter', '2'),
(647, 56, '_deadline_quarter', 'field_640edb416b62b'),
(648, 56, 'metro', '1'),
(649, 56, '_metro', 'field_640f03a49dbdc'),
(650, 56, 'adress_adress1', 'Новосибирск, Гоголя 15'),
(651, 56, '_adress_adress1', 'field_640f052a8a199'),
(652, 56, 'adress_map', ''),
(653, 56, '_adress_map', 'field_640f05368a19a'),
(654, 56, 'adress', ''),
(655, 56, '_adress', 'field_640f05148a198'),
(656, 56, 'metro_0_branch', 'red'),
(657, 56, '_metro_0_branch', 'field_640f03b69dbdd'),
(658, 56, 'metro_0_staition', 'Другая'),
(659, 56, '_metro_0_staition', 'field_640f03f09dbde'),
(660, 56, 'metro_0_minutes', '18'),
(661, 56, '_metro_0_minutes', 'field_640f040c9dbdf'),
(668, 57, '_edit_last', '1'),
(669, 57, '_edit_lock', '1678725133:1'),
(670, 57, '_thumbnail_id', '11'),
(671, 57, '_wp_page_template', 'single.php'),
(672, 57, '_wp_old_slug', '%d1%82%d0%b5%d1%81%d1%82%d0%be%d0%b2%d1%8b%d0%b9-%d0%b6%d0%ba'),
(673, 57, 'full_img', '23'),
(674, 57, '_full_img', 'field_640ec628e4db0'),
(675, 57, 'class', 'comfort'),
(676, 57, '_class', 'field_640e113c94453'),
(677, 57, 'konstruktiv', 'Монолит-кирпич'),
(678, 57, '_konstruktiv', 'field_640ecd4e35117'),
(679, 57, 'otdelka', 'Чистовая'),
(680, 57, '_otdelka', 'field_640ecdca35118'),
(681, 57, 'potolok', '2.5'),
(682, 57, '_potolok', 'field_640ecde735119'),
(683, 57, 'parking', '0'),
(684, 57, '_parking', 'field_640ece1ca20cf'),
(685, 57, 'floor_min', '10'),
(686, 57, '_floor_min', 'field_640eced5c0d5e'),
(687, 57, 'floor_max', '17'),
(688, 57, '_floor_max', 'field_640ed0120c44c'),
(689, 57, 'price_group', 'mid_up'),
(690, 57, '_price_group', 'field_640ed04beb0d5'),
(691, 57, 'deadline_kvartal', '1'),
(692, 57, '_deadline_kvartal', 'field_640edb416b62b'),
(693, 57, 'deadline_year', '2023'),
(694, 57, '_deadline_year', 'field_640edbae9bb90'),
(695, 57, 'deadline', ''),
(696, 57, '_deadline', 'field_640ed21f6b62a'),
(697, 57, 'zero', '0'),
(698, 57, '_zero', 'field_640ee84db5e6b'),
(699, 57, 'raiting', '8.8'),
(700, 57, '_raiting', 'field_640eeca2dfcc2'),
(701, 57, 'deadline_quarter', '2'),
(702, 57, '_deadline_quarter', 'field_640edb416b62b'),
(703, 57, 'metro', '1'),
(704, 57, '_metro', 'field_640f03a49dbdc'),
(705, 57, 'adress_adress1', 'Новосибирск, Гоголя 15'),
(706, 57, '_adress_adress1', 'field_640f052a8a199'),
(707, 57, 'adress_map', ''),
(708, 57, '_adress_map', 'field_640f05368a19a'),
(709, 57, 'adress', ''),
(710, 57, '_adress', 'field_640f05148a198'),
(711, 57, 'metro_0_branch', 'red'),
(712, 57, '_metro_0_branch', 'field_640f03b69dbdd'),
(713, 57, 'metro_0_staition', 'Московская'),
(714, 57, '_metro_0_staition', 'field_640f03f09dbde'),
(715, 57, 'metro_0_minutes', '10'),
(716, 57, '_metro_0_minutes', 'field_640f040c9dbdf'),
(723, 58, '_edit_last', '1'),
(724, 58, '_edit_lock', '1678725165:1'),
(725, 58, '_thumbnail_id', '11'),
(726, 58, '_wp_page_template', 'single.php'),
(727, 58, '_wp_old_slug', '%d1%82%d0%b5%d1%81%d1%82%d0%be%d0%b2%d1%8b%d0%b9-%d0%b6%d0%ba'),
(728, 58, 'full_img', '23'),
(729, 58, '_full_img', 'field_640ec628e4db0'),
(730, 58, 'class', 'comfort'),
(731, 58, '_class', 'field_640e113c94453'),
(732, 58, 'konstruktiv', 'Плиты'),
(733, 58, '_konstruktiv', 'field_640ecd4e35117'),
(734, 58, 'otdelka', 'Чистовая'),
(735, 58, '_otdelka', 'field_640ecdca35118'),
(736, 58, 'potolok', '2.5'),
(737, 58, '_potolok', 'field_640ecde735119'),
(738, 58, 'parking', '0'),
(739, 58, '_parking', 'field_640ece1ca20cf'),
(740, 58, 'floor_min', '10'),
(741, 58, '_floor_min', 'field_640eced5c0d5e'),
(742, 58, 'floor_max', '17'),
(743, 58, '_floor_max', 'field_640ed0120c44c'),
(744, 58, 'price_group', 'mid_up'),
(745, 58, '_price_group', 'field_640ed04beb0d5'),
(746, 58, 'deadline_kvartal', '1'),
(747, 58, '_deadline_kvartal', 'field_640edb416b62b'),
(748, 58, 'deadline_year', '2023'),
(749, 58, '_deadline_year', 'field_640edbae9bb90'),
(750, 58, 'deadline', ''),
(751, 58, '_deadline', 'field_640ed21f6b62a'),
(752, 58, 'zero', '1'),
(753, 58, '_zero', 'field_640ee84db5e6b'),
(754, 58, 'raiting', '8.8'),
(755, 58, '_raiting', 'field_640eeca2dfcc2'),
(756, 58, 'deadline_quarter', '2'),
(757, 58, '_deadline_quarter', 'field_640edb416b62b'),
(758, 58, 'metro', '2'),
(759, 58, '_metro', 'field_640f03a49dbdc'),
(760, 58, 'adress_adress1', 'Новосибирск, Гоголя 15'),
(761, 58, '_adress_adress1', 'field_640f052a8a199'),
(762, 58, 'adress_map', ''),
(763, 58, '_adress_map', 'field_640f05368a19a'),
(764, 58, 'adress', ''),
(765, 58, '_adress', 'field_640f05148a198'),
(766, 58, 'metro_0_branch', 'green'),
(767, 58, '_metro_0_branch', 'field_640f03b69dbdd'),
(768, 58, 'metro_0_staition', 'Студенческая'),
(769, 58, '_metro_0_staition', 'field_640f03f09dbde'),
(770, 58, 'metro_0_minutes', '5'),
(771, 58, '_metro_0_minutes', 'field_640f040c9dbdf'),
(772, 58, 'metro_1_branch', 'red'),
(773, 58, '_metro_1_branch', 'field_640f03b69dbdd'),
(774, 58, 'metro_1_staition', 'Другая'),
(775, 58, '_metro_1_staition', 'field_640f03f09dbde'),
(776, 58, 'metro_1_minutes', '18'),
(777, 58, '_metro_1_minutes', 'field_640f040c9dbdf'),
(778, 54, 'metro_2_branch', 'red'),
(779, 54, '_metro_2_branch', 'field_640f03b69dbdd'),
(780, 54, 'metro_2_staition', 'Студенческая 3'),
(781, 54, '_metro_2_staition', 'field_640f03f09dbde'),
(782, 54, 'metro_2_minutes', '50'),
(783, 54, '_metro_2_minutes', 'field_640f040c9dbdf');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2023-03-11 13:54:43', '2023-03-11 10:54:43', '<!-- wp:paragraph -->\n<p>Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите ее, затем начинайте создавать!</p>\n<!-- /wp:paragraph -->', 'Привет, мир!', '', 'publish', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80', '', '', '2023-03-11 13:54:43', '2023-03-11 10:54:43', '', 0, 'http://localhost/?p=1', 0, 'post', '', 1),
(2, 1, '2023-03-11 13:54:43', '2023-03-11 10:54:43', '', 'Metro City', '', 'publish', 'closed', 'closed', '', 'sample-page', '', '', '2023-03-13 11:39:24', '2023-03-13 08:39:24', '', 0, 'http://localhost/?page_id=2', 0, 'page', '', 0),
(3, 1, '2023-03-11 13:54:43', '2023-03-11 10:54:43', '<!-- wp:heading --><h2>Кто мы</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Наш адрес сайта: http://localhost.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Комментарии</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Медиафайлы</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куки</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Встраиваемое содержимое других вебсайтов</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>С кем мы делимся вашими данными</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы запросите сброс пароля, ваш IP будет указан в email-сообщении о сбросе.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Как долго мы храним ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Какие у вас права на ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куда отправляются ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p><!-- /wp:paragraph -->', 'Политика конфиденциальности', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2023-03-11 13:54:43', '2023-03-11 10:54:43', '', 0, 'http://localhost/?page_id=3', 0, 'page', '', 0),
(4, 1, '2023-03-11 13:54:59', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-03-11 13:54:59', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=4', 0, 'post', '', 0),
(5, 1, '2023-03-11 14:07:41', '2023-03-11 11:07:41', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-twentytwentythree', '', '', '2023-03-11 14:07:41', '2023-03-11 11:07:41', '', 0, 'http://localhost/2023/03/11/wp-global-styles-twentytwentythree/', 0, 'wp_global_styles', '', 0),
(6, 1, '2023-03-11 16:02:26', '2023-03-11 13:02:26', 'Расположен в Октябрьском районе Новосибирска, в непосредственной близости от одной из крупнейших магистралей района — улицы Кирова. В нескольких метрах от новостройки находится остановка общественного транспорта «Дунайская», от которой за 10 минут можно добраться до станции метро «Октябрьская». ', 'Тот самый', '', 'publish', 'closed', 'closed', '', 'testovyj-zhk', '', '', '2023-03-13 14:36:52', '2023-03-13 11:36:52', '', 0, 'http://localhost/?post_type=houses&#038;p=6', 0, 'houses', '', 0),
(8, 1, '2023-03-12 20:32:32', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-03-12 20:32:32', '0000-00-00 00:00:00', '', 0, 'http://localhost/?post_type=houses&p=8', 0, 'houses', '', 0),
(9, 1, '2023-03-12 20:57:26', '2023-03-12 17:57:26', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"houses\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Характеристики ЖК', 'harakteristiki-zhk', 'publish', 'closed', 'closed', '', 'group_640e113b208a7', '', '', '2023-03-13 14:13:13', '2023-03-13 11:13:13', '', 0, 'http://localhost/?post_type=acf-field-group&#038;p=9', 0, 'acf-field-group', '', 0),
(10, 1, '2023-03-12 20:57:26', '2023-03-12 17:57:26', 'a:14:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:4:{s:6:\"econom\";s:12:\"Эконом\";s:7:\"comfort\";s:14:\"Комфорт\";s:8:\"business\";s:12:\"Бизнес\";s:4:\"elit\";s:8:\"Элит\";}s:13:\"default_value\";b:0;s:13:\"return_format\";s:5:\"label\";s:8:\"multiple\";i:0;s:10:\"allow_null\";i:0;s:2:\"ui\";i:0;s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}', 'Класс жилья', 'class', 'publish', 'closed', 'closed', '', 'field_640e113c94453', '', '', '2023-03-13 11:34:10', '2023-03-13 08:34:10', '', 9, 'http://localhost/?post_type=acf-field&#038;p=10', 0, 'acf-field', '', 0),
(11, 1, '2023-03-12 21:12:42', '2023-03-12 18:12:42', '', 'building', '', 'inherit', 'open', 'closed', '', 'building', '', '', '2023-03-12 21:12:42', '2023-03-12 18:12:42', '', 6, 'http://localhost/wp-content/uploads/2023/03/building.jpg', 0, 'attachment', 'image/jpeg', 0),
(12, 1, '2023-03-12 21:19:54', '2023-03-12 18:19:54', 'Расположен в Октябрьском районе Новосибирска, в непосредственной близости от одной из крупнейших магистралей района — улицы Кирова. В нескольких метрах от новостройки находится остановка общественного транспорта «Дунайская», от которой за 10 минут можно добраться до станции метро «Октябрьская». ', 'Тестовый ЖК 2', '', 'trash', 'closed', 'closed', '', 'testovyj-zhk-2__trashed', '', '', '2023-03-13 15:09:39', '2023-03-13 12:09:39', '', 0, 'http://localhost/?post_type=houses&#038;p=12', 0, 'houses', '', 0),
(13, 1, '2023-03-12 21:19:47', '2023-03-12 18:19:47', 'Расположен в Октябрьском районе Новосибирска, в непосредственной близости от одной из крупнейших магистралей района — улицы Кирова. В нескольких метрах от новостройки находится остановка общественного транспорта «Дунайская», от которой за 10 минут можно добраться до станции метро «Октябрьская». ', 'Тестовый ЖК', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2023-03-12 21:19:47', '2023-03-12 18:19:47', '', 0, 'http://localhost/?post_type=houses&#038;p=13', 0, 'houses', '', 0),
(14, 1, '2023-03-12 21:19:37', '2023-03-12 18:19:37', 'Расположен в Октябрьском районе Новосибирска, в непосредственной близости от одной из крупнейших магистралей района — улицы Кирова. В нескольких метрах от новостройки находится остановка общественного транспорта «Дунайская», от которой за 10 минут можно добраться до станции метро «Октябрьская». ', 'Тестовый ЖК 1', '', 'trash', 'closed', 'closed', '', 'testovyj-zhk-1__trashed', '', '', '2023-03-13 15:09:39', '2023-03-13 12:09:39', '', 0, 'http://localhost/?post_type=houses&#038;p=14', 0, 'houses', '', 0),
(15, 1, '2023-03-12 22:10:30', '2023-03-12 19:10:30', '<!-- wp:paragraph -->\n<p>Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...или так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдите <a href=\"http://localhost/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!</p>\n<!-- /wp:paragraph -->', 'Главная', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2023-03-12 22:10:30', '2023-03-12 19:10:30', '', 2, 'http://localhost/?p=15', 0, 'revision', '', 0),
(16, 1, '2023-03-12 22:17:49', '2023-03-12 19:17:49', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2023-03-12 22:17:49', '2023-03-12 19:17:49', '', 2, 'http://localhost/?p=16', 0, 'revision', '', 0),
(17, 1, '2023-03-12 22:19:59', '2023-03-12 19:19:59', 'dfsdfsdf', 'sdfsdfsdfs', '', 'trash', 'closed', 'closed', '', 'sdfsdfsdfs__trashed', '', '', '2023-03-13 15:09:33', '2023-03-13 12:09:33', '', 0, 'http://localhost/?post_type=houses&#038;p=17', 0, 'houses', '', 0),
(18, 1, '2023-03-12 22:20:15', '2023-03-12 19:20:15', 'dfsdfsdf', 'sdfsdfsdfs', '', 'inherit', 'closed', 'closed', '', '17-autosave-v1', '', '', '2023-03-12 22:20:15', '2023-03-12 19:20:15', '', 17, 'http://localhost/?p=18', 0, 'revision', '', 0),
(19, 1, '2023-03-12 22:23:34', '2023-03-12 19:23:34', 'куеукеку', 'куеуке', '', 'publish', 'open', 'open', '', 'kueuke', '', '', '2023-03-12 22:23:34', '2023-03-12 19:23:34', '', 0, 'http://localhost/?p=19', 0, 'post', '', 0),
(20, 1, '2023-03-12 22:23:34', '2023-03-12 19:23:34', 'куеукеку', 'куеуке', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2023-03-12 22:23:34', '2023-03-12 19:23:34', '', 19, 'http://localhost/?p=20', 0, 'revision', '', 0),
(21, 1, '2023-03-13 09:44:06', '2023-03-13 06:44:06', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"houses\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Изображение', 'izobrazhenie', 'publish', 'closed', 'closed', '', 'group_640ec6263fdfd', '', '', '2023-03-13 09:48:34', '2023-03-13 06:48:34', '', 0, 'http://localhost/?post_type=acf-field-group&#038;p=21', 0, 'acf-field-group', '', 0),
(22, 1, '2023-03-13 09:44:06', '2023-03-13 06:44:06', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Полное изображение', 'full_img', 'publish', 'closed', 'closed', '', 'field_640ec628e4db0', '', '', '2023-03-13 09:48:34', '2023-03-13 06:48:34', '', 21, 'http://localhost/?post_type=acf-field&#038;p=22', 0, 'acf-field', '', 0),
(23, 1, '2023-03-13 09:46:30', '2023-03-13 06:46:30', '', 'image', '', 'inherit', 'open', 'closed', '', 'image', '', '', '2023-03-13 09:46:30', '2023-03-13 06:46:30', '', 6, 'http://localhost/wp-content/uploads/2023/03/image.jpg', 0, 'attachment', 'image/jpeg', 0),
(24, 1, '2023-03-13 09:50:36', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-03-13 09:50:36', '0000-00-00 00:00:00', '', 0, 'http://localhost/?post_type=acf-field-group&p=24', 0, 'acf-field-group', '', 0),
(25, 1, '2023-03-13 10:17:40', '2023-03-13 07:17:40', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Конструктив', 'konstruktiv', 'publish', 'closed', 'closed', '', 'field_640ecd4e35117', '', '', '2023-03-13 12:28:23', '2023-03-13 09:28:23', '', 9, 'http://localhost/?post_type=acf-field&#038;p=25', 1, 'acf-field', '', 0),
(26, 1, '2023-03-13 10:17:40', '2023-03-13 07:17:40', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Отделка', 'otdelka', 'publish', 'closed', 'closed', '', 'field_640ecdca35118', '', '', '2023-03-13 12:28:23', '2023-03-13 09:28:23', '', 9, 'http://localhost/?post_type=acf-field&#038;p=26', 2, 'acf-field', '', 0),
(27, 1, '2023-03-13 10:17:40', '2023-03-13 07:17:40', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:4:\"step\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Высота потолков', 'potolok', 'publish', 'closed', 'closed', '', 'field_640ecde735119', '', '', '2023-03-13 12:28:23', '2023-03-13 09:28:23', '', 9, 'http://localhost/?post_type=acf-field&#038;p=27', 3, 'acf-field', '', 0),
(28, 1, '2023-03-13 10:18:14', '2023-03-13 07:18:14', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:2:\"ui\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}', 'Подземный паркинг', 'parking', 'publish', 'closed', 'closed', '', 'field_640ece1ca20cf', '', '', '2023-03-13 12:28:23', '2023-03-13 09:28:23', '', 9, 'http://localhost/?post_type=acf-field&#038;p=28', 4, 'acf-field', '', 0),
(29, 1, '2023-03-13 10:24:23', '2023-03-13 07:24:23', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:4:\"step\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Этажность (минимум)', 'floor_min', 'publish', 'closed', 'closed', '', 'field_640eced5c0d5e', '', '', '2023-03-13 12:28:23', '2023-03-13 09:28:23', '', 9, 'http://localhost/?post_type=acf-field&#038;p=29', 5, 'acf-field', '', 0),
(30, 1, '2023-03-13 10:27:00', '2023-03-13 07:27:00', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:4:\"step\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Этажность (максимум)', 'floor_max', 'publish', 'closed', 'closed', '', 'field_640ed0120c44c', '', '', '2023-03-13 10:27:00', '2023-03-13 07:27:00', '', 9, 'http://localhost/?post_type=acf-field&p=30', 6, 'acf-field', '', 0),
(31, 1, '2023-03-13 10:34:42', '2023-03-13 07:34:42', 'a:14:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:4:{s:3:\"low\";s:12:\"Низкая\";s:3:\"med\";s:13:\"Cредняя\";s:6:\"mid_up\";s:25:\"Выше среднего\";s:5:\"hight\";s:14:\"Высокая\";}s:13:\"default_value\";b:0;s:13:\"return_format\";s:5:\"label\";s:8:\"multiple\";i:0;s:10:\"allow_null\";i:0;s:2:\"ui\";i:0;s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}', 'Ценовая группа', 'price_group', 'publish', 'closed', 'closed', '', 'field_640ed04beb0d5', '', '', '2023-03-13 10:34:42', '2023-03-13 07:34:42', '', 9, 'http://localhost/?post_type=acf-field&p=31', 7, 'acf-field', '', 0),
(32, 1, '2023-03-13 11:14:42', '2023-03-13 08:14:42', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Срок сдачи', 'deadline', 'publish', 'closed', 'closed', '', 'field_640ed21f6b62a', '', '', '2023-03-13 11:17:01', '2023-03-13 08:17:01', '', 9, 'http://localhost/?post_type=acf-field&#038;p=32', 8, 'acf-field', '', 0),
(33, 1, '2023-03-13 11:14:42', '2023-03-13 08:14:42', 'a:14:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:4:{i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";i:4;s:1:\"4\";}s:13:\"default_value\";b:0;s:13:\"return_format\";s:5:\"value\";s:8:\"multiple\";i:0;s:10:\"allow_null\";i:0;s:2:\"ui\";i:0;s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}', 'Квартал', 'quarter', 'publish', 'closed', 'closed', '', 'field_640edb416b62b', '', '', '2023-03-13 12:30:54', '2023-03-13 09:30:54', '', 32, 'http://localhost/?post_type=acf-field&#038;p=33', 0, 'acf-field', '', 0),
(34, 1, '2023-03-13 11:17:01', '2023-03-13 08:17:01', 'a:14:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:11:{i:2022;s:4:\"2022\";i:2023;s:4:\"2023\";i:2024;s:4:\"2024\";i:2025;s:4:\"2025\";i:2026;s:4:\"2026\";i:2027;s:4:\"2027\";i:2028;s:4:\"2028\";i:2029;s:4:\"2029\";i:2030;s:4:\"2030\";i:2031;s:4:\"2031\";i:2032;s:4:\"2032\";}s:13:\"default_value\";b:0;s:13:\"return_format\";s:5:\"value\";s:8:\"multiple\";i:0;s:10:\"allow_null\";i:0;s:2:\"ui\";i:0;s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}', 'Год', 'year', 'publish', 'closed', 'closed', '', 'field_640edbae9bb90', '', '', '2023-03-13 11:17:01', '2023-03-13 08:17:01', '', 32, 'http://localhost/?post_type=acf-field&p=34', 1, 'acf-field', '', 0),
(35, 1, '2023-03-13 11:39:24', '2023-03-13 08:39:24', '', 'Metro City', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2023-03-13 11:39:24', '2023-03-13 08:39:24', '', 2, 'http://localhost/?p=35', 0, 'revision', '', 0),
(36, 1, '2023-03-13 12:10:17', '2023-03-13 09:10:17', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:2:\"ui\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}', 'Услуги 0%', 'zero', 'publish', 'closed', 'closed', '', 'field_640ee84db5e6b', '', '', '2023-03-13 12:10:17', '2023-03-13 09:10:17', '', 9, 'http://localhost/?post_type=acf-field&p=36', 9, 'acf-field', '', 0),
(37, 1, '2023-03-13 12:28:23', '2023-03-13 09:28:23', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:4:\"step\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Рейтинг', 'raiting', 'publish', 'closed', 'closed', '', 'field_640eeca2dfcc2', '', '', '2023-03-13 12:28:23', '2023-03-13 09:28:23', '', 9, 'http://localhost/?post_type=acf-field&p=37', 10, 'acf-field', '', 0),
(38, 1, '2023-03-13 14:09:00', '2023-03-13 11:09:00', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"houses\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Остановки Метро', 'ostanovki-metro', 'publish', 'closed', 'closed', '', 'group_640f03a3930f6', '', '', '2023-03-13 14:22:57', '2023-03-13 11:22:57', '', 0, 'http://localhost/?post_type=acf-field-group&#038;p=38', 0, 'acf-field-group', '', 0),
(39, 1, '2023-03-13 14:09:00', '2023-03-13 11:09:00', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"pagination\";i:0;s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:0:\"\";s:13:\"rows_per_page\";i:20;}', 'Метро', 'metro', 'publish', 'closed', 'closed', '', 'field_640f03a49dbdc', '', '', '2023-03-13 14:09:00', '2023-03-13 11:09:00', '', 38, 'http://localhost/?post_type=acf-field&p=39', 0, 'acf-field', '', 0),
(40, 1, '2023-03-13 14:09:00', '2023-03-13 11:09:00', 'a:14:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:2:{s:5:\"green\";s:14:\"Зелёная\";s:3:\"red\";s:14:\"Красная\";}s:13:\"default_value\";b:0;s:13:\"return_format\";s:5:\"value\";s:8:\"multiple\";i:0;s:10:\"allow_null\";i:0;s:2:\"ui\";i:0;s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}', 'Ветка', 'branch', 'publish', 'closed', 'closed', '', 'field_640f03b69dbdd', '', '', '2023-03-13 14:22:16', '2023-03-13 11:22:16', '', 39, 'http://localhost/?post_type=acf-field&#038;p=40', 0, 'acf-field', '', 0),
(41, 1, '2023-03-13 14:09:00', '2023-03-13 11:09:00', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Станция', 'staition', 'publish', 'closed', 'closed', '', 'field_640f03f09dbde', '', '', '2023-03-13 14:09:00', '2023-03-13 11:09:00', '', 39, 'http://localhost/?post_type=acf-field&p=41', 1, 'acf-field', '', 0),
(42, 1, '2023-03-13 14:09:00', '2023-03-13 11:09:00', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:4:\"step\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Дальность (минуты)', 'minutes', 'publish', 'closed', 'closed', '', 'field_640f040c9dbdf', '', '', '2023-03-13 14:22:57', '2023-03-13 11:22:57', '', 39, 'http://localhost/?post_type=acf-field&#038;p=42', 2, 'acf-field', '', 0),
(43, 1, '2023-03-13 14:13:13', '2023-03-13 11:13:13', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Адрес', 'adress', 'publish', 'closed', 'closed', '', 'field_640f05148a198', '', '', '2023-03-13 14:13:13', '2023-03-13 11:13:13', '', 9, 'http://localhost/?post_type=acf-field&p=43', 11, 'acf-field', '', 0),
(44, 1, '2023-03-13 14:13:13', '2023-03-13 11:13:13', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Адрес', 'adress1', 'publish', 'closed', 'closed', '', 'field_640f052a8a199', '', '', '2023-03-13 14:13:13', '2023-03-13 11:13:13', '', 43, 'http://localhost/?post_type=acf-field&p=44', 0, 'acf-field', '', 0),
(45, 1, '2023-03-13 14:13:13', '2023-03-13 11:13:13', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Карта', 'map', 'publish', 'closed', 'closed', '', 'field_640f05368a19a', '', '', '2023-03-13 14:13:13', '2023-03-13 11:13:13', '', 43, 'http://localhost/?post_type=acf-field&p=45', 1, 'acf-field', '', 0),
(46, 1, '2023-03-13 15:13:46', '2023-03-13 12:13:46', 'Расположен в Октябрьском районе Новосибирска, в непосредственной близости от одной из крупнейших магистралей района — улицы Кирова. В нескольких метрах от новостройки находится остановка общественного транспорта «Дунайская», от которой за 10 минут можно добраться до станции метро «Октябрьская». ', 'Тестовый ЖК', '', 'publish', 'closed', 'closed', '', 'testovyj-zhk-2', '', '', '2023-03-13 15:13:46', '2023-03-13 12:13:46', '', 0, 'http://localhost/?post_type=houses&#038;p=46', 0, 'houses', '', 0),
(47, 1, '2023-03-13 15:15:36', '2023-03-13 12:15:36', 'Расположен в Октябрьском районе Новосибирска, в непосредственной близости от одной из крупнейших магистралей района — улицы Кирова. В нескольких метрах от новостройки находится остановка общественного транспорта «Дунайская», от которой за 10 минут можно добраться до станции метро «Октябрьская». ', 'Тестовый ЖК 3', '', 'publish', 'closed', 'closed', '', 'testovyj-zhk-3', '', '', '2023-03-13 15:17:31', '2023-03-13 12:17:31', '', 0, 'http://localhost/?post_type=houses&#038;p=47', 0, 'houses', '', 0),
(48, 1, '2023-03-13 15:14:42', '2023-03-13 12:14:42', 'Расположен в Октябрьском районе Новосибирска, в непосредственной близости от одной из крупнейших магистралей района — улицы Кирова. В нескольких метрах от новостройки находится остановка общественного транспорта «Дунайская», от которой за 10 минут можно добраться до станции метро «Октябрьская». ', 'Тестовый ЖК 2', '', 'publish', 'closed', 'closed', '', 'testovyj-zhk-2-2', '', '', '2023-03-13 18:56:18', '2023-03-13 15:56:18', '', 0, 'http://localhost/?post_type=houses&#038;p=48', 0, 'houses', '', 0),
(49, 1, '2023-03-13 18:56:09', '2023-03-13 15:56:09', 'Расположен в Октябрьском районе Новосибирска, в непосредственной близости от одной из крупнейших магистралей района — улицы Кирова. В нескольких метрах от новостройки находится остановка общественного транспорта «Дунайская», от которой за 10 минут можно добраться до станции метро «Октябрьская». ', 'Тестовый ЖК 2', '', 'inherit', 'closed', 'closed', '', '48-autosave-v1', '', '', '2023-03-13 18:56:09', '2023-03-13 15:56:09', '', 48, 'http://localhost/?p=49', 0, 'revision', '', 0),
(50, 1, '2023-03-13 19:29:45', '2023-03-13 16:29:45', 'Расположен в Октябрьском районе Новосибирска, в непосредственной близости от одной из крупнейших магистралей района — улицы Кирова. В нескольких метрах от новостройки находится остановка общественного транспорта «Дунайская», от которой за 10 минут можно добраться до станции метро «Октябрьская». ', 'Тестовый ЖК 4', '', 'publish', 'closed', 'closed', '', 'testovyj-zhk-3-2', '', '', '2023-03-13 19:29:55', '2023-03-13 16:29:55', '', 0, 'http://localhost/?post_type=houses&#038;p=50', 0, 'houses', '', 0),
(51, 1, '2023-03-13 19:30:51', '2023-03-13 16:30:51', 'Расположен в Октябрьском районе Новосибирска, в непосредственной близости от одной из крупнейших магистралей района — улицы Кирова. В нескольких метрах от новостройки находится остановка общественного транспорта «Дунайская», от которой за 10 минут можно добраться до станции метро «Октябрьская». ', 'Тестовый ЖК 5', '', 'publish', 'closed', 'closed', '', 'testovyj-zhk-5', '', '', '2023-03-13 19:30:51', '2023-03-13 16:30:51', '', 0, 'http://localhost/?post_type=houses&#038;p=51', 0, 'houses', '', 0),
(52, 1, '2023-03-13 19:31:52', '2023-03-13 16:31:52', 'Расположен в Октябрьском районе Новосибирска, в непосредственной близости от одной из крупнейших магистралей района — улицы Кирова. В нескольких метрах от новостройки находится остановка общественного транспорта «Дунайская», от которой за 10 минут можно добраться до станции метро «Октябрьская». ', 'Тестовый ЖК 6', '', 'publish', 'closed', 'closed', '', 'testovyj-zhk-6', '', '', '2023-03-13 19:31:52', '2023-03-13 16:31:52', '', 0, 'http://localhost/?post_type=houses&#038;p=52', 0, 'houses', '', 0),
(53, 1, '2023-03-13 19:32:48', '2023-03-13 16:32:48', 'Расположен в Октябрьском районе Новосибирска, в непосредственной близости от одной из крупнейших магистралей района — улицы Кирова. В нескольких метрах от новостройки находится остановка общественного транспорта «Дунайская», от которой за 10 минут можно добраться до станции метро «Октябрьская». ', 'Тестовый ЖК 7', '', 'publish', 'closed', 'closed', '', 'testovyj-zhk-7', '', '', '2023-03-13 22:00:21', '2023-03-13 19:00:21', '', 0, 'http://localhost/?post_type=houses&#038;p=53', 0, 'houses', '', 0),
(54, 1, '2023-03-13 19:33:15', '2023-03-13 16:33:15', 'Расположен в Октябрьском районе Новосибирска, в непосредственной близости от одной из крупнейших магистралей района — улицы Кирова. В нескольких метрах от новостройки находится остановка общественного транспорта «Дунайская», от которой за 10 минут можно добраться до станции метро «Октябрьская». ', 'Тестовый ЖК 8', '', 'publish', 'closed', 'closed', '', 'testovyj-zhk-8', '', '', '2023-03-13 19:33:15', '2023-03-13 16:33:15', '', 0, 'http://localhost/?post_type=houses&#038;p=54', 0, 'houses', '', 0),
(55, 1, '2023-03-13 19:33:42', '2023-03-13 16:33:42', 'Расположен в Октябрьском районе Новосибирска, в непосредственной близости от одной из крупнейших магистралей района — улицы Кирова. В нескольких метрах от новостройки находится остановка общественного транспорта «Дунайская», от которой за 10 минут можно добраться до станции метро «Октябрьская». ', 'Тестовый ЖК 9', '', 'publish', 'closed', 'closed', '', 'testovyj-zhk-9', '', '', '2023-03-13 19:33:42', '2023-03-13 16:33:42', '', 0, 'http://localhost/?post_type=houses&#038;p=55', 0, 'houses', '', 0),
(56, 1, '2023-03-13 19:35:39', '2023-03-13 16:35:39', 'Расположен в Октябрьском районе Новосибирска, в непосредственной близости от одной из крупнейших магистралей района — улицы Кирова. В нескольких метрах от новостройки находится остановка общественного транспорта «Дунайская», от которой за 10 минут можно добраться до станции метро «Октябрьская». ', 'Тестовый ЖК 12', '', 'publish', 'closed', 'closed', '', 'testovyj-zhk-12', '', '', '2023-03-13 19:35:39', '2023-03-13 16:35:39', '', 0, 'http://localhost/?post_type=houses&#038;p=56', 0, 'houses', '', 0),
(57, 1, '2023-03-13 19:34:32', '2023-03-13 16:34:32', 'Расположен в Октябрьском районе Новосибирска, в непосредственной близости от одной из крупнейших магистралей района — улицы Кирова. В нескольких метрах от новостройки находится остановка общественного транспорта «Дунайская», от которой за 10 минут можно добраться до станции метро «Октябрьская». ', 'Тестовый ЖК 10', '', 'publish', 'closed', 'closed', '', 'testovyj-zhk-10', '', '', '2023-03-13 19:34:32', '2023-03-13 16:34:32', '', 0, 'http://localhost/?post_type=houses&#038;p=57', 0, 'houses', '', 0),
(58, 1, '2023-03-13 19:35:03', '2023-03-13 16:35:03', 'Расположен в Октябрьском районе Новосибирска, в непосредственной близости от одной из крупнейших магистралей района — улицы Кирова. В нескольких метрах от новостройки находится остановка общественного транспорта «Дунайская», от которой за 10 минут можно добраться до станции метро «Октябрьская». ', 'Тестовый ЖК 11', '', 'publish', 'closed', 'closed', '', 'testovyj-zhk-11', '', '', '2023-03-13 19:35:03', '2023-03-13 16:35:03', '', 0, 'http://localhost/?post_type=houses&#038;p=58', 0, 'houses', '', 0),
(59, 1, '2023-03-13 19:29:50', '2023-03-13 16:29:50', 'Расположен в Октябрьском районе Новосибирска, в непосредственной близости от одной из крупнейших магистралей района — улицы Кирова. В нескольких метрах от новостройки находится остановка общественного транспорта «Дунайская», от которой за 10 минут можно добраться до станции метро «Октябрьская». ', 'Тестовый ЖК 3', '', 'inherit', 'closed', 'closed', '', '50-autosave-v1', '', '', '2023-03-13 19:29:50', '2023-03-13 16:29:50', '', 50, 'http://localhost/?p=59', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(2, 'twentytwentythree', 'twentytwentythree', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(5, 2, 0),
(19, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'wp_theme', '', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', '_admin'),
(2, 1, 'first_name', 'ОАО Брусника'),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"19815b74d7ea46de6de9a7df7f29372eaf30f4d617eb9640e2f1195edf600df2\";a:4:{s:10:\"expiration\";i:1678878327;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36\";s:5:\"login\";i:1678705527;}}'),
(17, 1, 'wp_user-settings', 'editor=html&libraryContent=browse'),
(18, 1, 'wp_user-settings-time', '1678532094'),
(19, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(20, 1, 'wp_persisted_preferences', 'a:3:{s:14:\"core/edit-post\";a:3:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;s:10:\"openPanels\";a:5:{i:0;s:15:\"page-attributes\";i:1;s:23:\"taxonomy-panel-post_tag\";i:2;s:11:\"post-status\";i:3;s:16:\"discussion-panel\";i:4;s:14:\"featured-image\";}}s:9:\"_modified\";s:24:\"2023-03-11T11:07:59.948Z\";s:14:\"core/edit-site\";a:1:{s:12:\"welcomeGuide\";b:0;}}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, '_admin', '$P$BcmHRfvEgNRsAISnL8BnF7HvzNdnNE/', '_admin', 'aplugatarev@bk.ru', 'http://localhost', '2023-03-11 10:54:43', '', 0, '_admin');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=547;

--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=784;

--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
