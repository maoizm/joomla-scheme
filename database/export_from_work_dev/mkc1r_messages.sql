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

-- Dumping data for table starlink.dev.mkc1r_messages: ~0 rows (approximately)
/*!40000 ALTER TABLE `mkc1r_messages` DISABLE KEYS */;
INSERT INTO `mkc1r_messages` (`message_id`, `user_id_from`, `user_id_to`, `folder_id`, `date_time`, `state`, `priority`, `subject`, `message`) VALUES
	(1, 561, 561, 0, '2017-02-15 14:15:38', 0, 0, 'test (dfsdfg@starlink.ua) Заказ бесплатного экземпляра опросника  starlink.dev by test', '<!DOCTYPE html>\n<html>\n<head><meta http-equiv="Content-Type" content="text/html; charset=utf-8"></head>\n<body><div dir="ltr"><div style="width: 100%; padding: 24px 0 24px 0; background-color: #fafafa; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;">\r\n	<div style="width: 90%; max-width: 680px; min-width: 280px; border: 1px solid #dddddd; background-color: #ffffff; box-shadow: 0 4px 8px rgba(192, 192, 192, 0.9); margin: auto;">\r\n		<div style="color: #505050; font-size: 13px; padding: 24px;">\r\n			<div style="font-size: 30px; line-height: 34px; border-bottom: 1px solid #dddddd; margin-bottom: 32px; padding-bottom: 8px;">starlink.dev</div>\r\n			<dl>\n<dt style="background-color: #eeeeee; padding: 4px; font-weight: bold;">Имя</dt>\n<dd style="margin: 4px 4px 16px 4px;">test</dd>\n<dt style="background-color: #eeeeee; padding: 4px; font-weight: bold;"></dt>\n<dd style="margin: 4px 4px 16px 4px;">івпівпівап</dd>\n<dt style="background-color: #eeeeee; padding: 4px; font-weight: bold;">Email</dt>\n<dd style="margin: 4px 4px 16px 4px;">dfsdfg@starlink.ua</dd>\n<dt style="background-color: #eeeeee; padding: 4px; font-weight: bold;"></dt>\n<dd style="margin: 4px 4px 16px 4px;">454678899</dd>\n<dt style="background-color: #eeeeee; padding: 4px; font-weight: bold;">Site Name</dt>\n<dd style="margin: 4px 4px 16px 4px;">starlink.dev</dd>\n<dt style="background-color: #eeeeee; padding: 4px; font-weight: bold;">Contact Page URL</dt>\n<dd style="margin: 4px 4px 16px 4px;"><a href="http://starlink.dev/" class="field-table-href">Starlink</a></dd>\n</dl>\n<div style="border-top: 1px solid #dddddd; margin-top: 32px; padding-top: 8px; font-size: 12px; font-style: italic; color: #707070;">© starlink.dev</div>\r\n		</div>\r\n	</div>\r\n</div></div></body>\n</html>\n');
/*!40000 ALTER TABLE `mkc1r_messages` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
