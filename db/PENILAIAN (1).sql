-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 15 Jul 2020 pada 06.00
-- Versi server: 10.4.13-MariaDB
-- Versi PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `PENILAIAN`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `aktivitas_TELEGRAM`
--

CREATE TABLE `aktivitas_TELEGRAM` (
  `id_atelegram` int(11) NOT NULL,
  `id_kelompok` int(11) NOT NULL,
  `h` int(11) NOT NULL,
  `jml` int(11) NOT NULL,
  `h1` int(11) NOT NULL,
  `jml_h1` int(11) NOT NULL,
  `h2` int(11) NOT NULL,
  `jml_h2` int(11) NOT NULL,
  `h3` int(11) NOT NULL,
  `jml_h3` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota`
--

CREATE TABLE `anggota` (
  `id_anggota` int(11) NOT NULL,
  `id_pangkat` int(11) NOT NULL,
  `nrp` char(20) NOT NULL,
  `nama` char(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `id_pangkat`, `nrp`, `nama`) VALUES
(1, 1, '11960035270673', 'Hengki YS'),
(2, 2, '521871', 'Juli Heryanto Ginting, S.Sos.'),
(3, 1, '11960049880375', 'Mochammad Arif Hidayat'),
(4, 3, ' 11891/P', 'Baroyo Eko Basuki, S.H., M.M.'),
(5, 1, '11970043910576', 'Robby Suryadi, S.Sos.'),
(6, 2, '520322', 'M. Yani Amirullah'),
(7, 1, '11940014400970', 'Wawan Pujiatmoko'),
(8, 4, '11950053410674', 'Trias Wijanarko, S.I.P.'),
(9, 5, '11950053740371', 'Irfan Siddiq'),
(10, 6, '11960049390375', 'Topri Daeng Balaw, S.I.P.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `CEKLIS`
--

CREATE TABLE `CEKLIS` (
  `id_ceklis` char(5) NOT NULL,
  `nama_ceklis` varchar(100) NOT NULL,
  `tipe` enum('1','2') NOT NULL COMMENT '1 : perorangan\r\n2 : kelompok'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `CEKLIS`
--

INSERT INTO `CEKLIS` (`id_ceklis`, `nama_ceklis`, `tipe`) VALUES
('C1', 'CEKLIS PENILAIAN POSKO', '2'),
('C10', 'LAI ASREN', '1'),
('C11', 'LAI ASKOMLEK', '1'),
('C12', 'PENILAIAN PRODUK RENCANA WAKTU', '2'),
('C13', 'PENILAIAN PRODUK PETUNJUK PERENCANAAN AWAL ', '2'),
('C14', 'PENILAIAN PRODUK PERINTAH PERINGATAN AWAL', '2'),
('C15', 'PENILAIAN PRODUK ATP PANGLIMA', '2'),
('C16', 'PENILAIAN PRODUK ATS INTEL', '2'),
('C17', 'PENILAIAN PRODUK ATS OPS', '2'),
('C18', 'PENILAIAN PRODUK ATS PERS', '2'),
('C19', 'PENILAIAN PRODUK ATS LOG', '2'),
('C2', 'CHEKLIST PENILAIAN aktivitas PANGKOGASGABPAD', '1'),
('C20', 'PENILAIAN PRODUK ATS TER', '2'),
('C21', 'PENILAIAN PRODUK ATS REN', '2'),
('C22', 'PENILAIAN PRODUK ATS KOMLEK', '2'),
('C23', 'PENILAIAN PRODUK JUKCAN', '2'),
('C24', 'PENILAIAN PERINTAH PERSIAPAN', '2'),
('C25', 'PENILAIAN PRODUK ANALISA CB PANGLIMA', '2'),
('C26', 'PENILAIAN PRODUK ANALISA CB ASINTEL', '2'),
('C27', 'PENILAIAN PRODUK ANALISA CB ASOPS', '2'),
('C28', 'CEKLIS PENILAIAN PRODUK ANALISA CB ASPERS', '2'),
('C29', 'PENILAIAN PRODUK ANALISA CB ASLOG', '2'),
('C3', 'CEKLIS PENILAIAN aktivitas STAF SAHLI', '1'),
('C30', 'PENILAIAN PRODUK ANALISA CB ASTER', '2'),
('C31', 'PENILAIAN PRODUK ANALISA CB ASREN', '2'),
('C32', 'PENILAIAN PRODUK ANALISA CB ASKOMLEK', '2'),
('C33', 'PENILAIAN PRODUK KEPUTUSAN DAN KUO', '2'),
('C34', 'PENILAIAN PRODUK KONSEP RO', '2'),
('C35', 'aktivitas TELEGRAM', '2'),
('C36', 'aktivitas TELEPON', '2'),
('C4', 'CEKLIS PENILAIAN aktivitas KEPALA STAF', '1'),
('C5', 'LAI ASINTEL', '1'),
('C6', 'LAI ASOPS', '1'),
('C7', 'LAI ASPERS', '1'),
('C8', 'LAI ASLOG', '1'),
('C9', 'LAI ASTER', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `DETAIL_PENILAIAN_PERORANGAN`
--

CREATE TABLE `DETAIL_PENILAIAN_PERORANGAN` (
  `id_detail_penilaian_perorangan` int(11) NOT NULL,
  `id_penilaian_perorangan` int(11) NOT NULL,
  `id_soal_perorangan` int(11) NOT NULL,
  `nilai` tinyint(4) NOT NULL,
  `yes_no` enum('1','2') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `DETAIL_PENILAIAN_PERORANGAN`
--

INSERT INTO `DETAIL_PENILAIAN_PERORANGAN` (`id_detail_penilaian_perorangan`, `id_penilaian_perorangan`, `id_soal_perorangan`, `nilai`, `yes_no`) VALUES
(33, 4, 1, 8, '1'),
(34, 4, 2, 8, '1'),
(35, 4, 3, 5, '1'),
(36, 4, 4, 8, '1'),
(37, 4, 5, 5, '1'),
(38, 4, 6, 4, '1'),
(39, 4, 7, 7, '1'),
(40, 4, 8, 4, '1'),
(41, 4, 9, 4, '1'),
(42, 4, 10, 4, '1'),
(43, 4, 11, 9, '1'),
(44, 4, 12, 4, '1'),
(45, 4, 13, 3, '1'),
(46, 4, 14, 9, '1'),
(47, 5, 15, 8, '1'),
(48, 5, 16, 9, '1'),
(49, 5, 17, 9, '1'),
(50, 5, 18, 9, '1'),
(51, 5, 19, 9, '1'),
(52, 5, 20, 9, '1'),
(53, 5, 21, 9, '1'),
(54, 5, 22, 9, '1'),
(55, 5, 23, 9, '1'),
(56, 5, 24, 9, '1'),
(57, 6, 1, 8, '1'),
(58, 6, 2, 9, '1'),
(59, 6, 3, 5, '1'),
(60, 6, 4, 8, '1'),
(61, 6, 5, 5, '1'),
(62, 6, 6, 5, '1'),
(63, 6, 7, 9, '1'),
(64, 6, 8, 5, '1'),
(65, 6, 9, 5, '1'),
(66, 6, 10, 5, '1'),
(67, 6, 11, 9, '1'),
(68, 6, 12, 5, '1'),
(69, 6, 13, 5, '1'),
(70, 6, 14, 9, '1'),
(71, 7, 25, 9, '1'),
(72, 7, 26, 3, '1'),
(73, 7, 27, 2, '1'),
(74, 7, 28, 8, '1'),
(75, 7, 29, 3, '1'),
(76, 7, 30, 2, '1'),
(77, 7, 31, 8, '1'),
(78, 7, 32, 4, '1'),
(79, 7, 33, 8, '1'),
(80, 7, 34, 8, '1'),
(81, 7, 35, 4, '1'),
(82, 7, 36, 8, '1'),
(83, 7, 37, 4, '1'),
(84, 7, 38, 4, '1'),
(85, 7, 39, 8, '1'),
(86, 8, 40, 4, '1'),
(87, 8, 41, 4, '1'),
(88, 8, 42, 4, '1'),
(89, 8, 43, 4, '1'),
(90, 8, 44, 9, '1'),
(91, 8, 45, 9, '1'),
(92, 8, 46, 9, '1'),
(93, 8, 47, 9, '1'),
(94, 8, 48, 5, '1'),
(95, 8, 49, 5, '1'),
(96, 8, 50, 5, '1'),
(97, 8, 51, 5, '1'),
(98, 8, 52, 5, '1'),
(99, 8, 53, 5, '1'),
(100, 8, 54, 9, '1'),
(101, 8, 63, 5, '1'),
(102, 9, 55, 4, '1'),
(103, 9, 56, 4, '1'),
(104, 9, 57, 4, '1'),
(105, 9, 58, 4, '1'),
(106, 9, 59, 5, '1'),
(107, 9, 60, 5, '1'),
(108, 9, 61, 5, '1'),
(109, 9, 62, 5, '1'),
(110, 9, 64, 5, '1'),
(111, 9, 65, 5, '1'),
(112, 9, 66, 5, '1'),
(113, 9, 67, 5, '1'),
(114, 9, 68, 10, '1'),
(115, 9, 69, 5, '1'),
(116, 9, 70, 5, '1'),
(117, 9, 71, 3, '1'),
(118, 9, 72, 2, '1'),
(119, 9, 73, 3, '1'),
(120, 9, 74, 5, '1'),
(121, 9, 75, 2, '1'),
(122, 9, 76, 2, '1'),
(123, 9, 77, 3, '1'),
(124, 10, 78, 4, '1'),
(125, 10, 79, 4, '1'),
(126, 10, 80, 4, '1'),
(127, 10, 81, 4, '1'),
(128, 10, 82, 4, '1'),
(129, 10, 83, 5, '1'),
(130, 10, 84, 5, '1'),
(131, 10, 85, 5, '1'),
(132, 10, 86, 5, '1'),
(133, 10, 87, 5, '1'),
(134, 10, 88, 5, '1'),
(135, 10, 89, 5, '1'),
(136, 10, 90, 5, '1'),
(137, 10, 91, 5, '1'),
(138, 10, 92, 5, '1'),
(139, 10, 93, 5, '1'),
(140, 10, 94, 5, '1'),
(141, 10, 95, 5, '1'),
(142, 10, 96, 5, '1'),
(143, 10, 97, 5, '1'),
(144, 11, 98, 5, '1'),
(145, 11, 99, 5, '1'),
(146, 11, 100, 5, '1'),
(147, 11, 101, 5, '1'),
(148, 11, 102, 5, '1'),
(149, 11, 103, 5, '1'),
(150, 11, 104, 5, '1'),
(151, 11, 105, 5, '1'),
(152, 11, 106, 5, '1'),
(153, 11, 107, 4, '1'),
(154, 11, 108, 8, '1'),
(155, 11, 109, 4, '1'),
(156, 11, 110, 5, '1'),
(157, 11, 111, 5, '1'),
(158, 11, 112, 4, '1'),
(159, 11, 113, 4, '1'),
(160, 11, 114, 5, '1'),
(161, 11, 115, 9, '1'),
(162, 12, 116, 8, '1'),
(163, 12, 117, 4, '1'),
(164, 12, 118, 4, '1'),
(165, 12, 119, 9, '1'),
(166, 12, 120, 4, '1'),
(167, 12, 121, 4, '1'),
(168, 12, 122, 4, '1'),
(169, 12, 123, 7, '1'),
(170, 12, 124, 3, '1'),
(171, 12, 125, 4, '1'),
(172, 12, 126, 4, '1'),
(173, 12, 127, 5, '1'),
(174, 12, 128, 4, '1'),
(175, 12, 129, 5, '1'),
(176, 12, 130, 5, '1'),
(177, 12, 131, 5, '1'),
(178, 12, 132, 5, '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `KELOMPOK`
--

CREATE TABLE `KELOMPOK` (
  `id_kelompok` int(11) NOT NULL,
  `nama_kelompok` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `KELOMPOK`
--

INSERT INTO `KELOMPOK` (`id_kelompok`, `nama_kelompok`) VALUES
(1, 'KOGASGABPAD A'),
(2, 'KOGASGABPAD B'),
(3, 'KOGASGABPAD C'),
(4, 'KOGASGABPAD D'),
(5, 'KOGASGABPAD E'),
(6, 'KOGASGABPAD F '),
(7, 'KOGASGABPAD G'),
(8, 'KOGASGABPAD H');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pangkat`
--

CREATE TABLE `pangkat` (
  `id_pangkat` int(11) NOT NULL,
  `nama_pangkat` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pangkat`
--

INSERT INTO `pangkat` (`id_pangkat`, `nama_pangkat`) VALUES
(1, 'Kolonel Inf'),
(2, 'Kolonel Pnb'),
(3, 'Kolonel Laut (P)'),
(4, 'Kolonel Arh'),
(5, 'Kolonel Czi'),
(6, 'Kolonel Kav'),
(7, 'Kolonel Laut (E)');

-- --------------------------------------------------------

--
-- Struktur dari tabel `PENILAIAN_KELOMPOK`
--

CREATE TABLE `PENILAIAN_KELOMPOK` (
  `id_penilaian_kelompok` int(11) NOT NULL,
  `id_soal_kelompok` int(11) NOT NULL,
  `id_kelompok` int(11) NOT NULL,
  `nilai_peroleh` tinyint(4) NOT NULL,
  `yes_no` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `PENILAIAN_PERORANGAN`
--

CREATE TABLE `PENILAIAN_PERORANGAN` (
  `id_penilaian_perorangan` int(11) NOT NULL,
  `id_anggota` int(11) NOT NULL,
  `id_kelompok` int(11) NOT NULL,
  `id_ceklis` char(5) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `PENILAIAN_PERORANGAN`
--

INSERT INTO `PENILAIAN_PERORANGAN` (`id_penilaian_perorangan`, `id_anggota`, `id_kelompok`, `id_ceklis`, `tanggal`) VALUES
(4, 2, 1, 'C2', '2020-07-14'),
(5, 2, 1, 'C3', '2020-07-14'),
(6, 1, 1, 'C2', '2020-07-14'),
(7, 2, 1, 'C4', '2020-07-15'),
(8, 2, 1, 'C5', '2020-07-15'),
(9, 2, 1, 'C6', '2020-07-15'),
(10, 2, 1, 'C7', '2020-07-15'),
(11, 2, 1, 'C8', '2020-07-15'),
(12, 2, 1, 'C9', '2020-07-15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `SOAL_KELOMPOK`
--

CREATE TABLE `SOAL_KELOMPOK` (
  `id_soal_kelompok` int(11) NOT NULL,
  `maks` float NOT NULL,
  `id_ceklis` char(5) NOT NULL,
  `aspek` varchar(255) NOT NULL,
  `tipe_nilai` enum('1','2','3','4') NOT NULL COMMENT '1 : Nilai Produk\r\n2 : Nilai Telegram\r\n3 : Nilai Telepon\r\n4 : Nilai Posko',
  `is_aktif` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `SOAL_KELOMPOK`
--

INSERT INTO `SOAL_KELOMPOK` (`id_soal_kelompok`, `maks`, `id_ceklis`, `aspek`, `tipe_nilai`, `is_aktif`) VALUES
(1, 70, 'C12', 'Kesesuaian dengan Buku I dan IIA', '1', 1),
(2, 20, 'C12', 'Urut-urutan kegiatan sesuai Proses Biltus', '1', 1),
(3, 5, 'C12', 'Ketepatan waktu', '1', 1),
(4, 5, 'C12', 'Kerapihan', '1', 1),
(6, 10, 'C13', 'Jadwal Waktu Sementara/Awal Pelaksanaan Operasi.', '1', 1),
(7, 10, 'C13', 'Koordinasi yang harus dilakukan.', '1', 1),
(8, 15, 'C13', 'Menentukan Pergerakan Termasuk Posisi Kodal.', '1', 1),
(9, 20, 'C13', 'Tugas Tambahan bagi masing-masing Staf termasuk Informasi-informasi Khusus yang diperlukan.', '1', 1),
(10, 20, 'C13', 'Mengembangkan Rencana Waktu dengan kondisi Daerah Operasi (jika diinginkan).', '1', 1),
(11, 20, 'C13', 'Informasi tentang Persoalan-Persoalan Intelijen Lainnya dan Unsur Utama Keterangan bagi Komandan (jika diperlukan).', '1', 1),
(12, 2.5, 'C13', 'Ketepatan waktu', '1', 1),
(13, 2.5, 'C13', 'Kerapihan', '1', 1),
(14, 10, 'C14', 'Jenis Operasi.', '1', 1),
(15, 10, 'C14', 'Lokasi pelaksanaan operasi secara umum.', '1', 1),
(16, 15, 'C14', 'Jadwal waktu operasi.', '1', 1),
(17, 20, 'C14', 'Pergerakan untuk mendukung operasi.', '1', 1),
(18, 20, 'C14', 'Keperluan informasi awal yang diperlukan guna mendukung pelaksana-an operasi.', '1', 1),
(19, 20, 'C14', 'Tugas-tugas intelijen', '1', 1),
(20, 2.5, 'C14', 'Ketepatan waktu', '1', 1),
(21, 2.5, 'C14', 'Kerapihan', '1', 1),
(22, 10, 'C15', 'Analisa Direktif /Prinsiap Komando Atas', '1', 1),
(23, 15, 'C15', 'Analisa Pusat kekuatan sendiri', '1', 1),
(24, 10, 'C15', 'Analisa Praanggapan', '1', 1),
(25, 10, 'C15', 'Analisa Tugas dari aspek operasional', '1', 1),
(26, 10, 'C15', 'Analisa waktu operasi', '1', 1),
(27, 15, 'C15', 'Kemungkinan-kemungkinan CB', '1', 1),
(28, 10, 'C15', 'Struktur Susunan Tugas', '1', 1),
(29, 15, 'C15', 'Strategi operasional pasukan sendiri', '1', 1),
(30, 2.5, 'C15', 'Ketepatan waktu', '1', 1),
(31, 2.5, 'C15', 'Kerapihan', '1', 1),
(32, 15, 'C16', 'Analisa Situasi dan kondisi Daerah operasi', '1', 1),
(33, 10, 'C16', 'Analisa Praanggapan', '1', 1),
(34, 20, 'C16', 'Analisa Pusat kekuatan ancaman', '1', 1),
(35, 20, 'C16', 'Kebutuhan informasi yang diperlukan', '1', 1),
(36, 30, 'C16', 'Analisa berbagai bentuk ancaman', '1', 1),
(37, 2.5, 'C16', 'Ketepatan waktu', '1', 1),
(38, 2.5, 'C16', 'Kerapihan', '1', 1),
(39, 15, 'C17', 'Analisa pusat kekuatan sendiri.', '1', 1),
(40, 10, 'C17', 'Analisa praanggapan.', '1', 1),
(41, 15, 'C17', 'Analisa tugas dari aspek operasional.', '1', 1),
(42, 10, 'C17', 'Analisa waktu operasi.', '1', 1),
(43, 15, 'C17', 'Kemungkinan-kemungkinan CB untuk melaksanakan Tupok yang sudah dianalisa.', '1', 1),
(44, 10, 'C17', 'Saran awal tentang struktur susunan tugas (Orgas kogasgabpad & jajarannya).', '1', 1),
(45, 10, 'C17', 'Kebutuhan informasi yang diperlukan dari aspek operasi.', '1', 1),
(46, 10, 'C17', 'Strategi operasional pasukan sendiri.', '1', 1),
(47, 2.5, 'C17', 'Kerapihan ', '1', 1),
(48, 2.5, 'C18', 'Ketepatan waktu penyerahan produk', '1', 1),
(49, 15, 'C18', 'Analisa keadaan personel. ', '1', 1),
(50, 10, 'C18', 'Analisa praanggapan.', '1', 1),
(51, 15, 'C18', 'Analisa Tugas dari aspek dukungan personel.', '1', 1),
(52, 15, 'C18', 'Analisa kendala yang dihadapi dan upaya mengatasi dari aspek personel.', '1', 1),
(53, 15, 'C18', 'Analisa hambatan yang dihadapi dan bantuan yang diperlukan.', '1', 1),
(54, 10, 'C18', 'Kebutuhan informasi yang diperlukan dari aspek dukungan personil.', '1', 1),
(55, 15, 'C18', 'Strategi operasional aspek personil.', '1', 1),
(56, 2.5, 'C18', 'Kerapihan ', '1', 1),
(57, 2.5, 'C18', 'Ketepatan waktu penyerahan produk', '1', 1),
(58, 15, 'C19', 'Analisa keadaan logistik ', '1', 1),
(59, 10, 'C19', 'Analisa praanggapan.', '1', 1),
(60, 15, 'C19', 'Analisa tugas dari aspek dukungan logistik.', '1', 1),
(61, 15, 'C19', 'Analisa kendala yang dihadapi dan upaya mengatasi dari aspek logistik.', '1', 1),
(62, 15, 'C19', 'Analisa hambatan-hambatan yang dihadapi dan bantuan yang diperlukan.', '1', 1),
(63, 10, 'C19', 'Kebutuhan informasi yang diperlukan dari aspek logistik.', '1', 1),
(64, 15, 'C19', 'Strategi operasional aspek logistik', '1', 1),
(65, 2.5, 'C19', 'Kerapihan', '1', 1),
(66, 2.5, 'C19', 'Ketepatan waktu penyerahan produk', '1', 1),
(67, 15, 'C20', 'Analisa Keadaan Teritorial  ', '1', 1),
(68, 10, 'C20', 'Analisa praanggapan.', '1', 1),
(69, 15, 'C20', 'Analisa tugas dari aspek teritorial.', '1', 1),
(70, 15, 'C20', 'Analisa kendala yang dihadapi dan upaya mengatasi dari aspek teritorial.', '1', 1),
(71, 15, 'C20', 'Analisa hambatan-hambatan yang dihadapi dan bantuan yang diperlukan.', '1', 1),
(72, 10, 'C20', 'Kebutuhan informasi yang diperlukan dari aspek teritorial.', '1', 1),
(73, 15, 'C20', 'Strategi operasional aspek teritorial', '1', 1),
(74, 2.5, 'C20', 'Kerapihan ', '1', 1),
(75, 2.5, 'C20', 'Ketepatan waktu penyerahan produk', '1', 1),
(76, 15, 'C21', 'Analisa pusat kekuatan sendiri.', '1', 1),
(77, 10, 'C21', 'Analisa praanggapan.', '1', 1),
(78, 15, 'C21', 'Analisa tugas dari aspek perencanaan.', '1', 1),
(79, 10, 'C21', 'Analisa waktu perencanaan.', '1', 1),
(80, 10, 'C21', 'Kemungkinan-kemungkinan CB untuk melaksanakan Tupok yang sudah dianalisa.', '1', 1),
(81, 10, 'C21', 'Saran awal tentang struktur susunan tugas (Orgas kogasgabpad & jajarannya).', '1', 1),
(82, 10, 'C21', 'Kebutuhan informasi yang diperlukan dari aspek operasi dan aspek perencanaan', '1', 1),
(83, 15, 'C21', 'Strategi operasional pasukan sendiri.', '1', 1),
(84, 2.5, 'C21', 'Kerapihan', '1', 1),
(85, 2.5, 'C21', 'Ketepatan waktu penyerahan produk', '1', 1),
(86, 15, 'C22', 'Analisa keadaan  komunikasi dan elektronika.', '1', 1),
(87, 10, 'C22', 'Analisa praanggapan.', '1', 1),
(88, 15, 'C22', 'Analisa tugas-tugas dari aspek dukungan komlek.', '1', 1),
(89, 15, 'C22', 'Analisa kendala-kendala yang dihadapi dan upaya mengatasi dari aspek komlek.', '1', 1),
(90, 15, 'C22', 'Analisa hambatan-hambatan yang dihadapi dan bantuan yang diperlukan.', '1', 1),
(91, 10, 'C22', 'Kebutuhan informasi yang diperlukan dari aspek komlek', '1', 1),
(92, 15, 'C22', 'Strategi operasional aspek komlek.', '1', 1),
(93, 2.5, 'C22', 'Kerapihan', '1', 1),
(94, 2.5, 'C22', 'Ketepatan waktu penyerahan produk', '1', 1),
(95, 5, 'C23', 'Situasi', '1', 1),
(96, 10, 'C23', 'Tugas Pokok yang Dinyatakan Kembali', '1', 1),
(97, 10, 'C23', 'Keinginan Panglima', '1', 1),
(98, 5, 'C23', 'Kegiatan-kegiatan yang Menentukan', '1', 1),
(99, 10, 'C23', 'CB yang Dikembangkan', '1', 1),
(100, 5, 'C23', 'Pengembangan Konsep CB', '1', 1),
(101, 5, 'C23', 'Rencana Waktu', '1', 1),
(102, 5, 'C23', 'Rencana Duklog', '1', 1),
(103, 5, 'C23', 'Keperluan Info Intelijen', '1', 1),
(104, 5, 'C23', 'Rencana Operasi Pengamanan', '1', 1),
(105, 5, 'C23', 'Petunjuk Pengintaian dan Pengamatan', '1', 1),
(106, 5, 'C23', 'Resiko yang akan Dihadapi', '1', 1),
(107, 5, 'C23', 'Kerja sama Operasi yang akan Dilaksanakan', '1', 1),
(108, 5, 'C23', 'Jenis Perintah yang akan Dikeluarkan', '1', 1),
(109, 5, 'C23', 'Rencana Uji RO', '1', 1),
(110, 5, 'C23', 'Rencana Waktu (Penutup)', '1', 1),
(111, 2.5, 'C23', 'Kerapihan produk', '1', 1),
(112, 2.5, 'C23', 'Ketepatan waktu penyerahan produk', '1', 1),
(113, 10, 'C24', 'Situasi', '1', 1),
(114, 10, 'C24', 'Tugas Pokok', '1', 1),
(115, 10, 'C24', 'Keinginan Pangkogasgab (Konsep Strategi Operasional)', '1', 1),
(116, 10, 'C24', 'Organisasi Tugas', '1', 1),
(117, 10, 'C24', 'UUK/PIL', '1', 1),
(118, 10, 'C24', 'Petunjuk Resiko', '1', 1),
(119, 10, 'C24', 'Instruksi Pengamatan dan Pengintaian', '1', 1),
(120, 10, 'C24', 'Instruksi Pergerakan Awal', '1', 1),
(121, 10, 'C24', 'Tindakan Keamanan', '1', 1),
(122, 2.5, 'C24', 'Pengecekan Kesiapan Personel dan Materiil', '1', 1),
(123, 2.5, 'C24', 'Penutup', '1', 1),
(124, 2.5, 'C24', 'Ketepatan waktu', '1', 1),
(125, 2.5, 'C24', 'Kerapihan', '1', 1),
(126, 10, 'C25', 'Situasi', '1', 1),
(127, 30, 'C25', 'Cara Bertindak', '1', 1),
(128, 30, 'C25', 'Analisa alternatif CB', '1', 1),
(129, 20, 'C25', 'Kesimpulan', '1', 1),
(130, 5, 'C25', 'Kerapian produk', '1', 1),
(131, 5, 'C25', 'Ketepatan waktu penyerahan produk', '1', 1),
(132, 10, 'C26', 'Situasi', '1', 1),
(133, 30, 'C26', 'Cara Bertindak', '1', 1),
(134, 30, 'C26', 'Analisa alternatif CB', '1', 1),
(135, 30, 'C26', 'Kesimpulan', '1', 1),
(136, 5, 'C26', 'Kerapian produk', '1', 1),
(137, 5, 'C26', 'Ketepatan waktu penyerahan produk', '1', 1),
(138, 10, 'C27', 'Situasi', '1', 1),
(139, 30, 'C27', 'Cara Bertindak', '1', 1),
(140, 30, 'C27', 'Analisa alternatif CB', '1', 1),
(141, 20, 'C27', 'Kesimpulan', '1', 1),
(142, 5, 'C27', 'Kerapian produk', '1', 1),
(143, 5, 'C27', 'Ketepatan waktu penyerahan produk', '1', 1),
(144, 10, 'C28', 'Situasi', '1', 1),
(145, 30, 'C28', 'Cara Bertindak', '1', 1),
(146, 30, 'C28', 'Analisa alternatif CB', '1', 1),
(147, 20, 'C28', 'Kesimpulan', '1', 1),
(148, 5, 'C28', 'Kerapian produk', '1', 1),
(149, 5, 'C28', 'Ketepatan waktu penyerahan produ', '1', 1),
(150, 10, 'C29', 'Situasi', '1', 1),
(151, 30, 'C29', 'Cara Bertindak', '1', 1),
(152, 30, 'C29', 'Analisa alternatif CB', '1', 1),
(153, 20, 'C29', 'Kesimpulan', '1', 1),
(154, 5, 'C29', 'Kerapian produk', '1', 1),
(155, 5, 'C29', 'Ketepatan waktu penyerahan produk', '1', 1),
(156, 10, 'C30', 'Situasi', '1', 1),
(157, 30, 'C30', 'Cara Bertindak', '1', 1),
(158, 30, 'C30', 'Analisa alternatif CB', '1', 1),
(159, 20, 'C30', 'Kesimpulan', '1', 1),
(160, 5, 'C30', 'Kerapian produk', '1', 1),
(161, 5, 'C30', 'Ketepatan waktu penyerahan produk', '1', 1),
(162, 10, 'C31', 'Situasi', '1', 1),
(163, 30, 'C31', 'Cara Bertindak', '1', 1),
(164, 30, 'C31', 'Analisa alternatif CB', '1', 1),
(165, 20, 'C31', 'Kesimpulan', '1', 1),
(166, 5, 'C31', 'Kerapian produk', '1', 1),
(167, 5, 'C31', 'Ketepatan waktu penyerahan produk', '1', 1),
(168, 10, 'C32', 'Situasi', '1', 1),
(169, 30, 'C32', 'Cara Bertindak', '1', 1),
(170, 30, 'C32', 'Analisa alternatif CB', '1', 1),
(171, 20, 'C32', 'Kesimpulan', '1', 1),
(172, 5, 'C32', 'Kerapian produk', '1', 1),
(173, 5, 'C32', 'Ketepatan waktu penyerahan produk', '1', 1),
(174, 10, 'C33', 'Keputusan', '1', 1),
(175, 30, 'C33', 'Konsep Umum Operasi', '1', 1),
(176, 30, 'C33', 'Pokok-pokok Tugas yang harus dikerjakan (Satuan Bawah)', '1', 1),
(177, 20, 'C33', 'Lain-lain', '1', 1),
(178, 5, 'C33', 'Kerapian produk', '1', 1),
(179, 5, 'C33', 'Ketepatan waktu penyerahan produk', '1', 1),
(180, 15, 'C34', 'Situasi', '1', 1),
(181, 20, 'C34', 'Tugas Pokok', '1', 1),
(182, 45, 'C34', 'Pelaksanaan\r\na. Konsep operasi\r\nb. Tugas satuan-satuan manuver yang termasuk dalam susunan tugas/organisasi tugas.\r\nc.	Instruksi koordinasi.\r\n', '1', 1),
(183, 5, 'C34', 'Administrasi dan logistik', '1', 1),
(184, 5, 'C34', 'Komando kendali dan komlek', '1', 1),
(185, 5, 'C34', 'Kerapihan', '1', 1),
(186, 5, 'C34', 'Ketepatan waktu penyerahan produk', '1', 1),
(187, 40, 'C1', 'Peta  :', '1', 1),
(188, 40, 'C1', 'Peta  :\r\na.  Induk\r\nb.  Situasi\r\nc.  Operasi\r\nd.  Olah Yudha ', '2', 1),
(189, 30, 'C1', 'Recording Data', '2', 1),
(190, 15, 'C1', 'Tata ruang', '2', 1),
(191, 15, 'C1', 'Kerapihan/kreatifitas', '2', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `SOAL_PERORANGAN`
--

CREATE TABLE `SOAL_PERORANGAN` (
  `id_soal_perorangan` int(11) NOT NULL,
  `id_ceklis` char(5) NOT NULL,
  `indeks` tinyint(4) NOT NULL,
  `tindakan_macam` text NOT NULL,
  `is_aktif` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `SOAL_PERORANGAN`
--

INSERT INTO `SOAL_PERORANGAN` (`id_soal_perorangan`, `id_ceklis`, `indeks`, `tindakan_macam`, `is_aktif`) VALUES
(1, 'C2', 10, 'Pangkogasgabpad menerima direktif Pang TNI, apakah melakukan kegiatan', 1),
(2, 'C2', 10, 'Apakah Pangkogasgabpad memahami Direktif yang diberikan oleh Panglima TNI dan melaksanakan Analisa Tugas Pokok yang mencakup', 1),
(3, 'C2', 5, 'Pada saat Briefing analisa tugas, apakah Panglima menerima paparan dari semua asisten? Membandingkan hasil analisa tugas pokok yang dilakukan sendiri oleh Panglima, selanjutnya Panglima memberi arahan kepada Staf untuk menyusun petunjuk perencanaan dan perintah persiapan.', 1),
(4, 'C2', 10, 'Apakah Panglima menyampaikan petunjuk perencanaan kepada staf dan menyampaikan perintah persiapan kepada satuan bawah?', 1),
(5, 'C2', 5, 'Apakah Panglima dengan staf melaksanakan proses pengembangan, analisa dan perbandingan  CB untuk menghasilkan CB terpilih?', 1),
(6, 'C2', 5, 'Apakah Panglima ikut serta/mengawasi proses olah yudha yang dilaksanakan oleh staf ?', 1),
(7, 'C2', 10, 'Apakah Panglima menerima paparan Kas mengenai CB terbaik, selanjutnya Panglima menentukan CB terbaik dengan membandingkan CB yang dibuat Panglima sendiri? Apakah Panglima memberi petunjuk dan memodifikasi CB apabila diperlukan serta mensimulasikannya kembali?', 1),
(8, 'C2', 5, 'Apakah Pangkogasgabpad menyampaikan Keputusan dan Konsep Umum Operasi kepada para Asisten dan Unsur-unsur bawah (sat bawahan) serta unsur terkait.', 1),
(9, 'C2', 5, 'Apakah Keputusan & KUO Pangkogasgabpad mencakup Keputusan, Konsep Umum Operasi, Pokok-pokok tugas yang harus dikerjakan (oleh Satwah), Lain-lain / Instruksi Koordinasi.', 1),
(10, 'C2', 5, 'Apakah dalam Kep & KUO Pangkogasgabpad sudah tercantum waktu perencanaan / perintah akan dikeluarkan.', 1),
(11, 'C2', 10, 'Apakah dalam Rencana Operasi yang telah dibuat lengkap dengan lampiran-lampiran sebagai berikut', 1),
(12, 'C2', 5, 'Apakah Rencana Operasi yang telah dibuat selanjutnya di uji melalui TFG atau dengan metode yang lain', 1),
(13, 'C2', 5, 'Apakah RO yang sudah disempurnakan dilaporkan/dipaparkan kepada Panglima TNI.', 1),
(14, 'C2', 10, 'Apakah Pangkogasgabpad membuat produk tertulis berupa', 1),
(15, 'C3', 10, 'Apakah Pa Sahli memberikan saran dan penjelasan yang diperlukan panglima sesuai fungsinya', 1),
(16, 'C3', 10, 'Apakah Pa Sahli selalu aktif koordinasi dengan staf lain.', 1),
(17, 'C3', 10, 'Apakah Pa Sahli mengerti tentang tugas pokok satuan tempat ditugaskan', 1),
(18, 'C3', 10, 'Apakah Pa Sahli dapat mengembangkan petunjuk yang diberikan Panglima', 1),
(19, 'C3', 10, 'Apakah Pa Sahli dapat memberikan keterangan yang bersifat teknis tentang operasi yang dilaksanakan', 1),
(20, 'C3', 10, 'Apakah Pa Sahli mengikuti perkembangan situasi secara terus menerus pelaksanaan operasi yang berjalan.', 1),
(21, 'C3', 10, 'Apakah Pa Sahli terampil dan aktif dalam penyelesaian tugas-tugas sesuai bidang tugasnya', 1),
(22, 'C3', 10, 'Apakah Pa Sahli selalu melaporkan sesuai bidang tugasnya yang diperlukan kepada satuan Komando Atas ', 1),
(23, 'C3', 10, 'Apakah Pa Sahli mengetahui dan memiliki data kemampuan kekuatan sendiri yang dibutuhkan dalam operasi oleh satuan tempat bertugas.', 1),
(24, 'C3', 10, 'Apakah Pa Sahli secara aktif mengikuti dan mengetahui rangkaian kegiatan satuan tempat bertugas.', 1),
(25, 'C4', 10, 'Apakah Kas mengkoordinir staf dan menyiapsiagakan staf untuk siapkan proses perencanaan dan siapkan personel yang mampu untuk melaksanakan tugas sesuai dengan Protap yang ada?', 1),
(26, 'C4', 3, 'Apakah Kas membantu Panglima merumuskan tujuan, konsep operasi serta kekuatan yang akan digunakan dalam Operasi.', 1),
(27, 'C4', 2, 'Apakah Kas membantu Panglima dalam melaksanakan koordinasi ke Ko Atas, samping dan bawah sesuai fungsi bidang tugasnya', 1),
(28, 'C4', 10, 'Apakah Kas mengkoordinir staf dalam melakukan analisa tugas staf? Apakah Kas melaksanakan briefing staf untuk menganalisa tugas bersama staf?', 1),
(29, 'C4', 3, 'Apakah Kas membantu Panglima  mempelajari situasi tentang musuh dan menentukan sasaran-sasaran strategis yang menjadi sasaran Operasi.', 1),
(30, 'C4', 2, 'Apakah Kas mengikuti perkembangan situasi yang terjadi ', 1),
(31, 'C4', 10, 'Apakah Kas mengkoordinir staf menyusun petunjuk perencanaan dan perintah persiapan Panglima?', 1),
(32, 'C4', 5, 'Apakah Kas membantu Panglima  membagi waktu untuk keleluasaan dan kesiapan satuan / komando bawah.', 1),
(33, 'C4', 10, 'Apakah Kas mengkoordinir staf dan mengecek kesiapan personel untuk menerima petunjuk perencanaan dan perintah persiapan Panglima', 1),
(34, 'C4', 10, 'Apakah Kas membantu Panglima  menganalisa Cara Bertindak dan mendiskusikannya beserta Asisten dan staf khusus di atas maket / peta?', 1),
(35, 'C4', 5, 'Apakah Kas mengkoordinir staf dan menyiapkan sarana dan prasarana yang diperlukan seperti Peta darat, laut dan udara untuk perbandingan CB? ', 1),
(36, 'C4', 10, 'Apakah Kas membantu Panglima  menyampaikan Keputusan dan Konsep Umum Operasi kepada para Asisten dan Komandan Satgas (sat bawahan) serta unsur terkait.', 1),
(37, 'C4', 5, 'Apakah Kas membantu Panglima  menentukan organisasi satuan-satuan dan kewenangan garis komando.', 1),
(38, 'C4', 5, 'Apakah Kas membantu Panglima  melaksanakan koordinasi untuk mengerahkan dan mempertahankan sumber daya yang ada untuk kebutuhan Operasi.', 1),
(39, 'C4', 10, 'Apakah Kas membantu dalam kesiapan kegiatan Uji RO yang dilaksanakan melalui TFG', 1),
(40, 'C5', 5, 'Apakah Asintel melaksanakan analisa tugas sesuai dengan bidang tugas intelejen.', 1),
(41, 'C5', 5, 'Apakah Asintel  membuat tabulasi data dan Peta Situasi.', 1),
(42, 'C5', 5, 'Apakah Asintel  berusaha mencari ke-terangan – keterangan melalui Satuan Atas, Bawah dan Samping.', 1),
(43, 'C5', 5, 'Apakah Asintel  memberikan Info/keterangan dan terus meyakinkan terpenuhinya kebutuhan intelejen yang memadai dan pelaporan untuk mengungkapkan ancaman / lawan segera mungkin.', 1),
(44, 'C5', 10, 'Apakah Asintel  berusaha menggunakan badan-badan pengumpulan keterangan yang ada di kesatuan.', 1),
(45, 'C5', 10, 'Apakah Asintel  mempersiapkan  : <br/>\r\n1)  Buku Harian. <br/>\r\n2)  Buku Kerja. <br/>\r\n3)  Peta – peta yang diperlukan.', 1),
(46, 'C5', 10, 'Apakah Asintel  berpartisipasi aktif dalam staf perencanaan dalam merencanakan, mengkoordinir, mengarahkan, memadukan, dan mengontrol konsentrasi dari upaya intel tentang kepentingan ancaman/lawan yang tepat waktu serta tepat sasaran.', 1),
(47, 'C5', 10, 'Apakah Asintel  berusaha memberikan ke-terangan–keterangan yang diperlukan oleh Pa Staf lain dalam rangka keberhasilan tugas.', 1),
(48, 'C5', 5, 'Apakah Asintel  memperhatikan Minu Staf Duty dalam membuat Produk Staf.', 1),
(49, 'C5', 5, 'Apakah Asintel dapat memberikan saran berupa Analisa Intelijen tepat pada waktu yang telah ditentukan.', 1),
(50, 'C5', 5, 'Apakah Asintel mengikuti perkembangan secara terus menerus dan memberikan masukan kepada Panglima dalam menghadapi situasi kritis.', 1),
(51, 'C5', 5, 'Apakah Asintel loyal kepada keputusan Pang.', 1),
(52, 'C5', 5, 'Apakah Asintel memberikan keterangan ancaman/lawan pada Staf Ops dalam rangka membuat RO.', 1),
(53, 'C5', 5, 'Apakah Asintel ikut aktif mengawasi pelaksanaan perintah oleh satuan bawah.', 1),
(54, 'C5', 10, 'Apakah Asintel membuat produk lainnya berupa :', 1),
(55, 'C6', 5, 'Apakah Asops  mempersiapkan buku harian, lembaran kerja dan Peta Ops.', 1),
(56, 'C6', 5, 'Apakah  Asops  memberikan keterangan-keterangan yang diperlukan Panglima untuk menganalisa tugas.', 1),
(57, 'C6', 5, 'Apakah Asops  memberikan saran-saran yang diperlukan sewaktu Pang memberikan Briefing.', 1),
(58, 'C6', 5, 'Apakah Asops memberikan keterangan yang diperlukan dari  :\r\na. Satuan Atas.\r\nb. Satuan Samping. \r\nc. Satuan Bawah.', 1),
(59, 'C6', 5, 'Apakah Asops mengadakan koordinasi dengan Pa Staf lainnya guna mencari keterangan yang diperlukan.', 1),
(60, 'C6', 5, 'Apakah Asops  mengerjakan dan berusaha untuk mengerti atas Jukcan yang diberikan Panglima.', 1),
(61, 'C6', 5, 'Apakah Asops berusaha berkoordinasi dengan staf lain sebelum memulai membuat saran Staf.', 1),
(62, 'C6', 5, 'Apakah Asops  berusaha memberikan keterangan-keterangan Taktis sebelum Panglima memberikan Jukcan.', 1),
(63, 'C5', 5, 'Apakah Asops  memberikan perintah persiapan dan peringatan kepada satuan jajarannya sesuai keinginan Panglima', 1),
(64, 'C6', 5, 'Apakah Asops menyiapkan dan menyampaikan Cara Bertindak sesuai keinginan dari Kogasgabpad ', 1),
(65, 'C6', 5, 'Apakah Asops dapat menyelesaikan dan menyampaikan saran staf bidang operasi tepat pada waktunya.', 1),
(66, 'C6', 5, 'Apakah Asops terampil dalam menangani masalah – masalah Operasi yang bersangkutan dengan fungsinya.', 1),
(67, 'C6', 5, 'Apakah Asops menyiapkan dan menyelesaikan Kep dan KUO sesuai dengan keinginan Panglima.', 1),
(68, 'C6', 10, 'Apakah Asops koordinasi dengan Pa Staf lainnya didalam menyelesaikan Konsep Rencana Operasi.', 1),
(69, 'C6', 5, 'Apakah Asops menyiapkan dan menyelesaikan Rencana Operasi beserta lampirannya  tepat pada waktunya.', 1),
(70, 'C6', 5, 'Apakah Asops mengikuti perkembangan situasi sesuai jajarannya saat perencanaan.', 1),
(71, 'C6', 3, 'Apakah Asops ikut mengawasi pelaksanaan perintah Panglima oleh Satuan-satuan bawah.', 1),
(72, 'C6', 2, 'Apakah Asops  mempersiapkan Peta Operasi.', 1),
(73, 'C6', 3, 'Apakah Asops mengeplot semua peristiwa Operasi pada Peta Operasi.', 1),
(74, 'C6', 5, 'Apakah Asop membuat produk lampiran :\r\n    a. ATS\r\n    b. Prinsiap, pringat\r\n    c. Jukcan Panglima\r\n    d. Saran staf bidang operasi\r\n    e. Keputusan dan konsep operasi\r\n    f. Rencana Operasi beserta lampirannya:\r\n        1) Susunan tugas\r\n        2) Peta operasi \r\n        3) Rencana Rule of Engangement\r\n        4) Lain-lain sesuai kebutuhan', 1),
(75, 'C6', 2, 'Apakah Asops  memasukkan berita-berita yang masuk pada Buku Harian atau Lembaran Kerja Staf.', 1),
(76, 'C6', 2, 'Apakah Asops  membuat/menyiapkan alat-alat pertolongan/miniatur untuk mempermudah Pengendalian Operasi.', 1),
(77, 'C6', 3, 'Apakah Asops  menentukan letak umum untuk Posko Kogasgabpad.', 1),
(78, 'C7', 5, 'Apakah  Aspers  menganalisa tugas sesuai dengan fungsinya', 1),
(79, 'C7', 5, 'Apakah Aspers mempersiapkan dan mencatat semua berita yang diterima, dan memasukkan pada buku harian, lembaran kerja dan blangko-blangko administrasi buku jurnal.', 1),
(80, 'C7', 5, 'Apakah Aspers  menyampaikan berita tersebut  :\r\na. Semuanya pada Panglima.\r\nb. Pada alamat masing-masing.', 1),
(81, 'C7', 5, 'Apakah Aspers berpartisipasi sejak awal dalam proses perencanaan dan pengambilan keputusan', 1),
(82, 'C7', 5, 'Apakah Aspers mencari keterangan dengan  :\r\na. Satuan Atas.\r\nb. Satuan Samping. \r\nc. Satuan Bawah.', 1),
(83, 'C7', 5, 'Apakah Aspers mendata kekuatan personel dari satuan induk dan satuan-satuan yang membantu dan melaporkan keadaan/ kebutuhan personel kepada panglima.', 1),
(84, 'C7', 5, 'Apakah Aspers berusaha mengerti terhadap Jukcan Panglima.', 1),
(85, 'C7', 5, 'Apakah Aspers dapat mengembangkan Jukcan Panglima yang bersangkutan dengan bidang tugasnya.', 1),
(86, 'C7', 5, 'Apakah Aspers merencanakan dan menyiapkan tenaga pengganti.', 1),
(87, 'C7', 5, 'Apakah Aspers mencatat mengadakan koordinasi dengan Staf lainnya sebelum membuat Analisa staf Personel .', 1),
(88, 'C7', 5, 'Apakah Aspers berusaha memberikan keterangan-keterangan tentang keadaan personel kepada Staf lainnya.', 1),
(89, 'C7', 5, 'Apakah Aspers dapat mengembangkan petunjuk-petunjuk Panglima yang berkaitan dengan bidangnya.', 1),
(90, 'C7', 5, 'Apakah Aspers dapat menyampaikan saran berupa Analisa Personel sesuai bidang personel tepat pada waktunya yang telah ditentukan oleh Panglima.', 1),
(91, 'C7', 5, 'Apakah Aspers berusaha memberikan saran-saran yang diperlukan Panglima dalam mengambil keputusan dan menyusun KUO.', 1),
(92, 'C7', 5, 'Apakah Aspers membantu untuk melengkapi RO', 1),
(93, 'C7', 5, 'Apakah Aspers ikut mengawasi pelaksanaan perintah Panglima oleh satuan bawah.', 1),
(94, 'C7', 5, 'Apakah Aspers dapat mengatasi semua  persoalan (operasi) yang  menyangkut dengan bidang tugasnya.', 1),
(95, 'C7', 5, 'Apakah Aspers menentukan letak pasti kedudukan Mako.', 1),
(96, 'C7', 5, 'Apakah Aspers menentukan prosedur penataan dan penggunaan pekerja sipil setempat.', 1),
(97, 'C7', 5, 'Apakah Aspers membuat membuat produk berupa :\r\n    a. ATS\r\n    b. Analisa CB Staf Personel\r\n    c. Lampiran perencanaan dukungan personel', 1),
(98, 'C8', 5, 'Apakah Aslog  menganalisa tugas sesuai fungsi bidang tugasnya', 1),
(99, 'C8', 5, 'Apakah Aslog mempersiapkan dan mencatat semua berita sesuai bidangnya pada buku harian, lembar kerja dan mengolah data berita tersebut.', 1),
(100, 'C8', 5, 'Apakah Aslog mencari keterangan dari :\r\na. Satuan  Atas.\r\nb. Satuan Samping.\r\nc. Satuan Bawah.', 1),
(101, 'C8', 5, 'Apakah Aslog memberi saran kepada Panglima tentang kemampuan dukungan dibidang logistik yang dapat mempengauhi CB/pelaksanan tugas pokok Kogasgabpad.', 1),
(102, 'C8', 5, 'Apakah Aslog mengikuti perkembangan keadaan logistik di satuannya.', 1),
(103, 'C8', 5, 'Apakah Aslog berusaha mengerti akan  isi Jukcan Panglima.', 1),
(104, 'C8', 5, 'Apakah Aslog dapat mengembangkan Jukcan Panglima sesuai bidang tugasnya.', 1),
(105, 'C8', 5, 'Apakah Aslog mengadakan koordinasi dengan Staf lainnya sebelum membuat Analisa.', 1),
(106, 'C8', 5, 'Apakah Aslog berusaha memberikan keterangan tentang logistik kepada Staf lainnya.', 1),
(107, 'C8', 5, 'Apakah Aslog dapat menyampaikan saran kepada Panglima tepat pada waktunya.', 1),
(108, 'C8', 10, 'Apakah Aslog membantu Staf Ops membuat lampiran rencana bantuan logistik (Rencana pelayanan logistik operasi) beserta Sub lampirannya ', 1),
(109, 'C8', 5, 'Apakah Aslog merawat dan membekali pasukan yang terlibat operasi, sehingga menjamin keberhasilan pelaksanaan tugas sesuai tugas pokok', 1),
(110, 'C8', 5, 'Apakah Aslog mengkoordinasikan semua fungsi logistik dan ketentuan-ketentuan, bantuan logistik dan pertahankan seluruh aset yang dimiliki', 1),
(111, 'C8', 5, 'Apakah Aslog memformulasikan dan menentukan ketentuan-ketentuan tentang logistik yang berkelanjutan untuk perencanaan dan pelaksanan kebijakan logistik Kogasgabpad', 1),
(112, 'C8', 5, 'Apakah Aslog mengembangkan lampiran logistik pada RO', 1),
(113, 'C8', 5, 'Apakah Aslog mengkoordinasikan secara umum dengan satuan penyiap logistik, satuan tugas yang menyokong dukungan logistik, bantuan pembekalan sesuai dengan perintah penugasan dalam lampiran (Logistik pada RO)', 1),
(114, 'C8', 5, 'Apakah Aslog mengkoordinasikan bantuan dan pembekalan angkatan, pengadaan dan pengendalian setempat (lokal) dan mengalokasikan fasilitas daerah setempat serta sumbangan daerah logistik yang dapat digunakan di daerah persiapan di wilayah ', 1),
(115, 'C8', 10, 'Apakah Aslog membuat produk tertulis berupa:\r\n    a. ATS\r\n    b. Analisa CB Staf logistik.\r\n    c. Rencana bantuan logistik (Rencana dukungan pelayanan logistik operasi)\r\n    d. Sub lampiran matrik dukungan pelayanan logistik operasi\r\n    e. Sub lampiran peta dukungan pelayanan operasi\r\n    f. Sub lampiran rencana dukungan bantuan logistik kewilayahan', 1),
(116, 'C9', 10, 'Apakah Aster melaksanakan tugas pokok sesuai dengan fungsi tugas teritorial.', 1),
(117, 'C9', 5, 'Apakah Aster membantu panglima dalam pembinaan pertimbangan aspek teritorial yang berkaitan dalam pelaksanaan operasi', 1),
(118, 'C9', 5, 'Apakah Aster memahami saran dan masukan kepada Panglima berkaitan dengan pembinaan yang terjadi dari faktor Ipoleksosbud yang dapat mempengaruhi keberhasilan tugas ', 1),
(119, 'C9', 10, 'Apakah Aster membuat Data KBA, Geografi, Demografi, Politik, Tokoh – Tokoh Formal dan Informal.', 1),
(120, 'C9', 5, 'Apakah Aster membuat Peta Geografi, Demografi dan politik.', 1),
(121, 'C9', 5, 'Apakah Aster berusaha mencari data dan brosur-brosur tentang Teritorial kepada Satuan Atas maupun Kowil.', 1),
(122, 'C9', 5, 'Apakah Aster berusaha menggunakan badan-badan pengumpul keterangan yang ada di kesatuan.', 1),
(123, 'C9', 10, 'Apakah Aster mempersiapkan:\r\na. Buku Harian\r\nb. Lembaran Kerja\r\nc. Peta – peta yang diperlukan.', 1),
(124, 'C9', 5, 'Apakah Aster mengelola keterangan yang diterima untuk kepentingan Panglima.', 1),
(125, 'C9', 5, 'Apakah Aster berusaha memberikan keterangan yang diperlukan oleh Pa Staf lain untuk keberhasilan tugas.', 1),
(126, 'C9', 5, 'Apakah Aster  bekerja sama dengan aparat terkait untuk memanfaatkan wilayah baik SDM,SDA maupun sumber daya penting lainya guna keberhasilan tugas.', 1),
(127, 'C9', 5, 'Apakah Aster memberikan saran tepat pada waktu yang telah ditentukan.', 1),
(128, 'C9', 5, 'Apakah Aster mengikuti perkembangan secara  terus menerus dan memberikannya kepada Panglima dalam menghadapi situasi kritis.', 1),
(129, 'C9', 5, 'Apakah Aster menganalisa kemungkinan ancaman dibidang teritorial di wilayah operasi yang diperkirakan akan mempengaruhi pelaksanaan tugas pokok.', 1),
(130, 'C9', 5, 'Apakah Aster memberikan keterangan bidang teritorial pada Staf Ops dalam rangka membuat RO.', 1),
(131, 'C9', 5, 'Apakah Aster membuat produk tertulis berupa:\r\n    a. ATS\r\n    b. Analisa CB Staf teritorial.\r\n    c. Rencana bantuan teritorial.', 1),
(132, 'C9', 5, 'Apakah Aster ikut aktif mengawasi pelaksanaan perintah Panglima oleh Satwah.', 1),
(133, 'C10', 10, 'Apakah Asren  menganalisa tugas sesuai bidang tugasnya.', 1),
(134, 'C10', 5, 'Apakah Asren menyiapkan dan mengkoordinasikan kebutuhan RO  untuk mendukung tugas Kogasgabpad.', 1),
(135, 'C10', 10, 'Apakah Asren menyiapkan RO sebagai dasar kegiatan untuk mendukung operasi di masa datang .', 1),
(136, 'C10', 5, 'Apakah Asren merencanakan kebutuhan dan kesiapan kekuatan dan mengkoordinasikan rencana penggelaran sesuai CB terpilih.', 1),
(137, 'C10', 5, 'Apakah Asren melaksanakan koordinasi dan mengkaji masukan bagi perencanaan waktu penggelaran.', 1),
(138, 'C10', 5, 'Apakah Asren berkoordinasi dengan staf personel  untuk memastikan tindakan militer dan politik sejalan dengan pandangan strategi dan politik nasional.', 1),
(139, 'C10', 5, 'Apakah Asren ikut berpartisipasi dalam pengembangan Rule Of Engagemen (ROE).', 1),
(140, 'C10', 10, 'Apakah Asren membuat parameter untuk Operasi yang sedang berlangsung. ', 1),
(141, 'C10', 5, 'Apakah Asren menetapkan waktu pengambilan keputusan untuk memberi peluang lebih luas bagi pelaksanaan RO.', 1),
(142, 'C10', 10, 'Apakah Asren mengantisipasi situasi taktis dan operasional  yang menguntungkan, resiko dan saran untuk mendukung Rencana Pelibatan (ROE).', 1),
(143, 'C10', 5, 'Apakah Asren melaksanakan sinkronisasi seluruh kekuatan untuk mendukung setiap CB terpilih.', 1),
(144, 'C10', 5, 'Apakah Asren memperhatikan dengan seksama hubungan komando dengan Komando Atasan, Komando Bawahan ataupun Komando yang setingkat.', 1),
(145, 'C10', 10, 'Apakah Asren merencanakan dan menentukan tugas khusus serta menentukan  wilayah operasi.', 1),
(146, 'C10', 10, 'Apakah Asren membuat produk tertuis berupa:\r\n    a. ATS.\r\n    b. Analisa CB Asren\r\n    c. Renbut kuat.\r\n    d. Renbut Ops.', 1),
(147, 'C11', 5, 'Apakah Askomlek  menganalisa tugas sesuai fungsi bidang tugasnya', 1),
(148, 'C11', 5, 'Apakah Askomlek mempersiapkan dan mencatat semua berita sesuai bidangnya pada buku harian, lembar kerja dan mengolah data berita tersebut.', 1),
(149, 'C11', 5, 'Apakah Askomlek mencari keterangan dari :\r\na. Satuan  Atas.\r\nb. Satuan Samping.\r\nc. Satuan Bawah.', 1),
(150, 'C11', 5, 'Apakah Askomlek memberi saran kepada Panglima tentang kemampuan dukungan dibidang komlek yang dapat mempengauhi CB / pelaksanan tugas Kogasgabpad.', 1),
(151, 'C11', 5, 'Apakah Askomlek mengikuti perkembangan keadaan komlek di satuannya.', 1),
(152, 'C11', 5, 'Apakah Askomlek berusaha mengerti akan  isi Jukcan Panglima.', 1),
(153, 'C11', 5, 'Apakah Askomlek dapat mengembangkan Jukcan Panglima sesuai bidang tugasnya', 1),
(154, 'C11', 5, 'Apakah Askomlek mengadakan koordinasi dengan Staf lainnya sebelum membuat ATS', 1),
(155, 'C11', 5, 'Apakah Askomlek berusaha memberikan keterangan tentang komlek kepada Staf lainnya.', 1),
(156, 'C11', 5, 'Apakah Askomlek dapat menyampaikan saran kepada Panglima tepat pada waktunya.', 1),
(157, 'C11', 10, 'Apakah Askomlek membantu Staf Ops membuat lampiran rencana komlek, serta Sub lampirannya ', 1),
(158, 'C11', 5, 'Apakah Askomlek merawat dan membekali pasukan sehingga menjamin kemungkinan unsur kekuatan manuver secara leluasa melaksanakan konsepsi pelaksanaan tupoknya.', 1),
(159, 'C11', 5, 'Apakah Askomlek mengkoordinasikan semua fungsi komlek dan ketentuan-ketentuan komlek dan pertahankan seluruh aset yang dimiliki', 1),
(160, 'C11', 5, 'Apakah Askomlek memformulasikan dan menentukan ketentuan-ketentuan tentang komlek yang berkelanjutan untuk perencanaan dan pelaksanan kebijakan komlek Kogasgabpad.', 1),
(161, 'C11', 5, 'Apakah Askomlek mengembangkan lampiran komlek pada RO ', 1),
(162, 'C11', 5, 'Apakah Askomlek mengkoordinasikan secara umum dengan satuan penyiap komlek, satuan tugas yang menyokong dukungan komlek, bantuan pembekalan sesuai dengan perintah penugasan dalam lampiran (Komlek pada RO)', 1),
(163, 'C11', 5, 'Apakah Askomlek mengkoordinasikan bantuan dan pembekalan angkatan, pengadaan dan pengendalian setempat (lokal) dan mengalokasikan fasilitas daerah setempat. ', 1),
(164, 'C11', 10, 'Apakah Askomlek membuat produk tertulis berupa:\r\n    a. ATS\r\n    b. Analisa CB Staf Komlek\r\n    c. Rencana Komlek (Rencana Komlek)\r\n    d. Sub lampiran matrik dukungan pelayanan Komlek', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `USER`
--

CREATE TABLE `USER` (
  `id_user` int(11) NOT NULL,
  `username` char(50) NOT NULL,
  `password` char(50) NOT NULL,
  `level` enum('1','2') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `aktivitas_TELEGRAM`
--
ALTER TABLE `aktivitas_TELEGRAM`
  ADD PRIMARY KEY (`id_atelegram`),
  ADD KEY `id_kelompok` (`id_kelompok`);

--
-- Indeks untuk tabel `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_anggota`),
  ADD KEY `id_pangkat` (`id_pangkat`);

--
-- Indeks untuk tabel `CEKLIS`
--
ALTER TABLE `CEKLIS`
  ADD PRIMARY KEY (`id_ceklis`),
  ADD UNIQUE KEY `id_ceklis` (`id_ceklis`);

--
-- Indeks untuk tabel `DETAIL_PENILAIAN_PERORANGAN`
--
ALTER TABLE `DETAIL_PENILAIAN_PERORANGAN`
  ADD PRIMARY KEY (`id_detail_penilaian_perorangan`),
  ADD KEY `id_penilaian_perorangan` (`id_penilaian_perorangan`),
  ADD KEY `id_soal_perorangan` (`id_soal_perorangan`);

--
-- Indeks untuk tabel `KELOMPOK`
--
ALTER TABLE `KELOMPOK`
  ADD PRIMARY KEY (`id_kelompok`);

--
-- Indeks untuk tabel `pangkat`
--
ALTER TABLE `pangkat`
  ADD PRIMARY KEY (`id_pangkat`);

--
-- Indeks untuk tabel `PENILAIAN_KELOMPOK`
--
ALTER TABLE `PENILAIAN_KELOMPOK`
  ADD PRIMARY KEY (`id_penilaian_kelompok`),
  ADD UNIQUE KEY `id_soal_kelompok` (`id_soal_kelompok`);

--
-- Indeks untuk tabel `PENILAIAN_PERORANGAN`
--
ALTER TABLE `PENILAIAN_PERORANGAN`
  ADD PRIMARY KEY (`id_penilaian_perorangan`),
  ADD KEY `id_anggota` (`id_anggota`),
  ADD KEY `id_kelompok` (`id_kelompok`),
  ADD KEY `id_ceklis` (`id_ceklis`);

--
-- Indeks untuk tabel `SOAL_KELOMPOK`
--
ALTER TABLE `SOAL_KELOMPOK`
  ADD PRIMARY KEY (`id_soal_kelompok`),
  ADD KEY `id_ceklis` (`id_ceklis`);

--
-- Indeks untuk tabel `SOAL_PERORANGAN`
--
ALTER TABLE `SOAL_PERORANGAN`
  ADD PRIMARY KEY (`id_soal_perorangan`),
  ADD KEY `id_ceklis` (`id_ceklis`);

--
-- Indeks untuk tabel `USER`
--
ALTER TABLE `USER`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `aktivitas_TELEGRAM`
--
ALTER TABLE `aktivitas_TELEGRAM`
  MODIFY `id_atelegram` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id_anggota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `DETAIL_PENILAIAN_PERORANGAN`
--
ALTER TABLE `DETAIL_PENILAIAN_PERORANGAN`
  MODIFY `id_detail_penilaian_perorangan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT untuk tabel `KELOMPOK`
--
ALTER TABLE `KELOMPOK`
  MODIFY `id_kelompok` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `pangkat`
--
ALTER TABLE `pangkat`
  MODIFY `id_pangkat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `PENILAIAN_KELOMPOK`
--
ALTER TABLE `PENILAIAN_KELOMPOK`
  MODIFY `id_penilaian_kelompok` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `PENILAIAN_PERORANGAN`
--
ALTER TABLE `PENILAIAN_PERORANGAN`
  MODIFY `id_penilaian_perorangan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `SOAL_KELOMPOK`
--
ALTER TABLE `SOAL_KELOMPOK`
  MODIFY `id_soal_kelompok` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- AUTO_INCREMENT untuk tabel `SOAL_PERORANGAN`
--
ALTER TABLE `SOAL_PERORANGAN`
  MODIFY `id_soal_perorangan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT untuk tabel `USER`
--
ALTER TABLE `USER`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `aktivitas_TELEGRAM`
--
ALTER TABLE `aktivitas_TELEGRAM`
  ADD CONSTRAINT `aktivitas_TELEGRAM_ibfk_1` FOREIGN KEY (`id_kelompok`) REFERENCES `KELOMPOK` (`id_kelompok`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `anggota`
--
ALTER TABLE `anggota`
  ADD CONSTRAINT `anggota_ibfk_1` FOREIGN KEY (`id_pangkat`) REFERENCES `pangkat` (`id_pangkat`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `DETAIL_PENILAIAN_PERORANGAN`
--
ALTER TABLE `DETAIL_PENILAIAN_PERORANGAN`
  ADD CONSTRAINT `DETAIL_PENILAIAN_PERORANGAN_ibfk_2` FOREIGN KEY (`id_soal_perorangan`) REFERENCES `SOAL_PERORANGAN` (`id_soal_perorangan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `DETAIL_PENILAIAN_PERORANGAN_ibfk_3` FOREIGN KEY (`id_penilaian_perorangan`) REFERENCES `PENILAIAN_PERORANGAN` (`id_penilaian_perorangan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `PENILAIAN_PERORANGAN`
--
ALTER TABLE `PENILAIAN_PERORANGAN`
  ADD CONSTRAINT `PENILAIAN_PERORANGAN_ibfk_2` FOREIGN KEY (`id_anggota`) REFERENCES `anggota` (`id_anggota`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `PENILAIAN_PERORANGAN_ibfk_3` FOREIGN KEY (`id_kelompok`) REFERENCES `KELOMPOK` (`id_kelompok`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `PENILAIAN_PERORANGAN_ibfk_4` FOREIGN KEY (`id_ceklis`) REFERENCES `CEKLIS` (`id_ceklis`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `SOAL_KELOMPOK`
--
ALTER TABLE `SOAL_KELOMPOK`
  ADD CONSTRAINT `SOAL_KELOMPOK_ibfk_1` FOREIGN KEY (`id_ceklis`) REFERENCES `CEKLIS` (`id_ceklis`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `SOAL_PERORANGAN`
--
ALTER TABLE `SOAL_PERORANGAN`
  ADD CONSTRAINT `SOAL_PERORANGAN_ibfk_1` FOREIGN KEY (`id_ceklis`) REFERENCES `CEKLIS` (`id_ceklis`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
