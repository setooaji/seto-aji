-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2022 at 10:08 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `keripik`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblbarang`
--

CREATE TABLE `tblbarang` (
  `id_barang` varchar(100) NOT NULL,
  `jeniskeripik` varchar(100) NOT NULL,
  `rasakeripik` varchar(100) NOT NULL,
  `harga` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbarang`
--

INSERT INTO `tblbarang` (`id_barang`, `jeniskeripik`, `rasakeripik`, `harga`) VALUES
('01', 'singkong', 'manis', 150000),
('03', 'keripik', 'balado', 16000),
('1', 'asd', 'asd', 123),
('12', 'asd', 'asd', 123),
('3', 'adg', 'adg', 12000);

-- --------------------------------------------------------

--
-- Table structure for table `tblpenjualan`
--

CREATE TABLE `tblpenjualan` (
  `id_penjualan` varchar(100) NOT NULL,
  `id_barang` varchar(100) NOT NULL,
  `jumlahtersedia` int(100) NOT NULL,
  `jumlahterjual` int(100) NOT NULL,
  `stokakhir` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpenjualan`
--

INSERT INTO `tblpenjualan` (`id_penjualan`, `id_barang`, `jumlahtersedia`, `jumlahterjual`, `stokakhir`) VALUES
('1', '12', 10, 5, 5),
('A01', '03', 20, 10, 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblbarang`
--
ALTER TABLE `tblbarang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `tblpenjualan`
--
ALTER TABLE `tblpenjualan`
  ADD PRIMARY KEY (`id_penjualan`),
  ADD UNIQUE KEY `id_barang` (`id_barang`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblpenjualan`
--
ALTER TABLE `tblpenjualan`
  ADD CONSTRAINT `tblpenjualan_ibfk_1` FOREIGN KEY (`id_barang`) REFERENCES `tblbarang` (`id_barang`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
