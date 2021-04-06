-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Inang: 127.0.0.1
-- Waktu pembuatan: 07 Mar 2020 pada 10.22
-- Versi Server: 5.5.27
-- Versi PHP: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Basis data: `desa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_masyarakat`
--

CREATE TABLE IF NOT EXISTS `data_masyarakat` (
  `id_masarakat` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `nik` char(16) NOT NULL,
  `alamat` text NOT NULL,
  `rt_rw` varchar(50) NOT NULL,
  PRIMARY KEY (`id_masarakat`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data untuk tabel `data_masyarakat`
--

INSERT INTO `data_masyarakat` (`id_masarakat`, `nama`, `nik`, `alamat`, `rt_rw`) VALUES
(9, 'Muhamad Saripudin', '3601096709823090', 'Kp. Umbulan', '008/002'),
(10, 'Dianti Maulida', '3601045237890123', 'Kp. Barengkok', '007/002'),
(11, 'Muhamad Tohir', '3601087250098267', 'Kp Cilangkahan', '004/003'),
(12, 'Najmudin', '3601087229987625', 'Kp. Cangkore', '009/006'),
(13, 'Rustono', '3601023667890120', 'Kp. Pedesan', '004/003'),
(14, 'Sanirah', '3601026677890245', 'Kp. Umbulan', '007/002'),
(15, 'Despi Puspita', '3601023456712356', 'Kp. Kolecer', '009/006'),
(16, 'Muhamad Asro', '3601023456785400', 'kp Cilangkahan', '004/003'),
(17, 'Rapinudin', '3601034523689324', 'Kp. Umbulan', '007/002'),
(18, 'Rohman Haetomi', '3601056238876543', 'Kp. Pedesan', '004/003'),
(19, 'Burhanudin', '3601023489876123', 'Kp. Pendey', '002/003'),
(20, 'Lilis Amelia', '3601045556600987', 'Kp Cilangkahan', '002/003'),
(21, 'Maulana Ahmad', '3601023456789812', 'Kp. Renghascondong', '008/002'),
(22, 'Miftahudin', '3601034900987654', 'Kp. Pedesan', '008/002'),
(23, 'Muhamad Aip', '3601034567898765', 'Kp. Cangkore', '007/002'),
(24, 'Abuyajid', '3601054367897653', 'Kp. Umbulan', '002/003'),
(25, 'Siti Mardiah', '3601034567896432', 'Kp. Cangkore', '002/003'),
(26, 'Nurul Hikmah', '3601087654789098', 'Kp. Pedesan', '007/002'),
(27, 'Habib Maulana', '3601023667768576', 'Kp. Umbulan', '008/002'),
(28, 'Solehudin', '3601023677654345', 'Kp. Cangkore', '008/002');

-- --------------------------------------------------------

--
-- Struktur dari tabel `masyarakat`
--

CREATE TABLE IF NOT EXISTS `masyarakat` (
  `nik` char(16) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `alamat` text NOT NULL,
  `rt_rw` varchar(20) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(32) NOT NULL,
  `tlp` varchar(13) NOT NULL,
  PRIMARY KEY (`nik`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `masyarakat`
--

INSERT INTO `masyarakat` (`nik`, `nama`, `alamat`, `rt_rw`, `username`, `password`, `tlp`) VALUES
('3601045237890123', 'Dianti Maulida', 'Kp. Barengkok', '002/007', 'dian', 'dian', '081617625747'),
('3601087250098267', 'Muhamad Tohir', 'Kp Cilangkahan', '004/003', 'admin', 'admin', '081617625747'),
('3601096709823090', 'Muhamad Saripudin', 'Kp. Umbulan', '008/002', 'sarip', 'sarip', '081617625748');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengaduan`
--

CREATE TABLE IF NOT EXISTS `pengaduan` (
  `id_pengaduan` int(11) NOT NULL AUTO_INCREMENT,
  `tgl_pengaduan` varchar(40) NOT NULL,
  `nama_pengadu` varchar(40) NOT NULL,
  `nik` char(16) NOT NULL,
  `isi_laporan` text NOT NULL,
  `tlp` varchar(13) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `status` enum('Proses','Selesai') NOT NULL,
  PRIMARY KEY (`id_pengaduan`),
  KEY `nik` (`nik`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Dumping data untuk tabel `pengaduan`
--

INSERT INTO `pengaduan` (`id_pengaduan`, `tgl_pengaduan`, `nama_pengadu`, `nik`, `isi_laporan`, `tlp`, `foto`, `status`) VALUES
(25, '2020-03-07 (14:40:15)', 'Dianti Maulida', '3601045237890123', 'Jembatan Roboh di Kp Barengkok', '081617625748', 'images (29).jpeg', 'Selesai'),
(26, '2020-03-07 (14:43:34)', 'Dianti Maulida', '3601045237890123', 'Sawah Kebanjiran di Kp Gadel RT 009', '081617625749', 'images (12).jpeg', 'Proses'),
(27, '2020-03-07 (14:47:51)', 'Muhamad Saripudin', '3601096709823090', 'Jalan Rusak di Kp Situpotong', '081617625748', 'images.jpeg', 'Proses'),
(28, '2020-03-07 (14:50:10)', 'Muhamad Saripudin', '3601096709823090', 'Pencurian Di rumah Pak Hasyim', '081617898717', 'images (38).jpeg', 'Proses'),
(29, '2020-03-07 (14:52:09)', 'Muhamad Tohir', '3601087250098267', 'Kebakaran Rumah Pak Muhamad Kp Roraharim', '081617625747', 'images (20).jpeg', 'Proses'),
(30, '2020-03-07 (14:54:51)', 'Muhamad Tohir', '3601087250098267', 'Longsor di Kp Umbulan Mengakibatkan 4 orang meninggal', '081617625749', 'images (9).jpeg', 'Proses'),
(31, '2020-03-07 (15:54:44)', 'Dianti Maulida', '3601045237890123', 'Longsor Lapindo', '081617625749', 'images (10).jpeg', 'Proses'),
(32, '2020-03-07 (15:58:02)', 'Dianti Maulida', '3601045237890123', 'Sawah banjir petai nelangsak', '081617898717', 'images (11).jpeg', 'Proses'),
(33, '2020-03-07 (15:58:47)', 'Dianti Maulida', '3601045237890123', 'Tauran Antar Pelajar', '081617625748', 'images (26).jpeg', 'Proses'),
(34, '2020-03-07 (15:59:28)', 'Dianti Maulida', '3601045237890123', 'Kebakaran Rumah warga daerah gadel', '081617898717', 'images (21).jpeg', 'Proses'),
(35, '2020-03-07 (16:01:53)', 'Muhamad Saripudin', '3601096709823090', 'Jembatan Ambruk Daerah hilir', '081617625749', 'images (33).jpeg', 'Proses');

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE IF NOT EXISTS `petugas` (
  `id_petugas` int(11) NOT NULL AUTO_INCREMENT,
  `nama_petugas` varchar(35) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(32) NOT NULL,
  `tlp` varchar(13) NOT NULL,
  `level` enum('admin','petugas') NOT NULL,
  PRIMARY KEY (`id_petugas`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `nama_petugas`, `username`, `password`, `tlp`, `level`) VALUES
(1, 'Saripudin', 'admin', 'admin', '081617898716', 'admin'),
(2, 'dianti maulida', 'petugas', 'petugas', '081617898717', 'petugas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tanggapan`
--

CREATE TABLE IF NOT EXISTS `tanggapan` (
  `id_tanggapan` int(11) NOT NULL AUTO_INCREMENT,
  `id_pengaduan` int(11) NOT NULL,
  `tgl_tanggapan` varchar(40) NOT NULL,
  `isi_laporan` text NOT NULL,
  `tanggapan` text NOT NULL,
  `id_petugas` int(11) NOT NULL,
  PRIMARY KEY (`id_tanggapan`),
  KEY `id_pengaduan` (`id_pengaduan`),
  KEY `id_petugas` (`id_petugas`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data untuk tabel `tanggapan`
--

INSERT INTO `tanggapan` (`id_tanggapan`, `id_pengaduan`, `tgl_tanggapan`, `isi_laporan`, `tanggapan`, `id_petugas`) VALUES
(9, 2, '2020-03-05 (21:49:23)', 'jalan ancurrrrr', 'jalan ancurrrr', 1),
(10, 3, '2020-03-05 (21:49:43)', 'longsor pak lurah', 'lonsor pak lurah', 1),
(11, 5, '2020-03-06 (01:06:33)', 'kebakaran rumah mewah', 'kebakaran rumah mewah', 1),
(12, 6, '2020-03-06 (01:22:16)', 'terjadi longsor di Kp. gadel', 'terjadi longsor di Kp. gadel kami siap membantu', 1),
(13, 7, '2020-03-06 (01:22:59)', 'Sawah kebanjiran di RT 008', 'Sawah kebanjiran di RT 008 kami siap membantu', 1),
(14, 8, '2020-03-06 (01:35:34)', 'tauran antar pelajar', 'tauran antar pelajar kami siap membantu', 1),
(15, 15, '2020-03-07 (11:01:43)', 'h', 'helem putih', 1),
(16, 0, '2020-03-07 (11:14:01)', 'a', 'aipp', 1),
(17, 13, '2020-03-07 (11:43:40)', 'e', 'sarip', 1),
(18, 23, '2020-03-07 (12:08:25)', 'm', 'm', 1),
(19, 21, '2020-03-07 (12:42:12)', 'h', 'h', 1),
(20, 25, '2020-03-07 (15:48:11)', 'Jembatan Roboh di Kp Barengkok', 'Sebelumya kami minta maaf, kami dari prangkat desa akan segera melakukan perbaikan jembatan tersebut sekian dan terimakasih', 1);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pengaduan`
--
ALTER TABLE `pengaduan`
  ADD CONSTRAINT `pengaduan_ibfk_1` FOREIGN KEY (`nik`) REFERENCES `masyarakat` (`nik`);

--
-- Ketidakleluasaan untuk tabel `tanggapan`
--
ALTER TABLE `tanggapan`
  ADD CONSTRAINT `tanggapan_ibfk_2` FOREIGN KEY (`id_petugas`) REFERENCES `petugas` (`id_petugas`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
