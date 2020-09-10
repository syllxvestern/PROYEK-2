-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Inang: localhost
-- Waktu pembuatan: 26 Des 2019 pada 11.21
-- Versi Server: 5.5.25a
-- Versi PHP: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Basis data: `klinik`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_antrian`
--

CREATE TABLE IF NOT EXISTS `tbl_antrian` (
  `id_antrian` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` date DEFAULT NULL,
  `antrian` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id_antrian`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data untuk tabel `tbl_antrian`
--

INSERT INTO `tbl_antrian` (`id_antrian`, `tanggal`, `antrian`, `status`) VALUES
(5, '2018-10-24', 'A002', 0),
(7, '2018-10-26', 'A001', 1),
(8, '2018-10-26', 'A002', 0),
(9, '2018-10-26', 'A003', 1),
(10, '2018-10-26', 'A004', 1),
(11, '2018-10-27', 'A001', 0),
(12, '2018-10-27', 'A002', 0),
(13, '2018-11-07', 'A001', 0),
(14, '2018-11-07', 'A002', 0),
(15, '2018-11-12', 'A001', 0),
(16, '2019-12-26', 'A001', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_dokter`
--

CREATE TABLE IF NOT EXISTS `tbl_dokter` (
  `id_dok` int(11) NOT NULL AUTO_INCREMENT,
  `nama_dokter` varchar(200) DEFAULT NULL,
  `tempat_lahir` varchar(200) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `jenis_kelamin` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `pendidikan_akhir` varchar(255) DEFAULT NULL,
  `id_layanan` int(255) DEFAULT NULL,
  PRIMARY KEY (`id_dok`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data untuk tabel `tbl_dokter`
--

INSERT INTO `tbl_dokter` (`id_dok`, `nama_dokter`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `jenis_kelamin`, `status`, `pendidikan_akhir`, `id_layanan`) VALUES
(1, 'Adexe', 'Lahirian', '2018-10-05', 'Jalan Sumbreng									', 'male', 'Raja', 'Magister', 1),
(2, 'AdexeHola', 'Lhiaraasn', '2018-11-24', 'Dimana Saja												', 'female', 'Akademik', 'SMP', 3),
(3, 'adexe an ade', 'a12321', '2018-11-29', 'asdasdads																								', 'male', 'asdasd', 'SMK', 2),
(8, 'asdasd', 'asdasd', '2018-10-23', 'asdasdasd									', 'male', '123', 'SMK', 1),
(12, 'Desi', 'Semarang', '2018-12-22', 'Semarang dimana aku gatau', 'female', 'Istri Orang', 'Doktor', 2),
(13, 'Zakiyya', 'Semarang', '2018-08-15', 'Semarang', 'female', 'Istri Orang', 'Doktor', 2),
(14, 'Ezron', 'Miniman', '2018-11-08', 'Suaoro', 'male', 'Januck', 'SD', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_hubungi`
--

CREATE TABLE IF NOT EXISTS `tbl_hubungi` (
  `id_hubungi` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `pesan` text,
  PRIMARY KEY (`id_hubungi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_jadwal`
--

CREATE TABLE IF NOT EXISTS `tbl_jadwal` (
  `id_jadwal` int(11) NOT NULL AUTO_INCREMENT,
  `id_dokter` int(11) NOT NULL,
  `bagian` varchar(255) DEFAULT NULL,
  `hari_pertama` int(11) DEFAULT NULL,
  `hari_terakhir` int(11) DEFAULT NULL,
  `jam_pertama` time DEFAULT NULL,
  `jam_terakhir` time DEFAULT NULL,
  PRIMARY KEY (`id_jadwal`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data untuk tabel `tbl_jadwal`
--

INSERT INTO `tbl_jadwal` (`id_jadwal`, `id_dokter`, `bagian`, `hari_pertama`, `hari_terakhir`, `jam_pertama`, `jam_terakhir`) VALUES
(5, 1, 'Kesehatan', 1, 7, '10:00:00', '20:20:00'),
(6, 2, 'Pernikanan', 1, 5, '06:00:00', '14:00:00'),
(7, 3, 'Lompat Tali', 3, 6, '03:00:00', '20:00:00'),
(8, 6, 'Adakah hari ini', 2, 5, '00:00:00', '20:00:00'),
(9, 12, 'Telinga dan Kesehatan', 1, 7, '00:00:00', '11:00:00'),
(10, 13, 'Hatiku', 2, 6, '12:00:00', '17:00:00'),
(11, 14, 'Keamaan', 1, 2, '12:00:00', '23:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_jamkes`
--

CREATE TABLE IF NOT EXISTS `tbl_jamkes` (
  `id_jamkes` int(11) NOT NULL AUTO_INCREMENT,
  `singkatan` varchar(255) NOT NULL,
  `nama_jamkes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_jamkes`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `tbl_jamkes`
--

INSERT INTO `tbl_jamkes` (`id_jamkes`, `singkatan`, `nama_jamkes`) VALUES
(1, 'BPJS', 'Badan Penyelenggara Jaminan Sosial');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_layanan`
--

CREATE TABLE IF NOT EXISTS `tbl_layanan` (
  `id_layanan` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  `layanan_medis` varchar(255) DEFAULT NULL,
  `info_medis` varchar(255) DEFAULT NULL,
  `code_layanan` char(10) DEFAULT NULL,
  PRIMARY KEY (`id_layanan`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data untuk tabel `tbl_layanan`
--

INSERT INTO `tbl_layanan` (`id_layanan`, `nama`, `layanan_medis`, `info_medis`, `code_layanan`) VALUES
(1, 'Demam Berdarah', 'Penyembuhan Demam Berdarah', 'Dikarenakan Demam Berdarah Sangat Berbahaya Bagi Kesehatan Kita Semua, Dan Menyebabkan Kematian', 'DB'),
(2, 'THT', 'Mengobati Telinga Hidung Tenggorokan', 'Kita disini dapat mengobati berbagai penyakit Telinga Hidung dan Tenggorokan									', 'THT'),
(3, 'Sakit Perut', 'Sakit Perut Maag dan Sebagainya', 'Mengobati berbagai penyakit yang menyerang perut.', 'SP');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pendaftaran`
--

CREATE TABLE IF NOT EXISTS `tbl_pendaftaran` (
  `id_daftar` int(11) NOT NULL AUTO_INCREMENT,
  `id_antrian` varchar(255) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `jenis_kelamin` varchar(255) DEFAULT NULL,
  `umur` varchar(255) DEFAULT NULL,
  `berat_badan` varchar(255) DEFAULT NULL,
  `tanggal_besuk` varchar(255) DEFAULT NULL,
  `penyakit` varchar(255) DEFAULT NULL,
  `id_dokter` int(11) NOT NULL,
  `id_jamkes` int(11) NOT NULL,
  PRIMARY KEY (`id_daftar`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data untuk tabel `tbl_pendaftaran`
--

INSERT INTO `tbl_pendaftaran` (`id_daftar`, `id_antrian`, `nama`, `alamat`, `jenis_kelamin`, `umur`, `berat_badan`, `tanggal_besuk`, `penyakit`, `id_dokter`, `id_jamkes`) VALUES
(1, '4', 'Muhammad Alifian Aqshol', 'adexeadexe', 'Laki-Laki', '22', '120', '2018-10-18', NULL, 9, 1),
(2, '5', 'asd', 'asdasd', 'Perempuan', '21', '12', '2018-10-17', NULL, 10, 1),
(3, '6', 'Desi', 'Dihati seseotrang', 'Perempuan', '22', '50', '2018-10-09', NULL, 2, 1),
(4, '7', 'Termonator', 'adexe asdaexe', 'Perempuan', '22', '12', '2018-10-27', NULL, 2, 1),
(5, '8', 'Teriyaki Bos', 'Adexe', 'Perempuan', '123', '100', '2018-10-31', NULL, 9, 1),
(6, '9', 'Saya kuandar', 'Tempat sepi', 'Laki-Laki', '201', '110', '2018-10-20', NULL, 10, 1),
(7, '10', 'Kurtwandar', 'Sepi di dalam gundah', 'Laki-Laki', '12', '110', '2018-10-27', NULL, 1, 1),
(8, '11', 'Muhammad Alifian Aqshol', 'adeexe', 'Laki-Laki', '18', '22', 'Saturday, 27 October 2018', NULL, 1, 1),
(9, '12', 'Draft you wild gonna ', 'adexeasd', 'Laki-Laki', '20', '12', 'Tuesday, 30 October 2018', NULL, 9, 1),
(10, '13', 'Dople', 'Menggenangkan Sebuah Genangan', 'Perempuan', '21', '20', 'Friday, 23 November 2018', NULL, 2, 1),
(11, '14', 'DDD', 'KAMU ADA DIMANA', 'Laki-Laki', '20', '10', 'Wednesday, 28 November 2018', NULL, 6, 1),
(12, '15', 'Muhammad Alifian Aqshol', 'Kimpoy', 'Laki-Laki', '20', '20', '2018-11-12', 'Sehat Selalu', 12, 1),
(13, '16', 'Permana Maulana', 'Margonda', 'Laki-Laki', '12', '43', '2019-12-26', 'Tifus', 13, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `akses` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `username`, `password`, `nama`, `akses`) VALUES
(1, 'adexe', '5e3cbd74208895175d545c310536b296', 'alifianadexe', 'Admin'),
(2, 'kimpoy', '5e3cbd74208895175d545c310536b296', 'Kimpoy Kuy', 'User'),
(3, 'zirly', 'bd44f4b9b0e83dfaf04131d2cae64ee0', 'Zirly Fiera Q', 'Pengurus'),
(5, 'obet', 'bd44f4b9b0e83dfaf04131d2cae64ee0', 'obet', 'Admin'),
(8, 'gaping', '5e6e97e133f716bfddc04ddf839b458e', 'gaping', 'Pengurus'),
(9, 'sule', '978c1f5418fda3c4893150cd2953de9e', 'sule', 'User'),
(10, 'njul', 'fbc97ef48ad7090866ad116c0e53d523', 'njul', 'Pegawai');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
