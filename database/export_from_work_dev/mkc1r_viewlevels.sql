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

-- Dumping data for table starlink.dev.mkc1r_viewlevels: ~5 rows (approximately)
/*!40000 ALTER TABLE `mkc1r_viewlevels` DISABLE KEYS */;
INSERT INTO `mkc1r_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
	(1, 'Public', 0, '[1]'),
	(2, 'Registered', 2, '[6,2,8]'),
	(3, 'Special', 3, '[6,3,8]'),
	(5, 'Guest', 1, '[9]'),
	(6, 'Super Users', 4, '[8]');
/*!40000 ALTER TABLE `mkc1r_viewlevels` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
