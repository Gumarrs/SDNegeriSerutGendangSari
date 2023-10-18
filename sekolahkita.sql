-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Feb 2022 pada 15.31
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sekolahkita`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_agenda`
--

CREATE TABLE `tbl_agenda` (
  `agenda_id` int(11) NOT NULL,
  `agenda_nama` varchar(200) DEFAULT NULL,
  `agenda_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `agenda_deskripsi` text DEFAULT NULL,
  `agenda_mulai` date DEFAULT NULL,
  `agenda_selesai` date DEFAULT NULL,
  `agenda_tempat` varchar(90) DEFAULT NULL,
  `agenda_waktu` varchar(30) DEFAULT NULL,
  `agenda_keterangan` varchar(200) DEFAULT NULL,
  `agenda_author` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_agenda`
--

INSERT INTO `tbl_agenda` (`agenda_id`, `agenda_nama`, `agenda_tanggal`, `agenda_deskripsi`, `agenda_mulai`, `agenda_selesai`, `agenda_tempat`, `agenda_waktu`, `agenda_keterangan`, `agenda_author`) VALUES
(2, 'Pembinaan Guru di Disdikpora,guna meningkatkan mutu pembelajaran', '2017-01-22 06:26:33', 'pelatihan guna meningkatkan mutu sstaff pengajar Sekolah Dasar Negeri Serut', '0000-00-00', '0000-00-00', 'Seklah Dasar Serut', '07.30 - 12.00 WIB', 'pelatihan guru,dilaksanakan di sekolah dasar serut', 'SDN Serut'),
(3, 'KEGIATAN SORE AWAL TAHUN PELAJARAN 2018/2019', '2017-01-22 06:29:49', 'Berikut kami sampaikan agenda kegiatan sore awal tahun pelajaran 2018/2019', '2021-08-12', '2021-08-22', 'Sekolah Dasar Negeri Serut', '07.30 - 12.00 WIB', 'KEGIATAN SORE AWAL TAHUN PELAJARAN 2021', 'Sekolah Serut'),
(4, 'Sosilisasi Sekolah menegah Pertama', '2020-05-02 12:28:14', 'sosialisasi Untuk masuk kedalam sekolah dasar SMP,untuk kelas 6', '2021-05-02', '2021-05-02', 'Sekolah Dasar Negeri Serut', '08.00 - 11.00 WIB', 'sosialisasi bertujuan untuk memudahkan peserta didik masuk ke SMP', 'Sekolah Serut'),
(5, 'PENYULUHAN PSIKOLOGI REMAJA SISWA SISWI', '2020-05-02 12:28:41', 'Dalam rangka memperkuat perkembangan pribadi yang baik, dan antisipasi dari segala bentuk penyimpangan, semua siswa SMP N 4 Pakem mengikuti kegiatan penyuluhan perkembangan remaja. Kegiatan ini dilaksanakan Jumat, 7 Desember 2018 bertempat di ruang A1, diikuti oleh semua siswa kelas 7,8 dan 9.', '2021-05-02', '2021-05-02', 'SDN Serut', '08.00 - 11.00 WIB', 'Dalam rangka memperkuat perkembangan pribadi yang baik, dan antisipasi dari segala bentuk penyimpangan, semua siswa SMP N 4 Pakem mengikuti kegiatan penyuluhan perkembangan remaja. Kegiatan ini dilaks', 'SDN Serut'),
(6, 'pelatihan pembalajaran secara daring kepada siswa siswai Sekolah Dasar Negeri Serut', '2020-05-02 12:29:05', 'pelatihan bertujuan untuk mempermudah pembelajaran daring', '2021-01-12', '2021-01-12', 'SDN Serut', '08.00 - 11.00 WIB', 'dengan dampak covid 19 pembelajaran dilakukan secara daring', 'Sekolah Serut'),
(8, 'PENGUATAN KARAKTER DI SEKOLAH MELALUI PERMAINAN TRADISIONAL', '2020-05-02 12:30:15', 'Suasana riuh  sorak sorai, penuh tepuk tangan dan gelak tawa. Itulah suasana  pagi hingga siang pada Kamis, 6 Desember 2018 di SMP Negeri 4 Pakem.  Berbeda dengan hari hari biasanya,  sehari setelah selesai pelaksanaan penilaian akhir semester (PAS) ganjil tahun ajaran 2018/2019 guru, karyawan dan siswa bermain, barcanda tawa sambil berolahraga bersama', '2021-05-02', '2021-05-02', 'SDN Serut', '08.00 - 11.00 WIB', 'Suasana riuh  sorak sorai, penuh tepuk tangan dan gelak tawa. Itulah suasana  pagi hingga siang pada Kamis, 6 Desember 2018 di SMP Negeri 4 Pakem.  Berbeda dengan hari hari biasanya,  sehari setelah s', 'Sekolah Serut');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_album`
--

CREATE TABLE `tbl_album` (
  `album_id` int(11) NOT NULL,
  `album_nama` varchar(50) DEFAULT NULL,
  `album_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `album_pengguna_id` int(11) DEFAULT NULL,
  `album_author` varchar(60) DEFAULT NULL,
  `album_count` int(11) DEFAULT 0,
  `album_cover` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_album`
--

INSERT INTO `tbl_album` (`album_id`, `album_nama`, `album_tanggal`, `album_pengguna_id`, `album_author`, `album_count`, `album_cover`) VALUES
(1, 'Kegiatan Pramuka', '2016-09-08 13:00:55', 1, 'SDN Serut', 4, '75c83c182cb04f10cf87726f81325881.jpg'),
(3, 'Kegiatan OSIS', '2017-01-21 01:58:16', 1, 'SDN Serut', 3, 'ed8144a89911eff2877be48011658074.jpg'),
(4, 'Foto Kegiatan Siswa Sekolah', '2017-01-24 01:31:13', 1, 'SDN Serut', 7, '6ae7878af7540e1ba50ccafbc7202d30.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_files`
--

CREATE TABLE `tbl_files` (
  `file_id` int(11) NOT NULL,
  `file_judul` varchar(120) DEFAULT NULL,
  `file_deskripsi` text DEFAULT NULL,
  `file_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `file_oleh` varchar(60) DEFAULT NULL,
  `file_download` int(11) DEFAULT 0,
  `file_data` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_files`
--

INSERT INTO `tbl_files` (`file_id`, `file_judul`, `file_deskripsi`, `file_tanggal`, `file_oleh`, `file_download`, `file_data`) VALUES
(2, 'Dasar-dasar CSS', 'Modul dasar-dasar CSS 3. Modul ini membantu anda untuk memahami struktur dasar CSS', '2021-01-23 04:30:01', 'Drs. Joko', 0, 'ab9a183ff240deadbedaff78e639af2f.pdf'),
(3, '14 Teknik Komunikasi Yang Paling Efektif', 'Ebook 14 teknik komunikasi paling efektif membantu anda untuk berkomunikasi dengan baik dan benar', '2021-01-23 15:26:06', 'Drs. Joko', 0, 'ab2cb34682bd94f30f2347523112ffb9.pdf'),
(4, 'Bagaimana Membentuk Pola Pikir yang Baru', 'Ebook ini membantu anda membentuk pola pikir baru.', '2021-01-23 15:27:07', 'Drs. Joko', 0, '30f588eb5c55324f8d18213f11651855.pdf'),
(5, '7 Tips Penting mengatasi Kritik', '7 Tips Penting mengatasi Kritik', '2017-01-23 15:27:44', 'Drs. Joko', 0, '329a62b25ad475a148e1546aa3db41de.docx'),
(6, '8 Racun dalam kehidupan kita', '8 Racun dalam kehidupan kita', '2017-01-23 15:28:17', 'Drs. Joko', 0, '8e38ad4948ba13758683dea443fbe6be.docx'),
(7, 'Jurnal Teknolgi Informasi', 'Jurnal Teknolgi Informasi', '2017-01-25 03:18:53', 'Gunawan, S.Pd', 0, '87ae0f009714ddfdd79e2977b2a64632.pdf'),
(8, 'Jurnal Teknolgi Informasi 2', 'Jurnal Teknolgi Informasi', '2017-01-25 03:19:22', 'Gunawan, S.Pd', 0, 'c4e966ba2c6e142155082854dc5b3602.pdf'),
(9, 'Naskah Publikasi IT', 'Naskah Teknolgi Informasi', '2017-01-25 03:21:04', 'Gunawan, S.Pd', 0, '71380b3cf16a17a02382098c028ece9c.pdf'),
(10, 'Modul Teknologi Informasi', 'Modul Teknologi Informasi', '2017-01-25 03:22:08', 'Gunawan, S.Pd', 0, '029143a3980232ab2900d94df36dbb0c.pdf'),
(11, 'Modul Teknologi Informasi Part II', 'Modul Teknologi Informasi', '2017-01-25 03:22:54', 'Gunawan, S.Pd', 0, 'ea8f3f732576083156e509657614f551.pdf'),
(12, 'Modul Teknologi Informasi Part III', 'Modul Teknologi Informasi', '2017-01-25 03:23:21', 'Gunawan, S.Pd', 0, 'c5e5e7d16e4cd6c3d22c11f64b0db2af.pdf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_galeri`
--

CREATE TABLE `tbl_galeri` (
  `galeri_id` int(11) NOT NULL,
  `galeri_judul` varchar(60) DEFAULT NULL,
  `galeri_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `galeri_gambar` varchar(40) DEFAULT NULL,
  `galeri_album_id` int(11) DEFAULT NULL,
  `galeri_pengguna_id` int(11) DEFAULT NULL,
  `galeri_author` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_galeri`
--

INSERT INTO `tbl_galeri` (`galeri_id`, `galeri_judul`, `galeri_tanggal`, `galeri_gambar`, `galeri_album_id`, `galeri_pengguna_id`, `galeri_author`) VALUES
(4, 'Diskusi Pemilihan Ketua Osis', '2021-01-21 14:04:53', '5f8436e2c30570dfe2114f05af5e9215.jpg', 3, 1, 'SDN Serut'),
(5, 'Panitia Pemilu Osis', '2021-01-22 04:13:20', '504cd9e83e047becee6ec32e4af7e534.jpg', 3, 1, 'SDN Serut'),
(6, 'Proses Pemilu Osis', '2021-01-22 04:13:43', '83f7e70d0f89f2d8a7695e5f7059418f.jpg', 3, 1, 'SDN Serut'),
(7, 'Belajar dengan native speaker', '2021-01-24 01:26:22', 'd884f7fe18efebd07d7725ecf3bf3481.jpg', 1, 1, 'SDN Serut'),
(8, 'Diskusi dengan native speaker', '2021-01-24 01:27:05', 'f652521a6c283c2df9da808cc4aae1c6.jpg', 1, 1, 'SDN Serut'),
(9, 'Foto bareng native speaker', '2021-01-24 01:27:28', '69fc9bf961e3aac2fc79af00922b3933.png', 1, 1, 'SDN Serut'),
(11, 'Foto bareng native speaker', '2021-01-24 01:28:54', 'f92d6de4457a33e5a1d957b0e3d20335.jpg', 1, 1, 'SDN Serut'),
(12, 'Belajar sambil bermain', '2017-01-24 01:31:42', '5e3c09430ba03b2e60de6c06c6dbafec.jpg', 4, 1, 'SDN Serut'),
(13, 'Belajar sambil bermain', '2021-01-24 01:31:55', 'e4d51d428be01628693b4bff4e453463.jpg', 4, 1, 'SDN Serut'),
(14, 'Belajar komputer programming', '2021-01-24 01:32:24', '0f616fa6255e6989ac28269c95caa2e6.jpg', 4, 1, 'SDN Serut'),
(15, 'Belajar hidup bersih', '2021-01-24 01:32:34', '0293179010cfc18875a7658262c77bfa.jpg', 4, 1, 'SDN Serut'),
(16, 'Belajar bermain tradisonal', '2021-01-24 01:32:44', '9090fbac7eaef61e440a6967fc36ccf0.jpg', 4, 1, 'SDN Serut'),
(17, 'Belajar sambil bermain', '2021-01-24 01:33:08', '41e98d8606e0b73379323f801abaede4.jpg', 4, 1, 'SDN Serut'),
(18, 'lomba futsal sekolah dasar se kabupaten gunung kidul tingkat', '2021-01-24 01:33:24', 'beb6a043072ae3393c8f2884d44daa3c.jpg', 4, 1, 'SDN Serut');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_guru`
--

CREATE TABLE `tbl_guru` (
  `guru_id` int(11) NOT NULL,
  `guru_nip` varchar(30) DEFAULT NULL,
  `guru_nama` varchar(70) DEFAULT NULL,
  `guru_jenkel` varchar(2) DEFAULT NULL,
  `guru_tmp_lahir` varchar(80) DEFAULT NULL,
  `guru_tgl_lahir` varchar(80) DEFAULT NULL,
  `guru_mapel` varchar(120) DEFAULT NULL,
  `guru_photo` varchar(40) DEFAULT NULL,
  `guru_tgl_input` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_guru`
--

INSERT INTO `tbl_guru` (`guru_id`, `guru_nip`, `guru_nama`, `guru_jenkel`, `guru_tmp_lahir`, `guru_tgl_lahir`, `guru_mapel`, `guru_photo`, `guru_tgl_input`) VALUES
(1, '-', ' muh ttaufan,S.Pd.', 'L', 'gunungkidul', '25 September 1990', 'b.indonesia', '87e8841e1a08eddb0d9e8db97b4acba3.png', '2017-01-26 07:49:43'),
(2, '927482658274981', 'Mei Indri, S.Pd', 'P', 'Purwokerto', '25 Juni 1994', 'IPS', '792ef9e0267a1b021c9b99763a980a0b.jpg', '2017-01-26 13:38:54'),
(3, '-', 'Lasmiadi,S.Ag', 'L', 'gedangsari', '15 Desember 1986', 'Agama', '20e9423d1cef3fd8237ea0f71096bee7.jpg', '2017-01-26 13:41:20'),
(4, '-', 'Fury Ismaya, S.Pd', 'P', 'wonosari', '15 Desember 1985', 'pendidikan kewarganegaraan', 'be9489112579e952656cf0ba7d73b67c.jpg', '2017-01-26 13:42:08'),
(5, '-', 'Arneta Dwi Safitri, M. Pd.', 'P', 'sleman', '15 Desember 1990', 'Fisika', '0a4786f86ab53f8673ceaa89d8efb74e.jpg', '2017-01-26 13:42:48'),
(6, '-', 'Rachmaningtiyas Wietda Ayu Nirmandini, S.Pd.', 'P', 'Bandung', '06 agustus 1993', 'Matematika', 'd3695c50331655df827d16f4ec579b4d.jpg', '2017-01-26 13:43:46'),
(7, '-', 'dwi suryo, S.Pd., M.Sc.', 'L', 'Sleman', '15 Desember 1980', 'Bahasa Inggris', 'e2ed990a94d9b28f0e5fad1b0418e4d7.jpg', '2017-01-26 13:45:11'),
(8, '-', 'Asrini Yuli Wahyuni,Spd', 'P', 'Pmagelang', '15 maret 1996', 'Olahraga', '9377ebd79175637ef19871eb8dde4e33.jpg', '2017-01-27 04:28:23'),
(9, '-', 'Windy Mazaya Amalina', 'P', 'Purwokerto', '21 JANUARI 1993', 'IPA', '1d3b877f1619db4e2fd883a2aff15b09.jpg', '2020-05-01 21:18:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_inbox`
--

CREATE TABLE `tbl_inbox` (
  `inbox_id` int(11) NOT NULL,
  `inbox_nama` varchar(40) DEFAULT NULL,
  `inbox_email` varchar(60) DEFAULT NULL,
  `inbox_kontak` varchar(20) DEFAULT NULL,
  `inbox_pesan` text DEFAULT NULL,
  `inbox_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `inbox_status` int(11) DEFAULT 1 COMMENT '1=Belum dilihat, 0=Telah dilihat'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_inbox`
--

INSERT INTO `tbl_inbox` (`inbox_id`, `inbox_nama`, `inbox_email`, `inbox_kontak`, `inbox_pesan`, `inbox_tanggal`, `inbox_status`) VALUES
(2, 'M Fikri Setiadi', 'fikrifiver97@gmail.com', '-', 'Ping !', '2017-06-21 03:44:12', 0),
(3, 'M Fikri Setiadi', 'fikrifiver97@gmail.com', '-', 'Ini adalah pesan ', '2017-06-21 03:45:57', 0),
(5, 'M Fikri Setiadi', 'fikrifiver97@gmail.com', '-', 'Ping !', '2017-06-21 03:53:19', 0),
(7, 'M Fikri Setiadi', 'fikrifiver97@gmail.com', '-', 'Hi, there!', '2017-07-01 07:28:08', 0),
(8, 'M Fikri', 'fikrifiver97@gmail.com', '084375684364', 'Hi There, Would you please help me about register?', '2018-08-06 13:51:07', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(30) DEFAULT NULL,
  `kategori_tanggal` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`kategori_id`, `kategori_nama`, `kategori_tanggal`) VALUES
(1, 'Pendidikan', '2021-09-06 05:49:04'),
(2, 'Politik', '2021-09-06 05:50:01'),
(3, 'Sains', '2021-09-06 05:59:39'),
(5, 'Penelitian', '2021-09-06 06:19:26'),
(6, 'Prestasi', '2021-09-07 02:51:09'),
(13, 'Olah Raga', '2021-01-13 13:20:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kelas`
--

CREATE TABLE `tbl_kelas` (
  `kelas_id` int(11) NOT NULL,
  `kelas_nama` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kelas`
--

INSERT INTO `tbl_kelas` (`kelas_id`, `kelas_nama`) VALUES
(1, 'Kelas 5'),
(2, 'Kelas 6'),
(3, 'Kelas 5'),
(4, 'Kelas 4'),
(5, 'Kelas 6'),
(6, 'Kelas 5'),
(7, 'Kelas 6'),
(8, 'Kelas 5'),
(9, 'Kelas 5'),
(10, 'Kelas 5'),
(11, 'Kelas 4'),
(12, 'Kelas 5'),
(13, 'Kelas 6'),
(14, 'Kelas 5'),
(15, 'Kelas 5'),
(16, 'Kelas 5'),
(17, 'Kelas 5'),
(18, 'Kelas 5'),
(19, 'Kelas 5'),
(20, 'Kelas 4'),
(21, 'Kelas 6'),
(22, 'Kelas 5');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_komentar`
--

CREATE TABLE `tbl_komentar` (
  `komentar_id` int(11) NOT NULL,
  `komentar_nama` varchar(30) DEFAULT NULL,
  `komentar_email` varchar(50) DEFAULT NULL,
  `komentar_isi` varchar(120) DEFAULT NULL,
  `komentar_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `komentar_status` varchar(2) DEFAULT NULL,
  `komentar_tulisan_id` int(11) DEFAULT NULL,
  `komentar_parent` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_komentar`
--

INSERT INTO `tbl_komentar` (`komentar_id`, `komentar_nama`, `komentar_email`, `komentar_isi`, `komentar_tanggal`, `komentar_status`, `komentar_tulisan_id`, `komentar_parent`) VALUES
(1, 'M Fikri', 'fikrifiver97@gmail.com', ' Nice Post.', '2018-08-07 15:09:07', '1', 24, 0),
(2, 'M Fikri Setiadi', 'fikrifiver97@gmail.com', ' Awesome Post', '2018-08-07 15:14:26', '1', 24, 0),
(3, 'Joko', 'joko@gmail.com', 'Thank you.', '2018-08-08 03:54:56', '1', 24, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_log_aktivitas`
--

CREATE TABLE `tbl_log_aktivitas` (
  `log_id` int(11) NOT NULL,
  `log_nama` text DEFAULT NULL,
  `log_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `log_ip` varchar(20) DEFAULT NULL,
  `log_pengguna_id` int(11) DEFAULT NULL,
  `log_icon` blob DEFAULT NULL,
  `log_jenis_icon` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_mapel`
--

CREATE TABLE `tbl_mapel` (
  `id_mapel` int(11) NOT NULL,
  `nama_mapel` varchar(100) NOT NULL,
  `keterangan_mapel` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_mapel`
--

INSERT INTO `tbl_mapel` (`id_mapel`, `nama_mapel`, `keterangan_mapel`) VALUES
(2, 'IPA', 'Belajar IPA'),
(3, 'IPS', 'Belajar IPS'),
(4, 'Bahasa Inggris', 'Bahasa Inggris'),
(5, 'Pendidikan Agama Islam', 'Belajar Agama'),
(6, 'Bahasa Indonesia', 'Belajar Bahasa Indonesia'),
(7, 'Pendidikan dan Kewarganegaraan', 'Belajar Bela Negara'),
(8, 'MTK', 'Belajar MTK'),
(9, 'Pendidikan Jasmani dan Kerohanian', 'Belajar Pendidikan Jasmani dan Kerohanian');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengguna`
--

CREATE TABLE `tbl_pengguna` (
  `pengguna_id` int(11) NOT NULL,
  `pengguna_nama` varchar(50) DEFAULT NULL,
  `pengguna_moto` varchar(100) DEFAULT NULL,
  `pengguna_jenkel` varchar(2) DEFAULT NULL,
  `pengguna_username` varchar(30) DEFAULT NULL,
  `pengguna_password` varchar(35) DEFAULT NULL,
  `pengguna_tentang` text DEFAULT NULL,
  `pengguna_email` varchar(50) DEFAULT NULL,
  `pengguna_nohp` varchar(20) DEFAULT NULL,
  `pengguna_facebook` varchar(35) DEFAULT NULL,
  `pengguna_twitter` varchar(35) DEFAULT NULL,
  `pengguna_linkdin` varchar(35) DEFAULT NULL,
  `pengguna_google_plus` varchar(35) DEFAULT NULL,
  `pengguna_status` int(2) DEFAULT 1,
  `pengguna_level` varchar(3) DEFAULT NULL,
  `pengguna_register` timestamp NULL DEFAULT current_timestamp(),
  `pengguna_photo` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pengguna`
--

INSERT INTO `tbl_pengguna` (`pengguna_id`, `pengguna_nama`, `pengguna_moto`, `pengguna_jenkel`, `pengguna_username`, `pengguna_password`, `pengguna_tentang`, `pengguna_email`, `pengguna_nohp`, `pengguna_facebook`, `pengguna_twitter`, `pengguna_linkdin`, `pengguna_google_plus`, `pengguna_status`, `pengguna_level`, `pengguna_register`, `pengguna_photo`) VALUES
(1, 'Sekolah Serut', 'Solusi Informasi Teknolosi', 'L', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Solusi Informasi Teknolosi', 'suryaciptainformatika@gmail.com', '085799696924', '-', '-', '', '', 1, '1', '2020-09-03 06:07:55', 'dcffbd1ad6ae7b98222701364708adb4.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengumuman`
--

CREATE TABLE `tbl_pengumuman` (
  `pengumuman_id` int(11) NOT NULL,
  `pengumuman_judul` varchar(150) DEFAULT NULL,
  `pengumuman_deskripsi` text DEFAULT NULL,
  `pengumuman_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `pengumuman_author` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pengumuman`
--

INSERT INTO `tbl_pengumuman` (`pengumuman_id`, `pengumuman_judul`, `pengumuman_deskripsi`, `pengumuman_tanggal`, `pengumuman_author`) VALUES
(1, 'INFORMASI PERINGATAN HARI PRAMUKA', 'Informasi disampaikan kepada seluruh siswa Sekolah Negeri Serut bahwa pada hari Senin 14 Agustus 2021 upacara / apel hari pramuka. Semua siswa memakai pakaian pramuka lengkap dengan segala atributnya. Jam pelaksanaan upacara / apel seperti biasa tiap hari Senin.', '2021-05-12 01:17:30', 'SDN Serut'),
(2, 'INFORMASI PELAKSANAAN UPACARA PERINGATAN HUT RI KE-76', 'Informasi disampaikan kepada seluruh Siswa Sekolah Dasar Negeri Serut bahwa pada hari Kamis 17 Agustus 2021 upacara dalam rangka HUT RI ke-76. Semua siswa memakai pakaian yang biasa dipakai pada hari senin.  Upacara dimulai pukul 07.00 WIB. Setelah selesai upacara, siswa langsung pulang. Kecuali petugas yang ditunjuk mewakili sekolah di kecamatan.Yang bertempat di Sekolah. Raport diambil oleh orang tua/wali kelas murid masing-masing', '2021-08-17 01:17:30', 'SDN Serut'),
(3, ' NOV 2021  Pengumuman Sekolah INFORMASI UPACARA PERINGATAN HARI PAHLAWAN', 'Informasi disampaikan kepada seluruh Siswa SD Negeri Serut bahwa pada hari Jumat 10 Nopember 2021 upacara peringatan Hari Pahlawan. Tidak ada senam pagi. Semua siswa memakai pakaian pramuka.  Upacara dimulai pukul 06.30 WIB. Informasi mohon disebarluaskan. Terimakasih', '2020-11-10 01:17:30', 'SDN Serut'),
(4, 'PENDATAAN SISWA KELAS 1 BOARDING & REGULER', 'Pengumuman khusus untuk siswa baru kelas 1 CIBI BOARDING & Kelas Reguler Kepada seluruh siswa baru kelas 1 CIBI BOARDING & Kelas Reguler diwajibkan untuk mengisi form pendataan siswa baru. Harap untuk menyiapkan dokumen pendukung sebelum mengisi formulir', '2021-05-02 01:17:30', 'SDN Serut'),
(5, 'PENGUMUMAN UNTUK SISWA KELAS 6', 'Diumumkan kepada seluruh siswa kelas 6Sekolah Dasar Negeri Serut diharapkan hadir di sekolah : Hari /tanggal  : Jumat, 17 Juni 2021 Jam                   : 08.00 WIB Tempat             : Aula depan Untuk cap 3 jari ijazah & mengambil undangan pelepasan siswa kelas 6', '2021-06-17 12:19:09', 'SDN Serut'),
(6, 'PANDUAN KEGIATAN RAMADHAN 1441 H', 'Berikut kami sampaikan panduan kegiatan ramadhan 1441 H , silakan unduh di tautan berikut :\r\n\r\nPANDUAN RAMADHAN 1441 H \r\n\r\nInformasi sekolah terbaru, selalu kunjungi web sekolah!', '2021-05-10 12:19:58', 'SDN Serut'),
(7, 'JADWAL PEMBELAJARAN JARAK JAUH MULAI 29 APRIL- 5 MEI 2020', 'Berikut kami sampaikan jadwal pembelajaran jarak jauh 29 April – 5 Mei 2021 dan  perpanjangan masa belajar dirumah berlaku mulai 29 April  – 16 Mei 2021, silakan unduh di tautan berikut :\r\n\r\nJADWAL PEMBELAJARAN JARAK JAUH 29 APRIL – 5 MEI 2021\r\nINFORMASI PJJ 29 APRIL – 16 MEI 2021\r\nPANDUAN RAMADHAN 1441 H \r\nInformasi sekolah ter-update, selalu kunjungi web sekolah. Terimakasih.', '2021-05-02 12:21:31', 'SDN Serut'),
(8, 'JADWAL BARU PEMBELAJARAN OFFLINE 1 OKTOBER 2021', 'Berikut kami sampaikan jadwal pembelajaran offline berlaku mulai bualan oktober 2021, serta informasi OSOP silakan unduh di tautan berikut :\r\n\r\n>>JADWAL PEMBELAJARAN OFFLINE_ 1 OKTOBER 2021<<\r\n\r\nInformasi sekolah ter-update, selalu kunjungi web sekolah. Terimakasih.', '2021-10-01 12:21:59', 'SDN Serut'),
(9, 'DARMAWISATA', 'akan diadakan kegiatan darma wisata untuk siswa kelas VI,wisatanya ke bali.', '2021-12-17 02:40:36', 'Sekolah Serut');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengunjung`
--

CREATE TABLE `tbl_pengunjung` (
  `pengunjung_id` int(11) NOT NULL,
  `pengunjung_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `pengunjung_ip` varchar(40) DEFAULT NULL,
  `pengunjung_perangkat` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pengunjung`
--

INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES
(930, '2018-08-09 08:04:59', '::1', 'Chrome'),
(931, '2020-04-30 09:24:35', '::1', 'Chrome'),
(932, '2020-04-30 17:03:42', '::1', 'Chrome'),
(933, '2020-04-30 17:17:54', '192.168.43.1', 'Chrome'),
(934, '2020-05-01 18:28:26', '::1', 'Chrome'),
(935, '2020-05-01 21:12:36', '192.168.43.1', 'Chrome'),
(936, '2020-05-02 12:58:12', '192.168.43.22', 'Chrome'),
(937, '2020-05-02 17:19:17', '::1', 'Firefox'),
(938, '2020-05-02 17:41:38', '192.168.43.22', 'Chrome'),
(939, '2020-05-02 18:07:26', '192.168.43.1', 'Chrome'),
(940, '2020-05-03 21:17:35', '::1', 'Chrome'),
(941, '2020-05-04 22:36:09', '::1', 'Chrome'),
(942, '2020-05-05 21:10:13', '::1', 'Chrome'),
(943, '2020-05-05 21:32:53', '192.168.43.1', 'Chrome'),
(944, '2021-11-13 07:34:56', '::1', 'Chrome'),
(945, '2021-11-15 23:30:28', '::1', 'Chrome'),
(946, '2021-11-19 12:38:42', '::1', 'Chrome'),
(947, '2021-11-22 21:50:03', '::1', 'Chrome'),
(948, '2021-11-27 08:13:40', '::1', 'Chrome'),
(949, '2021-11-29 02:30:34', '::1', 'Chrome'),
(950, '2021-11-30 03:42:13', '::1', 'Chrome'),
(951, '2021-12-08 14:37:13', '::1', 'Chrome'),
(952, '2021-12-10 03:09:00', '::1', 'Chrome'),
(953, '2021-12-16 05:47:09', '::1', 'Chrome'),
(954, '2021-12-16 17:43:37', '::1', 'Chrome');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `siswa_id` int(11) NOT NULL,
  `siswa_nis` varchar(20) DEFAULT NULL,
  `siswa_nama` varchar(70) DEFAULT NULL,
  `siswa_jenkel` varchar(2) DEFAULT NULL,
  `siswa_kelas_id` int(11) DEFAULT NULL,
  `siswa_photo` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_siswa`
--

INSERT INTO `tbl_siswa` (`siswa_id`, `siswa_nis`, `siswa_nama`, `siswa_jenkel`, `siswa_kelas_id`, `siswa_photo`) VALUES
(1, '9287482', 'Alvaro Sanchez', 'L', 8, '083d547659a2d4bb15c0322d15955da5.png'),
(2, '9287483', 'Ririn Cantika', 'P', 8, '74eec6ad37550cc12fe8fa83d46878af.jpg'),
(4, '123083', 'Ari Hidayat', 'L', 1, 'e371e67618ad53c99de380782c373023.png'),
(5, '123084', 'Irma Chaiyo', 'P', 1, '1e148b42c71562841ba3018fc97b748a.png'),
(6, '123085', 'Nadila Ginting', 'P', 1, '8125da21f903803b6992214967239ab3.png'),
(7, '123086', 'Anna Marina', 'P', 1, '33eaf3e3faf28a0fe31670c022f641f1.png'),
(8, '123086', 'Dhea Lubis', 'P', 1, '03e651410e969c3c26e8e0d35380470d.png'),
(9, '123087', 'Nadia Ginting', 'P', 1, 'd7823f8d98d376c085aa284a54d63264.png'),
(10, '123088', 'Mita Febrina', 'P', 1, 'eca0280a4a57c911ee68b8318d1e517f.png'),
(11, '123089', 'Elizabeth ', 'P', 1, 'ec1232a08d650bc8c3197c9db95a7fc8.png'),
(12, '123090', 'Della Guswono', 'P', 1, '6c82fce13bb3eff1fd2e897b2c3cfeeb.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_testimoni`
--

CREATE TABLE `tbl_testimoni` (
  `testimoni_id` int(11) NOT NULL,
  `testimoni_nama` varchar(30) DEFAULT NULL,
  `testimoni_isi` varchar(120) DEFAULT NULL,
  `testimoni_email` varchar(35) DEFAULT NULL,
  `testimoni_tanggal` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_tulisan`
--

CREATE TABLE `tbl_tulisan` (
  `tulisan_id` int(11) NOT NULL,
  `tulisan_judul` varchar(100) DEFAULT NULL,
  `tulisan_isi` text DEFAULT NULL,
  `tulisan_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `tulisan_kategori_id` int(11) DEFAULT NULL,
  `tulisan_kategori_nama` varchar(30) DEFAULT NULL,
  `tulisan_views` int(11) DEFAULT 0,
  `tulisan_gambar` varchar(40) DEFAULT NULL,
  `tulisan_pengguna_id` int(11) DEFAULT NULL,
  `tulisan_author` varchar(40) DEFAULT NULL,
  `tulisan_img_slider` int(2) NOT NULL DEFAULT 0,
  `tulisan_slug` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_tulisan`
--

INSERT INTO `tbl_tulisan` (`tulisan_id`, `tulisan_judul`, `tulisan_isi`, `tulisan_tanggal`, `tulisan_kategori_id`, `tulisan_kategori_nama`, `tulisan_views`, `tulisan_gambar`, `tulisan_pengguna_id`, `tulisan_author`, `tulisan_img_slider`, `tulisan_slug`) VALUES
(23, 'lomba Futsal', '<p>Satu tim Sekolah dasar Serut ikut berpartisipasi dalam lomba Futsal yang diselenggarakan oleh kemenpora Daerah Istemewa Yogyakarta, pak hadi menjadi guru olahraga sekaligus pelatih tim Futsal Sekolah Dasar Negeri Serut.</p>\r\n', '2021-07-06 09:24:42', 6, 'Prestasi', 8, 'deeb62a984fcd0be885c16c4c1057abc.jpg', 1, 'Sekolah Serut', 0, 'lomba-futsal'),
(24, 'DUA SISWA SEKOLAH DASAR MENGIKUTI JAMBORE ', '<p>pada pertangahan tahun 2021 Ka Kwarnas mengadakan Jambore se Indonesia,Dua murid sekolah dasar serut mengikuti kegiatan jambore pramuka di prambanan,dua orang siswa itu bernama fitra,dan jaki.</p>\r\n', '2021-11-05 09:24:42', 6, 'Prestasi', 165, '8a304c399894066973488a301d29345f.jpg', 1, 'Sekolah Serut', 0, 'dua-siswa-sekolah-dasar-mengikuti-jambore'),
(25, 'juara cerdas cermat se kabupaten gunung kidul', '<p>Sekolah dasar serut mengutus tiga orang siswa untuk berpatisipasi dalam lomba cerdas cermat Se Daerah Istimewa Yogyakarta,dari 45 sekolah dasar yang mengiuti lomba cerdas cermat se DIY,siswa-siswi Sekolah Dasar serut mendapat juara 2 lomba cerdas cermat,dengan nama faqih,iqbal,satria.mereka sekarang kelas 5.</p>\r\n', '2021-10-05 09:24:42', 1, 'Pendidikan', 24, '21ca23887f3c3ff0e869b08e068bf9e6.jpg', 1, 'Sekolah Serut', 0, 'juara-cerdas-cermat-se-kabupaten-gunung-kidul');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_video`
--

CREATE TABLE `tbl_video` (
  `id_video` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `kelas_id` int(11) NOT NULL,
  `kode_video` varchar(100) NOT NULL,
  `judul_video` varchar(150) NOT NULL,
  `deskripsi_video` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_video`
--

INSERT INTO `tbl_video` (`id_video`, `id_mapel`, `kelas_id`, `kode_video`, `judul_video`, `deskripsi_video`) VALUES
(2, 3, 2, 'EdQE_oeU2yo', 'Materi IPS Kelas 5 Semester Genap Bab III', 'Materi IPS Kelas 5 Semester Genap Bab III'),
(3, 2, 4, 'z2VF7j2RBzM', 'Materi IPS Kelas 5  (Perlawanan Terhadap Kolonialisme dan Imperialisme) Part 1', 'Materi IPS Kelas 8 k13 (Perlawanan Terhadap Kolonialisme dan Imperialisme) Part 1\r\n\r\n'),
(4, 3, 4, 'lIQBbvBZcqk', 'MATERI IPS MANUSIA DAN LINGKUNGAN, KELAS 4 TEMA 9 SUBTEMA 1', 'MATERI IPS MANUSIA DAN LINGKUNGAN, KELAS 4 TEMA 9 SUBTEMA 1\r\n'),
(5, 3, 6, 'DNoj82nGmK8', 'Materi IPS Kelas 4 SD Tema 9 Subtema 2. Pemanfaatan Sumber Daya Alam', 'Materi IPS Kelas 4 SD Tema 9 Subtema 2. Pemanfaatan Sumber Daya Alam'),
(6, 3, 5, 'kdmnP7Me0xg', 'pembelajaran ips', 'Video Pembelajaran Kelas 8 K13 - IPS - Perubahan Masyarakat Indonesia pada Masa Penjajahan');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_agenda`
--
ALTER TABLE `tbl_agenda`
  ADD PRIMARY KEY (`agenda_id`);

--
-- Indeks untuk tabel `tbl_album`
--
ALTER TABLE `tbl_album`
  ADD PRIMARY KEY (`album_id`),
  ADD KEY `album_pengguna_id` (`album_pengguna_id`);

--
-- Indeks untuk tabel `tbl_files`
--
ALTER TABLE `tbl_files`
  ADD PRIMARY KEY (`file_id`);

--
-- Indeks untuk tabel `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  ADD PRIMARY KEY (`galeri_id`),
  ADD KEY `galeri_album_id` (`galeri_album_id`),
  ADD KEY `galeri_pengguna_id` (`galeri_pengguna_id`);

--
-- Indeks untuk tabel `tbl_guru`
--
ALTER TABLE `tbl_guru`
  ADD PRIMARY KEY (`guru_id`);

--
-- Indeks untuk tabel `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  ADD PRIMARY KEY (`inbox_id`);

--
-- Indeks untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indeks untuk tabel `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  ADD PRIMARY KEY (`kelas_id`);

--
-- Indeks untuk tabel `tbl_komentar`
--
ALTER TABLE `tbl_komentar`
  ADD PRIMARY KEY (`komentar_id`),
  ADD KEY `komentar_tulisan_id` (`komentar_tulisan_id`);

--
-- Indeks untuk tabel `tbl_log_aktivitas`
--
ALTER TABLE `tbl_log_aktivitas`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `log_pengguna_id` (`log_pengguna_id`);

--
-- Indeks untuk tabel `tbl_mapel`
--
ALTER TABLE `tbl_mapel`
  ADD PRIMARY KEY (`id_mapel`);

--
-- Indeks untuk tabel `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  ADD PRIMARY KEY (`pengguna_id`);

--
-- Indeks untuk tabel `tbl_pengumuman`
--
ALTER TABLE `tbl_pengumuman`
  ADD PRIMARY KEY (`pengumuman_id`);

--
-- Indeks untuk tabel `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  ADD PRIMARY KEY (`pengunjung_id`);

--
-- Indeks untuk tabel `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`siswa_id`);

--
-- Indeks untuk tabel `tbl_testimoni`
--
ALTER TABLE `tbl_testimoni`
  ADD PRIMARY KEY (`testimoni_id`);

--
-- Indeks untuk tabel `tbl_tulisan`
--
ALTER TABLE `tbl_tulisan`
  ADD PRIMARY KEY (`tulisan_id`),
  ADD KEY `tulisan_kategori_id` (`tulisan_kategori_id`),
  ADD KEY `tulisan_pengguna_id` (`tulisan_pengguna_id`);

--
-- Indeks untuk tabel `tbl_video`
--
ALTER TABLE `tbl_video`
  ADD PRIMARY KEY (`id_video`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_agenda`
--
ALTER TABLE `tbl_agenda`
  MODIFY `agenda_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tbl_album`
--
ALTER TABLE `tbl_album`
  MODIFY `album_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbl_files`
--
ALTER TABLE `tbl_files`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  MODIFY `galeri_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `tbl_guru`
--
ALTER TABLE `tbl_guru`
  MODIFY `guru_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  MODIFY `inbox_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  MODIFY `kelas_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `tbl_komentar`
--
ALTER TABLE `tbl_komentar`
  MODIFY `komentar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_log_aktivitas`
--
ALTER TABLE `tbl_log_aktivitas`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_mapel`
--
ALTER TABLE `tbl_mapel`
  MODIFY `id_mapel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  MODIFY `pengguna_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbl_pengumuman`
--
ALTER TABLE `tbl_pengumuman`
  MODIFY `pengumuman_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  MODIFY `pengunjung_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=955;

--
-- AUTO_INCREMENT untuk tabel `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  MODIFY `siswa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tbl_testimoni`
--
ALTER TABLE `tbl_testimoni`
  MODIFY `testimoni_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_tulisan`
--
ALTER TABLE `tbl_tulisan`
  MODIFY `tulisan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `tbl_video`
--
ALTER TABLE `tbl_video`
  MODIFY `id_video` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
