-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 18, 2020 at 12:16 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penilaian`
--

-- --------------------------------------------------------

--
-- Table structure for table `aktivitas`
--

CREATE TABLE `aktivitas` (
  `id_aktivitas` int(11) NOT NULL,
  `id_kelompok` int(11) NOT NULL,
  `id_ceklis` char(5) DEFAULT NULL,
  `h` int(11) NOT NULL,
  `h1` int(11) NOT NULL,
  `h2` int(11) NOT NULL,
  `h3` int(11) NOT NULL,
  `tgl` datetime NOT NULL DEFAULT current_timestamp(),
  `tipe` enum('2','3') NOT NULL COMMENT '2 : TELEGRAM\r\n3 : TELEPON'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `id_anggota` int(11) NOT NULL,
  `id_jabatan` int(11) DEFAULT NULL,
  `id_pangkat` int(11) DEFAULT NULL,
  `id_kelompok` int(11) DEFAULT NULL,
  `nrp` char(20) DEFAULT NULL,
  `nama` char(100) NOT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `id_jabatan`, `id_pangkat`, `id_kelompok`, `nrp`, `nama`, `password`) VALUES
(527, 1, 9, 1, '11940027940773', 'Edi Saputra, S.I.P.', NULL),
(528, 2, 10, 1, '523352', 'I Gusti Putu Setia D, S.T., M.M.', NULL),
(529, 4, 11, 1, '11960044180874', 'Deni Sukwara, S.E., M.Si.', NULL),
(530, 13, 11, 1, '-', 'Mamao Monis Tandayao (Filipina)', NULL),
(531, 1, 12, 1, '11960039310274', 'Safta Feryansyah, S.E., S.I.P.', NULL),
(532, 3, 12, 1, '12617/P', 'Muhammad Nizar Gadafi, S.E.', NULL),
(533, 1, 12, 1, '11960051260775', 'Wulang Nur Yudhanto', NULL),
(534, 2, 12, 1, '518843', 'Ridha Hermawan, S.H.', NULL),
(535, 1, 13, 1, '11950044840774', 'Surya Wibawa Suparman', NULL),
(536, 3, 13, 1, '12262/P', 'Arya Delano, S.E., MPD.', NULL),
(537, 1, 13, 1, '11970039301175', 'Ferry Irawan, S.I.P.', NULL),
(538, 14, 13, 1, '520294', 'Visnu Hermawan, S.E., M.M.', NULL),
(539, 1, 14, 1, '11950038580771', 'Teguh Pudji Rahardjo', NULL),
(540, 3, 14, 1, '11897/P', 'I Komang Teguh A, S.T., M.AP.', NULL),
(541, 15, 15, 1, '11950050690571', 'Wiwin Sugiono, S.I.P.', NULL),
(542, NULL, 15, 1, '12702/P', 'Ferry Mulyadi Arifin', NULL),
(543, 1, 16, 1, '11970044900676', 'Mohammad Sjahroni, S.E.', NULL),
(544, 16, 16, 1, '68080524', 'I Ketut Yudha Karyana, S.I.K.', NULL),
(545, 1, 17, 1, '11960048970275', 'Erwin, S.I.P.', NULL),
(546, NULL, 17, 1, '517477', 'Djoko Triono', NULL),
(547, NULL, 18, 1, '11960047231274', 'Wijang Rimoko Ardani, S.Sos.', NULL),
(548, NULL, 18, 1, '73060608', 'Akhmad Yusep gunawan, S.H., S.I.K.', NULL),
(549, NULL, 9, 2, '11459/P', 'Mauriadi, S.E.', NULL),
(550, 6, 10, 2, '11960045901074', 'Otto Sollu, S.E.', NULL),
(551, 1, 11, 2, '11970037570875', 'Aji Mimbarno, S.A.P.', NULL),
(552, 16, 11, 2, '73040543', 'Guruh Arif Darmawan, S.I.K., M.H.', NULL),
(553, 3, 12, 2, '12624/P', 'Rakhmat Arief Bintoro, S.Kel.', NULL),
(554, 1, 12, 2, '11960032610173', 'Muhammad Aidi, S.I.P., M.Si.', NULL),
(555, 2, 12, 2, '523357', 'A. Donie Prihandono, S.E.', NULL),
(556, 3, 13, 2, '12644/P', 'Wawan Trisatya Atmaja, S.E.', NULL),
(557, 1, 13, 2, '11960034440473', 'Renal Aprindo Sinaga', NULL),
(558, 2, 13, 2, '521812', 'Ali Gusman, S.T., M.M.', NULL),
(559, 1, 13, 2, '11970036820875', 'Maychel Asmi, P.Sc., S.E.', NULL),
(560, 3, 14, 2, '12647/P', 'Dores Afrianto Ardi, S.E., M.Si.', NULL),
(561, NULL, 14, 2, '11960040790474', 'Ari Estefanus, S.Sos., M.Sc.', NULL),
(562, NULL, 15, 2, '11964/P', 'Sunaryadi, S.E., M.Si.', NULL),
(563, 1, 15, 2, '11970040521175', 'Susanto Lastua Manurung, S.I.P.', NULL),
(564, 3, 16, 2, '10683/P', 'Uki Prasetia, S.T., M.M.', NULL),
(565, 6, 16, 2, '69100444', 'Dr. Hadi Utomo, S.H., M.Hum.', NULL),
(566, NULL, 17, 2, '521835', 'Darmawan Hendro W, M.Eng.Sc.', NULL),
(567, 15, 17, 2, '11970048700474', 'Brantas Suharyo G', NULL),
(568, NULL, 18, 2, '521755', 'Rudy Nursofjan, S.T.', NULL),
(569, 5, 18, 2, '11980060491175', 'Zulhadrie S Mara', NULL),
(570, NULL, 9, 3, '11970050420875', 'Johanes Toar Pioh, S.I.P., M.Si. (Han)', NULL),
(571, 3, 10, 3, '11923/P', 'Oky IZ Dipura, S.H., M.P.A.', NULL),
(572, NULL, 11, 3, '521806', 'Arman Rusmanto, S.T.', NULL),
(573, NULL, 11, 3, '-', 'JD Masurkar (India)', NULL),
(574, 1, 12, 3, '11950036641270', 'Andi Asmara Dewa', NULL),
(575, NULL, 12, 3, '12713/P', 'Kresno Pratowo, S.E.', NULL),
(576, 1, 12, 3, '11960051420875', 'Agus Bhakti, S.I.P.', NULL),
(577, 1, 13, 3, '11950043771172', 'Musa David M. Hasibuan, S.I.P.', NULL),
(578, 3, 13, 3, '12627/P', 'Endra Hartono, S.H.', NULL),
(579, 4, 13, 3, '11960050010375', 'Marthen Venry Rorintulus, S.E.', NULL),
(580, NULL, 13, 3, '521782', 'Arif Budiyanto, S.E.', NULL),
(581, 6, 14, 3, '11950049971173', 'Donova Pri Pamungkas', NULL),
(582, 3, 14, 3, '11906/P', 'Adi Lumaksana, S.Sos.', NULL),
(583, 5, 15, 3, '11960052171073', 'Vincentius Agung Cahya K, S.I.P.', NULL),
(584, NULL, 15, 3, '11926/P', 'Siswanto, S.T., M.T.', NULL),
(585, 1, 16, 3, '11960043920874', 'M. Taufiq Zega, S.I.P., M.Si.', NULL),
(586, NULL, 16, 3, '521785', 'Benny Bayu Nirwan, S.T.', NULL),
(587, 1, 17, 3, '11960050920675', 'Jones Sasmita Muliawan, S.I.P., M.M.', NULL),
(588, NULL, 17, 3, '72070702', 'E. Zulpan, S.I.K., M.Si.', NULL),
(589, 1, 18, 3, '11980053710877', 'Aulia Dwi Nasrullah', NULL),
(590, 16, 18, 4, '70090398', 'Nanang Masbudi, S.I.K., M.Si.', NULL),
(591, 2, 9, 4, '521845', 'Jhonson Henrico Simatupang', NULL),
(592, 4, 10, 4, '11970049460175', 'Candy Cristian Riantory, S.I.P.', NULL),
(593, 3, 11, 4, '11908/P', 'Henricus Prihantoko', NULL),
(594, 16, 11, 4, '72030201', 'Rickynaldo Chairul, S.I.K., M.M.', NULL),
(595, NULL, 12, 4, '520244', 'Budi Setyo, S.H.', NULL),
(596, 1, 12, 4, '11970034500375', 'Purnomosidi, S.I.P., M.AP.', NULL),
(597, NULL, 12, 4, '11931/P', 'Reza Kusumanegara, M.A.P.', NULL),
(598, 2, 13, 4, '521759', 'Bambang Sudewo', NULL),
(599, 1, 13, 4, '11960044260974', 'Horasman Pakpahan, S.I.P.', NULL),
(600, NULL, 13, 4, '12732/P', 'Agus Gunawan Wibisono, S.H., M.M.', NULL),
(601, 1, 13, 4, '11970041440176', 'Willy Brodus Yos Rohadi', NULL),
(602, 4, 8, 4, '5', '3', NULL),
(603, 2, 14, 4, '523392', 'Toto ginanto, S.T., M.AP.', NULL),
(604, 1, 14, 4, '11970033930275', 'Hendi Ahmad Pribadi, S.I.P.', NULL),
(605, 3, 15, 4, '13292/P', 'Wahyu Cahyono, S.T., M.M.', NULL),
(606, 1, 15, 4, '11960052741074', 'Herfin Kartika Aji, S.I.P.', NULL),
(607, 2, 16, 4, '521832', 'Purwanto Adi Nugroho', NULL),
(608, 1, 16, 4, '11960044420974', 'Chrisbianto Arimurti', NULL),
(609, 1, 17, 4, '11980053220777', 'Andre Julian, S.I.P., M.Sos.', NULL),
(610, 16, 17, 4, '70090406', 'Leonardus Eric Bhismo, S.I.K., S.H., M.Hum.', NULL),
(611, NULL, 18, 4, '520299', 'Rudiyanto, S.T., M.M.', NULL),
(612, 1, 18, 4, '11970032110774', 'Muhammad Thohir', NULL),
(613, 2, 9, 5, '523407', 'Rony Armanto, S.E., M.M.', NULL),
(614, 1, 10, 5, '11970042350376', 'Tamimi Hendra Kesuma, S.H., M.A.P.', NULL),
(615, 1, 11, 5, '11950043020972', 'Lalu Habibburrahim WD, S.I.P. M.Si.', NULL),
(616, NULL, 11, 5, '-', 'Muhammad Anjum Saeed (Pakistan)', NULL),
(617, 2, 12, 5, '523332', 'Andreas Ardianto D, S.E., M.Si. (Han)., M.sc.', NULL),
(618, 1, 12, 5, '11960048630275', 'Andrian Susanto, S.I.P.', NULL),
(619, 3, 12, 5, '11888/P', 'Baharudin Anwar, S.T., M.M.', NULL),
(620, 1, 12, 5, '11970043670576', 'Endra Saputra Kusuma, ZR., S.E.', NULL),
(621, 2, 13, 5, '521877', 'Henri Ahmad Badawi', NULL),
(622, 1, 13, 5, '11960039640274', 'Slamet Riadi, S.I.P.', NULL),
(623, NULL, 13, 5, '11994/P', 'Dede Harsana', NULL),
(624, 1, 13, 5, '11970041510176', 'Patar Mospa Natanael Sitorus', NULL),
(625, NULL, 14, 5, '521823', 'Saeful Rakhmat', NULL),
(626, 1, 14, 5, '11960048061274', 'Teddy Arifiyanto Setimiharja, S.I.P.', NULL),
(627, 2, 15, 5, '523405', 'Rizaldy Efranza, S.T.', NULL),
(628, 16, 15, 5, '70121127', 'Djadjuli, S.I.K., M.Si.', NULL),
(629, 4, 16, 5, '1195005317', 'Harvin Kidingalio', NULL),
(630, 16, 16, 5, '74040735', 'Didi Hayamansyah, S.H., S.I.K., M.H.', NULL),
(631, 2, 17, 5, '523397', 'Antonius Adi Nur W, S.E.', NULL),
(632, 1, 17, 5, '11960046401174', 'Mochamad Andi Prihantoro', NULL),
(633, 7, 18, 5, '12688/P', 'Abraham OP Sahureka, S.T., MMT.', NULL),
(634, NULL, 18, 5, '74020330', 'Abdul Karim, S.I.K., M.Si.', NULL),
(635, 1, 9, 6, '11970044330576', 'Yudha Rismansyah', NULL),
(636, 3, 10, 6, '11357/P', 'Sumartono, S.E.', NULL),
(637, 1, 11, 6, '11960049050275', 'Yuri Elias Mamahi', NULL),
(638, 16, 11, 6, '71010253', 'F. Barung Mangera, S.I.K.', NULL),
(639, 6, 12, 6, '11950049891173', 'Haerus Shaleh, S.Sos.', NULL),
(640, 2, 12, 6, '523339', 'R. Endri Kargono', NULL),
(641, 3, 12, 6, '13278/P', 'Tunggul', NULL),
(642, 1, 13, 6, '11960043500874', 'Andy Mustafa Akad, S.E.', NULL),
(643, 3, 13, 6, '11924/P', 'Irwan SP. Siagian', NULL),
(644, NULL, 13, 6, '523330', 'Rano Kristiyono, S.T.', NULL),
(645, 1, 13, 6, '11970045320776', 'Fransiscus Ari Susetio, S.E.', NULL),
(646, 1, 14, 6, '11970032520974', 'Riza Anom Putranto, S.I.P., M.Si.', NULL),
(647, 4, 8, 6, '5', '3', NULL),
(648, 2, 14, 6, '523361', 'Jajang Setiawan, S.M.', NULL),
(649, 15, 15, 6, '11960039720274', 'Wahyudi Dwi Santoso, S.E.', NULL),
(650, 16, 15, 6, '74090552', 'Hando Wibowo, S.I.K., M.Si.', NULL),
(651, 1, 16, 6, '11970045990876', 'Ade David Siregar', NULL),
(652, NULL, 16, 6, '520298', 'Mukhtar Bakhrong, S.E., M.M.', NULL),
(653, 1, 17, 6, '11950037830671', 'Jaelan, S.I.P.', NULL),
(654, 2, 17, 6, '523401', 'Erick Rofiq Nurdin', NULL),
(655, 1, 18, 6, '11960047801274', 'Dody Triwinarto, S.I.P.', NULL),
(656, 7, 18, 6, '10769/P', 'Yudi Harsono, S.T.', NULL),
(657, 3, 9, 7, '11364/P', 'Kunto Tjahjono, S.E.', NULL),
(658, 1, 10, 7, '11940027450573', 'M. Arif Suryandaru', NULL),
(659, NULL, 11, 7, '518840', 'Videon Nugroho S, S.T.', NULL),
(660, 13, 11, 7, '-', 'Maxmillion Goh (Singapura)', NULL),
(661, 3, 12, 7, '13288/P', 'Harry Setiawan, S.E.', NULL),
(662, 2, 12, 7, '518852', 'Mochammad Untung Suropati, S.E.', NULL),
(663, 1, 12, 7, '11970057371075', 'Edwin Adrian Sumantha, S.H., PG Dipl.', NULL),
(664, 3, 13, 7, '11920/P', 'Bayu Alisyahbana, S.M.', NULL),
(665, NULL, 13, 7, '11960030970572', 'Teguh Heri, S.E., M.M.', NULL),
(666, 2, 13, 7, '523340', 'Lilik Eko Susanto, S.E., M.M.', NULL),
(667, 1, 13, 7, '11970043420476', 'Jarot Suprihanto', NULL),
(668, 3, 14, 7, '11915/P', 'Bagus Handoko, S.H., M.Si.', NULL),
(669, 1, 14, 7, '11960032041072', 'Agus Soeprianto', NULL),
(670, NULL, 15, 7, '11395/P', 'Ahmad Alfajar, S.T.', NULL),
(671, 6, 15, 7, '11970048050676', 'Yudi Prasetio, S.I.P.', NULL),
(672, NULL, 16, 7, '11934/P', 'Christanto Pratomo, S.T., M.A.P.', NULL),
(673, 5, 16, 7, '11970054630576', 'M. Andhy Kusuma, S.Sos., M.M.', NULL),
(674, 1, 17, 7, '11980041500375', 'Sutrisno Pujiono, S.E., M.M.', NULL),
(675, 16, 17, 7, '74050394', 'Muji Ediyanto, S.H., S.I.K.', NULL),
(676, 1, 18, 7, '11940011500969', 'Wahyu Handoyo, S.I.P.', NULL),
(677, 16, 18, 7, '71030329', 'Christiyanto Goetomo, S.I.K., S.H., M.H.', NULL),
(678, NULL, 9, 8, '12738/P', 'Didiet Hendra Wijaya, MMP.', NULL),
(679, NULL, 10, 8, '521754', 'Nana Setiawan, S.E.', NULL),
(680, 1, 11, 8, '11950048230574', 'Franz Yohannes Purba, S.I.P.', NULL),
(681, 2, 11, 8, '523412', 'Feri Yunaldi, S.E.', NULL),
(682, NULL, 12, 8, '11481/P', 'Arif Handono, S.A.P.', NULL),
(683, 1, 12, 8, '11960046811174', 'Deki Zulkarnaen, S.I.P.', NULL),
(684, 2, 12, 8, '523390', 'Vincentius Endy, H.P.', NULL),
(685, NULL, 13, 8, '11470/P', 'Amir Kasman, S.E., M.M.', NULL),
(686, 1, 13, 8, '11960047561274', 'Asep Sukarna, S.Sos., S.I.P., M.M.', NULL),
(687, 2, 13, 8, '523341', 'Sidik Setiyono, S.E.', NULL),
(688, 1, 13, 8, '11970043340476', 'Adek Chandra Kurniawan', NULL),
(689, NULL, 14, 8, '11412/P', 'Agung Setiawan', NULL),
(690, 1, 14, 8, '11970037650975', 'Iwan Setiawan, S.I.P.', NULL),
(691, NULL, 15, 8, '11963/P', 'DR. Hery Setiyo N, S.E., M.AP.', NULL),
(692, 16, 15, 8, '71050218', 'Chaidir, S.H., S.I.K., M.Si., M.P.P.', NULL),
(693, 3, 16, 8, '11885/P', 'Anung Sutanto, S.Sos., M.Si.', NULL),
(694, 5, 16, 8, '11970053720575', 'Asep Rahmat Sukmana, S.I.P.', NULL),
(695, 2, 17, 8, '523345', 'Roni Widodo', NULL),
(696, 1, 17, 8, '11940023310572', 'Yudi Ruskandar, S.I.P.', NULL),
(697, 7, 18, 8, '11416/P', 'Budiman Marpaung, S.T., S.E.', NULL),
(698, 16, 18, 8, '74060705', 'Dayan Victor Imanuel Blegur, S.I.K., M.H.', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ceklis`
--

