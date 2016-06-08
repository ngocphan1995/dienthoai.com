-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2016 at 09:00 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dienthoai`
--

-- --------------------------------------------------------

--
-- Table structure for table `nv4_authors`
--

DROP TABLE IF EXISTS `nv4_authors`;
CREATE TABLE IF NOT EXISTS `nv4_authors` (
  `admin_id` mediumint(8) unsigned NOT NULL,
  `editor` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `lev` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `files_level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `addtime` int(11) NOT NULL DEFAULT '0',
  `edittime` int(11) NOT NULL DEFAULT '0',
  `is_suspend` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `susp_reason` text COLLATE utf8mb4_unicode_ci,
  `check_num` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` int(11) unsigned NOT NULL DEFAULT '0',
  `last_ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_authors`
--

INSERT INTO `nv4_authors` (`admin_id`, `editor`, `lev`, `files_level`, `position`, `addtime`, `edittime`, `is_suspend`, `susp_reason`, `check_num`, `last_login`, `last_ip`, `last_agent`) VALUES
(1, 'ckeditor', 1, 'adobe,archives,audio,documents,flash,images,real,video|1|1|1', 'Administrator', 0, 0, 0, '', 'bf459dc2f7bdc64cd8ab9a58cd3ed28b', 1465368828, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_authors_config`
--

DROP TABLE IF EXISTS `nv4_authors_config`;
CREATE TABLE IF NOT EXISTS `nv4_authors_config` (
`id` mediumint(8) unsigned NOT NULL,
  `keyname` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mask` tinyint(4) NOT NULL DEFAULT '0',
  `begintime` int(11) DEFAULT NULL,
  `endtime` int(11) DEFAULT NULL,
  `notice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_authors_module`
--

DROP TABLE IF EXISTS `nv4_authors_module`;
CREATE TABLE IF NOT EXISTS `nv4_authors_module` (
`mid` mediumint(8) NOT NULL,
  `module` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` mediumint(8) NOT NULL DEFAULT '0',
  `act_1` tinyint(4) NOT NULL DEFAULT '0',
  `act_2` tinyint(4) NOT NULL DEFAULT '1',
  `act_3` tinyint(4) NOT NULL DEFAULT '1',
  `checksum` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_authors_module`
--

INSERT INTO `nv4_authors_module` (`mid`, `module`, `lang_key`, `weight`, `act_1`, `act_2`, `act_3`, `checksum`) VALUES
(1, 'siteinfo', 'mod_siteinfo', 1, 1, 1, 1, 'dca51b96d3755b746126b3f04bdfe50c'),
(2, 'authors', 'mod_authors', 2, 1, 1, 1, '3a84d0c40392f51a6ff011dc3c725263'),
(3, 'settings', 'mod_settings', 3, 1, 1, 0, '32847a912480604672b7f014df60ad03'),
(4, 'database', 'mod_database', 4, 1, 0, 0, '854148dd5f67f7afa7bf385106e72a1f'),
(5, 'webtools', 'mod_webtools', 5, 1, 0, 0, '96d425cc267bc8a121f995b6322197ff'),
(6, 'seotools', 'mod_seotools', 6, 1, 0, 0, '5e567a3c5b3f4e0446ca969392b2e681'),
(7, 'language', 'mod_language', 7, 1, 1, 0, 'fe6ff124027bc204702e1af9412355f3'),
(8, 'modules', 'mod_modules', 8, 1, 1, 0, '76f5df47a0dfe1967761712ddeeb81b3'),
(9, 'themes', 'mod_themes', 9, 1, 1, 0, '02be14948a9c347d315505ee09c0752d'),
(10, 'extensions', 'mod_extensions', 10, 1, 0, 0, '0df51c882041f773ff9ea64ee400155e'),
(11, 'upload', 'mod_upload', 11, 1, 1, 1, '288b9803639ae999b4981b05bdfc628d');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_banip`
--

DROP TABLE IF EXISTS `nv4_banip`;
CREATE TABLE IF NOT EXISTS `nv4_banip` (
`id` mediumint(8) NOT NULL,
  `ip` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mask` tinyint(4) NOT NULL DEFAULT '0',
  `area` tinyint(3) NOT NULL,
  `begintime` int(11) DEFAULT NULL,
  `endtime` int(11) DEFAULT NULL,
  `notice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_banners_click`
--

DROP TABLE IF EXISTS `nv4_banners_click`;
CREATE TABLE IF NOT EXISTS `nv4_banners_click` (
  `bid` mediumint(8) NOT NULL DEFAULT '0',
  `click_time` int(11) unsigned NOT NULL DEFAULT '0',
  `click_day` int(2) NOT NULL,
  `click_ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_country` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_browse_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_browse_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_os_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_os_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_ref` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_banners_clients`
--

DROP TABLE IF EXISTS `nv4_banners_clients`;
CREATE TABLE IF NOT EXISTS `nv4_banners_clients` (
`id` mediumint(8) unsigned NOT NULL,
  `login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pass` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reg_time` int(11) unsigned NOT NULL DEFAULT '0',
  `full_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `yim` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fax` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `act` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `check_num` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` int(11) unsigned NOT NULL DEFAULT '0',
  `last_ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uploadtype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_banners_plans`
--

DROP TABLE IF EXISTS `nv4_banners_plans`;
CREATE TABLE IF NOT EXISTS `nv4_banners_plans` (
`id` smallint(5) unsigned NOT NULL,
  `blang` char(2) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `form` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `width` smallint(4) unsigned NOT NULL DEFAULT '0',
  `height` smallint(4) unsigned NOT NULL DEFAULT '0',
  `act` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_banners_plans`
--

INSERT INTO `nv4_banners_plans` (`id`, `blang`, `title`, `description`, `form`, `width`, `height`, `act`) VALUES
(1, '', 'Quang cao giua trang', '', 'sequential', 510, 100, 1),
(2, '', 'Quang cao trai', '', 'sequential', 190, 500, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_banners_rows`
--

DROP TABLE IF EXISTS `nv4_banners_rows`;
CREATE TABLE IF NOT EXISTS `nv4_banners_rows` (
`id` mediumint(8) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `clid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_ext` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_mime` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `width` int(4) unsigned NOT NULL DEFAULT '0',
  `height` int(4) unsigned NOT NULL DEFAULT '0',
  `file_alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imageforswf` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `click_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `target` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_blank',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',
  `publ_time` int(11) unsigned NOT NULL DEFAULT '0',
  `exp_time` int(11) unsigned NOT NULL DEFAULT '0',
  `hits_total` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `act` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_banners_rows`
--

INSERT INTO `nv4_banners_rows` (`id`, `title`, `pid`, `clid`, `file_name`, `file_ext`, `file_mime`, `width`, `height`, `file_alt`, `imageforswf`, `click_url`, `target`, `add_time`, `publ_time`, `exp_time`, `hits_total`, `act`, `weight`) VALUES
(1, 'Bo ngoai giao', 2, 0, 'bongoaigiao.jpg', 'jpg', 'image/jpeg', 160, 54, '', '', 'http://www.mofa.gov.vn', '_blank', 1453277351, 1453277351, 0, 0, 1, 1),
(2, 'vinades', 2, 0, 'vinades.jpg', 'jpg', 'image/jpeg', 190, 454, '', '', 'http://vinades.vn', '_blank', 1453277351, 1453277351, 0, 0, 1, 2),
(3, 'Quang cao giua trang', 1, 0, 'webnhanh_vn.png', 'png', 'image/png', 510, 65, '', '', 'http://webnhanh.vn', '_blank', 1453277351, 1453277351, 0, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_config`
--

DROP TABLE IF EXISTS `nv4_config`;
CREATE TABLE IF NOT EXISTS `nv4_config` (
  `lang` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sys',
  `module` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'global',
  `config_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `config_value` text COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_config`
--

INSERT INTO `nv4_config` (`lang`, `module`, `config_name`, `config_value`) VALUES
('sys', 'site', 'closed_site', '0'),
('sys', 'site', 'admin_theme', 'admin_default'),
('sys', 'site', 'date_pattern', 'l, d/m/Y'),
('sys', 'site', 'time_pattern', 'H:i'),
('sys', 'site', 'online_upd', '1'),
('sys', 'site', 'statistic', '1'),
('sys', 'site', 'mailer_mode', ''),
('sys', 'site', 'smtp_host', 'smtp.gmail.com'),
('sys', 'site', 'smtp_ssl', '1'),
('sys', 'site', 'smtp_port', '465'),
('sys', 'site', 'smtp_username', 'user@gmail.com'),
('sys', 'site', 'smtp_password', ''),
('sys', 'site', 'googleAnalyticsID', ''),
('sys', 'site', 'googleAnalyticsSetDomainName', '0'),
('sys', 'site', 'googleAnalyticsMethod', 'classic'),
('sys', 'site', 'searchEngineUniqueID', ''),
('sys', 'site', 'metaTagsOgp', '1'),
('sys', 'site', 'pageTitleMode', 'pagetitle'),
('sys', 'site', 'description_length', '170'),
('sys', 'global', 'ssl_https', '0'),
('sys', 'global', 'notification_active', '1'),
('sys', 'global', 'notification_autodel', '15'),
('sys', 'global', 'site_keywords', 'NukeViet, portal, mysql, php'),
('sys', 'global', 'site_phone', ''),
('sys', 'global', 'block_admin_ip', '0'),
('sys', 'global', 'admfirewall', '0'),
('sys', 'global', 'dump_autobackup', '1'),
('sys', 'global', 'dump_backup_ext', 'gz'),
('sys', 'global', 'dump_backup_day', '30'),
('sys', 'global', 'gfx_chk', '3'),
('sys', 'global', 'file_allowed_ext', 'adobe,archives,audio,documents,flash,images,real,video'),
('sys', 'global', 'forbid_extensions', 'php,php3,php4,php5,phtml,inc'),
('sys', 'global', 'forbid_mimes', ''),
('sys', 'global', 'nv_max_size', '2097152'),
('sys', 'global', 'upload_checking_mode', 'mild'),
('sys', 'global', 'upload_alt_require', '1'),
('sys', 'global', 'upload_auto_alt', '1'),
('sys', 'global', 'allowuserreg', '1'),
('sys', 'global', 'allowuserlogin', '1'),
('sys', 'global', 'allowuserloginmulti', '0'),
('sys', 'global', 'allowloginchange', '0'),
('sys', 'global', 'allowquestion', '0'),
('sys', 'global', 'allowuserpublic', '1'),
('sys', 'global', 'useactivate', '2'),
('sys', 'global', 'allowmailchange', '1'),
('sys', 'global', 'allow_sitelangs', 'vi'),
('sys', 'global', 'read_type', '0'),
('sys', 'global', 'rewrite_optional', '0'),
('sys', 'global', 'rewrite_endurl', '/'),
('sys', 'global', 'rewrite_exturl', '.html'),
('sys', 'global', 'rewrite_op_mod', ''),
('sys', 'global', 'autocheckupdate', '1'),
('sys', 'global', 'autoupdatetime', '24'),
('sys', 'global', 'gzip_method', '1'),
('sys', 'global', 'is_user_forum', '0'),
('sys', 'global', 'authors_detail_main', '0'),
('sys', 'global', 'spadmin_add_admin', '1'),
('sys', 'global', 'openid_servers', ''),
('sys', 'global', 'timestamp', '5'),
('sys', 'global', 'openid_processing', '0'),
('sys', 'global', 'captcha_type', '1'),
('sys', 'global', 'version', '4.0.29'),
('sys', 'global', 'whoviewuser', '2'),
('sys', 'global', 'facebook_client_id', ''),
('sys', 'global', 'facebook_client_secret', ''),
('sys', 'global', 'google_client_id', ''),
('sys', 'global', 'google_client_secret', ''),
('sys', 'global', 'cookie_httponly', '1'),
('sys', 'global', 'admin_check_pass_time', '1800'),
('sys', 'global', 'user_check_pass_time', '1800'),
('sys', 'global', 'auto_login_after_reg', '1'),
('vi', 'global', 'theme_type', 'r,d,m'),
('sys', 'global', 'cookie_secure', '0'),
('sys', 'global', 'nv_unick_type', '4'),
('sys', 'global', 'nv_upass_type', '2'),
('sys', 'global', 'is_flood_blocker', '1'),
('sys', 'global', 'max_requests_60', '40'),
('sys', 'global', 'max_requests_300', '150'),
('sys', 'global', 'nv_display_errors_list', '1'),
('sys', 'global', 'display_errors_list', '1'),
('sys', 'global', 'nv_auto_resize', '1'),
('sys', 'global', 'dump_interval', '1'),
('sys', 'global', 'cdn_url', ''),
('sys', 'define', 'nv_unickmin', '4'),
('sys', 'define', 'nv_unickmax', '20'),
('sys', 'define', 'nv_upassmin', '8'),
('sys', 'define', 'nv_upassmax', '20'),
('sys', 'define', 'nv_gfx_num', '6'),
('sys', 'define', 'nv_gfx_width', '150'),
('sys', 'define', 'nv_gfx_height', '40'),
('sys', 'define', 'nv_max_width', '1500'),
('sys', 'define', 'nv_max_height', '1500'),
('sys', 'define', 'nv_live_cookie_time', '31104000'),
('sys', 'define', 'nv_live_session_time', '0'),
('sys', 'define', 'nv_anti_iframe', '0'),
('sys', 'define', 'nv_anti_agent', '0'),
('sys', 'define', 'nv_allowed_html_tags', 'embed, object, param, a, b, blockquote, br, caption, col, colgroup, div, em, h1, h2, h3, h4, h5, h6, hr, i, img, li, p, span, strong, sub, sup, table, tbody, td, th, tr, u, ul, ol, iframe, figure, figcaption, video, audio, source, track, code, pre'),
('sys', 'define', 'dir_forum', ''),
('vi', 'global', 'site_domain', ''),
('vi', 'global', 'site_name', 'Phan Thị Ngọc'),
('vi', 'global', 'site_logo', ''),
('vi', 'global', 'site_banner', ''),
('vi', 'global', 'site_favicon', ''),
('vi', 'global', 'site_description', 'Chia sẻ thành công, kết nối đam mê'),
('vi', 'global', 'site_keywords', ''),
('vi', 'global', 'site_theme', 'dienthoai'),
('vi', 'global', 'mobile_theme', 'mobile_default'),
('vi', 'global', 'site_home_module', 'shops'),
('vi', 'global', 'switch_mobi_des', '1'),
('vi', 'global', 'upload_logo', ''),
('vi', 'global', 'upload_logo_pos', 'bottomRight'),
('vi', 'global', 'autologosize1', '50'),
('vi', 'global', 'autologosize2', '40'),
('vi', 'global', 'autologosize3', '30'),
('vi', 'global', 'autologomod', ''),
('vi', 'global', 'name_show', '0'),
('vi', 'global', 'cronjobs_next_time', '1465369097'),
('vi', 'global', 'disable_site_content', 'Vì lý do kỹ thuật website tạm ngưng hoạt động. Thành thật xin lỗi các bạn vì sự bất tiện này!'),
('vi', 'global', 'ssl_https_modules', ''),
('vi', 'seotools', 'prcservice', ''),
('vi', 'about', 'auto_postcomm', '1'),
('vi', 'about', 'allowed_comm', '-1'),
('vi', 'about', 'view_comm', '6'),
('vi', 'about', 'setcomm', '4'),
('vi', 'about', 'activecomm', '0'),
('vi', 'about', 'emailcomm', '0'),
('vi', 'about', 'adminscomm', ''),
('vi', 'about', 'sortcomm', '0'),
('vi', 'about', 'captcha', '1'),
('vi', 'news', 'indexfile', 'viewcat_main_right'),
('vi', 'news', 'per_page', '20'),
('vi', 'news', 'st_links', '10'),
('vi', 'news', 'homewidth', '100'),
('vi', 'news', 'homeheight', '150'),
('vi', 'news', 'blockwidth', '52'),
('vi', 'news', 'blockheight', '75'),
('vi', 'news', 'imagefull', '460'),
('vi', 'news', 'copyright', 'Chú ý: Việc đăng lại bài viết trên ở website hoặc các phương tiện truyền thông khác mà không ghi rõ nguồn http://nukeviet.vn là vi phạm bản quyền'),
('vi', 'news', 'showtooltip', '1'),
('vi', 'news', 'tooltip_position', 'bottom'),
('vi', 'news', 'tooltip_length', '150'),
('vi', 'news', 'showhometext', '1'),
('vi', 'news', 'timecheckstatus', '0'),
('vi', 'news', 'config_source', '0'),
('vi', 'news', 'show_no_image', ''),
('vi', 'news', 'allowed_rating_point', '1'),
('vi', 'news', 'facebookappid', ''),
('vi', 'news', 'socialbutton', '1'),
('vi', 'news', 'alias_lower', '1'),
('vi', 'news', 'tags_alias', '0'),
('vi', 'news', 'auto_tags', '0'),
('vi', 'news', 'tags_remind', '1'),
('vi', 'news', 'structure_upload', 'Ym'),
('vi', 'news', 'imgposition', '2'),
('vi', 'news', 'auto_postcomm', '1'),
('vi', 'news', 'allowed_comm', '-1'),
('vi', 'news', 'view_comm', '6'),
('vi', 'news', 'setcomm', '4'),
('vi', 'news', 'activecomm', '1'),
('vi', 'news', 'emailcomm', '0'),
('vi', 'news', 'adminscomm', ''),
('vi', 'news', 'sortcomm', '0'),
('vi', 'news', 'captcha', '1'),
('vi', 'page', 'auto_postcomm', '1'),
('vi', 'page', 'allowed_comm', '-1'),
('vi', 'page', 'view_comm', '6'),
('vi', 'page', 'setcomm', '4'),
('vi', 'page', 'activecomm', '0'),
('vi', 'page', 'emailcomm', '0'),
('vi', 'page', 'adminscomm', ''),
('vi', 'page', 'sortcomm', '0'),
('vi', 'page', 'captcha', '1'),
('vi', 'siteterms', 'auto_postcomm', '1'),
('vi', 'siteterms', 'allowed_comm', '-1'),
('vi', 'siteterms', 'view_comm', '6'),
('vi', 'siteterms', 'setcomm', '4'),
('vi', 'siteterms', 'activecomm', '0'),
('vi', 'siteterms', 'emailcomm', '0'),
('vi', 'siteterms', 'adminscomm', ''),
('vi', 'siteterms', 'sortcomm', '0'),
('vi', 'siteterms', 'captcha', '1'),
('vi', 'freecontent', 'next_execute', '0'),
('vi', 'contact', 'bodytext', 'Để không ngừng nâng cao chất lượng dịch vụ và đáp ứng tốt hơn nữa các yêu cầu của Quý khách, chúng tôi mong muốn nhận được các thông tin phản hồi. Nếu Quý khách có bất kỳ thắc mắc hoặc đóng góp nào, xin vui lòng liên hệ với chúng tôi theo thông tin dưới đây. Chúng tôi sẽ phản hồi lại Quý khách trong thời gian sớm nhất.'),
('sys', 'site', 'statistics_timezone', 'Asia/Bangkok'),
('sys', 'site', 'site_email', 'ngocphan12031995@gmail.com'),
('sys', 'global', 'error_set_logs', '1'),
('sys', 'global', 'error_send_email', 'ngocphan12031995@gmail.com'),
('sys', 'global', 'site_lang', 'vi'),
('sys', 'global', 'my_domains', 'dienthoai.com'),
('sys', 'global', 'cookie_prefix', 'nv4c_o3Am4'),
('sys', 'global', 'session_prefix', 'nv4s_h56mg4'),
('sys', 'global', 'site_timezone', 'byCountry'),
('sys', 'global', 'proxy_blocker', '0'),
('sys', 'global', 'str_referer_blocker', '0'),
('sys', 'global', 'lang_multi', '1'),
('sys', 'global', 'lang_geo', '0'),
('sys', 'global', 'ftp_server', 'localhost'),
('sys', 'global', 'ftp_port', '21'),
('sys', 'global', 'ftp_user_name', ''),
('sys', 'global', 'ftp_user_pass', 'miPk_GNE9ZjhrRAiWMfgEJoj5PxjRPWY4a0QIljH4BA,'),
('sys', 'global', 'ftp_path', '/'),
('sys', 'global', 'ftp_check_login', '0'),
('vi', 'shops', 'image_size', '100x100'),
('vi', 'shops', 'home_view', 'view_home_all'),
('vi', 'shops', 'per_page', '20'),
('vi', 'shops', 'per_row', '3'),
('vi', 'shops', 'money_unit', 'VND'),
('vi', 'shops', 'weight_unit', 'g'),
('vi', 'shops', 'post_auto_member', '0'),
('vi', 'shops', 'auto_check_order', '1'),
('vi', 'shops', 'format_order_id', 'S%06s'),
('vi', 'shops', 'format_code_id', 'S%06s'),
('vi', 'shops', 'facebookappid', ''),
('vi', 'shops', 'active_guest_order', '1'),
('vi', 'shops', 'active_showhomtext', '1'),
('vi', 'shops', 'active_order', '1'),
('vi', 'shops', 'active_order_popup', '1'),
('vi', 'shops', 'active_order_non_detail', '1'),
('vi', 'shops', 'active_price', '1'),
('vi', 'shops', 'active_order_number', '0'),
('vi', 'shops', 'order_day', '0'),
('vi', 'shops', 'order_nexttime', '0'),
('vi', 'shops', 'active_payment', '1'),
('vi', 'shops', 'groups_price', '3'),
('vi', 'shops', 'active_tooltip', '1'),
('vi', 'shops', 'timecheckstatus', '0'),
('vi', 'shops', 'show_product_code', '1'),
('vi', 'shops', 'show_compare', '0'),
('vi', 'shops', 'show_displays', '0'),
('vi', 'shops', 'use_shipping', '0'),
('vi', 'shops', 'use_coupons', '0'),
('vi', 'shops', 'active_wishlist', '1'),
('vi', 'shops', 'active_gift', '1'),
('vi', 'shops', 'active_warehouse', '1'),
('vi', 'shops', 'tags_alias', '0'),
('vi', 'shops', 'auto_tags', '1'),
('vi', 'shops', 'tags_remind', '0'),
('vi', 'shops', 'point_active', '0'),
('vi', 'shops', 'point_conversion', '0'),
('vi', 'shops', 'point_new_order', '0'),
('vi', 'shops', 'review_active', '1'),
('vi', 'shops', 'review_check', '1'),
('vi', 'shops', 'review_captcha', '1'),
('vi', 'shops', 'group_price', ''),
('vi', 'shops', 'groups_notify', '3'),
('vi', 'shops', 'template_active', '0'),
('vi', 'shops', 'download_active', '0'),
('vi', 'shops', 'download_groups', '6'),
('vi', 'shops', 'alias_lower', '1'),
('vi', 'shops', 'auto_postcomm', '1'),
('vi', 'shops', 'allowed_comm', '-1'),
('vi', 'shops', 'view_comm', '6'),
('vi', 'shops', 'setcomm', '4'),
('vi', 'shops', 'activecomm', '1'),
('vi', 'shops', 'emailcomm', '0'),
('vi', 'shops', 'adminscomm', ''),
('vi', 'shops', 'sortcomm', '0'),
('vi', 'shops', 'captcha', '1');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_cookies`
--

DROP TABLE IF EXISTS `nv4_cookies`;
CREATE TABLE IF NOT EXISTS `nv4_cookies` (
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `expires` int(11) NOT NULL DEFAULT '0',
  `secure` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_counter`
--

DROP TABLE IF EXISTS `nv4_counter`;
CREATE TABLE IF NOT EXISTS `nv4_counter` (
  `c_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_val` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_update` int(11) NOT NULL DEFAULT '0',
  `c_count` int(11) unsigned NOT NULL DEFAULT '0',
  `vi_count` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_counter`
--

INSERT INTO `nv4_counter` (`c_type`, `c_val`, `last_update`, `c_count`, `vi_count`) VALUES
('c_time', 'start', 0, 0, 0),
('c_time', 'last', 0, 1465368780, 0),
('total', 'hits', 1465368780, 149, 149),
('year', '2016', 1465368780, 149, 149),
('year', '2017', 0, 0, 0),
('year', '2018', 0, 0, 0),
('year', '2019', 0, 0, 0),
('year', '2020', 0, 0, 0),
('year', '2021', 0, 0, 0),
('year', '2022', 0, 0, 0),
('year', '2023', 0, 0, 0),
('year', '2024', 0, 0, 0),
('month', 'Jan', 1454063256, 78, 78),
('month', 'Feb', 1456708450, 54, 54),
('month', 'Mar', 1457624233, 7, 7),
('month', 'Apr', 1460304783, 2, 2),
('month', 'May', 1464605308, 6, 6),
('month', 'Jun', 1465368780, 2, 2),
('month', 'Jul', 0, 0, 0),
('month', 'Aug', 0, 0, 0),
('month', 'Sep', 0, 0, 0),
('month', 'Oct', 0, 0, 0),
('month', 'Nov', 0, 0, 0),
('month', 'Dec', 0, 0, 0),
('day', '01', 0, 0, 0),
('day', '02', 0, 0, 0),
('day', '03', 0, 0, 0),
('day', '04', 1457109819, 0, 0),
('day', '05', 1457113422, 0, 0),
('day', '06', 1465179304, 1, 1),
('day', '07', 0, 0, 0),
('day', '08', 1465368780, 1, 1),
('day', '09', 0, 0, 0),
('day', '10', 1460304783, 0, 0),
('day', '11', 0, 0, 0),
('day', '12', 0, 0, 0),
('day', '13', 0, 0, 0),
('day', '14', 0, 0, 0),
('day', '15', 1455529440, 0, 0),
('day', '16', 1463373052, 0, 0),
('day', '17', 1455725527, 0, 0),
('day', '18', 1463505325, 0, 0),
('day', '19', 1455875990, 0, 0),
('day', '20', 1453283347, 0, 0),
('day', '21', 1456071811, 0, 0),
('day', '22', 1453480926, 0, 0),
('day', '23', 1456222515, 0, 0),
('day', '24', 1456306629, 0, 0),
('day', '25', 1464164562, 0, 0),
('day', '26', 1453825988, 0, 0),
('day', '27', 1464338186, 0, 0),
('day', '28', 0, 0, 0),
('day', '29', 1456708450, 0, 0),
('day', '30', 1464605308, 0, 0),
('day', '31', 0, 0, 0),
('dayofweek', 'Sunday', 1460304783, 7, 7),
('dayofweek', 'Monday', 1465179304, 17, 17),
('dayofweek', 'Tuesday', 1456222515, 28, 28),
('dayofweek', 'Wednesday', 1465368780, 38, 38),
('dayofweek', 'Thursday', 1457624233, 4, 4),
('dayofweek', 'Friday', 1464338186, 39, 39),
('dayofweek', 'Saturday', 1457113422, 16, 16),
('hour', '00', 1463505325, 0, 0),
('hour', '01', 1453572400, 0, 0),
('hour', '02', 0, 0, 0),
('hour', '03', 0, 0, 0),
('hour', '04', 0, 0, 0),
('hour', '05', 0, 0, 0),
('hour', '06', 0, 0, 0),
('hour', '07', 1456361142, 0, 0),
('hour', '08', 1456708450, 0, 0),
('hour', '09', 1465179304, 0, 0),
('hour', '10', 1453433388, 0, 0),
('hour', '11', 1463373052, 0, 0),
('hour', '12', 1455600760, 0, 0),
('hour', '13', 1465368780, 1, 1),
('hour', '14', 1456299587, 0, 0),
('hour', '15', 1464338186, 0, 0),
('hour', '16', 1460107060, 0, 0),
('hour', '17', 1464605308, 0, 0),
('hour', '18', 1453807341, 0, 0),
('hour', '19', 1453811617, 0, 0),
('hour', '20', 1453815220, 0, 0),
('hour', '21', 1455721162, 0, 0),
('hour', '22', 1457624233, 0, 0),
('hour', '23', 1460304783, 0, 0),
('bot', 'googlebot', 0, 0, 0),
('bot', 'msnbot', 0, 0, 0),
('bot', 'bingbot', 0, 0, 0),
('bot', 'yahooslurp', 0, 0, 0),
('bot', 'w3cvalidator', 0, 0, 0),
('browser', 'opera', 0, 0, 0),
('browser', 'operamini', 0, 0, 0),
('browser', 'webtv', 0, 0, 0),
('browser', 'explorer', 0, 0, 0),
('browser', 'edge', 0, 0, 0),
('browser', 'pocket', 0, 0, 0),
('browser', 'konqueror', 0, 0, 0),
('browser', 'icab', 0, 0, 0),
('browser', 'omniweb', 0, 0, 0),
('browser', 'firebird', 0, 0, 0),
('browser', 'firefox', 1464338186, 1, 1),
('browser', 'iceweasel', 0, 0, 0),
('browser', 'shiretoko', 0, 0, 0),
('browser', 'mozilla', 0, 0, 0),
('browser', 'amaya', 0, 0, 0),
('browser', 'lynx', 0, 0, 0),
('browser', 'safari', 0, 0, 0),
('browser', 'iphone', 0, 0, 0),
('browser', 'ipod', 0, 0, 0),
('browser', 'ipad', 0, 0, 0),
('browser', 'chrome', 1465368780, 4, 4),
('browser', 'android', 0, 0, 0),
('browser', 'googlebot', 0, 0, 0),
('browser', 'yahooslurp', 0, 0, 0),
('browser', 'w3cvalidator', 0, 0, 0),
('browser', 'blackberry', 0, 0, 0),
('browser', 'icecat', 0, 0, 0),
('browser', 'nokias60', 0, 0, 0),
('browser', 'nokia', 0, 0, 0),
('browser', 'msn', 0, 0, 0),
('browser', 'msnbot', 0, 0, 0),
('browser', 'bingbot', 0, 0, 0),
('browser', 'netscape', 0, 0, 0),
('browser', 'galeon', 0, 0, 0),
('browser', 'netpositive', 0, 0, 0),
('browser', 'phoenix', 0, 0, 0),
('browser', 'Mobile', 0, 0, 0),
('browser', 'bots', 0, 0, 0),
('browser', 'Unknown', 0, 0, 0),
('os', 'unknown', 0, 0, 0),
('os', 'win', 0, 0, 0),
('os', 'win10', 0, 0, 0),
('os', 'win8', 1465368780, 7, 7),
('os', 'win7', 0, 0, 0),
('os', 'win2003', 0, 0, 0),
('os', 'winvista', 0, 0, 0),
('os', 'wince', 0, 0, 0),
('os', 'winxp', 0, 0, 0),
('os', 'win2000', 0, 0, 0),
('os', 'apple', 0, 0, 0),
('os', 'linux', 0, 0, 0),
('os', 'os2', 0, 0, 0),
('os', 'beos', 0, 0, 0),
('os', 'iphone', 0, 0, 0),
('os', 'ipod', 0, 0, 0),
('os', 'ipad', 0, 0, 0),
('os', 'blackberry', 0, 0, 0),
('os', 'nokia', 0, 0, 0),
('os', 'freebsd', 0, 0, 0),
('os', 'openbsd', 0, 0, 0),
('os', 'netbsd', 0, 0, 0),
('os', 'sunos', 0, 0, 0),
('os', 'opensolaris', 0, 0, 0),
('os', 'android', 0, 0, 0),
('os', 'irix', 0, 0, 0),
('os', 'palm', 0, 0, 0),
('country', 'AD', 0, 0, 0),
('country', 'AE', 0, 0, 0),
('country', 'AF', 0, 0, 0),
('country', 'AG', 0, 0, 0),
('country', 'AI', 0, 0, 0),
('country', 'AL', 0, 0, 0),
('country', 'AM', 0, 0, 0),
('country', 'AN', 0, 0, 0),
('country', 'AO', 0, 0, 0),
('country', 'AQ', 0, 0, 0),
('country', 'AR', 0, 0, 0),
('country', 'AS', 0, 0, 0),
('country', 'AT', 0, 0, 0),
('country', 'AU', 0, 0, 0),
('country', 'AW', 0, 0, 0),
('country', 'AZ', 0, 0, 0),
('country', 'BA', 0, 0, 0),
('country', 'BB', 0, 0, 0),
('country', 'BD', 0, 0, 0),
('country', 'BE', 0, 0, 0),
('country', 'BF', 0, 0, 0),
('country', 'BG', 0, 0, 0),
('country', 'BH', 0, 0, 0),
('country', 'BI', 0, 0, 0),
('country', 'BJ', 0, 0, 0),
('country', 'BM', 0, 0, 0),
('country', 'BN', 0, 0, 0),
('country', 'BO', 0, 0, 0),
('country', 'BR', 0, 0, 0),
('country', 'BS', 0, 0, 0),
('country', 'BT', 0, 0, 0),
('country', 'BW', 0, 0, 0),
('country', 'BY', 0, 0, 0),
('country', 'BZ', 0, 0, 0),
('country', 'CA', 0, 0, 0),
('country', 'CD', 0, 0, 0),
('country', 'CF', 0, 0, 0),
('country', 'CG', 0, 0, 0),
('country', 'CH', 0, 0, 0),
('country', 'CI', 0, 0, 0),
('country', 'CK', 0, 0, 0),
('country', 'CL', 0, 0, 0),
('country', 'CM', 0, 0, 0),
('country', 'CN', 0, 0, 0),
('country', 'CO', 0, 0, 0),
('country', 'CR', 0, 0, 0),
('country', 'CS', 0, 0, 0),
('country', 'CU', 0, 0, 0),
('country', 'CV', 0, 0, 0),
('country', 'CY', 0, 0, 0),
('country', 'CZ', 0, 0, 0),
('country', 'DE', 0, 0, 0),
('country', 'DJ', 0, 0, 0),
('country', 'DK', 0, 0, 0),
('country', 'DM', 0, 0, 0),
('country', 'DO', 0, 0, 0),
('country', 'DZ', 0, 0, 0),
('country', 'EC', 0, 0, 0),
('country', 'EE', 0, 0, 0),
('country', 'EG', 0, 0, 0),
('country', 'ER', 0, 0, 0),
('country', 'ES', 0, 0, 0),
('country', 'ET', 0, 0, 0),
('country', 'EU', 0, 0, 0),
('country', 'FI', 0, 0, 0),
('country', 'FJ', 0, 0, 0),
('country', 'FK', 0, 0, 0),
('country', 'FM', 0, 0, 0),
('country', 'FO', 0, 0, 0),
('country', 'FR', 0, 0, 0),
('country', 'GA', 0, 0, 0),
('country', 'GB', 0, 0, 0),
('country', 'GD', 0, 0, 0),
('country', 'GE', 0, 0, 0),
('country', 'GF', 0, 0, 0),
('country', 'GH', 0, 0, 0),
('country', 'GI', 0, 0, 0),
('country', 'GL', 0, 0, 0),
('country', 'GM', 0, 0, 0),
('country', 'GN', 0, 0, 0),
('country', 'GP', 0, 0, 0),
('country', 'GQ', 0, 0, 0),
('country', 'GR', 0, 0, 0),
('country', 'GS', 0, 0, 0),
('country', 'GT', 0, 0, 0),
('country', 'GU', 0, 0, 0),
('country', 'GW', 0, 0, 0),
('country', 'GY', 0, 0, 0),
('country', 'HK', 0, 0, 0),
('country', 'HN', 0, 0, 0),
('country', 'HR', 0, 0, 0),
('country', 'HT', 0, 0, 0),
('country', 'HU', 0, 0, 0),
('country', 'ID', 0, 0, 0),
('country', 'IE', 0, 0, 0),
('country', 'IL', 0, 0, 0),
('country', 'IN', 0, 0, 0),
('country', 'IO', 0, 0, 0),
('country', 'IQ', 0, 0, 0),
('country', 'IR', 0, 0, 0),
('country', 'IS', 0, 0, 0),
('country', 'IT', 0, 0, 0),
('country', 'JM', 0, 0, 0),
('country', 'JO', 0, 0, 0),
('country', 'JP', 0, 0, 0),
('country', 'KE', 0, 0, 0),
('country', 'KG', 0, 0, 0),
('country', 'KH', 0, 0, 0),
('country', 'KI', 0, 0, 0),
('country', 'KM', 0, 0, 0),
('country', 'KN', 0, 0, 0),
('country', 'KR', 0, 0, 0),
('country', 'KW', 0, 0, 0),
('country', 'KY', 0, 0, 0),
('country', 'KZ', 0, 0, 0),
('country', 'LA', 0, 0, 0),
('country', 'LB', 0, 0, 0),
('country', 'LC', 0, 0, 0),
('country', 'LI', 0, 0, 0),
('country', 'LK', 0, 0, 0),
('country', 'LR', 0, 0, 0),
('country', 'LS', 0, 0, 0),
('country', 'LT', 0, 0, 0),
('country', 'LU', 0, 0, 0),
('country', 'LV', 0, 0, 0),
('country', 'LY', 0, 0, 0),
('country', 'MA', 0, 0, 0),
('country', 'MC', 0, 0, 0),
('country', 'MD', 0, 0, 0),
('country', 'MG', 0, 0, 0),
('country', 'MH', 0, 0, 0),
('country', 'MK', 0, 0, 0),
('country', 'ML', 0, 0, 0),
('country', 'MM', 0, 0, 0),
('country', 'MN', 0, 0, 0),
('country', 'MO', 0, 0, 0),
('country', 'MP', 0, 0, 0),
('country', 'MQ', 0, 0, 0),
('country', 'MR', 0, 0, 0),
('country', 'MT', 0, 0, 0),
('country', 'MU', 0, 0, 0),
('country', 'MV', 0, 0, 0),
('country', 'MW', 0, 0, 0),
('country', 'MX', 0, 0, 0),
('country', 'MY', 0, 0, 0),
('country', 'MZ', 0, 0, 0),
('country', 'NA', 0, 0, 0),
('country', 'NC', 0, 0, 0),
('country', 'NE', 0, 0, 0),
('country', 'NF', 0, 0, 0),
('country', 'NG', 0, 0, 0),
('country', 'NI', 0, 0, 0),
('country', 'NL', 0, 0, 0),
('country', 'NO', 0, 0, 0),
('country', 'NP', 0, 0, 0),
('country', 'NR', 0, 0, 0),
('country', 'NU', 0, 0, 0),
('country', 'NZ', 0, 0, 0),
('country', 'OM', 0, 0, 0),
('country', 'PA', 0, 0, 0),
('country', 'PE', 0, 0, 0),
('country', 'PF', 0, 0, 0),
('country', 'PG', 0, 0, 0),
('country', 'PH', 0, 0, 0),
('country', 'PK', 0, 0, 0),
('country', 'PL', 0, 0, 0),
('country', 'PR', 0, 0, 0),
('country', 'PS', 0, 0, 0),
('country', 'PT', 0, 0, 0),
('country', 'PW', 0, 0, 0),
('country', 'PY', 0, 0, 0),
('country', 'QA', 0, 0, 0),
('country', 'RE', 0, 0, 0),
('country', 'RO', 0, 0, 0),
('country', 'RU', 0, 0, 0),
('country', 'RW', 0, 0, 0),
('country', 'SA', 0, 0, 0),
('country', 'SB', 0, 0, 0),
('country', 'SC', 0, 0, 0),
('country', 'SD', 0, 0, 0),
('country', 'SE', 0, 0, 0),
('country', 'SG', 0, 0, 0),
('country', 'SI', 0, 0, 0),
('country', 'SK', 0, 0, 0),
('country', 'SL', 0, 0, 0),
('country', 'SM', 0, 0, 0),
('country', 'SN', 0, 0, 0),
('country', 'SO', 0, 0, 0),
('country', 'SR', 0, 0, 0),
('country', 'ST', 0, 0, 0),
('country', 'SV', 0, 0, 0),
('country', 'SY', 0, 0, 0),
('country', 'SZ', 0, 0, 0),
('country', 'TD', 0, 0, 0),
('country', 'TF', 0, 0, 0),
('country', 'TG', 0, 0, 0),
('country', 'TH', 0, 0, 0),
('country', 'TJ', 0, 0, 0),
('country', 'TK', 0, 0, 0),
('country', 'TL', 0, 0, 0),
('country', 'TM', 0, 0, 0),
('country', 'TN', 0, 0, 0),
('country', 'TO', 0, 0, 0),
('country', 'TR', 0, 0, 0),
('country', 'TT', 0, 0, 0),
('country', 'TV', 0, 0, 0),
('country', 'TW', 0, 0, 0),
('country', 'TZ', 0, 0, 0),
('country', 'UA', 0, 0, 0),
('country', 'UG', 0, 0, 0),
('country', 'US', 0, 0, 0),
('country', 'UY', 0, 0, 0),
('country', 'UZ', 0, 0, 0),
('country', 'VA', 0, 0, 0),
('country', 'VC', 0, 0, 0),
('country', 'VE', 0, 0, 0),
('country', 'VG', 0, 0, 0),
('country', 'VI', 0, 0, 0),
('country', 'VN', 0, 0, 0),
('country', 'VU', 0, 0, 0),
('country', 'WS', 0, 0, 0),
('country', 'YE', 0, 0, 0),
('country', 'YT', 0, 0, 0),
('country', 'YU', 0, 0, 0),
('country', 'ZA', 0, 0, 0),
('country', 'ZM', 0, 0, 0),
('country', 'ZW', 0, 0, 0),
('country', 'ZZ', 1465368780, 149, 149),
('country', 'unkown', 0, 0, 0),
('browser', 'coccoc', 1465179304, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_cronjobs`
--

DROP TABLE IF EXISTS `nv4_cronjobs`;
CREATE TABLE IF NOT EXISTS `nv4_cronjobs` (
`id` mediumint(8) unsigned NOT NULL,
  `start_time` int(11) unsigned NOT NULL DEFAULT '0',
  `inter_val` int(11) unsigned NOT NULL DEFAULT '0',
  `run_file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `run_func` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `del` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_sys` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `act` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `last_time` int(11) unsigned NOT NULL DEFAULT '0',
  `last_result` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `vi_cron_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_cronjobs`
--

INSERT INTO `nv4_cronjobs` (`id`, `start_time`, `inter_val`, `run_file`, `run_func`, `params`, `del`, `is_sys`, `act`, `last_time`, `last_result`, `vi_cron_name`) VALUES
(1, 1453277351, 5, 'online_expired_del.php', 'cron_online_expired_del', '', 0, 1, 1, 1465368797, 1, 'Xóa các dòng ghi trạng thái online đã cũ trong CSDL'),
(2, 1453277351, 1440, 'dump_autobackup.php', 'cron_dump_autobackup', '', 0, 1, 1, 1465368797, 1, 'Tự động lưu CSDL'),
(3, 1453277351, 60, 'temp_download_destroy.php', 'cron_auto_del_temp_download', '', 0, 1, 1, 1465368797, 1, 'Xóa các file tạm trong thư mục tmp'),
(4, 1453277351, 30, 'ip_logs_destroy.php', 'cron_del_ip_logs', '', 0, 1, 1, 1465368797, 1, 'Xóa IP log files, Xóa các file nhật ký truy cập'),
(5, 1453277351, 1440, 'error_log_destroy.php', 'cron_auto_del_error_log', '', 0, 1, 1, 1465368797, 1, 'Xóa các file error_log quá hạn'),
(6, 1453277351, 360, 'error_log_sendmail.php', 'cron_auto_sendmail_error_log', '', 0, 1, 0, 0, 0, 'Gửi email các thông báo lỗi cho admin'),
(7, 1453277351, 60, 'ref_expired_del.php', 'cron_ref_expired_del', '', 0, 1, 1, 1465368797, 1, 'Xóa các referer quá hạn'),
(9, 1453277351, 60, 'check_version.php', 'cron_auto_check_version', '', 0, 1, 1, 1465368797, 1, 'Kiểm tra phiên bản NukeViet'),
(10, 1453277351, 1440, 'notification_autodel.php', 'cron_notification_autodel', '', 0, 1, 1, 1465368797, 1, 'Xóa thông báo cũ');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_extension_files`
--

DROP TABLE IF EXISTS `nv4_extension_files`;
CREATE TABLE IF NOT EXISTS `nv4_extension_files` (
`idfile` mediumint(8) unsigned NOT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'other',
  `title` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lastmodified` int(11) unsigned NOT NULL DEFAULT '0',
  `duplicate` smallint(4) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_googleplus`
--

DROP TABLE IF EXISTS `nv4_googleplus`;
CREATE TABLE IF NOT EXISTS `nv4_googleplus` (
`gid` smallint(5) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `idprofile` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',
  `edit_time` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_language`
--

DROP TABLE IF EXISTS `nv4_language`;
CREATE TABLE IF NOT EXISTS `nv4_language` (
`id` mediumint(8) unsigned NOT NULL,
  `idfile` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lang_key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_language_file`
--

DROP TABLE IF EXISTS `nv4_language_file`;
CREATE TABLE IF NOT EXISTS `nv4_language_file` (
`idfile` mediumint(8) unsigned NOT NULL,
  `module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_file` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `langtype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_logs`
--

DROP TABLE IF EXISTS `nv4_logs`;
CREATE TABLE IF NOT EXISTS `nv4_logs` (
`id` int(11) NOT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note_action` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_acess` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL,
  `log_time` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=188 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_logs`
--

INSERT INTO `nv4_logs` (`id`, `lang`, `module_name`, `name_key`, `note_action`, `link_acess`, `userid`, `log_time`) VALUES
(1, 'vi', 'login', '[ngocphan12031995@gmail.com] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1453277401),
(2, 'vi', 'modules', 'Thiết lập module mới shops', '', '', 1, 1453277450),
(3, 'vi', 'modules', 'Sửa module &ldquo;shops&rdquo;', '', '', 1, 1453277456),
(4, 'vi', 'themes', 'Thêm block', 'Name : global block bxproduct center', '', 1, 1453277497),
(5, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1453277734),
(6, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1453277775),
(7, 'vi', 'themes', 'Thiết lập giao diện theme: "dienthoai"', '', '', 1, 1453278502),
(8, 'vi', 'themes', 'Kích hoạt theme: "dienthoai"', '', '', 1, 1453278512),
(9, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1453278557),
(10, 'vi', 'themes', 'Sửa block', 'Name : Menu Site', '', 1, 1453281383),
(11, 'vi', 'themes', 'Thêm block', 'Name : global company info', '', 1, 1453284935),
(12, 'vi', 'login', '[ngocphan12031995@gmail.com] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1453392095),
(13, 'vi', 'upload', 'Upload file', 'uploads/1.jpg', '', 1, 1453392384),
(14, 'vi', 'upload', 'Upload file', 'uploads/2.png', '', 1, 1453392396),
(15, 'vi', 'themes', 'Thêm block', 'Name : global image', '', 1, 1453392408),
(16, 'vi', 'themes', 'Sửa block', 'Name : global image', '', 1, 1453392426),
(17, 'vi', 'themes', 'Sửa block', 'Name : global image', '', 1, 1453392539),
(18, 'vi', 'themes', 'Sửa block', 'Name : global image', '', 1, 1453392624),
(19, 'vi', 'themes', 'Sửa block', 'Name : global image', '', 1, 1453394386),
(20, 'vi', 'themes', 'Sửa block', 'Name : global image', '', 1, 1453394773),
(21, 'vi', 'themes', 'Sửa block', 'Name : global image', '', 1, 1453396053),
(22, 'vi', 'login', '[ngocphan12031995@gmail.com] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1453433383),
(23, 'vi', 'themes', 'Sửa block', 'Name : Tin mới nhất', '', 1, 1453433447),
(24, 'vi', 'themes', 'Sửa block', 'Name : Quảng cáo giữa trang', '', 1, 1453433472),
(25, 'vi', 'themes', 'Sửa block', 'Name : Quảng cáo giữa trang', '', 1, 1453433542),
(26, 'vi', 'shops', 'log_add_catalog', 'id 23', '', 1, 1453433924),
(27, 'vi', 'upload', 'Upload file', 'uploads/shops/2016_01/sp-13-320x320.jpg', '', 1, 1453434175),
(28, 'vi', 'shops', 'Add A Product', 'ID: 12', '', 1, 1453434240),
(29, 'vi', 'themes', 'Sửa block', 'Name : Sản phẩm hot', '', 1, 1453434325),
(30, 'vi', 'themes', 'Sửa block', 'Name : Sản phẩm hot', '', 1, 1453435046),
(31, 'vi', 'themes', 'Sửa block', 'Name : Sản phẩm hot', '', 1, 1453435068),
(32, 'vi', 'upload', 'Upload file', 'uploads/shops/2016_01/720.png', '', 1, 1453435314),
(33, 'vi', 'shops', 'Add A Product', 'ID: 13', '', 1, 1453435372),
(34, 'vi', 'login', '[ngocphan12031995@gmail.com] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1453444952),
(35, 'vi', 'upload', 'Upload file', 'uploads/shops/2016_01/sp-11-320x320.jpg', '', 1, 1453446170),
(36, 'vi', 'shops', 'Add A Product', 'ID: 14', '', 1, 1453446245),
(37, 'vi', 'upload', 'Xóa file', 'uploads/shops/2016_01/sp-13-320x320.jpg', '', 1, 1453446280),
(38, 'vi', 'upload', 'Upload file', 'uploads/shops/2016_01/sp-13-320x320.jpg', '', 1, 1453446295),
(39, 'vi', 'shops', 'Edit A Product', 'ID: 12', '', 1, 1453446303),
(40, 'vi', 'themes', 'Sửa block', 'Name : Sản phẩm hot', '', 1, 1453446333),
(41, 'vi', 'shops', 'Edit A Product', 'ID: 12', '', 1, 1453446381),
(42, 'vi', 'themes', 'Sửa block', 'Name : Sản phẩm hot', '', 1, 1453446555),
(43, 'vi', 'upload', 'Upload file', 'uploads/shops/2016_01/sp-12-320x320.jpg', '', 1, 1453446660),
(44, 'vi', 'shops', 'Add A Product', 'ID: 15', '', 1, 1453446742),
(45, 'vi', 'shops', 'log_del_product', 'id 13', '', 1, 1453446767),
(46, 'vi', 'shops', 'Edit A Product', 'ID: 15', '', 1, 1453446908),
(47, 'vi', 'shops', 'Edit A Product', 'ID: 14', '', 1, 1453446916),
(48, 'vi', 'shops', 'Edit A Product', 'ID: 12', '', 1, 1453446925),
(49, 'vi', 'themes', 'Sửa block', 'Name : SẢN PHẨM MỚI', '', 1, 1453446940),
(50, 'vi', 'themes', 'Sửa block', 'Name : SẢN PHẨM MỚI', '', 1, 1453446960),
(51, 'vi', 'themes', 'Sửa block', 'Name : global image', '', 1, 1453447140),
(52, 'vi', 'upload', 'Upload file', 'uploads/shops/2016_01/3_2.png', '', 1, 1453447407),
(53, 'vi', 'upload', 'Upload file', 'uploads/3_2.png', '', 1, 1453447440),
(54, 'vi', 'themes', 'Sửa block', 'Name : global image', '', 1, 1453447888),
(55, 'vi', 'themes', 'Sửa block', 'Name : global image', '', 1, 1453448468),
(56, 'vi', 'themes', 'Sửa block', 'Name : global image', '', 1, 1453448890),
(57, 'vi', 'themes', 'Sửa block', 'Name : global image', '', 1, 1453448918),
(58, 'vi', 'themes', 'Sửa block', 'Name : global image', '', 1, 1453449095),
(59, 'vi', 'themes', 'Sửa block', 'Name : global image', '', 1, 1453449212),
(60, 'vi', 'upload', 'Upload file', 'uploads/1_4.png', '', 1, 1453449762),
(61, 'vi', 'themes', 'Sửa block', 'Name : global image', '', 1, 1453449772),
(62, 'vi', 'upload', 'Upload file', 'uploads/3.png', '', 1, 1453451664),
(63, 'vi', 'themes', 'Sửa block', 'Name : global image', '', 1, 1453451678),
(64, 'vi', 'themes', 'Sửa block', 'Name : global image', '', 1, 1453451756),
(65, 'vi', 'themes', 'Sửa block', 'Name : global image', '', 1, 1453451795),
(66, 'vi', 'themes', 'Sửa block', 'Name : global image', '', 1, 1453451814),
(67, 'vi', 'themes', 'Sửa block', 'Name : global image', '', 1, 1453452316),
(68, 'vi', 'themes', 'Sửa block', 'Name : global image', '', 1, 1453452316),
(69, 'vi', 'themes', 'Sửa block', 'Name : global image', '', 1, 1453452331),
(70, 'vi', 'themes', 'Sửa block', 'Name : global image', '', 1, 1453452590),
(71, 'vi', 'themes', 'Sửa block', 'Name : global image', '', 1, 1453452705),
(72, 'vi', 'themes', 'Sửa block', 'Name : global image', '', 1, 1453453001),
(73, 'vi', 'upload', 'Upload file', 'uploads/1_3.png', '', 1, 1453453263),
(74, 'vi', 'themes', 'Sửa block', 'Name : global image', '', 1, 1453453278),
(75, 'vi', 'themes', 'Sửa block', 'Name : global image', '', 1, 1453453999),
(76, 'vi', 'themes', 'Sửa block', 'Name : global image', '', 1, 1453454412),
(77, 'vi', 'upload', 'Upload file', 'uploads/2_2.png', '', 1, 1453455159),
(78, 'vi', 'upload', 'Upload file', 'uploads/2_3.png', '', 1, 1453455170),
(79, 'vi', 'themes', 'Sửa block', 'Name : global image', '', 1, 1453455176),
(80, 'vi', 'themes', 'Sửa block', 'Name : global image', '', 1, 1453455246),
(81, 'vi', 'themes', 'Sửa block', 'Name : global image', '', 1, 1453455791),
(82, 'vi', 'themes', 'Sửa block', 'Name : global image', '', 1, 1453455817),
(83, 'vi', 'themes', 'Sửa block', 'Name : global image', '', 1, 1453456092),
(84, 'vi', 'login', '[ngocphan12031995@gmail.com] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1453529011),
(85, 'vi', 'login', '[ngocphan12031995@gmail.com] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1453569927),
(86, 'vi', 'themes', 'Sửa block', 'Name : global image', '', 1, 1453570800),
(87, 'vi', 'upload', 'Upload file', 'uploads/shops/2016_01/sp-10-320x320.jpg', '', 1, 1453571024),
(88, 'vi', 'shops', 'Add A Product', 'ID: 16', '', 1, 1453571052),
(89, 'vi', 'shops', 'Edit A Product', 'ID: 16', '', 1, 1453571071),
(90, 'vi', 'shops', 'Edit A Product', 'ID: 16', '', 1, 1453571079),
(91, 'vi', 'upload', 'Upload file', 'uploads/shops/2016_01/sp-09-320x320.jpg', '', 1, 1453571133),
(92, 'vi', 'shops', 'Add A Product', 'ID: 17', '', 1, 1453571150),
(93, 'vi', 'upload', 'Upload file', 'uploads/shops/2016_01/sp-07-320x320.jpg', '', 1, 1453571187),
(94, 'vi', 'shops', 'Add A Product', 'ID: 18', '', 1, 1453571196),
(95, 'vi', 'themes', 'Thêm block', 'Name : global block bxproduct center', '', 1, 1453571229),
(96, 'vi', 'themes', 'Sửa block', 'Name : Sản phẩm hot', '', 1, 1453571243),
(97, 'vi', 'themes', 'Sửa block', 'Name : SẢN PHẨM MỚI', '', 1, 1453571356),
(98, 'vi', 'themes', 'Thêm block', 'Name : Sản phẩm hot', '', 1, 1453571398),
(99, 'vi', 'upload', 'Upload file', 'uploads/shops/2016_01/sp-03-320x320.jpg', '', 1, 1453571502),
(100, 'vi', 'shops', 'Add A Product', 'ID: 19', '', 1, 1453571512),
(101, 'vi', 'upload', 'Upload file', 'uploads/shops/2016_01/sp-06-320x320.jpg', '', 1, 1453571625),
(102, 'vi', 'shops', 'Add A Product', 'ID: 20', '', 1, 1453571635),
(103, 'vi', 'upload', 'Upload file', 'uploads/shops/2016_01/sp-05-320x320.jpg', '', 1, 1453571693),
(104, 'vi', 'shops', 'Add A Product', 'ID: 21', '', 1, 1453571702),
(105, 'vi', 'themes', 'Sửa block', 'Name : SẢN PHẨM MỚI', '', 1, 1453571741),
(106, 'vi', 'themes', 'Thêm block', 'Name : global block bxproduct center', '', 1, 1453571811),
(107, 'vi', 'shops', 'Edit A Product', 'ID: 20', '', 1, 1453571842),
(108, 'vi', 'shops', 'Edit A Product', 'ID: 21', '', 1, 1453571848),
(109, 'vi', 'upload', 'Upload file', 'uploads/shops/2016_01/sp-04-320x320.jpg', '', 1, 1453571953),
(110, 'vi', 'shops', 'Add A Product', 'ID: 22', '', 1, 1453571964),
(111, 'vi', 'upload', 'Upload file', 'uploads/shops/2016_01/sp-02-320x320.jpg', '', 1, 1453572019),
(112, 'vi', 'shops', 'Add A Product', 'ID: 23', '', 1, 1453572028),
(113, 'vi', 'upload', 'Upload file', 'uploads/shops/2016_01/sp-011-320x320.jpg', '', 1, 1453572072),
(114, 'vi', 'shops', 'Add A Product', 'ID: 24', '', 1, 1453572101),
(115, 'vi', 'themes', 'Thêm block', 'Name : Sản phẩm siêu hot', '', 1, 1453572136),
(116, 'vi', 'themes', 'Sửa block', 'Name : SẢN PHẨM MỚI', '', 1, 1453572172),
(117, 'vi', 'themes', 'Sửa block', 'Name : SẢN PHẨM MỚI', '', 1, 1453572188),
(118, 'vi', 'themes', 'Sửa block', 'Name : Sản phẩm siêu hot', '', 1, 1453572215),
(119, 'vi', 'login', '[ngocphan12031995@gmail.com] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1453642881),
(120, 'vi', 'login', '[ngocphan12031995@gmail.com] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1453783834),
(121, 'vi', 'themes', 'Sửa block', 'Name : Thông tin iCaseStore', '', 1, 1453784032),
(122, 'vi', 'themes', 'Sửa block', 'Name : Trợ giúp', '', 1, 1453784248),
(123, 'vi', 'themes', 'Sửa block', 'Name : Trợ giúp', '', 1, 1453784270),
(124, 'vi', 'login', '[ngocphan12031995@gmail.com] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1453787401),
(125, 'vi', 'themes', 'Sửa block', 'Name : Công ty chủ quản', '', 1, 1453787421),
(126, 'vi', 'themes', 'Sửa block', 'Name : Công ty chủ quản', '', 1, 1453787438),
(127, 'vi', 'themes', 'Sửa block', 'Name : Công ty chủ quản', '', 1, 1453787456),
(128, 'vi', 'themes', 'Sửa block', 'Name : Công ty chủ quản', '', 1, 1453787467),
(129, 'vi', 'login', '[ngocphan12031995@gmail.com] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1453796708),
(130, 'vi', 'login', '[ngocphan12031995@gmail.com] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1453824200),
(131, 'vi', 'themes', 'Thêm block', 'Name : global metismenu', '', 1, 1453825365),
(132, 'vi', 'themes', 'Sửa block', 'Name : Trợ giúp', '', 1, 1453825405),
(133, 'vi', 'login', '[ngocphan12031995@gmail.com] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1453878156),
(134, 'vi', 'login', '[ngocphan12031995@gmail.com] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1454051220),
(135, 'vi', 'themes', 'Sửa block', 'Name : SẢN PHẨM MỚI', '', 1, 1454051634),
(136, 'vi', 'themes', 'Sửa block', 'Name : SẢN PHẨM MỚI', '', 1, 1454051672),
(137, 'vi', 'themes', 'Sửa block', 'Name : SẢN PHẨM MỚI', '', 1, 1454054904),
(138, 'vi', 'shops', 'Edit A Product', 'ID: 24', '', 1, 1454055028),
(139, 'vi', 'shops', 'Edit A Product', 'ID: 23', '', 1, 1454055036),
(140, 'vi', 'shops', 'Edit A Product', 'ID: 22', '', 1, 1454055044),
(141, 'vi', 'shops', 'Edit A Product', 'ID: 21', '', 1, 1454055053),
(142, 'vi', 'shops', 'Edit A Product', 'ID: 21', '', 1, 1454055060),
(143, 'vi', 'shops', 'Edit A Product', 'ID: 20', '', 1, 1454055068),
(144, 'vi', 'shops', 'Edit A Product', 'ID: 19', '', 1, 1454055076),
(145, 'vi', 'shops', 'Edit A Product', 'ID: 18', '', 1, 1454055084),
(146, 'vi', 'shops', 'Edit A Product', 'ID: 17', '', 1, 1454055096),
(147, 'vi', 'shops', 'Edit A Product', 'ID: 16', '', 1, 1454055107),
(148, 'vi', 'shops', 'Edit A Product', 'ID: 15', '', 1, 1454055114),
(149, 'vi', 'shops', 'Edit A Product', 'ID: 14', '', 1, 1454055121),
(150, 'vi', 'login', '[ngocphan12031995@gmail.com] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1454061549),
(151, 'vi', 'shops', 'log_del_product', 'id 11,10,9,8,7,6,5,4,3,2,1,', '', 1, 1454061588),
(152, 'vi', 'login', '[ngocphan12031995@gmail.com] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1455518089),
(153, 'vi', 'login', '[ngocphan12031995@gmail.com] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1455677542),
(154, 'vi', 'themes', 'Kích hoạt theme: "default"', '', '', 1, 1455677559),
(155, 'vi', 'login', '[ngocphan12031995@gmail.com] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1455690437),
(156, 'vi', 'themes', 'Kích hoạt theme: "dienthoai"', '', '', 1, 1455690450),
(157, 'vi', 'themes', 'Kích hoạt theme: "default"', '', '', 1, 1455691432),
(158, 'vi', 'themes', 'Kích hoạt theme: "dienthoai"', '', '', 1, 1455691501),
(159, 'vi', 'themes', 'Sửa block', 'Name : Menu Site', '', 1, 1455699840),
(160, 'vi', 'themes', 'Sửa block', 'Name : Menu Site', '', 1, 1455699971),
(161, 'vi', 'themes', 'Sửa block', 'Name : Menu Site', '', 1, 1455700009),
(162, 'vi', 'themes', 'Sửa block', 'Name : Menu Site', '', 1, 1455700049),
(163, 'vi', 'themes', 'Sửa block', 'Name : Menu Site', '', 1, 1455700097),
(164, 'vi', 'themes', 'Kích hoạt theme: "default"', '', '', 1, 1455700375),
(165, 'vi', 'themes', 'Kích hoạt theme: "dienthoai"', '', '', 1, 1455700417),
(166, 'vi', 'login', '[ngocphan12031995@gmail.com] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1456301008),
(167, 'vi', 'themes', 'Kích hoạt theme: "default"', '', '', 1, 1456301016),
(168, 'vi', 'themes', 'Kích hoạt theme: "dienthoai"', '', '', 1, 1456301080),
(169, 'vi', 'login', '[ngocphan12031995@gmail.com] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1457104402),
(170, 'vi', 'login', '[ngocphan12031995@gmail.com] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1463373096),
(171, 'vi', 'login', '[ngocphan12031995@gmail.com] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1463505313),
(172, 'vi', 'themes', 'Thêm block', 'Name : global facebook page plugin', '', 1, 1463505673),
(173, 'vi', 'themes', 'Sửa block', 'Name : global facebook page plugin', '', 1, 1463505738),
(174, 'vi', 'themes', 'Sửa block', 'Name : global facebook page plugin', '', 1, 1463505772),
(175, 'vi', 'themes', 'Sửa block', 'Name : global facebook page plugin', '', 1, 1463505886),
(176, 'vi', 'themes', 'Sửa block', 'Name : global facebook page plugin', '', 1, 1463505899),
(177, 'vi', 'themes', 'Sửa block', 'Name : global facebook page plugin', '', 1, 1463506069),
(178, 'vi', 'themes', 'Sửa block', 'Name : global facebook page plugin', '', 1, 1463506087),
(179, 'vi', 'themes', 'Sửa block', 'Name : global facebook page plugin', '', 1, 1463506112),
(180, 'vi', 'themes', 'Sửa block', 'Name : global facebook page plugin', '', 1, 1463506169),
(181, 'vi', 'themes', 'Sửa block', 'Name : global facebook page plugin', '', 1, 1463506262),
(182, 'vi', 'themes', 'Thêm block', 'Name : global facebook page plugin', '', 1, 1463506620),
(183, 'vi', 'login', '[ngocphan12031995@gmail.com] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1464164866),
(184, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1464165865),
(185, 'vi', 'login', '[ngocphan12031995@gmail.com] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1464336389),
(186, 'vi', 'login', '[ngocphan12031995@gmail.com] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1464605343),
(187, 'vi', 'login', '[ngocphan12031995@gmail.com] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1465368828);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_notification`
--

DROP TABLE IF EXISTS `nv4_notification`;
CREATE TABLE IF NOT EXISTS `nv4_notification` (
`id` int(11) unsigned NOT NULL,
  `send_to` mediumint(8) unsigned NOT NULL,
  `send_from` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `area` tinyint(1) unsigned NOT NULL,
  `language` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `obid` int(11) unsigned NOT NULL DEFAULT '0',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_time` int(11) unsigned NOT NULL,
  `view` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_plugin`
--

DROP TABLE IF EXISTS `nv4_plugin`;
CREATE TABLE IF NOT EXISTS `nv4_plugin` (
`pid` tinyint(4) NOT NULL,
  `plugin_file` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plugin_area` tinyint(4) NOT NULL,
  `weight` tinyint(4) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_plugin`
--

INSERT INTO `nv4_plugin` (`pid`, `plugin_file`, `plugin_area`, `weight`) VALUES
(1, 'qrcode.php', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_sessions`
--

DROP TABLE IF EXISTS `nv4_sessions`;
CREATE TABLE IF NOT EXISTS `nv4_sessions` (
  `session_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `onl_time` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_sessions`
--

INSERT INTO `nv4_sessions` (`session_id`, `userid`, `username`, `onl_time`) VALUES
('efrmk89v0kl193krevhf3bfaq6', 0, 'guest', 1465368780);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_setup`
--

DROP TABLE IF EXISTS `nv4_setup`;
CREATE TABLE IF NOT EXISTS `nv4_setup` (
  `lang` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tables` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `setup_time` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_setup_extensions`
--

DROP TABLE IF EXISTS `nv4_setup_extensions`;
CREATE TABLE IF NOT EXISTS `nv4_setup_extensions` (
  `id` int(11) NOT NULL DEFAULT '0',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'other',
  `title` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_sys` tinyint(1) NOT NULL DEFAULT '0',
  `is_virtual` tinyint(1) NOT NULL DEFAULT '0',
  `basename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table_prefix` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `version` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `addtime` int(11) NOT NULL DEFAULT '0',
  `author` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_setup_extensions`
--

INSERT INTO `nv4_setup_extensions` (`id`, `type`, `title`, `is_sys`, `is_virtual`, `basename`, `table_prefix`, `version`, `addtime`, `author`, `note`) VALUES
(0, 'module', 'about', 0, 0, 'page', 'about', '4.0.29 1463652000', 1453277351, 'VINADES (contact@vinades.vn)', ''),
(0, 'module', 'siteterms', 0, 0, 'page', 'siteterms', '4.0.29 1463652000', 1453277351, 'VINADES (contact@vinades.vn)', ''),
(19, 'module', 'banners', 1, 0, 'banners', 'banners', '4.0.29 1463652000', 1453277351, 'VINADES (contact@vinades.vn)', ''),
(20, 'module', 'contact', 0, 1, 'contact', 'contact', '4.0.29 1463652000', 1453277351, 'VINADES (contact@vinades.vn)', ''),
(1, 'module', 'news', 0, 1, 'news', 'news', '4.0.29 1463652000', 1453277351, 'VINADES (contact@vinades.vn)', ''),
(21, 'module', 'voting', 0, 0, 'voting', 'voting', '4.0.29 1463652000', 1453277351, 'VINADES (contact@vinades.vn)', ''),
(0, 'module', 'shops', 0, 1, 'shops', 'shops', '4.0.19 1371948600', 1453277446, 'VINADES (contact@vinades.vn)', ''),
(284, 'module', 'seek', 1, 0, 'seek', 'seek', '4.0.29 1463652000', 1453277351, 'VINADES (contact@vinades.vn)', ''),
(24, 'module', 'users', 1, 1, 'users', 'users', '4.0.29 1463652000', 1453277351, 'VINADES (contact@vinades.vn)', ''),
(27, 'module', 'statistics', 0, 0, 'statistics', 'statistics', '4.0.29 1463652000', 1453277351, 'VINADES (contact@vinades.vn)', ''),
(29, 'module', 'menu', 0, 0, 'menu', 'menu', '4.0.29 1463652000', 1453277351, 'VINADES (contact@vinades.vn)', ''),
(283, 'module', 'feeds', 1, 0, 'feeds', 'feeds', '4.0.29 1463652000', 1453277351, 'VINADES (contact@vinades.vn)', ''),
(282, 'module', 'page', 1, 1, 'page', 'page', '4.0.29 1463652000', 1453277351, 'VINADES (contact@vinades.vn)', ''),
(281, 'module', 'comment', 1, 0, 'comment', 'comment', '4.0.29 1463652000', 1453277351, 'VINADES (contact@vinades.vn)', ''),
(312, 'module', 'freecontent', 0, 0, 'freecontent', 'freecontent', '4.0.29 1463652000', 1453277351, 'VINADES (contact@vinades.vn)', ''),
(307, 'theme', 'default', 0, 0, 'default', 'default', '4.0.29 1463652000', 1453277351, 'VINADES (contact@vinades.vn)', ''),
(311, 'theme', 'mobile_default', 0, 0, 'mobile_default', 'mobile_default', '4.0.29 1463652000', 1453277351, 'VINADES (contact@vinades.vn)', '');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_setup_language`
--

DROP TABLE IF EXISTS `nv4_setup_language`;
CREATE TABLE IF NOT EXISTS `nv4_setup_language` (
  `lang` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `setup` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_setup_language`
--

INSERT INTO `nv4_setup_language` (`lang`, `setup`) VALUES
('vi', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_block`
--

DROP TABLE IF EXISTS `nv4_shops_block`;
CREATE TABLE IF NOT EXISTS `nv4_shops_block` (
  `bid` int(11) unsigned NOT NULL,
  `id` int(11) unsigned NOT NULL,
  `weight` int(11) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shops_block`
--

INSERT INTO `nv4_shops_block` (`bid`, `id`, `weight`) VALUES
(2, 12, 0),
(3, 15, 0),
(3, 14, 0),
(2, 15, 0),
(2, 14, 0),
(3, 12, 0),
(2, 16, 0),
(2, 17, 0),
(2, 18, 0),
(1, 19, 0),
(1, 20, 0),
(3, 21, 0),
(3, 22, 0),
(3, 23, 0),
(3, 24, 0),
(4, 24, 0),
(4, 23, 0),
(4, 22, 0),
(1, 21, 0),
(3, 20, 0),
(3, 19, 0),
(3, 18, 0),
(3, 17, 0),
(3, 16, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_block_cat`
--

DROP TABLE IF EXISTS `nv4_shops_block_cat`;
CREATE TABLE IF NOT EXISTS `nv4_shops_block_cat` (
`bid` mediumint(8) unsigned NOT NULL,
  `adddefault` tinyint(4) NOT NULL DEFAULT '0',
  `image` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` smallint(4) NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0',
  `vi_title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_description` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_keywords` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shops_block_cat`
--

INSERT INTO `nv4_shops_block_cat` (`bid`, `adddefault`, `image`, `weight`, `add_time`, `edit_time`, `vi_title`, `vi_alias`, `vi_description`, `vi_keywords`) VALUES
(1, 0, '', 1, 1433298294, 1433298294, 'Sản phẩm bán chạy', 'San-pham-ban-chay', '', ''),
(2, 0, '', 2, 1433298325, 1433298325, 'Sản phẩm hot', 'San-pham-hot', '', ''),
(3, 0, '', 3, 1453446897, 1453446897, 'SẢN PHẨM MỚI', 'SAN-PHAM-MOI', '', ''),
(4, 0, '', 4, 1453571915, 1453571915, 'Sản phẩm siêu hot', 'San-pham-sieu-hot', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_carrier`
--

DROP TABLE IF EXISTS `nv4_shops_carrier`;
CREATE TABLE IF NOT EXISTS `nv4_shops_carrier` (
`id` tinyint(3) unsigned NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` tinyint(3) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_carrier_config`
--

DROP TABLE IF EXISTS `nv4_shops_carrier_config`;
CREATE TABLE IF NOT EXISTS `nv4_shops_carrier_config` (
`id` tinyint(3) unsigned NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` tinyint(3) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_carrier_config_items`
--

DROP TABLE IF EXISTS `nv4_shops_carrier_config_items`;
CREATE TABLE IF NOT EXISTS `nv4_shops_carrier_config_items` (
`id` smallint(4) unsigned NOT NULL,
  `cid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` smallint(4) unsigned NOT NULL,
  `add_time` int(11) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_carrier_config_location`
--

DROP TABLE IF EXISTS `nv4_shops_carrier_config_location`;
CREATE TABLE IF NOT EXISTS `nv4_shops_carrier_config_location` (
  `cid` tinyint(3) unsigned NOT NULL,
  `iid` smallint(4) unsigned NOT NULL,
  `lid` mediumint(8) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_carrier_config_weight`
--

DROP TABLE IF EXISTS `nv4_shops_carrier_config_weight`;
CREATE TABLE IF NOT EXISTS `nv4_shops_carrier_config_weight` (
  `iid` smallint(4) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  `weight_unit` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `carrier_price` float NOT NULL,
  `carrier_price_unit` char(3) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_catalogs`
--

DROP TABLE IF EXISTS `nv4_shops_catalogs`;
CREATE TABLE IF NOT EXISTS `nv4_shops_catalogs` (
`catid` mediumint(8) unsigned NOT NULL,
  `parentid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `image` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` smallint(4) unsigned NOT NULL DEFAULT '0',
  `sort` mediumint(8) NOT NULL DEFAULT '0',
  `lev` smallint(4) NOT NULL DEFAULT '0',
  `viewcat` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'viewcat_page_new',
  `numsubcat` int(11) NOT NULL DEFAULT '0',
  `subcatid` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `numlinks` tinyint(2) unsigned NOT NULL DEFAULT '3',
  `newday` tinyint(4) NOT NULL DEFAULT '3',
  `typeprice` tinyint(4) NOT NULL DEFAULT '2',
  `form` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `group_price` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `viewdescriptionhtml` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `admins` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',
  `edit_time` int(11) unsigned NOT NULL DEFAULT '0',
  `groups_view` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cat_allow_point` tinyint(1) NOT NULL DEFAULT '0',
  `cat_number_point` tinyint(4) NOT NULL DEFAULT '0',
  `cat_number_product` tinyint(4) NOT NULL DEFAULT '0',
  `vi_title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_title_custom` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_description` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_descriptionhtml` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `vi_keywords` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shops_catalogs`
--

INSERT INTO `nv4_shops_catalogs` (`catid`, `parentid`, `image`, `weight`, `sort`, `lev`, `viewcat`, `numsubcat`, `subcatid`, `inhome`, `numlinks`, `newday`, `typeprice`, `form`, `group_price`, `viewdescriptionhtml`, `admins`, `add_time`, `edit_time`, `groups_view`, `cat_allow_point`, `cat_number_point`, `cat_number_product`, `vi_title`, `vi_title_custom`, `vi_alias`, `vi_description`, `vi_descriptionhtml`, `vi_keywords`) VALUES
(2, 0, '', 1, 1, 0, 'viewcat_page_list', 4, '6,7,8,9', 1, 4, 7, 1, '', '', 0, '', 1432362728, 1432362803, '6', 0, 0, 0, 'Váy', 'Váy', 'Vay-nu', '', '', 'váy, vay'),
(3, 0, '', 2, 6, 0, 'viewcat_page_list', 4, '13,14,15,16', 1, 4, 7, 1, '', '', 0, '', 1432362789, 1432362789, '6', 0, 0, 0, 'Giày dép', 'Giày dép', 'Giay-dep', '', '', 'giay, dep, giày, dép'),
(4, 0, '', 3, 11, 0, 'viewcat_page_list', 3, '10,11,12', 1, 4, 7, 1, '', '', 0, '', 1432362835, 1432364806, '6', 0, 0, 0, 'Áo', 'Áo', 'Ao', '', '', 'áo, ao'),
(5, 0, '', 4, 15, 0, 'viewcat_page_list', 5, '18,19,20,21,22', 1, 4, 7, 1, '', '', 0, '', 1432362887, 1432362887, '6', 0, 0, 0, 'Phụ kiện', 'Phụ kiện', 'Phu-kien', '', '', 'Phụ kiện, Phu kien, kiện, kien, phu kien'),
(6, 2, '', 1, 2, 1, 'viewcat_page_list', 0, '', 1, 4, 7, 1, '', '', 0, '', 1432364675, 1432364675, '6', 0, 0, 0, 'váy dài', 'váy dài', 'vay-dai', '', '', 'váy dài, dài, vay dai'),
(7, 2, '', 2, 3, 1, 'viewcat_page_list', 0, '', 1, 4, 7, 1, '', '', 0, '', 1432364695, 1432364695, '6', 0, 0, 0, 'váy ngắn', 'váy ngắn', 'vay-ngan', '', '', 'váy ngắn, vay ngan'),
(8, 2, '', 3, 4, 1, 'viewcat_page_list', 0, '', 1, 4, 7, 1, '', '', 0, '', 1432364752, 1432364752, '6', 0, 0, 0, 'đầm maxi', 'đầm maxi', 'dam-maxi', '', '', 'đầm, maxi, Maxi, đầm maxi, Đầm maxi'),
(9, 2, '', 4, 5, 1, 'viewcat_page_list', 0, '', 1, 4, 7, 1, '', '', 0, '', 1432364786, 1432364786, '6', 0, 0, 0, 'Váy chữ A', 'Váy chữ A', 'Vay-chu-A', '', '', 'Váy chữ A, váy chữ a'),
(10, 4, '', 1, 12, 1, 'viewcat_page_list', 0, '', 1, 4, 7, 1, '', '', 0, '', 1432364825, 1432364863, '6', 0, 0, 0, 'Áo sơmi', 'Áo sơmi', 'Ao-somi', '', '', 'Áo sơmi,, sơmi. áo'),
(11, 4, '', 2, 13, 1, 'viewcat_page_list', 0, '', 1, 4, 7, 1, '', '', 0, '', 1432364880, 1432364880, '6', 0, 0, 0, 'Áo phông', 'Áo phông', 'Ao-phong', '', '', ''),
(12, 4, '', 3, 14, 1, 'viewcat_page_list', 0, '', 1, 4, 7, 1, '', '', 0, '', 1432364936, 1432364936, '6', 0, 0, 0, 'Áo dáng dài', 'Áo dáng dài', 'Ao-dang-dai', '', '', 'Áo dáng dài, áo'),
(13, 3, '', 1, 7, 1, 'viewcat_page_list', 0, '', 1, 4, 7, 1, '', '', 0, '', 1432364976, 1432364976, '6', 0, 0, 0, 'Giày cao gót', 'Giày cao gót', 'Giay-cao-got', '', '', 'Giày cao gót, cao gót, cao got'),
(14, 3, '', 2, 8, 1, 'viewcat_page_list', 0, '', 1, 4, 7, 1, '', '', 0, '', 1432365033, 1432365033, '6', 0, 0, 0, 'Giày sandal', 'Giày sandal', 'Giay-sandal', '', '', 'sandal, Sandal, giày, giày sandal'),
(15, 3, '', 3, 9, 1, 'viewcat_page_list', 0, '', 1, 4, 7, 1, '', '', 0, '', 1432365081, 1432365081, '6', 0, 0, 0, 'Giày búp bê', 'Giày búp bê', 'Giay-bup-be', '', '', 'giày búp bê, Giày búp bê, giay bup be, Giay bup be, búp bê, bup be'),
(16, 3, '', 4, 10, 1, 'viewcat_page_list', 0, '', 1, 4, 7, 1, '', '', 0, '', 1432365108, 1432365108, '6', 0, 0, 0, 'Giày vải', 'Giày vải', 'Giay-vai', '', '', 'vải, giày vải, giay vai'),
(19, 5, '', 2, 17, 1, 'viewcat_page_list', 0, '', 1, 4, 7, 1, '', '', 0, '', 1432365211, 1432365211, '6', 0, 0, 0, 'Lắc tay', 'Lắc tay', 'Lac-tay', '', '', 'Lắc tay. lac tay, lắc'),
(18, 5, '', 1, 16, 1, 'viewcat_page_list', 0, '', 1, 4, 7, 1, '', '', 0, '', 1432365185, 1432365185, '6', 0, 0, 0, 'Vòng cổ', 'Vòng cổ', 'Phu-kien-Vong-co', '', '', 'vòng cổ, Vòng cổ, vong co'),
(20, 5, '', 3, 18, 1, 'viewcat_page_list', 0, '', 1, 4, 7, 1, '', '', 0, '', 1432365242, 1432365242, '6', 0, 0, 0, 'Thắt lưng', 'Thắt lưng', 'That-lung', '', '', 'Thắt lưng, that lung, thắt lưng'),
(21, 5, '', 4, 19, 1, 'viewcat_page_list', 0, '', 1, 4, 7, 1, '', '', 0, '', 1432365281, 1432365281, '6', 0, 0, 0, 'Đồng hồ', 'Đồng hồ', 'Dong-ho', '', '', 'Đồng hồ, hồ, dong ho'),
(22, 5, '', 5, 20, 1, 'viewcat_page_list', 0, '', 1, 4, 7, 1, '', '', 0, '', 1432365303, 1432365303, '6', 0, 0, 0, 'Ví nữ', 'Ví nữ', 'Vi-nu', '', '', 'ví nữ, ví'),
(23, 0, '', 5, 21, 0, 'viewcat_page_list', 0, '', 1, 4, 7, 1, '', '', 0, '', 1453433924, 1453433924, '6', 0, 0, 0, 'Case iphone', '', 'case-iphone', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_coupons`
--

DROP TABLE IF EXISTS `nv4_shops_coupons`;
CREATE TABLE IF NOT EXISTS `nv4_shops_coupons` (
`id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'p',
  `discount` float NOT NULL DEFAULT '0',
  `total_amount` float NOT NULL DEFAULT '0',
  `date_start` int(11) unsigned NOT NULL DEFAULT '0',
  `date_end` int(11) unsigned NOT NULL DEFAULT '0',
  `uses_per_coupon` int(11) unsigned NOT NULL DEFAULT '0',
  `uses_per_coupon_count` int(11) NOT NULL DEFAULT '0',
  `date_added` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_coupons_history`
--

DROP TABLE IF EXISTS `nv4_shops_coupons_history`;
CREATE TABLE IF NOT EXISTS `nv4_shops_coupons_history` (
`id` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` float NOT NULL DEFAULT '0',
  `date_added` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_coupons_product`
--

DROP TABLE IF EXISTS `nv4_shops_coupons_product`;
CREATE TABLE IF NOT EXISTS `nv4_shops_coupons_product` (
  `cid` int(11) unsigned NOT NULL,
  `pid` int(11) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_discounts`
--

DROP TABLE IF EXISTS `nv4_shops_discounts`;
CREATE TABLE IF NOT EXISTS `nv4_shops_discounts` (
`did` smallint(6) NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` smallint(6) NOT NULL DEFAULT '0',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',
  `edit_time` int(11) unsigned NOT NULL DEFAULT '0',
  `begin_time` int(11) unsigned NOT NULL DEFAULT '0',
  `end_time` int(11) unsigned NOT NULL DEFAULT '0',
  `config` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_field`
--

DROP TABLE IF EXISTS `nv4_shops_field`;
CREATE TABLE IF NOT EXISTS `nv4_shops_field` (
`fid` mediumint(8) NOT NULL,
  `field` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `listtemplate` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tab` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` int(10) unsigned NOT NULL DEFAULT '1',
  `field_type` enum('number','date','textbox','textarea','editor','select','radio','checkbox','multiselect') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'textbox',
  `field_choices` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sql_choices` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `match_type` enum('none','alphanumeric','email','url','regex','callback') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'none',
  `match_regex` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `func_callback` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `min_length` int(11) NOT NULL DEFAULT '0',
  `max_length` bigint(20) unsigned NOT NULL DEFAULT '0',
  `class` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_value` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_field_value_vi`
--

DROP TABLE IF EXISTS `nv4_shops_field_value_vi`;
CREATE TABLE IF NOT EXISTS `nv4_shops_field_value_vi` (
`id` mediumint(8) unsigned NOT NULL,
  `rows_id` int(11) unsigned NOT NULL,
  `field_id` mediumint(8) NOT NULL,
  `field_value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_files`
--

DROP TABLE IF EXISTS `nv4_shops_files`;
CREATE TABLE IF NOT EXISTS `nv4_shops_files` (
`id` mediumint(8) unsigned NOT NULL,
  `path` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filesize` int(11) unsigned NOT NULL DEFAULT '0',
  `extension` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `download_groups` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '-1',
  `status` tinyint(1) unsigned DEFAULT '1',
  `vi_title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_files_rows`
--

DROP TABLE IF EXISTS `nv4_shops_files_rows`;
CREATE TABLE IF NOT EXISTS `nv4_shops_files_rows` (
  `id_rows` int(11) unsigned NOT NULL,
  `id_files` mediumint(8) unsigned NOT NULL,
  `download_hits` mediumint(8) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_group`
--

DROP TABLE IF EXISTS `nv4_shops_group`;
CREATE TABLE IF NOT EXISTS `nv4_shops_group` (
`groupid` mediumint(8) unsigned NOT NULL,
  `parentid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `image` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` smallint(4) unsigned NOT NULL DEFAULT '0',
  `sort` mediumint(8) NOT NULL DEFAULT '0',
  `lev` smallint(4) NOT NULL DEFAULT '0',
  `viewgroup` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'viewcat_page_new',
  `numsubgroup` int(11) NOT NULL DEFAULT '0',
  `subgroupid` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `indetail` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',
  `edit_time` int(11) unsigned NOT NULL DEFAULT '0',
  `numpro` int(11) unsigned NOT NULL DEFAULT '0',
  `in_order` tinyint(2) NOT NULL DEFAULT '0',
  `is_require` tinyint(1) NOT NULL DEFAULT '0',
  `vi_title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_description` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_keywords` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shops_group`
--

INSERT INTO `nv4_shops_group` (`groupid`, `parentid`, `image`, `weight`, `sort`, `lev`, `viewgroup`, `numsubgroup`, `subgroupid`, `inhome`, `indetail`, `add_time`, `edit_time`, `numpro`, `in_order`, `is_require`, `vi_title`, `vi_alias`, `vi_description`, `vi_keywords`) VALUES
(1, 0, '', 1, 1, 0, 'viewcat_page_list', 6, '6,7,8,9,10,11', 1, 0, 1432623061, 1432623061, 0, 1, 0, 'Thương hiệu', 'Thuong-hieu', '', ''),
(2, 0, '', 2, 8, 0, 'viewcat_page_list', 12, '12,13,15,16,17,18,19,20,21,22,23,24', 1, 0, 1432623083, 1432623083, 0, 1, 0, 'Màu sắc', 'Mau-sac', '', ''),
(3, 0, '', 3, 21, 0, 'viewcat_page_list', 15, '25,26,27,28,29,30,31,32,33,34,35,36,37,38,39', 1, 0, 1432623101, 1432623101, 0, 1, 0, 'Kích thước', 'Kich-thuoc', '', ''),
(4, 0, '', 4, 37, 0, 'viewcat_page_list', 8, '40,41,42,43,44,45,46,47', 1, 0, 1432623118, 1432623118, 0, 1, 0, 'Chất liệu', 'Chat-lieu', '', ''),
(5, 0, '', 5, 46, 0, 'viewcat_page_list', 10, '48,49,50,51,52,53,54,55,56,57', 1, 0, 1432623133, 1432623133, 0, 1, 0, 'Xuất xứ', 'Xuat-xu', '', ''),
(6, 1, '', 1, 2, 1, 'viewcat_page_list', 0, '', 1, 0, 1432626862, 1432626862, 0, 1, 0, 'Việt Tiến', 'Viet-Tien', '', ''),
(7, 1, '', 2, 3, 1, 'viewcat_page_list', 0, '', 1, 0, 1432626882, 1432626882, 0, 1, 0, 'ZARA', 'ZARA', '', ''),
(8, 1, '', 3, 4, 1, 'viewcat_page_list', 0, '', 1, 0, 1432626899, 1432626899, 0, 1, 0, 'MATTANA', 'MATTANA', '', ''),
(9, 1, '', 4, 5, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627013, 1432627013, 0, 1, 0, 'KELVIN', 'KELVIN', '', ''),
(10, 1, '', 5, 6, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627027, 1432627027, 0, 1, 0, 'THÁI TUẤN', 'THAI-TUAN', '', ''),
(11, 1, '', 6, 7, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627053, 1432627053, 0, 1, 0, 'VICTORIA SECRECT', 'VICTORIA-SECRECT', '', ''),
(12, 2, '', 1, 9, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627064, 1432627064, 0, 1, 0, 'ĐỎ', 'DO', '', ''),
(13, 2, '', 2, 10, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627070, 1432627070, 0, 1, 0, 'VÀNG', 'VANG', '', ''),
(16, 2, '', 4, 12, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627102, 1432627102, 0, 1, 0, 'HỒNG PHẤN', 'HONG-PHAN', '', ''),
(15, 2, '', 3, 11, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627095, 1432627095, 0, 1, 0, 'XANH NGỌC', 'XANH-NGOC', '', ''),
(17, 2, '', 5, 13, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627107, 1432627107, 0, 1, 0, 'XANH RÊU', 'XANH-REU', '', ''),
(18, 2, '', 6, 14, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627112, 1432627112, 0, 1, 0, 'TÍM', 'TIM', '', ''),
(19, 2, '', 7, 15, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627123, 1432627123, 0, 1, 0, 'XÁM', 'XAM', '', ''),
(20, 2, '', 8, 16, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627135, 1432627135, 0, 1, 0, 'XANH NƯỚC BIỂN', 'XANH-NUOC-BIEN', '', ''),
(21, 2, '', 9, 17, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627148, 1432627148, 0, 1, 0, 'CAM', 'CAM', '', ''),
(22, 2, '', 10, 18, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627153, 1432627153, 0, 1, 0, 'BẠC', 'BAC', '', ''),
(23, 2, '', 11, 19, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627160, 1432627160, 0, 1, 0, 'MÀU DA', 'MAU-DA', '', ''),
(24, 2, '', 12, 20, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627182, 1432627182, 0, 1, 0, 'ĐEN', 'DEN', '', ''),
(25, 3, '', 1, 22, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627201, 1432627201, 0, 1, 0, 'F', 'F', '', ''),
(26, 3, '', 2, 23, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627210, 1432627210, 0, 1, 0, 'L', 'L', '', ''),
(27, 3, '', 3, 24, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627215, 1432627215, 0, 1, 0, 'M', 'M', '', ''),
(28, 3, '', 4, 25, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627219, 1432627219, 0, 1, 0, 'S', 'S', '', ''),
(29, 3, '', 5, 26, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627223, 1432627223, 0, 1, 0, 'XL', 'XL', '', ''),
(30, 3, '', 6, 27, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627241, 1432627241, 0, 1, 0, 'XXL', 'XXL', '', ''),
(31, 3, '', 7, 28, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627250, 1432627250, 0, 1, 0, 'XXXL', 'XXXL', '', ''),
(32, 3, '', 8, 29, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627259, 1432627259, 0, 1, 0, '35', '35', '', ''),
(33, 3, '', 9, 30, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627264, 1432627264, 0, 1, 0, '36', '36', '', ''),
(34, 3, '', 10, 31, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627269, 1432627269, 0, 1, 0, '37', '37', '', ''),
(35, 3, '', 11, 32, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627274, 1432627274, 0, 1, 0, '38', '38', '', ''),
(36, 3, '', 12, 33, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627279, 1432627279, 0, 1, 0, '39', '39', '', ''),
(37, 3, '', 13, 34, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627284, 1432627284, 0, 1, 0, '40', '40', '', ''),
(38, 3, '', 14, 35, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627291, 1432627291, 0, 1, 0, '41', '41', '', ''),
(39, 3, '', 15, 36, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627296, 1432627296, 0, 1, 0, '42', '42', '', ''),
(40, 4, '', 1, 38, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627339, 1432627339, 0, 1, 0, 'COTTON', 'COTTON', '', ''),
(41, 4, '', 2, 39, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627346, 1432627346, 0, 1, 0, 'DẠ', 'DA', '', ''),
(42, 4, '', 3, 40, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627364, 1432627364, 0, 1, 0, 'JEANS', 'JEANS', '', ''),
(43, 4, '', 4, 41, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627369, 1432627369, 0, 1, 0, 'BÒ', 'BO', '', ''),
(44, 4, '', 5, 42, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627378, 1432627378, 0, 1, 0, 'LANH', 'LANH', '', ''),
(45, 4, '', 6, 43, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627385, 1432627385, 0, 1, 0, 'TƠ TẰM', 'TO-TAM', '', ''),
(46, 4, '', 7, 44, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627399, 1432627399, 0, 1, 0, 'THUN', 'THUN', '', ''),
(47, 4, '', 8, 45, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627407, 1432627407, 0, 1, 0, 'LỤA', 'LUA', '', ''),
(48, 5, '', 1, 47, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627418, 1432627418, 0, 1, 0, 'VIỆT NAM', 'VIET-NAM', '', ''),
(49, 5, '', 2, 48, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627425, 1432627425, 0, 1, 0, 'HÀN QUỐC', 'HAN-QUOC', '', ''),
(50, 5, '', 3, 49, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627519, 1432627519, 0, 1, 0, 'ĐỨC', 'DUC', '', ''),
(51, 5, '', 4, 50, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627528, 1432627528, 0, 1, 0, 'NHẬT BẢN', 'NHAT-BAN', '', ''),
(52, 5, '', 5, 51, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627541, 1432627541, 0, 1, 0, 'THÁI LAN', 'THAI-LAN', '', ''),
(53, 5, '', 6, 52, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627553, 1432627553, 0, 1, 0, 'HONGKONG', 'HONGKONG', '', ''),
(54, 5, '', 7, 53, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627565, 1432627565, 0, 1, 0, 'TRUNG QUỐC', 'TRUNG-QUOC', '', ''),
(55, 5, '', 8, 54, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627573, 1432627573, 0, 1, 0, 'PHÁP', 'PHAP', '', ''),
(56, 5, '', 9, 55, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627579, 1432627579, 0, 1, 0, 'ANH', 'ANH', '', ''),
(57, 5, '', 10, 56, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627617, 1432627617, 0, 1, 0, 'AUSTRALIA', 'AUSTRALIA', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_group_cateid`
--

DROP TABLE IF EXISTS `nv4_shops_group_cateid`;
CREATE TABLE IF NOT EXISTS `nv4_shops_group_cateid` (
  `groupid` mediumint(8) unsigned NOT NULL,
  `cateid` mediumint(8) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shops_group_cateid`
--

INSERT INTO `nv4_shops_group_cateid` (`groupid`, `cateid`) VALUES
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(4, 2),
(4, 3),
(4, 4),
(4, 5),
(5, 2),
(5, 3),
(5, 4),
(5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_group_items`
--

DROP TABLE IF EXISTS `nv4_shops_group_items`;
CREATE TABLE IF NOT EXISTS `nv4_shops_group_items` (
  `pro_id` int(11) unsigned NOT NULL DEFAULT '0',
  `group_id` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_group_quantity`
--

DROP TABLE IF EXISTS `nv4_shops_group_quantity`;
CREATE TABLE IF NOT EXISTS `nv4_shops_group_quantity` (
  `pro_id` int(11) unsigned NOT NULL DEFAULT '0',
  `listgroup` varchar(247) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_location`
--

DROP TABLE IF EXISTS `nv4_shops_location`;
CREATE TABLE IF NOT EXISTS `nv4_shops_location` (
`id` mediumint(8) unsigned NOT NULL,
  `parentid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` smallint(4) unsigned NOT NULL DEFAULT '0',
  `sort` mediumint(8) NOT NULL DEFAULT '0',
  `lev` smallint(4) NOT NULL DEFAULT '0',
  `numsub` int(11) NOT NULL DEFAULT '0',
  `subid` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_money_vi`
--

DROP TABLE IF EXISTS `nv4_shops_money_vi`;
CREATE TABLE IF NOT EXISTS `nv4_shops_money_vi` (
  `id` mediumint(11) NOT NULL,
  `code` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange` float NOT NULL DEFAULT '0',
  `round` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number_format` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ',||.'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shops_money_vi`
--

INSERT INTO `nv4_shops_money_vi` (`id`, `code`, `currency`, `exchange`, `round`, `number_format`) VALUES
(840, 'USD', 'US Dollar', 21000, '0.01', ',||.'),
(704, 'VND', 'Vietnam Dong', 1, '100', ',||.');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_orders`
--

DROP TABLE IF EXISTS `nv4_shops_orders`;
CREATE TABLE IF NOT EXISTS `nv4_shops_orders` (
`order_id` int(11) unsigned NOT NULL,
  `order_code` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lang` char(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `order_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_email` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_address` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `admin_id` int(11) unsigned NOT NULL DEFAULT '0',
  `shop_id` int(11) unsigned NOT NULL DEFAULT '0',
  `who_is` int(2) unsigned NOT NULL DEFAULT '0',
  `unit_total` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_total` double unsigned NOT NULL DEFAULT '0',
  `order_time` int(11) unsigned NOT NULL DEFAULT '0',
  `edit_time` int(11) unsigned NOT NULL DEFAULT '0',
  `postip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_view` tinyint(2) NOT NULL DEFAULT '0',
  `transaction_status` tinyint(4) NOT NULL,
  `transaction_id` int(11) NOT NULL DEFAULT '0',
  `transaction_count` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_orders_id`
--

DROP TABLE IF EXISTS `nv4_shops_orders_id`;
CREATE TABLE IF NOT EXISTS `nv4_shops_orders_id` (
`id` int(11) unsigned NOT NULL,
  `order_id` int(11) NOT NULL,
  `proid` mediumint(9) NOT NULL,
  `num` mediumint(9) NOT NULL,
  `price` int(11) NOT NULL,
  `discount_id` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_orders_id_group`
--

DROP TABLE IF EXISTS `nv4_shops_orders_id_group`;
CREATE TABLE IF NOT EXISTS `nv4_shops_orders_id_group` (
  `order_i` int(11) NOT NULL,
  `group_id` mediumint(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_orders_shipping`
--

DROP TABLE IF EXISTS `nv4_shops_orders_shipping`;
CREATE TABLE IF NOT EXISTS `nv4_shops_orders_shipping` (
`id` tinyint(11) unsigned NOT NULL,
  `order_id` tinyint(11) unsigned NOT NULL,
  `ship_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_phone` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_location_id` mediumint(8) unsigned NOT NULL,
  `ship_address_extend` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_shops_id` tinyint(3) unsigned NOT NULL,
  `ship_carrier_id` tinyint(3) unsigned NOT NULL,
  `weight` float NOT NULL DEFAULT '0',
  `weight_unit` char(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ship_price` float NOT NULL DEFAULT '0',
  `ship_price_unit` char(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `add_time` int(11) unsigned NOT NULL,
  `edit_time` int(11) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_payment`
--

DROP TABLE IF EXISTS `nv4_shops_payment`;
CREATE TABLE IF NOT EXISTS `nv4_shops_payment` (
  `payment` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paymentname` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '0',
  `weight` int(11) NOT NULL DEFAULT '0',
  `config` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `images_button` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_point`
--

DROP TABLE IF EXISTS `nv4_shops_point`;
CREATE TABLE IF NOT EXISTS `nv4_shops_point` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `point_total` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_point_history`
--

DROP TABLE IF EXISTS `nv4_shops_point_history`;
CREATE TABLE IF NOT EXISTS `nv4_shops_point_history` (
`id` int(11) NOT NULL,
  `userid` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL,
  `point` int(11) NOT NULL DEFAULT '0',
  `time` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_point_queue`
--

DROP TABLE IF EXISTS `nv4_shops_point_queue`;
CREATE TABLE IF NOT EXISTS `nv4_shops_point_queue` (
  `order_id` int(11) NOT NULL,
  `point` mediumint(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_review`
--

DROP TABLE IF EXISTS `nv4_shops_review`;
CREATE TABLE IF NOT EXISTS `nv4_shops_review` (
`review_id` int(11) unsigned NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `sender` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int(1) NOT NULL,
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_rows`
--

DROP TABLE IF EXISTS `nv4_shops_rows`;
CREATE TABLE IF NOT EXISTS `nv4_shops_rows` (
`id` int(11) unsigned NOT NULL,
  `listcatid` int(11) NOT NULL DEFAULT '0',
  `user_id` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `product_code` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `product_number` int(11) NOT NULL DEFAULT '0',
  `product_price` float NOT NULL DEFAULT '0',
  `price_config` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `money_unit` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_unit` smallint(4) NOT NULL,
  `product_weight` float NOT NULL DEFAULT '0',
  `weight_unit` char(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `discount_id` smallint(6) NOT NULL DEFAULT '0',
  `homeimgfile` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `homeimgalt` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `otherimage` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `imgposition` tinyint(1) NOT NULL DEFAULT '1',
  `copyright` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `gift_from` int(11) unsigned NOT NULL DEFAULT '0',
  `gift_to` int(11) unsigned NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ratingdetail` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `allowed_send` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_print` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_save` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitslm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `num_sell` mediumint(8) NOT NULL DEFAULT '0',
  `showprice` tinyint(2) NOT NULL DEFAULT '0',
  `vi_title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `vi_bodytext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `vi_gift_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `vi_address` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shops_rows`
--

INSERT INTO `nv4_shops_rows` (`id`, `listcatid`, `user_id`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `product_code`, `product_number`, `product_price`, `price_config`, `money_unit`, `product_unit`, `product_weight`, `weight_unit`, `discount_id`, `homeimgfile`, `homeimgthumb`, `homeimgalt`, `otherimage`, `imgposition`, `copyright`, `gift_from`, `gift_to`, `inhome`, `allowed_comm`, `allowed_rating`, `ratingdetail`, `allowed_send`, `allowed_print`, `allowed_save`, `hitstotal`, `hitscm`, `hitslm`, `num_sell`, `showprice`, `vi_title`, `vi_alias`, `vi_hometext`, `vi_bodytext`, `vi_gift_content`, `vi_address`) VALUES
(12, 23, 1, 1453434240, 1453446925, 1, 1453434240, 0, 2, 'S000012', 0, 3000000, '', 'VND', 1, 0, 'g', 0, '2016_01/sp-13-320x320.jpg', 1, '', '', 0, 0, 0, 0, 1, 4, 1, '0', 1, 1, 1, 2, 0, 0, 0, 1, 'Case iphone mẫu 13', 'kem-duong-am-l-occitane', 'Kem dưỡng ẩm đang trở thành một trong những loại mỹ phẩm chăm sóc da quan trọng, đặc biệt cho làn da khô. Ích lợi của kem dưỡng ẩm hẳn các bạn cũng đều biết, nhưng nên mua loại...', 'Kem dưỡng ẩm đang trở thành một trong những loại mỹ phẩm chăm sóc da quan trọng, đặc biệt cho làn da khô. Ích lợi của kem dưỡng ẩm hẳn các bạn cũng đều biết, nhưng nên mua loại...', '', ''),
(16, 23, 1, 1453571052, 1454055107, 1, 1453571052, 0, 2, 'S000016', 0, 340000, '', 'VND', 1, 0, 'g', 0, '2016_01/sp-10-320x320.jpg', 1, '', '', 0, 0, 0, 0, 1, 4, 1, '0', 1, 1, 1, 0, 0, 0, 0, 1, 'Case iphone mẫu 10', 'case-iphone-mau-10', 'Ngày 22/01, tỷ giá USD/VND niêm yết tại hầu hết các ngân hàng thương mại quay ngược chiều đi xuống, biên độ dao động không đáng kể', 'Ngày 22/01, tỷ giá USD/VND niêm yết tại hầu hết các ngân hàng thương mại quay ngược chiều đi xuống, biên độ dao động không đáng kể', '', ''),
(14, 23, 1, 1453446245, 1454055121, 1, 1453446245, 0, 2, 'S000014', 0, 4000000, '', 'VND', 1, 0, 'g', 0, '2016_01/sp-11-320x320.jpg', 1, '', '', 0, 0, 0, 0, 1, 4, 1, '0', 1, 1, 1, 0, 0, 0, 0, 1, 'Case iphone mẫu 11', 'case-iphone-mau-11', 'Pick a favorite color combo for your custom iPhone 6 and iPhone 6s case and get premium protection against accidental damage and wear and tear', 'Pick a favorite color combo for your custom iPhone 6 and iPhone 6s case and get premium protection against accidental damage and wear and tear', '', ''),
(15, 23, 1, 1453446742, 1454055114, 1, 1453446742, 0, 2, 'S000015', 0, 4300000, '', 'VND', 1, 0, 'g', 0, '2016_01/sp-12-320x320.jpg', 1, '', '', 0, 0, 0, 0, 1, 4, 1, '0', 1, 1, 1, 1, 0, 0, 0, 1, 'Case iphone mẫu 12', 'case-iphone-mau-12', 'Pick a favorite color combo for your custom iPhone 6 and iPhone 6s case and get premium protection against accidental damage and wear and tear', 'Pick a favorite color combo for your custom iPhone 6 and iPhone 6s case and get premium protection against accidental damage and wear and tear', '', ''),
(17, 23, 1, 1453571150, 1454055096, 1, 1453571150, 0, 2, 'S000017', 0, 350000, '', 'VND', 1, 0, 'g', 0, '2016_01/sp-09-320x320.jpg', 1, '', '', 0, 0, 0, 0, 1, 4, 1, '0', 1, 1, 1, 0, 0, 0, 0, 1, 'Case iphone mẫu 9', 'case-iphone-mau-9', 'Ngày 22/01, tỷ giá USD/VND niêm yết tại hầu hết các ngân hàng thương mại quay ngược chiều đi xuống, biên độ dao động không đáng kể', 'Ngày 22/01, tỷ giá USD/VND niêm yết tại hầu hết các ngân hàng thương mại quay ngược chiều đi xuống, biên độ dao động không đáng kể', '', ''),
(18, 23, 1, 1453571196, 1454055084, 1, 1453571196, 0, 2, 'S000018', 0, 160000, '', 'VND', 1, 0, 'g', 0, '2016_01/sp-07-320x320.jpg', 1, '', '', 0, 0, 0, 0, 1, 4, 1, '0', 1, 1, 1, 0, 0, 0, 0, 1, 'Case iphone mẫu 7', 'case-iphone-mau-7', 'Ngày 22/01, tỷ giá USD/VND niêm yết tại hầu hết các ngân hàng thương mại quay ngược chiều đi xuống, biên độ dao động không đáng kể', 'Ngày 22/01, tỷ giá USD/VND niêm yết tại hầu hết các ngân hàng thương mại quay ngược chiều đi xuống, biên độ dao động không đáng kể', '', ''),
(19, 23, 1, 1453571512, 1454055076, 1, 1453571512, 0, 2, 'S000019', 0, 195000, '', 'VND', 1, 0, 'g', 0, '2016_01/sp-03-320x320.jpg', 1, '', '', 0, 0, 0, 0, 1, 4, 1, '0', 1, 1, 1, 0, 0, 0, 0, 1, 'Case iphone mẫu 3', 'case-iphone-mau-3', 'Ngày 22/01, tỷ giá USD/VND niêm yết tại hầu hết các ngân hàng thương mại quay ngược chiều đi xuống, biên độ dao động không đáng kể', 'Ngày 22/01, tỷ giá USD/VND niêm yết tại hầu hết các ngân hàng thương mại quay ngược chiều đi xuống, biên độ dao động không đáng kể', '', ''),
(20, 23, 1, 1453571635, 1454055068, 1, 1453571635, 0, 2, 'S000020', 0, 220000, '', 'VND', 1, 0, 'g', 0, '2016_01/sp-06-320x320.jpg', 1, '', '', 0, 0, 0, 0, 1, 4, 1, '0', 1, 1, 1, 0, 0, 0, 0, 1, 'Case iphone mẫu 6', 'case-iphone-mau-6', 'Ngày 22/01, tỷ giá USD/VND niêm yết tại hầu hết các ngân hàng thương mại quay ngược chiều đi xuống, biên độ dao động không đáng kể', 'Ngày 22/01, tỷ giá USD/VND niêm yết tại hầu hết các ngân hàng thương mại quay ngược chiều đi xuống, biên độ dao động không đáng kể', '', ''),
(21, 23, 1, 1453571702, 1454055060, 1, 1453571702, 0, 2, 'S000021', 0, 300000, '', 'VND', 1, 0, 'g', 0, '2016_01/sp-05-320x320.jpg', 1, '', '', 0, 0, 0, 0, 1, 4, 1, '0', 1, 1, 1, 1, 0, 0, 0, 1, 'Case iphone mẫu 5', 'case-iphone-mau-5', 'Ngày 22/01, tỷ giá USD/VND niêm yết tại hầu hết các ngân hàng thương mại quay ngược chiều đi xuống, biên độ dao động không đáng kể', 'Ngày 22/01, tỷ giá USD/VND niêm yết tại hầu hết các ngân hàng thương mại quay ngược chiều đi xuống, biên độ dao động không đáng kể', '', ''),
(22, 23, 1, 1453571964, 1454055044, 1, 1453571964, 0, 2, 'S000022', 0, 180000, '', 'VND', 1, 0, 'g', 0, '2016_01/sp-04-320x320.jpg', 1, '', '', 0, 0, 0, 0, 1, 4, 1, '0', 1, 1, 1, 1, 0, 0, 0, 1, 'Case iphone mẫu 4', 'case-iphone-mau-4', 'Ngày 22/01, tỷ giá USD/VND niêm yết tại hầu hết các ngân hàng thương mại quay ngược chiều đi xuống, biên độ dao động không đáng kể', 'Ngày 22/01, tỷ giá USD/VND niêm yết tại hầu hết các ngân hàng thương mại quay ngược chiều đi xuống, biên độ dao động không đáng kể', '', ''),
(23, 23, 1, 1453572028, 1454055036, 1, 1453572028, 0, 2, 'S000023', 0, 99000, '', 'VND', 1, 0, 'g', 0, '2016_01/sp-02-320x320.jpg', 1, '', '', 0, 0, 0, 0, 1, 4, 1, '0', 1, 1, 1, 1, 0, 0, 0, 1, 'Case iphone mẫu 2', 'case-iphone-mau-2', 'Ngày 22/01, tỷ giá USD/VND niêm yết tại hầu hết các ngân hàng thương mại quay ngược chiều đi xuống, biên độ dao động không đáng kể', 'Ngày 22/01, tỷ giá USD/VND niêm yết tại hầu hết các ngân hàng thương mại quay ngược chiều đi xuống, biên độ dao động không đáng kể', '', ''),
(24, 23, 1, 1453572101, 1454055028, 1, 1453572101, 0, 2, 'S000024', 0, 90000, '', 'VND', 1, 0, 'g', 0, '2016_01/sp-011-320x320.jpg', 1, '', '', 0, 0, 0, 0, 1, 4, 1, '0', 1, 1, 1, 1, 0, 0, 0, 1, 'Case iphone mẫu 1', 'case-iphone-mau-1', '<a href="http://glyphicons.com/">Glyphicons</a>&nbsp;Halflings are normally not available for free, but an arrangement between Bootstrap and the Glyphicons creators have made this possible at no cost to you as developers. As a thank you, we ask you to include an optional link back to&nbsp;<a href="http://glyphicons.com/">Glyphicons</a>&nbsp;whenever practical', '<a href="http://glyphicons.com/">Glyphicons</a>&nbsp;Halflings are normally not available for free, but an arrangement between Bootstrap and the Glyphicons creators have made this possible at no cost to you as developers. As a thank you, we ask you to include an optional link back to&nbsp;<a href="http://glyphicons.com/">Glyphicons</a>&nbsp;whenever practical', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_shops`
--

DROP TABLE IF EXISTS `nv4_shops_shops`;
CREATE TABLE IF NOT EXISTS `nv4_shops_shops` (
`id` tinyint(3) unsigned NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `address` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` tinyint(3) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_shops_carrier`
--

DROP TABLE IF EXISTS `nv4_shops_shops_carrier`;
CREATE TABLE IF NOT EXISTS `nv4_shops_shops_carrier` (
  `shops_id` tinyint(3) unsigned NOT NULL,
  `carrier_id` tinyint(3) unsigned NOT NULL,
  `config_id` tinyint(3) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_tabs`
--

DROP TABLE IF EXISTS `nv4_shops_tabs`;
CREATE TABLE IF NOT EXISTS `nv4_shops_tabs` (
`id` int(3) unsigned NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` int(10) unsigned NOT NULL DEFAULT '1',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `vi_title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shops_tabs`
--

INSERT INTO `nv4_shops_tabs` (`id`, `icon`, `content`, `weight`, `active`, `vi_title`) VALUES
(1, '', 'content_detail', 1, 1, 'Chi tiết sản phẩm'),
(2, '', 'content_comments', 2, 1, 'Bình luận'),
(3, '', 'content_rate', 3, 1, 'Đánh giá');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_tags_id_vi`
--

DROP TABLE IF EXISTS `nv4_shops_tags_id_vi`;
CREATE TABLE IF NOT EXISTS `nv4_shops_tags_id_vi` (
  `id` int(11) NOT NULL,
  `tid` mediumint(9) NOT NULL,
  `keyword` varchar(65) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shops_tags_id_vi`
--

INSERT INTO `nv4_shops_tags_id_vi` (`id`, `tid`, `keyword`) VALUES
(1, 1, 'thời trang'),
(1, 2, 'sang trọng'),
(1, 3, 'phù hợp'),
(1, 4, 'đi chơi'),
(6, 5, 'áo sơ mi'),
(10, 6, 'mũi nhọn'),
(11, 7, 'búp bê'),
(12, 8, 'trở thành'),
(12, 9, 'chăm sóc'),
(12, 10, 'quan trọng'),
(12, 11, 'đặc biệt'),
(12, 12, 'ích lợi'),
(16, 13, 'tỷ giá'),
(16, 14, 'niêm yết'),
(16, 15, 'hầu hết'),
(16, 16, 'ngân hàng'),
(16, 17, 'thương mại'),
(16, 18, 'dao động'),
(17, 13, 'tỷ giá'),
(17, 14, 'niêm yết'),
(17, 15, 'hầu hết'),
(17, 16, 'ngân hàng'),
(17, 17, 'thương mại'),
(17, 18, 'dao động'),
(18, 13, 'tỷ giá'),
(18, 14, 'niêm yết'),
(18, 15, 'hầu hết'),
(18, 16, 'ngân hàng'),
(18, 17, 'thương mại'),
(18, 18, 'dao động'),
(19, 13, 'tỷ giá'),
(19, 14, 'niêm yết'),
(19, 15, 'hầu hết'),
(19, 16, 'ngân hàng'),
(19, 17, 'thương mại'),
(19, 18, 'dao động'),
(20, 13, 'tỷ giá'),
(20, 14, 'niêm yết'),
(20, 15, 'hầu hết'),
(20, 16, 'ngân hàng'),
(20, 17, 'thương mại'),
(20, 18, 'dao động'),
(21, 13, 'tỷ giá'),
(21, 14, 'niêm yết'),
(21, 15, 'hầu hết'),
(21, 16, 'ngân hàng'),
(21, 17, 'thương mại'),
(21, 18, 'dao động'),
(22, 13, 'tỷ giá'),
(22, 14, 'niêm yết'),
(22, 15, 'hầu hết'),
(22, 16, 'ngân hàng'),
(22, 17, 'thương mại'),
(22, 18, 'dao động'),
(23, 13, 'tỷ giá'),
(23, 14, 'niêm yết'),
(23, 15, 'hầu hết'),
(23, 16, 'ngân hàng'),
(23, 17, 'thương mại'),
(23, 18, 'dao động');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_tags_vi`
--

DROP TABLE IF EXISTS `nv4_shops_tags_vi`;
CREATE TABLE IF NOT EXISTS `nv4_shops_tags_vi` (
`tid` mediumint(8) unsigned NOT NULL,
  `numpro` mediumint(8) NOT NULL DEFAULT '0',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `keywords` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shops_tags_vi`
--

INSERT INTO `nv4_shops_tags_vi` (`tid`, `numpro`, `alias`, `image`, `description`, `keywords`) VALUES
(1, 1, 'thời-trang', '', '', 'thời trang'),
(2, 1, 'sang-trọng', '', '', 'sang trọng'),
(3, 1, 'phù-hợp', '', '', 'phù hợp'),
(4, 1, 'đi-chơi', '', '', 'đi chơi'),
(5, 1, 'áo-sơ-mi', '', '', 'áo sơ mi'),
(6, 1, 'mũi-nhọn', '', '', 'mũi nhọn'),
(7, 1, 'búp-bê', '', '', 'búp bê'),
(8, 1, 'trở-thành', '', '', 'trở thành'),
(9, 1, 'chăm-sóc', '', '', 'chăm sóc'),
(10, 1, 'quan-trọng', '', '', 'quan trọng'),
(11, 1, 'đặc-biệt', '', '', 'đặc biệt'),
(12, 1, 'ích-lợi', '', '', 'ích lợi'),
(13, 8, 'tỷ-giá', '', '', 'tỷ giá'),
(14, 8, 'niêm-yết', '', '', 'niêm yết'),
(15, 8, 'hầu-hết', '', '', 'hầu hết'),
(16, 8, 'ngân-hàng', '', '', 'ngân hàng'),
(17, 8, 'thương-mại', '', '', 'thương mại'),
(18, 8, 'dao-động', '', '', 'dao động');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_template`
--

DROP TABLE IF EXISTS `nv4_shops_template`;
CREATE TABLE IF NOT EXISTS `nv4_shops_template` (
`id` mediumint(8) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_transaction`
--

DROP TABLE IF EXISTS `nv4_shops_transaction`;
CREATE TABLE IF NOT EXISTS `nv4_shops_transaction` (
`transaction_id` int(11) NOT NULL,
  `transaction_time` int(11) NOT NULL DEFAULT '0',
  `transaction_status` int(11) NOT NULL,
  `order_id` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `payment` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `payment_id` varchar(22) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `payment_time` int(11) NOT NULL DEFAULT '0',
  `payment_amount` float NOT NULL DEFAULT '0',
  `payment_data` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_units`
--

DROP TABLE IF EXISTS `nv4_shops_units`;
CREATE TABLE IF NOT EXISTS `nv4_shops_units` (
`id` int(11) NOT NULL,
  `vi_title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_note` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shops_units`
--

INSERT INTO `nv4_shops_units` (`id`, `vi_title`, `vi_note`) VALUES
(1, 'cái', ''),
(2, 'đôi', '');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_warehouse`
--

DROP TABLE IF EXISTS `nv4_shops_warehouse`;
CREATE TABLE IF NOT EXISTS `nv4_shops_warehouse` (
`wid` int(11) unsigned NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shops_warehouse`
--

INSERT INTO `nv4_shops_warehouse` (`wid`, `title`, `note`, `user_id`, `addtime`) VALUES
(1, 'Nhập kho ngày 23/05/2015', '', 1, 1432364016),
(2, 'Nhập kho ngày 23/05/2015', '', 1, 1432365552),
(3, 'Nhập kho ngày 23/05/2015', '', 1, 1432366753),
(4, 'Nhập kho ngày 23/05/2015', '', 1, 1432367106),
(5, 'Nhập kho ngày 23/05/2015', '', 1, 1432367387),
(6, 'Nhập kho ngày 23/05/2015', '', 1, 1432367857),
(7, 'Nhập kho ngày 23/05/2015', '', 1, 1432369139),
(8, 'Nhập kho ngày 26/05/2015', '', 1, 1432608794),
(9, 'Nhập kho ngày 26/05/2015', '', 1, 1432608805),
(10, 'Nhập kho ngày 26/05/2015', '', 1, 1432608819),
(11, 'Nhập kho ngày 26/05/2015', '', 1, 1432608835);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_warehouse_logs`
--

DROP TABLE IF EXISTS `nv4_shops_warehouse_logs`;
CREATE TABLE IF NOT EXISTS `nv4_shops_warehouse_logs` (
`logid` int(11) unsigned NOT NULL,
  `wid` int(11) unsigned NOT NULL DEFAULT '0',
  `pro_id` int(11) unsigned NOT NULL DEFAULT '0',
  `quantity` int(11) unsigned NOT NULL DEFAULT '0',
  `price` float NOT NULL DEFAULT '0',
  `money_unit` char(3) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shops_warehouse_logs`
--

INSERT INTO `nv4_shops_warehouse_logs` (`logid`, `wid`, `pro_id`, `quantity`, `price`, `money_unit`) VALUES
(1, 1, 1, 20, 150000, 'VND'),
(2, 2, 2, 50, 250000, 'VND'),
(3, 3, 3, 15, 70000, 'VND'),
(4, 4, 4, 20, 120000, 'VND'),
(5, 5, 5, 30, 120000, 'VND'),
(6, 6, 6, 15, 180000, 'VND'),
(7, 7, 7, 50, 50000, 'VND'),
(8, 8, 11, 20, 80, 'VND'),
(9, 9, 10, 10, 180, 'VND'),
(10, 10, 9, 10, 150, 'VND'),
(11, 11, 8, 15, 50000, 'VND');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_warehouse_logs_group`
--

DROP TABLE IF EXISTS `nv4_shops_warehouse_logs_group`;
CREATE TABLE IF NOT EXISTS `nv4_shops_warehouse_logs_group` (
`id` int(11) unsigned NOT NULL,
  `logid` int(11) unsigned NOT NULL DEFAULT '0',
  `listgroup` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) unsigned NOT NULL DEFAULT '0',
  `price` float NOT NULL DEFAULT '0',
  `money_unit` char(3) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_weight_vi`
--

DROP TABLE IF EXISTS `nv4_shops_weight_vi`;
CREATE TABLE IF NOT EXISTS `nv4_shops_weight_vi` (
`id` tinyint(2) unsigned NOT NULL,
  `code` char(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange` float NOT NULL DEFAULT '0',
  `round` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shops_weight_vi`
--

INSERT INTO `nv4_shops_weight_vi` (`id`, `code`, `title`, `exchange`, `round`) VALUES
(1, 'g', 'Gram', 1, '0.1'),
(2, 'kg', 'Kilogam', 1000, '0.1');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_wishlist`
--

DROP TABLE IF EXISTS `nv4_shops_wishlist`;
CREATE TABLE IF NOT EXISTS `nv4_shops_wishlist` (
`wid` smallint(6) NOT NULL,
  `user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `listid` text COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_upload_dir`
--

DROP TABLE IF EXISTS `nv4_upload_dir`;
CREATE TABLE IF NOT EXISTS `nv4_upload_dir` (
`did` mediumint(8) NOT NULL,
  `dirname` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` int(11) NOT NULL DEFAULT '0',
  `thumb_type` tinyint(4) NOT NULL DEFAULT '0',
  `thumb_width` smallint(6) NOT NULL DEFAULT '0',
  `thumb_height` smallint(6) NOT NULL DEFAULT '0',
  `thumb_quality` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_upload_dir`
--

INSERT INTO `nv4_upload_dir` (`did`, `dirname`, `time`, `thumb_type`, `thumb_width`, `thumb_height`, `thumb_quality`) VALUES
(0, '', 0, 3, 100, 150, 90),
(1, 'uploads', 1453392362, 0, 0, 0, 0),
(2, 'uploads/about', 1453433655, 0, 0, 0, 0),
(3, 'uploads/banners', 1453433662, 0, 0, 0, 0),
(4, 'uploads/contact', 1453434538, 0, 0, 0, 0),
(5, 'uploads/freecontent', 1453434540, 0, 0, 0, 0),
(6, 'uploads/menu', 1453434540, 0, 0, 0, 0),
(7, 'uploads/news', 1453434511, 0, 0, 0, 0),
(8, 'uploads/news/source', 0, 0, 0, 0, 0),
(9, 'uploads/news/temp_pic', 0, 0, 0, 0, 0),
(10, 'uploads/news/topics', 0, 0, 0, 0, 0),
(11, 'uploads/page', 1453434515, 0, 0, 0, 0),
(12, 'uploads/siteterms', 1453434516, 0, 0, 0, 0),
(13, 'uploads/users', 1453434517, 0, 0, 0, 0),
(14, 'uploads/shops/temp_pic', 0, 0, 0, 0, 0),
(15, 'uploads/shops/2016_01', 1453446524, 3, 320, 320, 90),
(16, 'uploads/shops/files', 0, 0, 0, 0, 0),
(17, 'uploads/shops', 1453434773, 0, 0, 0, 0),
(18, 'uploads/shops/2015_05', 1453445676, 3, 100, 120, 90);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_upload_file`
--

DROP TABLE IF EXISTS `nv4_upload_file`;
CREATE TABLE IF NOT EXISTS `nv4_upload_file` (
  `name` varchar(245) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ext` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `filesize` int(11) NOT NULL DEFAULT '0',
  `src` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `srcwidth` int(11) NOT NULL DEFAULT '0',
  `srcheight` int(11) NOT NULL DEFAULT '0',
  `sizes` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `mtime` int(11) NOT NULL DEFAULT '0',
  `did` int(11) NOT NULL DEFAULT '0',
  `title` varchar(245) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_upload_file`
--

INSERT INTO `nv4_upload_file` (`name`, `ext`, `type`, `filesize`, `src`, `srcwidth`, `srcheight`, `sizes`, `userid`, `mtime`, `did`, `title`, `alt`) VALUES
('1.jpg', 'jpg', 'image', 109246, 'assets/1.jpg', 80, 24, '1004|300', 1, 1453392385, 1, '1.jpg', '1'),
('2.png', 'png', 'image', 45168, 'assets/2.png', 80, 24, '1004|300', 1, 1453392396, 1, '2.png', '2'),
('logo-nukev...png', 'png', 'image', 13223, 'assets/about/logo-nukeviet3-flag-180x75.png', 80, 34, '180|75', 1, 1452108392, 2, 'logo-nukeviet3-flag-180x75.png', 'logo nukeviet3 flag 180x75'),
('nukevietcm...png', 'png', 'image', 11974, 'assets/about/nukevietcms-180x84.png', 80, 38, '180|84', 1, 1452108392, 2, 'nukevietcms-180x84.png', 'nukevietcms 180x84'),
('nukevietcms.png', 'png', 'image', 85684, 'assets/about/nukevietcms.png', 80, 38, '1500|700', 1, 1452108392, 2, 'nukevietcms.png', 'nukevietcms'),
('nukevietcm...png', 'png', 'image', 13125, 'assets/about/nukevietcms_laco_180x57.png', 80, 26, '180|57', 1, 1452108392, 2, 'nukevietcms_laco_180x57.png', 'nukevietcms laco 180x57'),
('nukevietcm...png', 'png', 'image', 13319, 'assets/about/nukevietcms_mu_noel_180x84.png', 80, 38, '180|84', 1, 1452108392, 2, 'nukevietcms_mu_noel_180x84.png', 'nukevietcms mu noel 180x84'),
('nukevietvn.png', 'png', 'image', 81035, 'assets/about/nukevietvn.png', 80, 38, '1500|700', 1, 1452108392, 2, 'nukevietvn.png', 'nukevietvn'),
('nukevietvn...png', 'png', 'image', 11586, 'assets/about/nukevietvn_180x84.png', 80, 38, '180|84', 1, 1452108392, 2, 'nukevietvn_180x84.png', 'nukevietvn 180x84'),
('w.png', 'png', 'image', 12156, 'assets/about/w.png', 80, 40, '288|143', 1, 1452108392, 2, 'w.png', 'w'),
('bongoaigiao.jpg', 'jpg', 'image', 15104, 'assets/banners/bongoaigiao.jpg', 80, 27, '160|54', 1, 1452108392, 3, 'bongoaigiao.jpg', 'bongoaigiao'),
('vinades.jpg', 'jpg', 'image', 26778, 'assets/banners/vinades.jpg', 34, 80, '190|454', 1, 1452108392, 3, 'vinades.jpg', 'vinades'),
('vndads___05.jpg', 'jpg', 'image', 47783, 'assets/banners/vndads___05.jpg', 80, 10, '510|65', 1, 1452108392, 3, 'vndads___05.jpg', 'vndads 05'),
('webnhanh_vn.png', 'png', 'image', 8047, 'assets/banners/webnhanh_vn.png', 80, 10, '510|65', 1, 1452108392, 3, 'webnhanh_vn.png', 'webnhanh vn'),
('720.png', 'png', 'image', 22942, 'assets/shops/2016_01/720.png', 80, 80, '200|200', 1, 1453435314, 15, '720.png', '720'),
('chuc-mung-...jpg', 'jpg', 'image', 130708, 'assets/news/chuc-mung-nukeviet-thong-tu-20-bo-tttt.jpg', 80, 62, '461|360', 1, 1452108392, 7, 'chuc-mung-nukeviet-thong-tu-20-bo-tttt.jpg', 'chuc mung nukeviet thong tu 20 bo tttt'),
('hoptac.jpg', 'jpg', 'image', 12871, 'assets/news/hoptac.jpg', 80, 66, '382|314', 1, 1452108392, 7, 'hoptac.jpg', 'hoptac'),
('nangly.jpg', 'jpg', 'image', 34802, 'assets/news/nangly.jpg', 80, 53, '500|332', 1, 1452108392, 7, 'nangly.jpg', 'nangly'),
('nukeviet-cms.jpg', 'jpg', 'image', 83489, 'assets/news/nukeviet-cms.jpg', 80, 55, '500|345', 1, 1452108392, 7, 'nukeviet-cms.jpg', 'nukeviet cms'),
('nukeviet-job.jpg', 'jpg', 'image', 23576, 'assets/news/nukeviet-job.jpg', 80, 60, '400|300', 1, 1452108392, 7, 'nukeviet-job.jpg', 'nukeviet job'),
('nukeviet-n...jpg', 'jpg', 'image', 18611, 'assets/news/nukeviet-nhantaidatviet2011.jpg', 80, 54, '400|268', 1, 1452108392, 7, 'nukeviet-nhantaidatviet2011.jpg', 'nukeviet nhantaidatviet2011'),
('tap-huan-p...jpg', 'jpg', 'image', 215497, 'assets/news/tap-huan-pgd-ha-dong-2015.jpg', 80, 60, '800|600', 1, 1452108392, 7, 'tap-huan-pgd-ha-dong-2015.jpg', 'tap huan pgd ha dong 2015'),
('nukeviet-edu.jpg', 'jpg', 'image', 10338, 'assets/freecontent/nukeviet-edu.jpg', 80, 30, '220|80', 1, 1452108392, 5, 'nukeviet-edu.jpg', 'nukeviet edu'),
('nukeviet-p...jpg', 'jpg', 'image', 11396, 'assets/freecontent/nukeviet-portal.jpg', 80, 30, '220|80', 1, 1452108392, 5, 'nukeviet-portal.jpg', 'nukeviet portal'),
('nukeviet-t...jpg', 'jpg', 'image', 15627, 'assets/freecontent/nukeviet-toasoan.jpg', 80, 30, '220|80', 1, 1452108392, 5, 'nukeviet-toasoan.jpg', 'nukeviet toasoan'),
('nukeviet.jpg', 'jpg', 'image', 9423, 'assets/freecontent/nukeviet.jpg', 80, 30, '220|80', 1, 1452108392, 5, 'nukeviet.jpg', 'nukeviet'),
('giay-bup-b...jpg', 'jpg', 'image', 131547, 'assets/shops/2015_05/giay-bup-be-ngoi-sao-nhap-khau.jpg', 80, 80, '800|800', 1, 1453123152, 18, 'giay-bup-be-ngoi-sao-nhap-khau.jpg', 'giay bup be ngoi sao nhap khau'),
('sp-13-320x320.jpg', 'jpg', 'image', 18673, 'assets/shops/2016_01/sp-13-320x320.jpg', 80, 80, '320|320', 1, 1453446295, 15, 'sp-13-320x320.jpg', 'sp 13 320x320'),
('sp-11-320x320.jpg', 'jpg', 'image', 10272, 'assets/shops/2016_01/sp-11-320x320.jpg', 80, 80, '320|320', 1, 1453446170, 15, 'sp-11-320x320.jpg', 'sp 11 320x320'),
('sp-12-320x320.jpg', 'jpg', 'image', 20340, 'assets/shops/2016_01/sp-12-320x320.jpg', 80, 80, '320|320', 1, 1453446660, 15, 'sp-12-320x320.jpg', 'sp 12 320x320'),
('3_2.png', 'png', 'image', 22449, 'assets/shops/2016_01/3_2.png', 80, 24, '1004|300', 1, 1453447407, 15, '3_2.png', '3 2'),
('3_2.png', 'png', 'image', 22449, 'assets/3_2.png', 80, 24, '1004|300', 1, 1453447440, 1, '3_2.png', '3 2'),
('1_4.png', 'png', 'image', 6858, 'assets/1_4.png', 80, 24, '1004|300', 1, 1453449762, 1, '1_4.png', '1 4'),
('3.png', 'png', 'image', 116697, 'assets/3.png', 80, 24, '1004|300', 1, 1453451664, 1, '3.png', '3'),
('1_3.png', 'png', 'image', 6557, 'assets/1_3.png', 80, 24, '1004|300', 1, 1453453263, 1, '1_3.png', '1 3'),
('2_2.png', 'png', 'image', 8137, 'assets/2_2.png', 80, 24, '1004|300', 1, 1453455159, 1, '2_2.png', '2 2'),
('2_3.png', 'png', 'image', 7770, 'assets/2_3.png', 80, 24, '1004|300', 1, 1453455170, 1, '2_3.png', '2 3'),
('sp-10-320x320.jpg', 'jpg', 'image', 19494, 'assets/shops/2016_01/sp-10-320x320.jpg', 80, 80, '320|320', 1, 1453571025, 15, 'sp-10-320x320.jpg', 'sp 10 320x320'),
('sp-09-320x320.jpg', 'jpg', 'image', 18352, 'assets/shops/2016_01/sp-09-320x320.jpg', 80, 80, '320|320', 1, 1453571133, 15, 'sp-09-320x320.jpg', 'sp 09 320x320'),
('sp-07-320x320.jpg', 'jpg', 'image', 26013, 'assets/shops/2016_01/sp-07-320x320.jpg', 80, 80, '320|320', 1, 1453571187, 15, 'sp-07-320x320.jpg', 'sp 07 320x320'),
('sp-03-320x320.jpg', 'jpg', 'image', 21729, 'assets/shops/2016_01/sp-03-320x320.jpg', 80, 80, '320|320', 1, 1453571502, 15, 'sp-03-320x320.jpg', 'sp 03 320x320'),
('sp-06-320x320.jpg', 'jpg', 'image', 25900, 'assets/shops/2016_01/sp-06-320x320.jpg', 80, 80, '320|320', 1, 1453571626, 15, 'sp-06-320x320.jpg', 'sp 06 320x320'),
('sp-05-320x320.jpg', 'jpg', 'image', 25660, 'assets/shops/2016_01/sp-05-320x320.jpg', 80, 80, '320|320', 1, 1453571693, 15, 'sp-05-320x320.jpg', 'sp 05 320x320'),
('sp-04-320x320.jpg', 'jpg', 'image', 36093, 'assets/shops/2016_01/sp-04-320x320.jpg', 80, 80, '320|320', 1, 1453571953, 15, 'sp-04-320x320.jpg', 'sp 04 320x320'),
('sp-02-320x320.jpg', 'jpg', 'image', 29892, 'assets/shops/2016_01/sp-02-320x320.jpg', 80, 80, '320|320', 1, 1453572019, 15, 'sp-02-320x320.jpg', 'sp 02 320x320'),
('sp-011-320...jpg', 'jpg', 'image', 18249, 'assets/shops/2016_01/sp-011-320x320.jpg', 80, 80, '320|320', 1, 1453572072, 15, 'sp-011-320x320.jpg', 'sp 011 320x320');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users`
--

DROP TABLE IF EXISTS `nv4_users`;
CREATE TABLE IF NOT EXISTS `nv4_users` (
`userid` mediumint(8) unsigned NOT NULL,
  `group_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `md5username` char(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gender` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `birthday` int(11) NOT NULL,
  `sig` text COLLATE utf8mb4_unicode_ci,
  `regdate` int(11) NOT NULL DEFAULT '0',
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `passlostkey` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `view_mail` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `remember` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `in_groups` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `checknum` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_login` int(11) unsigned NOT NULL DEFAULT '0',
  `last_ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_openid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `idsite` int(11) NOT NULL DEFAULT '0',
  `safemode` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `safekey` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_users`
--

INSERT INTO `nv4_users` (`userid`, `group_id`, `username`, `md5username`, `password`, `email`, `first_name`, `last_name`, `gender`, `photo`, `birthday`, `sig`, `regdate`, `question`, `answer`, `passlostkey`, `view_mail`, `remember`, `in_groups`, `active`, `checknum`, `last_login`, `last_ip`, `last_agent`, `last_openid`, `idsite`, `safemode`, `safekey`) VALUES
(1, 0, 'ngocphan', '48a8f79c8073d73711833fe20e5f132f', '{SSHA}D24hV+T2gX4KUHCkk+Q79zC95LE1Rlo5', 'ngocphan12031995@gmail.com', 'ngocphan', '', '', '', 0, '', 1453277393, 'thich', 'thich', '', 0, 1, '', 1, '', 1453277393, '', '', '', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users_config`
--

DROP TABLE IF EXISTS `nv4_users_config`;
CREATE TABLE IF NOT EXISTS `nv4_users_config` (
  `config` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `edit_time` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_users_config`
--

INSERT INTO `nv4_users_config` (`config`, `content`, `edit_time`) VALUES
('access_admin', 'a:6:{s:12:"access_addus";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:14:"access_waiting";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:13:"access_editus";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:12:"access_delus";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:13:"access_passus";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:13:"access_groups";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}}', 1352873462),
('password_simple', '000000|1234|2000|12345|111111|123123|123456|11223344|654321|696969|1234567|12345678|87654321|123456789|23456789|1234567890|66666666|68686868|66668888|88888888|99999999|999999999|1234569|12345679|aaaaaa|abc123|abc123@|abc@123|admin123|admin123@|admin@123|nuke123|nuke123@|nuke@123|adobe1|adobe123|azerty|baseball|dragon|football|harley|iloveyou|jennifer|jordan|letmein|macromedia|master|michael|monkey|mustang|password|photoshop|pussy|qwerty|shadow|superman|hoilamgi|khongbiet|khongco|khongcopass', 1453277351),
('deny_email', 'yoursite.com|mysite.com|localhost|xxx', 1453277351),
('deny_name', 'anonimo|anonymous|god|linux|nobody|operator|root', 1453277351),
('avatar_width', '80', 1453277351),
('avatar_height', '80', 1453277351),
('siteterms_vi', '<p> Để trở thành thành viên, bạn phải cam kết đồng ý với các điều khoản dưới đây. Chúng tôi có thể thay đổi lại những điều khoản này vào bất cứ lúc nào và chúng tôi sẽ cố gắng thông báo đến bạn kịp thời.<br /> <br /> Bạn cam kết không gửi bất cứ bài viết có nội dung lừa đảo, thô tục, thiếu văn hoá; vu khống, khiêu khích, đe doạ người khác; liên quan đến các vấn đề tình dục hay bất cứ nội dung nào vi phạm luật pháp của quốc gia mà bạn đang sống, luật pháp của quốc gia nơi đặt máy chủ của website này hay luật pháp quốc tế. Nếu vẫn cố tình vi phạm, ngay lập tức bạn sẽ bị cấm tham gia vào website. Địa chỉ IP của tất cả các bài viết đều được ghi nhận lại để bảo vệ các điều khoản cam kết này trong trường hợp bạn không tuân thủ.<br /> <br /> Bạn đồng ý rằng website có quyền gỡ bỏ, sửa, di chuyển hoặc khoá bất kỳ bài viết nào trong website vào bất cứ lúc nào tuỳ theo nhu cầu công việc.<br /> <br /> Đăng ký làm thành viên của chúng tôi, bạn cũng phải đồng ý rằng, bất kỳ thông tin cá nhân nào mà bạn cung cấp đều được lưu trữ trong cơ sở dữ liệu của hệ thống. Mặc dù những thông tin này sẽ không được cung cấp cho bất kỳ người thứ ba nào khác mà không được sự đồng ý của bạn, chúng tôi không chịu trách nhiệm về việc những thông tin cá nhân này của bạn bị lộ ra bên ngoài từ những kẻ phá hoại có ý đồ xấu tấn công vào cơ sở dữ liệu của hệ thống.</p>', 1274757129),
('active_group_newusers', '0', 1463373363);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users_field`
--

DROP TABLE IF EXISTS `nv4_users_field`;
CREATE TABLE IF NOT EXISTS `nv4_users_field` (
`fid` mediumint(8) NOT NULL,
  `field` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` int(10) unsigned NOT NULL DEFAULT '1',
  `field_type` enum('number','date','textbox','textarea','editor','select','radio','checkbox','multiselect') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'textbox',
  `field_choices` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sql_choices` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `match_type` enum('none','alphanumeric','email','url','regex','callback') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'none',
  `match_regex` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `func_callback` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `min_length` int(11) NOT NULL DEFAULT '0',
  `max_length` bigint(20) unsigned NOT NULL DEFAULT '0',
  `required` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `show_register` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `user_editable` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `show_profile` tinyint(4) NOT NULL DEFAULT '1',
  `class` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users_groups`
--

DROP TABLE IF EXISTS `nv4_users_groups`;
CREATE TABLE IF NOT EXISTS `nv4_users_groups` (
`group_id` smallint(5) unsigned NOT NULL,
  `title` varchar(240) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  `group_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0:Sys, 1:approval, 2:public',
  `group_color` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL,
  `exp_time` int(11) NOT NULL,
  `weight` int(11) unsigned NOT NULL DEFAULT '0',
  `act` tinyint(1) unsigned NOT NULL,
  `idsite` int(11) unsigned NOT NULL DEFAULT '0',
  `numbers` mediumint(9) unsigned NOT NULL DEFAULT '0',
  `siteus` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `config` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_users_groups`
--

INSERT INTO `nv4_users_groups` (`group_id`, `title`, `email`, `description`, `content`, `group_type`, `group_color`, `group_avatar`, `is_default`, `add_time`, `exp_time`, `weight`, `act`, `idsite`, `numbers`, `siteus`, `config`) VALUES
(1, 'Super admin', '', 'Super Admin', '', 0, '', '', 0, 1453277351, 0, 1, 1, 0, 1, 0, ''),
(2, 'General admin', '', 'General Admin', '', 0, '', '', 0, 1453277351, 0, 2, 1, 0, 0, 0, ''),
(3, 'Module admin', '', 'Module Admin', '', 0, '', '', 0, 1453277351, 0, 3, 1, 0, 0, 0, ''),
(4, 'Users', '', 'Users', '', 0, '', '', 0, 1453277351, 0, 4, 1, 0, 1, 0, ''),
(5, 'Guest', '', 'Guest', '', 0, '', '', 0, 1453277351, 0, 5, 1, 0, 0, 0, ''),
(6, 'All', '', 'All', '', 0, '', '', 0, 1453277351, 0, 6, 1, 0, 0, 0, ''),
(10, 'NukeViet-Fans', '', 'Nhóm những người hâm mộ hệ thống NukeViet', '', 2, '', '', 0, 1453277351, 0, 7, 1, 0, 0, 0, ''),
(11, 'NukeViet-Admins', '', 'Nhóm những người quản lý website xây dựng bằng hệ thống NukeViet', '', 2, '', '', 0, 1453277351, 0, 8, 1, 0, 0, 0, ''),
(12, 'NukeViet-Programmers', '', 'Nhóm Lập trình viên hệ thống NukeViet', '', 2, '', '', 0, 1453277351, 0, 9, 1, 0, 0, 0, ''),
(7, 'New Users', '', 'New Users', '', 0, '', '', 0, 1463373363, 0, 5, 1, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users_groups_users`
--

DROP TABLE IF EXISTS `nv4_users_groups_users`;
CREATE TABLE IF NOT EXISTS `nv4_users_groups_users` (
  `group_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `is_leader` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `approved` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_users_groups_users`
--

INSERT INTO `nv4_users_groups_users` (`group_id`, `userid`, `is_leader`, `approved`, `data`) VALUES
(1, 1, 0, 1, '0');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users_info`
--

DROP TABLE IF EXISTS `nv4_users_info`;
CREATE TABLE IF NOT EXISTS `nv4_users_info` (
  `userid` mediumint(8) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_users_info`
--

INSERT INTO `nv4_users_info` (`userid`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users_openid`
--

DROP TABLE IF EXISTS `nv4_users_openid`;
CREATE TABLE IF NOT EXISTS `nv4_users_openid` (
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `openid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `opid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users_question`
--

DROP TABLE IF EXISTS `nv4_users_question`;
CREATE TABLE IF NOT EXISTS `nv4_users_question` (
`qid` smallint(5) unsigned NOT NULL,
  `title` varchar(240) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lang` char(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',
  `edit_time` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_users_question`
--

INSERT INTO `nv4_users_question` (`qid`, `title`, `lang`, `weight`, `add_time`, `edit_time`) VALUES
(1, 'Bạn thích môn thể thao nào nhất', 'vi', 1, 1274840238, 1274840238),
(2, 'Món ăn mà bạn yêu thích', 'vi', 2, 1274840250, 1274840250),
(3, 'Thần tượng điện ảnh của bạn', 'vi', 3, 1274840257, 1274840257),
(4, 'Bạn thích nhạc sỹ nào nhất', 'vi', 4, 1274840264, 1274840264),
(5, 'Quê ngoại của bạn ở đâu', 'vi', 5, 1274840270, 1274840270),
(6, 'Tên cuốn sách &quot;gối đầu giường&quot;', 'vi', 6, 1274840278, 1274840278),
(7, 'Ngày lễ mà bạn luôn mong đợi', 'vi', 7, 1274840285, 1274840285);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users_reg`
--

DROP TABLE IF EXISTS `nv4_users_reg`;
CREATE TABLE IF NOT EXISTS `nv4_users_reg` (
`userid` mediumint(8) unsigned NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `md5username` char(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `regdate` int(11) unsigned NOT NULL DEFAULT '0',
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checknum` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `users_info` text COLLATE utf8mb4_unicode_ci,
  `openid_info` text COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_about`
--

DROP TABLE IF EXISTS `nv4_vi_about`;
CREATE TABLE IF NOT EXISTS `nv4_vi_about` (
`id` mediumint(8) unsigned NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imagealt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imageposition` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `bodytext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `socialbutton` tinyint(4) NOT NULL DEFAULT '0',
  `activecomm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `layout_func` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `gid` mediumint(9) NOT NULL DEFAULT '0',
  `weight` smallint(4) NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_about`
--

INSERT INTO `nv4_vi_about` (`id`, `title`, `alias`, `image`, `imagealt`, `imageposition`, `description`, `bodytext`, `keywords`, `socialbutton`, `activecomm`, `layout_func`, `gid`, `weight`, `admin_id`, `add_time`, `edit_time`, `status`) VALUES
(1, 'Giới thiệu về NukeViet', 'gioi-thieu-ve-nukeviet', '', '', 0, '', '<h2><span style="font-size:20px;"><strong>Giới thiệu khái quát</strong></span></h2>  <p>NukeViet là một ứng dụng trên nền web có thể sử dụng vào nhiều mục đích khác nhau. Phiên bản đang được phát hành theo giấy phép phần mềm tự do nguồn mở có tên gọi đầy đủ là <a href="/about/Gioi-thieu-ve-NukeViet-CMS.html"><b>NukeViet CMS</b></a> gồm 2 phần chính là phần nhân (core) của hệ thống NukeViet và nhóm chức năng quản trị nội dung của CMS thường được sử dụng để xây dựng các website tin tức do đó người dùng thường nghĩ rằng NukeViet mạnh về hệ thống tin tức. Tuy nhiên, đội ngũ phát triển NukeViet đã phát triển nhiều hệ thống khác nhau cho NukeViet, nổi bật nhất là:</p>  <ul> 	<li>NukeViet Portal: Cổng thông tin hai chiều dùng cho doanh nghiệp.</li> 	<li><a href="http://edu.nukeviet.vn" target="_blank">NukeViet Edu Gate</a>: Cổng thông tin tích hợp nhiều website, sử dụng cho phòng giáo dục, sở giáo dục.</li> 	<li><a href="http://toasoandientu.vn" target="_blank">NukeViet Tòa Soạn Điện Tử</a>: Sử dụng cho các tòa soạn báo điện tử, trang tin điện tử.</li> </ul> Theo định hướng phát triển của NukeViet, ngoài NukeViet CMS đã được phát hành theo giấy phép tự do nguồn mở trong nhiều năm qua, NukeViet sẽ có thêm 2 nhóm ứng dụng nữa là:  <ul> 	<li>NukeViet Blog: Dành cho các website và người dùng tạo các trang nhật ký cá nhân.</li> 	<li>NukeViet Shop: dành cho các website thương mại điện tử với hoạt động chính là bán hàng trực tuyến, hiện đã có thể sử dụng bằng cách cài bổ sung <a href="https://github.com/nukeviet/module-shops" target="_blank">module Shop</a> lên NukeViet CMS.</li> </ul> &nbsp;  <h2><span style="font-size:20px;"><strong>Video giới thiệu</strong></span></h2> <span style="font-size:14px;">Video clip &quot;Giới thiệu mã nguồn mở NukeViet&quot; trong bản tin Tiêu điểm của chương trình Xã hội thông tin<br  /> (Đài truyền hình kỹ thuật số VTC) phát sóng lúc 20h chủ nhật, ngày 05-09-2010 trên VTC1</span>  <div style="text-align: center;"> <div style="text-align: center;"> <div class="youtube-embed-wrapper" style="position:relative;padding-bottom:56.25%;padding-top:30px;height:0;overflow:hidden;"><iframe allowfullscreen="" frameborder="0" height="480" src="//www.youtube.com/embed/Cxp1kCyVhqY?rel=0&amp;autoplay=1" style="position: absolute;top: 0;left: 0;width: 100%;height: 100%;" width="640"></iframe></div> <br  /> <span style="font-size:12px;"><em>Video clip &quot;Giới thiệu mã nguồn mở NukeViet&quot;</em></span></div> </div>  <h2><br  /> <span style="font-size:20px;"><strong><span class="mw-headline" id=".E1.BB.A8ng_d.E1.BB.A5ng">Lịch sử phát triển</span></strong></span></h2> NukeViet ra đời từ năm 2004, bắt đầu từ việc sử dụng sản phẩm PHP-Nuke để làm cho website cá nhân, anh Nguyễn Anh Tú - một lưu học sinh người Việt tại Nga - đã cùng cộng đồng Việt hóa, cải tiến theo nhu cầu sử dụng của người Việt. Được sự đón nhận của đông đảo người sử dụng, NukeViet đã liên tục được phát triển và trở thành một ứng dụng thuần Việt. Cho đến phiên bản 3.0, NukeViet đã được phát triển thành một ứng dụng khác biệt hoàn toàn, và không chỉ là một CMS, NukeViet được định hướng để trở thành phần mềm đa chức năng trên nền web.<br  /> <br  /> Kể từ năm 2010, NukeViet đã phát triển theo mô hình chuyên nghiệp, đội ngũ quản trị đã thành lập doanh nghiệp chuyên quản và đạt được những tiến bộ vượt bậc. NukeViet đã trở thành hệ quản trị nội dung nguồn mở duy nhất của Việt Nam được Bộ GD&amp;ĐT khuyến khích sử dụng trong giáo dục (thông tư 08/2010/TT-BGDĐT). Tiếp đó, NukeViet CMS đã được trao giải Nhân Tài Đất Việt 2011 và trở thành phần mềm nguồn mở đầu tiên đạt giải thưởng cao quý này. <h2><br  /> <span style="font-size:20px;"><strong><span class="mw-headline" id="Di.E1.BB.85n_.C4.91.C3.A0n_NukeViet.vn">Diễn đàn NukeViet.vn</span></strong></span></h2>  <p>Diễn đàn NukeViet hoạt động trên website: <a href="http://nukeviet.vn">http://nukeviet.vn</a>, đây là kênh chính thức và hữu hiệu cho các bạn đam mê về NukeViet có thể chia sẻ các kiến thức về NukeViet với nhau. Tính đến tháng 12 năm 2015 diễn đàn đã có trên 34.500 thành viên tham gia, bao gồm học sinh, sinh viên &amp; nhiều thành phần khác thuộc giới trí thức ở trong và ngoài nước.</p>  <p>Là một diễn đàn của các nhà quản lý website, rất nhiều thành viên trong diễn đàn NukeViet là cán bộ, lãnh đạo từ đủ mọi lĩnh vực: công nghệ thông tin, xây dựng, văn hóa - xã hội, thể thao, dịch vụ - du lịch... từ cử nhân, bác sĩ, kỹ sư cho đến bộ đội, công an..</p>  <h2><br  /> <span style="font-size:20px;"><span class="mw-headline" id="Th.C3.A0nh_t.C3.ADch_.26_gi.E1.BA.A3i_th.C6.B0.E1.BB.9Fng"><strong>Thành tích &amp; giải thưởng</strong></span></span></h2>  <h3><span style="font-size:14px;"><em><strong><span class="mw-headline" id="Khen_th.C6.B0.E1.BB.9Fng_.26_Th.C3.A0nh_t.C3.ADch">Khen thưởng &amp; Thành tích</span></strong></em></span></h3>  <ul> 	<li>Giải Ba Nhân tài Đất Việt 2011 ở Lĩnh vực Công nghệ thông tin/Sản phẩm đã ứng dụng rộng rãi (không có giải nhất, nhì).</li> 	<li>Bằng khen của Hội Tin học Việt Nam vì những đóng góp xuất sắc cho sự phát triển của cộng đồng nguồn mở tại Việt Nam.</li> </ul> <span style="font-size:14px;"><em><strong><span class="mw-headline" id=".C4.90.C6.B0.E1.BB.A3c_B.E1.BB.99_gi.C3.A1o_d.E1.BB.A5c_.26_.C4.90.C3.A0o_t.E1.BA.A1o_.E1.BB.A7ng_h.E1.BB.99">Được Bộ giáo dục &amp; Đào tạo ủng hộ</span></strong></em></span>  <p>NukeViet CMS là hệ quản trị nội dung nguồn mở duy nhất của Việt Nam nằm trong danh mục các sản phẩm phần mềm nguồn mở được khuyến khích sử dụng trong thông tư số 08/2010/TT-BGDĐT do Bộ GD&amp;ĐT ban hành ngày 01-03-2010 quy định về sử dụng phần mềm tự do mã nguồn mở trong các cơ sở giáo dục). Trong bài thuyết trình &quot;Hiện trạng triển khai nội dung thông tư 08/2010/TT-BGDĐT về sử dụng PMNM trong các cơ sở giáo dục và định hướng cho thời gian tới&quot;<sup> </sup>tại Hội thảo phần mềm nguồn mở trong các cơ quan, tổ chức nhà nước năm 2012, Cục trưởng cục CNTT Quách Tuấn Ngọc cho biết: &quot;NukeViet có thể thay thế SharePoint server&quot;, &quot;NukeViet được nhiều cơ sở giáo dục thích dùng&quot;<sup> </sup>NukeViet được Bộ GD&amp;ĐT đưa vào văn bản hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016. Trong văn bản số 4983/BGDĐT-CNTT của Bộ Giáo dục và Đào tạo (Bộ GDĐT) hướng dẫn việc triển khai nhiệm vụ công nghệ thông tin (CNTT) cho năm học 2015 - 2016 có những nội dung như sau liên quan đến NukeViet:</p>  <ul> 	<li>Nhiệm vụ số &quot;5. Công tác bồi dưỡng ứng dụng CNTT cho giáo viên và cán bộ quản lý giáo dục&quot;, mục &quot;5.1 Một số nội dung cần bồi dưỡng&quot; có ghi &quot;Tập huấn sử dụng phần mềm nguồn mở NukeViet.&quot;</li> 	<li>Nhiệm vụ số &quot; 10. Khai thác, sử dụng và dạy học bằng phần mềm nguồn mở&quot; có ghi: &quot;Khai thác và áp dụng phần mềm nguồn mở NukeViet trong giáo dục.&quot;</li> 	<li>Phụ lục văn bản, có trong nội dung &quot;Khuyến cáo khi sử dụng các hệ thống CNTT&quot;, hạng mục số 3 ghi rõ &quot;Không nên làm website mã nguồn đóng&quot; và &quot;Nên làm NukeViet: phần mềm nguồn mở&quot;.</li> </ul>  <h3><span style="font-size:14px;"><em><strong><span class="mw-headline" id=".C4.90.C6.B0.E1.BB.A3c_.C6.B0u_ti.C3.AAn_mua_s.E1.BA.AFm_s.E1.BB.AD_d.E1.BB.A5ng_trong_ch.C3.ADnh_ph.E1.BB.A7">Được ưu tiên mua sắm sử dụng trong chính phủ</span></strong></em></span></h3>  <p>NukeViet CMS là hệ quản trị nội dung nguồn mở được quy định ưu tiên mua sắm, sử dụng trong các cơ quan, tổ chức nhà nước Việt Nam theo thông tư 20/2014/TT-BTTTT ký ngày 05/12/2014 và có hiệu lực từ ngày 20/1/2015 quy định về các sản phẩm phần mềm nguồn mở được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước</p>  <h2><br  /> <span style="font-size:20px;"><span class="mw-headline" id="T.C3.ADnh_n.C4.83ng"><strong>Tính năng</strong></span></span></h2>  <h3><span style="font-size:14px;"><strong>NukeViet CMS 3.0 bản gốc có các module cơ bản là:</strong></span></h3>  <ul> 	<li>Quản lý Tin tức (<i>News</i>: Tạo bản tin chủ đề đa cấp, phân quyền theo chủ đề, hẹn giờ đăng tin, tạo bản in, bản tải về, thảo luận bản tin),</li> 	<li>Giới thiệu (<i>About</i>),</li> 	<li>Quản lý quảng cáo thương mại (banners),</li> 	<li>Quản lý người dùng (<i>users</i>),</li> 	<li>Liên hệ qua site (<i>Contact</i>),</li> 	<li>Cấp tin RSS (<i>RSS feeds</i>) và thu thập tin RSS (&quot;RSS reader&quot;),</li> 	<li>Bình chọn (thăm dò ý kiến - <i>Voting</i>),</li> 	<li>Thư viện file (<i>Download</i>),</li> 	<li>Thư viện Web (<i>Weblinks</i>),</li> 	<li>Hỏi nhanh đáp gọn(<i>Faq</i>),</li> 	<li>Thống kê truy cập (<i>statistics</i>),</li> 	<li>Tìm kiếm trong site (<i>Search</i>),</li> 	<li>Bán hàng trực tuyến (<i>Shop</i>) (có từ NukeViet 3.1)...</li> </ul>  <h3><span style="font-size:14px;"><strong>Tính năng hệ thống:</strong></span></h3>  <ul> 	<li>Cài đặt, nâng cấp và đóng gói tự động.</li> 	<li>Hỗ trợ đa ngôn ngữ giao diện và đa ngôn ngữ Cơ sở dữ liệu 100%, cho phép người sử dụng tự xây dựng ngôn ngữ mới.</li> 	<li>Thay đổi &amp; tùy biến giao diện nhiều cấp độ, cho phép người sử dụng có thể cài thêm giao diện mới hoặc tùy biến giao diện trên site theo ý thích. Người sử dụng có thể tùy biến bố cục giao diện theo layout, theo block ở các khu vực khác nhau của website.</li> 	<li>Quản lý module với khả năng xử lý đa nhân module (ảo hóa module).</li> 	<li>Cho phép phân nhóm thành viên và phân quyền người quản trị theo nhiều cấp độ khác nhau.</li> 	<li>Hỗ trợ tối ưu hóa cho các công cụ tìm kiếm (SEO): Rewrite, tạo Sitemap, Ping sitemap, chẩn đoán site, phân tích từ khóa, tạo keyword, quản lý máy chủ tìm kiếm (Bot)...</li> 	<li>Quản lý và sao lưu cơ sở dữ liệu.</li> 	<li>Cấu hình tùy biến, tường lửa đa cấp, xử lý tiến trình tự động...</li> 	<li>Hỗ trợ thiết bị di động (mobile), cho phép thay đổi giao diện tương thích (từ phiên bản 3.3)</li> 	<li>...</li> </ul>  <h2><span style="font-size:20px;"><strong><span class="mw-headline" id=".E1.BB.A8ng_d.E1.BB.A5ng">Ứng dụng</span></strong></span></h2>  <p>NukeViet được sử dụng ở nhiều website, từ những website cá nhân cho tới những hệ thống website doanh nghiệp, nó cung cấp nhiều dịch vụ và ứng dụng nhờ khả năng tăng cường tính năng bằng cách cài thêm các module, block... Trước đây, NukeViet chủ yếu được sử dụng làm trang tin tức nhờ module News tích hợp sẵn trong NukeViet được viết rất công phu, nó lại đặc biệt phù hợp với yêu cầu và đặc điểm sử dụng cho hệ thống tin tức. Kể từ phiên bản NukeViet 3, đội ngũ phát triển NukeViet đã định nghĩa lại NukeViet, theo đó, NukeViet được coi như phần mềm trực tuyến mà chức năng CMS chỉ là một module của NukeViet. NukeViet có thể dễ dàng cài đặt, dễ dàng quản lý kể cả với những người mới sử dụng do đó thường được những đối tượng người dùng không chuyên ưa thích.<br  /> <br  /> NukeViet có mã nguồn mở do đó việc sử dụng NukeViet là hoàn toàn miễn phí cho tất cả mọi người trên thế giới. Từ bản 2.0 trở về trước, đối tượng người dùng chủ yếu của NukeViet là người Việt vì những đặc điểm của bản thân mã nguồn (có nguồn gốc từ PHP-Nuke) và vì chính sách của nhóm phát triển là: &quot;hệ thống Portal dành cho người Việt&quot;. Kể từ phiên bản 3.0, đội ngũ phát triển NukeViet định hướng đưa NukeViet ra cộng đồng quốc tế.</p>  <ul> 	<li>Các cổng thông tin điện tử</li> 	<li>Các tập đoàn kinh tế</li> 	<li>Giải trí trực tuyến, văn hóa, nghệ thuật.</li> 	<li>Báo điện tử, tạp chí điện tử</li> 	<li>Website của các doanh nghiệp vừa và nhỏ</li> 	<li>Website của các cơ quan, tổ chức chính phủ</li> 	<li>Website giáo dục, trường học</li> 	<li>Website của gia đình, cá nhân, nhóm sở thích...</li> </ul>  <p><br  /> Ngoài các ứng dụng website ở trên, thực tế NukeViet đã được ứng dụng làm rất nhiều phần mềm khác như: Phần mềm quản lý kho hàng, phần mềm bán hàng, phần mềm quản lý quán BI-A trợ giúp bật tắt điện đèn bàn bóng, phần mềm tòa soạn điện tử, phần mềm quản lý hồ sơ, quản lý nhân sự trực tuyến, phần mềm tra cứu điểm thi hỗ trợ SMS...</p>', '', 0, '4', '', 0, 1, 1, 1453277351, 1453277351, 1),
(2, 'Giới thiệu về NukeViet CMS', 'gioi-thieu-ve-nukeviet-cms', '', '', 0, '', '<p style="text-align: justify;">CMS là gì?<br  /> CMS là từ viết tắt từ Content Management System. Theo wikipedia</p>  <blockquote> <p><strong>Định nghĩa.</strong><br  /> Hệ quản trị nội dung, cũng được gọi là hệ thống quản lý nội dung hay CMS (từ Content Management System của tiếng Anh) là phần mềm để tổ chức và tạo môi trường cộng tác thuận lợi nhằm mục đích xây dựng một hệ thống tài liệu và các loại nội dung khác một cách thống nhất. Mới đây thuật ngữ này liên kết với chương trình quản lý nội dung của website. Quản lý nội dung web (web content management) cũng đồng nghĩa như vậy.<br  /> <br  /> <span class="mw-headline" id="Ch.E1.BB.A9c_n.C4.83ng"><strong>Chức năng</strong>.</span><br  /> Quản trị những nội dung tài liệu điện tử (bao gồm những tài liệu, văn bản số và đã được số hoá) của tổ chức. Những chức năng bao gồm:</p>  <ul> 	<li>Tạo lập nội dung;</li> 	<li>Lưu trữ nội dung;</li> 	<li>Chỉnh sửa nội dung;</li> 	<li>Chuyển tải nội dung;</li> 	<li>Chia sẻ nội dung;</li> 	<li>Tìm kiếm nội dung;</li> 	<li>Phân quyền người dùng và nội dung...</li> </ul>  <p><strong>Đặc điểm.</strong><br  /> Các đặc điểm cơ bản của CMS bao gồm:</p>  <ul> 	<li>Phê chuẩn việc tạo hoặc thay đổi nội dung trực tuyến</li> 	<li>Chế độ Soạn thảo &quot;Nhìn là biết&quot; WYSIWYG</li> 	<li>Quản lý người dùng</li> 	<li>Tìm kiếm và lập chỉ mục</li> 	<li>Lưu trữ</li> 	<li>Tùy biến giao diện</li> 	<li>Quản lý ảnh và các liên kết (URL)</li> </ul> </blockquote>  <p style="text-align: justify;"><br  /> NukeViet CMS là một <strong>hệ quản trị nội dung</strong> (<em>Content Management System - CMS</em>) cho phép bạn quản lý các cổng thông tin điện tử trên Internet. Nói đơn giản, NukeViet giống như một phần mềm giúp bạn<strong> xây dựng</strong> và <strong>vận hành</strong> các trang web của mình một cách dễ dàng nhất.</p>  <p style="text-align: justify;">NukeViet CMS là một phần mềm <strong>mã nguồn mở</strong>, do đó việc sử dụng <strong>hoàn toàn miễn phí</strong>, bạn có thể tải NukeViet CMS về bất cứ lúc nào tại website chính thức của NukeViet là <strong><a href="http://nukeviet.vn">nukeviet.vn</a></strong>. Bạn có thể cài NukeViet lên hosting để sử dụng hoặc cũng có thể thử nghiệm bằng cách cài ngay lên máy tính cá nhân.</p>  <p style="text-align: justify;">NukeViet cho phép xây dựng một website động, đa chức năng, hiện đại một cách nhanh chóng mà người vận hành nó thậm chí <strong>không cần phải biết một tí gì về lập trình</strong> bởi tất cả các tác vụ quản lý phức tạp đều được tự động hóa ở mức cao. NukeViet đặc biệt dễ dàng sử dụng vì hoàn toàn bằng tiếng Việt và được thiết kế phù hợp nhất với thói quen sử dụng mạng của <strong>người Việt Nam</strong>.</p>  <p style="text-align: justify;">Bằng việc sử dụng các công nghệ web mới nhất hiện nay, thiết kế hệ thống uyển chuyển và sở hữu những tính năng độc đáo, NukeViet sẽ giúp bạn triển khai các ứng dụng web từ nhỏ đến lớn một cách nhanh chóng và tiết kiệm: từ các website cá nhân cho tới các cổng thông tin điện tử; từ các gian hàng trực tuyến cho tới các mạng xã hội...</p> NukeViet là CMS <strong>mã nguồn mở đầu tiên của Việt Nam</strong> có quá trình phát triển lâu dài nhất, có lượng người sử dụng đông nhất. Hiện NukeViet cũng là một trong những mã nguồn mở chuyên nghiệp đầu tiên của Việt Nam, cơ quan chủ quản của NukeViet là <a href="http://vinades.vn" target="_blank">VINADES.,JSC</a> - đơn vị chịu trách nhiệm phát triển NukeViet và triển khai NukeViet thành các ứng dụng cụ thể cho doanh nghiệp.', '', 0, '4', '', 0, 2, 1, 1453277351, 1453277351, 1),
(3, 'Logo và tên gọi NukeViet', 'logo-va-ten-goi-nukeviet', '', '', 0, '', '<p style="text-align: justify;"><span style="color: rgb(255, 0, 0);"><span style="font-size: 14px;"><strong>Tên gọi:</strong></span></span><br  /> <strong>NukeViet </strong>phát âm là <strong>&#91;Nu-Ke-Việt</strong>&#93;, đây là cách đọc riêng, không phải là cách phát âm chuẩn của tiếng Anh.<br  /> <br  /> <strong>Ý nghĩa:</strong><br  /> NukeViet là từ ghép từ chữ <strong>Nuke </strong>và <strong>Việt Nam</strong>.<br  /> <br  /> Sở dĩ có tên gọi này là vì phiên bản 1.0 và 2.0 của NukeViet được phát triển từ mã nguồn mở<strong> PHP-Nuke</strong>.</p>  <p style="text-align: justify;">Mặc dù từ phiên bản 3.0, NukeViet được viết mới hoàn toàn và trong quá trình phát triển của mình, nhiều cái tên đã được đưa ra để thay thế nhưng cuối cùng cái tên NukeViet đã được giữ lại để nhớ rằng <strong>NukeViet </strong>được khởi đầu từ <strong>PHP-Nuke</strong> và để cảm ơn <strong>Franscisco Burzi</strong> - Tác giả PHP-Nuke - vì chính ông là nhân tố để có một cộng đồng mã nguồn mở NukeViet với hàng chục ngàn người dùng như hiện nay.</p>  <p style="text-align: justify;"><strong>Nuke</strong> trong tiếng Anh (từ lóng) có nghĩa là &quot;<strong>vũ khí hạt nhân</strong>&quot; (nuclear weapons). Xem: <a href="http://vi.wiktionary.org/wiki/nuke" target="_blank">http://vi.wiktionary.org/wiki/nuke</a></p>  <p style="text-align: justify;">Đội ngũ phát triển cũng hy vọng rằng <strong>NukeViet </strong>sẽ phát triển bùng nổ như đúng tên gọi của nó.</p>  <p style="text-align: justify;"><span style="color: rgb(255, 0, 0);"><span style="font-size: 14px;"><strong>Logo NukeViet 3.0:</strong></span></span><br  /> Sau thời gian dài lựa chọn từ hàng chục mẫu thiết kế của thành viên diễn đàn NukeViet.VN và các nhà thiết kế đồ họa chuyên nghiệp... logo chính thức của NukeViet 3.0 đã được Ban Quản Trị chọn lựa đúng trước ngày Offline phát hành bản NukeViet 3.0 một ngày.<br  /> <br  /> Logo NukeViet 3.0 được lấy hình tượng từ Biển, Đêm, và Ánh Trăng trong khung hình giọt nước:</p>  <p style="text-align:center"><img alt="w" height="143" src="/uploads/about/w.png" style="width: 288px; height: 143px; border-width: 0px; border-style: solid;" width="288" /></p>  <p style="text-align: justify;">Dưới nền trắng, cả logo nhìn như cảnh biển đêm huyền ảo, tĩnh mịch với mặt nước biển, bầu trời, thuyền buồm và ánh trăng. Đây là những hình ảnh biểu tượng cho sự thanh bình mà bất cứ ai cũng mong ước được thấy khi ngắm biển về đêm.<br  /> <br  /> Màu xanh thẫm là màu hòa quyện của của mặt biển, bầu trời về đêm, màu này cũng gần với màu xanh tượng trưng cho hòa bình.<br  /> Hai vệt khuyết chính là ánh trăng sáng màu bạc phản chiếu lên giọt nước.<br  /> <br  /> Giọt nước còn là biểu tượng cho sự sống, cho khát khao bất diệt của vạn vật trên trái đất này.<br  /> <br  /> <strong>Thông số chuẩn của màu logo:</strong><br  /> -&nbsp;&nbsp;&nbsp; Màu xanh: C80, M60, Y0, K0<br  /> <br  /> <strong>Tác giả mẫu thiết kế:</strong> Lê Thanh Xuân, chuyên viên thiết kế đồ họa của VINADES.,JSC</p>  <p style="text-align: justify;"><span style="color: rgb(255, 0, 0);"><span style="font-size: 14px;"><strong>Slogan NukeViet 3.0:</strong></span></span> “Chia sẻ thành công, kết nối đam mê”, Tiếng Anh: “Sharing success, connect passions”</p>  <p style="text-align: justify;">Slogan này của tác giả HoaiNamDr, đây là slogan đã đoạt giải trong cuộc thi sáng tác slogan trên diễn đàn NukeViet.VN</p>  <div style="text-align:center"><img alt="nukevietcms 180x84" height="84" src="/uploads/about/nukevietcms-180x84.png" width="180" /></div>  <p style="text-align: center;">Mẫu phối Logo, slogan và tên NukeViet CMS (180x84px)<br  /> Tải về mẫu kích thước lớn <a href="/uploads/about/nukevietcms.png">logo-nukeviet-cms.png</a> (1500x700px)</p>  <div style="text-align:center"><img alt="nukevietcms mu noel 180x84" height="84" src="/uploads/about/nukevietcms_mu_noel_180x84.png" width="180" /></div>  <p style="text-align: center;">Mẫu phối Logo, slogan và tên NukeViet CMS với chiếc mũ ông già Noel (184x84px)<br  /> &nbsp;</p>  <div style="text-align:center"><img alt="logo nukeviet3 flag 180x75" height="75" src="/uploads/about/logo-nukeviet3-flag-180x75.png" width="180" /></div>  <p style="text-align: center;">Mẫu phối Logo, slogan và tên NukeViet CMS cắm cờ Việt Nam (180x75px)<br  /> &nbsp;</p>  <div style="text-align:center"><img alt="nukevietcms laco 180x57" height="57" src="/uploads/about/nukevietcms_laco_180x57.png" width="180" /></div>  <p style="text-align: center;">Mẫu phối Logo, slogan và tên NukeViet CMS với chiếc ruy băng cờ Việt Nam (180x57px)</p>  <div style="text-align:center"><img alt="nukevietvn 180x84" height="84" src="/uploads/about/nukevietvn_180x84.png" width="180" /></div>  <p style="text-align: center;">Mẫu phối Logo, slogan và tên NukeViet.VN (180x84px)<br  /> Tải về mẫu kích thước lớn <a href="/uploads/about/nukevietvn.png">logo-nukeviet-big.png</a> (1500x700px)</p>  <p><br  /> <strong>Tải về file đồ họa gốc:</strong><br  /> - <a href="http://nukeviet.vn/vi/download/Tai-lieu/NukeViet-logo/">NukeViet logo</a> - hình ảnh gốc có độ phân giải cao, bao gồm cả font chữ, có thể sử dụng cho in ấn sticker, in logo lên áo hoặc in Backdrop, Standy khổ lớn.</p>', '', 0, '4', '', 0, 3, 1, 1453277351, 1453277351, 1);
INSERT INTO `nv4_vi_about` (`id`, `title`, `alias`, `image`, `imagealt`, `imageposition`, `description`, `bodytext`, `keywords`, `socialbutton`, `activecomm`, `layout_func`, `gid`, `weight`, `admin_id`, `add_time`, `edit_time`, `status`) VALUES
(4, 'Giấy phép sử dụng NukeViet', 'giay-phep-su-dung-nukeviet', '', '', 0, 'Giấy phép công cộng GNU (tiếng Anh: GNU General Public License, viết tắt GNU GPL hay chỉ GPL) là giấy phép phần mềm tự do được sử dụng để phân phối mã nguồn mở NukeViet.', '<p><strong>Bản dịch tiếng Việt của Giấy phép Công cộng GNU</strong></p>\r\n\r\n<p>Người dịch&nbsp;<a href="mailto:dangtuan@vietkey.net">Đặng Minh Tuấn &lt;dangtuan@vietkey.net&gt;</a></p>\r\n\r\n<p>Đây là bản dịch tiếng Việt không chính thức của Giấy phép Công cộng GNU. Bản dịch này không phải do Tổ chức Phần mềm Tự do ấn hành, và nó không quy định về mặt pháp lý các điều khoản cho các phần mềm sử dụng giấy phép GNU GPL -- chỉ có bản tiếng Anh gốc của GNU GPL mới có tính pháp lý. Tuy nhiên, chúng tôi hy vọng rằng bản dịch này sẽ giúp cho những người nói tiếng Việt hiểu rõ hơn về GNU GPL.</p>\r\n\r\n<p>This is an unofficial translation of the GNU General Public License into Vietnamese. It was not published by the Free Software Foundation, and does not legally state the distribution terms for software that uses the GNU GPL--only the original English text of the GNU GPL does that. However, we hope that this translation will help Vietnamese speakers understand the GNU GPL better.</p>\r\n\r\n<hr  />\r\n<h3>GIẤY PHÉP CÔNG CỘNG GNU (GPL)</h3>\r\nGiấy phép công cộng GNU<br />\r\nPhiên bản 2, tháng 6/1991<br />\r\nCopyright (C) 1989, 1991 Free Software Foundation, Inc. &nbsp;<br />\r\n59 Temple Place - Suite 330, Boston, MA&nbsp; 02111-1307, USA\r\n<p>Mọi người đều được phép sao chép và lưu hành bản sao nguyên bản nhưng không được phép thay đổi nội dung của giấy phép này.<br />\r\n<br />\r\n<strong>Lời nói đầu</strong><br />\r\n<br />\r\nGiấy phép sử dụng của hầu hết các phần mềm đều được đưa ra nhằm hạn chế bạn tự do chia sẻ và thay đổi nó. Ngược lại, Giấy phép Công cộng của GNU có mục đích đảm bảo cho bạn có thể tự do chia sẻ và thay đổi phần mềm tự do - tức là đảm bảo rằng phần mềm đó là tự do đối với mọi người sử dụng. Giấy phép Công cộng này áp dụng cho hầu hết các phần mềm của Tổ chức Phần mềm Tự do và cho tất cả các chương trình khác mà tác giả cho phép sử dụng. (Đối với một số phần mềm khác của Tổ chức Phần Mềm Tự do, áp dụng Giấy phép Công cộng Hạn chế của GNU thay cho giấy phép công cộng). Bạn cũng có thể áp dụng nó cho các chương trình của mình.<br />\r\n<br />\r\nKhi nói đến phần mềm tự do, chúng ta nói đến sự tự do sử dụng chứ không quan tâm về giá cả. Giấy phép Công cộng của chúng tôi được thiết kế để đảm bảo rằng bạn hoàn toàn tự do cung cấp các bản sao của phần mềm tự do (cũng như kinh doanh dịch vụ này nếu bạn muốn), rằng bạn có thể nhận được mã nguồn nếu bạn có yêu cầu, rằng bạn có thể thay đổi phần mềm hoặc sử dụng các thành phần của phần mềm đó cho những chương trình tự do mới; và rằng bạn biết chắc là bạn có thể làm được những điều này.<br />\r\n<br />\r\nĐể bảo vệ bản quyền của bạn, chúng tôi cần đưa ra những hạn chế để ngăn chặn những ai chối bỏ quyền của bạn, hoặc yêu cầu bạn chối bỏ quyền của mình. Những hạn chế này cũng có nghĩa là những trách nhiệm nhất định của bạn khi cung cấp các bản sao phần mềm hoặc khi chỉnh sửa phần mềm đó.<br />\r\n<br />\r\nVí dụ, nếu bạn cung cấp các bản sao của một chương trình, dù miễn phí hay không, bạn phải cho người nhận tất cả các quyền mà bạn có. Bạn cũng phải đảm bảo rằng họ cũng nhận được hoặc tiếp cận được mã nguồn. Và bạn phải thông báo những điều khoản này cho họ để họ biết rõ về quyền của mình.<br />\r\n<br />\r\nChúng tôi bảo vệ quyền của bạn với hai bước: (1) bảo vệ bản quyền phần mềm, và (2) cung cấp giấy phép này để bạn có thể sao chép, lưu hành và/hoặc chỉnh sửa phần mềm một cách hợp pháp.<br />\r\n<br />\r\nNgoài ra, để bảo vệ các tác giả cũng như để bảo vệ chính mình, chúng tôi muốn chắc chắn rằng tất cả mọi người đều hiểu rõ rằng không hề có bảo hành đối với phần mềm tự do này. Nếu phần mềm được chỉnh sửa thay đổi bởi một người khác và sau đó lưu hành, thì chúng tôi muốn những người sử dụng biết rằng phiên bản họ đang có không phải là bản gốc, do đó tất cả những trục trặc do những người khác gây ra hoàn toàn không ảnh hưởng tới uy tín của tác giả ban đầu.<br />\r\n<br />\r\nCuối cùng, bất kỳ một chương trình tự do nào cũng đều thường xuyên có nguy cơ bị đe doạ về giấy phép bản quyền. Chúng tôi muốn tránh nguy cơ khi những người cung cấp lại một chương trình tự do có thể có được giấy phép bản quyền cho bản thân họ, từ đó trở thành độc quyền đối với chương trình đó. Để ngăn ngừa trường hợp này, chúng tôi đã nêu rõ rằng mỗi giấy phép bản quyền hoặc phải được cấp cho tất cả mọi người sử dụng một cách tự do hoặc hoàn toàn không cấp phép.<br />\r\n<br />\r\nDưới đây là những điều khoản và điều kiện rõ ràng đối với việc sao chép, lưu hành và chỉnh sửa.<br />\r\n<br />\r\n<strong>Những điều khoản và điều kiện đối với việc sao chép, lưu hành và chỉnh sửa</strong><br />\r\n<br />\r\n<strong>0.</strong>&nbsp;Giấy phép này áp dụng cho bất kỳ một chương trình hay sản phẩm nào mà người giữ bản quyền công bố rằng nó có thể được cung cấp trong khuôn khổ những điều khoản của Giấy phép Công cộng này. Từ “Chương trình” dưới đây có nghĩa là tất cả các chương trình hay sản phẩm như vậy, và “sản phẩm dựa trên Chương trình” có nghĩa là Chương trình hoặc bất kỳ một sản phẩm nào bắt nguồn từ chương trình đó tuân theo luật bản quyền, nghĩa là một sản phẩm dựa trên Chương trình hoặc một phần của nó, đúng nguyên bản hoặc có một số chỉnh sửa và/hoặc được dịch ra một ngôn ngữ khác. (Dưới đây, việc dịch cũng được hiểu trong khái niệm “chỉnh sửa”). Mỗi người được cấp phép được gọi là “bạn”.<br />\r\n<br />\r\nTrong Giấy phép này không đề cập tới các hoạt động khác ngoài việc sao chép, lưu hành và chỉnh sửa; chúng nằm ngoài phạm vi của giấy phép này. Hành động chạy chương trình không bị hạn chế, và những kết quả từ việc chạy chương trình chỉ được đề cập tới nếu nội dung của nó tạo thành một sản phẩm dựa trên chương trình (độc lập với việc chạy chương trình). Điều này đúng hay không là phụ thuộc vào Chương trình.<br />\r\n<br />\r\n<strong>1.</strong>&nbsp;Bạn có thể sao chép và lưu hành những phiên bản nguyên bản của mã nguồn Chương trình đúng như khi bạn nhận được, qua bất kỳ phương tiện phân phối nào, với điều kiện trên mỗi bản sao bạn đều kèm theo một ghi chú bản quyền rõ ràng và từ chối bảo hành; giữ nguyên tất cả các ghi chú về Giấy phép và về việc không có bất kỳ một sự bảo hành nào; và cùng với Chương trình bạn cung cấp cho người sử dụng một bản sao của Giấy phép này.<br />\r\n<br />\r\nBạn có thể tính phí cho việc chuyển giao bản sao, và tuỳ theo quyết định của mình bạn có thể cung cấp bảo hành để đổi lại với chi phí mà bạn đã tính.<br />\r\n<br />\r\n<strong>2.</strong>&nbsp;Bạn có thể chỉnh sửa bản sao của bạn hoặc các bản sao của Chương trình hoặc của bất kỳ phần nào của nó, từ đó hình thành một sản phẩm dựa trên Chương trình, và sao chép cũng như lưu hành sản phẩm đó hoặc những chỉnh sửa đó theo điều khoản trong Mục 1 ở trên, với điều kiện bạn đáp ứng được những điều kiện dưới đây:<br />\r\n•&nbsp;&nbsp; &nbsp;a) Bạn phải có ghi chú rõ ràng trong những tập tin đã chỉnh sửa là bạn đã chỉnh sửa nó, và ngày tháng của bất kỳ một thay đổi nào.<br />\r\n•&nbsp;&nbsp; &nbsp;b) Bạn phải cấp phép miễn phí cho tất cả các bên thứ ba đối với các sản phẩm bạn cung cấp hoặc phát hành, bao gồm Chương trình nguyên bản, từng phần của nó hay các sản phẩm dựa trên Chương trình hay dựa trên từng phần của Chương trình, theo những điều khoản của Giấy phép này.<br />\r\n•&nbsp;&nbsp; &nbsp;c) Nếu chương trình đã chỉnh sửa thường đọc lệnh tương tác trong khi chạy, bạn phải thực hiện sao cho khi bắt đầu chạy để sử dụng tương tác theo cách thông thường nhất phải có một thông báo bao gồm bản quyền và thông báo về việc không có bảo hành (hoặc thông báo bạn là người cung cấp bảo hành), và rằng người sử dụng có thể cung cấp lại Chương trình theo những điều kiện này, và thông báo để người sử dụng có thể xem bản sao của Giấy phép này. (Ngoại lệ: nếu bản thân Chương trình là tương tác nhưng không có một thông báo nào như trên, thì sản phẩm của bạn dựa trên Chương trình đó cũng không bắt buộc phải có thông báo như vậy).<br />\r\n<br />\r\nNhững yêu cầu trên áp dụng cho toàn bộ các sản phẩm chỉnh sửa. Nếu có những phần của sản phẩm rõ ràng không bắt nguồn từ Chương trình, và có thể được xem là độc lập và riêng biệt, thì Giấy phép này và các điều khoản của nó sẽ không áp dụng cho những phần đó khi bạn cung cấp chúng như những sản phẩm riêng biệt. Nhưng khi bạn cung cấp những phần đó như những phần nhỏ trong cả một sản phẩm dựa trên Chương trình, thì việc cung cấp này phải tuân theo những điều khoản của Giấy phép này, cho phép những người được cấp phép có quyền đối với toàn bộ sản phẩm, cũng như đối với từng phần trong đó, bất kể ai đã viết nó.<br />\r\n<br />\r\nNhư vậy, điều khoản này không nhằm mục đích xác nhận quyền hoặc tranh giành quyền của bạn đối với những sản phẩm hoàn toàn do bạn viết; mà mục đích của nó là nhằm thi hành quyền kiểm soát đối với việc cung cấp những sản phẩm bắt nguồn hoặc tổng hợp dựa trên Chương trình.<br />\r\n<br />\r\nNgoài ra, việc kết hợp thuần tuý Chương trình (hoặc một sản phẩm dựa trên Chương trình) với một sản phẩm không dựa trên Chương trình với mục đích lưu trữ hoặc quảng bá không đưa sản phẩm đó vào trong phạm vi áp dụng của Giấy phép này.<br />\r\n<br />\r\n<strong>3.</strong>&nbsp;Bạn có thể sao chép và cung cấp Chương trình (hoặc một sản phẩm dựa trên Chương trình, nêu trong Mục 2) dưới hình thức mã đã biên dịch hoặc dạng có thể thực thi được trong khuôn khổ các điều khoản nêu trong Mục 1 và 2 ở trên, nếu như bạn:<br />\r\n•&nbsp;&nbsp; &nbsp;a) Kèm theo đó một bản mã nguồn dạng đầy đủ có thể biên dịch được theo các điều khoản trong Mục 1 và 2 nêu trên trong một môi trường trao đổi phần mềm thông thường; hoặc,<br />\r\n•&nbsp;&nbsp; &nbsp;b) Kèm theo đó một đề nghị có hạn trong ít nhất 3 năm, theo đó cung cấp cho bất kỳ một bên thứ ba nào một bản sao đầy đủ của mã nguồn tương ứng, và phải được cung cấp với giá chi phí không cao hơn giá chi phí vật lý của việc cung cấp theo các điều khoản trong Mục 1 và 2 nêu trên trong một môi trường trao đổi phần mềm thông thường; hoặc<br />\r\n•&nbsp;&nbsp; &nbsp;c) Kèm theo đó thông tin bạn đã nhận được để đề nghị cung cấp mã nguồn tương ứng. (Phương án này chỉ được phép đối với việc cung cấp phi thương mại và chỉ với điều kiện nếu bạn nhận được Chương trình dưới hình thức mã đã biên dịch hoặc dạng có thể thực thi được cùng với lời đề nghị như vậy, theo phần b trong điều khoản nêu trên).<br />\r\n<br />\r\nMã nguồn của một sản phẩm là một dạng ưu tiên của sản phẩm dành cho việc chỉnh sửa nó. Với một sản phẩm có thể thi hành, mã nguồn hoàn chỉnh có nghĩa là tất cả các mã nguồn cho các môđun trong sản phẩm đó, cộng với tất cả các tệp tin định nghĩa giao diện đi kèm với nó, cộng với các hướng dẫn dùng để kiểm soát việc biên dịch và cài đặt các tệp thi hành. Tuy nhiên, một ngoại lệ đặc biệt là mã nguồn không cần chứa bất kỳ một thứ gì mà bình thường được cung cấp (từ nguồn khác hoặc hình thức nhị phân) cùng với những thành phần chính (chương trình biên dịch, nhân, và những phần tương tự) của hệ điều hành mà các chương trình chạy trong đó, trừ khi bản thân thành phần đó lại đi kèm với một tệp thi hành.<br />\r\n<br />\r\nNếu việc cung cấp lưu hành mã đã biên dịch hoặc tập tin thi hành được thực hiện qua việc cho phép tiếp cận và sao chép từ một địa điểm được chỉ định, thì việc cho phép tiếp cận tương đương tới việc sao chép mã nguồn từ cùng địa điểm cũng được tính như việc cung cấp mã nguồn, mặc dù thậm chí các bên thứ ba không bị buộc phải sao chép mã nguồn cùng với mã đã biên dịch.<br />\r\n<br />\r\n<strong>4.</strong>&nbsp;Bạn không được phép sao chép, chỉnh sửa, cấp phép hoặc cung cấp Chương trình trừ phi phải tuân thủ một cách chính xác các điều khoản trong Giấy phép. Bất kỳ ý định sao chép, chỉnh sửa, cấp phép hoặc cung cấp Chương trình theo cách khác đều làm mất hiệu lực và tự động huỷ bỏ quyền của bạn trong khuôn khổ Giấy phép này. Tuy nhiên, các bên đã nhận được bản sao hoặc quyền từ bạn với Giấy phép này sẽ không bị huỷ bỏ giấy phép nếu các bên đó vẫn tuân thủ đầy đủ các điều khoản của giấy phép.<br />\r\n<br />\r\n<strong>5.</strong>&nbsp;Bạn không bắt buộc phải chấp nhận Giấy phép này khi bạn chưa ký vào đó. Tuy nhiên, không có gì khác đảm bảo cho bạn được phép chỉnh sửa hoặc cung cấp Chương trình hoặc các sản phẩm bắt nguồn từ Chương trình. Những hành động này bị luật pháp nghiêm cấm nếu bạn không chấp nhận Giấy phép này. Do vậy, bằng việc chỉnh sửa hoặc cung cấp Chương trình (hoặc bất kỳ một sản phẩm nào dựa trên Chương trình), bạn đã thể hiện sự chấp thuận đối với Giấy phép này, cùng với tất cả các điều khoản và điều kiện đối với việc sao chép, cung cấp hoặc chỉnh sửa Chương trình hoặc các sản phẩm dựa trên nó.<br />\r\n<br />\r\n<strong>6.</strong> Mỗi khi bạn cung cấp lại Chương trình (hoặc bất kỳ một sản phẩm nào dựa trên Chương trình), người nhận sẽ tự động nhận được giấy phép từ người cấp phép đầu tiên cho phép sao chép, cung cấp và chỉnh sửa Chương trình theo các điều khoản và điều kiện này. Bạn không thể áp đặt bất cứ hạn chế nào khác đối với việc thực hiện quyền của người nhận đã được cấp phép từ thời điểm đó. Bạn cũng không phải chịu trách nhiệm bắt buộc các bên thứ ba tuân thủ theo Giấy phép này.<br />\r\n<br />\r\n<strong>7.</strong>&nbsp;Nếu như, theo quyết định của toà án hoặc với những bằng chứng về việc vi phạm bản quyền hoặc vì bất kỳ lý do nào khác (không giới hạn trong các vấn đề về bản quyền), mà bạn phải tuân theo các điều kiện (nêu ra trong lệnh của toà án, biên bản thoả thuận hoặc ở nơi khác) trái với các điều kiện của Giấy phép này, thì chúng cũng không thể miễn cho bạn khỏi những điều kiện của Giấy phép này. Nếu bạn không thể đồng thời thực hiện các nghĩa vụ của mình trong khuôn khổ Giấy phép này và các nghĩa vụ thích đáng khác, thì hậu quả là bạn hoàn toàn không được cung cấp Chương trình. Ví dụ, nếu trong giấy phép bản quyền không cho phép những người nhận được bản sao trực tiếp hoặc gián tiếp qua bạn có thể cung cấp lại Chương trình thì trong trường hợp này cách duy nhất bạn có thể thoả mãn cả hai điều kiện là hoàn toàn không cung cấp Chương trình.<br />\r\n<br />\r\nNếu bất kỳ một phần nào trong điều khoản này không có hiệu lực hoặc không thể thi hành trong một hoàn cảnh cụ thể, thì sẽ cân đối áp dụng các điều khoản, và toàn bộ điều khoản sẽ được áp dụng trong những hoàn cảnh khác.<br />\r\n<br />\r\nMục đích của điều khoản này không nhằm buộc bạn phải vi phạm bất kỳ một bản quyền nào hoặc các quyền sở hữu khác hoặc tranh luận về giá trị hiệu lực của bất kỳ quyền hạn nào như vậy; mục đích duy nhất của điều khoản này là nhằm bảo vệ sự toàn vẹn của hệ thống cung cấp phần mềm tự do đang được thực hiện với giấy phép công cộng. Nhiều người đã đóng góp rất nhiều vào sự đa dạng của các phần mềm tự do được cung cấp thông qua hệ thống này với sự tin tưởng rằng hệ thống được sử dụng một cách thống nhất; tác giả/người cung cấp có quyền quyết định rằng họ có mong muốn cung cấp phần mềm thông qua hệ thống nào khác hay không, và người được cấp phép không thể có ảnh hưởng tới sự lựa chọn này.<br />\r\n<br />\r\nĐiều khoản này nhằm làm rõ những hệ quả của các phần còn lại của Giấy phép này.<br />\r\n<br />\r\n<strong>8.</strong>&nbsp;Nếu việc cung cấp và/hoặc sử dụng Chương trình bị cấm ở một số nước nhất định bởi quy định về bản quyền, người giữ bản quyền gốc đã đưa Chương trình vào dưới Giấy phép này có thể bổ sung một điều khoản hạn chế việc cung cấp ở những nước đó, nghĩa là việc cung cấp chỉ được phép ở các nước không bị liệt kê trong danh sách hạn chế. Trong trường hợp này, Giấy phép đưa vào những hạn chế được ghi trong nội dung của nó.<br />\r\n<br />\r\n<strong>9.&nbsp;</strong>Tổ chức Phần mềm Tự do có thể theo thời gian công bố những phiên bản chỉnh sửa và/hoặc phiên bản mới của Giấy phép Công cộng. Những phiên bản đó sẽ đồng nhất với tinh thần của phiên bản hiện này, nhưng có thể khác ở một số chi tiết nhằm giải quyết những vấn đề hay những lo ngại mới.<br />\r\n<br />\r\nMỗi phiên bản sẽ có một mã số phiên bản riêng. Nếu Chương trình và &quot;bất kỳ một phiên bản nào sau đó&quot; có áp dụng một phiên bản Giấy phép cụ thể, bạn có quyền lựa chọn tuân theo những điều khoản và điều kiện của phiên bản giấy phép đó hoặc của bất kỳ một phiên bản nào sau đó do Tổ chức Phần mềm Tự do công bố. Nếu Chương trình không nêu cụ thể mã số phiên bản giấy phép, bạn có thể lựa chọn bất kỳ một phiên bản nào đã từng được công bố bởi Tổ chức Phần mềm Tự do.<br />\r\n<br />\r\n<strong>10.</strong>&nbsp;Nếu bạn muốn kết hợp các phần của Chương trình vào các chương trình tự do khác mà điều kiện cung cấp khác với chương trình này, hãy viết cho tác giả để được phép. Đối với các phần mềm được cấp bản quyền bởi Tổ chức Phầm mềm Tự do, hãy đề xuất với tổ chức này; đôi khi chúng tôi cũng có những ngoại lệ. Quyết định của chúng tôi sẽ dựa trên hai mục tiêu là bảo hộ tình trạng tự do của tất cả các sản phẩm bắt nguồn từ phần mềm tự do của chúng tôi, và thúc đẩy việc chia sẻ và tái sử dụng phần mềm nói chung.<br />\r\n<br />\r\n<strong>KHÔNG BẢO HÀNH</strong><br />\r\nDO CHƯƠNG TRÌNH ĐƯỢC CẤP PHÉP MIỄN PHÍ NÊN KHÔNG CÓ MỘT CHẾ ĐỘ BẢO HÀNH NÀO TRONG MỨC ĐỘ CHO PHÉP CỦA LUẬT PHÁP. TRỪ KHI ĐƯỢC CÔNG BỐ KHÁC ĐI BẰNG VĂN BẢN, NHỮNG NGƯỜI GIỮ BẢN QUYỀN VÀ/HOẶC CÁC BÊN CUNG CẤP CHƯƠNG TRÌNH NGUYÊN BẢN SẼ KHÔNG BẢO HÀNH DƯỚI BẤT KỲ HÌNH THỨC NÀO, BAO GỒM NHƯNG KHÔNG GIỚI HẠN TRONG CÁC HÌNH THỨC BẢO HÀNH ĐỐI VỚI TÍNH THƯƠNG MẠI CŨNG NHƯ TÍNH THÍCH HỢP CHO MỘT MỤC ĐÍCH CỤ THỂ. BẠN LÀ NGƯỜI CHỊU TOÀN BỘ RỦI RO VỀ CHẤT LƯỢNG CŨNG NHƯ VIỆC VẬN HÀNH CHƯƠNG TRÌNH. TRONG TRƯỜNG HỢP CHƯƠNG TRÌNH CÓ KHIẾM KHUYẾT, BẠN PHẢI CHỊU TOÀN BỘ CHI PHÍ CHO NHỮNG DỊCH VỤ SỬA CHỮA CẦN THIẾT.<br />\r\n<br />\r\nTRONG TẤT CẢ CÁC TRƯỜNG HỢP TRỪ KHI CÓ YÊU CẦU CỦA LUẬT PHÁP HOẶC CÓ THOẢ THUẬN BẰNG VĂN BẢN, NHỮNG NGƯỜI CÓ BẢN QUYỀN HOẶC BẤT KỲ MỘT BÊN NÀO CHỈNH SỬA VÀ/HOẶC CUNG CẤP LẠI CHƯƠNG TRÌNH TRONG CÁC ĐIỀU KIỆN NHƯ ĐÃ NÊU TRÊN ĐỀU KHÔNG CÓ TRÁCH NHIỆM VỚI BẠN VỀ CÁC LỖI HỎNG HÓC, BAO GỒM CÁC LỖI CHUNG HAY ĐẶC BIỆT, NGẪU NHIÊN HAY TẤT YẾU NẢY SINH DO VIỆC SỬ DỤNG HOẶC KHÔNG SỬ DỤNG ĐƯỢC CHƯƠNG TRÌNH (BAO GỒM NHƯNG KHÔNG GIỚI HẠN TRONG VIỆC MẤT DỮ LIỆU, DỮ LIỆU THIẾU CHÍNH XÁC HOẶC CHƯƠNG TRÌNH KHÔNG VẬN HÀNH ĐƯỢC VỚI CÁC CHƯƠNG TRÌNH KHÁC), THẬM CHÍ CẢ KHI NGƯỜI CÓ BẢN QUYỀN VÀ CÁC BÊN KHÁC ĐÃ ĐƯỢC THÔNG BÁO VỀ KHẢ NĂNG XẢY RA NHỮNG THIỆT HẠI ĐÓ.<br />\r\n<br />\r\n<strong>KẾT THÚC CÁC ĐIỀU KIỆN VÀ ĐIỀU KHOẢN.</strong></p>\r\n\r\n<p><strong>Áp dụng những điều khoản trên như thế nào đối với chương trình của bạn</strong><br />\r\n<br />\r\nNếu bạn xây dựng một chương trình mới, và bạn muốn cung cấp một cách tối đa cho công chúng sử dụng, thì biện pháp tốt nhất để đạt được điều này là phát triển chương trình đó thành phần mềm tự do để ai cũng có thể cung cấp lại và thay đổi theo những điều khoản như trên.<br />\r\n<br />\r\nĐể làm được việc này, hãy đính kèm những thông báo như sau cùng với chương trình của mình. An toàn nhất là đính kèm chúng trong phần đầu của tập tin mã nguồn để thông báo một cách hiệu quả nhất về việc không có bảo hành; và mỗi tệp tin đều phải có ít nhất một dòng về “bản quyền” và trỏ đến toàn bộ thông báo.</p>\r\n\r\n<blockquote>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; <strong>Một dòng đề tên chương trình và nội dung của nó.<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; Bản quyền (C) năm,&nbsp; tên tác giả.</strong><br />\r\n<br />\r\nChương trình này là phần mềm tự do, bạn có thể cung cấp lại và/hoặc chỉnh sửa nó theo những điều khoản của Giấy phép Công cộng của GNU do Tổ chức Phần mềm Tự do công bố; phiên bản 2 của Giấy phép, hoặc bất kỳ một phiên bản sau đó (tuỳ sự lựa chọn của bạn).<br />\r\n<br />\r\nChương trình này được cung cấp với hy vọng nó sẽ hữu ích, tuy nhiên KHÔNG CÓ BẤT KỲ MỘT BẢO HÀNH NÀO; thậm chí kể cả bảo hành về KHẢ NĂNG THƯƠNG MẠI hoặc TÍNH THÍCH HỢP CHO MỘT MỤC ĐÍCH CỤ THỂ. Xin xem Giấy phép Công cộng của GNU để biết thêm chi tiết.<br />\r\n<br />\r\nBạn phải nhận được một bản sao của Giấy phép Công cộng của GNU kèm theo chương trình này; nếu bạn chưa nhận được, xin gửi thư về Tổ chức Phần mềm Tự do, 59 Temple Place - Suite 330, Boston, MA&nbsp; 02111-1307, USA.<br />\r\n<br />\r\nXin hãy bổ sung thông tin về địa chỉ liên lạc của bạn (thư điện tử và bưu điện).</p>\r\n</blockquote>\r\n\r\n<p>Nếu chương trình chạy tương tác, hãy đưa một thông báo ngắn khi bắt đầu chạy chương trình như sau:</p>\r\n\r\n<blockquote>\r\n<p>Gnomovision phiên bản 69, Copyright (C) năm, tên tác giả.<br />\r\n<br />\r\nGnomovision HOÀN TOÀN KHÔNG CÓ BẢO HÀNH; để xem chi tiết hãy gõ `show w&#039;.&nbsp; Đây là một phần mềm miễn phí, bạn có thể cung cấp lại với những điều kiện nhất định, gõ ‘show c’ để xem chi tiết.<br />\r\nGiả thiết lệnh `show w&#039; và `show c&#039; cho xem những phần tương ứng trong Giấy phép Công cộng. Tất nhiên những lệnh mà bạn dùng có thể khác với ‘show w&#039; và `show c&#039;; những lệnh này có thể là nhấn chuột hoặc lệnh trong thanh công cụ - tuỳ theo chương trình của bạn.</p>\r\n</blockquote>\r\n\r\n<p>Bạn cũng cần phải lấy chữ ký của người phụ trách (nếu bạn là người lập trình) hoặc của trường học (nếu có) xác nhận từ chối bản quyền đối với chương trình. Sau đây là ví dụ:</p>\r\n\r\n<blockquote>\r\n<p>Yoyodyne, Inc., tại đây từ chối tất cả các quyền lợi bản quyền đối với chương trình `Gnomovision&#039; viết bởi James Hacker.<br />\r\n<br />\r\nchữ ký của Ty Coon, 1 April 1989<br />\r\nTy Coon, Phó Tổng Giám đốc.</p>\r\n</blockquote>\r\n\r\n<p>Giấy phép Công cộng này không cho phép đưa chương trình của bạn vào trong các chương trình độc quyền. Nếu chương trình của bạn là một thư viện thủ tục phụ, bạn có thể thấy nó hữu ích hơn nếu cho thư viện liên kết với các ứng dụng độc quyền. Nếu đây là việc bạn muốn làm, hãy sử dụng Giấy phép Công cộng Hạn chế của GNU thay cho Giấy phép này.</p>\r\n\r\n<hr  />\r\n<p><strong>Bản gốc của giấy phép bằng tiếng Anh có tại các địa chỉ sau:</strong></p>\r\n\r\n<ol>\r\n	<li>GNU General Public License, version 1, February 1989:&nbsp;<a href="http://www.gnu.org/licenses/old-licenses/gpl-1.0.txt" target="_blank">http://www.gnu.org/licenses/old-licenses/gpl-1.0.txt</a></li>\r\n	<li>GNU General Public License, version 2, June 1991:&nbsp;<a href="http://www.gnu.org/licenses/old-licenses/gpl-2.0.html" target="_blank">http://www.gnu.org/licenses/old-licenses/gpl-2.0.html</a></li>\r\n	<li>GNU General Public License, version 3, 29 June 2007:&nbsp;<a href="http://www.gnu.org/licenses/gpl-3.0.txt" target="_blank">http://www.gnu.org/licenses/gpl-3.0.txt</a></li>\r\n</ol>\r\n\r\n<p><strong>Tài liệu tham khảo:</strong></p>\r\n\r\n<ol>\r\n	<li>Bản dịch tiếng Việt của Giấy phép Công cộng GNU tại OpenOffice.org:&nbsp;<br />\r\n	<a href="http://vi.openoffice.org/gplv.html" target="_blank">http://vi.openoffice.org/gplv.html</a></li>\r\n	<li>GPL tại&nbsp;Văn thư lưu trữ mở Wikisource:&nbsp;<a href="http://vi.wikisource.org/wiki/GPL" target="_blank">http://vi.wikisource.org/wiki/GPL</a></li>\r\n</ol>\r\n\r\n<p><strong>Xem thêm:</strong></p>\r\n\r\n<ol>\r\n	<li>LGPL tại&nbsp;Văn thư lưu trữ mở Wikisource:&nbsp;<a href="http://vi.wikisource.org/wiki/LGPL" target="_blank">http://vi.wikisource.org/wiki/LGPL</a></li>\r\n	<li>Giấy phép Công cộng GNU - WikiPedia:&nbsp;<br />\r\n	<a href="http://vi.wikipedia.org/wiki/Gi%E1%BA%A5y_ph%C3%A9p_C%C3%B4ng_c%E1%BB%99ng_GNU" target="_blank">http://vi.wikipedia.org/wiki/Giấy_phép_Công_cộng_GNU</a></li>\r\n	<li>Thảo luận giấy phép GNU GPL - HVA:<br />\r\n	&nbsp;<a href="http://www.hvaonline.net/hvaonline/posts/list/7120.hva" target="_blank">http://www.hvaonline.net/hvaonline/posts/list/7120.hva</a></li>\r\n	<li>Thảo luận tại diễn đàn:&nbsp;<a href="http://nukeviet.vn/phpbb/viewtopic.php?f=83&amp;t=1591" target="_blank">http://nukeviet.vn/phpbb/viewtopic.php?f=83&amp;t=1591</a></li>\r\n</ol>', 'giấy phép,công cộng,tiếng anh,gnu general,public license,gnu gpl,phần mềm,là tự,sử dụng,mã nguồn,bản dịch,tiếng việt,của gnu,đây là,này không,do tổ,chức tự,hành và,các điều,cho các,có bản,tuy nhiên,chúng tôi,cho những,phiên bản,mọi người,được phép,sao chép,lưu hành,bản sao,nguyên bản,nhưng không,và thay,nội dung,của này,hạn chế,tự do,chia sẻ,nukeviet,portal,mysql,php,cms,mã nguồn mở,thiết kế website', 0, '4', '', 0, 4, 1, 1453277351, 1453277351, 1);
INSERT INTO `nv4_vi_about` (`id`, `title`, `alias`, `image`, `imagealt`, `imageposition`, `description`, `bodytext`, `keywords`, `socialbutton`, `activecomm`, `layout_func`, `gid`, `weight`, `admin_id`, `add_time`, `edit_time`, `status`) VALUES
(5, 'Những tính năng của NukeViet CMS 4.0', 'nhung-tinh-nang-cua-nukeviet-cms-4-0', '', '', 0, '', '<p style="text-align: justify;"><span style="font-size: 150%; line-height: 116%;"><span style="font-weight: bold;">Giới thiệu chung</span></span><br  /> <span style="font-weight: bold;">Mã nguồn mở NukeViet là sản phẩm của sự làm việc chuyên nghiệp: </span><br  /> Để xây dựng lên NukeViet 4, đội ngũ phát triển đã thành lập công ty VINADES.,JSC. Trong quá trình phát triển NukeViet 4, VINADES.,JSC đã hợp tác với nhiều đơn vị cung cấp hosting trong và ngoài nước để thử nghiệm host, đảm bảo tương thích với đa số các hosting chuyên nghiệp.<br  /> NukeViet 4 cũng được vận hành thử nghiệm, góp ý bởi nhiều webmaster có kinh nghiệm quản trị ở nhiều hệ thống khác nhau nhằm tối ưu các tính năng hệ thống cho người sử dụng.<br  /> NukeViet 4 được lập trình bởi các lập trình viên mà kinh nghiệm và tên tuổi của họ đã được xác lập cùng với tên tuổi của bộ mã nguồn mở tạo web đầu tiên của Việt Nam.<br  /> <br  /> <span style="font-weight: bold;">NukeViet 4 là một hệ thống mạnh:</span><br  /> Rút kinh nghiệm từ chính NukeViet 2, NukeViet 3, NukeViet 4 được viết mới hoàn toàn trên nền tảng kỹ thuật tiên tiến nhất hiện nay cho phép xây dựng các nền tảng ứng dụng trực tuyến lớn như Các cổng thông tin điện tử, các tòa soạn báo điện tử, các mạng xã hội và các hệ thống thương mại trực tuyến.<br  /> NukeViet 4 đã được thử nghiệm vận hành với dữ liệu lớn lên tới hàng triệu bản tin. Trên thực tế, NukeViet 4 cũng đã triển khai thành công cho các hiệp hội, doanh nghiệp có lượng truy cập rất lớn.<br  /> <br  /> <span style="font-weight: bold;">NukeViet 4 thích hợp cho mọi đối tượng:</span><br  /> NukeViet lấy người sử dụng làm trọng tâm, những tính năng của NukeViet tạo nên chuẩn mực trong việc sử dụng và quản trị. Vì thế, NukeViet 4 tốt cho cả người sử dụng lẫn người phát triển.<br  /> Với người sử dụng, NukeViet 4 cho phép tùy biến dễ dàng và sử dụng ngay mà không cần can thiệp vào hệ thống.<br  /> Với người phát triển, sử dụng NukeViet cho phép nhanh chóng xây dựng các nền tảng khác nhau nhờ việc viết thêm các module cho hệ thống thay vì phải tự mình viết cả một hệ thống.</p>  <p style="text-align: justify;"><span style="font-size: 150%; line-height: 116%;"><span style="font-weight: bold;">Các tính năng của NukeViet 4</span></span><br  /> <span style="font-weight: bold;">Nền tảng công nghệ:</span></p>  <ul> 	<li style="text-align: justify;"><span id="cke_bm_178S" style="display: none;">&nbsp;</span>NukeViet CMS 4 lập trình trên PHP 5.4 và MySQL 5, Sử dụng PDO để kết nối với MySQL(Sẵn sàng kết nối với các CSDL khác) cho phép vận dụng tối đa sức mạnh của công nghệ mới.</li> 	<li style="text-align: justify;">Sử dụng Composer để quản lý các thư viện PHP được cài vào hệ thống.</li> 	<li style="text-align: justify;">Từng bước áp dụng&nbsp; các tiêu chuẩn viết code PHP theo khuyến nghị của http://www.php-fig.org/psr/</li> 	<li style="text-align: justify;">Ứng dụng Xtemplate và jQuery cho phép vận dụng Ajax uyển chuyển từ trong nhân hệ thống.</li> 	<li style="text-align: justify;">Giai diện trong NukeViet 4 được làm mới, tương thích với nhiều màn hình hơn, Sử dụng thư viện bootstrap để việc phát triển giao diện thống nhất và dễ dàng hơn.</li> 	<li style="text-align: justify;">Tận dụng các thành tựu mã nguồn mở có sẵn nhưng NukeViet 4 vẫn đảm bảo rằng từng dòng code là được code tay. Điều này có nghĩa là NukeViet 4 hoàn toàn không lệ thuộc vào bất cứ framework nào trong quá trình phát triển của mình; Bạn hoàn toàn có thể đọc hiểu để tự lập trình trên NukeViet 4 nếu bạn biết PHP và MySQL (đồng nghĩa với việc NukeViet 4 hoàn toàn mở và dễ nghiên cứu cho bất cứ ai muốn tìm hiểu về code của NukeViet).<span id="cke_bm_178E" style="display: none;">&nbsp;</span></li> </ul>  <ul id="docs-internal-guid-7ec786f5-1ade-f016-4c9b-c9a8e36cc922"> </ul>  <p style="text-align: justify;"><span style="font-weight: bold;">Kiến trúc Module</span></p>  <ul> 	<li style="text-align: justify;">NukeViet CMS 4 tái cấu trúc lại module, theo đó, toàn bộ tệp tin của mỗi module được gói gọn trong một thư mục riêng nhằm đơn giản trong việc quản lý và đóng gói ứng dụng. Kiến trúc module này tạo ra khái niệm block của module và theme của module giúp đa dạng hóa việc trình bày module.</li> 	<li style="text-align: justify;">Hệ thống NukeViet 4 hỗ trợ công nghệ đa nhân module. Chúng tôi gọi đó là công nghệ ảo hóa module. Công nghệ này cho phép người sử dụng có thể khởi tạo hàng ngàn module một cách tự động mà không cần động đến một dòng code. Các module được sinh ra từ công nghệ này gọi là module ảo. Module ảo là module được nhân bản từ một module bất kỳ của hệ thống nukeviet nếu module đó cho phép tạo module ảo.</li> 	<li style="text-align: justify;">NukeViet 4 cũng hỗ trợ việc cài đặt từ động 100% các module kèm theo block, theme từ Admin Control Panel, người sử dụng có thể cài module mà không cần làm bất cứ thao tác phức tạp nào. NukeViet 4 còn cho phép bạn đóng gói module để chia sẻ cho người khác.</li> 	<li style="text-align: justify;">Hệ thống cho phép quản lý module từ trong Admin Control Panel, quản trị cấp cao có thể phân quyền truy cập cũng như tạm ngưng hoạt động hay thậm chí cài lại hoặc xóa module tùy theo nhu cầu sử dụng.</li> </ul>  <p style="text-align: justify;"><br  /> <span style="font-weight: bold;">Đa ngôn ngữ</span></p>  <ul> 	<li>NukeViet 4 đa ngôn ngữ 100% với 2 loại: đa ngôn ngữ giao diện và đa ngôn ngữ xử lý dữ liệu (database).</li> 	<li>NukeViet 4 có tính năng cho phép người quản trị tự xây dựng ngôn ngữ mới cho site. Cho phép đóng gói file ngôn ngữ để chia sẻ cho cộng đồng...</li> 	<li>NukeViet cũng có trung tâm dịch thuật riêng dành cho việc chung tay góp sức xây dựng những ngôn ngữ mới tại địa chỉ: <a href="http://translate.nukeviet.vn" target="_blank">http://translate.nukeviet.vn</a></li> 	<li>NukeViet 4 tách bạch ngôn ngữ quản trị và ngôn ngữ người dùng, ngôn ngữ giao diện và ngôn ngữ database giúp dễ dàng xây dựng và quản lý các hệ thống đa ngôn ngữ.</li> 	<li>NukeViet 4 còn có khả năng tự động nhận diện và chuyển ngôn ngữ phù hợp cho người sử dụng.</li> 	<li>NukeViet 4 còn <span style="font-size:14.666666666666666px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">có sẵn 3 ngôn ngữ mặc định là Việt, Anh và Pháp.</span></li> </ul>  <p style="text-align: justify;"><span style="font-weight: bold;">Phân quyền</span><strong> cấp độ hệ thống</strong><br  /> NukeViet 4 tách biệt 2 khu vực: Khu vực quản trị và Khu vực người dùng. Toàn bộ các tính năng quản lý nằm trong khu vực quản trị nhằm đảm bảo việc phân quyền được thực hiện chính xác và an toàn nhất.<br  /> <br  /> <span style="font-weight: bold;">Phân quyền Quản trị</span><br  /> NukeViet 4 phân quyền theo module và theo ngôn ngữ, do đó dễ dàng xác lập quyền quản trị cho các hệ thống lớn, nhiều người quản trị cùng làm việc.<br  /> <br  /> <span style="font-weight: bold;">Phân quyền thành viên</span><br  /> NukeViet 4 cho phép quản lý và phân nhóm người sử dụng thành các nhóm khác nhau để dễ dàng phân quyền người sử dụng theo từng module cụ thể.<br  /> <br  /> <strong>Phân quyền cấp độ module</strong><br  /> Ở cấp module, tùy chức năng module được thiết kế mà nó có thể được phân quyền theo các cơ chế khác nhau, việc này đặc biệt linh hoạt khi xây dựng các hệ thống lớn. Với module News tích hợp trong hệ thống được trang bị việc phân quyền tới từng chuyên mục.<br  /> <br  /> <span style="font-weight: bold;">Đa giao diện</span></p>  <ul> 	<li style="text-align: justify;">Cài đặt: NukeViet 4 hỗ trợ cài đặt và gỡ bỏ giao diện hoàn toàn tự động. Hơn thế nữa, bạn có thể đóng gói giao diện để chia sẻ cho website khác một cách dễ dàng.</li> 	<li style="text-align: justify;">NukeViet hỗ trợ giao diện theo ngôn ngữ, giao diện theo module, định nghĩa giao diện mobile (NukeViet 4) và giao diện PC tùy theo ý người quản trị.</li> 	<li style="text-align: justify;">NukeViet hỗ trợ hệ thống đa giao diện cực kỳ uyển chuyển cho cả người sử dụng lẫn người lập trình. Với NukeViet 4, người sử dụng có thể tùy biến một cách dễ dàng: gán giao diện theo module, thiết lập bố cục giao diện cho từng tính năng của module.</li> 	<li style="text-align: justify;">Với người thiết kế giao diện: có thể tùy ý thiết kế không giới hạn bố cục giao diện. Giao diện đã được tách bạch phần HTML và CSS khỏi PHP vì vậy người thiết kế tùy trình độ mà có thể can thiệp vào các lớp giao diện để chỉnh sửa hoặc thiết kế giao diện mới một cách dễ dàng.</li> </ul>  <p style="text-align: justify;"><strong>Hỗ trợ truy cập từ điện thoại, máy tính bảng.</strong><br  /> Từ bản NukeViet 4, NukeViet có thể tự động nhận diện thiết bị di động để chuyển giao diện và chế độ tương tác phù hợp. Ngoài ra NukeViet 4 còn có giao diện tùy biến, để có thể hiển thị tốt trên các màn hình khác nhau.<br  /> <br  /> <span style="font-weight: bold;">Tùy biến site bằng Block</span><br  /> NukeViet cho phép đa dạng hóa bố cục và chức năng cho website nhờ các khối (block) khác nhau trên website. Các khối này có thể là các ứng dụng, các khối quảng cáo hoặc dữ liệu bất kỳ nào được người sử dụng định nghĩa. Block của NukeViet 4 cũng phân theo 2 cấp: Block của hệ thống và block cho từng module.<br  /> Người sử dụng có thể tùy ý bố trí vị trí block ở các vị trí khác nhau: toàn bộ website, theo từng module và thậm chí là từng tính năng của module. Block có thể có các giao diện khác nhau theo theme. Có thể hẹn giờ bật/tắt cũng như phân quyền cho từng đối tượng người truy cập.<br  /> Việc bố trí block có thể thực hiện trong Admin Control Panel hoặc kéo thả trực quan ngay tại giao diện người dùng.<br  /> <br  /> <span style="font-weight: bold;">An ninh, bảo mật</span><br  /> NukeViet 4 được thiết kế để nhận biết và chống các truy cập bất hợp pháp vào hệ thống cũng như gửi các dữ liệu có hại lên hệ thống.</p>  <ul> 	<li style="text-align: justify;">Sau khi các chuyên giả bảo mật của HP gửi đánh giá, chúng tôi đã tối ưu NukeViet 4.0 để hệ thống an toàn hơn.</li> 	<li style="text-align: justify;">Mã hóa các mật khẩu lưu trữ trong hệ thống: Các mật khẩu như FPT, SMTP,... đã được mã hóa, bảo mật thông tin người dùng.<br  /> 	Tường lửa Admin bảo vệ khu vực bằng mật khẩu và IP.</li> 	<li style="text-align: justify;">Bộ lọc IP cấm và bộ lọc file cấm giúp ngăn ngừa các nguy cơ biết trước.</li> 	<li style="text-align: justify;">Dữ liệu gửi qua hệ thống được kiểm duyệt bằng bộ lọc an ninh kép nhằm ngăn chặn các dữ liệu có khả năng tấn công vào hệ thống.</li> 	<li style="text-align: justify;">NukeViet có khả năng ngăn chặn, theo dõi và kiểm soát truy cập vào hệ thống của tất cả các máy chủ tìm kiếm như yahoo và google hay bất cứ máy chủ tìm kiếm nào khác.</li> 	<li style="text-align: justify;">Hệ thống có khả năng chống Spam bằng Captcha, chống lụt dữ liệu bằng nhiều hình thức như giới hạn thời gian gửi dữ liệu (sử dụng các công thức kép)...</li> 	<li style="text-align: justify;">Hệ thống cho phép theo dõi, ghi nhận các thông số của máy tính truy cập đến site như: Hệ điều hành, Trình duyệt, quốc gia, các liên kết đến site (referer) để từ đó có thể kịp thời ngăn ngừa các nguy cơ tấn công bằng các hình thức như: kiểm tra và chặn các máy tình dùng proxy, chặn IP truy cập...</li> 	<li style="text-align: justify;">hật ký hệ thống sẽ ghi nhận truy cập và thao tác tới cơ sở dữ liệu &amp; tệp tin, giúp người quản trị cũng như các thành viên dễ dàng phát hiện ra những đăng nhập bất hợp pháp từ lần đăng nhập trước đó.</li> 	<li style="text-align: justify;">Hệ thống có thể phát hiện các bản nâng cấp mới của phần mềm để nhắc nhở người sử dụng nâng cấp và sửa chữa các lỗi (nếu có)</li> </ul>  <p style="text-align: justify;"><span style="font-weight: bold;">Quản lý CSDL</span></p>  <ul> 	<li style="text-align: justify;">NukeViet 4 cho phép quản lý CSDL, người sử dụng có thể tối ưu, sao lưu trên máy chủ và tải dữ liệu về để phục vụ cho công tác phục hồi nếu xảy ra sự cố.</li> 	<li style="text-align: justify;">Hỗ trợ mô hình CSDL theo mô hình master/slave để phân tải CSDL.</li> </ul>  <p style="text-align: justify;"><span style="font-weight: bold;">Kiểm soát lỗi tự động và báo lỗi thông minh</span></p>  <ul> 	<li style="text-align: justify;">NukeViet 4 có hệ thống kiểm soát lỗi tự động và báo lỗi cho người dùng.</li> 	<li style="text-align: justify;">Các lỗi (nếu có) sẽ được hệ thống kiểm soát có chủ đích, nó chỉ hiển thị lên màn hình người sử dụng ở lần đầu nó xuất hiện, sau đó hệ thống ghi nhận và báo về cho người quản trị qua email.</li> 	<li style="text-align: justify;">Quản trị có thể cấu hình việc bật tắt việc có ghi nhận lỗi hay không.</li> </ul>  <p style="text-align: justify;"><span style="font-weight: bold;">Tối ưu hóa cho công cụ tìm kiếm (SEO)</span></p>  <ul> 	<li style="text-align: justify;">Loại bỏ tên module khỏi URL khi không dùng đa ngôn ngữ.</li> 	<li style="text-align: justify;">Cho phép đổi đường dẫn module</li> 	<li style="text-align: justify;">Thêm chức năng xác thực Google+ (Bản quyền tác giả)</li> 	<li style="text-align: justify;">Thêm chức năng ping đến các công cụ tìm kiếm: Submit url mới đến google để việc hiển thị bài viết mới lên kết quả tìm kiếm nhanh chóng hơn.</li> 	<li style="text-align: justify;">Hỗ trợ Meta OG của facebook</li> 	<li style="text-align: justify;">Hỗ trợ chèn Meta GEO qua Cấu hình Meta-Tags<br  /> 	Hỗ trợ SEO link.</li> 	<li style="text-align: justify;">Quản lý và tùy biến tiêu đề site, description</li> 	<li style="text-align: justify;">Hỗ trợ quản lý các thẻ meta như: keywords, description</li> 	<li style="text-align: justify;">Hỗ trợ sử dụng keywords để phát sinh trang thống kê một cách tự động nhờ công cụ tìm kiếm.</li> 	<li style="text-align: justify;">Hỗ trợ quản lý máy chủ tìm kiếm.</li> 	<li style="text-align: justify;">Hỗ trợ quản lý cấu hình robots.txt</li> 	<li style="text-align: justify;">Hỗ trợ chuẩn đoán site (site Diagnostic).</li> </ul>  <p style="text-align: justify;"><span style="font-weight: bold;">Sẵn sàng cho việc tích hợp các ứng dụng của bên thứ 3</span><br  /> NukeViet 3.4 sử dụng Cơ sở dữ liệu thành viên độc lập và xây dựng sẵn các phương thức kết nối với các ứng dụng Forum. Cơ sở dữ liệu thành viên độc lập giúp việc quản lý thành viên được chủ động, khi có nhu cầu kết nối hoặc trao quyền quản lý cho các ứng dụng từ bên thứ 3, NukeViet 3.4 vẫn hoàn toàn chủ động với dữ liệu thành viên của mình. Với NukeViet 3.4, các kết nối trực tiếp dành cho Forum như PHPBB hay VBB đều sẵn sàng.<br  /> <br  /> <span style="font-weight: bold;">Hỗ trợ Đăng nhập phân tán</span><br  /> NukeViet hỗ trợ thư viện OAuth , cho phép người truy cập có thể đăng nhập phân tán từ các hệ thống như FaceBook và Google hay các hệ thống OpenID khác giúp các website mới xây dựng có cơ hội thu hút lượng người sử dụng khổng lồ từ các hệ thống lớn.<br  /> Trong mọi trường hợp, hệ thống cho phép admin kiểm duyệt việc login OAuth. Tùy nhu cầu sử dụng mà có thể thiết đặt mức độ login cao nhất (tự động) tới mức độ vẫn phải đăng ký thành viên (bớt bước kích hoạt qua email). Người sử dụng cũng có thể quản lý nhiều tài khoản OAuth để từ đó có thể đăng nhập bằng tài khoản bất kỳ (nếu hệ thống cho phép).</p>  <p style="text-align: justify;"><strong>Trình soạn thảo tích hợp sẵn:</strong></p>  <p style="text-align: justify;">Tại những vị trí phù hợp, NukeViet tích hợp sẵn trình soạn thảo CKeditor giúp người sử dụng dễ dàng biên tập nội dung trên giao diện trực quan và thân thiện như làm việc với phần mềm Microsoft Word hay OpenOffice. Hiện tại NukeViet 4 cũng đã mở sẵn để tích hợp các trình soạn thảo khác.</p>  <p style="text-align: justify;"><span style="font-weight: bold;">Các tiện ích khác</span><br  /> Hệ thống cho phép gửi mail bằng các phương thức: SMTP, Linux Mail, PHPmail.<br  /> Cho phép sử dụng phương thức FTP để ghi file nếu máy chủ không cho phép làm điều đó bằng PHP<br  /> Cho phép xây dựng và quản lý các tác vụ xử lý tự động như tự động sao lưu CSDL, tự động xóa các dữ liệu cũ hoặc gửi báo lỗi tới người quản trị...<br  /> Cung cấp đầy đủ các thông tin về hệ thống giúp nhà phát triển dễ dàng sử dụng các thông tin này phục vụ cho việc lập trình, kiểm tra và báo lỗi hệ thống.<br  /> <br  /> <span style="font-size: 150%; line-height: 116%;"><span style="font-weight: bold;">Các module tích hợp sẵn trong NukeViet CMS 4:</span></span><br  /> <span style="font-weight: bold;">Quản lý Upload</span></p>  <ul> 	<li style="text-align: justify;">Upload hình (ảnh, flash) từ máy tính hoặc một địa chỉ bất kỳ trên mạng.</li> 	<li style="text-align: justify;">Quản lý: Di chuyển, đổi tên, sửa, xóa, tạo hình thu nhỏ...</li> 	<li style="text-align: justify;">Hỗ trợ tìm kiểm các file và mô tả các file được upload lên trong khu vực quản trị.</li> </ul>  <p style="text-align: justify;"><span style="font-weight: bold;">Quản trị và xuất bản Tin tức:</span> (cho phép tạo module ảo)<br  /> Hệ thống tin tức của NukeViet là hệ thống quản trị tin tức chuyên nghiệp đặc biệt phù hợp với các website tin tức. Nó cho phép xử lý nhiều tác vụ nền thông minh mà không cần người sử dụng can thiệp nhằm tối ưu cho hệ thống tin tức, Ví dụ: tạo hình thu nhỏ, tự động chia thư mục và sắp xếp hình vào các thư mục theo thời gian...</p>  <ul> 	<li style="text-align: justify;">Quản lý chủ đề đa cấp trong đó bản tin có thể nằm ở 1 hoặc nhiều chủ đề không phụ thuộc quan hệ cha con giữa các chủ đề.</li> 	<li style="text-align: justify;">Phân quyền cho người quản lý module, đến từng chủ đề</li> 	<li style="text-align: justify;">Quản lý nhóm tin liên quan (phân luồn tin theo dòng đơn)</li> 	<li style="text-align: justify;">Quản lý block tin (nhóm tin đa luồng)</li> 	<li style="text-align: justify;">Quản lý Tags</li> 	<li style="text-align: justify;">Quản lý nguồn tin</li> 	<li style="text-align: justify;">Tùy chỉnh bố cục trang tin.</li> 	<li style="text-align: justify;">Gửi bài viết, hẹn giờ đăng và nhiều tùy chỉnh khác: cho phép gửi bản tin, in, lưu bản tin.</li> 	<li style="text-align: justify;">Cấp tin RSS</li> 	<li style="text-align: justify;">Công cụ tương tác với mạng xã&nbsp; hội.</li> </ul>  <p style="text-align: justify;"><span style="font-weight: bold;">Module Page:</span></p>  <ul> 	<li style="text-align: justify;">Module này thích hợp làm các bài viết không cần quản lý chủ đề, như các module ảo: giới thiệu, nội quy site ...</li> 	<li style="text-align: justify;">Hỗ trợ SEO: Ảnh minh họa, chú thích ảnh minh họa, mô tả, từ khóa cho bài viết, hiển thị các công cụ tương tác với các mạng xã hội.</li> 	<li style="text-align: justify;">Hỗ trợ RSS</li> 	<li style="text-align: justify;">Cấu hình phương án hiển thị các bài viết trên trang chính.</li> </ul>  <p style="text-align: justify;"><span style="font-weight: bold;">Quản lý thành viên:</span></p>  <ul> 	<li style="text-align: justify;">Quản lý việc đăng nhập, đăng ký.</li> 	<li style="text-align: justify;">Quản lý phương thức đăng nhập: Qua openid hoặc đăng nhập trực tiếp.</li> 	<li style="text-align: justify;">Quản lý câu hỏi bảo mật.</li> 	<li style="text-align: justify;">Quản lý nội quy.</li> 	<li style="text-align: justify;">Quản lý thông tin thành viên.</li> 	<li style="text-align: justify;">Cho phép đăng nhập 1 lần tài khoản người dùng NukeViet với Alfresco, Zimbra, Moodle, Koha thông qua CAS.</li> 	<li style="text-align: justify;">Chức năng tùy biến trường dữ liệu thành viên</li> 	<li style="text-align: justify;">Chức năng phân quyền sử dụng module users</li> 	<li style="text-align: justify;">Cấu hình Số ký tự username, độ phức tạp mật khẩu, tạo mật khảu ngẫu nhiên,....</li> 	<li style="text-align: justify;">Cho phép sử dụng tên truy cập, hoặc email để đăng nhập</li> </ul>  <p style="text-align: justify;"><span style="font-weight: bold;">Quản lý liên hệ gửi đến website</span></p>  <ul> 	<li style="text-align: justify;">Quản lý thông tin liên hệ trên site.</li> 	<li style="text-align: justify;">Quản lý các bộ phận tiếp nhận liên hệ.</li> 	<li style="text-align: justify;">Quản lý và trả lời các thư gửi tới. Admin có thể trả lời khách nhiều lần, hệ thống lưu lại lịch sử trao đổi đó.</li> 	<li style="text-align: justify;">Hệ thống nhận thông báo: đây là một tiện ích nhỏ, song nó rất hữu dụng để admin tương tác với hệ thống một cách nhanh chóng. Admin có thể nhận thông báo từ hệ thống (hoặc từ module) khi có sự kiện nào đó. Ví dụ: Khi có khách gửi liên hệ (qua module contact) đến thì hệ thống xuất hiện biểu tượng thông báo “Có liên hệ mới” ở góc phải, Admin sẽ nhận được ngay lập tức thông báo khi người dùng đang ở Admin control panel (ACP).</li> </ul>  <p style="text-align: justify;"><span style="font-weight: bold;">Quản lý thăm dò ý kiến:</span></p>  <ul> 	<li style="text-align: justify;">Tạo các thăm dò ý kiến</li> </ul>  <p style="text-align: justify;"><span style="font-weight: bold;">Quản lý quảng cáo chuyên nghiệp:</span></p>  <ul> 	<li style="text-align: justify;">Quản lý khách hàng.</li> 	<li style="text-align: justify;">Quản lý các khu vực quảng cáo</li> 	<li style="text-align: justify;">Quản lý các nội dung quảng cáo.</li> 	<li style="text-align: justify;">Kết hợp với việc quản lý block. Các quản cáo có thể đặt vào các khu vực khác nhau, dễ dàng thay đổi theo nhu cầu của người dùng.</li> </ul>  <p style="text-align: justify;"><span style="font-weight: bold;">Thống kê:</span> Thống kê theo năm, tháng, ngày, tuần, giờ.</p>  <ul> 	<li style="text-align: justify;">Theo liên kết đến site</li> 	<li style="text-align: justify;">Theo quốc gia</li> 	<li style="text-align: justify;">Theo trình duyệt</li> 	<li style="text-align: justify;">Theo hệ điều hành</li> 	<li style="text-align: justify;">Máy chủ tìm kiếm</li> </ul>  <p style="text-align: justify;"><span style="font-weight: bold;">Tìm kiếm</span></p>  <ul> 	<li style="text-align: justify;">Tìm kiếm chung toàn hệ thống</li> 	<li style="text-align: justify;">Tìm kiếm nâng cao từng khu vực</li> </ul>  <div style="text-align: justify;"><strong>Module menu:</strong></div>  <ul> 	<li style="text-align: justify;">Module này cung cấp để quản lý các menu tùy biên, có thể lấy liên kết từ nhiều mục khác nhau.</li> 	<li style="text-align: justify;">Phương án quản lý menu được thay đổi hướng tới việc quản lý menu nhanh chóng, tiện lợi nhất cho admin.</li> 	<li style="text-align: justify;">Admin có thể nạp nhanh menu theo các tùy chọn mà hệ thống cung cấp.</li> 	<li style="text-align: justify;">Mẫu menu cũng được thay đổi, đa dạng và hiển thị tốt với các giao diện hiện đại.</li> </ul>  <p style="text-align: justify;"><strong>Quản lý Bình luận</strong></p>  <ul> 	<li style="text-align: justify;">Các bình luận của các module sẽ được tích hợp quản lý tập trung để cấu hình, phân quyền.</li> 	<li style="text-align: justify;">Khi xây dựng mới module, Chỉ cần nhúng 1 đoạn mã vào. Tránh phải việc copy mã code gây khó khăn cho bảo trì.</li> </ul>  <p style="text-align: justify;"><br  /> Trên đây là các tính năng chính của bộ nhân hệ thống NukeViet 4. Với NukeViet, việc mở rộng thêm các tính năng là không hạn chế, đơn giản là cài thêm các module tương ứng hoặc xây dựng thêm các module đó cho NukeViet.</p>', '', 0, '4', '', 0, 5, 1, 1453277351, 1453277351, 1),
(6, 'Yêu cầu sử dụng NukeViet 4', 'Yeu-cau-su-dung-NukeViet-4', '', '', 0, '', '<h2 class="sectionedit2" id="moi_truờng_may_chủ">1. Môi trường máy chủ</h2>  <div class="level2"> <p><strong>Yêu cầu bắt buộc</strong></p>  <ul> 	<li class="level1"> 	<div class="li">Hệ điều hành: Unix (Linux, Ubuntu, Fedore…) hoặc Windows</div> 	</li> 	<li class="level1"> 	<div class="li">PHP: PHP 5.4 hoặc phiên bản mới nhất.</div> 	</li> 	<li class="level1"> 	<div class="li">MySQL: MySQL 5.5 hoặc phiên bản mới nhất</div> 	</li> </ul>  <p><strong>Tùy chọn bổ sung</strong></p>  <ul> 	<li class="level1"> 	<div class="li">Máy chủ Apache cần hỗ trợ mod mod_rewrite.</div> 	</li> 	<li class="level1"> 	<div class="li">Máy chủ Nginx cấu hình các thông số rewite.</div> 	</li> 	<li class="level1"> 	<div class="li">Máy chủ IIS 7.0 hoặc IIS 7.5 cần cài thêm module rewrite</div> 	</li> 	<li class="level1"> 	<div class="li">Môi trường PHP mở rộng: Các thư viện PHP cần có: file_uploads, session, mbstring, curl, gd2, zlib, soap, php_zip.</div> 	</li> </ul>  <p><em class="u"><strong>Ghi chú:</strong></em></p>  <ul> 	<li class="level1"> 	<div class="li">Những yêu cầu trên không có nghĩa là NukeViet 4 không làm việc trên các hệ thống khác, điều quan trọng là cần thiết lập môi trường làm việc phù hợp.</div> 	</li> 	<li class="level1"> 	<div class="li">Với những website sử dụng hosting, NukeViet 4 làm việc tốt nhất trên các hosting Linux cài sẵn Apache 2.2, PHP 5, MySQL 5, DirectAdmin hoặc Cpanel.</div> 	</li> 	<li class="level1"> 	<div class="li">Với các website cần chịu tải cao, nên sử dụng Nginx, PHP7 (php-fpm). Tham khảo thêm mô hình <a class="urlextern" href="http://wiki.nukeviet.vn/web_server:cai-dat-server-chi-tai-cao" rel="nofollow" target="_blank" title="http://wiki.nukeviet.vn/web_server:cai-dat-server-chi-tai-cao">http://wiki.nukeviet.vn/web_server:cai-dat-server-chi-tai-cao</a></div> 	</li> </ul> </div>  <div class="secedit editbutton_section editbutton_2">  <div class="no">&nbsp;</div>  </div>  <h2 class="sectionedit3" id="may_tinh_nguời_truy_cập">2. Máy tính người truy cập</h2>  <div class="level2"> <p>NukeViet 4 cho kết quả là chuẩn HTML5 và CSS 3, đây là định dạng chuẩn mà hầu hết các trình duyệt hiện nay đang hỗ trợ. Chính vì vậy các website làm trên nền NukeViet 4 có thể truy cập tốt trên các phiên bản mới nhất của trình duyệt FireFox, Internet Explorer 9, Google Chrome … Máy tính người truy cập chỉ cần cài một trong các trình duyệt này là có thể tương tác với NukeViet thông qua internet hoặc intranet.</p> </div>', '', 0, '4', '', 0, 6, 1, 1453277351, 1453277351, 1),
(7, 'Giới thiệu về Công ty cổ phần phát triển nguồn mở Việt Nam', 'gioi-thieu-ve-cong-ty-co-phan-phat-trien-nguon-mo-viet-nam', '', '', 0, '', '<p style="text-align: justify;"><strong>Công ty cổ phần phát triển nguồn mở Việt Nam</strong> (VINADES.,JSC) là công ty mã nguồn mở đầu tiên của Việt Nam sở hữu riêng một mã nguồn mở nổi tiếng và đang được sử dụng ở hàng ngàn website lớn nhỏ trong mọi lĩnh vực. Wbsite đang hoạt động chính thức: <a href="http://vinades.vn/">http://vinades.vn/</a><br  /> <br  /> Ra đời từ hoạt động của tổ chức nguồn mở NukeViet (từ năm 2004) và chính thức được thành lập đầu 2010 tại Hà Nội, khi đó báo chí đã gọi VINADES.,JSC là <em><strong>&quot;Công ty mã nguồn mở đầu tiên tại Việt Nam&quot;</strong></em>.<br  /> <br  /> Ngay sau khi thành lập, VINADES.,JSC đã thành công trong việc xây dựng <strong><a href="http://nukeviet.vn/" target="_blank">NukeViet</a></strong> thành một <a href="http://nukeviet.vn/" target="_blank">mã nguồn mở</a> thuần Việt. Với khả năng mạnh mẽ, cùng các ưu điểm vượt trội về công nghệ, độ an toàn và bảo mật, NukeViet đã được hàng ngàn website lựa chọn sử dụng trong năm qua. Ngay khi ra mắt phiên bản mới năm 2010, NukeViet đã tạo nên hiệu ứng truyền thông chưa từng có trong lịch sử mã nguồn mở Việt Nam. Tiếp đó, năm 2011 Mã nguồn mở NukeViet đã giành giải thưởng Nhân tài đất Việt cho sản phẩm Công nghệ thông tin đã được ứng dụng rộng rãi.</p>  <div style="text-align: center;"> <div class="youtube-embed-wrapper" style="position:relative;padding-bottom:56.25%;padding-top:30px;height:0;overflow:hidden;"><iframe allowfullscreen="" frameborder="0" height="480" src="//www.youtube.com/embed/ZOhu2bLE-eA?rel=0&amp;autoplay=1" style="position: absolute;top: 0;left: 0;width: 100%;height: 100%;" width="640"></iframe></div> <br  /> <span style="font-size:12px;"><strong>Video clip trao giải Nhân tài đất Việt 2011.</strong><br  /> Sản phẩm &quot;Mã nguồn mở NukeViet&quot; đã nhận giải cao nhất (Giải ba, không có giải nhất, giải nhì) của Giải thưởng Nhân Tài Đất Việt 2011 ở lĩnh vực Công nghệ thông tin - Sản phẩm đã có ứng dụng rộng rãi.</span></div>  <p style="text-align: justify;"><br  /> Tự chuyên nghiệp hóa mình, thoát khỏi mô hình phát triển tự phát, công ty đã nỗ lực vươn mình ra thế giới và đang phấn đấu trở thành một trong những hiện tượng của thời &quot;dotcom&quot; ở Việt Nam.<br  /> <br  /> Để phục vụ hoạt động của công ty, công ty liên tục mở rộng và tuyển thêm nhân sự ở các vị trí: Lập trình viên, chuyên viên đồ họa, nhân viên kinh doanh... Hãy liên hệ ngay để gia nhập VINADES.,JSC và cùng chúng tôi trở thành một công ty phát triển nguồn mở thành công nhất Việt Nam.</p>  <p>Nếu bạn có nhu cầu triển khai các hệ thống <strong><a href="http://toasoandientu.vn" target="_blank">Tòa Soạn Điện Tử</a></strong>, <strong><a href="http://webnhanh.vn" target="_blank">phần mềm trực tuyến</a></strong>, <strong><a href="http://vinades.vn" target="_blank">thiết kế website</a></strong> theo yêu cầu hoặc dịch vụ có liên quan, hãy liên hệ công ty chuyên quản NukeViet theo thông tin dưới đây:</p>  <p><strong><span style="font-family: Tahoma; color: rgb(255, 69, 0); font-size: 14px;">CÔNG TY CỔ PHẦN PHÁT TRIỂN NGUỒN MỞ VIỆT NAM</span></strong><br  /> <strong>VIET NAM OPEN SOURCE DEVELOPMENT JOINT STOCK COMPANY</strong> (<strong>VINADES.,JSC</strong>)<br  /> Website: <a href="http://vinades.vn/">http://vinades.vn</a> | <a href="http://nukeviet.vn/">http://nukeviet.vn</a> | <a href="http://webnhanh.vn/">http://webnhanh.vn</a><br  /> Trụ sở: Phòng 2004 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội.<br  /> - Tel: +84-4-85872007<br  /> - Fax: +84-4-35500914<br  /> - Email: <a href="mailto:contact@vinades.vn">contact@vinades.vn</a></p>', 'giới thiệu,công ty,cổ phần,phát triển', 0, '4', '', 0, 7, 1, 1453277351, 1453277351, 1),
(8, 'Ủng hộ, hỗ trợ và tham gia phát triển NukeViet', 'ung-ho-ho-tro-va-tham-gia-phat-trien-nukeviet', '', '', 0, 'Nếu bạn yêu thích NukeViet, bạn có thể ủng hộ và hỗ trợ NukeViet bằng nhiều cách', '<h2>1. Ủng hộ bằng tiền mặt vào Quỹ tài trợ NukeViet</h2>\r\nQua tài khoản Paypal:\r\n\r\n<p style="text-align:center"><a href="https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&amp;hosted_button_id=5LUSNE2SV5RR2" target="_blank"><img alt="" src="https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif" /></a></p>\r\nChuyển khoản ngân hàng trực tiếp:\r\n\r\n<ul>\r\n	<li>Người đứng tên tài khoản:&nbsp;NGUYEN THE HUNG</li>\r\n	<li>Số tài khoản:&nbsp;0031000792053</li>\r\n	<li>Loại tài khoản: VND (Việt Nam Đồng)</li>\r\n	<li>Ngân hàng Vietcombank chi nhánh Hải Phòng.</li>\r\n	<li>Website:&nbsp;<a href="http://www.vietcombank.com.vn/">http://www.vietcombank.com.vn</a></li>\r\n</ul>\r\n\r\n<div class="alert alert-info">Lưu ý: Đây là tài khoản hợp lệ duy nhất mà NukeViet.VN sử dụng cho&nbsp;Quỹ tài trợ NukeViet.</div>\r\nThảo luận tại đây:&nbsp;<a href="http://forum.nukeviet.vn/viewtopic.php?f=3&amp;t=3592" target="_blank">http://forum.nukeviet.vn/viewtopic.php?f=3&amp;t=3592</a>\r\n\r\n<h2>2. Ủng hộ bằng cách sử dụng và phổ biến NukeViet đến nhiều người hơn</h2>\r\nCách đơn giản nhất để ủng hộ NukeViet phát triển là sử dụng NukeViet và giúp NukeViet phổ biến đến nhiều người hơn (ví dụ như giữ lại dòng chữ &quot;Powered by&nbsp;<a href="http://nukeviet.vn/" target="_blank">NukeViet</a>&quot; hoặc &quot;Sử dụng&nbsp;<a href="http://nukeviet.vn/" target="_blank">NukeViet</a>&quot; trên website của bạn, viết bài giới thiệu NukeViet đến mọi người).<br />\r\nNếu bạn có thời gian, bạn có thể tham gia&nbsp;<a href="http://forum.nukeviet.vn/" target="_blank">diễn đàn NukeViet</a>&nbsp;thường xuyên và giúp đỡ những người mới sử dụng NukeViet.\r\n\r\n<h2>3. Ủng hộ bằng cách tham gia phát triển NukeViet</h2>\r\n\r\n<h3>3.1. Phát triển module, giao diện cho NukeViet</h3>\r\nNếu bạn biết code, hãy tham gia viết module, block, theme cho NukeViet và đưa lên&nbsp;<a href="http://nukeviet.vn/vi/store/" target="_blank">NukeViet Store</a>&nbsp;để cung cấp cho cộng đồng. Bạn cũng có thể tham gia đội ngũ phát triển NukeViet.\r\n\r\n<h3>3.2. Tham gia phát triển nhân hệ thống</h3>\r\nToàn bộ code nhân hệ thống NukeViet đã được đưa lên GitHub.com (truy cập tắt:&nbsp;<a href="http://code.nukeviet.vn/" target="_blank">http://code.nukeviet.vn</a>), dù bạn là ai, cá nhân hay doanh nghiệp chỉ cần có một tài khoản tại GitHub và học cách sử dụng&nbsp;<a href="#git">git&nbsp;(1)</a>&nbsp;là bạn có thể tham gia phát triển code NukeViet. Tìm hiểu thêm về việc tham gia phát triển code nhân hệ thống NukeViet tại đây:&nbsp;<a href="http://wiki.nukeviet.vn/programming:github_rule" target="_blank">http://wiki.nukeviet.vn/programming:github_rule</a>\r\n\r\n<h3>3.3. Tham gia dịch thuật</h3>\r\nNếu bạn biết ngoại ngữ, hãy đăng ký tham gia đội ngũ dịch thuật tình nguyện tại&nbsp;<a href="http://translate.nukeviet.vn/" target="_blank">NukeViet Stranslate System</a>&nbsp;để dịch thuật NukeViet sang các ngôn ngữ khác, quảng bá NukeViet ra với thế giới.\r\n\r\n<h3>3.4. Tham gia viết tài liệu hướng dẫn sử dụng</h3>\r\nNếu bạn không biết code, không biết ngoại ngữ, bạn vẫn có thể tham gia đóng góp cho NukeViet bằng cách biên soạn tài liệu hướng dẫn người dùng NukeViet tại thư viện tài liệu mở của NukeViet ở địa chỉ&nbsp;<a href="http://wiki.nukeviet.vn/" target="_blank">http://wiki.nukeviet.vn</a>\r\n\r\n<hr  /> <a id="git" name="git">(1)</a>: Tìm hiểu về git:&nbsp;<a href="http://wiki.nukeviet.vn/programming:vcs:git" target="_blank">http://wiki.nukeviet.vn/programming:vcs:git</a>', 'ủng hộ,hỗ trợ,tham gia,phát triển', 0, '4', '', 0, 8, 1, 1453277351, 1453277351, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_about_config`
--

DROP TABLE IF EXISTS `nv4_vi_about_config`;
CREATE TABLE IF NOT EXISTS `nv4_vi_about_config` (
  `config_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_about_config`
--

INSERT INTO `nv4_vi_about_config` (`config_name`, `config_value`) VALUES
('viewtype', '0'),
('facebookapi', ''),
('per_page', '20'),
('news_first', '0'),
('related_articles', '5');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_blocks_groups`
--

DROP TABLE IF EXISTS `nv4_vi_blocks_groups`;
CREATE TABLE IF NOT EXISTS `nv4_vi_blocks_groups` (
`bid` mediumint(8) unsigned NOT NULL,
  `theme` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exp_time` int(11) DEFAULT '0',
  `active` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `act` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `all_func` tinyint(4) NOT NULL DEFAULT '0',
  `weight` int(11) NOT NULL DEFAULT '0',
  `config` text COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_blocks_groups`
--

INSERT INTO `nv4_vi_blocks_groups` (`bid`, `theme`, `module`, `file_name`, `title`, `link`, `template`, `position`, `exp_time`, `active`, `act`, `groups_view`, `all_func`, `weight`, `config`) VALUES
(1, 'default', 'news', 'module.block_newscenter.php', 'Tin mới nhất', '', 'no_title', '[TOP]', 0, '1', 1, '6', 0, 1, 'a:9:{s:6:"numrow";i:6;s:11:"showtooltip";i:1;s:16:"tooltip_position";s:6:"bottom";s:14:"tooltip_length";s:3:"150";s:12:"length_title";i:400;s:15:"length_hometext";i:0;s:5:"width";i:500;s:6:"height";i:0;s:7:"nocatid";a:0:{}}'),
(2, 'default', 'banners', 'global.banners.php', 'Quảng cáo giữa trang', '', 'no_title', '[TOP]', 0, '1', 1, '6', 0, 2, 'a:1:{s:12:"idplanbanner";i:1;}'),
(3, 'default', 'news', 'global.block_category.php', 'Chủ đề', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 0, 1, 'a:2:{s:5:"catid";i:0;s:12:"title_length";i:25;}'),
(4, 'default', 'theme', 'global.module_menu.php', 'Module Menu', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 0, 2, ''),
(5, 'default', 'banners', 'global.banners.php', 'Quảng cáo trái', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 1, 3, 'a:1:{s:12:"idplanbanner";i:2;}'),
(6, 'default', 'about', 'global.about.php', 'Giới thiệu', '', 'border', '[RIGHT]', 0, '1', 1, '6', 1, 1, ''),
(7, 'default', 'voting', 'global.voting_random.php', 'Thăm dò ý kiến', '', 'primary', '[RIGHT]', 0, '1', 1, '6', 1, 2, ''),
(8, 'default', 'theme', 'global.copyright.php', 'Copyright', '', 'no_title', '[FOOTER_SITE]', 0, '1', 1, '6', 1, 1, 'a:5:{s:12:"copyright_by";s:0:"";s:13:"copyright_url";s:0:"";s:9:"design_by";s:12:"VINADES.,JSC";s:10:"design_url";s:18:"http://vinades.vn/";s:13:"siteterms_url";s:39:"/index.php?language=vi&amp;nv=siteterms";}'),
(9, 'default', 'contact', 'global.contact_form.php', 'Feedback', '', 'no_title', '[FOOTER_SITE]', 0, '1', 1, '6', 1, 2, ''),
(10, 'default', 'theme', 'global.QR_code.php', 'QR code', '', 'no_title', '[QR_CODE]', 0, '1', 1, '6', 1, 1, 'a:3:{s:5:"level";s:1:"M";s:15:"pixel_per_point";i:4;s:11:"outer_frame";i:1;}'),
(11, 'default', 'statistics', 'global.counter_button.php', 'Online button', '', 'no_title', '[QR_CODE]', 0, '1', 1, '6', 1, 2, ''),
(12, 'default', 'users', 'global.user_button.php', 'Đăng nhập thành viên', '', 'no_title', '[PERSONALAREA]', 0, '1', 1, '6', 1, 1, ''),
(13, 'default', 'theme', 'global.company_info.php', 'Công ty chủ quản', '', 'simple', '[COMPANY_INFO]', 0, '1', 1, '6', 1, 1, 'a:17:{s:12:"company_name";s:58:"Công ty cổ phần phát triển nguồn mở Việt Nam";s:16:"company_sortname";s:12:"VINADES.,JSC";s:15:"company_regcode";s:0:"";s:16:"company_regplace";s:0:"";s:21:"company_licensenumber";s:0:"";s:22:"company_responsibility";s:0:"";s:15:"company_address";s:72:"Phòng 2004 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội";s:15:"company_showmap";i:1;s:20:"company_mapcenterlat";d:20.9845159999999992805896908976137638092041015625;s:20:"company_mapcenterlng";d:105.7954749999999961573848850093781948089599609375;s:14:"company_maplat";d:20.9845159999999992805896908976137638092041015625;s:14:"company_maplng";d:105.7954750000000103682396002113819122314453125;s:15:"company_mapzoom";i:17;s:13:"company_phone";s:56:"+84-4-85872007[+84485872007]|+84-904762534[+84904762534]";s:11:"company_fax";s:14:"+84-4-35500914";s:13:"company_email";s:18:"contact@vinades.vn";s:15:"company_website";s:17:"http://vinades.vn";}'),
(14, 'default', 'menu', 'global.bootstrap.php', 'Menu Site', '', 'no_title', '[MENU_SITE]', 0, '1', 1, '6', 1, 1, 'a:2:{s:6:"menuid";i:1;s:12:"title_length";i:0;}'),
(15, 'default', 'contact', 'global.contact_default.php', 'Contact Default', '', 'no_title', '[CONTACT_DEFAULT]', 0, '1', 1, '6', 1, 1, ''),
(16, 'default', 'theme', 'global.social.php', 'Social icon', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 1, 'a:4:{s:8:"facebook";s:32:"http://www.facebook.com/nukeviet";s:11:"google_plus";s:32:"https://www.google.com/+nukeviet";s:7:"youtube";s:37:"https://www.youtube.com/user/nukeviet";s:7:"twitter";s:28:"https://twitter.com/nukeviet";}'),
(17, 'default', 'theme', 'global.menu_footer.php', 'Các chuyên mục chính', '', 'simple', '[MENU_FOOTER]', 0, '1', 1, '6', 1, 1, 'a:1:{s:14:"module_in_menu";a:8:{i:0;s:5:"about";i:1;s:4:"news";i:2;s:5:"users";i:3;s:7:"contact";i:4;s:6:"voting";i:5;s:7:"banners";i:6;s:4:"seek";i:7;s:5:"feeds";}}'),
(18, 'default', 'freecontent', 'global.free_content.php', 'Sản phẩm', '', 'no_title', '[FEATURED_PRODUCT]', 0, '1', 1, '6', 1, 1, 'a:2:{s:7:"blockid";i:1;s:7:"numrows";i:2;}'),
(19, 'mobile_default', 'menu', 'global.metismenu.php', 'Menu Site', '', 'no_title', '[MENU_SITE]', 0, '1', 1, '6', 1, 1, 'a:2:{s:6:"menuid";i:1;s:12:"title_length";i:0;}'),
(20, 'mobile_default', 'users', 'global.user_button.php', 'Sign In', '', 'no_title', '[MENU_SITE]', 0, '1', 1, '6', 1, 2, ''),
(21, 'mobile_default', 'contact', 'global.contact_default.php', 'Contact Default', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 1, ''),
(22, 'mobile_default', 'contact', 'global.contact_form.php', 'Feedback', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 2, ''),
(23, 'mobile_default', 'theme', 'global.social.php', 'Social icon', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 3, 'a:4:{s:8:"facebook";s:32:"http://www.facebook.com/nukeviet";s:11:"google_plus";s:32:"https://www.google.com/+nukeviet";s:7:"youtube";s:37:"https://www.youtube.com/user/nukeviet";s:7:"twitter";s:28:"https://twitter.com/nukeviet";}'),
(24, 'mobile_default', 'theme', 'global.QR_code.php', 'QR code', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 4, 'a:3:{s:5:"level";s:1:"L";s:15:"pixel_per_point";i:4;s:11:"outer_frame";i:1;}'),
(25, 'mobile_default', 'theme', 'global.copyright.php', 'Copyright', '', 'no_title', '[FOOTER_SITE]', 0, '1', 1, '6', 1, 1, 'a:5:{s:12:"copyright_by";s:0:"";s:13:"copyright_url";s:0:"";s:9:"design_by";s:12:"VINADES.,JSC";s:10:"design_url";s:18:"http://vinades.vn/";s:13:"siteterms_url";s:35:"/index.php?language=vi&nv=siteterms";}'),
(26, 'mobile_default', 'theme', 'global.menu_footer.php', 'Các chuyên mục chính', '', 'primary', '[MENU_FOOTER]', 0, '1', 1, '6', 1, 1, 'a:1:{s:14:"module_in_menu";a:9:{i:0;s:5:"about";i:1;s:4:"news";i:2;s:5:"users";i:3;s:7:"contact";i:4;s:6:"voting";i:5;s:7:"banners";i:6;s:4:"seek";i:7;s:5:"feeds";i:8;s:9:"siteterms";}}'),
(27, 'mobile_default', 'theme', 'global.company_info.php', 'Công ty chủ quản', '', 'primary', '[COMPANY_INFO]', 0, '1', 1, '6', 1, 1, 'a:17:{s:12:"company_name";s:58:"Công ty cổ phần phát triển nguồn mở Việt Nam";s:16:"company_sortname";s:12:"VINADES.,JSC";s:15:"company_regcode";s:0:"";s:16:"company_regplace";s:0:"";s:21:"company_licensenumber";s:0:"";s:22:"company_responsibility";s:0:"";s:15:"company_address";s:72:"Phòng 2004 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội";s:15:"company_showmap";i:1;s:20:"company_mapcenterlat";d:20.9845159999999992805896908976137638092041015625;s:20:"company_mapcenterlng";d:105.7954749999999961573848850093781948089599609375;s:14:"company_maplat";d:20.9845159999999992805896908976137638092041015625;s:14:"company_maplng";d:105.7954750000000103682396002113819122314453125;s:15:"company_mapzoom";i:17;s:13:"company_phone";s:56:"+84-4-85872007[+84485872007]|+84-904762534[+84904762534]";s:11:"company_fax";s:14:"+84-4-35500914";s:13:"company_email";s:18:"contact@vinades.vn";s:15:"company_website";s:17:"http://vinades.vn";}'),
(28, 'default', 'shops', 'global.block_bxproduct_center.php', 'global block bxproduct center', '', '', '[HEADER]', 0, '1', 1, '6', 1, 1, 'a:10:{s:7:"blockid";i:1;s:6:"numrow";i:5;s:6:"numget";i:30;s:4:"auto";i:1;s:4:"mode";s:10:"horizontal";s:5:"speed";i:500;s:5:"width";i:360;s:6:"margin";i:10;s:4:"move";i:1;s:5:"pager";i:1;}'),
(29, 'dienthoai', 'contact', 'global.contact_default.php', 'Công ty chủ quản', '', 'simple', '[COMPANY_INFO]', 0, '1', 1, '6', 1, 1, ''),
(30, 'dienthoai', 'contact', 'global.contact_default.php', 'Contact Default', NULL, 'no_title', '[CONTACT_DEFAULT]', 0, '1', 1, '6', 1, 1, ''),
(32, 'dienthoai', 'theme', 'global.copyright.php', 'Copyright', NULL, 'no_title', '[FOOTER_SITE]', 0, '1', 1, '6', 1, 1, 'a:5:{s:12:"copyright_by";s:0:"";s:13:"copyright_url";s:0:"";s:9:"design_by";s:12:"VINADES.,JSC";s:10:"design_url";s:18:"http://vinades.vn/";s:13:"siteterms_url";s:39:"/index.php?language=vi&amp;nv=siteterms";}'),
(33, 'dienthoai', 'contact', 'global.contact_form.php', 'Feedback', NULL, 'no_title', '[FOOTER_SITE]', 0, '1', 1, '6', 1, 2, ''),
(34, 'dienthoai', 'news', 'global.block_category.php', 'Chủ đề', NULL, 'no_title', '[LEFT]', 0, '1', 1, '6', 0, 1, 'a:2:{s:5:"catid";i:0;s:12:"title_length";i:25;}'),
(35, 'dienthoai', 'theme', 'global.module_menu.php', 'Module Menu', NULL, 'no_title', '[LEFT]', 0, '1', 1, '6', 0, 2, ''),
(36, 'dienthoai', 'banners', 'global.banners.php', 'Quảng cáo trái', NULL, 'no_title', '[LEFT]', 0, '1', 1, '6', 1, 3, 'a:1:{s:12:"idplanbanner";i:2;}'),
(37, 'dienthoai', 'theme', 'global.company_info.php', 'Thông tin iCaseStore', '', 'simple', '[MENU_FOOTER]', 0, '1', 1, '6', 1, 1, 'a:17:{s:12:"company_name";s:0:"";s:16:"company_sortname";s:0:"";s:15:"company_regcode";s:0:"";s:16:"company_regplace";s:0:"";s:21:"company_licensenumber";s:0:"";s:22:"company_responsibility";s:0:"";s:15:"company_address";s:66:"115 Lô G, Chung cư Đồng Diều, Phường 4, Quận 8, TP.HCM";s:15:"company_showmap";i:1;s:20:"company_mapcenterlat";d:20.984516000000013491444406099617481231689453125;s:20:"company_mapcenterlng";d:105.7954750000000103682396002113819122314453125;s:14:"company_maplat";d:20.984516000000013491444406099617481231689453125;s:14:"company_maplng";d:105.7954750000000103682396002113819122314453125;s:15:"company_mapzoom";i:21;s:13:"company_phone";s:10:"0902005101";s:11:"company_fax";s:0:"";s:13:"company_email";s:18:"vutriman@gmail.com";s:15:"company_website";s:0:"";}'),
(38, 'dienthoai', 'menu', 'global.bootstrap.php', 'Menu Site', '', 'no_title', '[MENU_SITE]', 0, '1', 1, '6', 1, 1, 'a:2:{s:6:"menuid";i:2;s:12:"title_length";i:20;}'),
(39, 'dienthoai', 'users', 'global.user_button.php', 'Đăng nhập thành viên', NULL, 'no_title', '[PERSONALAREA]', 0, '1', 1, '6', 1, 1, ''),
(40, 'dienthoai', 'theme', 'global.QR_code.php', 'QR code', NULL, 'no_title', '[QR_CODE]', 0, '1', 1, '6', 1, 1, 'a:3:{s:5:"level";s:1:"M";s:15:"pixel_per_point";i:4;s:11:"outer_frame";i:1;}'),
(41, 'dienthoai', 'statistics', 'global.counter_button.php', 'Online button', NULL, 'no_title', '[QR_CODE]', 0, '1', 1, '6', 1, 2, ''),
(42, 'dienthoai', 'about', 'global.about.php', 'Giới thiệu', NULL, 'border', '[RIGHT]', 0, '1', 1, '6', 1, 1, ''),
(43, 'dienthoai', 'voting', 'global.voting_random.php', 'Thăm dò ý kiến', NULL, 'primary', '[RIGHT]', 0, '1', 1, '6', 1, 2, ''),
(44, 'dienthoai', 'theme', 'global.social.php', 'Social icon', NULL, 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 1, 'a:4:{s:8:"facebook";s:32:"http://www.facebook.com/nukeviet";s:11:"google_plus";s:32:"https://www.google.com/+nukeviet";s:7:"youtube";s:37:"https://www.youtube.com/user/nukeviet";s:7:"twitter";s:28:"https://twitter.com/nukeviet";}'),
(45, 'dienthoai', 'shops', 'module.block_filter_product_cat.php', 'Tin mới nhất', '', 'no_title', '[TOP]', 0, '1', 1, '6', 0, 1, 'a:1:{s:11:"group_style";a:0:{}}'),
(48, 'dienthoai', 'theme', 'global.image.php', 'global image', '', 'no_title', '[HEADER]', 0, '1', 1, '6', 0, 1, 'a:1:{s:12:"imagecontent";s:204:"uploads/1.jpg|/uploads/1_4.png|Iphone 6 Plus Cases|/uploads/1_3.png-||-uploads/2.png|/uploads/2_2.png||/uploads/2_3.png-||-uploads/3.png|/uploads/3_2.png||-||-|||-||-|||-||-|||-||-|||-||-|||-||-|||-||-|||";}'),
(52, 'dienthoai', 'shops', 'global.block_relates_product.php', 'SẢN PHẨM MỚI', '', 'primary', '[TOP]', 0, '1', 1, '6', 0, 2, 'a:3:{s:7:"blockid";i:3;s:6:"numrow";i:9;s:7:"cut_num";i:0;}'),
(53, 'dienthoai', 'menu', 'global.metismenu.php', 'Trợ giúp', '', 'primary', '[FEATURED_PRODUCT]', 0, '1', 1, '6', 1, 1, 'a:2:{s:6:"menuid";i:3;s:12:"title_length";i:20;}'),
(55, 'dienthoai', 'theme', 'global.facebook_page_plugin.php', 'global facebook page plugin', '', 'no_title', '[FACEBOOK_PLUGIN]', 0, '1', 1, '6', 1, 1, 'a:5:{s:5:"ahref";s:16:"EPU.EVN/?fref=nf";s:13:"activationSDK";s:1:"1";s:15:"activationPosts";s:1:"0";s:15:"activationCover";s:1:"0";s:16:"activationFriend";s:1:"1";}');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_blocks_weight`
--

DROP TABLE IF EXISTS `nv4_vi_blocks_weight`;
CREATE TABLE IF NOT EXISTS `nv4_vi_blocks_weight` (
  `bid` mediumint(8) NOT NULL DEFAULT '0',
  `func_id` mediumint(8) NOT NULL DEFAULT '0',
  `weight` mediumint(8) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_blocks_weight`
--

INSERT INTO `nv4_vi_blocks_weight` (`bid`, `func_id`, `weight`) VALUES
(13, 1, 1),
(13, 36, 1),
(13, 37, 1),
(13, 38, 1),
(13, 39, 1),
(13, 45, 1),
(13, 46, 1),
(13, 47, 1),
(13, 48, 1),
(13, 55, 1),
(13, 58, 1),
(13, 4, 1),
(13, 5, 1),
(13, 6, 1),
(13, 7, 1),
(13, 8, 1),
(13, 9, 1),
(13, 10, 1),
(13, 11, 1),
(13, 12, 1),
(13, 49, 1),
(13, 57, 1),
(13, 52, 1),
(13, 53, 1),
(13, 29, 1),
(13, 30, 1),
(13, 31, 1),
(13, 32, 1),
(13, 33, 1),
(13, 34, 1),
(13, 35, 1),
(13, 18, 1),
(13, 19, 1),
(13, 20, 1),
(13, 21, 1),
(13, 22, 1),
(13, 23, 1),
(13, 24, 1),
(13, 25, 1),
(13, 26, 1),
(13, 27, 1),
(13, 56, 1),
(15, 1, 1),
(15, 36, 1),
(15, 37, 1),
(15, 38, 1),
(15, 39, 1),
(15, 45, 1),
(15, 46, 1),
(15, 47, 1),
(15, 48, 1),
(15, 55, 1),
(15, 58, 1),
(15, 4, 1),
(15, 5, 1),
(15, 6, 1),
(15, 7, 1),
(15, 8, 1),
(15, 9, 1),
(15, 10, 1),
(15, 11, 1),
(15, 12, 1),
(15, 49, 1),
(15, 57, 1),
(15, 52, 1),
(15, 53, 1),
(15, 29, 1),
(15, 30, 1),
(15, 31, 1),
(15, 32, 1),
(15, 33, 1),
(15, 34, 1),
(15, 35, 1),
(15, 18, 1),
(15, 19, 1),
(15, 20, 1),
(15, 21, 1),
(15, 22, 1),
(15, 23, 1),
(15, 24, 1),
(15, 25, 1),
(15, 26, 1),
(15, 27, 1),
(15, 56, 1),
(18, 1, 1),
(18, 36, 1),
(18, 37, 1),
(18, 38, 1),
(18, 39, 1),
(18, 45, 1),
(18, 46, 1),
(18, 47, 1),
(18, 48, 1),
(18, 55, 1),
(18, 58, 1),
(18, 4, 1),
(18, 5, 1),
(18, 6, 1),
(18, 7, 1),
(18, 8, 1),
(18, 9, 1),
(18, 10, 1),
(18, 11, 1),
(18, 12, 1),
(18, 49, 1),
(18, 57, 1),
(18, 52, 1),
(18, 53, 1),
(18, 29, 1),
(18, 30, 1),
(18, 31, 1),
(18, 32, 1),
(18, 33, 1),
(18, 34, 1),
(18, 35, 1),
(18, 18, 1),
(18, 19, 1),
(18, 20, 1),
(18, 21, 1),
(18, 22, 1),
(18, 23, 1),
(18, 24, 1),
(18, 25, 1),
(18, 26, 1),
(18, 27, 1),
(18, 56, 1),
(8, 1, 1),
(8, 36, 1),
(8, 37, 1),
(8, 38, 1),
(8, 39, 1),
(8, 45, 1),
(8, 46, 1),
(8, 47, 1),
(8, 48, 1),
(8, 55, 1),
(8, 58, 1),
(8, 4, 1),
(8, 5, 1),
(8, 6, 1),
(8, 7, 1),
(8, 8, 1),
(8, 9, 1),
(8, 10, 1),
(8, 11, 1),
(8, 12, 1),
(8, 49, 1),
(8, 57, 1),
(8, 52, 1),
(8, 53, 1),
(8, 29, 1),
(8, 30, 1),
(8, 31, 1),
(8, 32, 1),
(8, 33, 1),
(8, 34, 1),
(8, 35, 1),
(8, 18, 1),
(8, 19, 1),
(8, 20, 1),
(8, 21, 1),
(8, 22, 1),
(8, 23, 1),
(8, 24, 1),
(8, 25, 1),
(8, 26, 1),
(8, 27, 1),
(8, 56, 1),
(9, 1, 2),
(9, 36, 2),
(9, 37, 2),
(9, 38, 2),
(9, 39, 2),
(9, 45, 2),
(9, 46, 2),
(9, 47, 2),
(9, 48, 2),
(9, 55, 2),
(9, 58, 2),
(9, 4, 2),
(9, 5, 2),
(9, 6, 2),
(9, 7, 2),
(9, 8, 2),
(9, 9, 2),
(9, 10, 2),
(9, 11, 2),
(9, 12, 2),
(9, 49, 2),
(9, 57, 2),
(9, 52, 2),
(9, 53, 2),
(9, 29, 2),
(9, 30, 2),
(9, 31, 2),
(9, 32, 2),
(9, 33, 2),
(9, 34, 2),
(9, 35, 2),
(9, 18, 2),
(9, 19, 2),
(9, 20, 2),
(9, 21, 2),
(9, 22, 2),
(9, 23, 2),
(9, 24, 2),
(9, 25, 2),
(9, 26, 2),
(9, 27, 2),
(9, 56, 2),
(3, 7, 1),
(3, 8, 1),
(3, 4, 1),
(3, 10, 1),
(3, 11, 1),
(3, 6, 1),
(3, 5, 1),
(3, 12, 1),
(3, 9, 1),
(4, 22, 1),
(4, 24, 1),
(4, 19, 1),
(4, 27, 1),
(4, 23, 1),
(4, 21, 1),
(4, 18, 1),
(4, 20, 1),
(4, 25, 1),
(4, 26, 1),
(4, 34, 1),
(4, 32, 1),
(4, 31, 1),
(4, 33, 1),
(4, 30, 1),
(4, 29, 1),
(4, 35, 1),
(5, 1, 1),
(5, 36, 1),
(5, 37, 1),
(5, 38, 1),
(5, 39, 1),
(5, 45, 1),
(5, 46, 1),
(5, 47, 1),
(5, 48, 1),
(5, 55, 1),
(5, 58, 1),
(5, 4, 2),
(5, 5, 2),
(5, 6, 2),
(5, 7, 2),
(5, 8, 2),
(5, 9, 2),
(5, 10, 2),
(5, 11, 2),
(5, 12, 2),
(5, 49, 1),
(5, 57, 1),
(5, 52, 1),
(5, 53, 1),
(5, 29, 2),
(5, 30, 2),
(5, 31, 2),
(5, 32, 2),
(5, 33, 2),
(5, 34, 2),
(5, 35, 2),
(5, 18, 2),
(5, 19, 2),
(5, 20, 2),
(5, 21, 2),
(5, 22, 2),
(5, 23, 2),
(5, 24, 2),
(5, 25, 2),
(5, 26, 2),
(5, 27, 2),
(5, 56, 1),
(17, 1, 1),
(17, 36, 1),
(17, 37, 1),
(17, 38, 1),
(17, 39, 1),
(17, 45, 1),
(17, 46, 1),
(17, 47, 1),
(17, 48, 1),
(17, 55, 1),
(17, 58, 1),
(17, 4, 1),
(17, 5, 1),
(17, 6, 1),
(17, 7, 1),
(17, 8, 1),
(17, 9, 1),
(17, 10, 1),
(17, 11, 1),
(17, 12, 1),
(17, 49, 1),
(17, 57, 1),
(17, 52, 1),
(17, 53, 1),
(17, 29, 1),
(17, 30, 1),
(17, 31, 1),
(17, 32, 1),
(17, 33, 1),
(17, 34, 1),
(17, 35, 1),
(17, 18, 1),
(17, 19, 1),
(17, 20, 1),
(17, 21, 1),
(17, 22, 1),
(17, 23, 1),
(17, 24, 1),
(17, 25, 1),
(17, 26, 1),
(17, 27, 1),
(17, 56, 1),
(14, 1, 1),
(14, 36, 1),
(14, 37, 1),
(14, 38, 1),
(14, 39, 1),
(14, 45, 1),
(14, 46, 1),
(14, 47, 1),
(14, 48, 1),
(14, 55, 1),
(14, 58, 1),
(14, 4, 1),
(14, 5, 1),
(14, 6, 1),
(14, 7, 1),
(14, 8, 1),
(14, 9, 1),
(14, 10, 1),
(14, 11, 1),
(14, 12, 1),
(14, 49, 1),
(14, 57, 1),
(14, 52, 1),
(14, 53, 1),
(14, 29, 1),
(14, 30, 1),
(14, 31, 1),
(14, 32, 1),
(14, 33, 1),
(14, 34, 1),
(14, 35, 1),
(14, 18, 1),
(14, 19, 1),
(14, 20, 1),
(14, 21, 1),
(14, 22, 1),
(14, 23, 1),
(14, 24, 1),
(14, 25, 1),
(14, 26, 1),
(14, 27, 1),
(14, 56, 1),
(12, 1, 1),
(12, 36, 1),
(12, 37, 1),
(12, 38, 1),
(12, 39, 1),
(12, 45, 1),
(12, 46, 1),
(12, 47, 1),
(12, 48, 1),
(12, 55, 1),
(12, 58, 1),
(12, 4, 1),
(12, 5, 1),
(12, 6, 1),
(12, 7, 1),
(12, 8, 1),
(12, 9, 1),
(12, 10, 1),
(12, 11, 1),
(12, 12, 1),
(12, 49, 1),
(12, 57, 1),
(12, 52, 1),
(12, 53, 1),
(12, 29, 1),
(12, 30, 1),
(12, 31, 1),
(12, 32, 1),
(12, 33, 1),
(12, 34, 1),
(12, 35, 1),
(12, 18, 1),
(12, 19, 1),
(12, 20, 1),
(12, 21, 1),
(12, 22, 1),
(12, 23, 1),
(12, 24, 1),
(12, 25, 1),
(12, 26, 1),
(12, 27, 1),
(12, 56, 1),
(10, 1, 1),
(10, 36, 1),
(10, 37, 1),
(10, 38, 1),
(10, 39, 1),
(10, 45, 1),
(10, 46, 1),
(10, 47, 1),
(10, 48, 1),
(10, 55, 1),
(10, 58, 1),
(10, 4, 1),
(10, 5, 1),
(10, 6, 1),
(10, 7, 1),
(10, 8, 1),
(10, 9, 1),
(10, 10, 1),
(10, 11, 1),
(10, 12, 1),
(10, 49, 1),
(10, 57, 1),
(10, 52, 1),
(10, 53, 1),
(10, 29, 1),
(10, 30, 1),
(10, 31, 1),
(10, 32, 1),
(10, 33, 1),
(10, 34, 1),
(10, 35, 1),
(10, 18, 1),
(10, 19, 1),
(10, 20, 1),
(10, 21, 1),
(10, 22, 1),
(10, 23, 1),
(10, 24, 1),
(10, 25, 1),
(10, 26, 1),
(10, 27, 1),
(10, 56, 1),
(11, 1, 2),
(11, 36, 2),
(11, 37, 2),
(11, 38, 2),
(11, 39, 2),
(11, 45, 2),
(11, 46, 2),
(11, 47, 2),
(11, 48, 2),
(11, 55, 2),
(11, 58, 2),
(11, 4, 2),
(11, 5, 2),
(11, 6, 2),
(11, 7, 2),
(11, 8, 2),
(11, 9, 2),
(11, 10, 2),
(11, 11, 2),
(11, 12, 2),
(11, 49, 2),
(11, 57, 2),
(11, 52, 2),
(11, 53, 2),
(11, 29, 2),
(11, 30, 2),
(11, 31, 2),
(11, 32, 2),
(11, 33, 2),
(11, 34, 2),
(11, 35, 2),
(11, 18, 2),
(11, 19, 2),
(11, 20, 2),
(11, 21, 2),
(11, 22, 2),
(11, 23, 2),
(11, 24, 2),
(11, 25, 2),
(11, 26, 2),
(11, 27, 2),
(11, 56, 2),
(6, 1, 1),
(6, 36, 1),
(6, 37, 1),
(6, 38, 1),
(6, 39, 1),
(6, 45, 1),
(6, 46, 1),
(6, 47, 1),
(6, 48, 1),
(6, 55, 1),
(6, 58, 1),
(6, 4, 1),
(6, 5, 1),
(6, 6, 1),
(6, 7, 1),
(6, 8, 1),
(6, 9, 1),
(6, 10, 1),
(6, 11, 1),
(6, 12, 1),
(6, 49, 1),
(6, 57, 1),
(6, 52, 1),
(6, 53, 1),
(6, 29, 1),
(6, 30, 1),
(6, 31, 1),
(6, 32, 1),
(6, 33, 1),
(6, 34, 1),
(6, 35, 1),
(6, 18, 1),
(6, 19, 1),
(6, 20, 1),
(6, 21, 1),
(6, 22, 1),
(6, 23, 1),
(6, 24, 1),
(6, 25, 1),
(6, 26, 1),
(6, 27, 1),
(6, 56, 1),
(7, 1, 2),
(7, 36, 2),
(7, 37, 2),
(7, 38, 2),
(7, 39, 2),
(7, 45, 2),
(7, 46, 2),
(7, 47, 2),
(7, 48, 2),
(7, 55, 2),
(7, 58, 2),
(7, 4, 2),
(7, 5, 2),
(7, 6, 2),
(7, 7, 2),
(7, 8, 2),
(7, 9, 2),
(7, 10, 2),
(7, 11, 2),
(7, 12, 2),
(7, 49, 2),
(7, 57, 2),
(7, 52, 2),
(7, 53, 2),
(7, 29, 2),
(7, 30, 2),
(7, 31, 2),
(7, 32, 2),
(7, 33, 2),
(7, 34, 2),
(7, 35, 2),
(7, 18, 2),
(7, 19, 2),
(7, 20, 2),
(7, 21, 2),
(7, 22, 2),
(7, 23, 2),
(7, 24, 2),
(7, 25, 2),
(7, 26, 2),
(7, 27, 2),
(7, 56, 2),
(16, 1, 1),
(16, 36, 1),
(16, 37, 1),
(16, 38, 1),
(16, 39, 1),
(16, 45, 1),
(16, 46, 1),
(16, 47, 1),
(16, 48, 1),
(16, 55, 1),
(16, 58, 1),
(16, 4, 1),
(16, 5, 1),
(16, 6, 1),
(16, 7, 1),
(16, 8, 1),
(16, 9, 1),
(16, 10, 1),
(16, 11, 1),
(16, 12, 1),
(16, 49, 1),
(16, 57, 1),
(16, 52, 1),
(16, 53, 1),
(16, 29, 1),
(16, 30, 1),
(16, 31, 1),
(16, 32, 1),
(16, 33, 1),
(16, 34, 1),
(16, 35, 1),
(16, 18, 1),
(16, 19, 1),
(16, 20, 1),
(16, 21, 1),
(16, 22, 1),
(16, 23, 1),
(16, 24, 1),
(16, 25, 1),
(16, 26, 1),
(16, 27, 1),
(16, 56, 1),
(1, 4, 1),
(2, 4, 2),
(27, 1, 1),
(27, 36, 1),
(27, 37, 1),
(27, 38, 1),
(27, 39, 1),
(27, 45, 1),
(27, 46, 1),
(27, 47, 1),
(27, 48, 1),
(27, 55, 1),
(27, 58, 1),
(27, 4, 1),
(27, 5, 1),
(27, 6, 1),
(27, 7, 1),
(27, 8, 1),
(27, 9, 1),
(27, 10, 1),
(27, 11, 1),
(27, 12, 1),
(27, 49, 1),
(27, 57, 1),
(27, 52, 1),
(27, 53, 1),
(27, 29, 1),
(27, 30, 1),
(27, 31, 1),
(27, 32, 1),
(27, 33, 1),
(27, 34, 1),
(27, 35, 1),
(27, 18, 1),
(27, 19, 1),
(27, 20, 1),
(27, 21, 1),
(27, 22, 1),
(27, 23, 1),
(27, 24, 1),
(27, 25, 1),
(27, 26, 1),
(27, 27, 1),
(27, 56, 1),
(25, 1, 1),
(25, 36, 1),
(25, 37, 1),
(25, 38, 1),
(25, 39, 1),
(25, 45, 1),
(25, 46, 1),
(25, 47, 1),
(25, 48, 1),
(25, 55, 1),
(25, 58, 1),
(25, 4, 1),
(25, 5, 1),
(25, 6, 1),
(25, 7, 1),
(25, 8, 1),
(25, 9, 1),
(25, 10, 1),
(25, 11, 1),
(25, 12, 1),
(25, 49, 1),
(25, 57, 1),
(25, 52, 1),
(25, 53, 1),
(25, 29, 1),
(25, 30, 1),
(25, 31, 1),
(25, 32, 1),
(25, 33, 1),
(25, 34, 1),
(25, 35, 1),
(25, 18, 1),
(25, 19, 1),
(25, 20, 1),
(25, 21, 1),
(25, 22, 1),
(25, 23, 1),
(25, 24, 1),
(25, 25, 1),
(25, 26, 1),
(25, 27, 1),
(25, 56, 1),
(26, 1, 1),
(26, 36, 1),
(26, 37, 1),
(26, 38, 1),
(26, 39, 1),
(26, 45, 1),
(26, 46, 1),
(26, 47, 1),
(26, 48, 1),
(26, 55, 1),
(26, 58, 1),
(26, 4, 1),
(26, 5, 1),
(26, 6, 1),
(26, 7, 1),
(26, 8, 1),
(26, 9, 1),
(26, 10, 1),
(26, 11, 1),
(26, 12, 1),
(26, 49, 1),
(26, 57, 1),
(26, 52, 1),
(26, 53, 1),
(26, 29, 1),
(26, 30, 1),
(26, 31, 1),
(26, 32, 1),
(26, 33, 1),
(26, 34, 1),
(26, 35, 1),
(26, 18, 1),
(26, 19, 1),
(26, 20, 1),
(26, 21, 1),
(26, 22, 1),
(26, 23, 1),
(26, 24, 1),
(26, 25, 1),
(26, 26, 1),
(26, 27, 1),
(26, 56, 1),
(19, 1, 1),
(19, 36, 1),
(19, 37, 1),
(19, 38, 1),
(19, 39, 1),
(19, 45, 1),
(19, 46, 1),
(19, 47, 1),
(19, 48, 1),
(19, 55, 1),
(19, 58, 1),
(19, 4, 1),
(19, 5, 1),
(19, 6, 1),
(19, 7, 1),
(19, 8, 1),
(19, 9, 1),
(19, 10, 1),
(19, 11, 1),
(19, 12, 1),
(19, 49, 1),
(19, 57, 1),
(19, 52, 1),
(19, 53, 1),
(19, 29, 1),
(19, 30, 1),
(19, 31, 1),
(19, 32, 1),
(19, 33, 1),
(19, 34, 1),
(19, 35, 1),
(19, 18, 1),
(19, 19, 1),
(19, 20, 1),
(19, 21, 1),
(19, 22, 1),
(19, 23, 1),
(19, 24, 1),
(19, 25, 1),
(19, 26, 1),
(19, 27, 1),
(19, 56, 1),
(20, 1, 2),
(20, 36, 2),
(20, 37, 2),
(20, 38, 2),
(20, 39, 2),
(20, 45, 2),
(20, 46, 2),
(20, 47, 2),
(20, 48, 2),
(20, 55, 2),
(20, 58, 2),
(20, 4, 2),
(20, 5, 2),
(20, 6, 2),
(20, 7, 2),
(20, 8, 2),
(20, 9, 2),
(20, 10, 2),
(20, 11, 2),
(20, 12, 2),
(20, 49, 2),
(20, 57, 2),
(20, 52, 2),
(20, 53, 2),
(20, 29, 2),
(20, 30, 2),
(20, 31, 2),
(20, 32, 2),
(20, 33, 2),
(20, 34, 2),
(20, 35, 2),
(20, 18, 2),
(20, 19, 2),
(20, 20, 2),
(20, 21, 2),
(20, 22, 2),
(20, 23, 2),
(20, 24, 2),
(20, 25, 2),
(20, 26, 2),
(20, 27, 2),
(20, 56, 2),
(21, 1, 1),
(21, 36, 1),
(21, 37, 1),
(21, 38, 1),
(21, 39, 1),
(21, 45, 1),
(21, 46, 1),
(21, 47, 1),
(21, 48, 1),
(21, 55, 1),
(21, 58, 1),
(21, 4, 1),
(21, 5, 1),
(21, 6, 1),
(21, 7, 1),
(21, 8, 1),
(21, 9, 1),
(21, 10, 1),
(21, 11, 1),
(21, 12, 1),
(21, 49, 1),
(21, 57, 1),
(21, 52, 1),
(21, 53, 1),
(21, 29, 1),
(21, 30, 1),
(21, 31, 1),
(21, 32, 1),
(21, 33, 1),
(21, 34, 1),
(21, 35, 1),
(21, 18, 1),
(21, 19, 1),
(21, 20, 1),
(21, 21, 1),
(21, 22, 1),
(21, 23, 1),
(21, 24, 1),
(21, 25, 1),
(21, 26, 1),
(21, 27, 1),
(21, 56, 1),
(22, 1, 2),
(22, 36, 2),
(22, 37, 2),
(22, 38, 2),
(22, 39, 2),
(22, 45, 2),
(22, 46, 2),
(22, 47, 2),
(22, 48, 2),
(22, 55, 2),
(22, 58, 2),
(22, 4, 2),
(22, 5, 2),
(22, 6, 2),
(22, 7, 2),
(22, 8, 2),
(22, 9, 2),
(22, 10, 2),
(22, 11, 2),
(22, 12, 2),
(22, 49, 2),
(22, 57, 2),
(22, 52, 2),
(22, 53, 2),
(22, 29, 2),
(22, 30, 2),
(22, 31, 2),
(22, 32, 2),
(22, 33, 2),
(22, 34, 2),
(22, 35, 2),
(22, 18, 2),
(22, 19, 2),
(22, 20, 2),
(22, 21, 2),
(22, 22, 2),
(22, 23, 2),
(22, 24, 2),
(22, 25, 2),
(22, 26, 2),
(22, 27, 2),
(22, 56, 2),
(23, 1, 3),
(23, 36, 3),
(23, 37, 3),
(23, 38, 3),
(23, 39, 3),
(23, 45, 3),
(23, 46, 3),
(23, 47, 3),
(23, 48, 3),
(23, 55, 3),
(23, 58, 3),
(23, 4, 3),
(23, 5, 3),
(23, 6, 3),
(23, 7, 3),
(23, 8, 3),
(23, 9, 3),
(23, 10, 3),
(23, 11, 3),
(23, 12, 3),
(23, 49, 3),
(23, 57, 3),
(23, 52, 3),
(23, 53, 3),
(23, 29, 3),
(23, 30, 3),
(23, 31, 3),
(23, 32, 3),
(23, 33, 3),
(23, 34, 3),
(23, 35, 3),
(23, 18, 3),
(23, 19, 3),
(23, 20, 3),
(23, 21, 3),
(23, 22, 3),
(23, 23, 3),
(23, 24, 3),
(23, 25, 3),
(23, 26, 3),
(23, 27, 3),
(23, 56, 3),
(24, 1, 4),
(24, 36, 4),
(24, 37, 4),
(24, 38, 4),
(24, 39, 4),
(24, 45, 4),
(24, 46, 4),
(24, 47, 4),
(24, 48, 4),
(24, 55, 4),
(24, 58, 4),
(24, 4, 4),
(24, 5, 4),
(24, 6, 4),
(24, 7, 4),
(24, 8, 4),
(24, 9, 4),
(24, 10, 4),
(24, 11, 4),
(24, 12, 4),
(24, 49, 4),
(24, 57, 4),
(24, 52, 4),
(24, 53, 4),
(24, 29, 4),
(24, 30, 4),
(24, 31, 4),
(24, 32, 4),
(24, 33, 4),
(24, 34, 4),
(24, 35, 4),
(24, 18, 4),
(24, 19, 4),
(24, 20, 4),
(24, 21, 4),
(24, 22, 4),
(24, 23, 4),
(24, 24, 4),
(24, 25, 4),
(24, 26, 4),
(24, 27, 4),
(24, 56, 4),
(13, 70, 1),
(13, 86, 1),
(13, 65, 1),
(13, 79, 1),
(13, 60, 1),
(13, 71, 1),
(13, 72, 1),
(13, 63, 1),
(13, 68, 1),
(13, 67, 1),
(13, 80, 1),
(13, 62, 1),
(13, 87, 1),
(13, 85, 1),
(13, 73, 1),
(13, 83, 1),
(13, 66, 1),
(13, 59, 1),
(15, 70, 1),
(15, 86, 1),
(15, 65, 1),
(15, 79, 1),
(15, 60, 1),
(15, 71, 1),
(15, 72, 1),
(15, 63, 1),
(15, 68, 1),
(15, 67, 1),
(15, 80, 1),
(15, 62, 1),
(15, 87, 1),
(15, 85, 1),
(15, 73, 1),
(15, 83, 1),
(15, 66, 1),
(15, 59, 1),
(18, 70, 1),
(18, 86, 1),
(18, 65, 1),
(18, 79, 1),
(18, 60, 1),
(18, 71, 1),
(18, 72, 1),
(18, 63, 1),
(18, 68, 1),
(18, 67, 1),
(18, 80, 1),
(18, 62, 1),
(18, 87, 1),
(18, 85, 1),
(18, 73, 1),
(18, 83, 1),
(18, 66, 1),
(18, 59, 1),
(8, 70, 1),
(8, 86, 1),
(8, 65, 1),
(8, 79, 1),
(8, 60, 1),
(8, 71, 1),
(8, 72, 1),
(8, 63, 1),
(8, 68, 1),
(8, 67, 1),
(8, 80, 1),
(8, 62, 1),
(8, 87, 1),
(8, 85, 1),
(8, 73, 1),
(8, 83, 1),
(8, 66, 1),
(8, 59, 1),
(9, 70, 2),
(9, 86, 2),
(9, 65, 2),
(9, 79, 2),
(9, 60, 2),
(9, 71, 2),
(9, 72, 2),
(9, 63, 2),
(9, 68, 2),
(9, 67, 2),
(9, 80, 2),
(9, 62, 2),
(9, 87, 2),
(9, 85, 2),
(9, 73, 2),
(9, 83, 2),
(9, 66, 2),
(9, 59, 2),
(5, 70, 1),
(5, 86, 1),
(5, 65, 1),
(5, 79, 1),
(5, 60, 1),
(5, 71, 1),
(5, 72, 1),
(5, 63, 1),
(5, 68, 1),
(5, 67, 1),
(5, 80, 1),
(5, 62, 1),
(5, 87, 1),
(5, 85, 1),
(5, 73, 1),
(5, 83, 1),
(5, 66, 1),
(5, 59, 1),
(17, 70, 1),
(17, 86, 1),
(17, 65, 1),
(17, 79, 1),
(17, 60, 1),
(17, 71, 1),
(17, 72, 1),
(17, 63, 1),
(17, 68, 1),
(17, 67, 1),
(17, 80, 1),
(17, 62, 1),
(17, 87, 1),
(17, 85, 1),
(17, 73, 1),
(17, 83, 1),
(17, 66, 1),
(17, 59, 1),
(14, 70, 1),
(14, 86, 1),
(14, 65, 1),
(14, 79, 1),
(14, 60, 1),
(14, 71, 1),
(14, 72, 1),
(14, 63, 1),
(14, 68, 1),
(14, 67, 1),
(14, 80, 1),
(14, 62, 1),
(14, 87, 1),
(14, 85, 1),
(14, 73, 1),
(14, 83, 1),
(14, 66, 1),
(14, 59, 1),
(12, 70, 1),
(12, 86, 1),
(12, 65, 1),
(12, 79, 1),
(12, 60, 1),
(12, 71, 1),
(12, 72, 1),
(12, 63, 1),
(12, 68, 1),
(12, 67, 1),
(12, 80, 1),
(12, 62, 1),
(12, 87, 1),
(12, 85, 1),
(12, 73, 1),
(12, 83, 1),
(12, 66, 1),
(12, 59, 1),
(10, 70, 1),
(10, 86, 1),
(10, 65, 1),
(10, 79, 1),
(10, 60, 1),
(10, 71, 1),
(10, 72, 1),
(10, 63, 1),
(10, 68, 1),
(10, 67, 1),
(10, 80, 1),
(10, 62, 1),
(10, 87, 1),
(10, 85, 1),
(10, 73, 1),
(10, 83, 1),
(10, 66, 1),
(10, 59, 1),
(11, 70, 2),
(11, 86, 2),
(11, 65, 2),
(11, 79, 2),
(11, 60, 2),
(11, 71, 2),
(11, 72, 2),
(11, 63, 2),
(11, 68, 2),
(11, 67, 2),
(11, 80, 2),
(11, 62, 2),
(11, 87, 2),
(11, 85, 2),
(11, 73, 2),
(11, 83, 2),
(11, 66, 2),
(11, 59, 2),
(6, 70, 1),
(6, 86, 1),
(6, 65, 1),
(6, 79, 1),
(6, 60, 1),
(6, 71, 1),
(6, 72, 1),
(6, 63, 1),
(6, 68, 1),
(6, 67, 1),
(6, 80, 1),
(6, 62, 1),
(6, 87, 1),
(6, 85, 1),
(6, 73, 1),
(6, 83, 1),
(6, 66, 1),
(6, 59, 1),
(7, 70, 2),
(7, 86, 2),
(7, 65, 2),
(7, 79, 2),
(7, 60, 2),
(7, 71, 2),
(7, 72, 2),
(7, 63, 2),
(7, 68, 2),
(7, 67, 2),
(7, 80, 2),
(7, 62, 2),
(7, 87, 2),
(7, 85, 2),
(7, 73, 2),
(7, 83, 2),
(7, 66, 2),
(7, 59, 2),
(16, 70, 1),
(16, 86, 1),
(16, 65, 1),
(16, 79, 1),
(16, 60, 1),
(16, 71, 1),
(16, 72, 1),
(16, 63, 1),
(16, 68, 1),
(16, 67, 1),
(16, 80, 1),
(16, 62, 1),
(16, 87, 1),
(16, 85, 1),
(16, 73, 1),
(16, 83, 1),
(16, 66, 1),
(16, 59, 1),
(27, 70, 1),
(27, 86, 1),
(27, 65, 1),
(27, 79, 1),
(27, 60, 1),
(27, 71, 1),
(27, 72, 1),
(27, 63, 1),
(27, 68, 1),
(27, 67, 1),
(27, 80, 1),
(27, 62, 1),
(27, 87, 1),
(27, 85, 1),
(27, 73, 1),
(27, 83, 1),
(27, 66, 1),
(27, 59, 1),
(25, 70, 1),
(25, 86, 1),
(25, 65, 1),
(25, 79, 1),
(25, 60, 1),
(25, 71, 1),
(25, 72, 1),
(25, 63, 1),
(25, 68, 1),
(25, 67, 1),
(25, 80, 1),
(25, 62, 1),
(25, 87, 1),
(25, 85, 1),
(25, 73, 1),
(25, 83, 1),
(25, 66, 1),
(25, 59, 1),
(26, 70, 1),
(26, 86, 1),
(26, 65, 1),
(26, 79, 1),
(26, 60, 1),
(26, 71, 1),
(26, 72, 1),
(26, 63, 1),
(26, 68, 1),
(26, 67, 1),
(26, 80, 1),
(26, 62, 1),
(26, 87, 1),
(26, 85, 1),
(26, 73, 1),
(26, 83, 1),
(26, 66, 1),
(26, 59, 1),
(19, 70, 1),
(19, 86, 1),
(19, 65, 1),
(19, 79, 1),
(19, 60, 1),
(19, 71, 1),
(19, 72, 1),
(19, 63, 1),
(19, 68, 1),
(19, 67, 1),
(19, 80, 1),
(19, 62, 1),
(19, 87, 1),
(19, 85, 1),
(19, 73, 1),
(19, 83, 1),
(19, 66, 1),
(19, 59, 1),
(20, 70, 2),
(20, 86, 2),
(20, 65, 2),
(20, 79, 2),
(20, 60, 2),
(20, 71, 2),
(20, 72, 2),
(20, 63, 2),
(20, 68, 2),
(20, 67, 2),
(20, 80, 2),
(20, 62, 2),
(20, 87, 2),
(20, 85, 2),
(20, 73, 2),
(20, 83, 2),
(20, 66, 2),
(20, 59, 2),
(21, 70, 1),
(21, 86, 1),
(21, 65, 1),
(21, 79, 1),
(21, 60, 1),
(21, 71, 1),
(21, 72, 1),
(21, 63, 1),
(21, 68, 1),
(21, 67, 1),
(21, 80, 1),
(21, 62, 1),
(21, 87, 1),
(21, 85, 1),
(21, 73, 1),
(21, 83, 1),
(21, 66, 1),
(21, 59, 1),
(22, 70, 2),
(22, 86, 2),
(22, 65, 2),
(22, 79, 2),
(22, 60, 2),
(22, 71, 2),
(22, 72, 2),
(22, 63, 2),
(22, 68, 2),
(22, 67, 2),
(22, 80, 2),
(22, 62, 2),
(22, 87, 2),
(22, 85, 2),
(22, 73, 2),
(22, 83, 2),
(22, 66, 2),
(22, 59, 2),
(23, 70, 3),
(23, 86, 3),
(23, 65, 3),
(23, 79, 3),
(23, 60, 3),
(23, 71, 3),
(23, 72, 3),
(23, 63, 3),
(23, 68, 3),
(23, 67, 3),
(23, 80, 3),
(23, 62, 3),
(23, 87, 3),
(23, 85, 3),
(23, 73, 3),
(23, 83, 3),
(23, 66, 3),
(23, 59, 3),
(24, 70, 4),
(24, 86, 4),
(24, 65, 4),
(24, 79, 4),
(24, 60, 4),
(24, 71, 4),
(24, 72, 4),
(24, 63, 4),
(24, 68, 4),
(24, 67, 4),
(24, 80, 4),
(24, 62, 4),
(24, 87, 4),
(24, 85, 4),
(24, 73, 4),
(24, 83, 4),
(24, 66, 4),
(24, 59, 4),
(28, 1, 1),
(28, 4, 1),
(28, 5, 1),
(28, 6, 1),
(28, 7, 1),
(28, 8, 1),
(28, 9, 1),
(28, 10, 1),
(28, 11, 1),
(28, 12, 1),
(28, 18, 1),
(28, 19, 1),
(28, 20, 1),
(28, 21, 1),
(28, 22, 1),
(28, 23, 1),
(28, 24, 1),
(28, 25, 1),
(28, 26, 1),
(28, 27, 1),
(28, 55, 1),
(28, 29, 1),
(28, 30, 1),
(28, 31, 1),
(28, 32, 1),
(28, 33, 1),
(28, 34, 1),
(28, 35, 1),
(28, 56, 1),
(28, 36, 1),
(28, 37, 1),
(28, 38, 1),
(28, 39, 1),
(28, 57, 1),
(28, 58, 1),
(28, 49, 1),
(28, 45, 1),
(28, 46, 1),
(28, 47, 1),
(28, 48, 1),
(28, 52, 1),
(28, 53, 1),
(28, 70, 1),
(28, 86, 1),
(28, 65, 1),
(28, 79, 1),
(28, 60, 1),
(28, 71, 1),
(28, 72, 1),
(28, 63, 1),
(28, 68, 1),
(28, 67, 1),
(28, 80, 1),
(28, 62, 1),
(28, 87, 1),
(28, 85, 1),
(28, 73, 1),
(28, 83, 1),
(28, 66, 1),
(28, 59, 1),
(29, 1, 1),
(29, 36, 1),
(29, 37, 1),
(29, 38, 1),
(29, 39, 1),
(29, 45, 1),
(29, 46, 1),
(29, 47, 1),
(29, 48, 1),
(29, 55, 1),
(29, 58, 1),
(29, 4, 1),
(29, 5, 1),
(29, 6, 1),
(29, 7, 1),
(29, 8, 1),
(29, 9, 1),
(29, 10, 1),
(29, 11, 1),
(29, 12, 1),
(29, 49, 1),
(29, 57, 1),
(29, 70, 1),
(29, 86, 1),
(29, 65, 1),
(29, 79, 1),
(29, 60, 1),
(29, 71, 1),
(29, 72, 1),
(29, 63, 1),
(29, 68, 1),
(29, 67, 1),
(29, 80, 1),
(29, 62, 1),
(29, 87, 1),
(29, 85, 1),
(29, 73, 1),
(29, 83, 1),
(29, 66, 1),
(29, 59, 1),
(29, 52, 1),
(29, 53, 1),
(29, 29, 1),
(29, 30, 1),
(29, 31, 1),
(29, 32, 1),
(29, 33, 1),
(29, 34, 1),
(29, 35, 1),
(29, 18, 1),
(29, 19, 1),
(29, 20, 1),
(29, 21, 1),
(29, 22, 1),
(29, 23, 1),
(29, 24, 1),
(29, 25, 1),
(29, 26, 1),
(29, 27, 1),
(29, 56, 1),
(30, 1, 1),
(30, 36, 1),
(30, 37, 1),
(30, 38, 1),
(30, 39, 1),
(30, 45, 1),
(30, 46, 1),
(30, 47, 1),
(30, 48, 1),
(30, 55, 1),
(30, 58, 1),
(30, 4, 1),
(30, 5, 1),
(30, 6, 1),
(30, 7, 1),
(30, 8, 1),
(30, 9, 1),
(30, 10, 1),
(30, 11, 1),
(30, 12, 1),
(30, 49, 1),
(30, 57, 1),
(30, 70, 1),
(30, 86, 1),
(30, 65, 1),
(30, 79, 1),
(30, 60, 1),
(30, 71, 1),
(30, 72, 1),
(30, 63, 1),
(30, 68, 1),
(30, 67, 1),
(30, 80, 1),
(30, 62, 1),
(30, 87, 1),
(30, 85, 1),
(30, 73, 1),
(30, 83, 1),
(30, 66, 1),
(30, 59, 1),
(30, 52, 1),
(30, 53, 1),
(30, 29, 1),
(30, 30, 1),
(30, 31, 1),
(30, 32, 1),
(30, 33, 1),
(30, 34, 1),
(30, 35, 1),
(30, 18, 1),
(30, 19, 1),
(30, 20, 1),
(30, 21, 1),
(30, 22, 1),
(30, 23, 1),
(30, 24, 1),
(30, 25, 1),
(30, 26, 1),
(30, 27, 1),
(30, 56, 1),
(32, 1, 1),
(32, 36, 1),
(32, 37, 1),
(32, 38, 1),
(32, 39, 1),
(32, 45, 1),
(32, 46, 1),
(32, 47, 1),
(32, 48, 1),
(32, 55, 1),
(32, 58, 1),
(32, 4, 1),
(32, 5, 1),
(32, 6, 1),
(32, 7, 1),
(32, 8, 1),
(32, 9, 1),
(32, 10, 1),
(32, 11, 1),
(32, 12, 1),
(32, 49, 1),
(32, 57, 1),
(32, 70, 1),
(32, 86, 1),
(32, 65, 1),
(32, 79, 1),
(32, 60, 1),
(32, 71, 1),
(32, 72, 1),
(32, 63, 1),
(32, 68, 1),
(32, 67, 1),
(32, 80, 1),
(32, 62, 1),
(32, 87, 1),
(32, 85, 1),
(32, 73, 1),
(32, 83, 1),
(32, 66, 1),
(32, 59, 1),
(32, 52, 1),
(32, 53, 1),
(32, 29, 1),
(32, 30, 1),
(32, 31, 1),
(32, 32, 1),
(32, 33, 1),
(32, 34, 1),
(32, 35, 1),
(32, 18, 1),
(32, 19, 1),
(32, 20, 1),
(32, 21, 1),
(32, 22, 1),
(32, 23, 1),
(32, 24, 1),
(32, 25, 1),
(32, 26, 1),
(32, 27, 1),
(32, 56, 1),
(33, 1, 2),
(33, 36, 2),
(33, 37, 2),
(33, 38, 2),
(33, 39, 2),
(33, 45, 2),
(33, 46, 2),
(33, 47, 2),
(33, 48, 2),
(33, 55, 2),
(33, 58, 2),
(33, 4, 2),
(33, 5, 2),
(33, 6, 2),
(33, 7, 2),
(33, 8, 2),
(33, 9, 2),
(33, 10, 2),
(33, 11, 2),
(33, 12, 2),
(33, 49, 2),
(33, 57, 2),
(33, 70, 2),
(33, 86, 2),
(33, 65, 2),
(33, 79, 2),
(33, 60, 2),
(33, 71, 2),
(33, 72, 2),
(33, 63, 2),
(33, 68, 2),
(33, 67, 2),
(33, 80, 2),
(33, 62, 2),
(33, 87, 2),
(33, 85, 2),
(33, 73, 2),
(33, 83, 2),
(33, 66, 2),
(33, 59, 2),
(33, 52, 2),
(33, 53, 2),
(33, 29, 2),
(33, 30, 2),
(33, 31, 2),
(33, 32, 2),
(33, 33, 2),
(33, 34, 2),
(33, 35, 2),
(33, 18, 2),
(33, 19, 2),
(33, 20, 2),
(33, 21, 2),
(33, 22, 2),
(33, 23, 2),
(33, 24, 2),
(33, 25, 2),
(33, 26, 2),
(33, 27, 2),
(33, 56, 2),
(34, 4, 1),
(34, 5, 1),
(34, 6, 1),
(34, 7, 1),
(34, 8, 1),
(34, 9, 1),
(34, 10, 1),
(34, 11, 1),
(34, 12, 1),
(35, 18, 1),
(35, 19, 1),
(35, 20, 1),
(35, 21, 1),
(35, 22, 1),
(35, 23, 1),
(35, 24, 1),
(35, 25, 1),
(35, 26, 1),
(35, 27, 1),
(35, 29, 1),
(35, 30, 1),
(35, 31, 1),
(35, 32, 1),
(35, 33, 1),
(35, 34, 1),
(35, 35, 1),
(36, 1, 1),
(36, 36, 1),
(36, 37, 1),
(36, 38, 1),
(36, 39, 1),
(36, 45, 1),
(36, 46, 1),
(36, 47, 1),
(36, 48, 1),
(36, 55, 1),
(36, 58, 1),
(36, 4, 2),
(36, 5, 2),
(36, 6, 2),
(36, 7, 2),
(36, 8, 2),
(36, 9, 2),
(36, 10, 2),
(36, 11, 2),
(36, 12, 2),
(36, 49, 1),
(36, 57, 1),
(36, 70, 1),
(36, 86, 1),
(36, 65, 1),
(36, 79, 1),
(36, 60, 1),
(36, 71, 1),
(36, 72, 1),
(36, 63, 1),
(36, 68, 1),
(36, 67, 1),
(36, 80, 1),
(36, 62, 1),
(36, 87, 1),
(36, 85, 1),
(36, 73, 1),
(36, 83, 1),
(36, 66, 1),
(36, 59, 1),
(36, 52, 1),
(36, 53, 1),
(36, 29, 2),
(36, 30, 2),
(36, 31, 2),
(36, 32, 2),
(36, 33, 2),
(36, 34, 2),
(36, 35, 2),
(36, 18, 2),
(36, 19, 2),
(36, 20, 2),
(36, 21, 2),
(36, 22, 2),
(36, 23, 2),
(36, 24, 2),
(36, 25, 2),
(36, 26, 2),
(36, 27, 2),
(36, 56, 1),
(37, 1, 1),
(37, 36, 1),
(37, 37, 1),
(37, 38, 1),
(37, 39, 1),
(37, 45, 1),
(37, 46, 1),
(37, 47, 1),
(37, 48, 1),
(37, 55, 1),
(37, 58, 1),
(37, 4, 1),
(37, 5, 1),
(37, 6, 1),
(37, 7, 1),
(37, 8, 1),
(37, 9, 1),
(37, 10, 1),
(37, 11, 1),
(37, 12, 1),
(37, 49, 1),
(37, 57, 1),
(37, 70, 1),
(37, 86, 1),
(37, 65, 1),
(37, 79, 1),
(37, 60, 1),
(37, 71, 1),
(37, 72, 1),
(37, 63, 1),
(37, 68, 1),
(37, 67, 1),
(37, 80, 1),
(37, 62, 1),
(37, 87, 1),
(37, 85, 1),
(37, 73, 1),
(37, 83, 1),
(37, 66, 1),
(37, 59, 1),
(37, 52, 1),
(37, 53, 1),
(37, 29, 1),
(37, 30, 1),
(37, 31, 1),
(37, 32, 1),
(37, 33, 1),
(37, 34, 1),
(37, 35, 1),
(37, 18, 1),
(37, 19, 1),
(37, 20, 1),
(37, 21, 1),
(37, 22, 1),
(37, 23, 1),
(37, 24, 1),
(37, 25, 1),
(37, 26, 1),
(37, 27, 1),
(37, 56, 1),
(38, 1, 1),
(38, 36, 1),
(38, 37, 1),
(38, 38, 1),
(38, 39, 1),
(38, 45, 1),
(38, 46, 1),
(38, 47, 1),
(38, 48, 1),
(38, 55, 1),
(38, 58, 1),
(38, 4, 1),
(38, 5, 1),
(38, 6, 1),
(38, 7, 1),
(38, 8, 1),
(38, 9, 1),
(38, 10, 1),
(38, 11, 1),
(38, 12, 1),
(38, 49, 1),
(38, 57, 1),
(38, 70, 1),
(38, 86, 1),
(38, 65, 1),
(38, 79, 1),
(38, 60, 1),
(38, 71, 1),
(38, 72, 1),
(38, 63, 1),
(38, 68, 1),
(38, 67, 1),
(38, 80, 1),
(38, 62, 1),
(38, 87, 1),
(38, 85, 1),
(38, 73, 1),
(38, 83, 1),
(38, 66, 1),
(38, 59, 1),
(38, 52, 1),
(38, 53, 1),
(38, 29, 1),
(38, 30, 1),
(38, 31, 1),
(38, 32, 1),
(38, 33, 1),
(38, 34, 1),
(38, 35, 1),
(38, 18, 1),
(38, 19, 1),
(38, 20, 1),
(38, 21, 1),
(38, 22, 1),
(38, 23, 1),
(38, 24, 1),
(38, 25, 1),
(38, 26, 1),
(38, 27, 1),
(38, 56, 1),
(39, 1, 1),
(39, 36, 1),
(39, 37, 1),
(39, 38, 1),
(39, 39, 1),
(39, 45, 1),
(39, 46, 1),
(39, 47, 1),
(39, 48, 1),
(39, 55, 1),
(39, 58, 1),
(39, 4, 1),
(39, 5, 1),
(39, 6, 1),
(39, 7, 1),
(39, 8, 1),
(39, 9, 1),
(39, 10, 1),
(39, 11, 1),
(39, 12, 1),
(39, 49, 1),
(39, 57, 1),
(39, 70, 1),
(39, 86, 1),
(39, 65, 1),
(39, 79, 1),
(39, 60, 1),
(39, 71, 1),
(39, 72, 1),
(39, 63, 1),
(39, 68, 1),
(39, 67, 1),
(39, 80, 1),
(39, 62, 1),
(39, 87, 1),
(39, 85, 1),
(39, 73, 1),
(39, 83, 1),
(39, 66, 1),
(39, 59, 1),
(39, 52, 1),
(39, 53, 1),
(39, 29, 1),
(39, 30, 1),
(39, 31, 1),
(39, 32, 1),
(39, 33, 1),
(39, 34, 1),
(39, 35, 1),
(39, 18, 1),
(39, 19, 1),
(39, 20, 1),
(39, 21, 1),
(39, 22, 1),
(39, 23, 1),
(39, 24, 1),
(39, 25, 1),
(39, 26, 1),
(39, 27, 1),
(39, 56, 1),
(40, 1, 1),
(40, 36, 1),
(40, 37, 1),
(40, 38, 1),
(40, 39, 1),
(40, 45, 1),
(40, 46, 1),
(40, 47, 1),
(40, 48, 1),
(40, 55, 1),
(40, 58, 1),
(40, 4, 1),
(40, 5, 1),
(40, 6, 1),
(40, 7, 1),
(40, 8, 1),
(40, 9, 1),
(40, 10, 1),
(40, 11, 1),
(40, 12, 1),
(40, 49, 1),
(40, 57, 1),
(40, 70, 1),
(40, 86, 1),
(40, 65, 1),
(40, 79, 1),
(40, 60, 1),
(40, 71, 1),
(40, 72, 1),
(40, 63, 1),
(40, 68, 1),
(40, 67, 1),
(40, 80, 1),
(40, 62, 1),
(40, 87, 1),
(40, 85, 1),
(40, 73, 1),
(40, 83, 1),
(40, 66, 1),
(40, 59, 1),
(40, 52, 1),
(40, 53, 1),
(40, 29, 1),
(40, 30, 1),
(40, 31, 1),
(40, 32, 1),
(40, 33, 1),
(40, 34, 1),
(40, 35, 1),
(40, 18, 1),
(40, 19, 1),
(40, 20, 1),
(40, 21, 1),
(40, 22, 1),
(40, 23, 1),
(40, 24, 1),
(40, 25, 1),
(40, 26, 1),
(40, 27, 1),
(40, 56, 1),
(41, 1, 2),
(41, 36, 2),
(41, 37, 2),
(41, 38, 2),
(41, 39, 2),
(41, 45, 2),
(41, 46, 2),
(41, 47, 2),
(41, 48, 2),
(41, 55, 2),
(41, 58, 2),
(41, 4, 2),
(41, 5, 2),
(41, 6, 2),
(41, 7, 2),
(41, 8, 2),
(41, 9, 2),
(41, 10, 2),
(41, 11, 2),
(41, 12, 2),
(41, 49, 2),
(41, 57, 2),
(41, 70, 2),
(41, 86, 2),
(41, 65, 2),
(41, 79, 2),
(41, 60, 2),
(41, 71, 2),
(41, 72, 2),
(41, 63, 2),
(41, 68, 2),
(41, 67, 2),
(41, 80, 2),
(41, 62, 2),
(41, 87, 2),
(41, 85, 2),
(41, 73, 2),
(41, 83, 2),
(41, 66, 2),
(41, 59, 2),
(41, 52, 2),
(41, 53, 2),
(41, 29, 2),
(41, 30, 2),
(41, 31, 2),
(41, 32, 2),
(41, 33, 2),
(41, 34, 2),
(41, 35, 2),
(41, 18, 2),
(41, 19, 2),
(41, 20, 2),
(41, 21, 2),
(41, 22, 2),
(41, 23, 2),
(41, 24, 2),
(41, 25, 2),
(41, 26, 2),
(41, 27, 2),
(41, 56, 2),
(42, 1, 1),
(42, 36, 1),
(42, 37, 1),
(42, 38, 1),
(42, 39, 1),
(42, 45, 1),
(42, 46, 1),
(42, 47, 1),
(42, 48, 1),
(42, 55, 1),
(42, 58, 1),
(42, 4, 1),
(42, 5, 1),
(42, 6, 1),
(42, 7, 1),
(42, 8, 1),
(42, 9, 1),
(42, 10, 1),
(42, 11, 1),
(42, 12, 1),
(42, 49, 1),
(42, 57, 1),
(42, 70, 1),
(42, 86, 1),
(42, 65, 1),
(42, 79, 1),
(42, 60, 1),
(42, 71, 1),
(42, 72, 1),
(42, 63, 1),
(42, 68, 1),
(42, 67, 1),
(42, 80, 1),
(42, 62, 1),
(42, 87, 1),
(42, 85, 1),
(42, 73, 1),
(42, 83, 1),
(42, 66, 1),
(42, 59, 1),
(42, 52, 1),
(42, 53, 1),
(42, 29, 1),
(42, 30, 1),
(42, 31, 1),
(42, 32, 1),
(42, 33, 1),
(42, 34, 1),
(42, 35, 1),
(42, 18, 1),
(42, 19, 1),
(42, 20, 1),
(42, 21, 1),
(42, 22, 1),
(42, 23, 1),
(42, 24, 1),
(42, 25, 1),
(42, 26, 1),
(42, 27, 1),
(42, 56, 1),
(43, 1, 2),
(43, 36, 2),
(43, 37, 2),
(43, 38, 2),
(43, 39, 2),
(43, 45, 2),
(43, 46, 2),
(43, 47, 2),
(43, 48, 2),
(43, 55, 2),
(43, 58, 2),
(43, 4, 2),
(43, 5, 2),
(43, 6, 2),
(43, 7, 2),
(43, 8, 2),
(43, 9, 2),
(43, 10, 2),
(43, 11, 2),
(43, 12, 2),
(43, 49, 2),
(43, 57, 2),
(43, 70, 2),
(43, 86, 2),
(43, 65, 2),
(43, 79, 2),
(43, 60, 2),
(43, 71, 2),
(43, 72, 2),
(43, 63, 2),
(43, 68, 2),
(43, 67, 2),
(43, 80, 2),
(43, 62, 2),
(43, 87, 2),
(43, 85, 2),
(43, 73, 2),
(43, 83, 2),
(43, 66, 2),
(43, 59, 2),
(43, 52, 2),
(43, 53, 2),
(43, 29, 2),
(43, 30, 2),
(43, 31, 2),
(43, 32, 2),
(43, 33, 2),
(43, 34, 2),
(43, 35, 2),
(43, 18, 2),
(43, 19, 2),
(43, 20, 2),
(43, 21, 2),
(43, 22, 2),
(43, 23, 2),
(43, 24, 2),
(43, 25, 2),
(43, 26, 2),
(43, 27, 2),
(43, 56, 2),
(44, 1, 1),
(44, 36, 1),
(44, 37, 1),
(44, 38, 1),
(44, 39, 1),
(44, 45, 1),
(44, 46, 1),
(44, 47, 1),
(44, 48, 1),
(44, 55, 1),
(44, 58, 1),
(44, 4, 1),
(44, 5, 1),
(44, 6, 1),
(44, 7, 1),
(44, 8, 1),
(44, 9, 1),
(44, 10, 1),
(44, 11, 1),
(44, 12, 1),
(44, 49, 1),
(44, 57, 1),
(44, 70, 1),
(44, 86, 1),
(44, 65, 1),
(44, 79, 1),
(44, 60, 1),
(44, 71, 1),
(44, 72, 1),
(44, 63, 1),
(44, 68, 1),
(44, 67, 1),
(44, 80, 1),
(44, 62, 1),
(44, 87, 1),
(44, 85, 1),
(44, 73, 1),
(44, 83, 1),
(44, 66, 1),
(44, 59, 1),
(44, 52, 1),
(44, 53, 1),
(44, 29, 1),
(44, 30, 1),
(44, 31, 1),
(44, 32, 1),
(44, 33, 1),
(44, 34, 1),
(44, 35, 1),
(44, 18, 1),
(44, 19, 1),
(44, 20, 1),
(44, 21, 1),
(44, 22, 1),
(44, 23, 1),
(44, 24, 1),
(44, 25, 1),
(44, 26, 1),
(44, 27, 1),
(44, 56, 1),
(48, 4, 1),
(48, 5, 1),
(48, 6, 1),
(48, 7, 1),
(48, 8, 1),
(48, 9, 1),
(48, 10, 1),
(48, 11, 1),
(48, 12, 1),
(48, 70, 1),
(48, 86, 1),
(48, 65, 1),
(48, 79, 1),
(48, 60, 1),
(48, 71, 1),
(48, 72, 1),
(48, 63, 1),
(48, 68, 1),
(48, 67, 1),
(48, 80, 1),
(48, 62, 1),
(48, 87, 1),
(48, 85, 1),
(48, 73, 1),
(48, 83, 1),
(48, 66, 1),
(48, 59, 1),
(52, 70, 1),
(52, 86, 1),
(52, 65, 1),
(52, 79, 1),
(52, 60, 1),
(52, 71, 1),
(52, 72, 1),
(52, 63, 1),
(52, 68, 1),
(52, 67, 1),
(52, 80, 1),
(52, 62, 1),
(52, 87, 1),
(52, 85, 1),
(52, 73, 1),
(52, 83, 1),
(52, 66, 1),
(52, 59, 1),
(53, 1, 1),
(53, 4, 1),
(53, 5, 1),
(53, 6, 1),
(53, 7, 1),
(53, 8, 1),
(53, 9, 1),
(53, 10, 1),
(53, 11, 1),
(53, 12, 1),
(53, 18, 1),
(53, 19, 1),
(53, 20, 1),
(53, 21, 1),
(53, 22, 1),
(53, 23, 1),
(53, 24, 1),
(53, 25, 1),
(53, 26, 1),
(53, 27, 1),
(53, 55, 1),
(53, 29, 1),
(53, 30, 1),
(53, 31, 1),
(53, 32, 1),
(53, 33, 1),
(53, 34, 1),
(53, 35, 1),
(53, 56, 1),
(53, 36, 1),
(53, 37, 1),
(53, 38, 1),
(53, 39, 1),
(53, 57, 1),
(53, 58, 1),
(53, 49, 1),
(53, 45, 1),
(53, 46, 1),
(53, 47, 1),
(53, 48, 1),
(53, 52, 1),
(53, 53, 1),
(53, 70, 1),
(53, 86, 1),
(53, 65, 1),
(53, 79, 1),
(53, 60, 1),
(53, 71, 1),
(53, 72, 1),
(53, 63, 1),
(53, 68, 1),
(53, 67, 1),
(53, 80, 1),
(53, 62, 1),
(53, 87, 1),
(53, 85, 1),
(53, 73, 1),
(53, 83, 1),
(53, 66, 1),
(53, 59, 1),
(55, 1, 1),
(55, 4, 1),
(55, 5, 1),
(55, 6, 1),
(55, 7, 1),
(55, 8, 1),
(55, 9, 1),
(55, 10, 1),
(55, 11, 1),
(55, 12, 1),
(55, 18, 1),
(55, 19, 1),
(55, 20, 1),
(55, 21, 1),
(55, 22, 1),
(55, 23, 1),
(55, 24, 1),
(55, 25, 1),
(55, 26, 1),
(55, 27, 1),
(55, 55, 1),
(55, 29, 1),
(55, 30, 1),
(55, 31, 1),
(55, 32, 1),
(55, 33, 1),
(55, 34, 1),
(55, 35, 1),
(55, 56, 1),
(55, 36, 1),
(55, 37, 1),
(55, 38, 1),
(55, 39, 1),
(55, 57, 1),
(55, 58, 1),
(55, 49, 1),
(55, 45, 1),
(55, 46, 1),
(55, 47, 1),
(55, 48, 1),
(55, 52, 1),
(55, 53, 1),
(55, 70, 1),
(55, 86, 1),
(55, 65, 1),
(55, 79, 1),
(55, 60, 1),
(55, 71, 1),
(55, 72, 1),
(55, 63, 1),
(55, 68, 1),
(55, 67, 1),
(55, 80, 1),
(55, 62, 1),
(55, 87, 1),
(55, 85, 1),
(55, 73, 1),
(55, 83, 1),
(55, 66, 1),
(55, 59, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_comment`
--

DROP TABLE IF EXISTS `nv4_vi_comment`;
CREATE TABLE IF NOT EXISTS `nv4_vi_comment` (
`cid` mediumint(8) unsigned NOT NULL,
  `module` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` int(11) NOT NULL DEFAULT '0',
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `pid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_time` int(11) unsigned NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `post_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `likes` mediumint(9) NOT NULL DEFAULT '0',
  `dislikes` mediumint(9) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_contact_department`
--

DROP TABLE IF EXISTS `nv4_vi_contact_department`;
CREATE TABLE IF NOT EXISTS `nv4_vi_contact_department` (
`id` smallint(5) unsigned NOT NULL,
  `full_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `others` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cats` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `admins` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `act` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` smallint(5) NOT NULL,
  `is_default` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_contact_department`
--

INSERT INTO `nv4_vi_contact_department` (`id`, `full_name`, `alias`, `image`, `phone`, `fax`, `email`, `address`, `note`, `others`, `cats`, `admins`, `act`, `weight`, `is_default`) VALUES
(1, 'Phòng Chăm sóc khách hàng', 'Cham-soc-khach-hang', '', '(08) 38.000.000[+84838000000]', '08 38.000.001', 'customer@mysite.com', '', 'Bộ phận tiếp nhận và giải quyết các yêu cầu, đề nghị, ý kiến liên quan đến hoạt động chính của doanh nghiệp', '{"viber":"myViber","skype":"mySkype","yahoo":"myYahoo"}', 'Tư vấn|Khiếu nại, phản ánh|Đề nghị hợp tác', '1/1/1/0;', 1, 1, 1),
(2, 'Phòng Kỹ thuật', 'Ky-thuat', '', '(08) 38.000.002[+84838000002]', '08 38.000.003', 'technical@mysite.com', '', 'Bộ phận tiếp nhận và giải quyết các câu hỏi liên quan đến kỹ thuật', '{"viber":"myViber2","skype":"mySkype2","yahoo":"myYahoo2"}', 'Thông báo lỗi|Góp ý cải tiến', '1/1/1/0;', 1, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_contact_reply`
--

DROP TABLE IF EXISTS `nv4_vi_contact_reply`;
CREATE TABLE IF NOT EXISTS `nv4_vi_contact_reply` (
`rid` mediumint(8) unsigned NOT NULL,
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `reply_content` text COLLATE utf8mb4_unicode_ci,
  `reply_time` int(11) unsigned NOT NULL DEFAULT '0',
  `reply_aid` mediumint(8) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_contact_send`
--

DROP TABLE IF EXISTS `nv4_vi_contact_send`;
CREATE TABLE IF NOT EXISTS `nv4_vi_contact_send` (
`id` mediumint(8) unsigned NOT NULL,
  `cid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `cat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `send_time` int(11) unsigned NOT NULL DEFAULT '0',
  `sender_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `sender_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sender_ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_reply` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_freecontent_blocks`
--

DROP TABLE IF EXISTS `nv4_vi_freecontent_blocks`;
CREATE TABLE IF NOT EXISTS `nv4_vi_freecontent_blocks` (
`bid` mediumint(8) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_freecontent_blocks`
--

INSERT INTO `nv4_vi_freecontent_blocks` (`bid`, `title`, `description`) VALUES
(1, 'Sản phẩm', 'Sản phẩm của công ty cổ phần phát triển nguồn mở Việt Nam - VINADES.,JSC');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_freecontent_rows`
--

DROP TABLE IF EXISTS `nv4_vi_freecontent_rows`;
CREATE TABLE IF NOT EXISTS `nv4_vi_freecontent_rows` (
`id` mediumint(8) unsigned NOT NULL,
  `bid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `target` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '_blank|_self|_parent|_top',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `start_time` int(11) NOT NULL DEFAULT '0',
  `end_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0: In-Active, 1: Active, 2: Expired'
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_freecontent_rows`
--

INSERT INTO `nv4_vi_freecontent_rows` (`id`, `bid`, `title`, `description`, `link`, `target`, `image`, `start_time`, `end_time`, `status`) VALUES
(1, 1, 'Hệ quản trị nội dung NukeViet', '<ul>\n	<li>Giải thưởng Nhân tài đất Việt 2011, 10.000+ website đang sử dụng</li>\n	<li>Được Bộ GD&amp;ĐT khuyến khích sử dụng trong các cơ sở giáo dục</li>\n	<li>Bộ TT&amp;TT quy định ưu tiên sử dụng trong cơ quan nhà nước</li>\n</ul>', 'http://vinades.vn/vi/san-pham/nukeviet/', '_blank', 'nukeviet.jpg', 1453277351, 0, 1),
(2, 1, 'Cổng thông tin doanh nghiệp', '<ul>\n	<li>Tích hợp bán hàng trực tuyến</li>\n	<li>Tích hợp các nghiệp vụ quản lý (quản lý khách hàng, quản lý nhân sự, quản lý tài liệu)</li>\n</ul>', 'http://vinades.vn/vi/san-pham/Cong-thong-tin-doanh-nghiep-NukeViet-portal/', '_blank', 'nukeviet-portal.jpg', 1453277351, 0, 1),
(3, 1, 'Cổng thông tin Phòng giáo dục, Sở giáo dục', '<ul>\n	<li>Tích hợp chung website hàng trăm trường</li>\n	<li>Tích hợp các ứng dụng trực tuyến (Tra điểm SMS, Tra cứu văn bằng, Học bạ điện tử ...)</li>\n</ul>', 'http://vinades.vn/vi/san-pham/Cong-thong-tin-giao-duc-NukeViet-Edugate/', '_blank', 'nukeviet-edu.jpg', 1453277351, 0, 1),
(4, 1, 'Tòa soạn báo điện tử chuyên nghiệp', '<ul>\n	<li>Bảo mật đa tầng, phân quyền linh hoạt</li>\n	<li>Hệ thống bóc tin tự động, đăng bài tự động, cùng nhiều chức năng tiên tiến khác...</li>\n</ul>', 'http://vinades.vn/vi/san-pham/Toa-soan-bao-dien-tu/', '_blank', 'nukeviet-toasoan.jpg', 1453277351, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_menu`
--

DROP TABLE IF EXISTS `nv4_vi_menu`;
CREATE TABLE IF NOT EXISTS `nv4_vi_menu` (
`id` smallint(5) unsigned NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_menu`
--

INSERT INTO `nv4_vi_menu` (`id`, `title`) VALUES
(1, 'Top Menu'),
(2, 'MenuDT'),
(3, 'trogiup');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_menu_rows`
--

DROP TABLE IF EXISTS `nv4_vi_menu_rows`;
CREATE TABLE IF NOT EXISTS `nv4_vi_menu_rows` (
`id` mediumint(5) NOT NULL,
  `parentid` mediumint(5) unsigned NOT NULL,
  `mid` smallint(5) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` int(11) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `lev` int(11) NOT NULL DEFAULT '0',
  `subitem` text COLLATE utf8mb4_unicode_ci,
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `module_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `op` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `target` tinyint(4) DEFAULT '0',
  `css` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `active_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_menu_rows`
--

INSERT INTO `nv4_vi_menu_rows` (`id`, `parentid`, `mid`, `title`, `link`, `icon`, `note`, `weight`, `sort`, `lev`, `subitem`, `groups_view`, `module_name`, `op`, `target`, `css`, `active_type`, `status`) VALUES
(1, 0, 1, 'Giới thiệu', '/index.php?language=vi&nv=about', '', '', 1, 1, 0, '2,3,4,5,6,7,8,9', '6', 'about', '', 1, '', 1, 1),
(2, 1, 1, 'Giới thiệu về NukeViet', '/index.php?language=vi&nv=about&op=gioi-thieu-ve-nukeviet.html', '', '', 1, 2, 1, '', '6', 'about', 'gioi-thieu-ve-nukeviet.html', 1, '', 0, 1),
(3, 1, 1, 'Giới thiệu về NukeViet CMS', '/index.php?language=vi&nv=about&op=gioi-thieu-ve-nukeviet-cms.html', '', '', 2, 3, 1, '', '6', 'about', 'gioi-thieu-ve-nukeviet-cms.html', 1, '', 0, 1),
(4, 1, 1, 'Logo và tên gọi NukeViet', '/index.php?language=vi&nv=about&op=logo-va-ten-goi-nukeviet.html', '', '', 3, 4, 1, '', '6', 'about', 'logo-va-ten-goi-nukeviet.html', 1, '', 0, 1),
(5, 1, 1, 'Giấy phép sử dụng NukeViet', '/index.php?language=vi&nv=about&op=giay-phep-su-dung-nukeviet.html', '', '', 4, 5, 1, '', '6', 'about', 'giay-phep-su-dung-nukeviet.html', 1, '', 0, 1),
(6, 1, 1, 'Những tính năng của NukeViet CMS 4.0', '/index.php?language=vi&nv=about&op=nhung-tinh-nang-cua-nukeviet-cms-4-0.html', '', '', 5, 6, 1, '', '6', 'about', 'nhung-tinh-nang-cua-nukeviet-cms-4-0.html', 1, '', 0, 1),
(7, 1, 1, 'Yêu cầu sử dụng NukeViet 4', '/index.php?language=vi&nv=about&op=Yeu-cau-su-dung-NukeViet-4.html', '', '', 6, 7, 1, '', '6', 'about', 'cac-yeu-cau-cai-dat.html', 1, '', 0, 1),
(8, 1, 1, 'Giới thiệu về Công ty cổ phần phát triển nguồn mở Việt Nam', '/index.php?language=vi&nv=about&op=gioi-thieu-ve-cong-ty-co-phan-phat-trien-nguon-mo-viet-nam.html', '', '', 7, 8, 1, '', '6', 'about', 'gioi-thieu-ve-cong-ty-co-phan-phat-trien-nguon-mo-viet-nam.html', 1, '', 0, 1),
(9, 1, 1, 'Ủng hộ, hỗ trợ và tham gia phát triển NukeViet', '/index.php?language=vi&nv=about&op=ung-ho-ho-tro-va-tham-gia-phat-trien-nukeviet.html', '', '', 8, 9, 1, '', '6', 'about', 'ung-ho-ho-tro-va-tham-gia-phat-trien-nukeviet.html', 1, '', 0, 1),
(10, 0, 1, 'Tin Tức', '/index.php?language=vi&nv=news', '', '', 2, 10, 0, '11,12,13,14,15,16,17', '6', 'news', '', 1, '', 1, 1),
(11, 10, 1, 'Đối tác', '/index.php?language=vi&nv=news&amp;op=Doi-tac', '', '', 1, 11, 1, '', '6', 'news', 'Doi-tac', 1, '', 1, 1),
(12, 10, 1, 'Tuyển dụng', '/index.php?language=vi&nv=news&amp;op=Tuyen-dung', '', '', 2, 12, 1, '', '6', 'news', 'Tuyen-dung', 1, '', 1, 1),
(13, 10, 1, 'Rss', '/index.php?language=vi&nv=news&op=rss', '', '', 3, 13, 1, '', '6', 'news', 'rss', 1, '', 0, 1),
(14, 10, 1, 'Đăng bài viết', '/index.php?language=vi&nv=news&op=content', '', '', 4, 14, 1, '', '6', 'news', 'content', 1, '', 0, 1),
(15, 10, 1, 'Tìm kiếm', '/index.php?language=vi&nv=news&op=search', '', '', 5, 15, 1, '', '6', 'news', 'search', 1, '', 0, 1),
(16, 10, 1, 'Tin tức', '/index.php?language=vi&nv=news&amp;op=Tin-tuc', '', '', 6, 16, 1, '', '6', 'news', 'Tin-tuc', 1, '', 1, 1),
(17, 10, 1, 'Sản phẩm', '/index.php?language=vi&nv=news&amp;op=San-pham', '', '', 7, 17, 1, '', '6', 'news', 'San-pham', 1, '', 1, 1),
(18, 0, 1, 'Thành viên', '/index.php?language=vi&nv=users', '', '', 3, 18, 0, '', '6', 'users', '', 1, '', 1, 1),
(19, 0, 1, 'Thống kê', '/index.php?language=vi&nv=statistics', '', '', 4, 19, 0, '', '2', 'statistics', '', 1, '', 1, 1),
(20, 0, 1, 'Thăm dò ý kiến', '/index.php?language=vi&nv=voting', '', '', 5, 20, 0, '', '6', 'voting', '', 1, '', 1, 1),
(21, 0, 1, 'Tìm kiếm', '/index.php?language=vi&nv=seek', '', '', 6, 21, 0, '', '6', 'seek', '', 1, '', 1, 1),
(22, 0, 1, 'Liên hệ', '/index.php?language=vi&nv=contact', '', '', 7, 22, 0, '', '6', 'contact', '', 1, '', 1, 1),
(23, 0, 2, 'TRANG CHỦ', '/index.php?language=vi', '', '', 1, 1, 0, '', '6', '0', '', 1, '', 0, 1),
(24, 0, 2, 'GIỚI THIỆU', '/index.php?language=vi&nv=about', '', '', 2, 2, 0, '', '6', 'about', '', 1, '', 0, 1),
(25, 0, 2, 'SẢN PHẨM', '/index.php?language=vi&nv=shops', '', '', 3, 3, 0, '26,27,28,29,30', '6', 'shops', '', 1, '', 0, 1),
(26, 25, 2, 'Case iphone', '#', '', '', 1, 4, 1, '', '6', '0', '', 1, '', 0, 1),
(27, 25, 2, 'Case iphone5', '#', '', '', 2, 5, 1, '', '6', '0', '', 1, '', 0, 1),
(28, 25, 2, 'Case iphone5s', '#', '', '', 3, 6, 1, '', '6', '0', '', 1, '', 0, 1),
(29, 25, 2, 'Case iphone6', '#', '', '', 4, 7, 1, '', '6', '0', '', 1, '', 0, 1),
(30, 25, 2, 'Case iphone6 Plus', '#', '', '', 5, 8, 1, '', '6', '0', '', 1, '', 0, 1),
(31, 0, 2, 'SALE OF', '#', '', '', 4, 9, 0, '', '6', '0', '', 1, '', 0, 1),
(32, 0, 2, 'LIÊN HỆ', '/index.php?language=vi&nv=contact', '', '', 5, 10, 0, '', '6', 'contact', '', 1, '', 0, 1),
(33, 0, 3, 'Chính sách bảo mật', '#', '', '', 1, 1, 0, '', '6', '0', '', 1, '', 0, 1),
(34, 0, 3, 'Giới thiệu', '#', '', '', 2, 2, 0, '', '6', '0', '', 1, '', 0, 1),
(35, 0, 3, 'Phương thức vận chuyển', '#', '', '', 3, 3, 0, '', '6', '0', '', 1, '', 0, 1),
(36, 0, 3, 'Sale Off', '#', '', '', 4, 4, 0, '', '6', '0', '', 1, '', 0, 1),
(37, 0, 3, 'Thông tin chuyển khoản', '#', '', '', 5, 5, 0, '', '6', '0', '', 1, '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_modfuncs`
--

DROP TABLE IF EXISTS `nv4_vi_modfuncs`;
CREATE TABLE IF NOT EXISTS `nv4_vi_modfuncs` (
`func_id` mediumint(8) unsigned NOT NULL,
  `func_name` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `func_custom_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `in_module` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_func` tinyint(4) NOT NULL DEFAULT '0',
  `in_submenu` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subweight` smallint(2) unsigned NOT NULL DEFAULT '1',
  `setting` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_modfuncs`
--

INSERT INTO `nv4_vi_modfuncs` (`func_id`, `func_name`, `alias`, `func_custom_name`, `in_module`, `show_func`, `in_submenu`, `subweight`, `setting`) VALUES
(1, 'main', 'main', 'Main', 'about', 1, 0, 1, ''),
(2, 'sitemap', 'sitemap', 'Sitemap', 'about', 0, 0, 0, ''),
(3, 'rss', 'rss', 'Rss', 'about', 0, 0, 0, ''),
(4, 'main', 'main', 'Main', 'news', 1, 0, 1, ''),
(5, 'viewcat', 'viewcat', 'Viewcat', 'news', 1, 0, 2, ''),
(6, 'topic', 'topic', 'Topic', 'news', 1, 0, 3, ''),
(7, 'content', 'content', 'Content', 'news', 1, 1, 4, ''),
(8, 'detail', 'detail', 'Detail', 'news', 1, 0, 5, ''),
(9, 'tag', 'tag', 'Tag', 'news', 1, 0, 6, ''),
(10, 'rss', 'rss', 'Rss', 'news', 1, 1, 7, ''),
(11, 'search', 'search', 'Search', 'news', 1, 1, 8, ''),
(12, 'groups', 'groups', 'Groups', 'news', 1, 0, 9, ''),
(13, 'sitemap', 'sitemap', 'Sitemap', 'news', 0, 0, 0, ''),
(14, 'print', 'print', 'Print', 'news', 0, 0, 0, ''),
(15, 'rating', 'rating', 'Rating', 'news', 0, 0, 0, ''),
(16, 'savefile', 'savefile', 'Savefile', 'news', 0, 0, 0, ''),
(17, 'sendmail', 'sendmail', 'Sendmail', 'news', 0, 0, 0, ''),
(18, 'main', 'main', 'Main', 'users', 1, 0, 1, ''),
(19, 'login', 'login', 'Đăng nhập', 'users', 1, 1, 2, ''),
(20, 'register', 'register', 'Đăng ký', 'users', 1, 1, 3, ''),
(21, 'lostpass', 'lostpass', 'Quên mật khẩu', 'users', 1, 1, 4, ''),
(22, 'active', 'active', 'Kích hoạt', 'users', 1, 0, 5, ''),
(23, 'lostactivelink', 'lostactivelink', 'Lostactivelink', 'users', 1, 0, 6, ''),
(24, 'editinfo', 'editinfo', 'Thiếp lập tài khoản', 'users', 1, 1, 7, ''),
(25, 'memberlist', 'memberlist', 'Danh sách thành viên', 'users', 1, 1, 8, ''),
(26, 'avatar', 'avatar', 'Avatar', 'users', 1, 0, 9, ''),
(27, 'logout', 'logout', 'Thoát', 'users', 1, 1, 10, ''),
(28, 'oauth', 'oauth', 'Oauth', 'users', 0, 0, 0, ''),
(29, 'main', 'main', 'Main', 'statistics', 1, 0, 1, ''),
(30, 'allreferers', 'allreferers', 'Theo đường dẫn đến site', 'statistics', 1, 1, 2, ''),
(31, 'allcountries', 'allcountries', 'Theo quốc gia', 'statistics', 1, 1, 3, ''),
(32, 'allbrowsers', 'allbrowsers', 'Theo trình duyệt', 'statistics', 1, 1, 4, ''),
(33, 'allos', 'allos', 'Theo hệ điều hành', 'statistics', 1, 1, 5, ''),
(34, 'allbots', 'allbots', 'Máy chủ tìm kiếm', 'statistics', 1, 1, 6, ''),
(35, 'referer', 'referer', 'Đường dẫn đến site theo tháng', 'statistics', 1, 0, 7, ''),
(36, 'main', 'main', 'Main', 'banners', 1, 0, 1, ''),
(37, 'addads', 'addads', 'Addads', 'banners', 1, 0, 2, ''),
(38, 'clientinfo', 'clientinfo', 'Clientinfo', 'banners', 1, 0, 3, ''),
(39, 'stats', 'stats', 'Stats', 'banners', 1, 0, 4, ''),
(40, 'cledit', 'cledit', 'Cledit', 'banners', 0, 0, 0, ''),
(41, 'click', 'click', 'Click', 'banners', 0, 0, 0, ''),
(42, 'clinfo', 'clinfo', 'Clinfo', 'banners', 0, 0, 0, ''),
(43, 'logininfo', 'logininfo', 'Logininfo', 'banners', 0, 0, 0, ''),
(44, 'viewmap', 'viewmap', 'Viewmap', 'banners', 0, 0, 0, ''),
(45, 'main', 'main', 'main', 'comment', 1, 0, 1, ''),
(46, 'post', 'post', 'post', 'comment', 1, 0, 2, ''),
(47, 'like', 'like', 'Like', 'comment', 1, 0, 3, ''),
(48, 'delete', 'delete', 'Delete', 'comment', 1, 0, 4, ''),
(49, 'main', 'main', 'Main', 'page', 1, 0, 1, ''),
(50, 'sitemap', 'sitemap', 'Sitemap', 'page', 0, 0, 0, ''),
(51, 'rss', 'rss', 'Rss', 'page', 0, 0, 0, ''),
(52, 'main', 'main', 'Main', 'siteterms', 1, 0, 1, ''),
(53, 'rss', 'rss', 'Rss', 'siteterms', 1, 0, 2, ''),
(54, 'sitemap', 'sitemap', 'Sitemap', 'siteterms', 0, 0, 0, ''),
(55, 'main', 'main', 'Main', 'contact', 1, 0, 1, ''),
(56, 'main', 'main', 'Main', 'voting', 1, 0, 1, ''),
(57, 'main', 'main', 'Main', 'seek', 1, 0, 1, ''),
(58, 'main', 'main', 'Main', 'feeds', 1, 0, 1, ''),
(59, 'blockcat', 'blockcat', 'Blockcat', 'shops', 1, 0, 18, ''),
(60, 'cart', 'cart', 'Cart', 'shops', 1, 0, 5, ''),
(61, 'checkorder', 'checkorder', 'Checkorder', 'shops', 0, 0, 0, ''),
(62, 'compare', 'compare', 'Compare', 'shops', 1, 0, 12, ''),
(63, 'complete', 'complete', 'Complete', 'shops', 1, 0, 8, ''),
(64, 'delhis', 'delhis', 'Delhis', 'shops', 0, 0, 0, ''),
(65, 'detail', 'detail', 'Detail', 'shops', 1, 0, 3, ''),
(66, 'download', 'download', 'Download', 'shops', 1, 0, 17, ''),
(67, 'group', 'group', 'Group', 'shops', 1, 0, 10, ''),
(68, 'history', 'history', 'History', 'shops', 1, 0, 9, ''),
(69, 'loadcart', 'loadcart', 'Loadcart', 'shops', 0, 0, 0, ''),
(70, 'main', 'main', 'Main', 'shops', 1, 0, 1, ''),
(71, 'order', 'order', 'Order', 'shops', 1, 0, 6, ''),
(72, 'payment', 'payment', 'Payment', 'shops', 1, 0, 7, ''),
(73, 'point', 'point', 'Point', 'shops', 1, 0, 15, ''),
(74, 'print', 'print', 'Print', 'shops', 0, 0, 0, ''),
(75, 'print_pro', 'print_pro', 'Print_pro', 'shops', 0, 0, 0, ''),
(76, 'remove', 'remove', 'Remove', 'shops', 0, 0, 0, ''),
(77, 'review', 'review', 'Review', 'shops', 0, 0, 0, ''),
(78, 'rss', 'rss', 'Rss', 'shops', 0, 0, 0, ''),
(79, 'search', 'search', 'Search', 'shops', 1, 0, 4, ''),
(80, 'search_result', 'search_result', 'Search_result', 'shops', 1, 0, 11, ''),
(81, 'sendmail', 'sendmail', 'Sendmail', 'shops', 0, 0, 0, ''),
(82, 'setcart', 'setcart', 'Setcart', 'shops', 0, 0, 0, ''),
(83, 'shippingajax', 'shippingajax', 'Shippingajax', 'shops', 1, 0, 16, ''),
(84, 'sitemap', 'sitemap', 'Sitemap', 'shops', 0, 0, 0, ''),
(85, 'tag', 'tag', 'Tag', 'shops', 1, 0, 14, ''),
(86, 'viewcat', 'viewcat', 'Viewcat', 'shops', 1, 0, 2, ''),
(87, 'wishlist', 'wishlist', 'Wishlist', 'shops', 1, 0, 13, ''),
(88, 'wishlist_update', 'wishlist_update', 'Wishlist_update', 'shops', 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_modthemes`
--

DROP TABLE IF EXISTS `nv4_vi_modthemes`;
CREATE TABLE IF NOT EXISTS `nv4_vi_modthemes` (
  `func_id` mediumint(8) DEFAULT NULL,
  `layout` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_modthemes`
--

INSERT INTO `nv4_vi_modthemes` (`func_id`, `layout`, `theme`) VALUES
(0, 'left-body-right', 'dienthoai'),
(0, 'left-main-right', 'default'),
(0, 'main', 'mobile_default'),
(1, 'left-body-right', 'dienthoai'),
(1, 'left-main-right', 'default'),
(1, 'main', 'mobile_default'),
(4, 'body', 'dienthoai'),
(4, 'left-main-right', 'default'),
(4, 'main', 'mobile_default'),
(5, 'body', 'dienthoai'),
(5, 'left-main-right', 'default'),
(5, 'main', 'mobile_default'),
(6, 'body', 'dienthoai'),
(6, 'left-main-right', 'default'),
(6, 'main', 'mobile_default'),
(7, 'body', 'dienthoai'),
(7, 'left-main-right', 'default'),
(7, 'main', 'mobile_default'),
(8, 'body', 'dienthoai'),
(8, 'left-main-right', 'default'),
(8, 'main', 'mobile_default'),
(9, 'body', 'dienthoai'),
(9, 'left-main-right', 'default'),
(9, 'main', 'mobile_default'),
(10, 'body', 'dienthoai'),
(10, 'left-main-right', 'default'),
(11, 'body', 'dienthoai'),
(11, 'left-main-right', 'default'),
(11, 'main', 'mobile_default'),
(12, 'body', 'dienthoai'),
(12, 'left-main-right', 'default'),
(12, 'main', 'mobile_default'),
(18, 'left-body-right', 'dienthoai'),
(18, 'left-main-right', 'default'),
(18, 'main', 'mobile_default'),
(19, 'left-body-right', 'dienthoai'),
(19, 'left-main-right', 'default'),
(19, 'main', 'mobile_default'),
(20, 'left-body-right', 'dienthoai'),
(20, 'left-main-right', 'default'),
(20, 'main', 'mobile_default'),
(21, 'left-body-right', 'dienthoai'),
(21, 'left-main-right', 'default'),
(21, 'main', 'mobile_default'),
(22, 'left-body-right', 'dienthoai'),
(22, 'left-main-right', 'default'),
(22, 'main', 'mobile_default'),
(23, 'left-body-right', 'dienthoai'),
(23, 'left-main-right', 'default'),
(23, 'main', 'mobile_default'),
(24, 'left-body-right', 'dienthoai'),
(24, 'left-main', 'default'),
(24, 'main', 'mobile_default'),
(25, 'left-body-right', 'dienthoai'),
(25, 'left-main-right', 'default'),
(25, 'main', 'mobile_default'),
(26, 'left-body-right', 'dienthoai'),
(26, 'left-main-right', 'default'),
(27, 'left-body-right', 'dienthoai'),
(27, 'left-main-right', 'default'),
(27, 'main', 'mobile_default'),
(29, 'left-body-right', 'dienthoai'),
(29, 'left-main', 'default'),
(29, 'main', 'mobile_default'),
(30, 'left-body-right', 'dienthoai'),
(30, 'left-main', 'default'),
(30, 'main', 'mobile_default'),
(31, 'left-body-right', 'dienthoai'),
(31, 'left-main', 'default'),
(31, 'main', 'mobile_default'),
(32, 'left-body-right', 'dienthoai'),
(32, 'left-main', 'default'),
(32, 'main', 'mobile_default'),
(33, 'left-body-right', 'dienthoai'),
(33, 'left-main', 'default'),
(33, 'main', 'mobile_default'),
(34, 'left-body-right', 'dienthoai'),
(34, 'left-main', 'default'),
(34, 'main', 'mobile_default'),
(35, 'left-body-right', 'dienthoai'),
(35, 'left-main', 'default'),
(35, 'main', 'mobile_default'),
(36, 'left-body-right', 'dienthoai'),
(36, 'left-main-right', 'default'),
(36, 'main', 'mobile_default'),
(37, 'left-body-right', 'dienthoai'),
(37, 'left-main-right', 'default'),
(37, 'main', 'mobile_default'),
(38, 'left-body-right', 'dienthoai'),
(38, 'left-main-right', 'default'),
(38, 'main', 'mobile_default'),
(39, 'left-body-right', 'dienthoai'),
(39, 'left-main-right', 'default'),
(39, 'main', 'mobile_default'),
(45, 'left-body-right', 'dienthoai'),
(45, 'left-main-right', 'default'),
(45, 'main', 'mobile_default'),
(46, 'left-body-right', 'dienthoai'),
(46, 'left-main-right', 'default'),
(46, 'main', 'mobile_default'),
(47, 'left-body-right', 'dienthoai'),
(47, 'left-main-right', 'default'),
(47, 'main', 'mobile_default'),
(48, 'left-body-right', 'dienthoai'),
(48, 'left-main-right', 'default'),
(48, 'main', 'mobile_default'),
(49, 'left-body-right', 'dienthoai'),
(49, 'left-main', 'default'),
(49, 'main', 'mobile_default'),
(52, 'left-body-right', 'dienthoai'),
(52, 'left-main-right', 'default'),
(52, 'main', 'mobile_default'),
(53, 'left-body-right', 'dienthoai'),
(53, 'left-main-right', 'default'),
(53, 'main', 'mobile_default'),
(55, 'left-body-right', 'dienthoai'),
(55, 'left-main', 'default'),
(55, 'main', 'mobile_default'),
(56, 'left-body-right', 'dienthoai'),
(56, 'left-main', 'default'),
(56, 'main', 'mobile_default'),
(57, 'left-body-right', 'dienthoai'),
(57, 'left-main-right', 'default'),
(57, 'main', 'mobile_default'),
(58, 'left-body-right', 'dienthoai'),
(58, 'left-main-right', 'default'),
(58, 'main', 'mobile_default'),
(59, 'body', 'dienthoai'),
(59, 'left-main-right', 'default'),
(59, 'main', 'mobile_default'),
(60, 'body', 'dienthoai'),
(60, 'left-main-right', 'default'),
(60, 'main', 'mobile_default'),
(61, 'left-main-right', 'default'),
(62, 'body', 'dienthoai'),
(62, 'left-main-right', 'default'),
(62, 'main', 'mobile_default'),
(63, 'body', 'dienthoai'),
(63, 'left-main-right', 'default'),
(63, 'main', 'mobile_default'),
(64, 'left-main-right', 'default'),
(65, 'body', 'dienthoai'),
(65, 'left-main-right', 'default'),
(65, 'main', 'mobile_default'),
(66, 'body', 'dienthoai'),
(66, 'left-main-right', 'default'),
(66, 'main', 'mobile_default'),
(67, 'body', 'dienthoai'),
(67, 'left-main-right', 'default'),
(67, 'main', 'mobile_default'),
(68, 'body', 'dienthoai'),
(68, 'left-main-right', 'default'),
(68, 'main', 'mobile_default'),
(69, 'left-main-right', 'default'),
(70, 'body', 'dienthoai'),
(70, 'left-main-right', 'default'),
(70, 'main', 'mobile_default'),
(71, 'body', 'dienthoai'),
(71, 'left-main-right', 'default'),
(71, 'main', 'mobile_default'),
(72, 'body', 'dienthoai'),
(72, 'left-main-right', 'default'),
(72, 'main', 'mobile_default'),
(73, 'body', 'dienthoai'),
(73, 'left-main-right', 'default'),
(73, 'main', 'mobile_default'),
(74, 'left-main-right', 'default'),
(75, 'left-main-right', 'default'),
(76, 'left-main-right', 'default'),
(77, 'left-main-right', 'default'),
(78, 'left-main-right', 'default'),
(79, 'body', 'dienthoai'),
(79, 'left-main-right', 'default'),
(79, 'main', 'mobile_default'),
(80, 'body', 'dienthoai'),
(80, 'left-main-right', 'default'),
(80, 'main', 'mobile_default'),
(81, 'left-main-right', 'default'),
(82, 'left-main-right', 'default'),
(83, 'body', 'dienthoai'),
(83, 'left-main-right', 'default'),
(83, 'main', 'mobile_default'),
(84, 'left-main-right', 'default'),
(85, 'body', 'dienthoai'),
(85, 'left-main-right', 'default'),
(85, 'main', 'mobile_default'),
(86, 'body', 'dienthoai'),
(86, 'left-main-right', 'default'),
(86, 'main', 'mobile_default'),
(87, 'body', 'dienthoai'),
(87, 'left-main-right', 'default'),
(87, 'main', 'mobile_default'),
(88, 'left-main-right', 'default');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_modules`
--

DROP TABLE IF EXISTS `nv4_vi_modules`;
CREATE TABLE IF NOT EXISTS `nv4_vi_modules` (
  `title` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_file` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `module_data` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `module_upload` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `custom_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `set_time` int(11) unsigned NOT NULL DEFAULT '0',
  `main_file` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `admin_file` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `theme` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `mobile` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `act` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `admins` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `rss` tinyint(4) NOT NULL DEFAULT '1',
  `gid` smallint(5) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_modules`
--

INSERT INTO `nv4_vi_modules` (`title`, `module_file`, `module_data`, `module_upload`, `custom_title`, `admin_title`, `set_time`, `main_file`, `admin_file`, `theme`, `mobile`, `description`, `keywords`, `groups_view`, `weight`, `act`, `admins`, `rss`, `gid`) VALUES
('about', 'page', 'about', 'about', 'Giới thiệu', '', 1453277351, 1, 1, '', '', '', '', '6', 1, 1, '', 1, 0),
('news', 'news', 'news', 'news', 'Tin Tức', '', 1453277351, 1, 1, '', '', '', '', '6', 2, 1, '', 1, 0),
('users', 'users', 'users', 'users', 'Thành viên', 'Tài khoản', 1453277351, 1, 1, '', '', '', '', '6', 3, 1, '', 0, 0),
('contact', 'contact', 'contact', 'contact', 'Liên hệ', '', 1453277351, 1, 1, '', '', '', '', '6', 4, 1, '', 0, 0),
('statistics', 'statistics', 'statistics', 'statistics', 'Thống kê', '', 1453277351, 1, 1, '', '', '', 'truy cập, online, statistics', '2', 5, 1, '', 0, 0),
('voting', 'voting', 'voting', 'voting', 'Thăm dò ý kiến', '', 1453277351, 1, 1, '', '', '', '', '6', 6, 1, '', 1, 0),
('banners', 'banners', 'banners', 'banners', 'Quảng cáo', '', 1453277351, 1, 1, '', '', '', '', '6', 7, 1, '', 0, 0),
('seek', 'seek', 'seek', 'seek', 'Tìm kiếm', '', 1453277351, 1, 0, '', '', '', '', '6', 8, 1, '', 0, 0),
('menu', 'menu', 'menu', 'menu', 'Menu Site', '', 1453277351, 0, 1, '', '', '', '', '6', 9, 1, '', 0, 0),
('feeds', 'feeds', 'feeds', 'feeds', 'Rss Feeds', '', 1453277351, 1, 1, '', '', '', '', '6', 10, 1, '', 0, 0),
('page', 'page', 'page', 'page', 'Page', '', 1453277351, 1, 1, '', '', '', '', '6', 11, 1, '', 1, 0),
('comment', 'comment', 'comment', 'comment', 'Bình luận', 'Quản lý bình luận', 1453277351, 0, 1, '', '', '', '', '6', 12, 1, '', 0, 0),
('siteterms', 'page', 'siteterms', 'siteterms', 'Điều khoản sử dụng', '', 1453277351, 1, 1, '', '', '', '', '6', 13, 1, '', 1, 0),
('freecontent', 'freecontent', 'freecontent', 'freecontent', 'Giới thiệu sản phẩm', '', 1453277351, 0, 1, '', '', '', '', '6', 14, 1, '', 0, 0),
('shops', 'shops', 'shops', 'shops', 'shops', '', 1453277450, 1, 1, '', '', '', '', '6', 15, 1, '', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_1`
--

DROP TABLE IF EXISTS `nv4_vi_news_1`;
CREATE TABLE IF NOT EXISTS `nv4_vi_news_1` (
`id` int(11) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_1`
--

INSERT INTO `nv4_vi_news_1` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`) VALUES
(1, 1, '1,8,12', 0, 1, 'Quỳnh Nhi', 1, 1274989177, 1275318126, 1, 1274989140, 0, 2, 'Ra mắt công ty mã nguồn mở đầu tiên tại Việt Nam', 'Ra-mat-cong-ty-ma-nguon-mo-dau-tien-tai-Viet-Nam', 'Mã nguồn mở NukeViet vốn đã quá quen thuộc với cộng đồng CNTT Việt Nam trong mấy năm qua. Tuy chưa hoạt động chính thức, nhưng chỉ trong khoảng 5 năm gần đây, mã nguồn mở NukeViet đã được dùng phổ biến ở Việt Nam, áp dụng ở hầu hết các lĩnh vực, từ tin tức đến thương mại điện tử, từ các website cá nhân cho tới những hệ thống website doanh nghiệp.', 'nangly.jpg', 'Thành lập VINADES.,JSC', 1, 1, '6', 1, 2, 0, 0, 0),
(6, 10, '1,8,10', 0, 1, '', 2, 1274994722, 1275318001, 1, 1274994720, 0, 2, 'Thư mời hợp tác liên kết quảng cáo và cung cấp hosting thử nghiệm', 'Thu-moi-hop-tac', 'Hiện tại VINADES.,JSC đang tiến hành phát triển bộ mã nguồn NukeViet phiên bản 3.0 – một thế hệ CMS hoàn toàn mới với nhiều tính năng ưu việt, được đầu tư bài bản với kinh phí lớn. Với thiện chí hợp tác cùng phát triển VINADES.,JSC xin trân trọng gửi lời mời hợp tác đến Quý đối tác là các công ty cung cấp tên miền - hosting, các doanh nghiệp quan tâm và mong muốn hợp tác cùng VINADES để cùng thực hiện chung các hoạt động kinh doanh nhằm gia tăng giá trị, quảng bá thương hiệu chung cho cả hai bên.', 'hoptac.jpg', '', 1, 1, '6', 1, 1, 0, 0, 0),
(10, 1, '1,9', 0, 1, '', 3, 1322685920, 1322686042, 1, 1322685920, 0, 2, 'Mã nguồn mở NukeViet giành giải ba Nhân tài đất Việt 2011', 'Ma-nguon-mo-NukeViet-gianh-giai-ba-Nhan-tai-dat-Viet-2011', 'Không có giải nhất và giải nhì, sản phẩm Mã nguồn mở NukeViet của VINADES.,JSC là một trong ba sản phẩm đã đoạt giải ba Nhân tài đất Việt 2011 - Lĩnh vực Công nghệ thông tin (Sản phẩm đã ứng dụng rộng rãi).', 'nukeviet-nhantaidatviet2011.jpg', 'Mã nguồn mở NukeViet giành giải ba Nhân tài đất Việt 2011', 1, 1, '6', 1, 1, 0, 0, 0),
(11, 1, '1', 0, 1, '', 4, 1445309676, 1445309676, 1, 1445309520, 0, 2, 'NukeViet được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước', 'nukeviet-duoc-uu-tien-mua-sam-su-dung-trong-co-quan-to-chuc-nha-nuoc', 'Ngày 5/12/2014, Bộ trưởng Bộ TT&TT Nguyễn Bắc Son đã ký ban hành Thông tư 20/2014/TT-BTTTT (Thông tư 20) quy định về các sản phẩm phần mềm nguồn mở (PMNM) được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước. NukeViet (phiên bản 3.4.02 trở lên) là phần mềm được nằm trong danh sách này.', 'chuc-mung-nukeviet-thong-tu-20-bo-tttt.jpg', 'NukeViet được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước', 1, 1, '4', 1, 2, 0, 0, 0),
(14, 1, '1', 0, 1, 'Trần Thị Thu', 0, 1445391118, 1445394180, 1, 1445391060, 0, 2, 'Chương trình thực tập sinh tại công ty VINADES', 'chuong-trinh-thuc-tap-sinh-tai-cong-ty-vinades', 'Các bạn sinh viên thân mến!<br /><br />Nếu các bạn đã sẵn sàng để áp dụng những kiến thức được học ở trường vào thực tế thì Công ty cổ phần phát triển nguồn mở Việt Nam (VINADES.,JSC) là một sự lựa chọn phù hợp.<br /><br />Chúng tôi tạo ra cơ hội để những sinh viên có năng lực được trực tiếp làm việc trong môi trường chuyên nghiệp và năng động, đây cũng là cơ hội giúp bạn có những trải nghiệm công việc thực tế.<br /><br />Chúng tôi mang đến cơ hội thực tập tại nhiều vị trí cho tất cả những sinh viên năm cuối, các bạn sẽ được thử thách với những tình huống thực tế cùng sự hỗ trợ của các chuyên gia có nhiều kinh nghiệm của VINADES.,JSC.', '', '', 0, 1, '4', 1, 0, 0, 0, 0),
(16, 1, '1', 0, 1, '', 0, 1445391182, 1445394133, 1, 1445391120, 0, 2, 'NukeViet được Bộ GD&amp;ĐT đưa vào Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016', 'nukeviet-duoc-bo-gd-dt-dua-vao-huong-dan-thuc-hien-nhiem-vu-cntt-nam-hoc-2015-2016', 'Trong Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016 của Bộ Giáo dục và Đào tạo, NukeViet được đưa vào các hạng mục: Tập huấn sử dụng phần mềm nguồn mở cho giáo viên và cán bộ quản lý giáo dục; Khai thác, sử dụng và dạy học; đặc biệt phần &quot;khuyến cáo khi sử dụng các hệ thống CNTT&quot; có chỉ rõ &quot;Không nên làm website mã nguồn đóng&quot; và &quot;Nên làm NukeViet: phần mềm nguồn mở&quot;.', 'nukeviet-cms.jpg', '', 1, 1, '4', 1, 0, 0, 0, 0),
(17, 1, '1', 0, 1, '', 0, 1445391217, 1445393997, 1, 1445391180, 0, 2, 'Hỗ trợ tập huấn và triển khai NukeViet cho các Phòng, Sở GD&amp;ĐT', 'ho-tro-tap-huan-va-trien-khai-nukeviet-cho-cac-phong-so-gd-dt', 'Trên cơ sở Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016 của Bộ Giáo dục và Đào tạo, Công ty cổ phần phát triển nguồn mở Việt Nam và các doanh nghiệp phát triển NukeViet trong cộng đồng NukeViet đang tích cực công tác hỗ trợ cho các phòng GD&ĐT, Sở GD&ĐT triển khai 2 nội dung chính: Hỗ trợ công tác đào tạo tập huấn hướng dẫn sử dụng NukeViet và Hỗ trợ triển khai NukeViet cho các trường, Phòng và Sở GD&ĐT', 'tap-huan-pgd-ha-dong-2015.jpg', 'Tập huấn triển khai NukeViet tại Phòng Giáo dục và Đào tạo Hà Đông - Hà Nội', 1, 1, '4', 1, 2, 0, 0, 0),
(18, 1, '1', 0, 1, 'Hồ Ngọc Triển', 0, 1452158258, 1452158258, 1, 1452158258, 0, 2, 'NukeViet 4.0 có gì mới&#33;', 'nukeviet-4-0-co-gi-moi', 'NukeViet là hệ quản trị nội dung (Content Management System - CMS) nguồn mở thế hệ mới do người Việt phát triển, NukeViet cho phép bạn xây dựng và quản lý các website, cổng thông tin điện tử rất dễ dàng. NukeViet đã được trao giải Nhân tài đất Việt 2011, được Bộ GD&ĐT khuyên dùng trong thông tư số 08/2010/TT-BGDĐT, được Bộ TT&TT Quy định ưu tiên sử dụng trong cơ quan, tổ chức nhà nước tại thông tư 20/2014/TT-BTTTT.', 'chuc-mung-nukeviet-thong-tu-20-bo-tttt.jpg', '', 1, 1, '4', 1, 2, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_2`
--

DROP TABLE IF EXISTS `nv4_vi_news_2`;
CREATE TABLE IF NOT EXISTS `nv4_vi_news_2` (
`id` int(11) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_8`
--

DROP TABLE IF EXISTS `nv4_vi_news_8`;
CREATE TABLE IF NOT EXISTS `nv4_vi_news_8` (
`id` int(11) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_8`
--

INSERT INTO `nv4_vi_news_8` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`) VALUES
(1, 1, '1,8,12', 0, 1, 'Quỳnh Nhi', 1, 1274989177, 1275318126, 1, 1274989140, 0, 2, 'Ra mắt công ty mã nguồn mở đầu tiên tại Việt Nam', 'Ra-mat-cong-ty-ma-nguon-mo-dau-tien-tai-Viet-Nam', 'Mã nguồn mở NukeViet vốn đã quá quen thuộc với cộng đồng CNTT Việt Nam trong mấy năm qua. Tuy chưa hoạt động chính thức, nhưng chỉ trong khoảng 5 năm gần đây, mã nguồn mở NukeViet đã được dùng phổ biến ở Việt Nam, áp dụng ở hầu hết các lĩnh vực, từ tin tức đến thương mại điện tử, từ các website cá nhân cho tới những hệ thống website doanh nghiệp.', 'nangly.jpg', 'Thành lập VINADES.,JSC', 1, 1, '6', 1, 2, 0, 0, 0),
(6, 10, '1,8,10', 0, 1, '', 2, 1274994722, 1275318001, 1, 1274994720, 0, 2, 'Thư mời hợp tác liên kết quảng cáo và cung cấp hosting thử nghiệm', 'Thu-moi-hop-tac', 'Hiện tại VINADES.,JSC đang tiến hành phát triển bộ mã nguồn NukeViet phiên bản 3.0 – một thế hệ CMS hoàn toàn mới với nhiều tính năng ưu việt, được đầu tư bài bản với kinh phí lớn. Với thiện chí hợp tác cùng phát triển VINADES.,JSC xin trân trọng gửi lời mời hợp tác đến Quý đối tác là các công ty cung cấp tên miền - hosting, các doanh nghiệp quan tâm và mong muốn hợp tác cùng VINADES để cùng thực hiện chung các hoạt động kinh doanh nhằm gia tăng giá trị, quảng bá thương hiệu chung cho cả hai bên.', 'hoptac.jpg', '', 1, 1, '6', 1, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_9`
--

DROP TABLE IF EXISTS `nv4_vi_news_9`;
CREATE TABLE IF NOT EXISTS `nv4_vi_news_9` (
`id` int(11) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_9`
--

INSERT INTO `nv4_vi_news_9` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`) VALUES
(10, 1, '1,9', 0, 1, '', 3, 1322685920, 1322686042, 1, 1322685920, 0, 2, 'Mã nguồn mở NukeViet giành giải ba Nhân tài đất Việt 2011', 'Ma-nguon-mo-NukeViet-gianh-giai-ba-Nhan-tai-dat-Viet-2011', 'Không có giải nhất và giải nhì, sản phẩm Mã nguồn mở NukeViet của VINADES.,JSC là một trong ba sản phẩm đã đoạt giải ba Nhân tài đất Việt 2011 - Lĩnh vực Công nghệ thông tin (Sản phẩm đã ứng dụng rộng rãi).', 'nukeviet-nhantaidatviet2011.jpg', 'Mã nguồn mở NukeViet giành giải ba Nhân tài đất Việt 2011', 1, 1, '6', 1, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_10`
--

DROP TABLE IF EXISTS `nv4_vi_news_10`;
CREATE TABLE IF NOT EXISTS `nv4_vi_news_10` (
`id` int(11) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_10`
--

INSERT INTO `nv4_vi_news_10` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`) VALUES
(6, 10, '1,8,10', 0, 1, '', 2, 1274994722, 1275318001, 1, 1274994720, 0, 2, 'Thư mời hợp tác liên kết quảng cáo và cung cấp hosting thử nghiệm', 'Thu-moi-hop-tac', 'Hiện tại VINADES.,JSC đang tiến hành phát triển bộ mã nguồn NukeViet phiên bản 3.0 – một thế hệ CMS hoàn toàn mới với nhiều tính năng ưu việt, được đầu tư bài bản với kinh phí lớn. Với thiện chí hợp tác cùng phát triển VINADES.,JSC xin trân trọng gửi lời mời hợp tác đến Quý đối tác là các công ty cung cấp tên miền - hosting, các doanh nghiệp quan tâm và mong muốn hợp tác cùng VINADES để cùng thực hiện chung các hoạt động kinh doanh nhằm gia tăng giá trị, quảng bá thương hiệu chung cho cả hai bên.', 'hoptac.jpg', '', 1, 1, '6', 1, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_11`
--

DROP TABLE IF EXISTS `nv4_vi_news_11`;
CREATE TABLE IF NOT EXISTS `nv4_vi_news_11` (
`id` int(11) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_11`
--

INSERT INTO `nv4_vi_news_11` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`) VALUES
(7, 11, '11', 0, 1, 'Phạm Quốc Tiến', 2, 1452150058, 1452150058, 1, 1452150058, 0, 2, 'Tuyển dụng lập trình viên PHP phát triển NukeViet', 'tuyen-dung-lap-trinh-vien-php-phat-trien-nukeviet', 'Bạn đam mê nguồn mở? Bạn đang cần tìm một công việc phù hợp với thế mạnh của bạn về PHP và MySQL?. Hãy gia nhập VINADES.,JSC để xây dựng mã nguồn mở hàng đầu cho Việt Nam.', '', '', 0, 1, '2', 1, 2, 0, 0, 0),
(12, 11, '11', 0, 1, 'Vũ Bích Ngọc', 0, 1445391061, 1445394203, 1, 1445391000, 0, 2, 'Công ty VINADES tuyển dụng nhân viên kinh doanh', 'cong-ty-vinades-tuyen-dung-nhan-vien-kinh-doanh', 'Là một công ty phần mềm nguồn mở đầu tiên của Việt Nam chuyên quản một mã nguồn mở nổi tiếng, Công ty cổ phần phát triển nguồn mở Việt Nam (VINADES.,JSC) đã và đang thiết kế hàng ngàn website lớn nhỏ trong mọi lĩnh vực, đặc biệt phát triển mạnh mẽ trong mảng xây dựng cổng thông tin. Trong 2 năm tới, chúng tôi xác định duy trì vị trí dẫn đầu trong phát triển nguồn mở, dẫn đầu thị trường trong việc xây dựng và cung cấp các cổng thông tin lớn.<br />Nhằm phục vụ nhu cầu phát triển công ty, chúng tôi cần tuyển 02 nhân viên kinh doanh.', 'nukeviet-job.jpg', '', 1, 1, '4', 1, 0, 0, 0, 0),
(13, 11, '11', 0, 1, 'Phạm Quốc Tiến', 0, 1445391088, 1445394191, 1, 1445391060, 0, 2, 'Tuyển dụng chuyên viên đồ hoạ, kỹ thuật viên', 'tuyen-dung-chuyen-vien-do-hoa-ky-thuat-vien', 'Bạn đam mê nguồn mở? Bạn là chuyên gia đồ họa? Chúng tôi sẽ giúp bạn hiện thực hóa ước mơ của mình với một mức lương đảm bảo. Hãy gia nhập VINADES.,JSC để xây dựng mã nguồn mở hàng đầu cho Việt Nam.', '', '', 0, 1, '4', 1, 0, 0, 0, 0),
(15, 1, '11', 0, 1, 'Trần Thị Thu', 0, 1445391135, 1445394444, 1, 1445391120, 0, 2, 'Học việc tại công ty VINADES', 'hoc-viec-tai-cong-ty-vinades', '', '', '', 0, 1, '4', 1, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_12`
--

DROP TABLE IF EXISTS `nv4_vi_news_12`;
CREATE TABLE IF NOT EXISTS `nv4_vi_news_12` (
`id` int(11) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_12`
--

INSERT INTO `nv4_vi_news_12` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`) VALUES
(1, 1, '1,8,12', 0, 1, 'Quỳnh Nhi', 1, 1274989177, 1275318126, 1, 1274989140, 0, 2, 'Ra mắt công ty mã nguồn mở đầu tiên tại Việt Nam', 'Ra-mat-cong-ty-ma-nguon-mo-dau-tien-tai-Viet-Nam', 'Mã nguồn mở NukeViet vốn đã quá quen thuộc với cộng đồng CNTT Việt Nam trong mấy năm qua. Tuy chưa hoạt động chính thức, nhưng chỉ trong khoảng 5 năm gần đây, mã nguồn mở NukeViet đã được dùng phổ biến ở Việt Nam, áp dụng ở hầu hết các lĩnh vực, từ tin tức đến thương mại điện tử, từ các website cá nhân cho tới những hệ thống website doanh nghiệp.', 'nangly.jpg', 'Thành lập VINADES.,JSC', 1, 1, '6', 1, 2, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_admins`
--

DROP TABLE IF EXISTS `nv4_vi_news_admins`;
CREATE TABLE IF NOT EXISTS `nv4_vi_news_admins` (
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `catid` smallint(5) NOT NULL DEFAULT '0',
  `admin` tinyint(4) NOT NULL DEFAULT '0',
  `add_content` tinyint(4) NOT NULL DEFAULT '0',
  `pub_content` tinyint(4) NOT NULL DEFAULT '0',
  `edit_content` tinyint(4) NOT NULL DEFAULT '0',
  `del_content` tinyint(4) NOT NULL DEFAULT '0',
  `app_content` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_block`
--

DROP TABLE IF EXISTS `nv4_vi_news_block`;
CREATE TABLE IF NOT EXISTS `nv4_vi_news_block` (
  `bid` smallint(5) unsigned NOT NULL,
  `id` int(11) unsigned NOT NULL,
  `weight` int(11) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_block`
--

INSERT INTO `nv4_vi_news_block` (`bid`, `id`, `weight`) VALUES
(1, 1, 1),
(2, 14, 4),
(2, 12, 6),
(2, 6, 9),
(2, 13, 5),
(2, 11, 7),
(2, 1, 8),
(2, 15, 3),
(2, 16, 2),
(2, 17, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_block_cat`
--

DROP TABLE IF EXISTS `nv4_vi_news_block_cat`;
CREATE TABLE IF NOT EXISTS `nv4_vi_news_block_cat` (
`bid` smallint(5) unsigned NOT NULL,
  `adddefault` tinyint(4) NOT NULL DEFAULT '0',
  `numbers` smallint(5) NOT NULL DEFAULT '10',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` smallint(5) NOT NULL DEFAULT '0',
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_block_cat`
--

INSERT INTO `nv4_vi_news_block_cat` (`bid`, `adddefault`, `numbers`, `title`, `alias`, `image`, `description`, `weight`, `keywords`, `add_time`, `edit_time`) VALUES
(1, 0, 4, 'Tin tiêu điểm', 'Tin-tieu-diem', '', 'Tin tiêu điểm', 1, '', 1279945710, 1279956943),
(2, 1, 4, 'Tin mới nhất', 'Tin-moi-nhat', '', 'Tin mới nhất', 2, '', 1279945725, 1279956445);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_cat`
--

DROP TABLE IF EXISTS `nv4_vi_news_cat`;
CREATE TABLE IF NOT EXISTS `nv4_vi_news_cat` (
`catid` smallint(5) unsigned NOT NULL,
  `parentid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titlesite` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `descriptionhtml` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `viewdescription` tinyint(2) NOT NULL DEFAULT '0',
  `weight` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sort` smallint(5) NOT NULL DEFAULT '0',
  `lev` smallint(5) NOT NULL DEFAULT '0',
  `viewcat` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'viewcat_page_new',
  `numsubcat` smallint(5) NOT NULL DEFAULT '0',
  `subcatid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `numlinks` tinyint(2) unsigned NOT NULL DEFAULT '3',
  `newday` tinyint(2) unsigned NOT NULL DEFAULT '2',
  `featured` int(11) NOT NULL DEFAULT '0',
  `ad_block_cat` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `admins` text COLLATE utf8mb4_unicode_ci,
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',
  `edit_time` int(11) unsigned NOT NULL DEFAULT '0',
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_cat`
--

INSERT INTO `nv4_vi_news_cat` (`catid`, `parentid`, `title`, `titlesite`, `alias`, `description`, `descriptionhtml`, `image`, `viewdescription`, `weight`, `sort`, `lev`, `viewcat`, `numsubcat`, `subcatid`, `inhome`, `numlinks`, `newday`, `featured`, `ad_block_cat`, `keywords`, `admins`, `add_time`, `edit_time`, `groups_view`) VALUES
(1, 0, 'Tin tức', '', 'Tin-tuc', '', '', '', 0, 1, 1, 0, 'viewcat_main_right', 3, '8,12,9', 1, 4, 2, 0, '', '', '', 1274986690, 1274986690, '6'),
(2, 0, 'Sản phẩm', '', 'San-pham', '', '', '', 0, 2, 5, 0, 'viewcat_page_new', 0, '', 1, 4, 2, 0, '', '', '', 1274986705, 1274986705, '6'),
(8, 1, 'Thông cáo báo chí', '', 'thong-cao-bao-chi', '', '', '', 0, 1, 2, 1, 'viewcat_page_new', 0, '', 1, 4, 2, 0, '', '', '', 1274987105, 1274987244, '6'),
(9, 1, 'Tin công nghệ', '', 'Tin-cong-nghe', '', '', '', 0, 3, 4, 1, 'viewcat_page_new', 0, '', 1, 4, 2, 0, '', '', '', 1274987212, 1274987212, '6'),
(10, 0, 'Đối tác', '', 'Doi-tac', '', '', '', 0, 3, 9, 0, 'viewcat_main_right', 0, '', 1, 4, 2, 0, '', '', '', 1274987460, 1274987460, '6'),
(11, 0, 'Tuyển dụng', '', 'Tuyen-dung', '', '', '', 0, 4, 12, 0, 'viewcat_page_new', 0, '', 1, 4, 2, 0, '', '', '', 1274987538, 1274987538, '6'),
(12, 1, 'Bản tin nội bộ', '', 'Ban-tin-noi-bo', '', '', '', 0, 2, 3, 1, 'viewcat_page_new', 0, '', 1, 4, 2, 0, '', '', '', 1274987902, 1274987902, '6');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_config_post`
--

DROP TABLE IF EXISTS `nv4_vi_news_config_post`;
CREATE TABLE IF NOT EXISTS `nv4_vi_news_config_post` (
  `group_id` smallint(5) NOT NULL,
  `addcontent` tinyint(4) NOT NULL,
  `postcontent` tinyint(4) NOT NULL,
  `editcontent` tinyint(4) NOT NULL,
  `delcontent` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_detail`
--

DROP TABLE IF EXISTS `nv4_vi_news_detail`;
CREATE TABLE IF NOT EXISTS `nv4_vi_news_detail` (
  `id` int(11) unsigned NOT NULL,
  `bodyhtml` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `sourcetext` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imgposition` tinyint(1) NOT NULL DEFAULT '1',
  `copyright` tinyint(1) NOT NULL DEFAULT '0',
  `allowed_send` tinyint(1) NOT NULL DEFAULT '0',
  `allowed_print` tinyint(1) NOT NULL DEFAULT '0',
  `allowed_save` tinyint(1) NOT NULL DEFAULT '0',
  `gid` mediumint(8) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_detail`
--

INSERT INTO `nv4_vi_news_detail` (`id`, `bodyhtml`, `sourcetext`, `imgposition`, `copyright`, `allowed_send`, `allowed_print`, `allowed_save`, `gid`) VALUES
(1, '<p style="text-align: justify;">Để chuyên nghiệp hóa việc phát hành mã nguồn mở NukeViet, Ban quản trị NukeViet quyết định thành lập doanh nghiệp chuyên quản NukeViet mang tên Công ty cổ phần Phát triển nguồn mở Việt Nam (Viết tắt là VINADES.,JSC), chính thức ra mắt vào ngày 25-2-2010 (trụ sở tại Hà Nội) nhằm phát triển, phổ biến hệ thống NukeViet tại Việt Nam.<br /> <br /> Theo ông Nguyễn Anh Tú, Chủ tịch HĐQT VINADES, công ty sẽ phát triển bộ mã nguồn NukeViet nhất quán theo con đường mã nguồn mở đã chọn, chuyên nghiệp và quy mô hơn bao giờ hết. Đặc biệt là hoàn toàn miễn phí đúng tinh thần mã nguồn mở quốc tế.<br /> <br /> NukeViet là một hệ quản trị nội dung mã nguồn mở (Opensource Content Management System) thuần Việt từ nền tảng PHP-Nuke và cơ sở dữ liệu MySQL. Người sử dụng thường gọi NukeViet là portal vì nó có khả năng tích hợp nhiều ứng dụng trên nền web, cho phép người sử dụng có thể dễ dàng xuất bản và quản trị các nội dung của họ lên internet hoặc intranet.<br /> <br /> NukeViet cung cấp nhiều dịch vụ và ứng dụng nhờ khả năng tăng cường tính năng thêm các module, block... tạo sự dễ dàng cài đặt, quản lý, ngay cả với những người mới tiếp cận với website. Người dùng có thể tìm hiểu thêm thông tin và tải về sản phẩm tại địa chỉ http://nukeviet.vn</p><blockquote> <p style="text-align: justify;"> <em>Thông tin ra mắt công ty VINADES có thể tìm thấy trên trang 7 báo Hà Nội Mới ra ngày 25/02/2010 (<a href="http://hanoimoi.com.vn/newsdetail/Cong_nghe/309750/ra-mat-cong-ty-ma-nguon-mo-dau-tien-tai-viet-nam.htm" target="_blank">xem chi tiết</a>), Bản tin tiếng Anh của đài tiếng nói Việt Nam ngày 26/02/2010 (<a href="http://english.vovnews.vn/Home/First-opensource-company-starts-operation/20102/112960.vov" target="_blank">xem chi tiết</a>); trang 7 báo An ninh Thủ Đô số 2858 ra vào thứ 2 ngày 01/03/2010 và các trang tin tức, báo điện tử khác.</em></p></blockquote>', 'http://hanoimoi.com.vn/newsdetail/Cong_nghe/309750/ra-mat-cong-ty-ma-nguon-mo-dau-tien-tai-viet-nam.htm', 2, 0, 1, 1, 1, 0),
(6, '<div style="text-align: center;"><h2 style="color: rgb(255, 69, 0);"> THƯ MỜI HỢP TÁC</h2> <h4> TRONG VIỆC LIÊN KẾT QUẢNG CÁO, CUNG CẤP HOSTING THỬ NGHIỆM PHÁT TRIỂN</h4> <h2> MÃ NGUỒN MỞ NUKEVIET</h2> </div> <p style="text-align: justify; line-height: 130%; font-weight: bold;">  </p> <p style="text-align: justify; line-height: 130%; font-weight: bold;"> Kính gửi: QUÍ KHÁCH VÀ ĐỐI TÁC</p> <p style="text-align: justify; line-height: 130%; font-style: italic; text-indent: 1cm;"> Lời đầu tiên, Ban giám đốc công ty cổ phần Phát Triển Nguồn Mở Việt Nam (VINADES.,JSC) xin gửi đến Quý đối tác lời chào trân trọng, lời chúc may mắn và thành công. Tiếp đến chúng tôi xin được giới thiệu và ngỏ lời mời hợp tác kinh doanh.</p> <p style="text-align: justify; line-height: 130%; font-style: italic; text-indent: 1cm;"> VINADES.,JSC ra đời nhằm chuyên nghiệp hóa việc phát hành mã nguồn mở NukeViet. Đồng thời khai thác các dự án từ NukeViet tạo kinh phí phát triển bền vững cho mã nguồn này.</p> <p style="text-align: justify; line-height: 130%; font-style: italic; text-indent: 1cm;"> NukeViet là hệ quản trị nội dung, là website đa năng đầu tiên của Việt Nam do cộng đồng người Việt phát triển. Có nhiều lợi thế như cộng đồng người sử dụng đông đảo nhất tại Việt Nam hiện nay, sản phẩm thuần Việt, dễ sử dụng, dễ phát triển.</p> <p style="text-align: justify; line-height: 130%; font-style: italic; text-indent: 1cm;"> Hiện tại VINADES.,JSC đang tiến hành phát triển bộ mã nguồn NukeViet phiên bản 3.0 – một thế hệ CMS hoàn toàn mới với nhiều tính năng ưu việt, được đầu tư bài bản với kinh phí lớn.</p> <p style="text-align: justify; line-height: 130%; font-style: italic; text-indent: 1cm;"> Với thiện chí hợp tác cùng phát triển VINADES.,JSC xin trân trọng gửi lời mời hợp tác đến Quý đối tác là các công ty cung cấp tên miền - hosting, các doanh nghiệp quan tâm và mong muốn hợp tác cùng VINADES để cùng thực hiện chung các hoạt động kinh doanh nhằm gia tăng giá trị, quảng bá thương hiệu chung cho cả hai bên.</p> <p style="text-align: justify; line-height: 130%; text-indent: 1cm; font-weight: bold;"> Phương thức hợp tác nhưsau:</p> <p style="text-align: justify; line-height: 130%; font-weight: bold;"> 1.Quảng cáo, trao đổi banner, liên kết website:</p> <p style="text-align: justify; line-height: 130%;"> a. Mô tả hình thức:</p> <p style="text-align: justify; line-height: 130%; text-indent: 1cm;"> - Quảng cáo trên website &amp; hệ thống kênh truyền thông của 2 bên.</p> <p style="text-align: justify; line-height: 130%; text-indent: 1cm;"> - Quảng cáo trên các phiên bản phát hành của mã nguồn mở NukeViet.</p> <p style="text-align: justify; line-height: 130%;"> b, Lợi ích:</p> <p style="text-align: justify; line-height: 130%; text-indent: 1cm;"> - Quảng bá rộng rãi cho đối tượng của 2 bên.</p> <p style="text-align: justify; line-height: 130%; text-indent: 1cm;"> - Giảm chi phí quảng bá cho 2 bên.</p> <p style="text-align: justify; line-height: 130%;"> c, Trách nhiệm:</p> <p style="text-align: justify; line-height: 130%; text-indent: 1cm;"> - Hai bên sẽ thỏa thuận và đưa quảng cáo của mình vào website của đối tác. Thỏa thuận vị trí, kích thước và trang đặt banner quảng cáo nhằm mang lại hiệu quả cao cho cả hai bên.</p> <p style="text-align: justify; line-height: 130%; text-indent: 1cm;"> - Mở forum hỗ trợ người dùng hosting ngay tại diễn đàn NukeViet.VN để quý công ty dễ dàng hỗ trợ người sử dụng cũng như thực hiện các kế hoạch truyền thông của mình tới cộng đồng NukeViet.</p> <p style="text-align: justify; line-height: 130%; font-weight: bold;"> 2.Hợp tác cung cấp hosting thử nghiệm NukeViet:</p> <p style="text-align: justify; line-height: 130%;"> a. Mô tả hình thức:</p> <p style="text-align: justify; line-height: 130%; text-indent: 1cm;"> - Hai bên ký hợp đồng nguyên tắc &amp; thỏa thuận hợp tác trong việc hợp tác phát triển mã nguồn mở NukeViet. Theo đó:</p> <p style="text-align: justify; line-height: 130%; text-indent: 1cm;"> + Phía đối tác cung cấp mỗi loại 1 gói hosting đại lý cho VINADES.,JSC để chúng tôi test trong quá trình phát triển mã nguồn mở NukeViet, để đảm bảo NukeViet sẵn sàng tương thích với hosting của quý khách ngay khi ra mắt.</p> <p style="text-align: justify; line-height: 130%; text-indent: 1cm;"> + VINADES.,JSC sẽ công báo thông tin chứng nhận host của phía đối tác là phù hợp, tương thích tốt nhất với NukeViet tới cộng đồng những người phát triển và sử dụng NukeViet.</p> <p style="text-align: justify; line-height: 130%;"> b. Lợi ích:</p> <p style="text-align: justify; line-height: 130%; text-indent: 1cm;"> - Mở rộng thị trường theo cả hướng đối tượng.</p> <p style="text-align: justify; line-height: 130%; text-indent: 1cm;"> - Tiết kiệm chi phí –nâng cao hiệu quả kinh doanh.</p> <p style="text-align: justify; line-height: 130%;"> c. Trách nhiệm:</p> <p style="text-align: justify; line-height: 130%; text-indent: 1cm;"> - Bên đối tác cung cấp miễn phí host để VINADES.,JSC thực hiện việc test tương thích mã nguồn NukeViet trên các gói hosting của đối tác.</p> <p style="text-align: justify; line-height: 130%; text-indent: 1cm;"> - VINADES.,JSC công bố tới cộng đồng về kết quả chứng nhận chất lượng host của phía đối tác.</p> <p style="text-align: justify; line-height: 130%; font-weight: bold;"> 3,Hợp tác nhân lực hỗ trợ người sử dụng:</p> <p style="text-align: justify; line-height: 130%;"> a, Mô tả hình thức:</p> <p style="text-align: justify; line-height: 130%; text-indent: 1cm;"> - Hai bên sẽ hỗ trợ lẫn nhau trong quá trình giải quyết các yêu cầu của khách hàng.</p> <p style="text-align: justify; line-height: 130%; text-indent: 1cm;"> + Bên đối tác gửi các yêu cầu của khách hàng về mã nguồn NukeViet tới VINADES.,JSC</p> <p style="text-align: justify; line-height: 130%; text-indent: 1cm;"> + VINADES gửi các yêu cầu của khách hàng có liên quan đến dịch vụ hosting tới phía đối tác.</p> <p style="text-align: justify; line-height: 130%;"> b, Lợi ích:</p> <p style="text-align: justify; line-height: 130%; text-indent: 1cm;"> - Giảm thiểu chi phí, nhân lực hỗ trợ khách hàng của cả 2 bên.</p> <p style="text-align: justify; line-height: 130%; text-indent: 1cm;"> - Tăng hiệu quả hỗ trợ khách hàng.</p> <p style="text-align: justify; line-height: 130%;"> c, Trách nhiệm:</p> <p style="text-align: justify; line-height: 130%; text-indent: 1cm;"> - Khi nhận được yêu cầu hỗ trợ VINADES hoặc bên đối tác cần ưu tiên xử lý nhanh gọn nhằm nâng cao hiệu quả của sự hợp tác song phưong này.</p> <p style="text-align: justify; line-height: 130%; font-weight: bold;"> 4. Các hình thức khác:</p> <p style="text-align: justify; line-height: 130%; text-indent: 1cm;"> Ngoài các hình thức đã đề xuất ở trên, là đơn vị phát hành mã nguồn mở NukeViet chúng tôi có thể phát hành quảng cáo trên giao diện phần mềm, trên các bài viết giới thiệu xuất hiện ngay sau khi cài đặt phần mềm… chúng tôi tin tưởng rằng với lượng phát hành lên đến hàng chục ngàn lượt tải về cho mỗi phiên bản là một cơ hội quảng cáo rất hiệu quả đến cộng đồng Webmaster Việt Nam.</p> <p style="text-align: justify; line-height: 130%; text-indent: 1cm;"> Với mong muốn tạo nên cộng đồng phát triển và sử dụng NukeViet rộng lớn đúng như mục tiêu đề ra,chúng tôi luôn linh động trong các hình thức hợp tác nhằm mang lại sự thuận tiện cho đối tác cũng như mục tiêu hợp tác đa phương. Chúng tôi sẽ tiếp nhận các hình thức hợp tác khác mà bên đối tác trình bày hợp lý và hiệu quả, mong nhận được thêm nhiều hình thức hợp tác khác từ đối tác. Phương châm của chúng tôi “Cùng hợp tác để phát triển”.</p> <p style="text-align: justify; line-height: 130%; font-style: italic; text-indent: 1cm;"> Trân trọng cảm ơn, rất mong được hợp tác cùng quý vị.</p> <span style="font-weight: bold;">Thông tin liên hệ:</span> <p style="text-align: justify;"> CÔNG TY CỔ PHẦN PHÁT TRIỂN NGUỒN MỞ VIỆT NAM (VINADES.,JSC)</p> <p style="text-align: justify; text-indent: 1cm;"> Trụ sở chính: Phòng 2004 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội.</p> <p style="text-align: justify; text-indent: 1cm;"> Điện thoại: (84-4) 85 872007</p> <p style="text-align: justify; text-indent: 1cm;"> Fax: (84-4) 35 500 914</p> <p style="text-align: justify; text-indent: 1cm;"> Website: <a href="http://www.vinades.vn/">www.vinades.vn</a> – <a href="http://www.nukeviet.vn/">www.nukeviet.vn</a></p> <p style="text-align: justify; text-indent: 1cm;"> Email: <a href="mailto:contact@vinades.vn">contact@vinades.vn</a></p>', 'http://vinades.vn/vi/news/thong-cao-bao-chi/Thu-moi-hop-tac-6/', 2, 0, 1, 1, 1, 0),
(7, 'Tại VINADES.,JSC bạn sẽ được tham gia các dự án của công ty, tham gia xây dựng và phát triển bộ nhân hệ thống NukeViet, được học hỏi và trau dồi nâng cao kiến thức và kỹ năng cá nhân. Ngoài ra, nếu bạn đam mê về nguồn mở và có mong muốn cống hiến cho quá trình phát triển nguồn mở của Việt Nam nói riêng và của thế giới nói chung, thì đây là cơ hội lớn nhất để bạn đạt được mong muốn của mình. Tham gia công tác tại công ty là bạn đã góp phần xây dựng một cộng đồng nguồn mở chuyên nghiệp cho Việt Nam để vươn xa ra thế giới.<br  /><br  /><span style="font-size:16px;"><strong>1. Vị trí dự tuyển:</strong></span> Lập trình viên PHP và MySQL<br  /><br  /><span style="font-size:16px;"><strong>2. Mô tả công việc:</strong></span><ul>	<li>Phát triển hệ thống NukeViet.</li>	<li>Phân tích yêu cầu và lập trình riêng cho các dự án cụ thể.</li>	<li>Thực hiện các công đoạn để dưa website vào hoạt động như upload dữ liệu lên host, xử lý lỗi, sự cố liên quan.</li>	<li>Chịu trách nhiệm về chất lượng, trải nghiệm người dùng của sản phẩm trong khi sản phẩm hoạt động.</li>	<li>Thực hiện các công việc theo sự phân công của cấp trên.</li>	<li>Chịu trách nhiệm về chất lượng và tiến độ công việc.</li></ul><br  /><span style="font-size:16px;"><strong>3. Yêu cầu:</strong></span><ul>	<li>Nắm vững kiến thức hướng đối tượng, cấu trúc dữ liệu và giải thuật.</li>	<li>Có kinh nghiệm về PHP và các hệ cơ sở dữ liệu MySQL.…</li>	<li>Tư duy lập trình tốt, thiết kế CSDL chuẩn, biết xử lý nhanh các vấn đề khi phát sinh nghiệp vụ mới.</li>	<li>Sửa được các lỗi, nâng cấp tính năng cho các module đã có. 6. Viết module mới.</li>	<li>Biết đưa website lên host, xử lý lỗi, sự cố liên quan.</li>	<li>Chịu trách nhiệm về chất lượng và tiến độ công việc phụ trách.</li>	<li>Khả năng sáng tạo.</li>	<li>Đam mê công việc về lập trình web.</li></ul><br  /><em><strong>Ưu tiên các ứng viên:</strong></em><ul>	<li>Có kiến thức cơ bản về quản trị website NukeViệt.</li>	<li>Sử dụng và nắm rõ các tính năng, block thường dùng của NukeViet.</li>	<li>Biết sử dụng git để quản lý source code (nếu ứng viên chưa biết công ty sẽ đào tạo thêm).</li>	<li>Có khả năng giao tiếp với khách hàng (Trực tiếp, điện thoại, email).</li>	<li>Có khả năng làm việc độc lập và làm việc theo nhóm.</li>	<li>Có tinh thần trách nhiệm cao và chủ động trong công việc.</li>	<li>Có khả năng trình bày ý tưởng.</li></ul><br  /><span style="font-size:16px;"><strong>4. Quyền lợi:</strong></span><ul>	<li>Lương thoả thuận, trả qua ATM.</li>	<li>Thưởng theo dự án, các ngày lễ tết.</li>	<li>Hưởng các chế độ khác theo quy định của công ty và pháp luật: Bảo hiểm y tế, bảo hiểm xã hội...</li></ul><br  /><span style="font-size:16px;"><strong>5. Thời gian làm việc:</strong></span> Toàn thời gian cố định hoặc làm online.<br  /><br  /><span style="font-size:16px;"><strong>6. Hạn nộp hồ sơ:</strong></span> Không hạn chế, vui lòng kiểm tra tại http://vinades.vn/vi/news/Tuyen-dung/<br  /><br  /><span style="font-size:16px;"><strong>7. Cách thức đăng ký dự tuyển:</strong></span> Làm Hồ sơ xin việc<em><strong> (file mềm)</strong></em> và gửi về hòm thư tuyendung@vinades.vn<br  /><br  /><span style="font-size:16px;"><strong>8. Hồ sơ bao gồm:</strong></span><ul>	<li>Đơn xin việc: Tự biên soạn.</li>	<li>Thông tin ứng viên: Theo mẫu của VINADES.,JSC (dowload tại đây: Mẫu lý lịch ứng viên)</li></ul>&nbsp;<p style="text-align: justify;"><strong>Chi tiết vui lòng tham khảo tại:</strong> <a href="http://vinades.vn/vi/news/Tuyen-dung/" target="_blank">http://vinades.vn/vi/news/Tuyen-dung/</a><br  /><br  /><strong>Mọi thắc mắc vui lòng liên hệ:</strong></p><blockquote><p style="text-align: justify;"><strong>Công ty cổ phần phát triển nguồn mở Việt Nam.</strong><br  />Trụ sở chính: Phòng 2004 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội.</p><div>- Tel: +84-4-85872007 - Fax: +84-4-35500914<br  />- Email: <a href="mailto:contact@vinades.vn">contact@vinades.vn</a> - Website: <a href="http://www.vinades.vn/">http://www.vinades.vn</a></div></blockquote>', 'http://vinades.vn/vi/news/Tuyen-dung/', 2, 0, 1, 1, 1, 0),
(10, 'Cả hội trường như vỡ òa, rộn tiếng vỗ tay, tiếng cười nói chúc mừng các nhà khoa học, các nhóm tác giả đoạt Giải thưởng Nhân tài Đất Việt năm 2011. Năm thứ 7 liên tiếp, Giải thưởng đã phát hiện và tôn vinh nhiều tài năng của đất nước.<div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/01_b7d3f.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Sân khấu trước lễ trao giải.</span></div><div> &nbsp;</div><div align="center"> &nbsp;</div><div align="left"> Cơ cấu Giải thưởng của Nhân tài Đất Việt 2011 trong lĩnh vực CNTT bao gồm 2 hệ thống giải dành cho “Sản phẩm có tiềm năng ứng dụng” và “Sản phẩm đã ứng dụng rộng rãi trong thực tế”. Mỗi hệ thống giải sẽ có 1 giải Nhất, 1 giải Nhì và 1 giải Ba với trị giá giải thưởng tương đương là 100 triệu đồng, 50 triệu đồng và 30 triệu đồng cùng phần thưởng của các đơn vị tài trợ.</div><div align="center"> &nbsp;</div><div align="center"> <div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/03_f19bd.jpg" width="350" /></div> <div align="center"> Nhiều tác giả, nhóm tác giả đến lễ trao giải từ rất sớm.</div></div><p> Giải thưởng Nhân tài Đất Việt 2011 trong lĩnh vực Khoa học Tự nhiên được gọi chính thức là Giải thưởng Khoa học Tự nhiên Việt Nam sẽ có tối đa 6 giải, trị giá 100 triệu đồng/giải dành cho các lĩnh vực: Toán học, Cơ học, Vật lý, Hoá học, Các khoa học về sự sống, Các khoa học về trái đất (gồm cả biển) và môi trường, và các lĩnh vực khoa học liên ngành hoặc đa ngành của hai hoặc nhiều ngành nói trên. Viện Khoa học và Công nghệ Việt Nam thành lập Hội đồng giám khảo gồm các nhà khoa học tự nhiên hàng đầu trong nước để thực hiện việc đánh giá và trao giải.</p><div> Sau thành công của việc trao Giải thưởng Nhân tài Đất Việt trong lĩnh vực Y dược năm 2010, Ban Tổ chức tiếp tục tìm kiếm những chủ nhân xứng đáng cho Giải thưởng này trong năm 2011.</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/07_78b85.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Nguyên Tổng Bí thư BCH TW Đảng Cộng sản Việt Nam Lê Khả Phiêu tới&nbsp;dự Lễ trao giải.</span></div><div> &nbsp;</div><div> 45 phút trước lễ trao giải, không khí tại Cung Văn hóa Hữu nghị Việt - Xô đã trở nên nhộn nhịp. Sảnh phía trước Cung gần như chật kín. Rất đông bạn trẻ yêu thích công nghệ thông tin, sinh viên các trường đại học đã đổ về đây, cùng với đó là những bó hoa tươi tắn sẽ được dành cho các tác giả, nhóm tác giả đoạt giải.</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/09_aef87.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Phó Chủ tịch nước CHXHCN Việt Nam Nguyễn Thị Doan.</span></div><div> &nbsp;</div><div> Các vị khách quý cũng đến từ rất sớm. Tới tham dự lễ trao giải năm nay có ông Lê Khả Phiêu, nguyên Tổng Bí thư BCH TW Đảng Cộng sản Việt Nam; bà Nguyễn Thị Doan, Phó Chủ tịch nước CHXHCN Việt Nam; ông Vũ Oanh, nguyên Ủy viên Bộ Chính trị, nguyên Chủ tịch Hội Khuyến học Việt Nam; ông Nguyễn Bắc Son, Bộ trưởng Bộ Thông tin và Truyền thông; ông Đặng Ngọc Tùng, Chủ tịch Tổng Liên đoàn lao động Việt Nam; ông Phạm Văn Linh, Phó trưởng ban Tuyên giáo Trung ương; ông Đỗ Trung Tá, Phái viên của Thủ tướng Chính phủ về CNTT, Chủ tịch Hội đồng Khoa học công nghệ quốc gia; ông Nguyễn Quốc Triệu, nguyên Bộ trưởng Bộ Y tế, Trưởng Ban Bảo vệ Sức khỏe TƯ; bà Cù Thị Hậu, Chủ tịch Hội người cao tuổi Việt Nam; ông Lê Doãn Hợp, nguyên Bộ trưởng Bộ Thông tin Truyền thông, Chủ tịch Hội thông tin truyền thông số…</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/08_ba46c.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Bộ trưởng Bộ Thông tin và Truyền thông Nguyễn Bắc Son.</span></div><div align="center"> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/06_29592.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Giáo sư - Viện sỹ Nguyễn Văn Hiệu.</span></div><div align="center"> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/04_051f2.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Nguyên Bộ trưởng Bộ Y tế Nguyễn Quốc Triệu.</span></div><div align="center"> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/05_c7ea4.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Ông Vũ Oanh, nguyên Ủy viên Bộ Chính trị, nguyên Chủ tịch Hội Khuyến học Việt Nam.</span></div><p> Do tuổi cao, sức yếu hoặc bận công tác không đến tham dự lễ trao giải nhưng Đại tướng Võ Nguyên Giáp và Chủ tịch nước Trương Tấn Sang cũng gửi lẵng hoa đến chúc mừng lễ trao giải.</p><div> Đúng 20h, Lễ trao giải bắt đầu với bài hát “Nhân tài Đất Việt” do ca sỹ Thái Thùy Linh cùng ca sĩ nhí và nhóm múa biểu diễn. Các nhóm tác giả tham dự Giải thưởng năm 2011 và những tác giả của các năm trước từ từ bước ra sân khấu trong tiếng vỗ tay tán dương của khán giả.</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/12_74abf.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> &nbsp;</div><div align="center"> <div> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/PHN15999_3e629.jpg" style="MARGIN: 5px" width="450" /></div></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Tiết mục mở màn Lễ trao giải.</span></div><p> Trước Lễ trao giải Giải thưởng Nhân tài Đất Việt năm 2011, Đại tướng Võ Nguyên Giáp, Chủ tịch danh dự Hội Khuyến học Việt Nam, đã gửi thư chúc mừng, khích lệ Ban tổ chức Giải thưởng cũng như các nhà khoa học, các tác giả tham dự.</p><blockquote> <p> <em><span style="FONT-STYLE: italic">Hà Nội, ngày 16 tháng 11 năm 2011</span></em></p> <div> <em>Giải thưởng “Nhân tài đất Việt” do Hội Khuyến học Việt Nam khởi xướng đã bước vào năm thứ bảy (2005 - 2011) với ba lĩnh vực: Công nghệ thông tin, Khoa học tự nhiên và Y dược.</em></div></blockquote><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/thuDaituong1_767f4.jpg" style="MARGIN: 5px" width="400" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Thư của Đại tướng Võ Nguyên Giáp gửi BTC Giải thưởng Nhân tài đất Việt.</span></div><blockquote> <p> <em>Tôi gửi lời chúc mừng các nhà khoa học và các thí sinh được nhận giải thưởng “Nhân tài đất Việt” năm nay.</em></p> <p> <em>Mong rằng, các sản phẩm và các công trình nghiên cứu được trao giải sẽ được tiếp tục hoàn thiện và được ứng dụng rộng rãi trong đời sống, đem lại hiệu quả kinh tế và xã hội thiết thực.</em></p> <p> <em>Nhân ngày “Nhà giáo Việt Nam”, chúc Hội Khuyến học Việt nam, chúc các thầy giáo và cô giáo, với tâm huyết và trí tuệ của mình, sẽ đóng góp xứng đáng vào công cuộc đổi mới căn bản và toàn diện nền giáo dục nước nhà, để cho nền giáo dục Việt Nam thực sự là cội nguồn của nguyên khí quốc gia, đảm bảo cho mọi nhân cách và tài năng đất Việt được vun đắp và phát huy vì sự trường tồn, sự phát triển tiến bộ và bền vững của đất nước trong thời đại toàn cầu hóa và hội nhập quốc tế.</em></p> <p> <em>Chào thân ái,</em></p> <p> <strong><em>Chủ tịch danh dự Hội Khuyến học Việt Nam</em></strong></p> <p> <strong><em>Đại tướng Võ Nguyên Giáp</em></strong></p></blockquote><p> Phát biểu khai mạc Lễ trao giải, Nhà báo Phạm Huy Hoàn, TBT báo điện tử Dân trí, Trưởng Ban tổ chức, bày tỏ lời cám ơn chân thành về những tình cảm cao đẹp và sự quan tâm chăm sóc của Đại tướng Võ Nguyên Giáp và Chủ tịch nước Trương Tấn Sang đã và đang dành cho Nhân tài Đất Việt.</p><div> Nhà báo Phạm Huy Hoàn nhấn mạnh, Giải thưởng Nhân tài Đất Việt suốt 7 năm qua đều nhận được sự quan tâm của các vị lãnh đạo Đảng, Nhà nước và của toàn xã hội. Tại Lễ trao giải, Ban tổ chức luôn có vinh dự được đón tiếp&nbsp;các vị lãnh đạo&nbsp; Đảng và Nhà nước đến dự và trực tiếp trao Giải thưởng.</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/15_4670c.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Trưởng Ban tổ chức Phạm Huy Hoàn phát biểu khai mạc buổi lễ.</span></div><p> Năm 2011, Giải thưởng có 3 lĩnh vực được xét trao giải là CNTT, Khoa học tự nhiên và Y dược. Lĩnh&nbsp; vực CNTT đã đón nhận 204 sản phẩm tham dự từ mọi miền đất nước và cả nước ngoài như thí sinh Nguyễn Thái Bình từ bang California - Hoa Kỳ và một thí sinh ở Pháp cũng đăng ký tham gia.</p><div> “Cùng với lĩnh vực CNTT, năm nay, Hội đồng khoa học của Viện khoa học và công nghệ Việt Nam và Hội đồng khoa học - Bộ Y tế tiếp tục giới thiệu những nhà khoa học xuất&nbsp; sắc, có công trình nghiên cứu đem lại nhiều lợi ích cho xã hội trong lĩnh vực khoa học tự nhiên và lĩnh vực y dược. Đó là những bác sĩ tài năng, những nhà khoa học mẫn tuệ, những người đang ngày đêm thầm lặng cống hiến trí tuệ sáng tạo của mình cho xã hội trong công cuộc xây dựng đất nước.” - nhà báo Phạm Huy Hoàn nói.</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/14_6e18f.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Nhà báo Phạm Huy Hoàn, TBT báo điện tử Dân trí, Trưởng BTC Giải thưởng và ông Phan Hoàng Đức, Phó TGĐ Tập đoàn VNPT nhận lẵng hoa chúc mừng của Đại tướng Võ Nguyên Giáp và Chủ tịch nước Trương Tấn Sang.</span></div><p> Cũng theo Trưởng Ban tổ chức Phạm Huy Hoàn, đến nay, vị Chủ tịch danh dự đầu tiên của Hội Khuyến học Việt Nam, Đại tướng Võ Nguyên Giáp, đã bước qua tuổi 100 nhưng vẫn luôn dõi theo và động viên từng bước phát triển của Giải thưởng Nhân tài Đất Việt. Đại tướng luôn quan tâm chăm sóc Giải thưởng ngay từ khi Giải thưởng&nbsp; mới ra đời cách đây 7 năm.</p><p> Trước lễ trao giải, Đại tướng Võ Nguyên Giáp đã gửi thư chúc mừng, động viên Ban tổ chức. Trong thư, Đại tướng viết: “Mong rằng, các sản phẩm và các công trình nghiên cứu được trao giải sẽ được tiếp tục hoàn thiện và được ứng dụng rộng rãi trong đời sống, đem lại hiệu quả kinh tế và xã hội thiết thực.</p><p> Sau phần khai mạc, cả hội trường hồi hội chờ đợi phút vinh danh các nhà khoa học và các tác giả, nhóm tác giả đoạt giải.</p><div> <span style="FONT-WEIGHT: bold">* Giải thưởng Khoa học Tự nhiên Việt Nam </span>thuộc về 2 nhà khoa học GS.TS Trần Đức Thiệp và GS.TS Nguyễn Văn Đỗ - Viện Vật lý, Viện Khoa học công nghệ Việt Nam với công trình “Nghiên cứu cấu trúc hạt nhân và các phản ứng hạt nhân”.</div><div> &nbsp;</div><div align="center"> <div> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/khtn_d4aae.jpg" style="MARGIN: 5px" width="450" /></div></div><p> Hai nhà khoa học đã tiến hành thành công các nghiên cứu về phản ứng hạt nhân với nơtron, phản ứng quang hạt nhân, quang phân hạch và các phản ứng hạt nhân khác có cơ chế phức tạp trên các máy gia tốc như máy phát nơtron, Microtron và các máy gia tốc thẳng của Việt Nam và Quốc tế. Các nghiên cứu này đã góp phần làm sáng tỏ cấu trúc hạt nhân và cơ chế phản ứng hạt nhân, đồng thời cung cấp nhiều số liệu hạt nhân mới có giá trị cho Kho tàng số liệu hạt nhân.</p><p> GS.TS Trần Đức Thiệp và GS.TS Nguyễn Văn Đỗ đã khai thác hiệu quả hai máy gia tốc đầu tiên của Việt Nam là máy phát nơtron NA-3-C và Microtron MT-17 trong nghiên cứu cơ bản, nghiên cứu ứng dụng và đào tạo nhân lực. Trên cơ sở các thiết bị này, hai nhà khoa học đã tiến hành thành công những nghiên cứu cơ bản thực nghiệm đầu tiên về phản ứng hạt nhân ở Việt Nam; nghiên cứu và phát triển các phương pháp phân tích hạt nhân hiện đại và áp dụng thành công ở Việt Nam.</p><div> Bà Nguyễn Thị Doan, Phó Chủ tịch nước CHXHCNVN và Giáo sư - Viện sỹ Nguyễn Văn Hiệu trao giải thưởng cho 2 nhà khoa học.</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/khtn2_e2865.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Phó Chủ tịch nước CHXHCNVN Nguyễn Thị Doan và Giáo sư - Viện sỹ Nguyễn Văn Hiệu trao giải thưởng cho 2 nhà khoa học GS.TS Trần Đức Thiệp và GS.TS Nguyễn Văn Đỗ.</span></div><p> GS.VS Nguyễn Văn Hiệu chia sẻ: “Cách đây không lâu, Chính phủ đã ký quyết định xây dựng nhà máy điện hạt nhân trong điều kiện đất nước còn nhỏ bé, nghèo khó và vì thế việc đào tạo nhân lực là nhiệm vụ số 1 hiện nay. Rất may, Việt Nam có 2 nhà khoa học cực kỳ tâm huyết và nổi tiếng trong cả nước cũng như trên thế giới. Hội đồng khoa học chúng tôi muốn xướng tên 2 nhà khoa học này để Chính phủ huy động cùng phát triển xây dựng nhà máy điện hạt nhân.”</p><p> GS.VS Hiệu nhấn mạnh, mặc dù điều kiện làm việc của 2 nhà khoa học không được quan tâm, làm việc trên những máy móc cũ kỹ được mua từ năm 1992 nhưng 2 ông vẫn xay mê cống hiến hết mình cho lĩnh Khoa học tự nhiên Việt Nam.</p><p> <span style="FONT-WEIGHT: bold">* Giải thưởng Nhân tài Đất Việt trong lĩnh vực Y Dược:</span> 2 giải</p><div> <span style="FONT-WEIGHT: bold">1.</span> Nhóm nghiên cứu của Bệnh viện Hữu nghị Việt - Đức với công trình <span style="FONT-STYLE: italic">“Nghiên cứu triển khai ghép gan, thận, tim lấy từ người cho chết não”</span>.</div><div> &nbsp;</div><div align="center"> <div> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/y_3dca2.jpg" style="MARGIN: 5px" width="450" /></div></div><div> &nbsp;</div><div> Tại bệnh viện Việt Đức, tháng 4/2011, các ca ghép tạng từ nguồn cho là người bệnh chết não được triển khai liên tục. Với 4 người cho chết não hiến tạng, bệnh viện đã ghép tim cho một trường hợp,&nbsp;2 người được ghép gan, 8 người được ghép thận, 2 người được ghép van tim và tất cả các ca ghép này đều thành công, người bệnh được ghép đã có một cuộc sống tốt hơn với tình trạng sức khỏe ổn định.</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/y2_cb5a1.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Nguyên Tổng Bí Ban chấp hành TW Đảng CSVN Lê Khả Phiêu và ông Vũ Văn Tiền, Chủ tịch Hội đồng quản trị Ngân hàng An Bình trao giải thưởng cho nhóm nghiên cứu của BV Hữu nghị Việt - Đức.</span></div><p> Công trong việc ghép tạng từ người cho chết não không chỉ thể hiện năng lực, trình độ, tay nghề của bác sĩ Việt Nam mà nó còn mang một ý nghĩa nhân văn to lớn, mang một thông điệp gửi đến những con người giàu lòng nhân ái với nghĩa cử cao đẹp đã hiến tạng để cứu sống những người bệnh khác.</p><p> <span style="FONT-WEIGHT: bold">2.</span> Hội đồng ghép tim Bệnh viện Trung ương Huế với công trình nghiên cứu <span style="FONT-STYLE: italic">“Triển khai ghép tim trên người lấy từ người cho chết não”</span>.</p><div> Đề tài được thực hiện dựa trên ca mổ ghép tim thành công lần đầu tiên ở Việt Nam của chính 100% đội ngũ y, bác sĩ của Bệnh viện Trung ương Huế đầu tháng 3/2011. Bệnh nhân được ghép tim thành công là anh Trần Mậu Đức (26 tuổi, ở phường Phú Hội, TP. Huế).</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/y3_7768c.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Hội đồng ghép tim BV Trung ương Huế nhận Giải thưởng Nhân tài Đất Việt.</span></div><p> Ghép tim từ người cho chết não đến người bị bệnh tim cần được ghép tim phải đảm bảo các yêu cầu: đánh giá chức năng các cơ quan; đánh giá tương hợp miễn dịch và phát hiện nguy cơ tiềm ẩn có thể xảy ra trong và sau khi ghép tim để từ đó có phương thức điều trị thích hợp. Có tới 30 xét nghiệm cận lâm sàng trung và cao cấp tiến hành cho cả người cho tim chết não và người sẽ nhận ghép tim tại hệ thống labo của bệnh viện.</p><p> ---------------------</p><p> <span style="FONT-WEIGHT: bold">* Giải thưởng Nhân tài đất Việt Lĩnh vực Công nghệ thông tin.</span></p><p> <span style="FONT-STYLE: italic">Hệ thống sản phẩm đã ứng dụng thực tế:</span></p><p> <span style="FONT-STYLE: italic">Giải Nhất:</span> Không có.</p><p> <span style="FONT-STYLE: italic">Giải Nhì:</span> Không có</p><p> <span style="FONT-STYLE: italic">Giải Ba:</span> 3 giải, mỗi giải trị giá 30 triệu đồng.</p><div> <span style="FONT-WEIGHT: bold">1.</span> <span style="FONT-STYLE: italic">“Bộ cạc xử lý tín hiệu HDTV”</span> của nhóm HD Việt Nam.</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/hdtv_13b10.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Nhóm HDTV Việt Nam lên nhận giải.</span></div><p> Đây là bộ cạc xử lý tín hiệu HDTV đầu tiên tại Việt Nam đạt tiêu chuẩn OpenGear. Bộ thiết bị bao gồm 2 sản phẩm là cạc khuếch đại phân chia tín hiệu HD DA và cạc xử lý tín hiệu HD FX1. Nhờ bộ cạc này mà người sử dụng cũng có thể điều chỉnh mức âm thanh hoặc video để tín hiệu của kênh tuân theo mức chuẩn và không phụ thuộc vào chương trình đầu vào.</p><div> <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">2.</span> <span style="FONT-STYLE: italic">“Mã nguồn mở NukeViet”</span> của nhóm tác giả Công ty cổ phần phát triển nguồn mở Việt Nam (VINADES.,JSC).</div><div> &nbsp;</div><div align="center"> <div> <img _fl="" align="middle" alt="NukeViet nhận giải ba Nhân tài đất Việt 2011" src="/uploads/news/nukeviet-nhantaidatviet2011.jpg" style="margin: 5px; width: 450px; height: 301px;" /></div></div><p> NukeViet là CMS mã nguồn mở đầu tiên của Việt Nam có quá trình phát triển lâu dài nhất, có lượng người sử dụng đông nhất. Hiện NukeViet cũng là một trong những mã nguồn mở chuyên nghiệp đầu tiên của Việt Nam, cơ quan chủ quản của NukeViet là VINADES.,JSC - đơn vị chịu trách nhiệm phát triển NukeViet và triển khai NukeViet thành các ứng dụng cụ thể cho doanh nghiệp.</p><div> <span style="FONT-WEIGHT: bold">3.</span> <span style="FONT-STYLE: italic">“Hệ thống ngôi nhà thông minh homeON”</span> của nhóm Smart home group.</div><div> &nbsp;</div><div align="center"> <div> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/PHN16132_82014.jpg" style="MARGIN: 5px" width="450" /></div></div><p> Sản phẩm là kết quả từ những nghiên cứu miệt mài nhằm xây dựng một ngôi nhà thông minh, một cuộc sống xanh với tiêu chí: An toàn, tiện nghi, sang trọng và tiết kiệm năng lượng, hưởng ứng lời kêu gọi tiết kiệm năng lượng của Chính phủ.&nbsp;</p><p> <strong><span style="FONT-STYLE: italic">* Hệ thống sản phẩm có tiềm năng ứng dụng:</span></strong></p><p> <span style="FONT-STYLE: italic">Giải Nhất: </span>Không có.</p><div> <span style="FONT-STYLE: italic">Giải Nhì:</span> trị giá 50 triệu đồng: <span style="FONT-STYLE: italic">“Dịch vụ Thông tin và Tri thức du lịch ứng dụng cộng nghệ ngữ nghĩa - iCompanion”</span> của nhóm tác giả SIG.</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/nhi_7eee0.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Nhóm tác giả SIG nhận giải Nhì Nhân tài đất Việt 2011 ở hệ thống sản phẩm có tiềm năng ứng dụng.</span></div><p> ICompanion là hệ thống thông tin đầu tiên ứng dụng công nghệ ngữ nghĩa trong lĩnh vực du lịch - với đặc thù khác biệt là cung cấp các dịch vụ tìm kiếm, gợi ý thông tin “thông minh” hơn, hướng người dùng và kết hợp khai thác các tính năng hiện đại của môi trường di động.</p><p> Đại diện nhóm SIG chia sẻ: “Tinh thần sáng tạo và lòng khát khao muốn được tạo ra các sản phẩm mới có khả năng ứng dụng cao trong thực tiễn luôn có trong lòng của những người trẻ Việt Nam. Cảm ơn ban tổ chức và những nhà tài trợ đã giúp chúng tôi có một sân chơi thú vị để khuyến khích và chắp cánh thực hiện ước mơ của mình. Xin cảm ơn trường ĐH Bách Khoa đã tạo ra một môi trường nghiên cứu và sáng tạo, gắn kết 5 thành viên trong nhóm.”</p><p> <span style="FONT-STYLE: italic">Giải Ba:</span> 2 giải, mỗi giải trị giá 30 triệu đồng.</p><div> <span style="FONT-WEIGHT: bold">1. </span><span style="FONT-STYLE: italic">“Bộ điều khiển IPNET”</span> của nhóm IPNET</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/PHN16149_ed58d.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Nhà báo Phạm Huy Hoàn, Trưởng Ban Tổ chức Giải thưởng NTĐV, Tổng Biên tập báo điện tử Dân trí và ông Tạ Hữu Thanh - Phó TGĐ Jetstar Pacific trao giải cho nhóm IPNET.</span></div><p> Bằng cách sử dụng kiến thức thiên văn học để tính giờ mặt trời lặn và mọc tại vị trí cần chiếu sáng được sáng định bởi kinh độ, vĩ độ cao độ, hàng ngày sản phẩm sẽ tính lại thời gian cần bật/tắt đèn cho phù hợp với giờ mặt trời lặn/mọc.</p><div> <span style="FONT-WEIGHT: bold">2.</span> <span style="FONT-STYLE: italic">“Hệ thống lập kế hoạch xạ trị ung thư quản lý thông tin bệnh nhân trên web - LYNX”</span> của nhóm LYNX.</div><div> &nbsp;</div><div align="center"> <div> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/3tiem-nang_32fee.jpg" style="MARGIN: 5px" width="450" /></div></div><p> Đây là loại phần mềm hoàn toàn mới ở Việt Nam, là hệ thống lập kế hoạch và quản lý thông tin của bệnh nhân ung thư qua Internet (LYNX) dựa vào nền tảng Silverlight của Microsoft và kiến thức chuyên ngành Vật lý y học. LYNX giúp ích cho các nhà khoa học, bác sĩ, kỹ sư vật lý, bệnh nhân và mọi thành viên trong việc quản lý và theo dõi hệ thống xạ trị ung thư một cách tổng thể. LYNX có thể được sử dụng thông qua các thiết bị như máy tính cá nhân, máy tính bảng… và các trình duyệt Internet Explorer, Firefox, Chrome…</p><div> Chương trình trao giải đã được truyền hình trực tiếp trên VTV2 - Đài Truyền hình Việt Nam và tường thuật trực&nbsp;tuyến trên báo điện tử Dân trí từ 20h tối 20/11/2011.</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/NVH0545_c898e.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/NVH0560_c995c.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/PHN16199_36a5c.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> &nbsp;</div><div align="center"> <div align="center"> <table border="1" cellpadding="0" cellspacing="0" width="90%"> <tbody> <tr> <td> <div> <span style="FONT-WEIGHT: bold"><span style="FONT-WEIGHT: normal; FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Khởi xướng từ năm 2005, Giải thưởng Nhân tài Đất Việt đã phát hiện và tôn vinh nhiều tài năng trong lĩnh vực CNTT-TT, Khoa học tự nhiên và Y dược, trở thành một sân chơi bổ ích cho những người yêu thích CNTT. Mỗi năm, Giải thưởng ngày càng thu hút số lượng tác giả và sản phẩm tham gia đông đảo và nhận được sự quan tâm sâu sắc của lãnh đạo Đảng, Nhà nước cũng như công chúng.</span></span></div> <div> <span style="FONT-WEIGHT: bold">&nbsp;</span></div> <div> <span style="FONT-WEIGHT: bold"><span style="FONT-WEIGHT: normal; FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Đối tượng tham gia Giải thưởng trong lĩnh vực CNTT là những người Việt Nam ở mọi lứa tuổi, đang sinh sống trong cũng như ngoài nước. Năm 2006, Giải thưởng có sự tham gia của thí sinh đến từ 8 nước trên thế giới và 40 tỉnh thành của Việt Nam. Từ năm 2009, Giải thưởng được mở rộng sang lĩnh vực Khoa học tự nhiên, và năm 2010 là lĩnh vực Y dược, vinh danh những nhà khoa học trong các lĩnh vực này.</span>&nbsp;</span></div> <div> <span style="FONT-WEIGHT: bold">&nbsp;</span></div> </td> </tr> </tbody> </table> </div></div>', '', 2, 0, 1, 1, 1, 0);
INSERT INTO `nv4_vi_news_detail` (`id`, `bodyhtml`, `sourcetext`, `imgposition`, `copyright`, `allowed_send`, `allowed_print`, `allowed_save`, `gid`) VALUES
(11, '<div style="text-align: justify;">Có hiệu lực từ ngày 20/1/2015, Thông tư này thay thế cho Thông tư 41/2009/TT-BTTTT (Thông tư 41) ngày 30/12/2009 ban hành Danh mục các sản phẩm phần mềm nguồn mở đáp ứng yêu cầu sử dụng trong cơ quan, tổ chức nhà nước.<br />\r\n<br />\r\nSản phẩm phần mềm nguồn mở được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước trong Thông tư 41/2009/TT-BTTTT vừa được Bộ TT&amp;TT ban hành, là những&nbsp;sản phẩm đã đáp ứng các tiêu chí về tính năng kỹ thuật cũng như tính mở và bền vững, và NukeViet là một trong số đó.</div>\r\n\r\n<p style="text-align: justify;">Cụ thể, theo Thông tư 20, sản phẩm phần mềm nguồn mở được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước phải đáp các tiêu chí về chức năng, tính năng kỹ thuật bao gồm: phần mềm có các chức năng, tính năng kỹ thuật phù hợp với các yêu cầu nghiệp vụ hoặc các quy định, hướng dẫn tương ứng về ứng dụng CNTT trong các cơ quan, tổ chức nhà nước; phần mềm đáp ứng được yêu cầu tương thích với hệ thống thông tin, cơ sở dữ liệu hiện có của các cơ quan, tổ chức.</p>\r\n\r\n<p style="text-align: justify;">Bên cạnh đó, các sản phẩm phần mềm nguồn mở được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước còn phải đáp ứng tiêu chí về tính mở và tính bền vững của phần mềm. Cụ thể, phần mềm phải đảm bảo các quyền: tự do sử dụng phần mềm không phải trả phí bản quyền, tự do phân phối lại phần mềm, tự do sửa đổi phần mềm theo nhu cầu sử dụng, tự do phân phối lại phần mềm đã chỉnh sửa (có thể thu phí hoặc miễn phí); phần mềm phải có bản mã nguồn, bản cài đặt được cung cấp miễn phí trên mạng; có điểm ngưỡng thất bại PoF từ 50 điểm trở xuống và điểm mô hình độ chín nguồn mở OSMM từ 60 điểm trở lên.</p>\r\n\r\n<p style="text-align: justify;">Căn cứ những tiêu chuẩn trên, thông tư 20 quy định cụ thể Danh mục 31 sản phẩm thuộc 11 loại phần mềm được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước.&nbsp;NukeViet thuộc danh mục hệ quản trị nội dung nguồn mở. Chi tiết thông tư và danh sách 31 sản phẩm phần mềm nguồn mở được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước có&nbsp;<a href="http://vinades.vn/vi/download/van-ban-luat/Thong-tu-20-2014-TT-BTTTT/" target="_blank">tại đây</a>.</p>\r\n\r\n<p style="text-align: justify;">Thông tư 20/2014/TT-BTTTT quy định rõ: Các cơ quan, tổ chức nhà nước khi có nhu cầu sử dụng vốn nhà nước để đầu tư xây dựng, mua sắm hoặc thuê sử dụng các loại phần mềm có trong Danh mục hoặc các loại phần mềm trên thị trường đã có sản phẩm phần mềm nguồn mở tương ứng thỏa mãn các tiêu chí trên (quy định tại Điều 3 Thông tư 20) thì phải&nbsp;ưu tiên lựa chọn các sản phẩm phần mềm nguồn mở tương ứng, đồng thời phải thể hiện rõ sự ưu tiên này trong các tài liệu&nbsp;như thiết kế sơ bộ, thiết kế thi công, kế hoạch đấu thầu, kế hoạch đầu tư, hồ sơ mời thầu, yêu cầu chào hàng, yêu cầu báo giá hoặc các yêu cầu mua sắm khác.</p>\r\n\r\n<p style="text-align: justify;">Đồng thời,&nbsp;các cơ quan, tổ chức nhà nước phải đảm bảo không đưa ra các yêu cầu, điều kiện, tính năng kỹ thuật có thể dẫn đến việc loại bỏ các sản phẩm phần mềm nguồn mở&nbsp;trong các tài liệu như thiết kế sơ bộ, thiết kế thi công, kế hoạch đấu thầu, kế hoạch đầu tư, hồ sơ mời thầu, yêu cầu chào hàng, yêu cầu báo giá hoặc các yêu cầu mua sắm khác.</p>\r\n\r\n<p style="text-align: justify;">Như vậy, sau thông tư số 08/2010/TT-BGDĐT của Bộ GD&amp;ĐT ban hành ngày 01-03-2010 quy định về sử dụng phần mềm tự do mã nguồn mở trong các cơ sở giáo dục trong đó đưa NukeViet vào danh sách các mã nguồn mở được khuyến khích sử dụng trong giáo dục, thông tư 20/2014/TT-BTTTT đã mở đường cho NukeViet vào sử dụng cho các cơ quan, tổ chức nhà nước. Các đơn vị hỗ trợ triển khai NukeViet cho các cơ quan nhà nước có thể sử dụng quy định này để được ưu tiên triển khai cho các dự án website, cổng thông tin cho các cơ quan, tổ chức nhà nước.<br />\r\n<br />\r\nThời gian tới, Công ty cổ phần phát triển nguồn mở Việt Nam (<a href="http://vinades.vn/" target="_blank">VINADES.,JSC</a>) - đơn vị chủ quản của NukeViet - sẽ cùng với Ban Quản Trị NukeViet tiếp tục hỗ trợ các doanh nghiệp đào tạo nguồn nhân lực chính quy phát triển NukeViet nhằm cung cấp dịch vụ ngày một tốt hơn cho chính phủ và các cơ quan nhà nước, từng bước xây dựng và hình thành liên minh các doanh nghiệp phát triển NukeViet, đưa sản phẩm phần mềm nguồn mở Việt không những phục vụ tốt thị trường Việt Nam mà còn từng bước tiến ra thị trường khu vực và các nước đang phát triển khác trên thế giới nhờ vào lợi thế phần mềm nguồn mở đang được chính phủ nhiều nước ưu tiên phát triển.</p>', 'mic.gov.vn', 2, 0, 1, 1, 1, 0),
(12, '<ol style="margin-top:0pt;margin-bottom:0pt;"><li dir="ltr" style="list-style-type:upper-roman;font-size:17px;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.2;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:17px;background-color:transparent;font-weight:700;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;">Nhân viên văn phòng</span></p>	</li></ol>&nbsp;<ul style="margin-top:0pt;margin-bottom:0pt;">	<li dir="ltr" style="list-style-type:disc;font-size:17px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.2;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:17px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Làm công việc trưởng phòng giao</span></p>	</li></ul>&nbsp;<ol style="margin-top:0pt;margin-bottom:0pt;">	<li dir="ltr" style="list-style-type:decimal;font-size:17px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.2;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:17px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Lập kế hoạch kinh doanh</span></p>	</li></ol><ul style="margin-top:0pt;margin-bottom:0pt;">	<li dir="ltr" style="list-style-type:disc;font-size:17px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.2;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:17px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Lập kế hoạch công tác tuần, tháng trình Trưởng phòng kinh doanh duyệt. Thực hiện theo kế hoạch được duyệt.</span></p>	</li></ul><ol start="2" style="margin-top:0pt;margin-bottom:0pt;">	<li dir="ltr" style="list-style-type:decimal;font-size:17px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.2;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:17px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Công việc chung:</span></p>	</li></ol><ul style="margin-top:0pt;margin-bottom:0pt;">	<li dir="ltr" style="list-style-type:disc;font-size:17px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.2;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:17px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Trực điện thoại</span></p>	</li>	<li dir="ltr" style="list-style-type:disc;font-size:17px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.2;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:17px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Trực các trang liên hệ trực tuyến</span></p>	</li>	<li dir="ltr" style="list-style-type:disc;font-size:17px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.2;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:17px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Đi lại lấy biên bản, hồ sơ</span></p>	</li></ul><ol start="3" style="margin-top:0pt;margin-bottom:0pt;">	<li dir="ltr" style="list-style-type:decimal;font-size:17px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.2;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:17px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Tiếp xúc khách hàng:</span></p>	</li></ol><ul style="margin-top:0pt;margin-bottom:0pt;">	<li dir="ltr" style="list-style-type:disc;font-size:17px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.2;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:17px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Nắm được quy trình tiếp xúc khách hàng, lấy thông tin khách hàng, quy trình nhận &nbsp;và xử lý khiếu nại thông tin, ghi nhận đầy đủ theo các biểu mẫu của các quy trình này.</span></p>	</li>	<li dir="ltr" style="list-style-type:disc;font-size:17px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.2;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:17px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Tiếp xúc khách hàng và ghi nhận toàn bộ các thông tin của khách hàng trong báo cáo tiếp xúc khách hàng. Báo cáo nội dung tiếp xúc khách hàng trong ngày cho Trưởng nhóm kinh doanh.</span></p>	</li></ul><ol start="4" style="margin-top:0pt;margin-bottom:0pt;">	<li dir="ltr" style="list-style-type:decimal;font-size:17px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.2;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:17px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Báo giá, hợp đồng.</span></p>	</li></ol><ul style="margin-top:0pt;margin-bottom:0pt;">	<li dir="ltr" style="list-style-type:disc;font-size:17px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.2;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:17px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Lên dự thảo hợp đồng sau khi khách hàng đã đồng ý cơ bản, chuyển cho Trưởng phòng xin ý kiến về các điều khoản hợp đồng. Lập thủ tục ký kết hợp đồng, lưu bản copy hợp đồng.</span></p>	</li>	<li dir="ltr" style="list-style-type:disc;font-size:17px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.2;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:17px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Trực tiếp thực hiện, đốc thúc thực hiện hợp đồng, bao gồm các thủ tục giao hàng, xuất hoá đơn, cùng khách hàng kiểm tra chất lượng sản phẩm giao.</span></p>	</li></ul><ul style="margin-top:0pt;margin-bottom:0pt;">	<li dir="ltr" style="list-style-type:disc;font-size:17px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.2;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:17px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Nhận và xử lý các khiếu nại của khách hàng về quy trình, tiến độ, hỗ trợ kỹ thuật….</span></p>	</li></ul><ul style="margin-top:0pt;margin-bottom:0pt;">	<li dir="ltr" style="list-style-type:disc;font-size:17px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.2;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:17px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Theo dõi quá trình thanh lý hợp đồng, hỗ trợ phòng kế toán đốc thúc công nợ, chỉ xong trách nhiệm khi khách hàng đã thanh toán xong.</span></p>	</li></ul><ol start="5" style="margin-top:0pt;margin-bottom:0pt;">	<li dir="ltr" style="list-style-type:decimal;font-size:17px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.2;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:17px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Tìm kiếm khách hàng</span></p>	</li></ol><ul style="margin-top:0pt;margin-bottom:0pt;">	<li dir="ltr" style="list-style-type:disc;font-size:17px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.2;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:17px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Giao dịch, tìm hiểu nhu cầu của khách hàng. Tìm kiếm khách hàng tiềm năng.</span></p>	</li></ul><ol start="6" style="margin-top:0pt;margin-bottom:0pt;">	<li dir="ltr" style="list-style-type:decimal;font-size:17px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.2;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:17px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Học tập nâng cao kiến thức, kỹ năng</span></p>	</li></ol><ul style="margin-top:0pt;margin-bottom:0pt;">	<li dir="ltr" style="list-style-type:disc;font-size:17px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.2;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:17px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Tham gia các lớp đào tạo do công ty cử đi.</span></p>	</li></ul><ul style="margin-top:0pt;margin-bottom:0pt;">	<li dir="ltr" style="list-style-type:disc;font-size:17px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.2;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:17px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Cập nhật kiến thức công việc qua việc, đọc các sách báo về kinh doanh và tiếp thị; duy trì các mối quan hệ khách hàng.</span></p>	</li></ul><p dir="ltr" style="line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;"><span style="font-size:17px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;">Tiêu chuẩn:</span></p><ul style="margin-top:0pt;margin-bottom:0pt;">	<li dir="ltr" style="list-style-type:disc;font-size:17px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.2;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:17px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Trình độ Cao đẳng trở lên chuyên ngành Quản trị kinh doanh, Kinh tế thương mại, Marketting.</span></p>	</li>	<li dir="ltr" style="list-style-type:disc;font-size:17px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.2;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:17px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Sử dụng thành thạo vi tính văn phòng, các phần mềm liên quan đến công việc, làm việc độc lập.</span></p>	</li>	<li dir="ltr" style="list-style-type:disc;font-size:17px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.2;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:17px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Nhiệt tình, năng động, độc lập, nhạy bén.</span></p>	</li></ul><ul style="margin-top:0pt;margin-bottom:0pt;">	<li dir="ltr" style="list-style-type:disc;font-size:17px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.2;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:17px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Thúc đẩy kinh doanh, kỹ năng giao tiếp.</span></p>	</li></ul><p dir="ltr" style="line-height:1.2;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:17px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;">Quyền lợi:</span></p><ul style="margin-top:0pt;margin-bottom:0pt;">	<li dir="ltr" style="list-style-type:disc;font-size:17px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.2;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:17px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Được đào tạo kĩ năng bán hàng, được công ty hỗ trợ tham gia khóa học bán hàng chuyên nghiệp.</span></p>	</li></ul><ul style="margin-top:0pt;margin-bottom:0pt;">	<li dir="ltr" style="list-style-type:disc;font-size:17px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.2;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:17px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Lương cứng: 3.000.000 VNĐ. Lương trả qua ATM, được xét tăng lương 3 tháng một lần dựa trên doanh thu.</span></p>	</li></ul><ul style="margin-top:0pt;margin-bottom:0pt;">	<li dir="ltr" style="list-style-type:disc;font-size:17px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.2;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:17px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Bậc lương xét trên năng lực bán hàng.</span></p>	</li></ul><ul style="margin-top:0pt;margin-bottom:0pt;">	<li dir="ltr" style="list-style-type:disc;font-size:17px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.2;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:17px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Thưởng theo dự án, các ngày lễ tết.</span></p>	</li>	<li dir="ltr" style="list-style-type:disc;font-size:17px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.2;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:17px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Hưởng các chế độ khác theo quy định của công ty và pháp luật: Bảo hiểm y tế, bảo hiểm xã hội.</span></p>	</li></ul>&nbsp;<ol start="2" style="margin-top:0pt;margin-bottom:0pt;">	<li dir="ltr" style="list-style-type:upper-roman;font-size:17px;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.2;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:17px;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Nhân viên bán hàng Nukeviet Edu Gate</span></p>	</li></ol><ul style="margin-top:0pt;margin-bottom:0pt;">	<li dir="ltr" style="list-style-type:disc;font-size:17px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: -24px;">	<p dir="ltr" style="line-height:1.2;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:17px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Làm công việc trưởng phòng giao</span></p>	</li>	<li dir="ltr" style="list-style-type:disc;font-size:17px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: -24px;">	<p dir="ltr" style="line-height:1.2;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:17px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Quy trình chi tiết như sau:</span></p>	</li></ul><ol style="margin-top:0pt;margin-bottom:0pt;">	<li dir="ltr" style="list-style-type:decimal;font-size:17px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.2;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:17px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Học việc</span></p>	</li></ol><ul style="margin-top:0pt;margin-bottom:0pt;">	<li dir="ltr" style="list-style-type:disc;font-size:17px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.2;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:17px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Thời gian: 3 tháng. </span></p>	</li></ul><p dir="ltr" style="line-height:1.2;margin-top:0pt;margin-bottom:0pt;margin-left: 36pt;"><span style="font-size:17px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Yêu cầu:</span></p><ul style="margin-top:0pt;margin-bottom:0pt;">	<li dir="ltr" style="list-style-type:disc;font-size:17px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.2;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:17px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Hoàn thiện bảng danh sách các Phòng- Sở giáo dục</span></p>	</li>	<li dir="ltr" style="list-style-type:disc;font-size:17px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.2;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:17px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Gọi điện- gây sự chú ý với khách hàng</span></p>	</li>	<li dir="ltr" style="list-style-type:disc;font-size:17px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.2;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:17px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Lập kế hoạch công việc</span></p>	</li></ul><p dir="ltr" style="line-height:1.2;margin-top:0pt;margin-bottom:0pt;margin-left: 36pt;"><span style="font-size:17px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">+ Lập kế hoạch công tác tuần, tháng trình Trưởng phòng kinh doanh duyệt. Thực hiện theo kế hoạch được duyệt.</span></p><p dir="ltr" style="line-height:1.2;margin-top:0pt;margin-bottom:0pt;margin-left: 36pt;"><span style="font-size:17px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Quyền lợi:</span></p><ul style="margin-top:0pt;margin-bottom:0pt;">	<li dir="ltr" style="list-style-type:disc;font-size:17px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.2;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:17px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Được tài trợ khóa học “Người bán hàng thực tiễn”, tài trợ ăn trưa, máy tính…</span></p>	</li>	<li dir="ltr" style="list-style-type:disc;font-size:17px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.2;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:17px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Nếu ký được hợp đồng thì được % theo quy định của công ty.</span></p>	</li></ul>&nbsp;<ol start="2" style="margin-top:0pt;margin-bottom:0pt;">	<li dir="ltr" style="list-style-type:decimal;font-size:17px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.2;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:17px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Thử việc:</span></p>	</li></ol><ul style="margin-top:0pt;margin-bottom:0pt;">	<li dir="ltr" style="list-style-type:disc;font-size:17px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.2;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:17px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Sau 3 tháng học việc đã gây được sự chú ý của khách hàng</span></p>	</li>	<li dir="ltr" style="list-style-type:disc;font-size:17px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.2;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:17px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Hoặc ngay sau khi ký được hợp đồng đầu tiên</span></p>	</li></ul><ol start="3" style="margin-top:0pt;margin-bottom:0pt;">	<li dir="ltr" style="list-style-type:decimal;font-size:17px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.2;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:17px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Nhân viên chính thức:</span></p>	</li></ol><ul style="margin-top:0pt;margin-bottom:0pt;">	<li dir="ltr" style="list-style-type:disc;font-size:17px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.2;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:17px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Hoàn thiện khóa học “Người bán hàng thực tiễn”</span></p>	</li>	<li dir="ltr" style="list-style-type:disc;font-size:17px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.2;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:17px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Sau 2 tháng thử việc thấy có tiến bộ rõ rệt, có tiềm năng.</span></p>	</li>	<li dir="ltr" style="list-style-type:disc;font-size:17px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.2;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:17px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Hoặc ngay khi ký được hợp đồng và Hoàn thiện khóa học “Người bán hàng thực tiễn”</span></p>	</li></ul><p dir="ltr" style="line-height:1.2;margin-top:0pt;margin-bottom:0pt;text-align: justify;"><span style="font-size:17px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;">Tiêu chuẩn:</span></p><ul style="margin-top:0pt;margin-bottom:0pt;">	<li dir="ltr" style="list-style-type:disc;font-size:17px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.2;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:17px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Trình độ Cao đẳng trở lên chuyên ngành Quản trị kinh doanh, Kinh tế thương mại, Marketting.</span></p>	</li>	<li dir="ltr" style="list-style-type:disc;font-size:17px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.2;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:17px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Sử dụng thành thạo vi tính văn phòng, các phần mềm liên quan đến công việc, làm việc độc lập.</span></p>	</li>	<li dir="ltr" style="list-style-type:disc;font-size:17px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.2;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:17px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Nhiệt tình, năng động, độc lập, nhạy bén.</span></p>	</li>	<li dir="ltr" style="list-style-type:disc;font-size:17px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.2;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:17px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Thúc đẩy kinh doanh, kỹ năng giao tiếp.</span></p>	</li></ul><p dir="ltr" style="line-height:1.2;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:17px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;">Quyền lợi:</span></p><ul style="margin-top:0pt;margin-bottom:0pt;">	<li dir="ltr" style="list-style-type:disc;font-size:17px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.2;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:17px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Được đào tạo kĩ năng bán hàng, được công ty hỗ trợ tham gia khóa học bán hàng chuyên nghiệp.</span></p>	</li>	<li dir="ltr" style="list-style-type:disc;font-size:17px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.2;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:17px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Lương cứng: 3.000.000 VNĐ. Lương trả qua ATM, được xét tăng lương 3 tháng một lần dựa trên doanh thu.</span></p>	</li>	<li dir="ltr" style="list-style-type:disc;font-size:17px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.2;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:17px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Được trực tiếp nhận % hoa hồng sau mỗi hợp đồng theo quy định của công ty</span></p>	</li>	<li dir="ltr" style="list-style-type:disc;font-size:17px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.2;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:17px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Bậc lương xét trên năng lực bán hàng.</span></p>	</li>	<li dir="ltr" style="list-style-type:disc;font-size:17px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.2;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:17px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Thưởng theo dự án, các ngày lễ tết.</span></p>	</li>	<li dir="ltr" style="list-style-type:disc;font-size:17px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.2;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:17px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Hưởng các chế độ khác theo quy định của công ty và pháp luật: Bảo hiểm y tế, bảo hiểm xã hội.</span></p>	</li></ul>', '', 2, 0, 1, 1, 1, 0);
INSERT INTO `nv4_vi_news_detail` (`id`, `bodyhtml`, `sourcetext`, `imgposition`, `copyright`, `allowed_send`, `allowed_print`, `allowed_save`, `gid`) VALUES
(13, 'Tại VINADES.,JSC bạn sẽ được tham gia các dự án của công ty, tham gia xây dựng và phát triển bộ nhân hệ thống NukeViet, được học hỏi và trau dồi nâng cao kiến thức và kỹ năng cá nhân. Ngoài ra, nếu bạn đam mê về nguồn mở và có mong muốn cống hiến cho quá trình phát triển nguồn mở của Việt Nam nói riêng và của thế giới nói chung, thì đây là cơ hội lớn nhất để bạn đạt được mong muốn của mình. Tham gia công tác tại công ty là bạn đã góp phần xây dựng một cộng đồng nguồn mở chuyên nghiệp cho Việt Nam để vươn xa ra thế giới.<br  /><br  /><span style="font-size:16px;"><strong>1. Vị trí dự tuyển:</strong></span> Chuyên viên đồ hoạ.<br  /><br  /><span style="font-size:16px;"><strong>2. Mô tả công việc:</strong></span><br  /><br  /><em><strong>Công việc chính:</strong></em><ul>	<li>Thiết kế layout, banner, logo website theo yêu cầu của dự án.</li>	<li>Đưa ra sản phẩm sáng tạo dựa trên ý tưởng của khách hàng.</li>	<li>Thực hiện các công việc theo sự phân công của cấp trên.</li>	<li>Chịu trách nhiệm về chất lượng và tiến độ công việc.</li></ul><br  /><em><strong>Ngoài ra bạn cần có khả năng thực hiện các công việc sau:</strong></em><ul>	<li>Cắt và ghép giao diện cho hệ thống.</li>	<li>Valid CSS, xHTML.</li></ul><br  /><span style="font-size:16px;"><strong>3. Yêu cầu:</strong></span><ul>	<li>Sử dụng thành thạo phần mềm thiết kế: Photoshop ngoài ra cần biết cách sử dụng các phần mềm thiết kế khác là một lợi thế.</li>	<li>Có kiến thức cơ bản về thiết kế website: Am hiểu các dạng layout, thành phần của một website.</li>	<li>Có kinh nghiệm, kỹ năng thiết kế giao diện web, logo, banner.</li>	<li>Chịu trách nhiệm về chất lượng và tiến độ công việc phụ trách.</li>	<li>Khả năng sáng tạo, tính thẩm mỹ tốt</li>	<li>Đam mê công việc thiết kế và website.</li></ul><br  /><em><strong>Ưu tiên các ứng viên:</strong></em><ul>	<li>Có kiến thức cơ bản về quản trị website NukeViệt</li>	<li>Am hiểu về Responsive và có thể thiết kế giao diện, layout trên mobile (Boostrap).</li>	<li>Sử dụng và nắm rõ các tính năng, block thường dùng của NukeViet.</li>	<li>Biết sử dụng git để quản lý source code (nếu ứng viên chưa biết công ty sẽ đào tạo thêm).</li>	<li>Sử dụng thành thạo HTML5, CSS3 &amp; Javascrip/Jquery và Xtemplate</li>	<li>Khả năng chuyển PSD sang NukeViet tốt.</li>	<li>Hiểu rõ và nắm chắc cách làm Theme/Template.</li>	<li>Có khả năng giao tiếp với khách hàng (Trực tiếp, điện thoại, email).</li>	<li>Có khả năng làm việc độc lập và làm việc theo nhóm.</li>	<li>Có tinh thần trách nhiệm cao và chủ động trong công việc.</li>	<li>Có khả năng trình bày ý tưởng</li></ul><br  /><span style="font-size:16px;"><strong>4. Quyền lợi:</strong></span><ul>	<li>Lương thoả thuận, trả qua ATM.</li>	<li>Thưởng theo dự án, các ngày lễ tết.</li>	<li>Hưởng các chế độ khác theo quy định của công ty và pháp luật: Bảo hiểm y tế, bảo hiểm xã hội...</li></ul><br  /><span style="font-size:16px;"><strong>5. Thời gian làm việc:</strong></span> Toàn thời gian cố định hoặc làm online.<br  /><br  /><span style="font-size:16px;"><strong>6. Hạn nộp hồ sơ:</strong></span> Không hạn chế, vui lòng kiểm tra tại http://vinades.vn/vi/news/Tuyen-dung/<br  /><br  /><span style="font-size:16px;"><strong>7. Cách thức đăng ký dự tuyển:</strong></span> Làm Hồ sơ xin việc<em><strong> (file mềm)</strong></em> và gửi về hòm thư tuyendung@vinades.vn<br  /><br  /><span style="font-size:16px;"><strong>8. Hồ sơ bao gồm:</strong></span><ul>	<li>Đơn xin việc: Tự biên soạn.</li>	<li>Thông tin ứng viên: Theo mẫu của VINADES.,JSC (dowload tại đây: Mẫu lý lịch ứng viên)</li></ul>&nbsp;<p style="text-align: justify;"><strong>Chi tiết vui lòng tham khảo tại:</strong> <a href="http://vinades.vn/vi/news/Tuyen-dung/" target="_blank">http://vinades.vn/vi/news/Tuyen-dung/</a><br  /><br  /><strong>Mọi thắc mắc vui lòng liên hệ:</strong></p><blockquote><p style="text-align: justify;"><strong>Công ty cổ phần phát triển nguồn mở Việt Nam.</strong><br  />Trụ sở chính: Phòng 2004 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội.</p><div>- Tel: +84-4-85872007 - Fax: +84-4-35500914<br  />- Email: <a href="mailto:contact@vinades.vn">contact@vinades.vn</a> - Website: <a href="http://www.vinades.vn/">http://www.vinades.vn</a></div></blockquote>', '', 2, 0, 1, 1, 1, 0),
(14, '<p dir="ltr" style="line-height:1.8;margin-top:0pt;margin-bottom:10pt;text-align: justify;"><span style="font-size:17.333333333333332px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">CÁC VỊ TRÍ NHẬN THỰC TẬP</span></p><p dir="ltr" style="line-height:1.8;margin-top:0pt;margin-bottom:10pt;text-indent: 36pt;text-align: justify;"><span style="font-size:17.333333333333332px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Bạn sẽ có cơ hội thực tập trong các lĩnh vực sau:</span></p><ul style="margin-top:0pt;margin-bottom:0pt;">	<li dir="ltr" style="list-style-type:disc;font-size:16px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.8;margin-top:5pt;margin-bottom:5pt;text-align: justify;"><span style="font-size:16px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Kinh doanh: Cổng thông tin doanh nghiệp, Cổng thông tin giáo dục Edu Gate…</span></p>	</li>	<li dir="ltr" style="list-style-type:disc;font-size:16px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.8;margin-top:5pt;margin-bottom:5pt;text-align: justify;"><span style="font-size:16px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Kỹ thuật: Chuyên viên đồ họa, Lập trình viên…</span></p>	</li></ul><p dir="ltr" style="line-height:1.8;margin-top:0pt;margin-bottom:10pt;text-indent: 36pt;text-align: justify;"><span style="font-size:17.333333333333332px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Cơ hội thực tập rất đa dạng và khác nhau qua các năm, phụ thuộc vào nhu cầu của công ty.</span></p><p dir="ltr" style="line-height:1.8;margin-top:0pt;margin-bottom:10pt;text-align: justify;"><span style="font-size:17.333333333333332px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">QUYỀN LỢI CỦA THỰC TẬP SINH</span></p><ul style="margin-top:0pt;margin-bottom:0pt;">	<li dir="ltr" style="list-style-type:disc;font-size:16px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.8;margin-top:5pt;margin-bottom:5pt;text-align: justify;"><span style="font-size:16px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Được&nbsp;tiếp xúc với văn hóa doanh nghiệp, trải nghiệm trong môi trường làm việc chuyên nghiệp, năng động;</span></p>	</li>	<li dir="ltr" style="list-style-type:disc;font-size:16px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.8;margin-top:5pt;margin-bottom:5pt;text-align: justify;"><span style="font-size:16px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Được&nbsp;giao tiếp và học hỏi kiến thức từ những SEO, chuyên gia tin học; qua đó&nbsp;nâng cao không chỉ kỹ năng chuyên môn liên quan đến công việc mà còn các kỹ năng mềm trong quá trình làm việc hàng ngày;</span></p>	</li>	<li dir="ltr" style="list-style-type:disc;font-size:16px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.8;margin-top:5pt;margin-bottom:5pt;text-align: justify;"><span style="font-size:16px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Có cơ hội tìm hiểu, phát triển định hướng của bản thân;</span></p>	</li>	<li dir="ltr" style="list-style-type:disc;font-size:16px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.8;margin-top:5pt;margin-bottom:5pt;text-align: justify;"><span style="font-size:16px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Tham gia các chương trình ngoại khóa, các hoạt động nội bộ của công ty;</span></p>	</li>	<li dir="ltr" style="list-style-type:disc;font-size:16px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.8;margin-top:5pt;margin-bottom:5pt;text-align: justify;"><span style="font-size:16px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Cơ&nbsp;hội ưu tiên tuyển dụng nhân viên chính thức nếu có kết quả thực tập tốt.</span></p>	</li></ul><p dir="ltr" style="line-height:1.8;margin-top:0pt;margin-bottom:10pt;text-align: justify;"><span style="font-size:17.333333333333332px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">ĐIỀU KIỆN LÀM VIỆC</span></p><ul style="margin-top:0pt;margin-bottom:0pt;">	<li dir="ltr" style="list-style-type:disc;font-size:16px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.8;margin-top:5pt;margin-bottom:5pt;text-align: justify;"><span style="font-size:16px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Ngày làm việc: Thứ hai – Thứ sáu</span></p>	</li>	<li dir="ltr" style="list-style-type:disc;font-size:16px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.8;margin-top:5pt;margin-bottom:5pt;text-align: justify;"><span style="font-size:16px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Thời gian làm việc: 8:00 – 17:00</span></p>	</li>	<li dir="ltr" style="list-style-type:disc;font-size:16px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.8;margin-top:5pt;margin-bottom:5pt;text-align: justify;"><span style="font-size:16px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Thực tập không hưởng lương</span></p>	</li>	<li dir="ltr" style="list-style-type:disc;font-size:16px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.8;margin-top:5pt;margin-bottom:5pt;text-align: justify;"><span style="font-size:16px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Yêu cầu thực hiện theo các quy định của công ty...</span></p>	</li></ul><p dir="ltr" style="line-height:1.8;margin-top:0pt;margin-bottom:10pt;text-indent: 36pt;text-align: justify;"><span style="font-size:17.333333333333332px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Ngày làm việc và thời gian làm việc có thể thay đổi tùy thuộc vào tình hình thực tế</span></p><p dir="ltr" style="line-height:1.8;margin-top:0pt;margin-bottom:10pt;text-align: justify;"><span style="font-size:17.333333333333332px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">ĐỐI TƯỢNG TUYỂN DỤNG</span></p><p dir="ltr" style="line-height:1.8;margin-top:0pt;margin-bottom:10pt;text-indent: 36pt;text-align: justify;"><span style="font-size:17.333333333333332px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Tất cả các bạn sinh viên năm cuối/mới tốt nghiệp các trường CĐ - ĐH đáp ứng được những yêu cầu sau:</span></p><ul style="margin-top:0pt;margin-bottom:0pt;">	<li dir="ltr" style="list-style-type:disc;font-size:16px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.8;margin-top:5pt;margin-bottom:5pt;text-align: justify;"><span style="font-size:16px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Sinh viên khối ngành kinh tế , kỹ thuật;</span></p>	</li>	<li dir="ltr" style="list-style-type:disc;font-size:16px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.8;margin-top:5pt;margin-bottom:5pt;text-align: justify;"><span style="font-size:16px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Có kỹ năng giao tiếp và tư duy logic tốt;</span></p>	</li>	<li dir="ltr" style="list-style-type:disc;font-size:16px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.8;margin-top:5pt;margin-bottom:5pt;text-align: justify;"><span style="font-size:16px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Có đam mê và ham học hỏi.</span></p>	</li></ul><p dir="ltr" style="line-height:1.8;margin-top:0pt;margin-bottom:10pt;text-align: justify;"><span style="font-size:17.333333333333332px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">CÁCH THỨC ỨNG TUYỂN</span></p><ul style="margin-top:0pt;margin-bottom:0pt;">	<li dir="ltr" style="list-style-type:disc;font-size:16px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.8;margin-top:5pt;margin-bottom:5pt;text-align: justify;"><span style="font-size:16px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Gửi bản mềm đơn đăng ký ứng tuyển tới:&nbsp;tuyendung@vinades.vn;</span></p>	</li>	<li dir="ltr" style="list-style-type:disc;font-size:16px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.8;margin-top:5pt;margin-bottom:5pt;text-align: justify;"><span style="font-size:16px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Tiêu đề mail ghi rõ: &#91;Họ tên&#93; –Ứng tuyển thực tập &#91;Bộ phận ứng tuyển&#93;;</span></p>	</li></ul><p dir="ltr" style="line-height:1.8;margin-top:0pt;margin-bottom:10pt;text-indent: 18pt;text-align: justify;"><span style="font-size:17.333333333333332px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Ví dụ: Lê Văn Nam –&nbsp;Ứng tuyển thực tập sinh bộ phận đồ họa</span></p><ul style="margin-top:0pt;margin-bottom:0pt;">	<li dir="ltr" style="list-style-type:disc;font-size:16px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.8;margin-top:5pt;margin-bottom:5pt;text-align: justify;"><span style="font-size:16px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Hồ sơ cần chuẩn bị gồm:</span></p>	</li></ul><p dir="ltr" style="line-height:1.8;margin-top:0pt;margin-bottom:10pt;margin-left: 18pt;text-align: justify;"><span style="font-size:17.333333333333332px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">- Giấy khám sức khoẻ của cơ quan y tế</span></p><p dir="ltr" style="line-height:1.8;margin-top:0pt;margin-bottom:10pt;margin-left: 18pt;text-align: justify;"><span style="font-size:17.333333333333332px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">- Bản sao giấy khai sinh (có công chứng)</span></p><p dir="ltr" style="line-height:1.8;margin-top:0pt;margin-bottom:10pt;margin-left: 18pt;text-align: justify;"><span style="font-size:17.333333333333332px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">- Bản sao quá trình học tập (bảng điểm tốt nghiệp), các văn bằng chứng chỉ (có công chứng) nếu đã tốt nghiệp</span></p><p dir="ltr" style="line-height:1.8;margin-top:0pt;margin-bottom:10pt;margin-left: 18pt;text-align: justify;"><span style="font-size:17.333333333333332px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">- Sơ yếu lý lịch có xác nhận của cơ quan công tác trước đó (nếu có) hoặc xác nhận của chính quyền địa phương nơi bạn đăng ký hộkhẩu thường trú</span></p><p dir="ltr" style="line-height:1.8;margin-top:0pt;margin-bottom:10pt;margin-left: 18pt;text-align: justify;"><span style="font-size:17.333333333333332px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">- Chứng minh thư (có công chứng)</span></p><p dir="ltr" style="line-height:1.8;margin-top:0pt;margin-bottom:10pt;margin-left: 18pt;text-align: justify;"><span style="font-size:17.333333333333332px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">- Thư giới thiệu (nếu có)</span></p><p dir="ltr" style="line-height:1.8;margin-top:0pt;margin-bottom:10pt;margin-left: 18pt;text-align: justify;"><span style="font-size:17.333333333333332px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">- Ảnh 4x6: 4 chiếc (đã bao gồm 1 chiếc gắn trên sơ yếu lý lịch).</span></p><p dir="ltr" style="line-height:1.8;margin-top:0pt;margin-bottom:10pt;text-align: justify;"><span style="font-size:17.333333333333332px;font-family:&#039;Times New Roman&#039;;color:rgb(128, 128, 128);background-color:transparent;font-weight:400;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;">Các bạn có thể email về địa chỉ tuyen dung@vinades.vn &nbsp;để biết thêm chi tiết&nbsp;</span></p>', '', 2, 0, 1, 1, 1, 0),
(15, '<p dir="ltr" style="line-height:1.8;margin-top:0pt;margin-bottom:10pt;text-align: center;"><span style="font-size:17.333333333333332px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">TỔNG QUAN CHƯƠNG TRÌNH HỌC VIỆC</span></p><p dir="ltr" style="line-height:1.8;margin-top:0pt;margin-bottom:10pt;text-align: justify;"><span style="font-size:17.333333333333332px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">CÁC VỊ TRÍ NHẬN HỌC VIỆC</span></p><p dir="ltr" style="line-height:1.8;margin-top:0pt;margin-bottom:10pt;text-indent: 36pt;text-align: justify;"><span style="font-size:17.333333333333332px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Bạn sẽ có cơ hội học việc trong các lĩnh vực sau:</span></p><ul style="margin-top:0pt;margin-bottom:0pt;">	<li dir="ltr" style="list-style-type:disc;font-size:16px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.8;margin-top:5pt;margin-bottom:5pt;text-align: justify;"><span style="font-size:16px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Kinh doanh: Cổng thông tin doanh nghiệp, Cổng thông tin giáo dục Edu Gate…</span></p>	</li>	<li dir="ltr" style="list-style-type:disc;font-size:16px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.8;margin-top:5pt;margin-bottom:5pt;text-align: justify;"><span style="font-size:16px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Kỹ thuật: Chuyên viên đồ họa, Lập trình viên…</span></p>	</li></ul><p dir="ltr" style="line-height:1.8;margin-top:0pt;margin-bottom:10pt;text-align: justify;"><span style="font-size:17.333333333333332px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">QUYỀN LỢI CỦA HỌC VIỆC</span></p><ul style="margin-top:0pt;margin-bottom:0pt;">	<li dir="ltr" style="list-style-type:disc;font-size:16px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.8;margin-top:5pt;margin-bottom:5pt;text-align: justify;"><span style="font-size:16px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Được hưởng trợ cấp ăn trưa;</span></p>	</li>	<li dir="ltr" style="list-style-type:disc;font-size:16px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.8;margin-top:5pt;margin-bottom:5pt;text-align: justify;"><span style="font-size:16px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Được trợ cấp vé gửi xe;</span></p>	</li>	<li dir="ltr" style="list-style-type:disc;font-size:16px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.8;margin-top:5pt;margin-bottom:5pt;text-align: justify;"><span style="font-size:16px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Được hỗ trợ học phí tham gia các khóa học nâng cao các kỹ năng (nếu có);</span></p>	</li>	<li dir="ltr" style="list-style-type:disc;font-size:16px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.8;margin-top:5pt;margin-bottom:5pt;text-align: justify;"><span style="font-size:16px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Được&nbsp;tiếp xúc với văn hóa doanh nghiệp, trải nghiệm trong môi trường làm việc chuyên nghiệp, năng động;</span></p>	</li>	<li dir="ltr" style="list-style-type:disc;font-size:16px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.8;margin-top:5pt;margin-bottom:5pt;text-align: justify;"><span style="font-size:16px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Được&nbsp;giao tiếp và học hỏi kiến thức từ những SEO, chuyên gia tin học; qua đó&nbsp;nâng cao không chỉ kỹ năng chuyên môn liên quan đến công việc mà còn các kỹ năng mềm trong quá trình làm việc hàng ngày;</span></p>	</li>	<li dir="ltr" style="list-style-type:disc;font-size:16px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.8;margin-top:5pt;margin-bottom:5pt;text-align: justify;"><span style="font-size:16px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Có cơ hội tìm hiểu, phát triển định hướng của bản thân;</span></p>	</li>	<li dir="ltr" style="list-style-type:disc;font-size:16px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.8;margin-top:5pt;margin-bottom:5pt;text-align: justify;"><span style="font-size:16px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Tham gia các chương trình ngoại khóa, các hoạt động nội bộ của công ty;</span></p>	</li>	<li dir="ltr" style="list-style-type:disc;font-size:16px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.8;margin-top:5pt;margin-bottom:5pt;text-align: justify;"><span style="font-size:16px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Cơ&nbsp;hội ưu tiên tuyển dụng nhân viên chính thức nếu có kết quả thực tập tốt.</span></p>	</li></ul><p dir="ltr" style="line-height:1.8;margin-top:0pt;margin-bottom:10pt;text-align: justify;"><span style="font-size:17.333333333333332px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">ĐIỀU KIỆN LÀM VIỆC</span></p><ul style="margin-top:0pt;margin-bottom:0pt;">	<li dir="ltr" style="list-style-type:disc;font-size:16px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.8;margin-top:5pt;margin-bottom:5pt;text-align: justify;"><span style="font-size:16px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Ngày làm việc: Thứ hai – Thứ sáu</span></p>	</li>	<li dir="ltr" style="list-style-type:disc;font-size:16px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.8;margin-top:5pt;margin-bottom:5pt;text-align: justify;"><span style="font-size:16px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Thời gian làm việc: 8:00 – 17:00</span></p>	</li>	<li dir="ltr" style="list-style-type:disc;font-size:16px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.8;margin-top:5pt;margin-bottom:5pt;text-align: justify;"><span style="font-size:16px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Được hưởng lương khoán theo từng dự án (nếu có)</span></p>	</li>	<li dir="ltr" style="list-style-type:disc;font-size:16px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.8;margin-top:5pt;margin-bottom:5pt;text-align: justify;"><span style="font-size:16px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Nếu được nhận vào làm việc chính thức, người lao động phải làm ở công ty ít nhất 2 năm, nếu không làm hoặc nghỉ trước thời hạn sẽ phải hoàn lại tiền đào tạo. Chi phí này được tính là 3.000.000 VND</span></p>	</li>	<li dir="ltr" style="list-style-type:disc;font-size:16px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.8;margin-top:5pt;margin-bottom:5pt;text-align: justify;"><span style="font-size:16px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Nếu được cử đi học, người lao động phải làm ở công ty ít nhất 2 năm, nếu không làm hoặc nghỉ trước thời hạn sẽ phải hoàn lại tiền học phí.</span></p>	</li>	<li dir="ltr" style="list-style-type:disc;font-size:16px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.8;margin-top:5pt;margin-bottom:5pt;text-align: justify;"><span style="font-size:16px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Thực hiện theo các quy định khác của công ty...</span></p>	</li></ul><p dir="ltr" style="line-height:1.8;margin-top:0pt;margin-bottom:10pt;text-indent: 36pt;text-align: justify;"><span style="font-size:17.333333333333332px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Ngày làm việc và thời gian làm việc có thể thay đổi tùy thuộc vào tình hình thực tế</span></p><p dir="ltr" style="line-height:1.8;margin-top:0pt;margin-bottom:10pt;text-align: justify;"><span style="font-size:17.333333333333332px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">ĐỐI TƯỢNG HỌC VIỆC</span></p><p dir="ltr" style="line-height:1.8;margin-top:0pt;margin-bottom:10pt;text-indent: 36pt;text-align: justify;"><span style="font-size:17.333333333333332px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Tất cả các ứng viên đáp ứng được những yêu cầu sau:</span></p><ul style="margin-top:0pt;margin-bottom:0pt;">	<li dir="ltr" style="list-style-type:disc;font-size:16px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.8;margin-top:5pt;margin-bottom:5pt;text-align: justify;"><span style="font-size:16px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Tốt nghiệp khối ngành kinh tế , kỹ thuật;</span></p>	</li>	<li dir="ltr" style="list-style-type:disc;font-size:16px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.8;margin-top:5pt;margin-bottom:5pt;text-align: justify;"><span style="font-size:16px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Có kỹ năng giao tiếp và tư duy logic tốt;</span></p>	</li>	<li dir="ltr" style="list-style-type:disc;font-size:16px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.8;margin-top:5pt;margin-bottom:5pt;text-align: justify;"><span style="font-size:16px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Có đam mê và ham học hỏi.</span></p>	</li></ul><p dir="ltr" style="line-height:1.8;margin-top:0pt;margin-bottom:10pt;text-align: justify;"><span style="font-size:17.333333333333332px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">CÁCH THỨC ỨNG TUYỂN</span></p><ul style="margin-top:0pt;margin-bottom:0pt;">	<li dir="ltr" style="list-style-type:disc;font-size:16px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.8;margin-top:5pt;margin-bottom:5pt;text-align: justify;"><span style="font-size:16px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Gửi bản mềm đơn đăng ký ứng tuyển tới:&nbsp;tuyendung@vinades.vn;</span></p>	</li>	<li dir="ltr" style="list-style-type:disc;font-size:16px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.8;margin-top:5pt;margin-bottom:5pt;text-align: justify;"><span style="font-size:16px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Tiêu đề mail ghi rõ: &#91;Họ tên&#93; –Ứng tuyển học việc&#91;Bộ phận ứng tuyển&#93;;</span></p>	</li></ul><p dir="ltr" style="line-height:1.8;margin-top:0pt;margin-bottom:10pt;text-indent: 18pt;text-align: justify;"><span style="font-size:17.333333333333332px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Ví dụ: Lê Văn Nam –&nbsp;Ứng tuyển học việc bộ phận đồ họa</span></p><ul style="margin-top:0pt;margin-bottom:0pt;">	<li dir="ltr" style="list-style-type:disc;font-size:16px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.8;margin-top:5pt;margin-bottom:5pt;text-align: justify;"><span style="font-size:16px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Hồ sơ cần chuẩn bị gồm:</span></p>	</li></ul><p dir="ltr" style="line-height:1.8;margin-top:0pt;margin-bottom:10pt;margin-left: 18pt;text-align: justify;"><span style="font-size:17.333333333333332px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">- Giấy khám sức khoẻ của cơ quan y tế</span></p><p dir="ltr" style="line-height:1.8;margin-top:0pt;margin-bottom:10pt;margin-left: 18pt;text-align: justify;"><span style="font-size:17.333333333333332px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">- Bản sao giấy khai sinh (có công chứng)</span></p><p dir="ltr" style="line-height:1.8;margin-top:0pt;margin-bottom:10pt;margin-left: 18pt;text-align: justify;"><span style="font-size:17.333333333333332px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">- Bản sao quá trình học tập (bảng điểm tốt nghiệp), các văn bằng chứng chỉ (có công chứng) nếu đã tốt nghiệp</span></p><p dir="ltr" style="line-height:1.8;margin-top:0pt;margin-bottom:10pt;margin-left: 18pt;text-align: justify;"><span style="font-size:17.333333333333332px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">- Sơ yếu lý lịch có xác nhận của cơ quan công tác trước đó (nếu có) hoặc xác nhận của chính quyền địa phương nơi bạn đăng ký hộkhẩu thường trú</span></p><p dir="ltr" style="line-height:1.8;margin-top:0pt;margin-bottom:10pt;margin-left: 18pt;text-align: justify;"><span style="font-size:17.333333333333332px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">- Chứng minh thư (có công chứng)</span></p><p dir="ltr" style="line-height:1.8;margin-top:0pt;margin-bottom:10pt;margin-left: 18pt;text-align: justify;"><span style="font-size:17.333333333333332px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">- Thư giới thiệu (nếu có)</span></p><p dir="ltr" style="line-height:1.8;margin-top:0pt;margin-bottom:10pt;margin-left: 18pt;text-align: justify;"><span style="font-size:17.333333333333332px;font-family:&#039;Times New Roman&#039;;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">- Ảnh 4x6: 4 chiếc (đã bao gồm 1 chiếc gắn trên sơ yếu lý lịch).</span></p><p dir="ltr" style="line-height:1.8;margin-top:0pt;margin-bottom:10pt;text-align: justify;"><span style="font-size:17.333333333333332px;font-family:&#039;Times New Roman&#039;;color:rgb(128, 128, 128);background-color:transparent;font-weight:400;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;">Các bạn có thể email về địa chỉ tuyen dung@vinades.vn &nbsp;để biết thêm chi tiết&nbsp;</span></p>', '', 2, 0, 1, 1, 1, 0);
INSERT INTO `nv4_vi_news_detail` (`id`, `bodyhtml`, `sourcetext`, `imgposition`, `copyright`, `allowed_send`, `allowed_print`, `allowed_save`, `gid`) VALUES
(16, '<div class="details-content clearfix" id="bodytext"><strong>Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016 của Bộ Giáo dục và Đào tạo có gì mới?</strong><br  /><br  />Trong các hướng dẫn thực hiện nhiệm vụ CNTT từ năm 2010 đến nay liên tục chỉ đạo việc đẩy mạnh công tác triển khai sử dụng phần mềm nguồn mở trong nhà trường và các cơ quan quản lý giáo dục. Tuy nhiên Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016 của Bộ Giáo dục và Đào tạo có nhiều thay đổi mạnh mẽ đáng chú ý, đặc biệt việc chỉ đạo triển khai các phần mềm nguồn mở vào trong các cơ sở quản lý giao dục được rõ ràng và cụ thể hơn rất nhiều.<br  /><br  />Một điểm thay đổi đáng chú ý đối với phần mềm nguồn mở, trong đó đã thay hẳn thuật ngữ &quot;phần mềm tự do mã nguồn mở&quot; hoặc &quot;phần mềm mã nguồn mở&quot; thành &quot;phần mềm nguồn mở&quot;, phản ánh xu thế sử dụng thuật ngữ phần mềm nguồn mở đã phổ biến trong cộng đồng nguồn mở thời gian vài năm trở lại đây.<br  /><br  /><strong>NukeViet - Phần mềm nguồn mở Việt - không chỉ được khuyến khích mà đã được hướng dẫn thực thi</strong><br  /><br  />Từ 5 năm trước, thông tư số 08/2010/TT-BGDĐT của Bộ GD&amp;ĐTquy định về sử dụng phần mềm tự do mã nguồn mở trong các cơ sở giáo dục, NukeViet đã được đưa vào danh sách các mã nguồn mở <strong>được khuyến khích sử dụng trong giáo dục</strong>. Tuy nhiên, việc sử dụng chưa được thực hiện một cách đồng bộ mà chủ yếu làm nhỏ lẻ rải rác tại một số trường, Phòng và Sở GD&amp;ĐT.<br  /><br  />Trong Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016 của Bộ Giáo dục và Đào tạo lần này, NukeViet&nbsp; không chỉ được khuyến khích mà đã được hướng dẫn thực thi, không những thế NukeViet còn được đưa vào hầu hết các nhiệm vụ chính, cụ thể:<div><div><div>&nbsp;</div>- <strong>Nhiệm vụ số 5</strong> &quot;<strong>Công tác bồi dưỡng ứng dụng CNTT cho giáo viên và cán bộ quản lý giáo dục</strong>&quot;, mục 5.1 &quot;Một số nội dung cần bồi dưỡng&quot; có ghi &quot;<strong>Tập huấn sử dụng phần mềm nguồn mở NukeViet.</strong>&quot;<br  />&nbsp;</div>- <strong>Nhiệm vụ số 10 &quot;Khai thác, sử dụng và dạy học bằng phần mềm nguồn mở</strong>&quot; có ghi: &quot;<strong>Khai thác và áp dụng phần mềm nguồn mở NukeViet trong giáo dục.&quot;</strong><br  />&nbsp;</div>- Phụ lục văn bản, có trong nội dung &quot;Khuyến cáo khi sử dụng các hệ thống CNTT&quot;, hạng mục số 3 ghi rõ &quot;<strong>Không nên làm website mã nguồn đóng&quot; và &quot;Nên làm NukeViet: phần mềm nguồn mở&quot;.</strong><br  />&nbsp;<div>Hiện giờ văn bản này đã được đăng lên website của Bộ GD&amp;ĐT: <a href="http://moet.gov.vn/?page=1.10&amp;view=983&amp;opt=brpage" target="_blank">http://moet.gov.vn/?page=1.10&amp;view=983&amp;opt=brpage</a></div><p><br  />Hoặc có thể tải về tại đây: <a href="http://vinades.vn/vi/download/van-ban-luat/Huong-dan-thuc-hien-nhiem-vu-CNTT-nam-hoc-2015-2016/" target="_blank">http://vinades.vn/vi/download/van-ban-luat/Huong-dan-thuc-hien-nhiem-vu-CNTT-nam-hoc-2015-2016/</a></p><blockquote><p><em>Trên cơ sở hướng dẫn của Bộ GD&amp;ĐT, Công ty cổ phần phát triển nguồn mở Việt Nam và các doanh nghiệp phát triển NukeViet trong cộng đồng NukeViet đang tích cực công tác hỗ trợ cho các phòng GD&amp;ĐT, Sở GD&amp;ĐT triển khai 2 nội dung chính: Hỗ trợ công tác đào tạo tập huấn hướng dẫn sử dụng NukeViet và Hỗ trợ triển khai NukeViet cho các trường, Phòng và Sở GD&amp;ĐT.<br  /><br  />Các Phòng, Sở GD&amp;ĐT có nhu cầu có thể xem thêm thông tin chi tiết tại đây: <a href="http://vinades.vn/vi/news/thong-cao-bao-chi/Ho-tro-trien-khai-dao-tao-va-trien-khai-NukeViet-cho-cac-Phong-So-GD-DT-264/" target="_blank">Hỗ trợ triển khai đào tạo và triển khai NukeViet cho các Phòng, Sở GD&amp;ĐT</a></em></p></blockquote></div>', '', 2, 0, 1, 1, 1, 0),
(17, '<div class="details-content clearfix" id="bodytext"><span style="font-size:16px;"><strong>Hỗ trợ công tác đào tạo tập huấn hướng dẫn sử dụng phần mềm nguồn mở NukeViet</strong></span><br  /><br  />Công tác hỗ trợ công tác đào tạo tập huấn hướng dẫn sử dụng phần mềm nguồn mở NukeViet sẽ được thực hiện bởi đội ngũ chuyên gia giàu kinh nghiệm về NukeViet được tuyển chọn từ lực lượng lập trình viên, chuyên viên kỹ thuật hiện đang tham gia phát triển và hỗ trợ về NukeViet từ Ban Quản Trị NukeViet và Công ty cổ phần phát triển nguồn mở Việt Nam và các đối tác thuộc Liên minh phần mềm giáo dục nguồn mở NukeViet.<br  /><br  />Với kinh nghiệm tập huấn đã được tổ chức thành công cho nhiều Phòng giáo dục và đào tạo, các chuyên gia về NukeViet sẽ giúp chuyển giao giáo trình, chương trình, kịch bản đào tạo cho các Phòng, Sở GD&amp;ĐT; hỗ trợ các giáo viên và cán bộ quản lý giáo dục sử dụng trong suốt thời gian sau đào tạo.<br  /><br  />Đặc biệt, đối với các đơn vị sử dụng NukeViet làm website và cổng thông tin đồng bộ theo quy mô cấp Phòng và Sở, cán bộ tập huấn của NukeViet sẽ có nhiều chương trình hỗ trợ khác như chương trình thi đua giữa các website sử dụng NukeViet trong cùng đơn vị cấp Phòng, Sở và trên toàn quốc; Chương trình báo cáo và giám sát và xếp hạng website hàng tháng; Chương trình tập huấn nâng cao trình độ sử dụng NukeViet hàng năm cho giáo viên và cán bộ quản lý giáo dục đang thực hiện công tác quản trị các hệ thống sử dụng nền tảng NukeViet.<br  /><br  /><span style="font-size:16px;"><strong>Hỗ trợ triển khai NukeViet cho các trường, Phòng và Sở GD&amp;ĐT</strong></span><br  /><br  />Nhằm hỗ trợ triển khai NukeViet cho các trường, Phòng và Sở GD&amp;ĐT một cách toàn diện, đồng bộ và tiết kiệm, hiện tại, Liên minh phần mềm nguồn mở giáo dục NukeViet chuẩn bị ra mắt. Liên minh này do Công ty cổ phần phát triển nguồn mở Việt Nam đứng dầu và thực hiện việc điều phối công các hỗ trợ và phối hợp giữa các đơn vị trên toàn quốc. Thành viên của liên minh là các doanh nghiệp cung cấp sản phẩm và dịch vụ phần mềm hỗ trợ cho giáo dục (kể cả những đơn vị chỉ tham gia lập trình và những đơn vị chỉ tham gia khai thác thương mại). Liên minh sẽ cùng nhau làm việc để xây dựng một hệ thống phần mềm thống nhất cho giáo dục, có khả năng liên thông và kết nối với nhau, hoàn toàn dựa trên nền tảng phần mềm nguồn mở. Liên minh cũng hỗ trợ và phân phối phần mềm cho các đơn vị làm phần mềm trong ngành giáo dục với mục tiêu là tiết kiệm tối đa chi phí trong khâu thương mại, mang tới cơ hội cho các đơn vị làm phần mềm giáo dục mà không cần phải lo lắng về việc phân phối phần mềm. Các doanh nghiệp quan tâm đến cơ hội kinh doanh bằng phần mềm nguồn mở, muốn tìm hiểu và tham gia liên minh có thể đăng ký tại đây: <a href="http://edu.nukeviet.vn/lienminh-dangky.html" target="_blank">http://edu.nukeviet.vn/lienminh-dangky.html</a><br  /><br  />Liên minh phần mềm nguồn mở giáo dục NukeViet đang cung cấp giải pháp cổng thông tin chuyên dùng cho phòng và Sở GD&amp;ĐT (NukeViet Edu Gate) cung cấp dưới dạng dịch vụ công nghệ thông tin (theo mô hình của <a href="http://vinades.vn/vi/download/van-ban-luat/Quyet-dinh-80-ve-thue-dich-vu-CNTT/" target="_blank">Quyết định số 80/2014/QĐ-TTg của Thủ tướng Chính phủ</a>) có thể hỗ trợ cho các trường, Phòng và Sở GD&amp;ĐT triển khai NukeViet ngay lập tức.<br  /><br  />Giải pháp cổng thông tin chuyên dùng cho phòng và Sở GD&amp;ĐT (NukeViet Edu Gate) có tích hợp website các trường (liên thông 3 cấp: trường - phòng - sở) cho phép tích hợp hàng ngàn website của các trường cùng nhiều dịch vụ khác trên cùng một hệ thống giúp tiết kiệm chi phí đầu tư, chi phí triển khai và bảo trì hệ thống bởi toàn bộ hệ thống được vận hành bằng một phần mềm duy nhất. Ngoài giải pháp cổng thông tin giáo dục tích hợp, Liên minh phần mềm nguồn mở giáo dục NukeViet cũng đang phát triển một số&nbsp;sản phẩm phần mềm dựa trên phần mềm nguồn mở NukeViet và sẽ sớm ra mắt trong thời gian tới.<div><br  />Hiện nay,&nbsp;NukeViet Edu Gate cũng&nbsp;đã được triển khai rộng rãi và nhận được sự ủng hộ của&nbsp;nhiều Phòng, Sở GD&amp;ĐT trên toàn quốc.&nbsp;Các phòng, sở GD&amp;ĐT quan tâm đến giải pháp NukeViet Edu Gate có thể truy cập&nbsp;<a href="http://edu.nukeviet.vn/" target="_blank">http://edu.nukeviet.vn</a>&nbsp;để tìm hiểu thêm hoặc liên hệ:<br  /><br  /><span style="font-size:14px;"><strong>Liên minh phần mềm nguồn mở giáo dục NukeViet</strong></span><br  />Đại diện: <strong>Công ty cổ phần phát triển nguồn mở Việt Nam (VINADES.,JSC)</strong><br  /><strong>Địa chỉ</strong>: Phòng 2004 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội<br  /><strong>Email</strong>: contact@vinades.vn, Tel: 04-85872007, <strong>Fax</strong>: 04-35500914,<br  /><strong>Hotline</strong>: 0904762534 (Mr. Hùng), 0936226385 (Ms. Ngọc),&nbsp;<span style="color: rgb(38, 38, 38); font-family: arial, sans-serif; font-size: 13px; line-height: 16px;">0904719186 (Mr. Hậu)</span><br  />Các Phòng GD&amp;ĐT, Sở GD&amp;ĐT có thể đăng ký tìm hiểu, tổ chức hội thảo, tập huấn, triển khai NukeViet trực tiếp tại đây: <a href="http://edu.nukeviet.vn/dangky.html" target="_blank">http://edu.nukeviet.vn/dangky.html</a><br  /><br  /><span style="font-size:16px;"><strong>Tìm hiểu về phương thức chuyển đổi các hệ thống website cổng thông tin sang NukeViet theo mô hình tích hợp liên thông từ trưởng, lên Phòng, Sở GD&amp;ĐT:</strong></span><br  /><br  />Đối với các Phòng, Sở GD&amp;ĐT, trường Nầm non, tiểu học, THCS, THPT... chưa có website, Liên minh phần mềm nguồn mở giáo dục NukeViet sẽ hỗ trợ triển khai NukeViet theo mô hình cổng thông tin liên cấp như quy định tại <a href="http://vinades.vn/vi/download/van-ban-luat/Thong-tu-quy-dinh-ve-ve-to-chuc-hoat-dong-su-dung-thu-dien-tu/" target="_blank">thông tư số <strong>53/2012/TT-BGDĐT</strong> của Bộ GD&amp;ĐT</a> ban hành ngày 20-12-2012 quy định về quy định về về tổ chức hoạt động, sử dụng thư điện tử và cổng thông tin điện tử tại sở giáo dục và đào tạo, phòng giáo dục và đào tạo và các cơ sở GDMN, GDPT và GDTX.<br  /><br  />Trường hợp các đơn vị có website và đang sử dụng NukeViet theo dạng rời rạc thì việc chuyển đổi và tích hợp các website NukeViet rời rạc vào NukeViet Edu Gate của Phòng và Sở có thể thực hiện dễ dàng và giữ nguyên toàn bộ dữ liệu.<br  /><br  />Trường hợp các đơn vị có website và nhưng không sử dụng NukeViet cũng có thể chuyển đổi sang sử dụng NukeViet để hợp nhất vào hệ thống cổng thông tin giáo dục cấp Phòng, Sở. Tuy nhiên mức độ và tỉ lệ dữ liệu được chuyển đổi thành công sẽ phụ thuộc vào tình hình thực tế của từng website.</div></div>', '', 2, 0, 1, 1, 1, 0);
INSERT INTO `nv4_vi_news_detail` (`id`, `bodyhtml`, `sourcetext`, `imgposition`, `copyright`, `allowed_send`, `allowed_print`, `allowed_save`, `gid`) VALUES
(18, '<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;"><span style="font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Trải qua hơn 10 năm phát triển, từ một mã nguồn chỉ mang tính cá nhân, NukeViet đã phát triển thành công theo hướng cộng đồng. Năm 2010, NukeViet 3 ra đời đánh dấu một mốc lớn trong quá trình đi lên của NukeViet, phát triển theo hướng chuyên nghiệp với sự hậu thuẫn của Công ty cổ phần phát triển nguồn mở Việt Nam (VINADES.,JSC). NukeViet 3 đã và được sử dụng rộng rãi trong cộng đồng, từ các cổng thông tin tổ chức, hệ thống giáo dục, cho đến các website cá nhân, thương mại, mang lại các trải nghiệm vượt trội của mã nguồn thương hiệu Việt so với các mã nguồn nổi tiếng khác trên thế giới.</span></p>&nbsp;<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;"><span style="font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Năm 2016, NukeViet 4 ra đời được xem là một cuộc cách mạng lớn trong chuỗi sự kiện phát triển NukeViet, cũng như xu thế công nghệ hiện tại. Hệ thống gần như được đổi mới hoàn toàn từ nhân hệ thống đến giao diện, nâng cao đáng kể hiệu suất và trải nghiệm người dùng.</span></p>&nbsp;<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Dưới đây là một số thay đổi của NukeViet 4.</span></p>&nbsp;<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Các thay đổi từ nhân hệ thống: </span></p><ul style="margin-top:0pt;margin-bottom:0pt;">	<li dir="ltr" style="list-style-type:disc;font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Các công nghệ mới được áp dụng.</span></p>	<ul style="margin-top:0pt;margin-bottom:0pt;">		<li dir="ltr" style="list-style-type:circle;font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">		<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Sử dụng composer để quản lý các thư viện PHP được cài vào hệ thống.</span></p>		</li>		<li dir="ltr" style="list-style-type:circle;font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">		<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Từng bước áp dụng &nbsp;các tiêu chuẩn viết code PHP theo khuyến nghị của </span><a href="http://www.php-fig.org/psr/" style="text-decoration:none;"><span style="font-size:14.6px;font-family:Arial;color:rgb(17, 85, 204);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;">http://www.php-fig.org/psr/</span></a></p>		</li>		<li dir="ltr" style="list-style-type:circle;font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">		<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Sử dụng PDO để thay cho extension MySQL.</span></p>		</li>	</ul>	</li></ul>&nbsp;<ul style="margin-top:0pt;margin-bottom:0pt;">	<li dir="ltr" style="list-style-type:disc;font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Tăng cường khả năng bảo mật</span></p>	<ul style="margin-top:0pt;margin-bottom:0pt;">		<li dir="ltr" style="list-style-type:circle;font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">		<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Sau khi các chuyên giả bảo mật của HP gửi đánh giá, chúng tôi đã tối ưu NukeViet 4.0 để hệ thống an toàn hơn.</span></p>		</li>		<li dir="ltr" style="list-style-type:circle;font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">		<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Mã hóa các mật khẩu lưu trữ trong hệ thống: Các mật khẩu như FPT, SMTP,... đã được mã hóa, bảo mật thông tin người dùng.</span></p>		</li>	</ul>	</li></ul>&nbsp;<ul style="margin-top:0pt;margin-bottom:0pt;">	<li dir="ltr" style="list-style-type:disc;font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Tối ưu SEO:</span><span style="font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;"> </span></p>	<ul style="margin-top:0pt;margin-bottom:0pt;">		<li dir="ltr" style="list-style-type:circle;font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">		<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">SEO được xem là một trong những ưu tiên hàng đầu được phát triển trong phiên bản này. NukeViet 4 tập trung tối ưu hóa SEO Onpage mạnh mẽ. Các công cụ hỗ trợ SEO được tập hợp lại qua module </span><span style="font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">“Công cụ SEO”</span><span style="font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">. Các chức năng được thêm mới:</span></p>		<ul style="margin-top:0pt;margin-bottom:0pt;">			<li dir="ltr" style="list-style-type:square;font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">			<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Loại bỏ tên module khỏi URL khi không dùng đa ngôn ngữ</span></p>			</li>			<li dir="ltr" style="list-style-type:square;font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">			<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Cho phép đổi đường dẫn module</span></p>			</li>			<li dir="ltr" style="list-style-type:square;font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">			<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Thêm chức năng xác thực Google+ (Bản quyền tác giả)</span></p>			</li>			<li dir="ltr" style="list-style-type:square;font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">			<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Thêm chức năng ping đến các công cụ tìm kiếm: Submit url mới đến google để việc hiển thị bài viết mới lên kết quả tìm kiếm nhanh chóng hơn.</span></p>			</li>			<li dir="ltr" style="list-style-type:square;font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">			<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Hỗ trợ Meta OG của facebook</span></p>			</li>			<li dir="ltr" style="list-style-type:square;font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">			<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Hỗ trợ chèn Meta GEO qua Cấu hình Meta-Tags</span></p>			</li>		</ul>		</li>		<li dir="ltr" style="list-style-type:circle;font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">		<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Cùng với đó, các module cũng được tối ưu hóa bằng các form hỗ trợ khai báo tiêu đề, mô tả (description), từ khóa (keywods) cho từng khu vực, từng trang. &nbsp;</span></p>		</li>		<li dir="ltr" style="list-style-type:circle;font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">		<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Với sự hỗ trợ tối đa này, người quản trị (admin) có thể tùy biến lại website theo phong cách SEO riêng biệt.</span><br  />		&nbsp;</p>		</li>	</ul>	</li>	<li dir="ltr" style="list-style-type:disc;font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Thay đổi giao diện, sử dụng giao diện tuỳ biến</span></p>	<ul style="margin-top:0pt;margin-bottom:0pt;">		<li dir="ltr" style="list-style-type:circle;font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">		<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Giao diện trong NukeViet 4 được làm mới, tương thích với nhiều màn hình hơn.</span></p>		</li>		<li dir="ltr" style="list-style-type:circle;font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">		<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Sử dụng thư viện bootstrap để việc phát triển giao diện thống nhất và dễ dàng hơn.</span></p>		</li>	</ul>	</li></ul><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">&nbsp;&nbsp;&nbsp; </span></p><ul style="margin-top:0pt;margin-bottom:0pt;">	<li dir="ltr" style="list-style-type:disc;font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Hệ thống nhận thông báo:</span><span style="font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;"> </span></p>	<ul style="margin-top:0pt;margin-bottom:0pt;">		<li dir="ltr" style="list-style-type:circle;font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">		<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Có thể gọi đây là một tiện ích nhỏ, song nó rất hữu dụng để admin tương tác với hệ thống một cách nhanh chóng. Admin có thể nhận thông báo từ hệ thống (hoặc từ module) khi có sự kiện nào đó. </span></p>		</li>	</ul>	</li></ul><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;margin-left: 72pt;"><span style="font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Ví dụ: Khi có khách gửi liên hệ (qua module contact) đến thì hệ thống xuất hiện biểu tượng thông báo “Có liên hệ mới” ở góc phải, Admin sẽ nhận được ngay lập tức thông báo khi người dùng đang ở Admin control panel (ACP).</span></p>&nbsp;<ul style="margin-top:0pt;margin-bottom:0pt;">	<li dir="ltr" style="list-style-type:disc;font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Thay đổi cơ chế quản lý block:</span><span style="font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;"> </span></p>	<ul style="margin-top:0pt;margin-bottom:0pt;">		<li dir="ltr" style="list-style-type:circle;font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">		<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Nhận thấy việc hiển thị block ở lightbox trong NukeViet 3 dẫn đến một số bất tiện trong quá trình quản lý, NukeViet 4 đã thay thế cách hiển thị này ở dạng cửa sổ popup. Dễ nhận thấy sự thay đổi này khi admin thêm (hoặc sửa) một block nào đó.</span></p>		</li>		<li dir="ltr" style="list-style-type:circle;font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">		<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">“Cấu hình hiển thị block trên các thiết bị” cũng được đưa vào phần cấu hình block, admin có thể tùy chọn cho phép block hiển thị trên các thiết bị nào (tất cả thiết bị, thiết bị di động, máy tính bảng, thiết bị khác).</span></p>		</li>	</ul>	</li></ul>&nbsp;<ul style="margin-top:0pt;margin-bottom:0pt;">	<li dir="ltr" style="list-style-type:disc;font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Thêm ngôn ngữ tiếng Pháp</span><span style="font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">: website cài đặt mới có sẵn 3 ngôn ngữ mặc định là Việt, Anh và Pháp.</span></p>	</li></ul>&nbsp;<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Các thay đổi của module: </span></p><ul style="margin-top:0pt;margin-bottom:0pt;">	<li dir="ltr" style="list-style-type:disc;font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Module menu: </span></p>	<ul style="margin-top:0pt;margin-bottom:0pt;">		<li dir="ltr" style="list-style-type:circle;font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">		<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Phương án quản lý menu được thay đổi hướng tới việc quản lý menu nhanh chóng, tiện lợi nhất cho admin. Admin có thể nạp nhanh menu theo các tùy chọn mà hệ thống cung cấp. </span></p>		</li>		<li dir="ltr" style="list-style-type:circle;font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">		<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Mẫu menu cũng được thay đổi, đa dạng và hiển thị tốt với các giao diện hiện đại.</span><br  />		&nbsp;</p>		</li>	</ul>	</li>	<li dir="ltr" style="list-style-type:disc;font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Module contact (Liên hệ):</span><span style="font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;"> </span></p>	<ul style="margin-top:0pt;margin-bottom:0pt;">		<li dir="ltr" style="list-style-type:circle;font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">		<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Bổ sung các trường thông tin về bộ phận (Điện thoại, fax, email, các trường liên hệ khác,...). </span></p>		</li>		<li dir="ltr" style="list-style-type:circle;font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">		<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Admin có thể trả lời khách nhiều lần, hệ thống lưu lại lịch sử trao đổi đó.</span><br  />		&nbsp;</p>		</li>	</ul>	</li>	<li dir="ltr" style="list-style-type:disc;font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Module users (Tài khoản):</span></p>	<ul style="margin-top:0pt;margin-bottom:0pt;">		<li dir="ltr" style="list-style-type:circle;font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">		<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Thay thế OpenID bằng thư viện OAuth - hỗ trợ tích hợp đăng nhập qua tài khoản mạng xã hội</span></p>		</li>		<li dir="ltr" style="list-style-type:circle;font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">		<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Cho phép đăng nhập 1 lần tài khoản người dùng NukeViet với Alfresco, Zimbra, Moodle, Koha</span></p>		</li>		<li dir="ltr" style="list-style-type:circle;font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">		<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Thêm chức năng tùy biến trường dữ liệu thành viên</span></p>		</li>		<li dir="ltr" style="list-style-type:circle;font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">		<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Thêm chức năng phân quyền sử dụng module users</span></p>		</li>		<li dir="ltr" style="list-style-type:circle;font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">		<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Thêm cấu hình: Số ký tự username, độ phức tạp mật khẩu, tạo mật khảu ngẫu nhiên,....</span></p>		</li>		<li dir="ltr" style="list-style-type:circle;font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">		<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Cho phép sử dụng tên truy cập, hoặc email để đăng nhập</span><br  />		&nbsp;</p>		</li>	</ul>	</li>	<li dir="ltr" style="list-style-type:disc;font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Module about:</span></p>	<ul style="margin-top:0pt;margin-bottom:0pt;">		<li dir="ltr" style="list-style-type:circle;font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">		<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Module about ở NukeViet 3 được đổi tên thành module page</span></p>		</li>		<li dir="ltr" style="list-style-type:circle;font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">		<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Thêm các cấu hình hỗ trợ SEO: Ảnh minh họa, chú thích ảnh minh họa, mô tả, từ khóa cho bài viết, hiển thị các công cụ tương tác với các mạng xã hội.</span></p>		</li>		<li dir="ltr" style="list-style-type:circle;font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">		<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Thêm RSS</span></p>		</li>		<li dir="ltr" style="list-style-type:circle;font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">		<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Cấu hình phương án hiển thị các bài viết trên trang chính</span><br  />		&nbsp;</p>		</li>	</ul>	</li>	<li dir="ltr" style="list-style-type:disc;font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">	<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Module news (Tin tức):</span></p>	<ul style="margin-top:0pt;margin-bottom:0pt;">		<li dir="ltr" style="list-style-type:circle;font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">		<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Thêm phân quyền cho người quản lý module, đến từng chủ đề</span></p>		</li>		<li dir="ltr" style="list-style-type:circle;font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">		<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Thay đổi phương án lọc từ khóa bài viết, lọc từ khóa theo các từ khóa đã có trong tags thay vì đọc từ từ điển.</span></p>		</li>		<li dir="ltr" style="list-style-type:circle;font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">		<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Bổ sung các trạng thái bài viết</span></p>		</li>		<li dir="ltr" style="list-style-type:circle;font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">		<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Thêm cấu hình mặc định hiển thị ảnh minh họa trên trang xem chi tiết bài viết</span></p>		</li>		<li dir="ltr" style="list-style-type:circle;font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">		<p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;"><span style="font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Thêm các công cụ tương tác với mạng xã &nbsp;hội.</span><br  />		&nbsp;</p>		</li>	</ul>	</li></ul><p dir="ltr" style="line-height:1.38;margin-top:0pt;margin-bottom:0pt;margin-left: 36pt;text-indent: -18pt;text-align: justify;"><span style="font-size:14.6px;font-family:Arial;color:rgb(0, 0, 0);background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;">Quản lý Bình luận</span></p><ul>	<li dir="ltr">	<p dir="ltr">Các bình luận của các module sẽ được tích hợp quản lý tập trung để cấu hình.</p>	</li>	<li dir="ltr">Khi xây dựng mới module, Chỉ cần nhúng 1 đoạn mã vào. Tránh phải việc copy mã code gây khó khăn cho bảo trì.</li></ul>', '', 2, 0, 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_logs`
--

DROP TABLE IF EXISTS `nv4_vi_news_logs`;
CREATE TABLE IF NOT EXISTS `nv4_vi_news_logs` (
`id` mediumint(8) unsigned NOT NULL,
  `sid` mediumint(8) NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `set_time` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_rows`
--

DROP TABLE IF EXISTS `nv4_vi_news_rows`;
CREATE TABLE IF NOT EXISTS `nv4_vi_news_rows` (
`id` int(11) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_rows`
--

INSERT INTO `nv4_vi_news_rows` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`) VALUES
(1, 1, '1,8,12', 0, 1, 'Quỳnh Nhi', 1, 1274989177, 1275318126, 1, 1274989140, 0, 2, 'Ra mắt công ty mã nguồn mở đầu tiên tại Việt Nam', 'Ra-mat-cong-ty-ma-nguon-mo-dau-tien-tai-Viet-Nam', 'Mã nguồn mở NukeViet vốn đã quá quen thuộc với cộng đồng CNTT Việt Nam trong mấy năm qua. Tuy chưa hoạt động chính thức, nhưng chỉ trong khoảng 5 năm gần đây, mã nguồn mở NukeViet đã được dùng phổ biến ở Việt Nam, áp dụng ở hầu hết các lĩnh vực, từ tin tức đến thương mại điện tử, từ các website cá nhân cho tới những hệ thống website doanh nghiệp.', 'nangly.jpg', 'Thành lập VINADES.,JSC', 1, 1, '6', 1, 2, 0, 0, 0),
(6, 10, '1,8,10', 0, 1, '', 2, 1274994722, 1275318001, 1, 1274994720, 0, 2, 'Thư mời hợp tác liên kết quảng cáo và cung cấp hosting thử nghiệm', 'Thu-moi-hop-tac', 'Hiện tại VINADES.,JSC đang tiến hành phát triển bộ mã nguồn NukeViet phiên bản 3.0 – một thế hệ CMS hoàn toàn mới với nhiều tính năng ưu việt, được đầu tư bài bản với kinh phí lớn. Với thiện chí hợp tác cùng phát triển VINADES.,JSC xin trân trọng gửi lời mời hợp tác đến Quý đối tác là các công ty cung cấp tên miền - hosting, các doanh nghiệp quan tâm và mong muốn hợp tác cùng VINADES để cùng thực hiện chung các hoạt động kinh doanh nhằm gia tăng giá trị, quảng bá thương hiệu chung cho cả hai bên.', 'hoptac.jpg', '', 1, 1, '6', 1, 1, 0, 0, 0),
(7, 11, '11', 0, 1, 'Phạm Quốc Tiến', 2, 1452150058, 1452150058, 1, 1452150058, 0, 2, 'Tuyển dụng lập trình viên PHP phát triển NukeViet', 'tuyen-dung-lap-trinh-vien-php-phat-trien-nukeviet', 'Bạn đam mê nguồn mở? Bạn đang cần tìm một công việc phù hợp với thế mạnh của bạn về PHP và MySQL?. Hãy gia nhập VINADES.,JSC để xây dựng mã nguồn mở hàng đầu cho Việt Nam.', '', '', 0, 1, '2', 1, 2, 0, 0, 0),
(10, 1, '1,9', 0, 1, '', 3, 1322685920, 1322686042, 1, 1322685920, 0, 2, 'Mã nguồn mở NukeViet giành giải ba Nhân tài đất Việt 2011', 'Ma-nguon-mo-NukeViet-gianh-giai-ba-Nhan-tai-dat-Viet-2011', 'Không có giải nhất và giải nhì, sản phẩm Mã nguồn mở NukeViet của VINADES.,JSC là một trong ba sản phẩm đã đoạt giải ba Nhân tài đất Việt 2011 - Lĩnh vực Công nghệ thông tin (Sản phẩm đã ứng dụng rộng rãi).', 'nukeviet-nhantaidatviet2011.jpg', 'Mã nguồn mở NukeViet giành giải ba Nhân tài đất Việt 2011', 1, 1, '6', 1, 1, 0, 0, 0),
(11, 1, '1', 0, 1, '', 4, 1445309676, 1445309676, 1, 1445309520, 0, 2, 'NukeViet được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước', 'nukeviet-duoc-uu-tien-mua-sam-su-dung-trong-co-quan-to-chuc-nha-nuoc', 'Ngày 5/12/2014, Bộ trưởng Bộ TT&TT Nguyễn Bắc Son đã ký ban hành Thông tư 20/2014/TT-BTTTT (Thông tư 20) quy định về các sản phẩm phần mềm nguồn mở (PMNM) được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước. NukeViet (phiên bản 3.4.02 trở lên) là phần mềm được nằm trong danh sách này.', 'chuc-mung-nukeviet-thong-tu-20-bo-tttt.jpg', 'NukeViet được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước', 1, 1, '4', 1, 2, 0, 0, 0),
(12, 11, '11', 0, 1, 'Vũ Bích Ngọc', 0, 1445391061, 1445394203, 1, 1445391000, 0, 2, 'Công ty VINADES tuyển dụng nhân viên kinh doanh', 'cong-ty-vinades-tuyen-dung-nhan-vien-kinh-doanh', 'Là một công ty phần mềm nguồn mở đầu tiên của Việt Nam chuyên quản một mã nguồn mở nổi tiếng, Công ty cổ phần phát triển nguồn mở Việt Nam (VINADES.,JSC) đã và đang thiết kế hàng ngàn website lớn nhỏ trong mọi lĩnh vực, đặc biệt phát triển mạnh mẽ trong mảng xây dựng cổng thông tin. Trong 2 năm tới, chúng tôi xác định duy trì vị trí dẫn đầu trong phát triển nguồn mở, dẫn đầu thị trường trong việc xây dựng và cung cấp các cổng thông tin lớn.<br />Nhằm phục vụ nhu cầu phát triển công ty, chúng tôi cần tuyển 02 nhân viên kinh doanh.', 'nukeviet-job.jpg', '', 1, 1, '4', 1, 0, 0, 0, 0),
(13, 11, '11', 0, 1, 'Phạm Quốc Tiến', 0, 1445391088, 1445394191, 1, 1445391060, 0, 2, 'Tuyển dụng chuyên viên đồ hoạ, kỹ thuật viên', 'tuyen-dung-chuyen-vien-do-hoa-ky-thuat-vien', 'Bạn đam mê nguồn mở? Bạn là chuyên gia đồ họa? Chúng tôi sẽ giúp bạn hiện thực hóa ước mơ của mình với một mức lương đảm bảo. Hãy gia nhập VINADES.,JSC để xây dựng mã nguồn mở hàng đầu cho Việt Nam.', '', '', 0, 1, '4', 1, 0, 0, 0, 0),
(14, 1, '1', 0, 1, 'Trần Thị Thu', 0, 1445391118, 1445394180, 1, 1445391060, 0, 2, 'Chương trình thực tập sinh tại công ty VINADES', 'chuong-trinh-thuc-tap-sinh-tai-cong-ty-vinades', 'Các bạn sinh viên thân mến!<br /><br />Nếu các bạn đã sẵn sàng để áp dụng những kiến thức được học ở trường vào thực tế thì Công ty cổ phần phát triển nguồn mở Việt Nam (VINADES.,JSC) là một sự lựa chọn phù hợp.<br /><br />Chúng tôi tạo ra cơ hội để những sinh viên có năng lực được trực tiếp làm việc trong môi trường chuyên nghiệp và năng động, đây cũng là cơ hội giúp bạn có những trải nghiệm công việc thực tế.<br /><br />Chúng tôi mang đến cơ hội thực tập tại nhiều vị trí cho tất cả những sinh viên năm cuối, các bạn sẽ được thử thách với những tình huống thực tế cùng sự hỗ trợ của các chuyên gia có nhiều kinh nghiệm của VINADES.,JSC.', '', '', 0, 1, '4', 1, 0, 0, 0, 0),
(15, 1, '11', 0, 1, 'Trần Thị Thu', 0, 1445391135, 1445394444, 1, 1445391120, 0, 2, 'Học việc tại công ty VINADES', 'hoc-viec-tai-cong-ty-vinades', '', '', '', 0, 1, '4', 1, 0, 0, 0, 0),
(16, 1, '1', 0, 1, '', 0, 1445391182, 1445394133, 1, 1445391120, 0, 2, 'NukeViet được Bộ GD&amp;ĐT đưa vào Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016', 'nukeviet-duoc-bo-gd-dt-dua-vao-huong-dan-thuc-hien-nhiem-vu-cntt-nam-hoc-2015-2016', 'Trong Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016 của Bộ Giáo dục và Đào tạo, NukeViet được đưa vào các hạng mục: Tập huấn sử dụng phần mềm nguồn mở cho giáo viên và cán bộ quản lý giáo dục; Khai thác, sử dụng và dạy học; đặc biệt phần &quot;khuyến cáo khi sử dụng các hệ thống CNTT&quot; có chỉ rõ &quot;Không nên làm website mã nguồn đóng&quot; và &quot;Nên làm NukeViet: phần mềm nguồn mở&quot;.', 'nukeviet-cms.jpg', '', 1, 1, '4', 1, 0, 0, 0, 0),
(17, 1, '1', 0, 1, '', 0, 1445391217, 1445393997, 1, 1445391180, 0, 2, 'Hỗ trợ tập huấn và triển khai NukeViet cho các Phòng, Sở GD&amp;ĐT', 'ho-tro-tap-huan-va-trien-khai-nukeviet-cho-cac-phong-so-gd-dt', 'Trên cơ sở Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016 của Bộ Giáo dục và Đào tạo, Công ty cổ phần phát triển nguồn mở Việt Nam và các doanh nghiệp phát triển NukeViet trong cộng đồng NukeViet đang tích cực công tác hỗ trợ cho các phòng GD&ĐT, Sở GD&ĐT triển khai 2 nội dung chính: Hỗ trợ công tác đào tạo tập huấn hướng dẫn sử dụng NukeViet và Hỗ trợ triển khai NukeViet cho các trường, Phòng và Sở GD&ĐT', 'tap-huan-pgd-ha-dong-2015.jpg', 'Tập huấn triển khai NukeViet tại Phòng Giáo dục và Đào tạo Hà Đông - Hà Nội', 1, 1, '4', 1, 2, 0, 0, 0),
(18, 1, '1', 0, 1, 'Hồ Ngọc Triển', 0, 1452158258, 1452158258, 1, 1452158258, 0, 2, 'NukeViet 4.0 có gì mới&#33;', 'nukeviet-4-0-co-gi-moi', 'NukeViet là hệ quản trị nội dung (Content Management System - CMS) nguồn mở thế hệ mới do người Việt phát triển, NukeViet cho phép bạn xây dựng và quản lý các website, cổng thông tin điện tử rất dễ dàng. NukeViet đã được trao giải Nhân tài đất Việt 2011, được Bộ GD&ĐT khuyên dùng trong thông tư số 08/2010/TT-BGDĐT, được Bộ TT&TT Quy định ưu tiên sử dụng trong cơ quan, tổ chức nhà nước tại thông tư 20/2014/TT-BTTTT.', 'chuc-mung-nukeviet-thong-tu-20-bo-tttt.jpg', '', 1, 1, '4', 1, 2, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_sources`
--

DROP TABLE IF EXISTS `nv4_vi_news_sources`;
CREATE TABLE IF NOT EXISTS `nv4_vi_news_sources` (
`sourceid` mediumint(8) unsigned NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) unsigned NOT NULL,
  `edit_time` int(11) unsigned NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_sources`
--

INSERT INTO `nv4_vi_news_sources` (`sourceid`, `title`, `link`, `logo`, `weight`, `add_time`, `edit_time`) VALUES
(1, 'Báo Hà Nội Mới', 'http://hanoimoi.com.vn', '', 1, 1274989177, 1274989177),
(2, 'VINADES.,JSC', 'http://vinades.vn', '', 2, 1274989787, 1274989787),
(3, 'Báo điện tử Dân Trí', 'http://dantri.com.vn', '', 4, 1322685396, 1322685396),
(4, 'Bộ Thông tin và Truyền thông', 'http://http://mic.gov.vn', '', 5, 1445309676, 1445309676);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_tags`
--

DROP TABLE IF EXISTS `nv4_vi_news_tags`;
CREATE TABLE IF NOT EXISTS `nv4_vi_news_tags` (
`tid` mediumint(8) unsigned NOT NULL,
  `numnews` mediumint(8) NOT NULL DEFAULT '0',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_tags`
--

INSERT INTO `nv4_vi_news_tags` (`tid`, `numnews`, `alias`, `image`, `description`, `keywords`) VALUES
(1, 1, 'nguồn-mở', '', '', 'nguồn mở'),
(2, 1, 'quen-thuộc', '', '', 'quen thuộc'),
(3, 1, 'cộng-đồng', '', '', 'cộng đồng'),
(4, 1, 'việt-nam', '', '', 'việt nam'),
(5, 1, 'hoạt-động', '', '', 'hoạt động'),
(6, 1, 'tin-tức', '', '', 'tin tức'),
(7, 1, 'thương-mại-điện', '', '', 'thương mại điện'),
(8, 1, 'điện-tử', '', '', 'điện tử'),
(9, 3, 'nukeviet', '', '', 'nukeviet'),
(10, 1, 'vinades', '', '', 'vinades'),
(11, 1, 'lập-trình-viên', '', '', 'lập trình viên'),
(12, 1, 'chuyên-viên-đồ-họa', '', '', 'chuyên viên đồ họa'),
(13, 1, 'php', '', '', 'php'),
(14, 1, 'mysql', '', '', 'mysql'),
(15, 1, 'nhân-tài-đất-việt-2011', '', '', 'nhân tài đất việt 2011'),
(16, 1, 'mã-nguồn-mở', '', '', 'mã nguồn mở');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_tags_id`
--

DROP TABLE IF EXISTS `nv4_vi_news_tags_id`;
CREATE TABLE IF NOT EXISTS `nv4_vi_news_tags_id` (
  `id` int(11) NOT NULL,
  `tid` mediumint(9) NOT NULL,
  `keyword` varchar(65) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_tags_id`
--

INSERT INTO `nv4_vi_news_tags_id` (`id`, `tid`, `keyword`) VALUES
(1, 1, 'nguồn mở'),
(1, 2, 'quen thuộc'),
(1, 3, 'cộng đồng'),
(1, 4, 'việt nam'),
(1, 5, 'hoạt động'),
(1, 6, 'tin tức'),
(1, 7, 'thương mại điện'),
(1, 8, 'điện tử'),
(1, 9, 'nukeviet'),
(7, 10, 'vinades'),
(7, 9, 'nukeviet'),
(7, 11, 'lập trình viên'),
(7, 12, 'chuyên viên đồ họa'),
(7, 13, 'php'),
(7, 14, 'mysql'),
(10, 15, 'Nhân tài đất Việt 2011'),
(10, 16, 'mã nguồn mở'),
(10, 9, 'nukeviet');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_topics`
--

DROP TABLE IF EXISTS `nv4_vi_news_topics`;
CREATE TABLE IF NOT EXISTS `nv4_vi_news_topics` (
`topicid` smallint(5) unsigned NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` smallint(5) NOT NULL DEFAULT '0',
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_topics`
--

INSERT INTO `nv4_vi_news_topics` (`topicid`, `title`, `alias`, `image`, `description`, `weight`, `keywords`, `add_time`, `edit_time`) VALUES
(1, 'NukeViet 4', 'NukeViet-4', '', 'NukeViet 4', 1, 'NukeViet 4', 1445396011, 1445396011);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_page`
--

DROP TABLE IF EXISTS `nv4_vi_page`;
CREATE TABLE IF NOT EXISTS `nv4_vi_page` (
`id` mediumint(8) unsigned NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imagealt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imageposition` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `bodytext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `socialbutton` tinyint(4) NOT NULL DEFAULT '0',
  `activecomm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `layout_func` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `gid` mediumint(9) NOT NULL DEFAULT '0',
  `weight` smallint(4) NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_page_config`
--

DROP TABLE IF EXISTS `nv4_vi_page_config`;
CREATE TABLE IF NOT EXISTS `nv4_vi_page_config` (
  `config_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_page_config`
--

INSERT INTO `nv4_vi_page_config` (`config_name`, `config_value`) VALUES
('viewtype', '0'),
('facebookapi', ''),
('per_page', '20'),
('news_first', '0'),
('related_articles', '5');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_referer_stats`
--

DROP TABLE IF EXISTS `nv4_vi_referer_stats`;
CREATE TABLE IF NOT EXISTS `nv4_vi_referer_stats` (
  `host` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` int(11) NOT NULL DEFAULT '0',
  `month01` int(11) NOT NULL DEFAULT '0',
  `month02` int(11) NOT NULL DEFAULT '0',
  `month03` int(11) NOT NULL DEFAULT '0',
  `month04` int(11) NOT NULL DEFAULT '0',
  `month05` int(11) NOT NULL DEFAULT '0',
  `month06` int(11) NOT NULL DEFAULT '0',
  `month07` int(11) NOT NULL DEFAULT '0',
  `month08` int(11) NOT NULL DEFAULT '0',
  `month09` int(11) NOT NULL DEFAULT '0',
  `month10` int(11) NOT NULL DEFAULT '0',
  `month11` int(11) NOT NULL DEFAULT '0',
  `month12` int(11) NOT NULL DEFAULT '0',
  `last_update` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_searchkeys`
--

DROP TABLE IF EXISTS `nv4_vi_searchkeys`;
CREATE TABLE IF NOT EXISTS `nv4_vi_searchkeys` (
  `id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `skey` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `total` int(11) NOT NULL DEFAULT '0',
  `search_engine` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_siteterms`
--

DROP TABLE IF EXISTS `nv4_vi_siteterms`;
CREATE TABLE IF NOT EXISTS `nv4_vi_siteterms` (
`id` mediumint(8) unsigned NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imagealt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imageposition` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `bodytext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `socialbutton` tinyint(4) NOT NULL DEFAULT '0',
  `activecomm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `layout_func` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `gid` mediumint(9) NOT NULL DEFAULT '0',
  `weight` smallint(4) NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_siteterms`
--

INSERT INTO `nv4_vi_siteterms` (`id`, `title`, `alias`, `image`, `imagealt`, `imageposition`, `description`, `bodytext`, `keywords`, `socialbutton`, `activecomm`, `layout_func`, `gid`, `weight`, `admin_id`, `add_time`, `edit_time`, `status`) VALUES
(1, 'Chính sách bảo mật (Quyền riêng tư)', 'privacy', '', '', 0, '', 'Tài liệu này cung cấp cho bạn (người truy cập và sử dụng website) chính sách liên quan đến bảo mật và quyền riêng tư của bạn.'', ''<strong><a id="index" name="index"></a>Danh mục</strong><br /> <a href="#1">Điều 1: Thu thập thông tin</a><br /> <a href="#2">Điều 2: Lưu trữ &amp; Bảo vệ thông tin</a><br /> <a href="#3">Điều 3: Sử dụng thông tin </a><br /> <a href="#4">Điều 4: Tiếp nhận thông tin từ các đối tác </a><br /> <a href="#5">Điều 5: Chia sẻ thông tin với bên thứ ba</a><br /> <a href="#6">Điều 6: Thay đổi chính sách bảo mật</a>  <hr  /> <h2 style="text-align: justify;"><a id="1" name="1"></a>Điều 1: Thu thập thông tin</h2>  <h3 style="text-align: justify;">1.1. Thu thập tự động:</h3>  <div style="text-align: justify;">Hệ thống này được xây dựng bằng mã nguồn NukeViet. Như mọi website hiện đại khác, chúng tôi sẽ thu thập địa chỉ IP và các thông tin web tiêu chuẩn khác của bạn như: loại trình duyệt, các trang bạn truy cập trong quá trình sử dụng dịch vụ, thông tin về máy tính &amp; thiết bị mạng v.v… cho mục đích phân tích thông tin phục vụ việc bảo mật và giữ an toàn cho hệ thống.</div>  <h3 style="text-align: justify;">1.2. Thu thập từ các khai báo của chính bạn:</h3>  <div style="text-align: justify;">Các thông tin do bạn khai báo cho chúng tôi trong quá trình làm việc như: đăng ký tài khoản, liên hệ với chúng tôi... cũng sẽ được chúng tôi lưu trữ phục vụ công việc chăm sóc khách hàng sau này.</div>  <h3 style="text-align: justify;">1.3. Thu thập thông tin thông qua việc đặt cookies:</h3>  <p style="text-align: justify;">Như mọi website hiện đại khác, khi bạn truy cập website, chúng tôi (hoặc các công cụ theo dõi hoặc thống kê hoạt động của website do các đối tác cung cấp) sẽ đặt một số File dữ liệu gọi là Cookies lên đĩa cứng hoặc bộ nhớ máy tính của bạn.</p>  <p style="text-align: justify;">Một trong số những Cookies này có thể tồn tại lâu để thuận tiện cho bạn trong quá trình sử dụng, ví dụ như: lưu Email của bạn trong trang đăng nhập để bạn không phải nhập lại v.v…</p>  <h3 style="text-align: justify;">1.4. Thu thập và lưu trữ thông tin trong quá khứ:</h3>  <p style="text-align: justify;">Bạn có thể thay đổi thông tin cá nhân của mình bất kỳ lúc nào bằng cách sử dụng chức năng tương ứng. Tuy nhiên chúng tôi sẽ lưu lại những thông tin bị thay đổi để chống các hành vi xóa dấu vết gian lận.</p>  <p style="text-align: right;"><a href="#index">Trở lại danh mục</a></p>  <h2 style="text-align: justify;"><a id="2" name="2"></a>Điều 2: Lưu trữ &amp; Bảo vệ thông tin</h2>  <div style="text-align: justify;">Hầu hết các thông tin được thu thập sẽ được lưu trữ tại cơ sở dữ liệu của chúng tôi.<br /> <br /> Chúng tôi bảo vệ dữ liệu cá nhân của các bạn bằng các hình thức như: mật khẩu, tường lửa, mã hóa cùng các hình thức thích hợp khác và chỉ cấp phép việc truy cập và xử lý dữ liệu cho các đối tượng phù hợp, ví dụ chính bạn hoặc các nhân viên có trách nhiệm xử thông tin với bạn thông qua các bước xác định danh tính phù hợp.<br /> <br /> Mật khẩu của bạn được lưu trữ và bảo vệ bằng phương pháp mã hoá trong cơ sở dữ liệu của hệ thống, vì thế nó rất an toàn. Tuy nhiên, chúng tôi khuyên bạn không nên dùng lại mật khẩu này trên các website khác. Mật khẩu của bạn là cách duy nhất để bạn đăng nhập vào tài khoản thành viên của mình trong website này, vì thế hãy cất giữ nó cẩn thận. Trong mọi trường hợp bạn không nên cung cấp thông tin mật khẩu cho bất kỳ người nào dù là người của chúng tôi, người của NukeViet hay bất kỳ người thứ ba nào khác trừ khi bạn hiểu rõ các rủi ro khi để lộ mật khẩu. Nếu quên mật khẩu, bạn có thể sử dụng chức năng “<a href="/users/lostpass/">Quên mật khẩu</a>” trên website. Để thực hiện việc này, bạn cần phải cung cấp cho hệ thống biết tên thành viên hoặc địa chỉ Email đang sử dụng của mình trong tài khoản, sau đó hệ thống sẽ tạo ra cho bạn mật khẩu mới và gửi đến cho bạn để bạn vẫn có thể đăng nhập vào tài khoản thành viên của mình.  <p style="text-align: right;"><a href="#index">Trở lại danh mục</a></p> </div>  <h2 style="text-align: justify;"><a id="3" name="3"></a>Điều 3: Sử dụng thông tin</h2>  <p style="text-align: justify;">Thông tin thu thập được sẽ được chúng tôi sử dụng để:</p>  <div style="text-align: justify;">- Cung cấp các dịch vụ hỗ trợ &amp; chăm sóc khách hàng.</div>  <div style="text-align: justify;">- Thực hiện giao dịch thanh toán &amp; gửi các thông báo trong quá trình giao dịch.</div>  <div style="text-align: justify;">- Xử lý khiếu nại, thu phí &amp; giải quyết sự cố.</div>  <div style="text-align: justify;">- Ngăn chặn các hành vi có nguy cơ rủi ro, bị cấm hoặc bất hợp pháp và đảm bảo tuân thủ đúng chính sách “Thỏa thuận người dùng”.</div>  <div style="text-align: justify;">- Đo đạc, tùy biến &amp; cải tiến dịch vụ, nội dung và hình thức của website.</div>  <div style="text-align: justify;">- Gửi bạn các thông tin về chương trình Marketing, các thông báo &amp; chương trình khuyến mại.</div>  <div style="text-align: justify;">- So sánh độ chính xác của thông tin cá nhân của bạn trong quá trình kiểm tra với bên thứ ba.</div>  <p style="text-align: right;"><a href="#index">Trở lại danh mục</a></p>  <h2 style="text-align: justify;"><a id="4" name="4"></a>Điều 4: Tiếp nhận thông tin từ các đối tác</h2>  <div style="text-align: justify;">Khi sử dụng các công cụ giao dịch và thanh toán thông qua internet, chúng tôi có thể tiếp nhận thêm các thông tin về bạn như địa chỉ username, Email, số tài khoản ngân hàng... Chúng tôi kiểm tra những thông tin này với cơ sở dữ liệu người dùng của mình nhằm xác nhận rằng bạn có phải là khách hàng của chúng tôi hay không nhằm giúp việc thực hiện các dịch vụ cho bạn được thuận lợi.<br /> <br /> Các thông tin tiếp nhận được sẽ được chúng tôi bảo mật như những thông tin mà chúng tôi thu thập được trực tiếp từ bạn.</div>  <p style="text-align: right;"><a href="#index">Trở lại danh mục</a></p>  <h2><a id="5" name="5"></a>Điều 5: Chia sẻ thông tin với bên thứ ba</h2>  <p style="text-align: justify;">Chúng tôi sẽ không chia sẻ thông tin cá nhân, thông tin tài chính... của bạn cho các bên thứ 3 trừ khi được sự đồng ý của chính bạn hoặc khi chúng tôi buộc phải tuân thủ theo các quy định pháp luật hoặc khi có yêu cầu từ cơ quan công quyền có thẩm quyền.</p>  <p style="text-align: right;"><a href="#index">Trở lại danh mục</a></p>  <h2><a id="6" name="6"></a>Điều 6: Thay đổi chính sách bảo mật</h2>  <p style="text-align: justify;">Chính sách Bảo mật này có thể thay đổi theo thời gian. Chúng tôi sẽ không giảm quyền của bạn theo Chính sách Bảo mật này mà không có sự đồng ý rõ ràng của bạn. Chúng tôi sẽ đăng bất kỳ thay đổi Chính sách Bảo mật nào trên trang này và, nếu những thay đổi này quan trọng, chúng tôi sẽ cung cấp thông báo nổi bật hơn (bao gồm, đối với một số dịch vụ nhất định, thông báo bằng email về các thay đổi của Chính sách Bảo mật).</p>  <p style="text-align: right;"><a href="#index">Trở lại danh mục</a></p>  <p style="text-align: right;">Chính sách bảo mật mặc định này được xây dựng cho <a href="http://nukeviet.vn" target="_blank">NukeViet CMS</a>, được tham khảo từ website <a href="http://webnhanh.vn/vi/thiet-ke-web/detail/Chinh-sach-bao-mat-Quyen-rieng-tu-Privacy-Policy-2147/">webnhanh.vn</a></p>', '', 0, '4', '', 0, 1, 1, 1453277351, 1453277351, 1),
(2, 'Điều khoản và điều kiện sử dụng', 'terms-and-conditions', '', '', 0, '', 'Đây là các điều khoản và điều kiện áp dụng cho website này. Truy cập và sử dụng website tức là bạn đã đồng ý với các quy định này.'', ''<div style="text-align: justify;">Cảm ơn bạn đã sử dụng. Xin vui lòng đọc các Điều khoản một cách cẩn thận, và <a href="/contact/">liên hệ</a> với chúng tôi nếu bạn có bất kỳ câu hỏi. Bằng việc truy cập hoặc sử dụng website của chúng tôi, bạn đồng ý bị ràng buộc bởi các <a href="/siteterms/terms-and-conditions.html">Điều khoản và điều kiện</a> sử dụng cũng như <a href="/siteterms/privacy.html">Chính sách bảo mật</a> của chúng tôi. Nếu không đồng ý với các quy định này, bạn vui lòng ngưng sử dụng website.<br /> <br /> <strong><a id="index" name="index"></a>Danh mục</strong><br /> <a href="#1">Điều 1: Điều khoản liên quan đến phần mềm vận hành website</a><br /> <a href="#2">Điều 2: Giới hạn cho việc sử dụng Website và các tài liệu trên website</a><br /> <a href="#3">Điều 3: Sử dụng thương hiệu</a><br /> <a href="#4">Điều 4: Các hành vi bị nghiêm cấm</a><br /> <a href="#5">Điều 5: Các đường liên kết đến các website khác</a><br /> <a href="#6">Điều 6: Từ chối bảo đảm</a><br /> <a href="#7">Điều 7: Luật áp dụng và cơ quan giải quyết tranh chấp</a><br /> <a href="#8">Điều 8: Thay đổi điều khoản và điều kiện sử dụng</a></div>  <hr  /> <h2 style="text-align: justify;"><a id="1" name="1"></a>Điều khoản liên quan đến phần mềm vận hành website</h2>  <p style="text-align: justify;">- Website của chúng tôi sử dụng hệ thống NukeViet, là giải pháp về website/ cổng thông tin nguồn mở được phát hành theo giấy phép bản quyền phần mềm tự do nguồn mở “<a href="http://www.gnu.org/licenses/old-licenses/gpl-2.0.html" target="_blank">GNU General Public License</a>” (viết tắt là GNU/GPL hay GPL) và có thể tải về miễn phí tại trang web <a href="http://www.nukeviet.vn" target="_blank">www.nukeviet.vn</a>.<br /> - Website này do chúng tôi sở hữu, điều hành và duy trì. NukeViet (hiểu ở đây là “hệ thống NukeViet” (bao gồm nhân hệ thống NukeViet và các sản phẩm phái sinh như NukeViet CMS, NukeViet Portal, <a href="http://edu.nukeviet.vn" target="_blank">NukeViet Edu Gate</a>...), “www.nukeviet.vn”, “tổ chức NukeViet”, “ban điều hành NukeViet”, &quot;Ban Quản Trị NukeViet&quot; và nói chung là những gì liên quan đến NukeViet...) không liên quan gì đến việc chúng tôi điều hành website cũng như quy định bạn được phép làm và không được phép làm gì trên website này.<br /> - Hệ thống NukeViet là bộ mã nguồn được phát triển để xây dựng các website/ cổng thông tin trên mạng. Chúng tôi (chủ sở hữu, điều hành và duy trì website này) không hỗ trợ và khẳng định hay ngụ ý về việc có liên quan đến NukeViet. Để biết thêm nhiều thông tin về NukeViet, hãy ghé thăm website của NukeViet tại địa chỉ: <a href="http://nukeviet.vn" target="_blank">http://nukeviet.vn</a>.</p>  <p style="text-align: right;"><a href="#index">Trở lại danh mục</a></p>  <h2 style="text-align: justify;"><a id="2" name="2"></a>Giới hạn cho việc sử dụng Website và các tài liệu trên website</h2>  <p style="text-align: justify;">- Tất cả các quyền liên quan đến tất cả tài liệu và thông tin được hiển thị và/ hoặc được tạo ra sẵn cho Website này (ví dụ như những tài liệu được cung cấp để tải về) được quản lý, sở hữu hoặc được cho phép sử dụng bởi chúng tôi hoặc chủ sở hữu tương ứng với giấy phép tương ứng. Việc sử dụng các tài liệu và thông tin phải được tuân thủ theo giấy phép tương ứng được áp dụng cho chúng.<br /> - Ngoại trừ các tài liệu được cấp phép rõ ràng dưới dạng giấy phép tư liệu mở&nbsp;Creative Commons (gọi là giấy phép CC) cho phép bạn khai thác và chia sẻ theo quy định của giấy phép tư liệu mở, đối với các loại tài liệu không ghi giấy phép rõ ràng thì bạn không được phép sử dụng (bao gồm nhưng không giới hạn việc sao chép, chỉnh sửa toàn bộ hay một phần, đăng tải, phân phối, cấp phép, bán và xuất bản) bất cứ tài liệu nào mà không có sự cho phép trước bằng văn bản của chúng tôi ngoại trừ việc sử dụng cho mục đích cá nhân, nội bộ, phi thương mại.<br /> - Một số tài liệu hoặc thông tin có những điều khoản và điều kiện áp dụng riêng cho chúng không phải là giấy phép tư liệu mở, trong trường hợp như vậy, bạn được yêu cầu phải chấp nhận các điều khoản và điều kiện đó khi truy cập vào các tài liệu và thông tin này.</p>  <p style="text-align: right;"><a href="#index">Trở lại danh mục</a></p>  <h2 style="text-align: justify;"><a id="3" name="3"></a>Sử dụng thương hiệu</h2>  <p style="text-align: justify;">- VINADES.,JSC, NukeViet và thương hiệu gắn với NukeViet (ví dụ NukeViet CMS, NukeViet Portal, NukeViet Edu Gate...), logo công ty VINADES thuộc sở hữu của Công ty cổ phần phát triển nguồn mở Việt Nam.<br /> - Những tên sản phẩm, tên dịch vụ khác, logo và/ hoặc những tên công ty được sử dụng trong Website này là những tài sản đã được đăng ký độc quyền và được giữ bản quyền bởi những người sở hữu và/ hoặc người cấp phép tương ứng.</p>  <p style="text-align: right;"><a href="#index">Trở lại danh mục</a></p>  <h2 style="text-align: justify;"><a id="4" name="4"></a>Các hành vi bị nghiêm cấm</h2>  <p style="text-align: justify;">Người truy cập website này không được thực hiện những hành vi dưới đây khi sử dụng website:<br /> - Xâm phạm các quyền hợp pháp (bao gồm nhưng không giới hạn đối với các quyền riêng tư và chung) của người khác.<br /> - Gây ra sự thiệt hại hoặc bất lợi cho người khác.<br /> - Làm xáo trộn trật tự công cộng.<br /> - Hành vi liên quan đến tội phạm.<br /> - Tải lên hoặc phát tán thông tin riêng tư của tổ chức, cá nhân khác mà không được sự chấp thuận của họ.<br /> - Sử dụng Website này vào mục đích thương mại mà chưa được sự cho phép của chúng tôi.<br /> - Nói xấu, làm nhục, phỉ báng người khác.<br /> - Tải lên các tập tin chứa virus hoặc các tập tin bị hư mà có thể gây thiệt hại đến sự vận hành của máy tính khác.<br /> - Những hoạt động có khả năng ảnh hưởng đến hoạt động bình thường của website.<br /> - Những hoạt động mà chúng tôi cho là không thích hợp.<br /> - Những hoạt động bất hợp pháp hoặc bị cấm bởi pháp luật hiện hành.</p>  <p style="text-align: right;"><a href="#index">Trở lại danh mục</a></p>  <h2 style="text-align: justify;"><a id="5" name="5"></a>Các đường liên kết đến các website khác</h2>  <p style="text-align: justify;">- Các website của các bên thứ ba (không phải các trang do chúng tôi quản lý) được liên kết đến hoặc từ website này (&quot;Các website khác&quot;) được điều hành và duy trì hoàn toàn độc lập bởi các bên thứ ba đó và không nằm trong quyền điều khiển và/hoặc giám sát của chúng tôi. Việc truy cập các website khác phải được tuân thủ theo các điều khoản và điều kiện quy định bởi ban điều hành của website đó.<br /> - Chúng tôi không chịu trách nhiệm cho sự mất mát hoặc thiệt hại do việc truy cập và sử dụng các website bên ngoài, và bạn phải chịu mọi rủi ro khi truy cập các website đó.<br /> - Không có nội dung nào trong Website này thể hiện như một sự đảm bảo của chúng tôi về nội dung của các website khác và các sản phẩm và/ hoặc các dịch vụ xuất hiện và/ hoặc được cung cấp tại các website khác.</p>  <p style="text-align: right;"><a href="#index">Trở lại danh mục</a></p>  <h2 style="text-align: justify;"><a id="6" name="6"></a>Từ chối bảo đảm</h2>  <p style="text-align: justify;">NGOẠI TRỪ PHẠM VI BỊ CẤM THEO LUẬT PHÁP HIỆN HÀNH, CHÚNG TÔI SẼ:<br /> - KHÔNG CHỊU TRÁCH NHIỆM HAY BẢO ĐẢM, MỘT CÁCH RÕ RÀNG HAY NGỤ Ý, BAO GỒM SỰ BẢO ĐẢM VỀ TÍNH CHÍNH XÁC, MỨC ĐỘ TIN CẬY, HOÀN THIỆN, PHÙ HỢP CHO MỤC ĐÍCH CỤ THỂ, SỰ KHÔNG XÂM PHẠM QUYỀN CỦA BÊN THỨ 3 VÀ/HOẶC TÍNH AN TOÀN CỦA NỘI DỤNG WEBSITE NÀY, VÀ NHỮNG TUYÊN BỐ, ĐẢM BẢO CÓ LIÊN QUAN.<br /> - KHÔNG CHỊU TRÁCH NHIỆM CHO BẤT KỲ SỰ THIỆT HẠI HAY MẤT MÁT PHÁT SINH TỪ VIỆC TRUY CẬP VÀ SỬ DỤNG WEBSITE HAY VIỆC KHÔNG THỂ SỬ DỤNG WEBSITE.<br /> - CHÚNG TÔI CÓ THỂ THAY ĐỔI VÀ/HOẶC THAY THẾ NỘI DUNG CỦA WEBSITE NÀY, HOẶC TẠM HOÃN HOẶC NGƯNG CUNG CẤP CÁC DỊCH VỤ QUA WEBSITE NÀY VÀO BẤT KỲ THỜI ĐIỂM NÀO MÀ KHÔNG CẦN THÔNG BÁO TRƯỚC. CHÚNG TÔI SẼ KHÔNG CHỊU TRÁCH NHIỆM CHO BẤT CỨ THIỆT HẠI NÀO PHÁT SINH DO SỰ THAY ĐỔI HOẶC THAY THẾ NỘI DUNG CỦA WEBSITE.</p>  <p style="text-align: right;"><a href="#index">Trở lại danh mục</a></p>  <h2 style="text-align: justify;"><a id="7" name="7"></a>Luật áp dụng và cơ quan giải quyết tranh chấp</h2>  <p style="text-align: justify;">- Các Điều Khoản và Điều Kiện này được điều chỉnh và giải thích theo luật của Việt Nam trừ khi có điều khoản khác được cung cấp thêm. Tất cả tranh chấp phát sinh liên quan đến website này và các Điều Khoản và Điều Kiện sử dụng này sẽ được giải quyết tại các tòa án ở Việt Nam.<br /> - Nếu một phần nào đó của các Điều Khoản và Điều Kiện bị xem là không có giá trị, vô hiệu, hoặc không áp dụng được vì lý do nào đó, phần đó được xem như là phần riêng biệt và không ảnh hưởng đến tính hiệu lực của phần còn lại.<br /> - Trong trường hợp có sự mâu thuẫn giữa bản Tiếng Anh và bản Tiếng Việt của bản Điều Khoản và Điều Kiện này, bản Tiếng Việt sẽ được ưu tiên áp dụng.</p>  <p style="text-align: right;"><a href="#index">Trở lại danh mục</a></p>  <h2 style="text-align: justify;"><a id="8" name="8"></a>Thay đổi điều khoản và điều kiện sử dụng</h2>  <div style="text-align: justify;">Điều khoản và điều kiện sử dụng có thể thay đổi theo thời gian. Chúng tôi bảo lưu quyền thay đổi hoặc sửa đổi bất kỳ điều khoản và điều kiện cũng như các quy định khác, bất cứ lúc nào và theo ý mình. Chúng tôi sẽ có thông báo trên website khi có sự thay đổi. Tiếp tục sử dụng trang web này sau khi đăng các thay đổi tức là bạn đã chấp nhận các thay đổi đó. <p style="text-align: right;"><a href="#index">Trở lại danh mục</a></p> </div>', '', 0, '4', '', 0, 2, 1, 1453277351, 1453277351, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_siteterms_config`
--

DROP TABLE IF EXISTS `nv4_vi_siteterms_config`;
CREATE TABLE IF NOT EXISTS `nv4_vi_siteterms_config` (
  `config_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_siteterms_config`
--

INSERT INTO `nv4_vi_siteterms_config` (`config_name`, `config_value`) VALUES
('viewtype', '0'),
('facebookapi', ''),
('per_page', '20'),
('news_first', '0'),
('related_articles', '5');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_voting`
--

DROP TABLE IF EXISTS `nv4_vi_voting`;
CREATE TABLE IF NOT EXISTS `nv4_vi_voting` (
`vid` smallint(5) unsigned NOT NULL,
  `question` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `acceptcm` int(2) NOT NULL DEFAULT '1',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `publ_time` int(11) unsigned NOT NULL DEFAULT '0',
  `exp_time` int(11) unsigned NOT NULL DEFAULT '0',
  `act` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_voting`
--

INSERT INTO `nv4_vi_voting` (`vid`, `question`, `link`, `acceptcm`, `admin_id`, `groups_view`, `publ_time`, `exp_time`, `act`) VALUES
(2, 'Bạn biết gì về NukeViet 4?', '', 1, 1, '6', 1275318563, 0, 1),
(3, 'Lợi ích của phần mềm nguồn mở là gì?', '', 1, 1, '6', 1275318563, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_voting_rows`
--

DROP TABLE IF EXISTS `nv4_vi_voting_rows`;
CREATE TABLE IF NOT EXISTS `nv4_vi_voting_rows` (
`id` mediumint(8) unsigned NOT NULL,
  `vid` smallint(5) unsigned NOT NULL,
  `title` varchar(245) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `hitstotal` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_voting_rows`
--

INSERT INTO `nv4_vi_voting_rows` (`id`, `vid`, `title`, `url`, `hitstotal`) VALUES
(5, 2, 'Một bộ sourcecode cho web hoàn toàn mới.', '', 0),
(6, 2, 'Mã nguồn mở, sử dụng miễn phí.', '', 0),
(7, 2, 'Sử dụng HTML5, CSS3 và hỗ trợ Ajax', '', 0),
(8, 2, 'Tất cả các ý kiến trên', '', 0),
(9, 3, 'Liên tục được cải tiến, sửa đổi bởi cả thế giới.', '', 0),
(10, 3, 'Được sử dụng miễn phí không mất tiền.', '', 0),
(11, 3, 'Được tự do khám phá, sửa đổi theo ý thích.', '', 0),
(12, 3, 'Phù hợp để học tập, nghiên cứu vì được tự do sửa đổi theo ý thích.', '', 0),
(13, 3, 'Tất cả các ý kiến trên', '', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `nv4_authors`
--
ALTER TABLE `nv4_authors`
 ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `nv4_authors_config`
--
ALTER TABLE `nv4_authors_config`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `keyname` (`keyname`);

--
-- Indexes for table `nv4_authors_module`
--
ALTER TABLE `nv4_authors_module`
 ADD PRIMARY KEY (`mid`), ADD UNIQUE KEY `module` (`module`);

--
-- Indexes for table `nv4_banip`
--
ALTER TABLE `nv4_banip`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `ip` (`ip`);

--
-- Indexes for table `nv4_banners_click`
--
ALTER TABLE `nv4_banners_click`
 ADD KEY `bid` (`bid`), ADD KEY `click_day` (`click_day`), ADD KEY `click_ip` (`click_ip`), ADD KEY `click_country` (`click_country`), ADD KEY `click_browse_key` (`click_browse_key`), ADD KEY `click_os_key` (`click_os_key`);

--
-- Indexes for table `nv4_banners_clients`
--
ALTER TABLE `nv4_banners_clients`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `login` (`login`), ADD UNIQUE KEY `email` (`email`), ADD KEY `full_name` (`full_name`);

--
-- Indexes for table `nv4_banners_plans`
--
ALTER TABLE `nv4_banners_plans`
 ADD PRIMARY KEY (`id`), ADD KEY `title` (`title`);

--
-- Indexes for table `nv4_banners_rows`
--
ALTER TABLE `nv4_banners_rows`
 ADD PRIMARY KEY (`id`), ADD KEY `pid` (`pid`), ADD KEY `clid` (`clid`);

--
-- Indexes for table `nv4_config`
--
ALTER TABLE `nv4_config`
 ADD UNIQUE KEY `lang` (`lang`,`module`,`config_name`);

--
-- Indexes for table `nv4_cookies`
--
ALTER TABLE `nv4_cookies`
 ADD UNIQUE KEY `cookiename` (`name`,`domain`,`path`), ADD KEY `name` (`name`);

--
-- Indexes for table `nv4_counter`
--
ALTER TABLE `nv4_counter`
 ADD UNIQUE KEY `c_type` (`c_type`,`c_val`);

--
-- Indexes for table `nv4_cronjobs`
--
ALTER TABLE `nv4_cronjobs`
 ADD PRIMARY KEY (`id`), ADD KEY `is_sys` (`is_sys`);

--
-- Indexes for table `nv4_extension_files`
--
ALTER TABLE `nv4_extension_files`
 ADD PRIMARY KEY (`idfile`);

--
-- Indexes for table `nv4_googleplus`
--
ALTER TABLE `nv4_googleplus`
 ADD PRIMARY KEY (`gid`), ADD UNIQUE KEY `idprofile` (`idprofile`);

--
-- Indexes for table `nv4_language`
--
ALTER TABLE `nv4_language`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `filelang` (`idfile`,`lang_key`);

--
-- Indexes for table `nv4_language_file`
--
ALTER TABLE `nv4_language_file`
 ADD PRIMARY KEY (`idfile`), ADD UNIQUE KEY `module` (`module`,`admin_file`);

--
-- Indexes for table `nv4_logs`
--
ALTER TABLE `nv4_logs`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_notification`
--
ALTER TABLE `nv4_notification`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_plugin`
--
ALTER TABLE `nv4_plugin`
 ADD PRIMARY KEY (`pid`), ADD UNIQUE KEY `plugin_file` (`plugin_file`);

--
-- Indexes for table `nv4_sessions`
--
ALTER TABLE `nv4_sessions`
 ADD UNIQUE KEY `session_id` (`session_id`), ADD KEY `onl_time` (`onl_time`);

--
-- Indexes for table `nv4_setup`
--
ALTER TABLE `nv4_setup`
 ADD UNIQUE KEY `lang` (`lang`,`module`);

--
-- Indexes for table `nv4_setup_extensions`
--
ALTER TABLE `nv4_setup_extensions`
 ADD UNIQUE KEY `title` (`type`,`title`), ADD KEY `id` (`id`), ADD KEY `type` (`type`);

--
-- Indexes for table `nv4_setup_language`
--
ALTER TABLE `nv4_setup_language`
 ADD PRIMARY KEY (`lang`);

--
-- Indexes for table `nv4_shops_block`
--
ALTER TABLE `nv4_shops_block`
 ADD UNIQUE KEY `bid` (`bid`,`id`);

--
-- Indexes for table `nv4_shops_block_cat`
--
ALTER TABLE `nv4_shops_block_cat`
 ADD PRIMARY KEY (`bid`), ADD UNIQUE KEY `vi_alias` (`vi_alias`);

--
-- Indexes for table `nv4_shops_carrier`
--
ALTER TABLE `nv4_shops_carrier`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_shops_carrier_config`
--
ALTER TABLE `nv4_shops_carrier_config`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_shops_carrier_config_items`
--
ALTER TABLE `nv4_shops_carrier_config_items`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_shops_carrier_config_location`
--
ALTER TABLE `nv4_shops_carrier_config_location`
 ADD UNIQUE KEY `cid` (`cid`,`lid`);

--
-- Indexes for table `nv4_shops_catalogs`
--
ALTER TABLE `nv4_shops_catalogs`
 ADD PRIMARY KEY (`catid`), ADD UNIQUE KEY `vi_alias` (`vi_alias`), ADD KEY `parentid` (`parentid`);

--
-- Indexes for table `nv4_shops_coupons`
--
ALTER TABLE `nv4_shops_coupons`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_shops_coupons_history`
--
ALTER TABLE `nv4_shops_coupons_history`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_shops_coupons_product`
--
ALTER TABLE `nv4_shops_coupons_product`
 ADD UNIQUE KEY `cid` (`cid`,`pid`);

--
-- Indexes for table `nv4_shops_discounts`
--
ALTER TABLE `nv4_shops_discounts`
 ADD PRIMARY KEY (`did`), ADD KEY `begin_time` (`begin_time`,`end_time`);

--
-- Indexes for table `nv4_shops_field`
--
ALTER TABLE `nv4_shops_field`
 ADD PRIMARY KEY (`fid`), ADD UNIQUE KEY `field` (`field`);

--
-- Indexes for table `nv4_shops_field_value_vi`
--
ALTER TABLE `nv4_shops_field_value_vi`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `rows_id` (`rows_id`,`field_id`);

--
-- Indexes for table `nv4_shops_files`
--
ALTER TABLE `nv4_shops_files`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_shops_files_rows`
--
ALTER TABLE `nv4_shops_files_rows`
 ADD UNIQUE KEY `id_files` (`id_files`,`id_rows`);

--
-- Indexes for table `nv4_shops_group`
--
ALTER TABLE `nv4_shops_group`
 ADD PRIMARY KEY (`groupid`), ADD UNIQUE KEY `vi_alias` (`vi_alias`), ADD KEY `parentid` (`parentid`);

--
-- Indexes for table `nv4_shops_group_cateid`
--
ALTER TABLE `nv4_shops_group_cateid`
 ADD UNIQUE KEY `groupid` (`groupid`,`cateid`);

--
-- Indexes for table `nv4_shops_group_items`
--
ALTER TABLE `nv4_shops_group_items`
 ADD PRIMARY KEY (`pro_id`,`group_id`), ADD KEY `pro_id` (`pro_id`), ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `nv4_shops_group_quantity`
--
ALTER TABLE `nv4_shops_group_quantity`
 ADD UNIQUE KEY `pro_id` (`pro_id`,`listgroup`);

--
-- Indexes for table `nv4_shops_location`
--
ALTER TABLE `nv4_shops_location`
 ADD PRIMARY KEY (`id`), ADD KEY `parentid` (`parentid`);

--
-- Indexes for table `nv4_shops_money_vi`
--
ALTER TABLE `nv4_shops_money_vi`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `nv4_shops_orders`
--
ALTER TABLE `nv4_shops_orders`
 ADD PRIMARY KEY (`order_id`), ADD UNIQUE KEY `order_code` (`order_code`), ADD KEY `user_id` (`user_id`), ADD KEY `order_time` (`order_time`), ADD KEY `shop_id` (`shop_id`);

--
-- Indexes for table `nv4_shops_orders_id`
--
ALTER TABLE `nv4_shops_orders_id`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `orderid` (`order_id`,`id`);

--
-- Indexes for table `nv4_shops_orders_id_group`
--
ALTER TABLE `nv4_shops_orders_id_group`
 ADD UNIQUE KEY `orderid` (`order_i`,`group_id`);

--
-- Indexes for table `nv4_shops_orders_shipping`
--
ALTER TABLE `nv4_shops_orders_shipping`
 ADD PRIMARY KEY (`id`), ADD KEY `add_time` (`add_time`);

--
-- Indexes for table `nv4_shops_payment`
--
ALTER TABLE `nv4_shops_payment`
 ADD PRIMARY KEY (`payment`);

--
-- Indexes for table `nv4_shops_point`
--
ALTER TABLE `nv4_shops_point`
 ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `nv4_shops_point_history`
--
ALTER TABLE `nv4_shops_point_history`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_shops_review`
--
ALTER TABLE `nv4_shops_review`
 ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `nv4_shops_rows`
--
ALTER TABLE `nv4_shops_rows`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `vi_alias` (`vi_alias`), ADD KEY `listcatid` (`listcatid`), ADD KEY `user_id` (`user_id`), ADD KEY `publtime` (`publtime`), ADD KEY `exptime` (`exptime`);

--
-- Indexes for table `nv4_shops_shops`
--
ALTER TABLE `nv4_shops_shops`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_shops_shops_carrier`
--
ALTER TABLE `nv4_shops_shops_carrier`
 ADD UNIQUE KEY `shops_id` (`shops_id`,`carrier_id`);

--
-- Indexes for table `nv4_shops_tabs`
--
ALTER TABLE `nv4_shops_tabs`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_shops_tags_id_vi`
--
ALTER TABLE `nv4_shops_tags_id_vi`
 ADD UNIQUE KEY `sid` (`id`,`tid`), ADD KEY `tid` (`tid`);

--
-- Indexes for table `nv4_shops_tags_vi`
--
ALTER TABLE `nv4_shops_tags_vi`
 ADD PRIMARY KEY (`tid`), ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_shops_template`
--
ALTER TABLE `nv4_shops_template`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_shops_transaction`
--
ALTER TABLE `nv4_shops_transaction`
 ADD PRIMARY KEY (`transaction_id`), ADD KEY `order_id` (`order_id`), ADD KEY `payment_id` (`payment_id`);

--
-- Indexes for table `nv4_shops_units`
--
ALTER TABLE `nv4_shops_units`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_shops_warehouse`
--
ALTER TABLE `nv4_shops_warehouse`
 ADD PRIMARY KEY (`wid`);

--
-- Indexes for table `nv4_shops_warehouse_logs`
--
ALTER TABLE `nv4_shops_warehouse_logs`
 ADD PRIMARY KEY (`logid`), ADD KEY `wid` (`wid`);

--
-- Indexes for table `nv4_shops_warehouse_logs_group`
--
ALTER TABLE `nv4_shops_warehouse_logs_group`
 ADD PRIMARY KEY (`id`), ADD KEY `logid` (`logid`);

--
-- Indexes for table `nv4_shops_weight_vi`
--
ALTER TABLE `nv4_shops_weight_vi`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `nv4_shops_wishlist`
--
ALTER TABLE `nv4_shops_wishlist`
 ADD PRIMARY KEY (`wid`);

--
-- Indexes for table `nv4_upload_dir`
--
ALTER TABLE `nv4_upload_dir`
 ADD PRIMARY KEY (`did`), ADD UNIQUE KEY `name` (`dirname`);

--
-- Indexes for table `nv4_upload_file`
--
ALTER TABLE `nv4_upload_file`
 ADD UNIQUE KEY `did` (`did`,`title`), ADD KEY `userid` (`userid`), ADD KEY `type` (`type`);

--
-- Indexes for table `nv4_users`
--
ALTER TABLE `nv4_users`
 ADD PRIMARY KEY (`userid`), ADD UNIQUE KEY `username` (`username`), ADD UNIQUE KEY `md5username` (`md5username`), ADD UNIQUE KEY `email` (`email`), ADD KEY `idsite` (`idsite`);

--
-- Indexes for table `nv4_users_config`
--
ALTER TABLE `nv4_users_config`
 ADD PRIMARY KEY (`config`);

--
-- Indexes for table `nv4_users_field`
--
ALTER TABLE `nv4_users_field`
 ADD PRIMARY KEY (`fid`), ADD UNIQUE KEY `field` (`field`);

--
-- Indexes for table `nv4_users_groups`
--
ALTER TABLE `nv4_users_groups`
 ADD PRIMARY KEY (`group_id`), ADD UNIQUE KEY `ktitle` (`title`,`idsite`), ADD KEY `exp_time` (`exp_time`);

--
-- Indexes for table `nv4_users_groups_users`
--
ALTER TABLE `nv4_users_groups_users`
 ADD PRIMARY KEY (`group_id`,`userid`);

--
-- Indexes for table `nv4_users_info`
--
ALTER TABLE `nv4_users_info`
 ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `nv4_users_openid`
--
ALTER TABLE `nv4_users_openid`
 ADD PRIMARY KEY (`opid`), ADD KEY `userid` (`userid`), ADD KEY `email` (`email`);

--
-- Indexes for table `nv4_users_question`
--
ALTER TABLE `nv4_users_question`
 ADD PRIMARY KEY (`qid`), ADD UNIQUE KEY `title` (`title`,`lang`);

--
-- Indexes for table `nv4_users_reg`
--
ALTER TABLE `nv4_users_reg`
 ADD PRIMARY KEY (`userid`), ADD UNIQUE KEY `login` (`username`), ADD UNIQUE KEY `md5username` (`md5username`), ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `nv4_vi_about`
--
ALTER TABLE `nv4_vi_about`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_vi_about_config`
--
ALTER TABLE `nv4_vi_about_config`
 ADD UNIQUE KEY `config_name` (`config_name`);

--
-- Indexes for table `nv4_vi_blocks_groups`
--
ALTER TABLE `nv4_vi_blocks_groups`
 ADD PRIMARY KEY (`bid`), ADD KEY `theme` (`theme`), ADD KEY `module` (`module`), ADD KEY `position` (`position`), ADD KEY `exp_time` (`exp_time`);

--
-- Indexes for table `nv4_vi_blocks_weight`
--
ALTER TABLE `nv4_vi_blocks_weight`
 ADD UNIQUE KEY `bid` (`bid`,`func_id`);

--
-- Indexes for table `nv4_vi_comment`
--
ALTER TABLE `nv4_vi_comment`
 ADD PRIMARY KEY (`cid`), ADD KEY `mod_id` (`module`,`area`,`id`), ADD KEY `post_time` (`post_time`);

--
-- Indexes for table `nv4_vi_contact_department`
--
ALTER TABLE `nv4_vi_contact_department`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `full_name` (`full_name`), ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_vi_contact_reply`
--
ALTER TABLE `nv4_vi_contact_reply`
 ADD PRIMARY KEY (`rid`), ADD KEY `id` (`id`);

--
-- Indexes for table `nv4_vi_contact_send`
--
ALTER TABLE `nv4_vi_contact_send`
 ADD PRIMARY KEY (`id`), ADD KEY `sender_name` (`sender_name`);

--
-- Indexes for table `nv4_vi_freecontent_blocks`
--
ALTER TABLE `nv4_vi_freecontent_blocks`
 ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `nv4_vi_freecontent_rows`
--
ALTER TABLE `nv4_vi_freecontent_rows`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_vi_menu`
--
ALTER TABLE `nv4_vi_menu`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `nv4_vi_menu_rows`
--
ALTER TABLE `nv4_vi_menu_rows`
 ADD PRIMARY KEY (`id`), ADD KEY `parentid` (`parentid`,`mid`);

--
-- Indexes for table `nv4_vi_modfuncs`
--
ALTER TABLE `nv4_vi_modfuncs`
 ADD PRIMARY KEY (`func_id`), ADD UNIQUE KEY `func_name` (`func_name`,`in_module`), ADD UNIQUE KEY `alias` (`alias`,`in_module`);

--
-- Indexes for table `nv4_vi_modthemes`
--
ALTER TABLE `nv4_vi_modthemes`
 ADD UNIQUE KEY `func_id` (`func_id`,`layout`,`theme`);

--
-- Indexes for table `nv4_vi_modules`
--
ALTER TABLE `nv4_vi_modules`
 ADD PRIMARY KEY (`title`);

--
-- Indexes for table `nv4_vi_news_1`
--
ALTER TABLE `nv4_vi_news_1`
 ADD PRIMARY KEY (`id`), ADD KEY `catid` (`catid`), ADD KEY `topicid` (`topicid`), ADD KEY `admin_id` (`admin_id`), ADD KEY `author` (`author`), ADD KEY `title` (`title`), ADD KEY `addtime` (`addtime`), ADD KEY `publtime` (`publtime`), ADD KEY `exptime` (`exptime`), ADD KEY `status` (`status`);

--
-- Indexes for table `nv4_vi_news_2`
--
ALTER TABLE `nv4_vi_news_2`
 ADD PRIMARY KEY (`id`), ADD KEY `catid` (`catid`), ADD KEY `topicid` (`topicid`), ADD KEY `admin_id` (`admin_id`), ADD KEY `author` (`author`), ADD KEY `title` (`title`), ADD KEY `addtime` (`addtime`), ADD KEY `publtime` (`publtime`), ADD KEY `exptime` (`exptime`), ADD KEY `status` (`status`);

--
-- Indexes for table `nv4_vi_news_8`
--
ALTER TABLE `nv4_vi_news_8`
 ADD PRIMARY KEY (`id`), ADD KEY `catid` (`catid`), ADD KEY `topicid` (`topicid`), ADD KEY `admin_id` (`admin_id`), ADD KEY `author` (`author`), ADD KEY `title` (`title`), ADD KEY `addtime` (`addtime`), ADD KEY `publtime` (`publtime`), ADD KEY `exptime` (`exptime`), ADD KEY `status` (`status`);

--
-- Indexes for table `nv4_vi_news_9`
--
ALTER TABLE `nv4_vi_news_9`
 ADD PRIMARY KEY (`id`), ADD KEY `catid` (`catid`), ADD KEY `topicid` (`topicid`), ADD KEY `admin_id` (`admin_id`), ADD KEY `author` (`author`), ADD KEY `title` (`title`), ADD KEY `addtime` (`addtime`), ADD KEY `publtime` (`publtime`), ADD KEY `exptime` (`exptime`), ADD KEY `status` (`status`);

--
-- Indexes for table `nv4_vi_news_10`
--
ALTER TABLE `nv4_vi_news_10`
 ADD PRIMARY KEY (`id`), ADD KEY `catid` (`catid`), ADD KEY `topicid` (`topicid`), ADD KEY `admin_id` (`admin_id`), ADD KEY `author` (`author`), ADD KEY `title` (`title`), ADD KEY `addtime` (`addtime`), ADD KEY `publtime` (`publtime`), ADD KEY `exptime` (`exptime`), ADD KEY `status` (`status`);

--
-- Indexes for table `nv4_vi_news_11`
--
ALTER TABLE `nv4_vi_news_11`
 ADD PRIMARY KEY (`id`), ADD KEY `catid` (`catid`), ADD KEY `topicid` (`topicid`), ADD KEY `admin_id` (`admin_id`), ADD KEY `author` (`author`), ADD KEY `title` (`title`), ADD KEY `addtime` (`addtime`), ADD KEY `publtime` (`publtime`), ADD KEY `exptime` (`exptime`), ADD KEY `status` (`status`);

--
-- Indexes for table `nv4_vi_news_12`
--
ALTER TABLE `nv4_vi_news_12`
 ADD PRIMARY KEY (`id`), ADD KEY `catid` (`catid`), ADD KEY `topicid` (`topicid`), ADD KEY `admin_id` (`admin_id`), ADD KEY `author` (`author`), ADD KEY `title` (`title`), ADD KEY `addtime` (`addtime`), ADD KEY `publtime` (`publtime`), ADD KEY `exptime` (`exptime`), ADD KEY `status` (`status`);

--
-- Indexes for table `nv4_vi_news_admins`
--
ALTER TABLE `nv4_vi_news_admins`
 ADD UNIQUE KEY `userid` (`userid`,`catid`);

--
-- Indexes for table `nv4_vi_news_block`
--
ALTER TABLE `nv4_vi_news_block`
 ADD UNIQUE KEY `bid` (`bid`,`id`);

--
-- Indexes for table `nv4_vi_news_block_cat`
--
ALTER TABLE `nv4_vi_news_block_cat`
 ADD PRIMARY KEY (`bid`), ADD UNIQUE KEY `title` (`title`), ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_vi_news_cat`
--
ALTER TABLE `nv4_vi_news_cat`
 ADD PRIMARY KEY (`catid`), ADD UNIQUE KEY `alias` (`alias`), ADD KEY `parentid` (`parentid`);

--
-- Indexes for table `nv4_vi_news_config_post`
--
ALTER TABLE `nv4_vi_news_config_post`
 ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `nv4_vi_news_detail`
--
ALTER TABLE `nv4_vi_news_detail`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_vi_news_logs`
--
ALTER TABLE `nv4_vi_news_logs`
 ADD PRIMARY KEY (`id`), ADD KEY `sid` (`sid`), ADD KEY `userid` (`userid`);

--
-- Indexes for table `nv4_vi_news_rows`
--
ALTER TABLE `nv4_vi_news_rows`
 ADD PRIMARY KEY (`id`), ADD KEY `catid` (`catid`), ADD KEY `topicid` (`topicid`), ADD KEY `admin_id` (`admin_id`), ADD KEY `author` (`author`), ADD KEY `title` (`title`), ADD KEY `addtime` (`addtime`), ADD KEY `publtime` (`publtime`), ADD KEY `exptime` (`exptime`), ADD KEY `status` (`status`);

--
-- Indexes for table `nv4_vi_news_sources`
--
ALTER TABLE `nv4_vi_news_sources`
 ADD PRIMARY KEY (`sourceid`), ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `nv4_vi_news_tags`
--
ALTER TABLE `nv4_vi_news_tags`
 ADD PRIMARY KEY (`tid`), ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_vi_news_tags_id`
--
ALTER TABLE `nv4_vi_news_tags_id`
 ADD UNIQUE KEY `id_tid` (`id`,`tid`), ADD KEY `tid` (`tid`);

--
-- Indexes for table `nv4_vi_news_topics`
--
ALTER TABLE `nv4_vi_news_topics`
 ADD PRIMARY KEY (`topicid`), ADD UNIQUE KEY `title` (`title`), ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_vi_page`
--
ALTER TABLE `nv4_vi_page`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_vi_page_config`
--
ALTER TABLE `nv4_vi_page_config`
 ADD UNIQUE KEY `config_name` (`config_name`);

--
-- Indexes for table `nv4_vi_referer_stats`
--
ALTER TABLE `nv4_vi_referer_stats`
 ADD UNIQUE KEY `host` (`host`), ADD KEY `total` (`total`);

--
-- Indexes for table `nv4_vi_searchkeys`
--
ALTER TABLE `nv4_vi_searchkeys`
 ADD KEY `id` (`id`), ADD KEY `skey` (`skey`), ADD KEY `search_engine` (`search_engine`);

--
-- Indexes for table `nv4_vi_siteterms`
--
ALTER TABLE `nv4_vi_siteterms`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_vi_siteterms_config`
--
ALTER TABLE `nv4_vi_siteterms_config`
 ADD UNIQUE KEY `config_name` (`config_name`);

--
-- Indexes for table `nv4_vi_voting`
--
ALTER TABLE `nv4_vi_voting`
 ADD PRIMARY KEY (`vid`), ADD UNIQUE KEY `question` (`question`);

--
-- Indexes for table `nv4_vi_voting_rows`
--
ALTER TABLE `nv4_vi_voting_rows`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `vid` (`vid`,`title`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `nv4_authors_config`
--
ALTER TABLE `nv4_authors_config`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_authors_module`
--
ALTER TABLE `nv4_authors_module`
MODIFY `mid` mediumint(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `nv4_banip`
--
ALTER TABLE `nv4_banip`
MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_banners_clients`
--
ALTER TABLE `nv4_banners_clients`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_banners_plans`
--
ALTER TABLE `nv4_banners_plans`
MODIFY `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `nv4_banners_rows`
--
ALTER TABLE `nv4_banners_rows`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `nv4_cronjobs`
--
ALTER TABLE `nv4_cronjobs`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `nv4_extension_files`
--
ALTER TABLE `nv4_extension_files`
MODIFY `idfile` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_googleplus`
--
ALTER TABLE `nv4_googleplus`
MODIFY `gid` smallint(5) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_language`
--
ALTER TABLE `nv4_language`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_language_file`
--
ALTER TABLE `nv4_language_file`
MODIFY `idfile` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_logs`
--
ALTER TABLE `nv4_logs`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=188;
--
-- AUTO_INCREMENT for table `nv4_notification`
--
ALTER TABLE `nv4_notification`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_plugin`
--
ALTER TABLE `nv4_plugin`
MODIFY `pid` tinyint(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `nv4_shops_block_cat`
--
ALTER TABLE `nv4_shops_block_cat`
MODIFY `bid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `nv4_shops_carrier`
--
ALTER TABLE `nv4_shops_carrier`
MODIFY `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_shops_carrier_config`
--
ALTER TABLE `nv4_shops_carrier_config`
MODIFY `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_shops_carrier_config_items`
--
ALTER TABLE `nv4_shops_carrier_config_items`
MODIFY `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_shops_catalogs`
--
ALTER TABLE `nv4_shops_catalogs`
MODIFY `catid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `nv4_shops_coupons`
--
ALTER TABLE `nv4_shops_coupons`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_shops_coupons_history`
--
ALTER TABLE `nv4_shops_coupons_history`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_shops_discounts`
--
ALTER TABLE `nv4_shops_discounts`
MODIFY `did` smallint(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_shops_field`
--
ALTER TABLE `nv4_shops_field`
MODIFY `fid` mediumint(8) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_shops_field_value_vi`
--
ALTER TABLE `nv4_shops_field_value_vi`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_shops_files`
--
ALTER TABLE `nv4_shops_files`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_shops_group`
--
ALTER TABLE `nv4_shops_group`
MODIFY `groupid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT for table `nv4_shops_location`
--
ALTER TABLE `nv4_shops_location`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_shops_orders`
--
ALTER TABLE `nv4_shops_orders`
MODIFY `order_id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_shops_orders_id`
--
ALTER TABLE `nv4_shops_orders_id`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_shops_orders_shipping`
--
ALTER TABLE `nv4_shops_orders_shipping`
MODIFY `id` tinyint(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_shops_point_history`
--
ALTER TABLE `nv4_shops_point_history`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_shops_review`
--
ALTER TABLE `nv4_shops_review`
MODIFY `review_id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_shops_rows`
--
ALTER TABLE `nv4_shops_rows`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `nv4_shops_shops`
--
ALTER TABLE `nv4_shops_shops`
MODIFY `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_shops_tabs`
--
ALTER TABLE `nv4_shops_tabs`
MODIFY `id` int(3) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `nv4_shops_tags_vi`
--
ALTER TABLE `nv4_shops_tags_vi`
MODIFY `tid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `nv4_shops_template`
--
ALTER TABLE `nv4_shops_template`
MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_shops_transaction`
--
ALTER TABLE `nv4_shops_transaction`
MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_shops_units`
--
ALTER TABLE `nv4_shops_units`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `nv4_shops_warehouse`
--
ALTER TABLE `nv4_shops_warehouse`
MODIFY `wid` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `nv4_shops_warehouse_logs`
--
ALTER TABLE `nv4_shops_warehouse_logs`
MODIFY `logid` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `nv4_shops_warehouse_logs_group`
--
ALTER TABLE `nv4_shops_warehouse_logs_group`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_shops_weight_vi`
--
ALTER TABLE `nv4_shops_weight_vi`
MODIFY `id` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `nv4_shops_wishlist`
--
ALTER TABLE `nv4_shops_wishlist`
MODIFY `wid` smallint(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_upload_dir`
--
ALTER TABLE `nv4_upload_dir`
MODIFY `did` mediumint(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `nv4_users`
--
ALTER TABLE `nv4_users`
MODIFY `userid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `nv4_users_field`
--
ALTER TABLE `nv4_users_field`
MODIFY `fid` mediumint(8) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_users_groups`
--
ALTER TABLE `nv4_users_groups`
MODIFY `group_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `nv4_users_question`
--
ALTER TABLE `nv4_users_question`
MODIFY `qid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `nv4_users_reg`
--
ALTER TABLE `nv4_users_reg`
MODIFY `userid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_vi_about`
--
ALTER TABLE `nv4_vi_about`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `nv4_vi_blocks_groups`
--
ALTER TABLE `nv4_vi_blocks_groups`
MODIFY `bid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `nv4_vi_comment`
--
ALTER TABLE `nv4_vi_comment`
MODIFY `cid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_vi_contact_department`
--
ALTER TABLE `nv4_vi_contact_department`
MODIFY `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `nv4_vi_contact_reply`
--
ALTER TABLE `nv4_vi_contact_reply`
MODIFY `rid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_vi_contact_send`
--
ALTER TABLE `nv4_vi_contact_send`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_vi_freecontent_blocks`
--
ALTER TABLE `nv4_vi_freecontent_blocks`
MODIFY `bid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `nv4_vi_freecontent_rows`
--
ALTER TABLE `nv4_vi_freecontent_rows`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `nv4_vi_menu`
--
ALTER TABLE `nv4_vi_menu`
MODIFY `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `nv4_vi_menu_rows`
--
ALTER TABLE `nv4_vi_menu_rows`
MODIFY `id` mediumint(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `nv4_vi_modfuncs`
--
ALTER TABLE `nv4_vi_modfuncs`
MODIFY `func_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=89;
--
-- AUTO_INCREMENT for table `nv4_vi_news_1`
--
ALTER TABLE `nv4_vi_news_1`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `nv4_vi_news_2`
--
ALTER TABLE `nv4_vi_news_2`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_vi_news_8`
--
ALTER TABLE `nv4_vi_news_8`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `nv4_vi_news_9`
--
ALTER TABLE `nv4_vi_news_9`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `nv4_vi_news_10`
--
ALTER TABLE `nv4_vi_news_10`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `nv4_vi_news_11`
--
ALTER TABLE `nv4_vi_news_11`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `nv4_vi_news_12`
--
ALTER TABLE `nv4_vi_news_12`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `nv4_vi_news_block_cat`
--
ALTER TABLE `nv4_vi_news_block_cat`
MODIFY `bid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `nv4_vi_news_cat`
--
ALTER TABLE `nv4_vi_news_cat`
MODIFY `catid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `nv4_vi_news_logs`
--
ALTER TABLE `nv4_vi_news_logs`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_vi_news_rows`
--
ALTER TABLE `nv4_vi_news_rows`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `nv4_vi_news_sources`
--
ALTER TABLE `nv4_vi_news_sources`
MODIFY `sourceid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `nv4_vi_news_tags`
--
ALTER TABLE `nv4_vi_news_tags`
MODIFY `tid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `nv4_vi_news_topics`
--
ALTER TABLE `nv4_vi_news_topics`
MODIFY `topicid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `nv4_vi_page`
--
ALTER TABLE `nv4_vi_page`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_vi_siteterms`
--
ALTER TABLE `nv4_vi_siteterms`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `nv4_vi_voting`
--
ALTER TABLE `nv4_vi_voting`
MODIFY `vid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `nv4_vi_voting_rows`
--
ALTER TABLE `nv4_vi_voting_rows`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
