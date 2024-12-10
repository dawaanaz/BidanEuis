-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Okt 2024 pada 05.13
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_bidaneuis`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_buktitransaksi`
--

CREATE TABLE `tbl_buktitransaksi` (
  `No_transaksi` int(5) NOT NULL,
  `No_id` int(4) NOT NULL,
  `Tgl_transaksi` date NOT NULL,
  `Kode_obat` int(5) NOT NULL,
  `Jumlah_obat` int(3) NOT NULL,
  `Kode_pelayanan` int(15) NOT NULL,
  `Total` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_dataobat`
--

CREATE TABLE `tbl_dataobat` (
  `Kode_obat` int(5) NOT NULL,
  `Nama_obat` varchar(15) NOT NULL,
  `Satuan` varchar(10) NOT NULL,
  `Harga` bigint(20) NOT NULL,
  `Stok` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_datapasien`
--

CREATE TABLE `tbl_datapasien` (
  `No_id` int(4) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `Tgl_lahir` date NOT NULL,
  `Umur` varchar(3) NOT NULL,
  `Gol_dar` varchar(3) NOT NULL,
  `Pendidikan` varchar(15) NOT NULL,
  `Nama_suami` varchar(30) NOT NULL,
  `Alamat` text NOT NULL,
  `Tlpn` varchar(12) NOT NULL,
  `Pekerjaan` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_datapelayanan`
--

CREATE TABLE `tbl_datapelayanan` (
  `Kode_pelayanan` int(9) NOT NULL,
  `Jenis_pelayanan` varchar(15) NOT NULL,
  `Harga` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kohorkb`
--

CREATE TABLE `tbl_kohorkb` (
  `No_id` int(4) NOT NULL,
  `Nama_Akseptor` varchar(30) NOT NULL,
  `Tgl_periksa` date NOT NULL,
  `Bb` decimal(5,0) NOT NULL,
  `Tensi` varchar(7) NOT NULL,
  `Tgl_suntik` date NOT NULL,
  `Nama_bidan` varchar(30) NOT NULL,
  `Nama_Obat` varchar(15) NOT NULL,
  `Tgl_kembali` date NOT NULL,
  `Keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kunjunganibuhamil`
--

CREATE TABLE `tbl_kunjunganibuhamil` (
  `No_id` int(4) NOT NULL,
  `Nama_ibu` varchar(30) NOT NULL,
  `Tgl_periksa` date NOT NULL,
  `Bb` decimal(5,0) NOT NULL,
  `Tensi` varchar(7) NOT NULL,
  `Tb` decimal(5,0) NOT NULL,
  `Uk` varchar(10) NOT NULL,
  `Denyut_janin` varchar(10) NOT NULL,
  `Koseling` varchar(40) NOT NULL,
  `Nama_obat` varchar(15) NOT NULL,
  `Tgl_kembali` date NOT NULL,
  `Usia_anak_terkecil` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_buktitransaksi`
--
ALTER TABLE `tbl_buktitransaksi`
  ADD PRIMARY KEY (`No_transaksi`);

--
-- Indeks untuk tabel `tbl_dataobat`
--
ALTER TABLE `tbl_dataobat`
  ADD PRIMARY KEY (`Kode_obat`);

--
-- Indeks untuk tabel `tbl_datapasien`
--
ALTER TABLE `tbl_datapasien`
  ADD PRIMARY KEY (`No_id`);

--
-- Indeks untuk tabel `tbl_datapelayanan`
--
ALTER TABLE `tbl_datapelayanan`
  ADD PRIMARY KEY (`Kode_pelayanan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_buktitransaksi`
--
ALTER TABLE `tbl_buktitransaksi`
  MODIFY `No_transaksi` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_dataobat`
--
ALTER TABLE `tbl_dataobat`
  MODIFY `Kode_obat` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_datapasien`
--
ALTER TABLE `tbl_datapasien`
  MODIFY `No_id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_datapelayanan`
--
ALTER TABLE `tbl_datapelayanan`
  MODIFY `Kode_pelayanan` int(9) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
