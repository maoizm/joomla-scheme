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

-- Dumping data for table starlink.dev.mkc1r_djimageslider: ~7 rows (approximately)
/*!40000 ALTER TABLE `mkc1r_djimageslider` DISABLE KEYS */;
INSERT INTO `mkc1r_djimageslider` (`id`, `catid`, `title`, `alias`, `image`, `description`, `published`, `publish_up`, `publish_down`, `checked_out`, `checked_out_time`, `ordering`, `params`) VALUES
	(1, 8, 'IT-консалтинг', 'it', '/media/mod_starlink/images/sliders/blackboard-man-dimmed.jpg', 'превращаем IT из статьи затрат в инструмент создания конкурентных преимуществ', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '{"link_type":"menu","link_menu":"105","link_url":"\\/services\\/it-consulting","link_article":"","link_target":"","link_rel":""}'),
	(2, 8, 'Дата-центр', '2017-01-17-06-39-43', '/media/mod_starlink/images/sliders/datacenter.jpg', 'дата-центр Старлинк сделает ваши бизнес-приложения более быстрыми и безопасными', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '{"link_type":"menu","link_menu":"108","link_url":"\\/services\\/datacenter","link_article":"","link_target":"","link_rel":""}'),
	(3, 8, 'Управление серверами предприятия', '2017-01-17-10-39-42', '/media/mod_starlink/images/sliders/slide3.jpg', '<p class="mtn25 mb0 visible-sm-block mx-auto">электронная почта, Skype, телефония, онлайн-магазин, сервер 1С - бесперебойная работа всех ключевых элементов Вашей IT-инфраструктуры</p>\r\n\r\n<p class="mtn25 visible-md-block mx-auto">электронная почта, Skype, телефония, онлайн-магазин, сервер 1С - бесперебойная работа всех ключевых элементов Вашей IT-инфраструктуры</p>\r\n\r\n<p class="mt0 visible-lg-block mx3">электронная почта, Skype, телефония, онлайн-магазин, сервер 1С - бесперебойная работа всех ключевых элементов Вашей IT-инфраструктуры</p>', 1, '2016-11-16 04:57:15', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '{"link_type":"menu","link_menu":"106","link_url":"\\/index.php?Itemid=106","link_article":"","link_target":"","link_rel":""}'),
	(4, 8, 'IT-аутсорсинг', 'it', '/media/mod_starlink/images/sliders/web-solutions.jpg', '<p class="mtn25 mb0 visible-sm-block mx-auto">IT-департамент с круглосуточным режимом работы, без больничных листов и отпусков. Мы поможем Вам избежать простоев бизнеса и снизить расходы на IT</p>\r\n\r\n<p class="mtn25 mb0 visible-md-block mx-auto">IT-департамент с круглосуточным режимом работы, без больничных листов и отпусков. Мы поможем Вам избежать простоев бизнеса и снизить расходы на IT</p>\r\n\r\n<p class="mtn25 mbn15 visible-lg-block mx3">IT-департамент с круглосуточным режимом работы, без больничных листов и отпусков. Мы поможем Вам избежать простоев бизнеса и снизить расходы на IT</p>\r\n\r\n\r\n\r\n', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '{"link_type":"menu","link_menu":"106","link_url":"\\/services\\/it-outsourcing","link_article":"","link_target":"","link_rel":""}'),
	(5, 8, 'IT-безопасность', 'it', '/media/mod_starlink/images/sliders/integration2.jpg', '<p class="mtn25 mb0 mx3 visible-sm-block">многоуровневая защита от утечек и вторжения + сквозное шифрование данных на носителях и в каналах связи</p>\r\n\r\n<p class="mx3 visible-md-block visible-lg-block">многоуровневая защита от утечек и вторжения + сквозное шифрование данных на носителях и в каналах связи</p>', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '{"link_type":"menu","link_menu":"109","link_url":"#","link_article":"","link_target":"","link_rel":""}'),
	(6, 16, 'Управление серверами предприятия', '2017-01-17-15-10-37', '/media/mod_starlink/images/sliders/slide3.jpg', '<p class="mx-auto">электронная почта, Skype, телефония, онлайн-магазин, сервер 1С - бесперебойная работа всех ключевых элементов Вашей IT-инфраструктуры</p>', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '{"link_type":"menu","link_menu":"106","link_url":"","link_article":"","link_target":"","link_rel":""}'),
	(7, 16, 'IT-аутсорсинг', 'it', '/media/mod_starlink/images/sliders/web-solutions.jpg', '<p class="mx-auto">IT-департамент с круглосуточным режимом работы, без больничных листов и отпусков. Мы поможем Вам избежать простоев бизнеса и снизить расходы на IT</p>', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '{"link_type":"menu","link_menu":"106","link_url":"","link_article":"","link_target":"","link_rel":""}');
/*!40000 ALTER TABLE `mkc1r_djimageslider` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
