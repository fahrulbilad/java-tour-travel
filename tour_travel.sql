-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2020 at 02:34 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tour_travel`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_paket`
--

CREATE TABLE `tb_paket` (
  `kd_paket` varchar(5) NOT NULL,
  `nama_paket` varchar(30) NOT NULL,
  `tujuan` varchar(30) NOT NULL,
  `fasilitas` varchar(100) NOT NULL,
  `objek_wisata` varchar(100) NOT NULL,
  `harga` int(12) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_paket`
--

INSERT INTO `tb_paket` (`kd_paket`, `nama_paket`, `tujuan`, `fasilitas`, `objek_wisata`, `harga`, `keterangan`) VALUES
('PK001', 'Video call senang', 'Senang', 'Kendaraan ACMakanPenginapanTiket Masuk Objek Wisata', 'Banyu Surgo', 5000000, 'Maks 30 Orang'),
('PK002', 'anu', 'anu', 'Kendaraan AC, Makan', 'anu', 9000000, 'Maks anu');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pelanggan`
--

CREATE TABLE `tb_pelanggan` (
  `kd_pelanggan` varchar(5) NOT NULL,
  `atas_nama` varchar(30) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_hp` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pelanggan`
--

INSERT INTO `tb_pelanggan` (`kd_pelanggan`, `atas_nama`, `alamat`, `no_hp`) VALUES
('PL001', 'Candra', 'Jetis', '089648108906'),
('PL002', 'Bilad', 'Jetis', '089231341235');

-- --------------------------------------------------------

--
-- Table structure for table `tb_petugas`
--

CREATE TABLE `tb_petugas` (
  `kd_petugas` varchar(5) NOT NULL,
  `nama_petugas` varchar(30) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_hp` varchar(13) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_petugas`
--

INSERT INTO `tb_petugas` (`kd_petugas`, `nama_petugas`, `alamat`, `no_hp`, `username`, `password`) VALUES
('PT001', 'Yanuar', 'Jetis', '089648108906', 'yanuar', '1234'),
('PT002', 'Fahrul', 'Jetis', '083742872192', 'fhrl', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `tb_transaksi`
--

CREATE TABLE `tb_transaksi` (
  `no_transaksi` varchar(5) NOT NULL,
  `kd_petugas` varchar(5) NOT NULL,
  `kd_pelanggan` varchar(5) NOT NULL,
  `kd_paket` varchar(5) NOT NULL,
  `tgl_transaksi` varchar(10) NOT NULL,
  `jumlah_orang` int(3) NOT NULL,
  `tgl_berangkat` varchar(10) NOT NULL,
  `bayar` int(12) NOT NULL,
  `no_rekening` varchar(20) DEFAULT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_pelanggan`
--
ALTER TABLE `tb_pelanggan`
  ADD PRIMARY KEY (`kd_pelanggan`);

--
-- Indexes for table `tb_petugas`
--
ALTER TABLE `tb_petugas`
  ADD PRIMARY KEY (`kd_petugas`);

--
-- Indexes for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD PRIMARY KEY (`no_transaksi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