CREATE TABLE `ceklis` (
  `id_ceklis` char(5) NOT NULL,
  `nama_ceklis` varchar(100) NOT NULL,
  `tipe` enum('1','2','3','4','5') NOT NULL COMMENT '5 : perorangan\r\n\r\n1 : Penilaian produk\r\n2 : Penilaian Telegram\r\n3 : Penilaian telepon\r\n4 : Penilaian Posko'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ceklis`
--

INSERT INTO `ceklis` (`id_ceklis`, `nama_ceklis`, `tipe`) VALUES
('C1', 'CEKLIS PENILAIAN POSKO', '4'),
('C10', 'CEKLIS PENILAIAN AKTIVITAS ASREN', '5'),
('C11', 'CEKLIS PENILAIAN AKTIVITAS ASKOMLEK', '5'),
('C12', 'PENILAIAN PRODUK RENCANA WAKTU', '1'),
('C12-P', 'PENILAIAN PERORANGAN', '5'),
('C13', 'PENILAIAN PRODUK PETUNJUK PERENCANAAN AWAL ', '1'),
('C14', 'PENILAIAN PRODUK PERINTAH PERINGATAN AWAL', '1'),
('C15', 'PENILAIAN PRODUK ATP PANGLIMA', '1'),
('C16', 'PENILAIAN PRODUK ATS INTEL', '1'),
('C17', 'PENILAIAN PRODUK ATS OPS', '1'),
('C18', 'PENILAIAN PRODUK ATS PERS', '1'),
('C19', 'PENILAIAN PRODUK ATS LOG', '1'),
('C2', 'CHEKLIST PENILAIAN AKTIVITAS PANGKOGASGABPAD', '5'),
('C20', 'PENILAIAN PRODUK ATS TER', '1'),
('C21', 'PENILAIAN PRODUK ATS REN', '1'),
('C22', 'PENILAIAN PRODUK ATS KOMLEK', '1'),
('C23', 'PENILAIAN PRODUK JUKCAN', '1'),
('C24', 'PENILAIAN PERINTAH PERSIAPAN', '1'),
('C25', 'PENILAIAN PRODUK ANALISA CB PANGLIMA', '1'),
('C26', 'PENILAIAN PRODUK ANALISA CB ASINTEL', '1'),
('C27', 'PENILAIAN PRODUK ANALISA CB ASOPS', '1'),
('C28', 'CEKLIS PENILAIAN PRODUK ANALISA CB ASPERS', '1'),
('C29', 'PENILAIAN PRODUK ANALISA CB ASLOG', '1'),
('C3', 'CEKLIS PENILAIAN AKTIVITAS STAF SAHLI', '5'),
('C30', 'PENILAIAN PRODUK ANALISA CB ASTER', '1'),
('C31', 'PENILAIAN PRODUK ANALISA CB ASREN', '1'),
('C32', 'PENILAIAN PRODUK ANALISA CB ASKOMLEK', '1'),
('C33', 'PENILAIAN PRODUK KEPUTUSAN DAN KUO', '1'),
('C34', 'PENILAIAN PRODUK KONSEP RO', '1'),
('C35', 'AKTIVITAS TELEGRAM', '2'),
('C36', 'AKTIVITAS TELEPON', '3'),
('C4', 'CEKLIS PENILAIAN AKTIVITAS KEPALA STAF', '5'),
('C5', 'CEKLIS PENILAIAN AKTIVITAS ASINTEL', '5'),
('C6', 'CEKLIS PENILAIAN AKTIVITAS ASOPS', '5'),
('C7', 'CEKLIS PENILAIAN AKTIVITAS ASPERS', '5'),
('C8', 'CEKLIS PENILAIAN AKTIVITAS ASLOG', '5'),
('C9', 'CEKLIS PENILAIAN AKTIVITAS ASTER', '5');

-- --------------------------------------------------------

--
-- Table structure for table `detail_penilaian_kelompok`
--

CREATE TABLE `detail_penilaian_kelompok` (
  `id_detail_penilaian_kelompok` int(11) NOT NULL,
  `id_penilaian_kelompok` int(11) NOT NULL,
  `id_soal_kelompok` int(11) NOT NULL,
  `id_kelompok` int(11) NOT NULL,
  `id_ceklis` char(5) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `detail_penilaian_perorangan`
--

CREATE TABLE `detail_penilaian_perorangan` (
  `id_detail_penilaian_perorangan` int(11) NOT NULL,
  `id_penilaian_perorangan` int(11) NOT NULL,
  `id_soal_perorangan` int(11) NOT NULL,
  `id_anggota` int(11) NOT NULL,
  `nilai` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `id_jabatan` int(11) NOT NULL,
  `nama_jabatan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`id_jabatan`, `nama_jabatan`) VALUES
