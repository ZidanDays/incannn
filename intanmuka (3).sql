-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Nov 2023 pada 08.25
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `intanmuka`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `daftar`
--

CREATE TABLE `daftar` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `face_descriptor` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `presensi`
--

CREATE TABLE `presensi` (
  `id` int(11) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `latitude` varchar(50) NOT NULL,
  `longitude` varchar(50) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `presensi`
--

INSERT INTO `presensi` (`id`, `nama`, `latitude`, `longitude`, `waktu`) VALUES
(414, 'zidan', '1.3101058', '124.9189835', '2023-10-28 04:29:26'),
(415, 'zidan', '1.3101058', '124.9189835', '2023-10-28 04:29:42'),
(416, 'zidan', '1.3101058', '124.9189835', '2023-10-28 04:30:09'),
(417, 'zidan', '1.3101058', '124.9189835', '2023-10-28 04:30:14'),
(418, 'onal', '1.2644781', '124.8869776', '2023-10-30 07:10:32'),
(419, 'onal', '1.2644781', '124.8869776', '2023-10-30 07:10:34'),
(420, 'intan', '1.2712187', '124.8748425', '2023-10-30 07:21:09'),
(421, 'intan', '1.2646664', '124.8876038', '2023-11-02 04:10:01'),
(422, 'intan', '1.2646664', '124.8876038', '2023-11-02 04:10:21'),
(423, 'onal', '1.4876672', '124.8493568', '2023-11-21 03:24:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`) VALUES
(4, 'anjas', '$2y$10$5bApRbnHEj/ffKc8mnNG7uM2AN21/jLytsLw30FOTSxHfFy34HWTS', 'karyawan'),
(5, 'admin', '$2y$10$5bApRbnHEj/ffKc8mnNG7uM2AN21/jLytsLw30FOTSxHfFy34HWTS', 'admin'),
(6, 'faldo', '$2y$10$gIBMCzhAZmaHiWZufMXLhemRCLFxmvQVYLwUGLzG2mKxvOl1ZqYzm', 'karyawan'),
(7, 'y', '$2y$10$dKbN5..4YTVVO0wXiC/JK.XNHJRW84MNi2NW6/408LMqzBpLa1tBe', 'karyawan'),
(8, 'a', '$2y$10$ZXxjMVZtW1ItVJehMv75qeFBIKdwixWpJmBR8gPvX5m.wa6.Pcpx2', 'karyawan'),
(9, 'k', '$2y$10$lmUch/e/31TT9Ar5VyzdxunAwO6gbjaYfzgurl3N1VIcJG1k65Ozy', 'karyawan'),
(10, 'u', '$2y$10$cAb06EmLYPFMLIZ4pqIOKuOwA7CEjDYpt0qqWG73ytpJSleqcL62e', 'karyawan'),
(11, 'z', '$2y$10$Tbsn/pBABLVvngEyV2JeXudUVFVxUnVNMAIRfsYc.yB1vcZJzcmmG', 'karyawan'),
(12, 'm', '$2y$10$D3y1rlSS8bJcmBfjA9Di3OChZqCMgsSVmPDsy2ncTkuUYc8FMFQFa', 'karyawan'),
(13, 'o', '$2y$10$NZikMoEAZZHa5t9ZwVZpSugJz6IUkhItUuBilhjaBHykbygVFLNMu', 'karyawan');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `daftar`
--
ALTER TABLE `daftar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `presensi`
--
ALTER TABLE `presensi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `daftar`
--
ALTER TABLE `daftar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `presensi`
--
ALTER TABLE `presensi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=424;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
