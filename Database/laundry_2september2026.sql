-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 02, 2026 at 02:37 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laundry`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(20) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `hak_akses` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `hak_akses`) VALUES
(1, 'admin', '123', 1),
(2, 'admin1', '202cb962ac59075b964b07152d234b70', 2),
(3, 'admin2', '202cb962ac59075b964b07152d234b70', 1);

-- --------------------------------------------------------

--
-- Table structure for table `harga`
--

CREATE TABLE `harga` (
  `harga_per_kilo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `harga`
--

INSERT INTO `harga` (`harga_per_kilo`) VALUES
(25);

-- --------------------------------------------------------

--
-- Table structure for table `pakaian`
--

CREATE TABLE `pakaian` (
  `pakaian_id` int(11) NOT NULL,
  `transaksi_id` int(11) NOT NULL,
  `pakaian_jenis` varchar(255) NOT NULL,
  `pakaian_jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pakaian`
--

INSERT INTO `pakaian` (`pakaian_id`, `transaksi_id`, `pakaian_jenis`, `pakaian_jumlah`) VALUES
(1, 1, 'jersey futsal', 1),
(2, 1, 'kemeja flanel', 1),
(3, 2, 'sweater oversize', 2),
(4, 2, 'cardigan rajut', 2),
(5, 3, 'rugby shirt', 3),
(6, 3, 'jacket denim', 5),
(7, 4, 'zip-up hoodie', 5),
(8, 5, 'knit vest', 5),
(9, 6, 'denim vest', 6),
(10, 6, 'blazer formal', 6),
(11, 6, 'baggy jeans', 6),
(12, 7, 'straight leg jeans', 7),
(13, 7, 'flare jeans', 7),
(14, 7, 'cargo pants', 7),
(15, 8, 'parachute pants', 7),
(16, 9, 'carpenter pants', 7),
(17, 9, 'wide leg pants', 1),
(18, 10, 'barrel pants', 3),
(19, 10, 'jorts ', 4),
(20, 10, 'loose pants', 4);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `pelanggan_id` int(11) NOT NULL,
  `pelanggan_nama` varchar(255) NOT NULL,
  `pelanggan_hp` varchar(20) NOT NULL,
  `pelanggan_alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`pelanggan_id`, `pelanggan_nama`, `pelanggan_hp`, `pelanggan_alamat`) VALUES
(1, 'medina', '0887657324', 'jatisari'),
(2, 'pina', '0882365981', 'ngaliyan'),
(3, 'lala', '0876123433', 'tembalang'),
(4, 'ojal', '0348764521', 'candisari'),
(5, 'epan', '0723498572', 'pedurungan'),
(6, 'zara', '0923478321', 'gajahmungkur'),
(7, 'alpin', '0823481988', 'mijen'),
(8, 'putra', '0638923499', 'martani'),
(9, 'pino', '0239888873', 'cangkiran'),
(10, 'ian', '0999234587', 'gunungpati'),
(11, 'ucup', '0678987654', 'bsb village'),
(12, 'jeki', '0398725677', 'kedungpane');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `transaksi_id` int(11) NOT NULL,
  `transaksi_tgl` date NOT NULL,
  `pelanggan_id` int(11) NOT NULL,
  `transaksi_harga` int(11) NOT NULL,
  `transaksi_berat` int(11) NOT NULL,
  `transaksi_tgl_selesai` date NOT NULL,
  `transaksi_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`transaksi_id`, `transaksi_tgl`, `pelanggan_id`, `transaksi_harga`, `transaksi_berat`, `transaksi_tgl_selesai`, `transaksi_status`) VALUES
(1, '2026-01-01', 1, 25, 1, '2026-08-03', 0),
(2, '2026-01-20', 1, 75, 3, '2026-01-23', 0),
(3, '2026-02-25', 2, 100, 4, '2026-01-27', 0),
(4, '2026-03-18', 3, 150, 6, '2026-03-21', 0),
(5, '2026-05-21', 4, 125, 5, '2026-05-23', 0),
(6, '2026-07-13', 5, 75, 3, '2026-07-15', 0),
(7, '2026-08-10', 6, 200, 8, '2026-08-14', 0),
(8, '2026-08-14', 7, 50, 2, '2026-08-16', 0),
(9, '2026-08-16', 8, 75, 3, '2026-08-18', 0),
(10, '2026-08-18', 9, 250, 10, '2026-08-22', 0),
(11, '2026-08-12', 9, 225, 9, '2026-08-17', 0),
(12, '2026-08-25', 10, 300, 12, '2026-08-29', 1),
(13, '2026-08-29', 10, 475, 19, '2026-09-01', 2),
(14, '2026-08-29', 10, 125, 5, '2026-08-31', 2),
(15, '2026-08-31', 10, 550, 22, '2026-09-01', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pakaian`
--
ALTER TABLE `pakaian`
  ADD PRIMARY KEY (`pakaian_id`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`pelanggan_id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`transaksi_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pakaian`
--
ALTER TABLE `pakaian`
  MODIFY `pakaian_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `pelanggan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `transaksi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
