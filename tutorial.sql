-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 16 Okt 2019 pada 03.30
-- Versi Server: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tutorial`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `file_upload`
--

CREATE TABLE IF NOT EXISTS `file_upload` (
`id` int(3) NOT NULL,
  `nis` varchar(20) NOT NULL,
  `filename` varchar(50) NOT NULL,
  `Detail` varchar(255) NOT NULL,
  `Folder` varchar(50) NOT NULL,
  `DateUpload` datetime NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=41 ;

--
-- Dumping data untuk tabel `file_upload`
--

INSERT INTO `file_upload` (`id`, `nis`, `filename`, `Detail`, `Folder`, `DateUpload`) VALUES
(28, '3333', 'ANATYA R2.pdf', 'GFHGFG', './upload/', '2019-10-15 23:43:26'),
(29, '6666', 'ANATYA R2.pdf', 'GFHGFG', './upload/', '2019-10-15 23:48:29'),
(30, '2222', 'ANATYA R2.pdf', 'GFHGFG', './upload/', '2019-10-15 23:51:49'),
(31, '11111', 'HANA R2.pdf', 'fdfdfd', './upload/', '2019-10-15 23:52:28'),
(32, '8888', 'ADRIAN R2.pdf', 'vdvzvzv', './upload/', '2019-10-15 23:58:33'),
(33, '1212', 'AULYA R1.pdf', 'vcvzvz', './upload/', '2019-10-15 23:59:38'),
(34, '1212', 'AULYA R1.pdf', 'vcvzvz', './upload/', '2019-10-16 00:00:56'),
(35, '1212', 'AULYA R1.pdf', 'vcvzvz', './upload/', '2019-10-16 00:01:38'),
(36, '1212', 'AULYA R1.pdf', 'vcvzvz', './upload/', '2019-10-16 00:02:04'),
(37, '1212', 'AULYA R1.pdf', 'vcvzvz', './upload/', '2019-10-16 00:02:38'),
(38, '1212', 'AULYA R1.pdf', 'vcvzvz', './upload/', '2019-10-16 00:02:59'),
(39, '1212', 'AULYA R1.pdf', 'vcvzvz', './upload/', '2019-10-16 00:03:23'),
(40, '1212', 'AULYA R1.pdf', 'vcvzvz', './upload/', '2019-10-16 00:04:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE IF NOT EXISTS `member` (
`id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`id`, `username`, `password`) VALUES
(1, 'Musa', '140575'),
(2, 'Farhan', '250306');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `file_upload`
--
ALTER TABLE `file_upload`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `file_upload`
--
ALTER TABLE `file_upload`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
