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

-- Dumping data for table starlink.dev.mkc1r_update_sites: ~15 rows (approximately)
/*!40000 ALTER TABLE `mkc1r_update_sites` DISABLE KEYS */;
INSERT INTO `mkc1r_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
	(1, 'Joomla! Core', 'collection', 'https://update.joomla.org/core/list.xml', 1, 1488209163, ''),
	(2, 'Joomla! Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 1, 1488209163, ''),
	(4, 'Joomla! Update Component Update Site', 'extension', 'http://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 1487169516, ''),
	(16, 'Joomla! Update Component Update Site', 'extension', 'https://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 1487169517, ''),
	(23, 'Blackdale', 'extension', 'http://updates.blackdale.com/update/topcloud300/topcloud300.xml', 1, 0, ''),
	(24, 'WebInstaller Update Site', 'extension', 'http://appscdn.joomla.org/webapps/jedapps/webinstaller.xml', 1, 0, ''),
	(25, 'Regular Labs Advanced Module Manager', 'extension', 'http://download.regularlabs.com/updates.xml?e=advancedmodulemanager&type=.xml', 1, 0, ''),
	(26, 'Regular Labs Modules Anywhere', 'extension', 'http://download.regularlabs.com/updates.xml?e=modulesanywhere&type=.xml', 1, 0, ''),
	(27, 'Regular Labs Sourcerer', 'extension', 'http://download.regularlabs.com/updates.xml?e=sourcerer&type=.xml', 1, 0, ''),
	(28, 'Foxcontact update site', 'extension', 'http://cdn.fox.ra.it/download/foxcontact.xml', 1, 0, ''),
	(30, 'Admin Tools Core', 'extension', 'http://cdn.akeebabackup.com/updates/pkgadmintoolscore.xml', 1, 0, ''),
	(31, 'DJ-ImageSlider Package', 'extension', 'http://dj-extensions.com/updates/djimageslider.xml', 1, 0, ''),
	(33, 'FOF 3.x', 'extension', 'http://cdn.akeebabackup.com/updates/fof3.xml', 1, 0, ''),
	(34, 'Akeeba Backup Core', 'extension', 'http://cdn.akeebabackup.com/updates/pkgakeebacore.xml', 1, 1487169750, ''),
	(35, 'J2XML Updates', 'extension', 'http://www.eshiol.it/updates/packages/j2xml-updates?format=xml&dummy=extension.xml', 1, 0, ''),
	(36, 'PLG_JSCSSCONTROL', 'extension', 'https://check.kubik-rubik.de/updates/jscsscontrol.xml', 1, 0, '');
/*!40000 ALTER TABLE `mkc1r_update_sites` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
