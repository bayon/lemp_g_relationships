# WordPress MySQL database migration
#
# Generated: Tuesday 8. May 2018 19:25 UTC
# Hostname: db:3306
# Database: `wordpress`
# URL: //localhost
# Path: /var/www/html
# Tables: wp_commentmeta, wp_comments, wp_links, wp_options, wp_postmeta, wp_posts, wp_term_relationships, wp_term_taxonomy, wp_termmeta, wp_terms, wp_usermeta, wp_users
# Table Prefix: wp_
# Post Types: revision, acf, component, customize_changeset, nav_menu_item, note, page, post, product
# Protocol: http
# Multisite: false
# Subsite Export: false
# --------------------------------------------------------

/*!40101 SET NAMES utf8 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `wp_commentmeta`
#

DROP TABLE IF EXISTS `wp_commentmeta`;


#
# Table structure of table `wp_commentmeta`
#

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_commentmeta`
#

#
# End of data contents of table `wp_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_comments`
#

DROP TABLE IF EXISTS `wp_comments`;


#
# Table structure of table `wp_comments`
#

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_comments`
#
INSERT INTO `wp_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-05-07 14:00:48', '2018-05-07 14:00:48', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0) ;

#
# End of data contents of table `wp_comments`
# --------------------------------------------------------



#
# Delete any existing table `wp_links`
#

DROP TABLE IF EXISTS `wp_links`;


#
# Table structure of table `wp_links`
#

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_links`
#

#
# End of data contents of table `wp_links`
# --------------------------------------------------------



#
# Delete any existing table `wp_options`
#

DROP TABLE IF EXISTS `wp_options`;


#
# Table structure of table `wp_options`
#

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=240 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_options`
#
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost', 'yes'),
(2, 'home', 'http://localhost', 'yes'),
(3, 'blogname', 'lemp_g', 'yes'),
(4, 'blogdescription', 'wordpress with underscore', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'bayon.forte@advancedsolutions.com', 'yes'),
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
(29, 'rewrite_rules', 'a:111:{s:10:"product/?$";s:27:"index.php?post_type=product";s:40:"product/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:35:"product/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:27:"product/page/([0-9]{1,})/?$";s:45:"index.php?post_type=product&paged=$matches[1]";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:35:"product/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"product/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:41:"product/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:24:"product/([^/]+)/embed/?$";s:40:"index.php?product=$matches[1]&embed=true";s:28:"product/([^/]+)/trackback/?$";s:34:"index.php?product=$matches[1]&tb=1";s:48:"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:43:"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:36:"product/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&paged=$matches[2]";s:43:"product/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&cpage=$matches[2]";s:32:"product/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?product=$matches[1]&page=$matches[2]";s:24:"product/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"product/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"product/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=4&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:31:"wp-migrate-db/wp-migrate-db.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', '_score', 'yes'),
(41, 'stylesheet', '_score', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '6', 'yes'),
(84, 'page_on_front', '4', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'cron', 'a:4:{i:1525831248;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1525874458;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1525874489;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(110, 'theme_mods_twentyseventeen', 'a:3:{s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:1:{s:3:"top";i:2;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1525711911;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(124, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:33:"bayon.forte@advancedsolutions.com";s:7:"version";s:5:"4.9.5";s:9:"timestamp";i:1525701655;}', 'no'),
(130, 'can_compress_scripts', '0', 'no'),
(146, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(150, 'recently_activated', 'a:2:{s:51:"wp-react-router-restful-plugin/rest-plugin-test.php";i:1525799933;s:44:"rest-plugin-test-master/rest-plugin-test.php";i:1525720374;}', 'yes'),
(153, 'wpmdb_usage', 'a:2:{s:6:"action";s:8:"savefile";s:4:"time";i:1525807526;}', 'no'),
(164, 'current_theme', '_Score', 'yes'),
(165, 'theme_mods__score', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:6:"menu-1";i:2;}s:18:"custom_css_post_id";i:-1;s:16:"header_textcolor";s:5:"blank";}', 'yes'),
(166, 'theme_switched', '', 'yes'),
(167, 'category_children', 'a:0:{}', 'yes'),
(195, 'acf_version', '4.4.12', 'yes') ;

#
# End of data contents of table `wp_options`
# --------------------------------------------------------



#
# Delete any existing table `wp_postmeta`
#

DROP TABLE IF EXISTS `wp_postmeta`;


#
# Table structure of table `wp_postmeta`
#

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=293 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_postmeta`
#
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_edit_last', '1'),
(3, 4, '_edit_lock', '1525701557:1'),
(4, 6, '_edit_last', '1'),
(5, 6, '_edit_lock', '1525701576:1'),
(6, 8, '_menu_item_type', 'post_type'),
(7, 8, '_menu_item_menu_item_parent', '0'),
(8, 8, '_menu_item_object_id', '6'),
(9, 8, '_menu_item_object', 'page'),
(10, 8, '_menu_item_target', ''),
(11, 8, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(12, 8, '_menu_item_xfn', ''),
(13, 8, '_menu_item_url', ''),
(15, 9, '_menu_item_type', 'post_type'),
(16, 9, '_menu_item_menu_item_parent', '0'),
(17, 9, '_menu_item_object_id', '4'),
(18, 9, '_menu_item_object', 'page'),
(19, 9, '_menu_item_target', ''),
(20, 9, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(21, 9, '_menu_item_xfn', ''),
(22, 9, '_menu_item_url', ''),
(24, 10, '_menu_item_type', 'post_type'),
(25, 10, '_menu_item_menu_item_parent', '8'),
(26, 10, '_menu_item_object_id', '2'),
(27, 10, '_menu_item_object', 'page'),
(28, 10, '_menu_item_target', ''),
(29, 10, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(30, 10, '_menu_item_xfn', ''),
(31, 10, '_menu_item_url', ''),
(33, 11, '_wp_trash_meta_status', 'publish'),
(34, 11, '_wp_trash_meta_time', '1525714143'),
(35, 12, '_wp_trash_meta_status', 'publish'),
(36, 12, '_wp_trash_meta_time', '1525714175'),
(37, 13, '_wp_trash_meta_status', 'publish'),
(38, 13, '_wp_trash_meta_time', '1525714714'),
(39, 14, '_edit_last', '1'),
(40, 14, '_edit_lock', '1525716101:1'),
(41, 16, '_menu_item_type', 'post_type'),
(42, 16, '_menu_item_menu_item_parent', '0'),
(43, 16, '_menu_item_object_id', '14'),
(44, 16, '_menu_item_object', 'page'),
(45, 16, '_menu_item_target', ''),
(46, 16, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(47, 16, '_menu_item_xfn', ''),
(48, 16, '_menu_item_url', ''),
(50, 17, '_edit_last', '1'),
(51, 17, '_edit_lock', '1525720050:1'),
(52, 19, '_menu_item_type', 'post_type'),
(53, 19, '_menu_item_menu_item_parent', '0'),
(54, 19, '_menu_item_object_id', '17'),
(55, 19, '_menu_item_object', 'page'),
(56, 19, '_menu_item_target', ''),
(57, 19, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(58, 19, '_menu_item_xfn', ''),
(59, 19, '_menu_item_url', ''),
(61, 20, '_edit_last', '1'),
(62, 20, 'field_5af0a81452d9a', 'a:14:{s:3:"key";s:19:"field_5af0a81452d9a";s:5:"label";s:15:"My Custom Field";s:4:"name";s:15:"my_custom_field";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(63, 20, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:4:"post";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(64, 20, 'position', 'normal'),
(65, 20, 'layout', 'no_box'),
(66, 20, 'hide_on_screen', ''),
(67, 20, '_edit_lock', '1525721003:1'),
(68, 1, 'my_custom_field', 'awesome '),
(69, 1, '_my_custom_field', 'field_5af0a81452d9a'),
(70, 1, '_edit_lock', '1525721136:1'),
(71, 21, '_edit_last', '1'),
(72, 21, '_edit_lock', '1525721189:1'),
(73, 22, '_edit_last', '1'),
(74, 22, '_edit_lock', '1525721224:1'),
(84, 25, '_edit_last', '1'),
(85, 25, '_edit_lock', '1525721737:1'),
(86, 26, '_edit_last', '1'),
(87, 26, 'field_5af0ab31c1c61', 'a:14:{s:3:"key";s:19:"field_5af0ab31c1c61";s:5:"label";s:15:"My Custom Field";s:4:"name";s:15:"my_custom_field";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(88, 26, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:4:"note";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(89, 26, 'position', 'normal'),
(90, 26, 'layout', 'no_box'),
(91, 26, 'hide_on_screen', ''),
(92, 26, '_edit_lock', '1525722430:1'),
(93, 25, 'my_custom_field', 'append to second note here. and here. asdf'),
(94, 25, '_my_custom_field', 'field_5af0ab31c1c61'),
(95, 27, '_edit_last', '1'),
(96, 27, '_edit_lock', '1525782483:1'),
(97, 29, '_edit_last', '1'),
(98, 29, '_edit_lock', '1525723295:1'),
(99, 31, '_edit_last', '1'),
(100, 31, '_edit_lock', '1525723313:1'),
(101, 33, '_edit_last', '1'),
(102, 33, '_edit_lock', '1525723336:1'),
(103, 35, '_menu_item_type', 'post_type'),
(104, 35, '_menu_item_menu_item_parent', '0'),
(105, 35, '_menu_item_object_id', '27'),
(106, 35, '_menu_item_object', 'page'),
(107, 35, '_menu_item_target', ''),
(108, 35, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(109, 35, '_menu_item_xfn', ''),
(110, 35, '_menu_item_url', ''),
(112, 33, '_wp_trash_meta_status', 'publish'),
(113, 33, '_wp_trash_meta_time', '1525723516'),
(114, 33, '_wp_desired_post_slug', 'manufacturing-design-software'),
(115, 31, '_wp_trash_meta_status', 'publish') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(116, 31, '_wp_trash_meta_time', '1525723519'),
(117, 31, '_wp_desired_post_slug', 'industrial-design-software'),
(118, 29, '_wp_trash_meta_status', 'publish'),
(119, 29, '_wp_trash_meta_time', '1525723522'),
(120, 29, '_wp_desired_post_slug', 'autodesk-software-license'),
(121, 36, '_edit_last', '1'),
(122, 36, '_edit_lock', '1525786353:1'),
(123, 37, '_edit_last', '1'),
(124, 37, '_edit_lock', '1525794486:1'),
(125, 38, '_edit_last', '1'),
(126, 38, '_edit_lock', '1525785021:1'),
(127, 39, '_edit_last', '1'),
(130, 39, 'position', 'normal'),
(131, 39, 'layout', 'no_box'),
(132, 39, 'hide_on_screen', ''),
(133, 39, '_edit_lock', '1525805465:1'),
(134, 38, 'my_custom_field', 'automotive design note. ok.'),
(135, 38, '_my_custom_field', 'field_5af0b2a92baa0'),
(136, 37, 'my_custom_field', 'industrial design note. yes'),
(137, 37, '_my_custom_field', 'field_5af0b2a92baa0'),
(138, 36, 'my_custom_field', 'manufacturing note. ok manf.'),
(139, 36, '_my_custom_field', 'field_5af0b2a92baa0'),
(140, 22, '_wp_trash_meta_status', 'publish'),
(141, 22, '_wp_trash_meta_time', '1525724109'),
(142, 22, '_wp_desired_post_slug', 'notes'),
(143, 26, '_wp_trash_meta_status', 'publish'),
(144, 26, '_wp_trash_meta_time', '1525724115'),
(145, 26, '_wp_desired_post_slug', 'acf_note-fields'),
(146, 20, '_wp_trash_meta_status', 'publish'),
(147, 20, '_wp_trash_meta_time', '1525724119'),
(148, 20, '_wp_desired_post_slug', 'acf_form-fields'),
(149, 39, 'field_5af0b796e7c55', 'a:14:{s:3:"key";s:19:"field_5af0b796e7c55";s:5:"label";s:5:"Price";s:4:"name";s:5:"price";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(150, 39, 'field_5af0b7afe7c56', 'a:11:{s:3:"key";s:19:"field_5af0b7afe7c56";s:5:"label";s:11:"Date Needed";s:4:"name";s:11:"date_needed";s:4:"type";s:11:"date_picker";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"date_format";s:6:"yymmdd";s:14:"display_format";s:8:"dd/mm/yy";s:9:"first_day";s:1:"1";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(152, 38, 'price', '32.45'),
(153, 38, '_price', 'field_5af0b796e7c55'),
(154, 38, 'date_needed', '20180515'),
(155, 38, '_date_needed', 'field_5af0b7afe7c56'),
(156, 40, '_edit_last', '1'),
(157, 40, '_edit_lock', '1525782580:1'),
(158, 40, '_wp_page_template', 'To-Do_list.php'),
(159, 41, '_edit_last', '1'),
(160, 41, '_wp_page_template', 'To-Do_list.php'),
(161, 41, '_edit_lock', '1525782580:1'),
(170, 45, '_menu_item_type', 'post_type'),
(172, 45, '_menu_item_menu_item_parent', '0'),
(173, 45, '_menu_item_object_id', '40'),
(174, 45, '_menu_item_object', 'page'),
(175, 45, '_menu_item_target', ''),
(176, 45, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(177, 45, '_menu_item_xfn', ''),
(178, 45, '_menu_item_url', ''),
(179, 45, '_menu_item_orphaned', '1525782749'),
(180, 41, '_wp_trash_meta_status', 'publish'),
(181, 41, '_wp_trash_meta_time', '1525782830'),
(182, 41, '_wp_desired_post_slug', 'to-do-list-2'),
(194, 36, 'price', '124.79'),
(195, 36, '_price', 'field_5af0b796e7c55'),
(196, 36, 'date_needed', '20180530'),
(197, 36, '_date_needed', 'field_5af0b7afe7c56'),
(198, 36, 'related_products', 'a:1:{i:0;s:2:"37";}'),
(199, 36, '_related_products', 'field_5af19d065be80'),
(201, 39, 'field_5af19ffcb44eb', 'a:14:{s:3:"key";s:19:"field_5af19ffcb44eb";s:5:"label";s:16:"Related Software";s:4:"name";s:16:"related_software";s:4:"type";s:12:"relationship";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"return_format";s:6:"object";s:9:"post_type";a:1:{i:0;s:7:"product";}s:8:"taxonomy";a:1:{i:0;s:3:"all";}s:7:"filters";a:1:{i:0;s:6:"search";}s:15:"result_elements";a:1:{i:0;s:9:"post_type";}s:3:"max";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(203, 36, 'related_software', 'a:1:{i:0;s:2:"37";}'),
(204, 36, '_related_software', 'field_5af19ffcb44eb'),
(206, 38, 'related_products', ''),
(207, 38, '_related_products', 'field_5af19d065be80'),
(208, 38, 'related_software', ''),
(209, 38, '_related_software', 'field_5af19ffcb44eb'),
(210, 37, 'price', '99.45'),
(211, 37, '_price', 'field_5af0b796e7c55'),
(212, 37, 'date_needed', ''),
(213, 37, '_date_needed', 'field_5af0b7afe7c56'),
(214, 37, 'related_products', 'a:1:{i:0;s:2:"36";}'),
(215, 37, '_related_products', 'field_5af19d065be80'),
(216, 37, 'related_software', 'a:1:{i:0;s:2:"36";}'),
(217, 37, '_related_software', 'field_5af19ffcb44eb'),
(223, 49, '_edit_last', '1'),
(224, 49, '_edit_lock', '1525788680:1'),
(225, 50, '_edit_last', '1'),
(226, 50, '_edit_lock', '1525791912:1'),
(227, 39, 'field_5af1a4bb3cdef', 'a:14:{s:3:"key";s:19:"field_5af1a4bb3cdef";s:5:"label";s:18:"Related Components";s:4:"name";s:18:"related_components";s:4:"type";s:12:"relationship";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"return_format";s:6:"object";s:9:"post_type";a:1:{i:0;s:9:"component";}s:8:"taxonomy";a:1:{i:0;s:3:"all";}s:7:"filters";a:1:{i:0;s:6:"search";}s:15:"result_elements";a:1:{i:0;s:9:"post_type";}s:3:"max";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;}'),
(229, 37, 'related_components', ''),
(230, 37, '_related_components', 'field_5af1a4bb3cdef'),
(231, 36, 'related_components', 'a:2:{i:0;s:2:"50";i:1;s:2:"49";}'),
(232, 36, '_related_components', 'field_5af1a4bb3cdef'),
(234, 51, '_edit_last', '1'),
(235, 51, 'field_5af1a5a545dd8', 'a:15:{s:3:"key";s:19:"field_5af1a5a545dd8";s:5:"label";s:5:"Price";s:4:"name";s:5:"price";s:4:"type";s:6:"number";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:4:"step";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(236, 51, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:9:"component";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(237, 51, 'position', 'normal'),
(238, 51, 'layout', 'no_box'),
(239, 51, 'hide_on_screen', ''),
(240, 51, '_edit_lock', '1525786282:1'),
(243, 36, 'parameters', '38'),
(244, 36, '_parameters', 'field_5af1a7e01e12b'),
(245, 50, 'price', '133.33'),
(246, 50, '_price', 'field_5af1a5a545dd8'),
(247, 49, 'price', '233.33'),
(248, 49, '_price', 'field_5af1a5a545dd8'),
(249, 38, 'related_components', 'a:1:{i:0;s:2:"49";}'),
(250, 38, '_related_components', 'field_5af1a4bb3cdef') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(251, 38, 'parameters', '38'),
(252, 38, '_parameters', 'field_5af1a7e01e12b'),
(254, 40, '_wp_trash_meta_status', 'publish'),
(255, 40, '_wp_trash_meta_time', '1525792919'),
(256, 40, '_wp_desired_post_slug', 'to-do-list'),
(260, 53, '_edit_last', '1'),
(261, 53, '_edit_lock', '1525799313:1'),
(262, 53, '_wp_page_template', 'default'),
(263, 55, '_menu_item_type', 'post_type'),
(264, 55, '_menu_item_menu_item_parent', '19'),
(265, 55, '_menu_item_object_id', '53'),
(266, 55, '_menu_item_object', 'page'),
(267, 55, '_menu_item_target', ''),
(268, 55, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(269, 55, '_menu_item_xfn', ''),
(270, 55, '_menu_item_url', ''),
(271, 56, '_edit_lock', '1525805351:1'),
(272, 56, '_wp_trash_meta_status', 'publish'),
(273, 56, '_wp_trash_meta_time', '1525805499'),
(274, 56, '_wp_desired_post_slug', '56'),
(275, 57, '_wp_trash_meta_status', 'publish'),
(276, 57, '_wp_trash_meta_time', '1525805501'),
(277, 57, '_wp_desired_post_slug', '57'),
(278, 39, 'field_5af1f1cc5cd69', 'a:14:{s:3:"key";s:19:"field_5af1f1cc5cd69";s:5:"label";s:7:"excerpt";s:4:"name";s:7:"excerpt";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:4;}'),
(280, 39, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:7:"product";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(281, 36, 'excerpt', 'great software.'),
(282, 36, '_excerpt', 'field_5af1f1cc5cd69'),
(283, 58, 'price', '3345.88'),
(284, 58, '_price', 'field_5af0b796e7c55'),
(285, 58, 'date_needed', '20180531'),
(286, 58, '_date_needed', 'field_5af0b7afe7c56'),
(287, 58, 'related_software', ''),
(288, 58, '_related_software', 'field_5af19ffcb44eb'),
(289, 58, 'related_components', 'a:1:{i:0;s:2:"49";}'),
(290, 58, '_related_components', 'field_5af1a4bb3cdef'),
(291, 58, 'excerpt', 'go hydro.'),
(292, 58, '_excerpt', 'field_5af1f1cc5cd69') ;

#
# End of data contents of table `wp_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_posts`
#

DROP TABLE IF EXISTS `wp_posts`;


#
# Table structure of table `wp_posts`
#

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_posts`
#
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-05-07 14:00:48', '2018-05-07 14:00:48', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-05-07 14:00:48', '2018-05-07 14:00:48', '', 0, 'http://localhost/?p=1', 0, 'post', '', 1),
(2, 1, '2018-05-07 14:00:48', '2018-05-07 14:00:48', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-05-07 14:00:48', '2018-05-07 14:00:48', '', 0, 'http://localhost/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-05-07 14:00:58', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-05-07 14:00:58', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=3', 0, 'post', '', 0),
(4, 1, '2018-05-07 14:01:40', '2018-05-07 14:01:40', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-05-07 14:01:40', '2018-05-07 14:01:40', '', 0, 'http://localhost/?page_id=4', 0, 'page', '', 0),
(5, 1, '2018-05-07 14:01:40', '2018-05-07 14:01:40', '', 'Home', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2018-05-07 14:01:40', '2018-05-07 14:01:40', '', 4, 'http://localhost/4-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2018-05-07 14:01:55', '2018-05-07 14:01:55', '', 'Posts', '', 'publish', 'closed', 'closed', '', 'posts', '', '', '2018-05-07 14:01:55', '2018-05-07 14:01:55', '', 0, 'http://localhost/?page_id=6', 0, 'page', '', 0),
(7, 1, '2018-05-07 14:01:55', '2018-05-07 14:01:55', '', 'Posts', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-05-07 14:01:55', '2018-05-07 14:01:55', '', 6, 'http://localhost/6-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2018-05-07 14:02:37', '2018-05-07 14:02:37', ' ', '', '', 'publish', 'closed', 'closed', '', '8', '', '', '2018-05-08 17:11:11', '2018-05-08 17:11:11', '', 0, 'http://localhost/?p=8', 2, 'nav_menu_item', '', 0),
(9, 1, '2018-05-07 14:02:37', '2018-05-07 14:02:37', ' ', '', '', 'publish', 'closed', 'closed', '', '9', '', '', '2018-05-08 17:11:11', '2018-05-08 17:11:11', '', 0, 'http://localhost/?p=9', 1, 'nav_menu_item', '', 0),
(10, 1, '2018-05-07 16:54:28', '2018-05-07 16:54:28', ' ', '', '', 'publish', 'closed', 'closed', '', '10', '', '', '2018-05-08 17:11:11', '2018-05-08 17:11:11', '', 0, 'http://localhost/?p=10', 3, 'nav_menu_item', '', 0),
(11, 1, '2018-05-07 17:29:03', '2018-05-07 17:29:03', '{"blogdescription":{"value":"wordpress with underscore","type":"option","user_id":1,"date_modified_gmt":"2018-05-07 17:29:03"},"_score::header_textcolor":{"value":"blank","type":"theme_mod","user_id":1,"date_modified_gmt":"2018-05-07 17:29:03"}}', '', '', 'trash', 'closed', 'closed', '', '779141d7-7a9b-4d39-8c6a-376871311903', '', '', '2018-05-07 17:29:03', '2018-05-07 17:29:03', '', 0, 'http://localhost/779141d7-7a9b-4d39-8c6a-376871311903/', 0, 'customize_changeset', '', 0),
(12, 1, '2018-05-07 17:29:35', '2018-05-07 17:29:35', '{"_score::header_textcolor":{"value":"","type":"theme_mod","user_id":1,"date_modified_gmt":"2018-05-07 17:29:35"}}', '', '', 'trash', 'closed', 'closed', '', 'e0b6d9af-df22-4205-bad1-f24e0e58e7b7', '', '', '2018-05-07 17:29:35', '2018-05-07 17:29:35', '', 0, 'http://localhost/e0b6d9af-df22-4205-bad1-f24e0e58e7b7/', 0, 'customize_changeset', '', 0),
(13, 1, '2018-05-07 17:38:34', '2018-05-07 17:38:34', '{"_score::header_textcolor":{"value":"blank","type":"theme_mod","user_id":1,"date_modified_gmt":"2018-05-07 17:38:34"}}', '', '', 'trash', 'closed', 'closed', '', 'a2e3ce90-6d10-4e35-92c9-84083fae7f62', '', '', '2018-05-07 17:38:34', '2018-05-07 17:38:34', '', 0, 'http://localhost/a2e3ce90-6d10-4e35-92c9-84083fae7f62/', 0, 'customize_changeset', '', 0),
(14, 1, '2018-05-07 18:03:59', '2018-05-07 18:03:59', '', 'Subscriptions', '', 'publish', 'closed', 'closed', '', 'subscriptions', '', '', '2018-05-07 18:03:59', '2018-05-07 18:03:59', '', 0, 'http://localhost/?page_id=14', 0, 'page', '', 0),
(15, 1, '2018-05-07 18:03:59', '2018-05-07 18:03:59', '', 'Subscriptions', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2018-05-07 18:03:59', '2018-05-07 18:03:59', '', 14, 'http://localhost/14-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2018-05-07 18:04:12', '2018-05-07 18:04:12', ' ', '', '', 'publish', 'closed', 'closed', '', '16', '', '', '2018-05-08 17:11:11', '2018-05-08 17:11:11', '', 0, 'http://localhost/?p=16', 4, 'nav_menu_item', '', 0),
(17, 1, '2018-05-07 19:09:49', '2018-05-07 19:09:49', '', 'Typography', '', 'publish', 'closed', 'closed', '', 'typography', '', '', '2018-05-07 19:09:49', '2018-05-07 19:09:49', '', 0, 'http://localhost/?page_id=17', 0, 'page', '', 0),
(18, 1, '2018-05-07 19:09:49', '2018-05-07 19:09:49', '', 'Typography', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-05-07 19:09:49', '2018-05-07 19:09:49', '', 17, 'http://localhost/17-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2018-05-07 19:09:59', '2018-05-07 19:09:59', ' ', '', '', 'publish', 'closed', 'closed', '', '19', '', '', '2018-05-08 17:11:11', '2018-05-08 17:11:11', '', 0, 'http://localhost/?p=19', 5, 'nav_menu_item', '', 0),
(20, 1, '2018-05-07 19:25:21', '2018-05-07 19:25:21', '', 'Form Fields', '', 'trash', 'closed', 'closed', '', 'acf_form-fields__trashed', '', '', '2018-05-07 20:15:19', '2018-05-07 20:15:19', '', 0, 'http://localhost/?post_type=acf&#038;p=20', 0, 'acf', '', 0),
(21, 1, '2018-05-07 19:28:34', '2018-05-07 19:28:34', 'This is a custom post type .', 'Custom Post Type Note', '', 'publish', 'closed', 'closed', '', 'custom-post-type-note', '', '', '2018-05-07 19:28:34', '2018-05-07 19:28:34', '', 0, 'http://localhost/?post_type=note&#038;p=21', 0, 'note', '', 0),
(22, 1, '2018-05-07 19:29:25', '2018-05-07 19:29:25', '', 'Notes', '', 'trash', 'closed', 'closed', '', 'notes__trashed', '', '', '2018-05-07 20:15:09', '2018-05-07 20:15:09', '', 0, 'http://localhost/?page_id=22', 0, 'page', '', 0),
(23, 1, '2018-05-07 19:29:25', '2018-05-07 19:29:25', '', 'Notes', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2018-05-07 19:29:25', '2018-05-07 19:29:25', '', 22, 'http://localhost/22-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2018-05-07 19:32:16', '2018-05-07 19:32:16', 'More notes', 'Second Note', '', 'publish', 'closed', 'closed', '', 'second-note', '', '', '2018-05-07 19:32:16', '2018-05-07 19:32:16', '', 0, 'http://localhost/?post_type=note&#038;p=25', 0, 'note', '', 0),
(26, 1, '2018-05-07 19:38:38', '2018-05-07 19:38:38', '', 'Note Fields', '', 'trash', 'closed', 'closed', '', 'acf_note-fields__trashed', '', '', '2018-05-07 20:15:15', '2018-05-07 20:15:15', '', 0, 'http://localhost/?post_type=acf&#038;p=26', 0, 'acf', '', 0),
(27, 1, '2018-05-07 20:02:39', '2018-05-07 20:02:39', 'The product page.', 'Product', '', 'publish', 'closed', 'closed', '', 'product', '', '', '2018-05-07 20:03:30', '2018-05-07 20:03:30', '', 0, 'http://localhost/?page_id=27', 0, 'page', '', 0),
(28, 1, '2018-05-07 20:02:39', '2018-05-07 20:02:39', 'The product page.', 'Product', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2018-05-07 20:02:39', '2018-05-07 20:02:39', '', 27, 'http://localhost/27-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2018-05-07 20:03:56', '2018-05-07 20:03:56', '', 'Autodesk Software License', '', 'trash', 'closed', 'closed', '', 'autodesk-software-license__trashed', '', '', '2018-05-07 20:05:22', '2018-05-07 20:05:22', '', 0, 'http://localhost/?page_id=29', 0, 'page', '', 0),
(30, 1, '2018-05-07 20:03:56', '2018-05-07 20:03:56', '', 'Autodesk Software License', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2018-05-07 20:03:56', '2018-05-07 20:03:56', '', 29, 'http://localhost/29-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2018-05-07 20:04:13', '2018-05-07 20:04:13', '', 'Industrial Design Software', '', 'trash', 'closed', 'closed', '', 'industrial-design-software__trashed', '', '', '2018-05-07 20:05:19', '2018-05-07 20:05:19', '', 0, 'http://localhost/?page_id=31', 0, 'page', '', 0),
(32, 1, '2018-05-07 20:04:13', '2018-05-07 20:04:13', '', 'Industrial Design Software', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2018-05-07 20:04:13', '2018-05-07 20:04:13', '', 31, 'http://localhost/31-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2018-05-07 20:04:33', '2018-05-07 20:04:33', '', 'Manufacturing design Software', '', 'trash', 'closed', 'closed', '', 'manufacturing-design-software__trashed', '', '', '2018-05-07 20:05:16', '2018-05-07 20:05:16', '', 0, 'http://localhost/?page_id=33', 0, 'page', '', 0),
(34, 1, '2018-05-07 20:04:33', '2018-05-07 20:04:33', '', 'Manufacturing design Software', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2018-05-07 20:04:33', '2018-05-07 20:04:33', '', 33, 'http://localhost/33-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2018-05-07 20:05:07', '2018-05-07 20:05:07', ' ', '', '', 'publish', 'closed', 'closed', '', '35', '', '', '2018-05-08 17:11:11', '2018-05-08 17:11:11', '', 0, 'http://localhost/?p=35', 7, 'nav_menu_item', '', 0),
(36, 1, '2018-05-07 20:05:40', '2018-05-07 20:05:40', '', 'Manufacturing Software', '', 'publish', 'closed', 'closed', '', 'manufacturing-software', '', '', '2018-05-08 13:25:09', '2018-05-08 13:25:09', '', 0, 'http://localhost/?post_type=product&#038;p=36', 0, 'product', '', 0),
(37, 1, '2018-05-07 20:05:55', '2018-05-07 20:05:55', 'Industrial design is a field of it\'s own', 'Industrial Design Software', '', 'publish', 'closed', 'closed', '', 'industrial-design-software', '', '', '2018-05-08 13:24:56', '2018-05-08 13:24:56', '', 0, 'http://localhost/?post_type=product&#038;p=37', 0, 'product', '', 0),
(38, 1, '2018-05-07 20:06:09', '2018-05-07 20:06:09', 'The first thing to know....', 'Automotive Design Software', '', 'publish', 'closed', 'closed', '', 'automotive-design-software', '', '', '2018-05-08 13:12:44', '2018-05-08 13:12:44', '', 0, 'http://localhost/?post_type=product&#038;p=38', 0, 'product', '', 0),
(39, 1, '2018-05-07 20:10:28', '2018-05-07 20:10:28', '', 'Product Fields', '', 'publish', 'closed', 'closed', '', 'acf_product-fields', '', '', '2018-05-08 18:52:23', '2018-05-08 18:52:23', '', 0, 'http://localhost/?post_type=acf&#038;p=39', 0, 'acf', '', 0),
(40, 1, '2018-05-08 12:31:57', '2018-05-08 12:31:57', '', 'To-do List', '', 'trash', 'closed', 'closed', '', 'to-do-list__trashed', '', '', '2018-05-08 15:21:59', '2018-05-08 15:21:59', '', 0, 'http://localhost/?page_id=40', 0, 'page', '', 0),
(41, 1, '2018-05-08 12:31:58', '2018-05-08 12:31:58', '', 'To-do List', '', 'trash', 'closed', 'closed', '', 'to-do-list-2__trashed', '', '', '2018-05-08 12:33:50', '2018-05-08 12:33:50', '', 0, 'http://localhost/?page_id=41', 0, 'page', '', 0),
(42, 1, '2018-05-08 12:31:57', '2018-05-08 12:31:57', '', 'To-do List', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2018-05-08 12:31:57', '2018-05-08 12:31:57', '', 40, 'http://localhost/40-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2018-05-08 12:31:58', '2018-05-08 12:31:58', '', 'To-do List', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2018-05-08 12:31:58', '2018-05-08 12:31:58', '', 41, 'http://localhost/41-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2018-05-08 12:32:29', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-05-08 12:32:29', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=45', 1, 'nav_menu_item', '', 0),
(47, 1, '2018-05-08 12:35:47', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-05-08 12:35:47', '0000-00-00 00:00:00', '', 0, 'http://localhost/?post_type=acf&p=47', 0, 'acf', '', 0),
(48, 1, '2018-05-08 12:48:59', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-05-08 12:48:59', '0000-00-00 00:00:00', '', 0, 'http://localhost/?post_type=acf&p=48', 0, 'acf', '', 0),
(49, 1, '2018-05-08 13:21:45', '2018-05-08 13:21:45', 'The interactive pen will help you quickly sketch out ideas before honing the details with the softwares auto completion features.', 'Interactive Pen', '', 'publish', 'closed', 'closed', '', 'interactive-pen', '', '', '2018-05-08 14:00:30', '2018-05-08 14:00:30', '', 0, 'http://localhost/?post_type=component&#038;p=49', 0, 'component', '', 0),
(50, 1, '2018-05-08 13:22:48', '2018-05-08 13:22:48', 'The integrated mouse has many additional features for allowing you more intuitive and custom control over the software.', 'Integrated Mouse', '', 'publish', 'closed', 'closed', '', 'integrated-mouse', '', '', '2018-05-08 14:00:19', '2018-05-08 14:00:19', '', 0, 'http://localhost/?post_type=component&#038;p=50', 0, 'component', '', 0),
(51, 1, '2018-05-08 13:27:45', '2018-05-08 13:27:45', '', 'Component Fields', '', 'publish', 'closed', 'closed', '', 'acf_component-fields', '', '', '2018-05-08 13:27:45', '2018-05-08 13:27:45', '', 0, 'http://localhost/?post_type=acf&#038;p=51', 0, 'acf', '', 0),
(52, 1, '2018-05-08 16:30:13', '2018-05-08 16:30:13', '', 'reactjs', '', 'publish', 'open', 'open', '', 'reactjs', '', '', '2018-05-08 16:30:13', '2018-05-08 16:30:13', '', 0, 'http://localhost/reactjs/', 0, 'post', '', 0),
(53, 1, '2018-05-08 17:09:56', '2018-05-08 17:09:56', '', 'SPA with React', '', 'publish', 'closed', 'closed', '', 'spa-with-react', '', '', '2018-05-08 17:10:55', '2018-05-08 17:10:55', '', 0, 'http://localhost/?page_id=53', 0, 'page', '', 0),
(54, 1, '2018-05-08 17:09:56', '2018-05-08 17:09:56', '', 'SPA with React', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2018-05-08 17:09:56', '2018-05-08 17:09:56', '', 53, 'http://localhost/53-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2018-05-08 17:11:11', '2018-05-08 17:11:11', ' ', '', '', 'publish', 'closed', 'closed', '', '55', '', '', '2018-05-08 17:11:11', '2018-05-08 17:11:11', '', 0, 'http://localhost/?p=55', 6, 'nav_menu_item', '', 0),
(56, 1, '2018-05-08 18:03:14', '2018-05-08 18:03:14', '', '', '', 'trash', 'closed', 'closed', '', '56__trashed', '', '', '2018-05-08 18:51:39', '2018-05-08 18:51:39', '', 0, 'http://localhost/product/56/', 0, 'product', '', 0),
(57, 1, '2018-05-08 18:03:16', '2018-05-08 18:03:16', '', '', '', 'trash', 'closed', 'closed', '', '57__trashed', '', '', '2018-05-08 18:51:41', '2018-05-08 18:51:41', '', 0, 'http://localhost/product/57/', 0, 'product', '', 0),
(58, 1, '2018-05-08 18:57:24', '2018-05-08 18:57:24', '', 'Hydroelectric Design', '', 'publish', 'closed', 'closed', '', 'hydroelectric-design', '', '', '2018-05-08 18:57:24', '2018-05-08 18:57:24', '', 0, 'http://localhost/product/hydroelectric-design/', 0, 'product', '', 0) ;

#
# End of data contents of table `wp_posts`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_relationships`
#

DROP TABLE IF EXISTS `wp_term_relationships`;


#
# Table structure of table `wp_term_relationships`
#

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_term_relationships`
#
INSERT INTO `wp_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(8, 2, 0),
(9, 2, 0),
(10, 2, 0),
(16, 2, 0),
(19, 2, 0),
(35, 2, 0),
(52, 1, 0),
(55, 2, 0) ;

#
# End of data contents of table `wp_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_taxonomy`
#

DROP TABLE IF EXISTS `wp_term_taxonomy`;


#
# Table structure of table `wp_term_taxonomy`
#

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_term_taxonomy`
#
INSERT INTO `wp_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'nav_menu', '', 0, 7) ;

#
# End of data contents of table `wp_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `wp_termmeta`
#

DROP TABLE IF EXISTS `wp_termmeta`;


#
# Table structure of table `wp_termmeta`
#

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_termmeta`
#

#
# End of data contents of table `wp_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_terms`
#

DROP TABLE IF EXISTS `wp_terms`;


#
# Table structure of table `wp_terms`
#

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_terms`
#
INSERT INTO `wp_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'mainmenu', 'mainmenu', 0) ;

#
# End of data contents of table `wp_terms`
# --------------------------------------------------------



#
# Delete any existing table `wp_usermeta`
#

DROP TABLE IF EXISTS `wp_usermeta`;


#
# Table structure of table `wp_usermeta`
#

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_usermeta`
#
INSERT INTO `wp_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'lemp_g'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:4:{s:64:"1493a23242047774de91d7bd6bc142bff366369bed98b9a70e6f1e0325ef162e";a:4:{s:10:"expiration";i:1526911258;s:2:"ip";s:10:"172.18.0.1";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36";s:5:"login";i:1525701658;}s:64:"1d802681f85272be46663faf7216f17885a539f37d314af86e264bcce86e31ab";a:4:{s:10:"expiration";i:1525884708;s:2:"ip";s:10:"172.18.0.1";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36";s:5:"login";i:1525711908;}s:64:"55948dad361b02d79fe0d3166d8fd4f4e6d1bca0f207d013bec00da8a72a06d7";a:4:{s:10:"expiration";i:1525890758;s:2:"ip";s:10:"172.18.0.1";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36";s:5:"login";i:1525717958;}s:64:"6034e36d2957a077cd4a540c1a5b08c951dee5e86d494afc8f39359369980b76";a:4:{s:10:"expiration";i:1525967134;s:2:"ip";s:10:"172.18.0.1";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36";s:5:"login";i:1525794334;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:10:"172.18.0.0";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:"add-post_tag";i:1;s:15:"add-post_format";}'),
(21, 1, 'nav_menu_recently_edited', '2'),
(22, 1, 'closedpostboxes_acf', 'a:0:{}'),
(23, 1, 'metaboxhidden_acf', 'a:1:{i:0;s:7:"slugdiv";}'),
(24, 1, 'closedpostboxes_component', 'a:1:{i:0;s:10:"postcustom";}'),
(25, 1, 'metaboxhidden_component', 'a:2:{i:0;s:6:"acf_39";i:1;s:7:"slugdiv";}') ;

#
# End of data contents of table `wp_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_users`
#

DROP TABLE IF EXISTS `wp_users`;


#
# Table structure of table `wp_users`
#

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_users`
#
INSERT INTO `wp_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'lemp_g', '$P$BOSfaUcA2KrhNmedpAV0OmmjkHknv91', 'lemp_g', 'bayon.forte@advancedsolutions.com', '', '2018-05-07 14:00:47', '', 0, 'lemp_g') ;

#
# End of data contents of table `wp_users`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#

