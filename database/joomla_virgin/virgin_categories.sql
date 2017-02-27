-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               10.2.3-MariaDB-log - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping data for table joomla_virgin.virgin_categories: ~15 rows (approximately)
/*!40000 ALTER TABLE `virgin_categories` DISABLE KEYS */;
INSERT INTO `virgin_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
	(1, 0, 0, 0, 29, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
	(2, 27, 1, 1, 2, 1, 'category-0-main', 'com_content', 'Main', 'category-0-main', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 561, '2016-10-20 12:24:53', 0, '*', 1),
	(3, 28, 1, 17, 18, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
	(4, 29, 1, 19, 20, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
	(5, 30, 1, 21, 22, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
	(7, 32, 1, 23, 24, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
	(8, 57, 1, 25, 26, 1, 'main-slider', 'com_djimageslider', 'Main slider', 'main-slider', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', 'IT-услуги, предоставляемые компанией Starlink: консалтинг, системная интеграция, аутсорсинг, администрирование серверов, дата-центр, хостинг, колокейшн, SSL-сертификаты', 'IT-услуги: консалтинг, системная интеграция, аутсорсинг, администрирование серверов, дата-центр, хостинг, колокейшн, SSL-сертификаты', '{"author":"mao at starlink","robots":""}', 561, '2016-07-01 15:12:55', 561, '2016-09-20 06:44:13', 0, '*', 1),
	(9, 74, 1, 13, 14, 1, 'category-news', 'com_content', 'Новости', 'category-news', '', '<p>Windows  |  Linux  |  виртуализация  |  безопасность</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', 'news', '{"author":"","robots":""}', 561, '2016-07-15 08:12:16', 561, '2016-11-05 03:36:05', 0, '*', 1),
	(10, 107, 1, 11, 12, 1, 'category-solutions', 'com_content', 'Решения', 'category-solutions', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 561, '2016-08-23 21:51:54', 561, '2016-09-12 16:07:01', 0, '*', 1),
	(11, 130, 1, 15, 16, 1, 'category-blog', 'com_content', 'Блог', 'category-blog', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 561, '2016-08-25 14:06:17', 561, '2016-10-20 12:23:37', 0, '*', 1),
	(12, 149, 13, 8, 9, 2, 'category-services/category-services-consulting', 'com_content', 'консалтинговые услуги', 'category-services-consulting', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 561, '2016-08-26 12:52:30', 561, '2016-10-20 12:18:19', 0, '*', 1),
	(13, 183, 1, 5, 10, 1, 'category-services', 'com_content', 'Услуги', 'category-services', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":"Услуги"}', '', '', '{"author":"","robots":""}', 561, '2016-09-05 13:00:14', 561, '2016-09-12 16:07:35', 0, '*', 1),
	(14, 184, 13, 6, 7, 2, 'category-services/category-services-datacenter', 'com_content', 'услуги дата-центра', 'category-services-datacenter', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 561, '2016-09-05 13:48:33', 561, '2016-10-20 12:17:58', 0, '*', 1),
	(15, 185, 1, 3, 4, 1, 'category-company-about', 'com_content', 'О компании', 'category-company-about', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 561, '2016-09-05 15:14:35', 561, '2016-10-20 12:17:25', 0, '*', 1),
	(16, 253, 1, 27, 28, 1, 'slider-flex', 'com_djimageslider', 'Slider-flex', 'slider-flex', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 561, '2017-01-17 15:02:47', 0, '2017-01-17 15:02:47', 0, '*', 1);
/*!40000 ALTER TABLE `virgin_categories` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
