-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 15 Nov 2019 pada 00.07
-- Versi Server: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wpu-login`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `image` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(1, 'ahmad', '$2y$10$wSfWWdhYDdABbScgB/kJ5OZwkaLLFAjRrN2sb6W9jIYOZzLZLxXoe', 'default.png', '', 2, 1, 1573739023),
(2, 'ahmad', 'amkomarudin7@gmail.com', 'default.png', '$2y$10$0Uz79lBMC/eP9I80EoKJmOi44ejPwhWK5nAbPacGB3sVzmbqHx2e2', 1, 1, 1573739145),
(3, 'ahmad', 'amkomarudisdn7@gmail.com', 'default.jpg', '$2y$10$jyFG.PclVGujkdMEpeyRr.zm96VZXtvT1iNmBf3ANnG2O8V9Sdoz2', 2, 1, 1573739776),
(4, 'ZX', 'ahmad@gmail.com', 'default.jpg', '$2y$10$YIBFlAIcPsKDeuvsP9d/TOwT3uyWyBxwUU1V5Sfp4huyySHlnUAs2', 2, 0, 1573739963),
(5, 'ahmadss', 'zesiska12@yahoo.com', 'default.jpg', '$2y$10$QjKxeiWlogwLgC7wlnlcBuB/mV5C1xz6cq1gynVyICba6AjI9l97m', 2, 1, 1573740010),
(6, 'herdi', 'herdi@gmail.com', 'default.png', '$2y$10$.UkLOGaknSnuoNR/mlRfsulun5UzeBLWtJBpKXMEbpzoxnDCUSrzS', 2, 1, 1573762112);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Administrator'),
(2, 'Member');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
