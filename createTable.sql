-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.27-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.4.0.6659
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for thuctap
CREATE DATABASE IF NOT EXISTS `thuctap` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `thuctap`;

-- Dumping structure for table thuctap.detai
CREATE TABLE IF NOT EXISTS `detai` (
  `madt` char(10) NOT NULL,
  `tendt` char(30) DEFAULT NULL,
  `kinhphi` int(11) DEFAULT NULL,
  `noithuctap` char(30) DEFAULT NULL,
  PRIMARY KEY (`madt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table thuctap.giangvien
CREATE TABLE IF NOT EXISTS `giangvien` (
  `magv` int(11) NOT NULL AUTO_INCREMENT,
  `hotengv` char(30) DEFAULT NULL,
  `luong` decimal(5,0) DEFAULT NULL,
  `makhoa` char(10) DEFAULT NULL,
  PRIMARY KEY (`magv`),
  KEY `FK_giangvien_khoa` (`makhoa`),
  CONSTRAINT `FK_giangvien_khoa` FOREIGN KEY (`makhoa`) REFERENCES `khoa` (`makhoa`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table thuctap.huongdan
CREATE TABLE IF NOT EXISTS `huongdan` (
  `masv` int(10) DEFAULT NULL,
  `magv` int(10) DEFAULT NULL,
  `madt` char(10) DEFAULT NULL,
  `ketqua` decimal(5,0) DEFAULT NULL,
  KEY `FK__sinhvien` (`masv`),
  KEY `FK__giangvien` (`magv`),
  KEY `FK__detai` (`madt`),
  CONSTRAINT `FK__detai` FOREIGN KEY (`madt`) REFERENCES `detai` (`madt`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK__giangvien` FOREIGN KEY (`magv`) REFERENCES `giangvien` (`magv`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK__sinhvien` FOREIGN KEY (`masv`) REFERENCES `sinhvien` (`masv`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table thuctap.khoa
CREATE TABLE IF NOT EXISTS `khoa` (
  `makhoa` char(10) NOT NULL,
  `tenkhoa` char(30) DEFAULT NULL,
  `dienthoai` int(11) DEFAULT NULL,
  PRIMARY KEY (`makhoa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table thuctap.sinhvien
CREATE TABLE IF NOT EXISTS `sinhvien` (
  `masv` int(11) NOT NULL AUTO_INCREMENT,
  `hotensv` char(30) DEFAULT NULL,
  `namsinh` int(11) DEFAULT NULL,
  `makhoa` char(10) DEFAULT NULL,
  `quequan` char(30) DEFAULT NULL,
  PRIMARY KEY (`masv`),
  KEY `FK_sinhvien_khoa` (`makhoa`),
  CONSTRAINT `FK_sinhvien_khoa` FOREIGN KEY (`makhoa`) REFERENCES `khoa` (`makhoa`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Data exporting was unselected.

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
