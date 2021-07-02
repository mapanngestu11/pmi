-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Jul 2021 pada 15.40
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pmi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_agenda`
--

CREATE TABLE `tbl_agenda` (
  `id_agenda` int(10) NOT NULL,
  `nama_agenda` varchar(20) NOT NULL,
  `deskripsi` text NOT NULL,
  `tanggal_kegiatan` date NOT NULL,
  `tanggal_reminder` date DEFAULT NULL,
  `jam_kegiatan` varchar(20) NOT NULL,
  `nama_instansi` varchar(20) NOT NULL,
  `no_hp_instansi` varchar(13) NOT NULL,
  `nama_no_hp` varchar(20) NOT NULL,
  `jumlah_calon_donor` int(5) NOT NULL,
  `alamat` text NOT NULL,
  `tempat` varchar(10) NOT NULL,
  `syarat_1` varchar(10) DEFAULT NULL,
  `syarat_2` varchar(10) DEFAULT NULL,
  `syarat_3` varchar(10) DEFAULT NULL,
  `syarat_4` varchar(10) DEFAULT NULL,
  `syarat_5` varchar(10) DEFAULT NULL,
  `tanggal_survei` date DEFAULT NULL,
  `jam_survei` varchar(20) DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  `nama_petugas` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `waktu` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_agenda`
--