(9, 'Panglima'),
(10, 'Wapang'),
(11, 'Staf Ahli'),
(12, 'Asintel'),
(13, 'Asops'),
(14, 'Aspers'),
(15, 'Aslog'),
(16, 'Asren'),
(17, 'Aster'),
(18, 'Askomlek');

-- --------------------------------------------------------

--
-- Table structure for table `kelompok`
--

CREATE TABLE `kelompok` (
  `id_kelompok` int(11) NOT NULL,
  `nama_kelompok` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kelompok`
--

INSERT INTO `kelompok` (`id_kelompok`, `nama_kelompok`) VALUES
(1, 'KOGASGABPAD A'),
(2, 'KOGASGABPAD B'),
(3, 'KOGASGABPAD C'),
(4, 'KOGASGABPAD D'),
(5, 'KOGASGABPAD E'),
(6, 'KOGASGABPAD F'),
(7, 'KOGASGABPAD G'),
(8, 'KOGASGABPAD H');

-- --------------------------------------------------------

--
-- Table structure for table `pangkat`
--

CREATE TABLE `pangkat` (
  `id_pangkat` int(11) NOT NULL,
  `nama_pangkat` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pangkat`
--

INSERT INTO `pangkat` (`id_pangkat`, `nama_pangkat`) VALUES
(1, 'Kolonel Infa'),
(2, 'Kolonel Pnb'),
(3, 'Kolonel Laut (P)'),
(4, 'Kolonel Arh'),
(5, 'Kolonel Czi'),
(6, 'Kolonel Kav'),
(7, 'Kolonel Laut (E)'),
(13, 'Colonel AD'),
(14, 'Kolonel Pas'),
(15, 'Kolonel Arm'),
(16, 'Kombes Pol');

-- --------------------------------------------------------

--
-- Table structure for table `penilaian_kelompok`
--

CREATE TABLE `penilaian_kelompok` (
  `id_penilaian_kelompok` int(11) NOT NULL,
  `id_kelompok` int(11) NOT NULL,
  `id_ceklis` char(5) NOT NULL,
  `tgl` datetime NOT NULL DEFAULT current_timestamp(),
  `ket` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penilaian_kelompok`
--

INSERT INTO `penilaian_kelompok` (`id_penilaian_kelompok`, `id_kelompok`, `id_ceklis`, `tgl`, `ket`) VALUES
(2, 1, 'C12', '2020-07-20 22:41:48', '-'),
(3, 1, 'C35', '2020-07-20 22:41:48', ''),
(5, 2, 'C35', '2020-07-20 22:41:48', ''),
(6, 2, 'C36', '2020-07-20 22:41:48', ''),
(7, 1, 'C29', '2020-07-20 22:43:08', ''),
(8, 2, 'C12', '2020-07-20 23:21:45', ''),
(9, 2, 'C13', '2020-07-20 23:08:46', '5'),
(10, 2, 'C1', '2020-07-20 23:12:42', '-'),
(11, 1, 'C28', '2020-07-20 23:25:02', '\r\n'),
(13, 1, 'C30', '2020-07-21 00:16:03', ''),
(14, 1, 'C29', '2020-07-21 00:16:18', ''),
(15, 1, 'C27', '2020-07-21 00:17:02', ''),
(16, 1, 'C12', '2020-07-21 01:11:04', '-'),
(17, 1, 'C36', '2020-07-21 01:16:36', ''),
(18, 2, 'C1', '2020-07-21 06:49:46', '-'),
(20, 1, 'C1', '2020-07-20 06:59:03', '-'),
(21, 1, 'C1', '2020-07-21 07:00:44', '-'),
(22, 3, 'C1', '2020-07-21 07:29:41', '');

-- --------------------------------------------------------

--
-- Table structure for table `penilaian_perorangan`
--

CREATE TABLE `penilaian_perorangan` (
  `id_penilaian_perorangan` int(11) NOT NULL,
  `id_anggota` int(11) NOT NULL,
  `id_ceklis` char(5) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `soal_kelompok`
--

CREATE TABLE `soal_kelompok` (
  `id_soal_kelompok` int(11) NOT NULL,
  `maks` float NOT NULL,
  `id_ceklis` char(5) NOT NULL,
  `aspek` varchar(255) NOT NULL,
  `tipe_nilai` tinyint(4) NOT NULL,
  `is_aktif` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `soal_kelompok`
--

INSERT INTO `soal_kelompok` (`id_soal_kelompok`, `maks`, `id_ceklis`, `aspek`, `tipe_nilai`, `is_aktif`) VALUES
(1, 70, 'C12', 'Kesesuaian dengan Buku I dan IIA', 1, 1),
(2, 20, 'C12', 'Urut-urutan kegiatan sesuai Proses Biltus', 1, 1),
(3, 5, 'C12', 'Ketepatan waktu', 1, 1),
(4, 5, 'C12', 'Kerapihan', 1, 1),
(6, 8.2, 'C13', 'Jadwal Waktu Sementara/Awal Pelaksanaan Operasi.', 1, 1),
(7, 8.2, 'C13', 'Koordinasi yang harus dilakukan.', 1, 1),
(8, 10.5, 'C13', 'Menentukan Pergerakan Termasuk Posisi Kodal.', 1, 1),
(9, 18, 'C13', 'Tugas Tambahan bagi masing-masing Staf termasuk Informasi-informasi Khusus yang diperlukan.', 1, 1),
(10, 18, 'C13', 'Mengembangkan Rencana Waktu dengan kondisi Daerah Operasi (jika diinginkan).', 1, 1),
(11, 18, 'C13', 'Informasi tentang Persoalan-Persoalan Intelijen Lainnya dan Unsur Utama Keterangan bagi Komandan (jika diperlukan).', 1, 1),
(12, 2, 'C13', 'Ketepatan waktu', 1, 1),
(13, 2, 'C13', 'Kerapihan', 1, 1),
(14, 8.2, 'C14', 'Jenis Operasi.', 1, 1),
(15, 8.2, 'C14', 'Lokasi pelaksanaan operasi secara umum.', 1, 1),
(16, 10.5, 'C14', 'Jadwal waktu operasi.', 1, 1),
(17, 18, 'C14', 'Pergerakan untuk mendukung operasi.', 1, 1),
(18, 18, 'C14', 'Keperluan informasi awal yang diperlukan guna mendukung pelaksana-an operasi.', 1, 1),
(19, 18, 'C14', 'Tugas-tugas intelijen', 1, 1),
(20, 2, 'C14', 'Ketepatan waktu', 1, 1),
(21, 2, 'C14', 'Kerapihan', 1, 1),
(22, 9, 'C15', 'Analisa Direktif /Prinsiap Komando Atas', 1, 1),
(23, 13.4, 'C15', 'Analisa Pusat kekuatan sendiri', 1, 1),
(24, 9, 'C15', 'Analisa Praanggapan', 1, 1),
(25, 8, 'C15', 'Analisa Tugas dari aspek operasional', 1, 1),
(26, 8, 'C15', 'Analisa waktu operasi', 1, 1),
(27, 13.3, 'C15', '', 1, 1),
(28, 8, 'C15', 'Struktur Susunan Tugas', 1, 1),
(29, 12.2, 'C15', 'Strategi operasional pasukan sendiri', 1, 1),
(30, 2, 'C15', 'Ketepatan waktu', 1, 1),
(31, 2, 'C15', 'Kerapihan', 1, 1),
(32, 14, 'C16', 'Analisa Situasi dan kondisi Daerah operasi', 1, 1),
(33, 8, 'C16', 'Analisa Praanggapan', 1, 1),
(34, 15.5, 'C16', 'Analisa Pusat kekuatan ancaman', 1, 1),
(35, 15.4, 'C16', 'Kebutuhan Informasi yang Diperlukan', 1, 1),
(36, 28, 'C16', 'Analisa berbagai bentuk ancaman', 1, 1),
(37, 2, 'C16', 'Ketepatan waktu', 1, 1),
(38, 2, 'C16', 'Kerapihan', 1, 1),
(39, 14, 'C17', 'Analisa pusat kekuatan sendiri.', 1, 1),
(40, 8, 'C17', 'Analisa praanggapan.', 1, 1),
(41, 14, 'C17', 'Analisa tugas dari aspek operasional.', 1, 1),
(42, 8, 'C17', 'Analisa waktu operasi.', 1, 1),
(43, 12.9, 'C17', 'Kemungkinan-kemungkinan CB untuk melaksanakan Tupok yang sudah dianalisa.', 1, 1),
(44, 8, 'C17', 'Saran awal tentang struktur susunan tugas (Orgas kogasgabpad & jajarannya).', 1, 1),
(45, 8, 'C17', 'Kebutuhan informasi yang diperlukan dari aspek operasi.', 1, 1),
(46, 8, 'C17', 'Strategi operasional pasukan sendiri.', 1, 1),
(47, 2, 'C17', 'Kerapihan ', 1, 1),
(48, 2, 'C17', 'Ketepatan Waktu Penyerahan Produk', 1, 1),
(49, 14, 'C18', 'Analisa keadaan personel. ', 1, 1),
(50, 7, 'C18', 'Analisa praanggapan.', 1, 1),
(51, 13, 'C18', 'Analisa Tugas dari aspek dukungan personel.', 1, 1),
(52, 13, 'C18', 'Analisa kendala yang dihadapi dan upaya mengatasi dari aspek personel.', 1, 1),
(53, 13.9, 'C18', 'Analisa hambatan yang dihadapi dan bantuan yang diperlukan.', 1, 1),
(54, 7, 'C18', 'Kebutuhan informasi yang diperlukan dari aspek dukungan personil.', 1, 1),
(55, 13, 'C18', 'Strategi operasional aspek personil.', 1, 1),
(56, 2, 'C18', 'Kerapihan ', 1, 1),
(57, 2, 'C18', 'Ketepatan waktu penyerahan produk', 1, 1),
(58, 14, 'C19', 'Analisa keadaan logistik ', 1, 1),
(59, 7, 'C19', 'Analisa praanggapan.', 1, 1),
(60, 13, 'C19', 'Analisa tugas dari aspek dukungan logistik.', 1, 1),
(61, 13, 'C19', 'Analisa kendala yang dihadapi dan upaya mengatasi dari aspek logistik.', 1, 1),
(62, 13.9, 'C19', 'Analisa hambatan-hambatan yang dihadapi dan bantuan yang diperlukan.', 1, 1),
(63, 7, 'C19', 'Kebutuhan informasi yang diperlukan dari aspek logistik.', 1, 1),
(64, 13, 'C19', 'Strategi operasional aspek logistik', 1, 1),
(65, 2, 'C19', 'Kerapihan', 1, 1),
(66, 2, 'C19', 'Ketepatan waktu penyerahan produk', 1, 1),
(67, 14, 'C20', 'Analisa Keadaan Teritorial  ', 1, 1),
(68, 7, 'C20', 'Analisa praanggapan.', 1, 1),
(69, 13, 'C20', 'Analisa tugas dari aspek teritorial.', 1, 1),
(70, 13, 'C20', 'Analisa kendala yang dihadapi dan upaya mengatasi dari aspek teritorial.', 1, 1),
(71, 13.9, 'C20', 'Analisa hambatan-hambatan yang dihadapi dan bantuan yang diperlukan.', 1, 1),
(72, 7, 'C20', 'Kebutuhan informasi yang diperlukan dari aspek teritorial.', 1, 1),
(73, 13, 'C20', 'Strategi operasional aspek teritorial', 1, 1),
(74, 2, 'C20', 'Kerapihan ', 1, 1),
(75, 2, 'C20', 'Ketepatan waktu penyerahan produk', 1, 1),
(76, 14, 'C21', 'Analisa pusat kekuatan sendiri.', 1, 1),
(77, 8, 'C21', 'Analisa praanggapan.', 1, 1),
(78, 14, 'C21', 'Analisa tugas dari aspek perencanaan.', 1, 1),
(79, 8, 'C21', 'Analisa waktu perencanaan.', 1, 1),
(80, 8, 'C21', 'Kemungkinan-kemungkinan CB untuk melaksanakan Tupok yang sudah dianalisa.', 1, 1),
(81, 7.5, 'C21', 'Saran awal tentang struktur susunan tugas (Orgas kogasgabpad & jajarannya).', 1, 1),
(82, 7.4, 'C21', 'Kebutuhan informasi yang diperlukan dari aspek operasi dan aspek perencanaan', 1, 1),
(83, 14, 'C21', 'Strategi operasional pasukan sendiri.', 1, 1),
(84, 2, 'C21', 'Kerapihan', 1, 1),
(85, 2, 'C21', 'Ketepatan waktu penyerahan produk', 1, 1),
(86, 14, 'C22', 'Analisa keadaan  komunikasi dan elektronika.', 1, 1),
(87, 7, 'C22', 'Analisa praanggapan.', 1, 1),
(88, 13, 'C22', 'Analisa tugas-tugas dari aspek dukungan komlek.', 1, 1),
(89, 13, 'C22', 'Analisa kendala-kendala yang dihadapi dan upaya mengatasi dari aspek komlek.', 1, 1),
(90, 13.9, 'C22', 'Analisa hambatan-hambatan yang dihadapi dan bantuan yang diperlukan.', 1, 1),
(91, 7, 'C22', 'Kebutuhan informasi yang diperlukan dari aspek komlek', 1, 1),
(92, 13, 'C22', 'Strategi operasional aspek komlek.', 1, 1),
(93, 2, 'C22', 'Kerapihan', 1, 1),
(94, 2, 'C22', 'Ketepatan waktu penyerahan produk', 1, 1),
(95, 5, 'C23', 'Situasi', 1, 1),
(96, 10, 'C23', 'Tugas Pokok yang Dinyatakan Kembali', 1, 1),
(97, 10.9, 'C23', 'Keinginan Panglima', 1, 1),
(98, 5, 'C23', 'Kegiatan-kegiatan yang Menentukan', 1, 1),
(99, 8, 'C23', 'CB yang Dikembangkan', 1, 1),
(100, 4, 'C23', 'Pengembangan Konsep CB', 1, 1),
(101, 4, 'C23', 'Rencana Waktu', 1, 1),
(102, 3, 'C23', 'Rencana Duklog', 1, 1),
(103, 4, 'C23', 'Keperluan Info Intelijen', 1, 1),
(104, 4, 'C23', 'Rencana Operasi Pengamanan', 1, 1),
(105, 3, 'C23', 'Petunjuk Pengintaian dan Pengamatan', 1, 1),
(106, 4, 'C23', 'Resiko yang akan Dihadapi', 1, 1),
(107, 4, 'C23', 'Kerja sama Operasi yang akan Dilaksanakan', 1, 1),
(108, 4, 'C23', 'Jenis Perintah yang akan Dikeluarkan', 1, 1),
(109, 4, 'C23', 'Rencana Uji RO', 1, 1),
(110, 4, 'C23', 'Rencana Waktu (Penutup)', 1, 1),
(111, 2, 'C23', 'Kerapihan produk', 1, 1),
(112, 2, 'C23', 'Ketepatan waktu penyerahan produk', 1, 1),
(113, 9, 'C24', 'Situasi', 1, 1),
(114, 9, 'C24', 'Tugas Pokok', 1, 1),
(115, 9, 'C24', 'Keinginan Pangkogasgab (Konsep Strategi Operasional)', 1, 1),
(116, 9, 'C24', 'Organisasi Tugas', 1, 1),
(117, 8.9, 'C24', 'UUK/PIL', 1, 1),
(118, 8, 'C24', 'Petunjuk Resiko', 1, 1),
(119, 8, 'C24', 'Instruksi Pengamatan dan Pengintaian', 1, 1),
(120, 8, 'C24', 'Instruksi Pergerakan Awal', 1, 1),
(121, 8, 'C24', 'Tindakan Keamanan', 1, 1),
(122, 2, 'C24', 'Pengecekan Kesiapan Personel dan Materiil', 1, 1),
(123, 2, 'C24', 'Penutup', 1, 1),
(124, 2, 'C24', 'Ketepatan waktu', 1, 1),
(125, 2, 'C24', 'Kerapihan', 1, 1),
(126, 8, 'C25', 'Situasi', 1, 1),
(127, 26, 'C25', 'Cara Bertindak', 1, 1),
(128, 26, 'C25', 'Analisa alternatif CB', 1, 1),
(129, 14.9, 'C25', 'Kesimpulan', 1, 1),
(130, 5, 'C25', 'Kerapian produk', 1, 1),
(131, 5, 'C25', 'Ketepatan waktu penyerahan produk', 1, 1),
(132, 8, 'C26', 'Situasi', 1, 1),
(133, 24, 'C26', 'Cara Bertindak', 1, 1),
(134, 28, 'C26', 'Analisa alternatif CB', 1, 1),
(135, 14.9, 'C26', 'Kesimpulan', 1, 1),
(136, 5, 'C26', 'Kerapian produk', 1, 1),
(137, 5, 'C26', 'Ketepatan waktu penyerahan produk', 1, 1),
(138, 8, 'C27', 'Situasi', 1, 1),
(139, 24, 'C27', 'Cara Bertindak', 1, 1),
(140, 28, 'C27', 'Analisa alternatif CB', 1, 1),
(141, 14.9, 'C27', 'Kesimpulan', 1, 1),
(142, 5, 'C27', 'Kerapian produk', 1, 1),
(143, 5, 'C27', 'Ketepatan waktu penyerahan produk', 1, 1),
(144, 8, 'C28', 'Situasi', 1, 1),
(145, 24, 'C28', 'Cara Bertindak', 1, 1),
(146, 28, 'C28', 'Analisa alternatif CB', 1, 1),
(147, 14.9, 'C28', 'Kesimpulan', 1, 1),
(148, 5, 'C28', 'Kerapian produk', 1, 1),
(149, 5, 'C28', 'Ketepatan waktu penyerahan produ', 1, 1),
(150, 8, 'C29', 'Situasi', 1, 1),
(151, 24, 'C29', 'Cara Bertindak', 1, 1),
(152, 28, 'C29', 'Analisa alternatif CB', 1, 1),
(153, 14.9, 'C29', 'Kesimpulan', 1, 1),
(154, 5, 'C29', 'Kerapian produk', 1, 1),
(155, 5, 'C29', 'Ketepatan waktu penyerahan produk', 1, 1),
(156, 8, 'C30', 'Situasi', 1, 1),
(157, 24, 'C30', 'Cara Bertindak', 1, 1),
(158, 28, 'C30', 'Analisa alternatif CB', 1, 1),
(159, 14.9, 'C30', 'Kesimpulan', 1, 1),
(160, 5, 'C30', 'Kerapian produk', 1, 1),
(161, 5, 'C30', 'Ketepatan waktu penyerahan produk', 1, 1),
(162, 8, 'C31', 'Situasi', 1, 1),
(163, 24, 'C31', 'Cara Bertindak', 1, 1),
(164, 28, 'C31', 'Analisa alternatif CB', 1, 1),
(165, 14.9, 'C31', 'Kesimpulan', 1, 1),
(166, 5, 'C31', 'Kerapian produk', 1, 1),
(167, 5, 'C31', 'Ketepatan waktu penyerahan produk', 1, 1),
(168, 8, 'C32', 'Situasi', 1, 1),
(169, 24, 'C32', 'Cara Bertindak', 1, 1),
(170, 28, 'C32', 'Analisa alternatif CB', 1, 1),
(171, 14.9, 'C32', 'Kesimpulan', 1, 1),
(172, 5, 'C32', 'Kerapian produk', 1, 1),
(173, 5, 'C32', 'Ketepatan waktu penyerahan produk', 1, 1),
(174, 8, 'C33', 'Keputusan', 1, 1),
(175, 24, 'C33', 'Konsep Umum Operasi', 1, 1),
(176, 28, 'C33', 'Pokok-pokok Tugas yang harus dikerjakan (Satuan Bawah)', 1, 1),
(177, 14.9, 'C33', 'Lain-lain', 1, 1),
(178, 5, 'C33', 'Kerapian produk', 1, 1),
(179, 5, 'C33', 'Ketepatan waktu penyerahan produk', 1, 1),
(180, 10.9, 'C34', 'Situasi', 1, 1),
(181, 18, 'C34', 'Tugas Pokok', 1, 1),
(182, 42, 'C34', 'Pelaksanaana. Konsep operasib. Tugas satuan-satuan manuver yang termasuk dalam susunan tugas/organisasi tugas.c.	Instruksi koordinasi.', 1, 1),
(183, 4, 'C34', 'Administrasi dan logistik', 1, 1),
(184, 4, 'C34', 'Komando kendali dan komlek', 1, 1),
(185, 3, 'C34', 'Kerapihan', 1, 1),
(186, 3, 'C34', 'Ketepatan waktu penyerahan produk', 1, 1),
(191, 15, 'C1', 'Kerapihan/kreatifitas', 4, 1),
(211, 40, 'C1', '\r\nPeta  :\r\na.  Induk\r\nb.  Situasi\r\nc.  Operasi\r\nd.  Olah Yudha \r\n', 4, 1),
(212, 30, 'C1', 'Recording Data ', 4, 1),
(213, 15, 'C1', 'Tata ruang', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `soal_perorangan`
--

CREATE TABLE `soal_perorangan` (
  `id_soal_perorangan` int(11) NOT NULL,
  `id_ceklis` char(5) NOT NULL,
  `indeks` tinyint(4) NOT NULL,
  `tindakan_macam` text NOT NULL,
  `nilmax` varchar(5) NOT NULL,
  `is_aktif` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `soal_perorangan`
--

INSERT INTO `soal_perorangan` (`id_soal_perorangan`, `id_ceklis`, `indeks`, `tindakan_macam`, `nilmax`, `is_aktif`) VALUES
(1, 'C2', 10, 'Pangkogasgabpad menerima direktif Pang TNI, apakah melakukan kegiatan', '9', 1),
(2, 'C2', 10, 'Apakah Pangkogasgabpad memahami Direktif yang diberikan oleh Panglima TNI dan melaksanakan Analisa Tugas Pokok yang mencakup', '9', 1),
(3, 'C2', 5, 'Pada saat Briefing analisa tugas, apakah Panglima menerima paparan dari semua asisten? Membandingkan hasil analisa tugas pokok yang dilakukan sendiri oleh Panglima, selanjutnya Panglima memberi arahan kepada Staf untuk menyusun petunjuk perencanaan dan perintah persiapan.', '3.4', 1),
(4, 'C2', 10, 'Apakah Panglima menyampaikan petunjuk perencanaan kepada staf dan menyampaikan perintah persiapan kepada satuan bawah?', '9', 1),
(5, 'C2', 5, 'Apakah Panglima dengan staf melaksanakan proses pengembangan, analisa dan perbandingan  CB untuk menghasilkan CB terpilih?', '4', 1),
(6, 'C2', 5, 'Apakah Panglima ikut serta/mengawasi proses olah yudha yang dilaksanakan oleh staf ?', '3.5', 1),
(7, 'C2', 10, 'Apakah Panglima menerima paparan Kas mengenai CB terbaik, selanjutnya Panglima menentukan CB terbaik dengan membandingkan CB yang dibuat Panglima sendiri? Apakah Panglima memberi petunjuk dan memodifikasi CB apabila diperlukan serta mensimulasikannya kembali?', '9', 1),
(8, 'C2', 5, 'Apakah Pangkogasgabpad menyampaikan Keputusan dan Konsep Umum Operasi kepada para Asisten dan Unsur-unsur bawah (sat bawahan) serta unsur terkait.', '4', 1),
(9, 'C2', 5, 'Apakah Keputusan & KUO Pangkogasgabpad mencakup Keputusan, Konsep Umum Operasi, Pokok-pokok tugas yang harus dikerjakan (oleh Satwah), Lain-lain / Instruksi Koordinasi.', '4', 1),
(10, 'C2', 5, 'Apakah dalam Kep & KUO Pangkogasgabpad sudah tercantum waktu perencanaan / perintah akan dikeluarkan.', '4', 1),
(11, 'C2', 10, 'Apakah dalam Rencana Operasi yang telah dibuat lengkap dengan lampiran-lampiran sebagai berikut', '9', 1),
(12, 'C2', 5, 'Apakah Rencana Operasi yang telah dibuat selanjutnya di uji melalui TFG atau dengan metode yang lain', '4', 1),
(13, 'C2', 5, 'Apakah RO yang sudah disempurnakan dilaporkan/dipaparkan kepada Panglima TNI.', '4', 1),
(14, 'C2', 10, 'Apakah Pangkogasgabpad membuat produk tertulis berupa', '9', 1),
(15, 'C3', 10, 'Apakah Pa Sahli memberikan saran dan penjelasan yang diperlukan panglima sesuai fungsinya', '9', 1),
(16, 'C3', 10, 'Apakah Pa Sahli selalu aktif koordinasi dengan staf lain.', '9', 1),
(17, 'C3', 10, 'Apakah Pa Sahli mengerti tentang tugas pokok satuan tempat ditugaskan', '9', 1),
(18, 'C3', 10, 'Apakah Pa Sahli dapat mengembangkan petunjuk yang diberikan Panglima', '9', 1),
(19, 'C3', 10, 'Apakah Pa Sahli dapat memberikan keterangan yang bersifat teknis tentang operasi yang dilaksanakan', '8.2', 1),
(20, 'C3', 10, 'Apakah Pa Sahli mengikuti perkembangan situasi secara terus menerus pelaksanaan operasi yang berjalan.', '8.2', 1),
(21, 'C3', 10, 'Apakah Pa Sahli terampil dan aktif dalam penyelesaian tugas-tugas sesuai bidang tugasnya', '8.2', 1),
(22, 'C3', 10, 'Apakah Pa Sahli selalu melaporkan sesuai bidang tugasnya yang diperlukan kepada satuan Komando Atas ', '8.2', 1),
(23, 'C3', 10, 'Apakah Pa Sahli mengetahui dan memiliki data kemampuan kekuatan sendiri yang dibutuhkan dalam operasi oleh satuan tempat bertugas.', '8.1', 1),
(24, 'C3', 10, 'Apakah Pa Sahli secara aktif mengikuti dan mengetahui rangkaian kegiatan satuan tempat bertugas.', '8', 1),
(25, 'C4', 10, 'Apakah Kas mengkoordinir staf dan menyiapsiagakan staf untuk siapkan proses perencanaan dan siapkan personel yang mampu untuk melaksanakan tugas sesuai dengan Protap yang ada?', '9', 1),
(26, 'C4', 3, 'Apakah Kas membantu Panglima merumuskan tujuan, konsep operasi serta kekuatan yang akan digunakan dalam Operasi.', '2.3', 1),
(27, 'C4', 2, 'Apakah Kas membantu Panglima dalam melaksanakan koordinasi ke Ko Atas, samping dan bawah sesuai fungsi bidang tugasnya', '2', 1),
(28, 'C4', 10, 'Apakah Kas mengkoordinir staf dalam melakukan analisa tugas staf? Apakah Kas melaksanakan briefing staf untuk menganalisa tugas bersama staf?', '9', 1),
(29, 'C4', 3, 'Apakah Kas membantu Panglima  mempelajari situasi tentang musuh dan menentukan sasaran-sasaran strategis yang menjadi sasaran Operasi.', '3', 1),
(30, 'C4', 2, 'Apakah Kas mengikuti perkembangan situasi yang terjadi ', '2', 1),
(31, 'C4', 10, 'Apakah Kas mengkoordinir staf menyusun petunjuk perencanaan dan perintah persiapan Panglima?', '9', 1),
(32, 'C4', 5, 'Apakah Kas membantu Panglima  membagi waktu untuk keleluasaan dan kesiapan satuan / komando bawah.', '4', 1),
(33, 'C4', 10, 'Apakah Kas mengkoordinir staf dan mengecek kesiapan personel untuk menerima petunjuk perencanaan dan perintah persiapan Panglima', '9', 1),
(34, 'C4', 10, 'Apakah Kas membantu Panglima  menganalisa Cara Bertindak dan mendiskusikannya beserta Asisten dan staf khusus di atas maket / peta?', '8', 1),
(35, 'C4', 5, 'Apakah Kas mengkoordinir staf dan menyiapkan sarana dan prasarana yang diperlukan seperti Peta darat, laut dan udara untuk perbandingan CB? ', '3.2', 1),
(36, 'C4', 10, 'Apakah Kas membantu Panglima  menyampaikan Keputusan dan Konsep Umum Operasi kepada para Asisten dan Komandan Satgas (sat bawahan) serta unsur terkait.', '9', 1),
(37, 'C4', 5, 'Apakah Kas membantu Panglima  menentukan organisasi satuan-satuan dan kewenangan garis komando.', '3.2', 1),
(38, 'C4', 5, 'Apakah Kas membantu Panglima  melaksanakan koordinasi untuk mengerahkan dan mempertahankan sumber daya yang ada untuk kebutuhan Operasi.', '3.2', 1),
(39, 'C4', 10, 'Apakah Kas membantu dalam kesiapan kegiatan Uji RO yang dilaksanakan melalui TFG', '9', 1),
(40, 'C5', 5, 'Apakah Asintel melaksanakan analisa tugas sesuai dengan bidang tugas intelejen.', '4.1', 1),
(41, 'C5', 5, 'Apakah Asintel  membuat tabulasi data dan Peta Situasi.', '4.1', 1),
(42, 'C5', 5, 'Apakah Asintel  berusaha mencari ke-terangan – keterangan melalui Satuan Atas, Bawah dan Samping.', '4.1', 1),
(43, 'C5', 5, 'Apakah Asintel  memberikan Info/keterangan dan terus meyakinkan terpenuhinya kebutuhan intelejen yang memadai dan pelaporan untuk mengungkapkan ancaman / lawan segera mungkin.', '4.1', 1),
(44, 'C5', 10, 'Apakah Asintel  berusaha menggunakan badan-badan pengumpulan keterangan yang ada di kesatuan.', '9', 1),
(45, 'C5', 10, 'Apakah Asintel  mempersiapkan  : <br/>1)  Buku Harian. <br/>2)  Buku Kerja. <br/>3)  Peta – peta yang diperlukan.', '9', 1),
(46, 'C5', 10, 'Apakah Asintel  berpartisipasi aktif dalam staf perencanaan dalam merencanakan, mengkoordinir, mengarahkan, memadukan, dan mengontrol konsentrasi dari upaya intel tentang kepentingan ancaman/lawan yang tepat waktu serta tepat sasaran.', '9', 1),
(47, 'C5', 10, 'Apakah Asintel  berusaha memberikan ke-terangan–keterangan yang diperlukan oleh Pa Staf lain dalam rangka keberhasilan tugas.', '9', 1),
(48, 'C5', 5, 'Apakah Asintel  memperhatikan Minu Staf Duty dalam membuat Produk Staf.', '4.1', 1),
(49, 'C5', 5, 'Apakah Asintel dapat memberikan saran berupa Analisa Intelijen tepat pada waktu yang telah ditentukan.', '4.1', 1),
(50, 'C5', 5, 'Apakah Asintel mengikuti perkembangan secara terus menerus dan memberikan masukan kepada Panglima dalam menghadapi situasi kritis.', '4.1', 1),
(51, 'C5', 5, 'Apakah Asintel loyal kepada keputusan Pang.', '4', 1),
(52, 'C5', 5, 'Apakah Asintel memberikan keterangan ancaman/lawan pada Staf Ops dalam rangka membuat RO.', '4', 1),
(53, 'C5', 5, 'Apakah Asintel ikut aktif mengawasi pelaksanaan perintah oleh satuan bawah.', '4', 1),
(54, 'C5', 10, 'Apakah Asintel membuat produk lainnya berupa :', '8.2', 1),
(55, 'C6', 5, 'Apakah Asops  mempersiapkan buku harian, lembaran kerja dan Peta Ops.', '4.2', 1),
(56, 'C6', 5, 'Apakah  Asops  memberikan keterangan-keterangan yang diperlukan Panglima untuk menganalisa tugas.', '4.2', 1),
(57, 'C6', 5, 'Apakah Asops  memberikan saran-saran yang diperlukan sewaktu Pang memberikan Briefing.', '4.2', 1),
(58, 'C6', 5, 'Apakah Asops memberikan keterangan yang diperlukan dari  :a. Satuan Atas.b. Satuan Samping. c. Satuan Bawah.', '5', 1),
(59, 'C6', 5, 'Apakah Asops mengadakan koordinasi dengan Pa Staf lainnya guna mencari keterangan yang diperlukan.', '4', 1),
(60, 'C6', 5, 'Apakah Asops  mengerjakan dan berusaha untuk mengerti atas Jukcan yang diberikan Panglima.', '4', 1),
(61, 'C6', 5, 'Apakah Asops berusaha berkoordinasi dengan staf lain sebelum memulai membuat saran Staf.', '4', 1),
(62, 'C6', 5, 'Apakah Asops  berusaha memberikan keterangan-keterangan Taktis sebelum Panglima memberikan Jukcan.', '4.2', 1),
(63, 'C6', 5, 'Apakah Asops  memberikan perintah persiapan dan peringatan kepada satuan jajarannya sesuai keinginan Panglima', '4', 1),
(64, 'C6', 5, 'Apakah Asops menyiapkan dan menyampaikan Cara Bertindak sesuai keinginan dari Kogasgabpad ', '4', 1),
(65, 'C6', 5, 'Apakah Asops dapat menyelesaikan dan menyampaikan saran staf bidang operasi tepat pada waktunya.', '4', 1),
(66, 'C6', 5, 'Apakah Asops terampil dalam menangani masalah – masalah Operasi yang bersangkutan dengan fungsinya.', '4', 1),
(67, 'C6', 5, 'Apakah Asops menyiapkan dan menyelesaikan Kep dan KUO sesuai dengan keinginan Panglima.', '4', 1),
(68, 'C6', 10, 'Apakah Asops koordinasi dengan Pa Staf lainnya didalam menyelesaikan Konsep Rencana Operasi.', '4', 1),
(69, 'C6', 5, 'Apakah Asops menyiapkan dan menyelesaikan Rencana Operasi beserta lampirannya  tepat pada waktunya.', '4', 1),
(70, 'C6', 5, 'Apakah Asops mengikuti perkembangan situasi sesuai jajarannya saat perencanaan.', '4', 1),
(71, 'C6', 3, 'Apakah Asops ikut mengawasi pelaksanaan perintah Panglima oleh Satuan-satuan bawah.', '3', 1),
(72, 'C6', 2, 'Apakah Asops  mempersiapkan Peta Operasi.', '2', 1),
(73, 'C6', 3, 'Apakah Asops mengeplot semua peristiwa Operasi pada Peta Operasi.', '3', 1),
(74, 'C6', 5, 'Apakah Asop membuat produk lampiran :\r\n    a. ATS\r\n    b. Prinsiap, pringat\r\n    c. Jukcan Panglima\r\n    d. Saran staf bidang operasi\r\n    e. Keputusan dan konsep operasi\r\n    f. Rencana Operasi beserta lampirannya:\r\n        1) Susunan tugas\r\n        2) Peta operasi \r\n        3) Rencana Rule of Engangement\r\n        4) Lain-lain sesuai kebutuhan', '5', 1),
(75, 'C6', 2, 'Apakah Asops  memasukkan berita-berita yang masuk pada Buku Harian atau Lembaran Kerja Staf.', '2', 1),
(76, 'C6', 2, 'Apakah Asops  membuat/menyiapkan alat-alat pertolongan/miniatur untuk mempermudah Pengendalian Operasi.', '2', 1),
(77, 'C6', 3, 'Apakah Asops  menentukan letak umum untuk Posko Kogasgabpad.', '2.1', 1),
(78, 'C7', 5, 'Apakah  Aspers  menganalisa tugas sesuai dengan fungsinya', '5', 1),
(79, 'C7', 5, 'Apakah Aspers mempersiapkan dan mencatat semua berita yang diterima, dan memasukkan pada buku harian, lembaran kerja dan blangko-blangko administrasi buku jurnal.', '5', 1),
(80, 'C7', 5, 'Apakah Aspers  menyampaikan berita tersebut  :\r\na. Semuanya pada Panglima.\r\nb. Pada alamat masing-masing.', '5', 1),
(81, 'C7', 5, 'Apakah Aspers berpartisipasi sejak awal dalam proses perencanaan dan pengambilan keputusan', '4.1', 1),
(82, 'C7', 5, 'Apakah Aspers mencari keterangan dengan  :a. Satuan Atas.b. Satuan Samping. c. Satuan Bawah.', '4.1', 1),
(83, 'C7', 5, 'Apakah Aspers mendata kekuatan personel dari satuan induk dan satuan-satuan yang membantu dan melaporkan keadaan/ kebutuhan personel kepada panglima.', '4.1', 1),
(84, 'C7', 5, 'Apakah Aspers berusaha mengerti terhadap Jukcan Panglima.', '4.1', 1),
(85, 'C7', 5, 'Apakah Aspers dapat mengembangkan Jukcan Panglima yang bersangkutan dengan bidang tugasnya.', '4.1', 1),
(86, 'C7', 5, 'Apakah Aspers merencanakan dan menyiapkan tenaga pengganti.', '4.1', 1),
(87, 'C7', 5, 'Apakah Aspers mencatat mengadakan koordinasi dengan Staf lainnya sebelum membuat Analisa staf Personel .', '4.1', 1),
(88, 'C7', 5, 'Apakah Aspers berusaha memberikan keterangan-keterangan tentang keadaan personel kepada Staf lainnya.', '4.1', 1),
(89, 'C7', 5, 'Apakah Aspers dapat mengembangkan petunjuk-petunjuk Panglima yang berkaitan dengan bidangnya.', '4.1', 1),
(90, 'C7', 5, 'Apakah Aspers dapat menyampaikan saran berupa Analisa Personel sesuai bidang personel tepat pada waktunya yang telah ditentukan oleh Panglima.', '4', 1),
(91, 'C7', 5, 'Apakah Aspers berusaha memberikan saran-saran yang diperlukan Panglima dalam mengambil keputusan dan menyusun KUO.', '4', 1),
(92, 'C7', 5, 'Apakah Aspers membantu untuk melengkapi RO', '4', 1),
(93, 'C7', 5, 'Apakah Aspers ikut mengawasi pelaksanaan perintah Panglima oleh satuan bawah.', '4', 1),
(94, 'C7', 5, 'Apakah Aspers dapat mengatasi semua  persoalan (operasi) yang  menyangkut dengan bidang tugasnya.', '4', 1),
(95, 'C7', 5, 'Apakah Aspers menentukan letak pasti kedudukan Mako.', '4', 1),
(96, 'C7', 5, 'Apakah Aspers menentukan prosedur penataan dan penggunaan pekerja sipil setempat.', '4', 1),
(97, 'C7', 5, 'Apakah Aspers membuat membuat produk berupa :\r\n    a. ATS\r\n    b. Analisa CB Staf Personel\r\n    c. Lampiran perencanaan dukungan personel', '5', 1),
(98, 'C8', 5, 'Apakah Aslog  menganalisa tugas sesuai fungsi bidang tugasnya', '5', 1),
(99, 'C8', 5, 'Apakah Aslog mempersiapkan dan mencatat semua berita sesuai bidangnya pada buku harian, lembar kerja dan mengolah data berita tersebut.', '5', 1),
(100, 'C8', 5, 'Apakah Aslog mencari keterangan dari :\r\na. Satuan  Atas.\r\nb. Satuan Samping.\r\nc. Satuan Bawah.', '5', 1),
(101, 'C8', 5, 'Apakah Aslog memberi saran kepada Panglima tentang kemampuan dukungan dibidang logistik yang dapat mempengauhi CB/pelaksanan tugas pokok Kogasgabpad.', '4', 1),
(102, 'C8', 5, 'Apakah Aslog mengikuti perkembangan keadaan logistik di satuannya.', '4', 1),
(103, 'C8', 5, 'Apakah Aslog berusaha mengerti akan  isi Jukcan Panglima.', '4', 1),
(104, 'C8', 5, 'Apakah Aslog dapat mengembangkan Jukcan Panglima sesuai bidang tugasnya.', '4', 1),
(105, 'C8', 5, 'Apakah Aslog mengadakan koordinasi dengan Staf lainnya sebelum membuat Analisa.', '4', 1),
(106, 'C8', 5, 'Apakah Aslog berusaha memberikan keterangan tentang logistik kepada Staf lainnya.', '4', 1),
(107, 'C8', 5, 'Apakah Aslog dapat menyampaikan saran kepada Panglima tepat pada waktunya.', '4', 1),
(108, 'C8', 10, 'Apakah Aslog membantu Staf Ops membuat lampiran rencana bantuan logistik (Rencana pelayanan logistik operasi) beserta Sub lampirannya ', '8', 1),
(109, 'C8', 5, 'Apakah Aslog merawat dan membekali pasukan yang terlibat operasi, sehingga menjamin keberhasilan pelaksanaan tugas sesuai tugas pokok', '4', 1),
(110, 'C8', 5, 'Apakah Aslog mengkoordinasikan semua fungsi logistik dan ketentuan-ketentuan, bantuan logistik dan pertahankan seluruh aset yang dimiliki', '4', 1),
(111, 'C8', 5, 'Apakah Aslog memformulasikan dan menentukan ketentuan-ketentuan tentang logistik yang berkelanjutan untuk perencanaan dan pelaksanan kebijakan logistik Kogasgabpad', '4', 1),
(112, 'C8', 5, 'Apakah Aslog mengembangkan lampiran logistik pada RO', '4', 1),
(113, 'C8', 5, 'Apakah Aslog mengkoordinasikan secara umum dengan satuan penyiap logistik, satuan tugas yang menyokong dukungan logistik, bantuan pembekalan sesuai dengan perintah penugasan dalam lampiran (Logistik pada RO)', '3.9', 1),
(114, 'C8', 5, 'Apakah Aslog mengkoordinasikan bantuan dan pembekalan angkatan, pengadaan dan pengendalian setempat (lokal) dan mengalokasikan fasilitas daerah setempat serta sumbangan daerah logistik yang dapat digunakan di daerah persiapan di wilayah ', '4', 1),
(115, 'C8', 10, 'Apakah Aslog membuat produk tertulis berupa:    a. ATS    b. Analisa CB Staf logistik.    c. Rencana bantuan logistik (Rencana dukungan pelayanan logistik operasi)    d. Sub lampiran matrik dukungan pelayanan logistik operasi    e. Sub lampiran peta dukungan pelayanan operasi    f. Sub lampiran rencana dukungan bantuan logistik kewilayahan', '10', 1),
(116, 'C9', 10, 'Apakah Aster melaksanakan tugas pokok sesuai dengan fungsi tugas teritorial.', '9', 1),
(117, 'C9', 5, 'Apakah Aster membantu panglima dalam pembinaan pertimbangan aspek teritorial yang berkaitan dalam pelaksanaan operasi', '5', 1),
(118, 'C9', 5, 'Apakah Aster memahami saran dan masukan kepada Panglima berkaitan dengan pembinaan yang terjadi dari faktor Ipoleksosbud yang dapat mempengaruhi keberhasilan tugas ', '5', 1),
(119, 'C9', 10, 'Apakah Aster membuat Data KBA, Geografi, Demografi, Politik, Tokoh – Tokoh Formal dan Informal.', '9', 1),
(120, 'C9', 5, 'Apakah Aster membuat Peta Geografi, Demografi dan politik.', '4', 1),
(121, 'C9', 5, 'Apakah Aster berusaha mencari data dan brosur-brosur tentang Teritorial kepada Satuan Atas maupun Kowil.', '4', 1),
(122, 'C9', 5, 'Apakah Aster berusaha menggunakan badan-badan pengumpul keterangan yang ada di kesatuan.', '4', 1),
(123, 'C9', 10, 'Apakah Aster mempersiapkan:a. Buku Harianb. Lembaran Kerjac. Peta – peta yang diperlukan.', '10', 1),
(124, 'C9', 5, 'Apakah Aster mengelola keterangan yang diterima untuk kepentingan Panglima.', '4', 1),
(125, 'C9', 5, 'Apakah Aster berusaha memberikan keterangan yang diperlukan oleh Pa Staf lain untuk keberhasilan tugas.', '4', 1),
(126, 'C9', 5, 'Apakah Aster  bekerja sama dengan aparat terkait untuk memanfaatkan wilayah baik SDM,SDA maupun sumber daya penting lainya guna keberhasilan tugas.', '3', 1),
(127, 'C9', 5, 'Apakah Aster memberikan saran tepat pada waktu yang telah ditentukan.', '4', 1),
(128, 'C9', 5, 'Apakah Aster mengikuti perkembangan secara  terus menerus dan memberikannya kepada Panglima dalam menghadapi situasi kritis.', '3.4', 1),
(129, 'C9', 5, 'Apakah Aster menganalisa kemungkinan ancaman dibidang teritorial di wilayah operasi yang diperkirakan akan mempengaruhi pelaksanaan tugas pokok.', '4', 1),
(130, 'C9', 5, 'Apakah Aster memberikan keterangan bidang teritorial pada Staf Ops dalam rangka membuat RO.', '4', 1),
(131, 'C9', 5, 'Apakah Aster membuat produk tertulis berupa:    a. ATS    b. Analisa CB Staf teritorial.    c. Rencana bantuan teritorial.', '5.5', 1),
(132, 'C9', 5, 'Apakah Aster ikut aktif mengawasi pelaksanaan perintah Panglima oleh Satwah.', '3', 1),
(133, 'C10', 10, 'Apakah Asren  menganalisa tugas sesuai bidang tugasnya.', '9', 1),
(134, 'C10', 5, 'Apakah Asren menyiapkan dan mengkoordinasikan kebutuhan RO  untuk mendukung tugas Kogasgabpad.', '5', 1),
(135, 'C10', 10, 'Apakah Asren menyiapkan RO sebagai dasar kegiatan untuk mendukung operasi di masa datang .', '8', 1),
(136, 'C10', 5, 'Apakah Asren merencanakan kebutuhan dan kesiapan kekuatan dan mengkoordinasikan rencana penggelaran sesuai CB terpilih.', '4', 1),
(137, 'C10', 5, 'Apakah Asren melaksanakan koordinasi dan mengkaji masukan bagi perencanaan waktu penggelaran.', '4', 1),
(138, 'C10', 5, 'Apakah Asren berkoordinasi dengan staf personel  untuk memastikan tindakan militer dan politik sejalan dengan pandangan strategi dan politik nasional.', '4', 1),
(139, 'C10', 5, 'Apakah Asren ikut berpartisipasi dalam pengembangan Rule Of Engagemen (ROE).', '4', 1),
(140, 'C10', 10, 'Apakah Asren membuat parameter untuk Operasi yang sedang berlangsung. ', '8', 1),
(141, 'C10', 5, 'Apakah Asren menetapkan waktu pengambilan keputusan untuk memberi peluang lebih luas bagi pelaksanaan RO.', '4', 1),
(142, 'C10', 10, 'Apakah Asren mengantisipasi situasi taktis dan operasional  yang menguntungkan, resiko dan saran untuk mendukung Rencana Pelibatan (ROE).', '9', 1),
(143, 'C10', 5, 'Apakah Asren melaksanakan sinkronisasi seluruh kekuatan untuk mendukung setiap CB terpilih.', '4', 1),
(144, 'C10', 5, 'Apakah Asren memperhatikan dengan seksama hubungan komando dengan Komando Atasan, Komando Bawahan ataupun Komando yang setingkat.', '4', 1),
(145, 'C10', 10, 'Apakah Asren merencanakan dan menentukan tugas khusus serta menentukan  wilayah operasi.', '8', 1),
(146, 'C10', 10, 'Apakah Asren membuat produk tertuis berupa:    a. ATS.    b. Analisa CB Asren    c. Renbut kuat.    d. Renbut Ops.', '9.9', 1),
(147, 'C11', 5, 'Apakah Askomlek  menganalisa tugas sesuai fungsi bidang tugasnya', '5', 1),
(148, 'C11', 5, 'Apakah Askomlek mempersiapkan dan mencatat semua berita sesuai bidangnya pada buku harian, lembar kerja dan mengolah data berita tersebut.', '5', 1),
(149, 'C11', 5, 'Apakah Askomlek mencari keterangan dari :\r\na. Satuan  Atas.\r\nb. Satuan Samping.\r\nc. Satuan Bawah.', '5', 1),
(150, 'C11', 5, 'Apakah Askomlek memberi saran kepada Panglima tentang kemampuan dukungan dibidang komlek yang dapat mempengauhi CB / pelaksanan tugas Kogasgabpad.', '4', 1),
(151, 'C11', 5, 'Apakah Askomlek mengikuti perkembangan keadaan komlek di satuannya.', '4', 1),
(152, 'C11', 5, 'Apakah Askomlek berusaha mengerti akan  isi Jukcan Panglima.', '4', 1),
(153, 'C11', 5, 'Apakah Askomlek dapat mengembangkan Jukcan Panglima sesuai bidang tugasnya', '4', 1),
(154, 'C11', 5, 'Apakah Askomlek mengadakan koordinasi dengan Staf lainnya sebelum membuat ATS', '4', 1),
(155, 'C11', 5, 'Apakah Askomlek berusaha memberikan keterangan tentang komlek kepada Staf lainnya.', '4', 1),
(156, 'C11', 5, 'Apakah Askomlek dapat menyampaikan saran kepada Panglima tepat pada waktunya.', '4', 1),
(157, 'C11', 10, 'Apakah Askomlek membantu Staf Ops membuat lampiran rencana komlek, serta Sub lampirannya ', '8', 1),
(158, 'C11', 5, 'Apakah Askomlek merawat dan membekali pasukan sehingga menjamin kemungkinan unsur kekuatan manuver secara leluasa melaksanakan konsepsi pelaksanaan tupoknya.', '4', 1),
(159, 'C11', 5, 'Apakah Askomlek mengkoordinasikan semua fungsi komlek dan ketentuan-ketentuan komlek dan pertahankan seluruh aset yang dimiliki', '4', 1),
(160, 'C11', 5, 'Apakah Askomlek memformulasikan dan menentukan ketentuan-ketentuan tentang komlek yang berkelanjutan untuk perencanaan dan pelaksanan kebijakan komlek Kogasgabpad.', '4', 1),
(161, 'C11', 5, 'Apakah Askomlek mengembangkan lampiran komlek pada RO ', '4', 1),
(162, 'C11', 5, 'Apakah Askomlek mengkoordinasikan secara umum dengan satuan penyiap komlek, satuan tugas yang menyokong dukungan komlek, bantuan pembekalan sesuai dengan perintah penugasan dalam lampiran (Komlek pada RO)', '4', 1),
(163, 'C11', 5, 'Apakah Askomlek mengkoordinasikan bantuan dan pembekalan angkatan, pengadaan dan pengendalian setempat (lokal) dan mengalokasikan fasilitas daerah setempat. ', '3.9', 1),
(164, 'C11', 10, 'Apakah Askomlek membuat produk tertulis berupa:    a. ATS    b. Analisa CB Staf Komlek    c. Rencana Komlek (Rencana Komlek)    d. Sub lampiran matrik dukungan pelayanan Komlek', '10', 1),
(166, 'C12-P', 20, 'Tanggung Jawab\r\n', '16.98', 1),
(167, 'C12-P', 20, 'KERJA SAMA', '16.98', 1),
(168, 'C12-P', 20, 'PARTISIPASI', '16.98', 1),
(169, 'C12-P', 20, 'PENGMATERI', '16.98', 1),
(170, 'C12-P', 20, 'PUAN PENDAPAT', '16.98', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(50) NOT NULL,
  `username` char(50) NOT NULL,
  `password` char(50) NOT NULL,
  `level` enum('1','2','3','4') NOT NULL,
  `akses` text NOT NULL,
  `akses_kelompok` text NOT NULL,
  `id_anggota` int(11) DEFAULT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama_user`, `username`, `password`, `level`, `akses`, `akses_kelompok`, `id_anggota`, `status`) VALUES
(1, 'Sekretaris', 'sekretaris', '67ccb39f0ec81c363d058774c2a1598d', '2', '', '2', NULL, '1'),
(2, 'Kolat', 'kolat', '67ccb39f0ec81c363d058774c2a1598d', '2', '[{\"value\":\"1\"},{\"value\":\"2\"},{\"value\":\"3\"}]', '[{\"value\":\"KOGASGABPAD A\"}]', NULL, '1'),
(3, 'Ruangan', 'ruangan', '67ccb39f0ec81c363d058774c2a1598d', '2', '[{\"value\":\"4\"}]', '[{\"value\":\"KOGASGABPAD A\"},{\"value\":\"KOGASGABPAD C\"}]', NULL, '1'),
(11, 'admin', 'admin', '580097c0183509887837571145ccc3ad', '1', '', '', NULL, '1'),
(12, 'Dany Rakca Andalasawan, S.A.P.', '1920031270470', '67ccb39f0ec81c363d058774c2a1598d', '2', '[{\"value\":\"4\"}]', '[{\"value\":\"KOGASGABPAD A\"}]', NULL, '1'),
(13, 'Binsar P. Nainggolan, S.E.', '11452/P', '67ccb39f0ec81c363d058774c2a1598d', '2', '[{\"value\":\"4\"}]', '[{\"value\":\"KOGASGABPAD A\"}]', NULL, '1'),
(14, 'Wawan Tjahjono, S.H., M.M.', '32718', '67ccb39f0ec81c363d058774c2a1598d', '2', '[{\"value\":\"4\"}]', '[{\"value\":\"KOGASGABPAD B\"}]', NULL, '1'),
(15, 'Elistar Silaen, S.T.', '520254', '67ccb39f0ec81c363d058774c2a1598d', '2', '[{\"value\":\"4\"}]', '[{\"value\":\"KOGASGABPAD B\"}]', NULL, '1'),
(16, 'I.B.K. Swagata P, S.T.', '510418', '67ccb39f0ec81c363d058774c2a1598d', '2', '[{\"value\":\"4\"}]', '[{\"value\":\"KOGASGABPAD C\"}]', NULL, '1'),
(17, 'Wahyu Eko Purnomo', '11930085860670', '67ccb39f0ec81c363d058774c2a1598d', '2', '[{\"value\":\"4\"}]', '[{\"value\":\"KOGASGABPAD C\"}]', NULL, '1'),
(18, 'Hari Rahardjanto, S.Sos.', '1930082060671', '67ccb39f0ec81c363d058774c2a1598d', '2', '[{\"value\":\"4\"}]', '[{\"value\":\"KOGASGABPAD D\"}]', NULL, '1'),
(19, 'Bonifasius G. Andjioe, S.T., M.A.P.', '10759/P', '67ccb39f0ec81c363d058774c2a1598d', '2', '[{\"value\":\"4\"}]', '[{\"value\":\"KOGASGABPAD D\"}]', NULL, '1'),
(20, 'Sumantri', '10791/P', '67ccb39f0ec81c363d058774c2a1598d', '2', '[{\"value\":\"4\"}]', '[{\"value\":\"KOGASGABPAD E\"}]', NULL, '1'),
(21, 'Djonne Ricky Lumintang, S.Sos.', '11940017620471', '67ccb39f0ec81c363d058774c2a1598d', '2', '[{\"value\":\"4\"}]', '[{\"value\":\"KOGASGABPAD E\"}]', NULL, '1'),
(22, 'Imam Suyudi', '9277/P', '67ccb39f0ec81c363d058774c2a1598d', '2', '[{\"value\":\"4\"}]', '[{\"value\":\"KOGASGABPAD F\"}]', NULL, '1'),
(23, 'Antoninho Rangel Dasilva, S.I.P.', '1920024670668', '67ccb39f0ec81c363d058774c2a1598d', '2', '[{\"value\":\"4\"}]', '[{\"value\":\"KOGASGABPAD F\"}]', NULL, '1'),
(24, 'Eriyawan, S.E.', ' 9620/P', '67ccb39f0ec81c363d058774c2a1598d', '2', '[{\"value\":\"4\"}]', '[{\"value\":\"KOGASGABPAD G\"}]', NULL, '1'),
(25, 'Hendro Arif H, S.Sos.', '520303', '67ccb39f0ec81c363d058774c2a1598d', '2', '[{\"value\":\"4\"}]', '[{\"value\":\"KOGASGABPAD G\"}]', NULL, '1'),
(26, 'Bambang Eko Pratolo, S.E., M.Tr (Han)', '32776', '67ccb39f0ec81c363d058774c2a1598d', '2', '[{\"value\":\"4\"}]', '[{\"value\":\"KOGASGABPAD H\"}]', NULL, '1'),
(27, 'Wahyu Endriawan, S.H., M.H.', '11899/P', '67ccb39f0ec81c363d058774c2a1598d', '2', '[{\"value\":\"4\"}]', '[{\"value\":\"KOGASGABPAD H\"}]', NULL, '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aktivitas`
--
ALTER TABLE `aktivitas`
  ADD PRIMARY KEY (`id_aktivitas`),
  ADD KEY `id_kelompok` (`id_kelompok`),
  ADD KEY `id_kelompok_2` (`id_kelompok`),
  ADD KEY `id_ceklis` (`id_ceklis`);

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_anggota`),
  ADD KEY `id_pangkat` (`id_pangkat`),
  ADD KEY `id_kelompok` (`id_kelompok`),
  ADD KEY `id_jabatan` (`id_jabatan`);

--
-- Indexes for table `ceklis`
--
ALTER TABLE `ceklis`
  ADD PRIMARY KEY (`id_ceklis`),
  ADD UNIQUE KEY `id_ceklis` (`id_ceklis`);

--
-- Indexes for table `detail_penilaian_kelompok`
--
ALTER TABLE `detail_penilaian_kelompok`
  ADD PRIMARY KEY (`id_detail_penilaian_kelompok`),
  ADD KEY `id_penilaian_kelompok` (`id_penilaian_kelompok`),
  ADD KEY `id_soal_kelompok` (`id_soal_kelompok`),
  ADD KEY `id_kelompok` (`id_kelompok`),
  ADD KEY `id_ceklis` (`id_ceklis`);

--
-- Indexes for table `detail_penilaian_perorangan`
--
ALTER TABLE `detail_penilaian_perorangan`
  ADD PRIMARY KEY (`id_detail_penilaian_perorangan`),
  ADD KEY `id_penilaian_perorangan` (`id_penilaian_perorangan`),
  ADD KEY `id_soal_perorangan` (`id_soal_perorangan`),
  ADD KEY `id_anggota` (`id_anggota`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indexes for table `kelompok`
--
ALTER TABLE `kelompok`
  ADD PRIMARY KEY (`id_kelompok`);

--
-- Indexes for table `pangkat`
--
ALTER TABLE `pangkat`
  ADD PRIMARY KEY (`id_pangkat`);

--
-- Indexes for table `penilaian_kelompok`
--
ALTER TABLE `penilaian_kelompok`
  ADD PRIMARY KEY (`id_penilaian_kelompok`),
  ADD KEY `id_kelompok` (`id_kelompok`),
  ADD KEY `id_ceklis` (`id_ceklis`);

--
-- Indexes for table `penilaian_perorangan`
--
ALTER TABLE `penilaian_perorangan`
  ADD PRIMARY KEY (`id_penilaian_perorangan`),
  ADD KEY `id_anggota` (`id_anggota`),
  ADD KEY `id_ceklis` (`id_ceklis`);

--
-- Indexes for table `soal_kelompok`
--
ALTER TABLE `soal_kelompok`
  ADD PRIMARY KEY (`id_soal_kelompok`),
  ADD KEY `id_ceklis` (`id_ceklis`);

--
-- Indexes for table `soal_perorangan`
--
ALTER TABLE `soal_perorangan`
  ADD PRIMARY KEY (`id_soal_perorangan`),
  ADD KEY `id_ceklis` (`id_ceklis`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aktivitas`
--
ALTER TABLE `aktivitas`
  MODIFY `id_aktivitas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id_anggota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=700;

--
-- AUTO_INCREMENT for table `detail_penilaian_kelompok`
--
ALTER TABLE `detail_penilaian_kelompok`
  MODIFY `id_detail_penilaian_kelompok` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `detail_penilaian_perorangan`
--
ALTER TABLE `detail_penilaian_perorangan`
  MODIFY `id_detail_penilaian_perorangan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id_jabatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `kelompok`
--
ALTER TABLE `kelompok`
  MODIFY `id_kelompok` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pangkat`
--
ALTER TABLE `pangkat`
  MODIFY `id_pangkat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `penilaian_kelompok`
--
ALTER TABLE `penilaian_kelompok`
  MODIFY `id_penilaian_kelompok` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `penilaian_perorangan`
--
ALTER TABLE `penilaian_perorangan`
  MODIFY `id_penilaian_perorangan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `soal_kelompok`
--
ALTER TABLE `soal_kelompok`
  MODIFY `id_soal_kelompok` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=214;

--
-- AUTO_INCREMENT for table `soal_perorangan`
--
ALTER TABLE `soal_perorangan`
  MODIFY `id_soal_perorangan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `aktivitas`
--
ALTER TABLE `aktivitas`
  ADD CONSTRAINT `aktivitas_ibfk_1` FOREIGN KEY (`id_ceklis`) REFERENCES `ceklis` (`id_ceklis`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `aktivitas_ibfk_2` FOREIGN KEY (`id_kelompok`) REFERENCES `kelompok` (`id_kelompok`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `anggota`
--
ALTER TABLE `anggota`
  ADD CONSTRAINT `ANGGOTA_ibfk_1` FOREIGN KEY (`id_pangkat`) REFERENCES `pangkat` (`id_pangkat`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ANGGOTA_ibfk_2` FOREIGN KEY (`id_kelompok`) REFERENCES `kelompok` (`id_kelompok`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ANGGOTA_jabatan` FOREIGN KEY (`id_jabatan`) REFERENCES `jabatan` (`id_jabatan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `detail_penilaian_kelompok`
--
ALTER TABLE `detail_penilaian_kelompok`
  ADD CONSTRAINT `DETAIL_CEKLIS` FOREIGN KEY (`id_ceklis`) REFERENCES `ceklis` (`id_ceklis`),
  ADD CONSTRAINT `DETAIL_KELOMPOK` FOREIGN KEY (`id_kelompok`) REFERENCES `kelompok` (`id_kelompok`),
  ADD CONSTRAINT `DETAIL_PENILAIAN_KELOMPOK_ibfk_1` FOREIGN KEY (`id_penilaian_kelompok`) REFERENCES `penilaian_kelompok` (`id_penilaian_kelompok`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `DETAIL_PENILAIAN_KELOMPOK_ibfk_2` FOREIGN KEY (`id_soal_kelompok`) REFERENCES `soal_kelompok` (`id_soal_kelompok`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `detail_penilaian_perorangan`
--
ALTER TABLE `detail_penilaian_perorangan`
  ADD CONSTRAINT `DETAIL_PENILAIAN_PERORANGAN_ibfk_2` FOREIGN KEY (`id_soal_perorangan`) REFERENCES `soal_perorangan` (`id_soal_perorangan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `DETAIL_PENILAIAN_PERORANGAN_ibfk_3` FOREIGN KEY (`id_penilaian_perorangan`) REFERENCES `penilaian_perorangan` (`id_penilaian_perorangan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `penilaian_kelompok`
--
ALTER TABLE `penilaian_kelompok`
  ADD CONSTRAINT `PENILAIAN_KELOMPOK_ibfk_1` FOREIGN KEY (`id_kelompok`) REFERENCES `kelompok` (`id_kelompok`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `PENILAIAN_KELOMPOK_ibfk_2` FOREIGN KEY (`id_ceklis`) REFERENCES `ceklis` (`id_ceklis`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `penilaian_perorangan`
--
ALTER TABLE `penilaian_perorangan`
  ADD CONSTRAINT `PENILAIAN_PERORANGAN_ibfk_2` FOREIGN KEY (`id_anggota`) REFERENCES `anggota` (`id_anggota`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `PENILAIAN_PERORANGAN_ibfk_4` FOREIGN KEY (`id_ceklis`) REFERENCES `ceklis` (`id_ceklis`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `soal_kelompok`
--
ALTER TABLE `soal_kelompok`
  ADD CONSTRAINT `SOAL_KELOMPOK_ibfk_1` FOREIGN KEY (`id_ceklis`) REFERENCES `ceklis` (`id_ceklis`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `soal_perorangan`
--
ALTER TABLE `soal_perorangan`
  ADD CONSTRAINT `SOAL_PERORANGAN_ibfk_1` FOREIGN KEY (`id_ceklis`) REFERENCES `ceklis` (`id_ceklis`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
