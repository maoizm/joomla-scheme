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

-- Dumping data for table starlink.dev.mkc1r_redirect_links: ~2 rows (approximately)
/*!40000 ALTER TABLE `mkc1r_redirect_links` DISABLE KEYS */;
INSERT INTO `mkc1r_redirect_links` (`id`, `old_url`, `new_url`, `referer`, `comment`, `hits`, `published`, `created_date`, `modified_date`, `header`) VALUES
	(1, 'http://localhost:8000/media/mod_starlink/images/main/paper.png', NULL, 'http://localhost:8000/media/mod_starlink/css/survey.css', '', 39, 0, '2016-11-03 04:09:56', '0000-00-00 00:00:00', 301),
	(2, 'http://localhost:8000/media/mod_starlink/css/bootstrap.min.css.map', NULL, '', '', 28, 0, '2016-11-03 04:09:57', '0000-00-00 00:00:00', 301),
	(3, 'http://starlink.dev/favicon.ico', NULL, 'http://starlink.dev/', '', 2, 0, '2017-02-10 18:02:41', '0000-00-00 00:00:00', 301);
/*!40000 ALTER TABLE `mkc1r_redirect_links` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
