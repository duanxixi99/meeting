-- --------------------------------------------------------
-- 主机:                           localhost
-- 服务器版本:                        5.5.20 - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 导出 meeting 的数据库结构
CREATE DATABASE IF NOT EXISTS `meeting` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `meeting`;


-- 导出  表 meeting.preset_detail 结构
CREATE TABLE IF NOT EXISTS `preset_detail` (
  `meeting_room` varchar(3) NOT NULL,
  `meeting_str_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `meeting_end_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `meeting_date` varchar(10) NOT NULL,
  `preset_user` varchar(50) NOT NULL,
  `preset_user_tel` varchar(20) NOT NULL,
  `preset_user_email` varchar(30) DEFAULT NULL,
  `reason` varchar(50) DEFAULT NULL,
  `comment` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`meeting_room`,`meeting_str_date`,`meeting_end_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  meeting.preset_detail 的数据：~2 rows (大约)
DELETE FROM `preset_detail`;
/*!40000 ALTER TABLE `preset_detail` DISABLE KEYS */;
INSERT INTO `preset_detail` (`meeting_room`, `meeting_str_date`, `meeting_end_date`, `meeting_date`, `preset_user`, `preset_user_tel`, `preset_user_email`, `reason`, `comment`) VALUES
	('508', '2020-06-04 09:30:00', '2020-06-04 12:00:00', '2020-06-04', '张三', '12345678', 'zhangsan@neusoft.com', '项目会议', NULL),
	('508', '2020-06-04 13:00:00', '2020-06-04 13:30:00', '2020-06-04', '李四', '23467789', 'lisi@neusoft.com', '面试', NULL),
	('508', '2020-06-04 15:00:00', '2020-06-04 16:00:00', '2020-06-04', '王五', '12388999', 'wangwu@neusoft.com', '培训', NULL);
/*!40000 ALTER TABLE `preset_detail` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
