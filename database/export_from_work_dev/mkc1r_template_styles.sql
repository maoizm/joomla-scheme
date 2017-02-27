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

-- Dumping data for table starlink.dev.mkc1r_template_styles: ~3 rows (approximately)
/*!40000 ALTER TABLE `mkc1r_template_styles` DISABLE KEYS */;
INSERT INTO `mkc1r_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
	(8, 'isis', 1, '1', 'isis - Default', '{"templateColor":"","logoFile":""}'),
	(9, 'starlink', 0, '1', 'StarLink - Default', '{"googleFont":"1","googleFontNameHeadings":"Roboto","googleFontNameBody":"Roboto","mainPhone":"377-090","mainPhoneCityCode":"044","mainPhoneCountryCode":"","assetsBasePath":"\\/media\\/mod_starlink"}'),
	(14, 'starlink-blog', 0, '0', 'StarLink-blog - Default', '{"googleFont":"1","googleFontNameHeadings":"Roboto","googleFontNameBody":"Roboto","mainPhone":"377-090","mainPhoneCityCode":"044","mainPhoneCountryCode":"","assetsBasePath":"\\/media\\/mod_starlink"}');
/*!40000 ALTER TABLE `mkc1r_template_styles` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
