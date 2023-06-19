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

-- Dumping data for table thuctap.detai: ~4 rows (approximately)
INSERT INTO `detai` (`madt`, `tendt`, `kinhphi`, `noithuctap`) VALUES
	('Dt01', 'GIS', 100, 'Nghe An'),
	('Dt02', 'ARC GIS', 500, 'Nam Dinh'),
	('Dt03', 'Spatial DB', 100, 'Ha Tinh'),
	('Dt04', 'MAP', 300, 'Quang Binh');

-- Dumping data for table thuctap.giangvien: ~5 rows (approximately)
INSERT INTO `giangvien` (`magv`, `hotengv`, `luong`, `makhoa`) VALUES
	(11, 'Thanh Xuan', 700, 'Geo'),
	(12, 'Thu Minh', 500, 'Math'),
	(13, 'Chu Tuan', 650, 'Geo'),
	(14, 'Le Thi Lan', 500, 'Bio'),
	(15, 'Tran Xoay', 900, 'Math');

-- Dumping data for table thuctap.huongdan: ~7 rows (approximately)
INSERT INTO `huongdan` (`masv`, `magv`, `madt`, `ketqua`) VALUES
	(1, 13, 'Dt01', 8),
	(2, 14, 'Dt03', 0),
	(3, 12, 'Dt03', 10),
	(5, 14, 'Dt04', 7),
	(6, 13, 'Dt01', NULL),
	(7, 11, 'Dt04', 10),
	(8, 15, 'Dt03', 6);

-- Dumping data for table thuctap.khoa: ~3 rows (approximately)
INSERT INTO `khoa` (`makhoa`, `tenkhoa`, `dienthoai`) VALUES
	('Bio', 'Cong nghe Sinh hoc', 3855412),
	('Geo', 'Dia ly va QLTN', 3855413),
	('Math', 'Toan', 3855411);

-- Dumping data for table thuctap.sinhvien: ~9 rows (approximately)
INSERT INTO `sinhvien` (`masv`, `hotensv`, `namsinh`, `makhoa`, `quequan`) VALUES
	(1, 'Le Van Sao', 1990, 'Bio', 'Nghe An'),
	(2, 'Nguyen Thi My', 1990, 'Geo', 'Thanh Hoa'),
	(3, 'Bui Xuan Duc', 1992, 'Math', 'Ha Noi'),
	(4, 'Nguyen Van Tung', NULL, 'Bio', 'Ha Tinh'),
	(5, 'Le Khanh Linh', 1989, 'Bio', 'Ha Nam'),
	(6, 'Tran Khac Trong', 1991, 'Geo', 'Thanh Hoa'),
	(7, 'Le Thi Van', NULL, 'Math', 'null'),
	(8, 'Hoang Van Duc', 1992, 'Bio', 'Nghe An');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