INSERT INTO `tbl_agenda` (`id_agenda`, `nama_agenda`, `deskripsi`, `tanggal_kegiatan`, `tanggal_reminder`, `jam_kegiatan`, `nama_instansi`, `no_hp_instansi`, `nama_no_hp`, `jumlah_calon_donor`, `alamat`, `tempat`, `syarat_1`, `syarat_2`, `syarat_3`, `syarat_4`, `syarat_5`, `tanggal_survei`, `jam_survei`, `status`, `nama_petugas`, `tanggal`, `waktu`) VALUES
(1, 'donor darah', 'ayo donor darah', '2021-07-01', '2021-08-30', '9 pagi', 'PT ABC', '081231', 'siapa', 20, 'tangerang1', 'Outdoor', 'tidak ada', 'tidak ada', 'tidak ada', 'tidak ada', 'tidak ada', '2021-06-28', '8 pagi', 'Accept', 'tes', '2021-06-28', '06:43:41'),
(3, 'donor darah', 'ayo donor darah', '2021-07-01', '2021-08-30', '9 pagi', 'pt apple', '081231', 'siapa', 20, 'tangerang1', 'Outdoor', 'tidak ada', 'tidak ada', 'tidak ada', 'tidak ada', 'tidak ada', '2021-06-28', '8 pagi', 'Accept', 'tes', '2021-06-28', '06:43:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_galeri`
--

CREATE TABLE `tbl_galeri` (
  `id_galeri` int(5) NOT NULL,
  `nama_foto` varchar(30) NOT NULL,
  `foto` text NOT NULL,
  `deskripsi` text NOT NULL,
  `nama_petugas` varchar(20) NOT NULL,
  `urutan` int(3) NOT NULL,
  `tanggal` date NOT NULL,
  `waktu` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_galeri`
--

INSERT INTO `tbl_galeri` (`id_galeri`, `nama_foto`, `foto`, `deskripsi`, `nama_petugas`, `urutan`, `tanggal`, `waktu`) VALUES
(9, 'donor darah 3', '728-services-left-image.png', 'donor darah 21', 'tes1', 4, '2021-07-02', '12:24:27'),
(10, 'donor darah 2', '76-about-left-image.png', 'donor darah 2', 'tes', 3, '2021-07-02', '09:44:39'),
(11, 'donor darah 3', '540-blog-dec.png', 'donor darah 3', 'tes', 2, '2021-07-02', '09:45:01'),
(12, 'donor darah 5', '277-blog-thumb-01.jpg', 'donor darah 5', 'tes', 1, '2021-07-02', '09:45:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_instansi`
--

CREATE TABLE `tbl_instansi` (
  `id_instansi` int(10) NOT NULL,
  `nama_instansi` varchar(30) NOT NULL,
  `alamat` text DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `no_hp_instansi` varchar(13) DEFAULT NULL,
  `jumlah_calon_donor` int(5) DEFAULT NULL,
  `foto` text DEFAULT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(10) NOT NULL,
  `hak_akses` varchar(10) NOT NULL,
  `tanggal` date NOT NULL,
  `waktu` time NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_instansi`
--

INSERT INTO `tbl_instansi` (`id_instansi`, `nama_instansi`, `alamat`, `keterangan`, `no_hp_instansi`, `jumlah_calon_donor`, `foto`, `username`, `password`, `hak_akses`, `tanggal`, `waktu`, `status`) VALUES
(2, 'PT ABC', 'tangerang1', 'bergerak di bidang tekstil', '085888241172', 231, '1', 'hayp1', 'apa1', '', '2021-06-30', '03:54:08', 'Aktif'),
(4, 'sensi', NULL, NULL, NULL, NULL, NULL, 'sensi', 'sensi12345', '', '2021-06-29', '04:26:37', 'aktif'),
(5, '$nama', NULL, NULL, NULL, NULL, NULL, '$username', '$password', '$hak_akses', '0000-00-00', '00:00:00', '$status'),
(6, 'gundam', NULL, NULL, NULL, NULL, NULL, 'gundam', 'gundam123', 'instansi', '2021-06-29', '04:28:48', 'aktif'),
(7, 'pt apple', '', '', '', 0, '854-blood2.png', 'apple', 'apple12345', 'pendonor', '2021-07-02', '10:36:05', 'aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_petugas`
--

CREATE TABLE `tbl_petugas` (
  `id_petugas` int(10) NOT NULL,
  `nama_petugas` varchar(20) NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL,
  `no_hp` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_petugas`
--

INSERT INTO `tbl_petugas` (`id_petugas`, `nama_petugas`, `jenis_kelamin`, `no_hp`) VALUES
(3, 'ari', 'Laki-laki', '085888241172'),
(5, 'fudin', 'Laki-laki', '0812345678');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_reminder`
--

CREATE TABLE `tbl_reminder` (
  `id_reminder` int(5) NOT NULL,
  `nama_instansi` varchar(20) NOT NULL,
  `no_hp_instansi` varchar(13) NOT NULL,
  `pesan` text NOT NULL,
  `tanggal` date NOT NULL,
  `waktu` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_reminder`
--

INSERT INTO `tbl_reminder` (`id_reminder`, `nama_instansi`, `no_hp_instansi`, `pesan`, `tanggal`, `waktu`) VALUES
(1, '$nama_instansi', '$no_hp_inst', '$pesan', '0000-00-00', '00:00:00'),
(2, 'PT ABC', '08588824117', 'halo', '2021-06-30', '03:54:21'),
(3, 'PT ABC', '085888241172', 'halo', '2021-06-30', '03:55:41'),
(4, 'PT ABC', '083877338448', 'halo', '2021-06-30', '03:56:53'),
(5, 'PT ABC', '083877338448', 'halo ini pesan ku', '2021-06-30', '03:59:18'),
(6, 'PT ABC', '083877338448', 'halo ini tes pesan', '2021-06-30', '04:00:45'),
(7, 'PT ABC', '083877338448', 'halo ini pesan', '2021-06-30', '04:02:34'),
(8, 'PT ABC', '083877338448', 'kamu hebat', '2021-06-30', '04:03:37');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `hak_akses` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `username`, `password`, `hak_akses`) VALUES
(5, 'admin', 'admin12345', 'admin'),
(6, 'timsurvei', 'timsurvei12345', 'tim survei'),
(7, 'koordinator', 'koordinator12345', 'koordinator');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_agenda`
--
ALTER TABLE `tbl_agenda`
  ADD PRIMARY KEY (`id_agenda`);

--
-- Indeks untuk tabel `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  ADD PRIMARY KEY (`id_galeri`);

--
-- Indeks untuk tabel `tbl_instansi`
--
ALTER TABLE `tbl_instansi`
  ADD PRIMARY KEY (`id_instansi`);

--
-- Indeks untuk tabel `tbl_petugas`
--
ALTER TABLE `tbl_petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indeks untuk tabel `tbl_reminder`
--
ALTER TABLE `tbl_reminder`
  ADD PRIMARY KEY (`id_reminder`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_agenda`
--
ALTER TABLE `tbl_agenda`
  MODIFY `id_agenda` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  MODIFY `id_galeri` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tbl_instansi`
--
ALTER TABLE `tbl_instansi`
  MODIFY `id_instansi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tbl_petugas`
--
ALTER TABLE `tbl_petugas`
  MODIFY `id_petugas` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_reminder`
--
ALTER TABLE `tbl_reminder`
  MODIFY `id_reminder` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
