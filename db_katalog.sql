-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2025 at 08:32 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_katalog`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id_about` int(11) NOT NULL,
  `judul` text NOT NULL,
  `sub_judul` text NOT NULL,
  `image` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id_about`, `judul`, `sub_judul`, `image`) VALUES
(1, 'Butik April - Pilihan Tepat untuk Tas Rajut Unik dan Berkualitas', 'Selamat datang di Butik April, tempat di mana keindahan dan kreativitas bersatu dalam setiap produk tas rajut. Kami menghadirkan koleksi tas handmade yang dirancang dengan penuh cinta dan perhatian terhadap detail. Dengan memadukan bahan berkualitas dan desain modern, Butik April siap menjadi pilihan utama Anda untuk melengkapi gaya sehari-hari.\r\n\r\nTemukan berbagai pilihan tas rajut yang unik, nyaman digunakan, dan cocok untuk semua kesempatan. Setiap produk kami dibuat dengan tujuan memberikan kepuasan maksimal kepada pelanggan.', 'logoo.png');

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `id_activity` int(11) NOT NULL,
  `user_activity` int(11) NOT NULL,
  `date_activity` date NOT NULL,
  `time_activity` time NOT NULL,
  `activity` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`id_activity`, `user_activity`, `date_activity`, `time_activity`, `activity`) VALUES
(2, 16, '2022-02-17', '07:22:49', 'Mengubah profil akun'),
(71, 15, '2023-04-20', '11:17:36', 'Reset aktivitas'),
(72, 15, '2023-04-20', '11:50:11', 'Menambah data katalog produk'),
(73, 15, '2023-04-20', '11:50:24', 'Menambah data gambar produk'),
(74, 15, '2023-04-24', '07:12:15', 'Mengubah data katalog'),
(75, 15, '2023-04-24', '07:12:31', 'Mengubah data katalog'),
(76, 15, '2023-04-24', '07:13:25', 'Mengubah data katalog'),
(77, 15, '2023-04-24', '07:16:03', 'Mengubah data katalog'),
(78, 15, '2023-04-24', '07:17:53', 'Mengubah data katalog'),
(79, 15, '2023-04-28', '06:35:04', 'Hapus kotak masuk'),
(80, 15, '2023-04-28', '06:35:07', 'Hapus kotak masuk'),
(81, 15, '2023-04-28', '06:35:40', 'Mengubah banner section'),
(82, 15, '2023-04-28', '06:35:56', 'Mengubah banner section'),
(83, 15, '2023-04-28', '06:38:15', 'Menambah data katalog produk'),
(84, 15, '2023-04-28', '06:38:25', 'Menambah data gambar produk'),
(85, 15, '2023-04-28', '06:41:58', 'Mengubah data master kategori'),
(86, 15, '2023-04-28', '06:44:30', 'Menambah data katalog produk'),
(87, 15, '2023-04-28', '06:44:40', 'Menambah data gambar produk'),
(88, 15, '2025-01-11', '14:11:37', 'Mengubah profil akun'),
(89, 15, '2025-01-11', '14:16:13', 'Mengubah data master kategori'),
(90, 15, '2025-01-11', '14:16:30', 'Mengubah data master kategori');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id_banner` int(11) NOT NULL,
  `judul` text NOT NULL,
  `sub_judul` text NOT NULL,
  `banner` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id_banner`, `judul`, `sub_judul`, `banner`) VALUES
(1, 'BUTIK APRIL', 'Temukan koleksi tas dan aksesori unik yang dibuat dengan keahlian dan penuh cinta dalam katalog E-CATALOG kami. Dengan desain eksklusif dan harga terjangkau, seperti tas rajut hanya dengan Rp 200.000, koleksi ini cocok untuk melengkapi gaya Anda sehari-hari. Jangan lewatkan kesempatan untuk memiliki produk berkualitas yang memadukan estetika dan fungsi.', 'logo.png');

-- --------------------------------------------------------

--
-- Table structure for table `medsos`
--

CREATE TABLE `medsos` (
  `id_medsos` int(11) NOT NULL,
  `facebook` text NOT NULL,
  `twitter` text NOT NULL,
  `instagram` text NOT NULL,
  `youtube` text NOT NULL,
  `tiktok` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `medsos`
--

INSERT INTO `medsos` (`id_medsos`, `facebook`, `twitter`, `instagram`, `youtube`, `tiktok`) VALUES
(1, 'https://www.facebook.com/adoniasite/', 'https://twitter.com/donny_mey', 'https://www.instagram.com/aloy_bayu?igsh=MTIzaGxzMmN5NTZwMA%3D%3D&utm_source=qr ', 'https://youtube.com/@noelbayu?si=cJkqg6y4nq91aQBl', 'https://drive.google.com/file/d/1-7ppk6i7vW_zTsSlj8I1vGGpMr-himLX/view?usp=sharing');

-- --------------------------------------------------------

--
-- Table structure for table `mst_kategori`
--

CREATE TABLE `mst_kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` text NOT NULL,
  `ket_kategori` text DEFAULT NULL,
  `status_kategori` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `mst_kategori`
--

INSERT INTO `mst_kategori` (`id_kategori`, `nama_kategori`, `ket_kategori`, `status_kategori`) VALUES
(1, 'Kemeja', '-', 1),
(2, 'tass', '-', 1),
(4, 'Kaos', '-', 1),
(5, 'rajut', '-', 1),
(6, 'Sepatu', '-', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mst_user`
--

CREATE TABLE `mst_user` (
  `id_user` int(11) NOT NULL,
  `nama` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `level` text NOT NULL,
  `date_created` date NOT NULL,
  `image` text NOT NULL,
  `is_active` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `mst_user`
--

INSERT INTO `mst_user` (`id_user`, `nama`, `email`, `password`, `level`, `date_created`, `image`, `is_active`) VALUES
(15, 'Aloysius Manuel Bayu Krisnamurti', 'admin@gmail.com', '$2y$10$1CGoPtKRjQXU.kjmLiIoueroxm6TSleJ8NjyIKTKeDzOqvmyJcYwW', 'Admin', '2019-10-02', 'avatar5.png', 1),
(16, 'Ratna Damayanti', 'user@gmail.com', '$2y$10$bPLw0rPYbJ/7B6IrsiNYGOUzvQKnufxymmfSWD6e9vx7tq81M6NTO', 'User', '2019-10-02', 'avatar2.png', 1),
(23, 'Arnold Jumangin', 'arnold@gmail.com', '$2y$10$qE04JsOMcNahXc69MIYoYu1WEDRYdIHipAVckyBAJAmbCTjor/B92', 'User', '2023-04-11', 'default.jpg', 0),
(24, 'Fajar', 'agis@gmail.com', '$2y$10$N5WOutI.7dDThE8ibUwicuMh3EKKvOe6O2o5db5gnUOrG4TzbLyPa', 'User', '2025-01-11', 'default.jpg', 0),
(25, 'fajar', 'fs60700@mail.com', '$2y$10$sEGPwQHtqGqDDduX235IReDKDmH7Ryud3B2dnhlQfC/nKiFnQOTpa', 'User', '2025-01-11', 'default.jpg', 0),
(26, 'Fajar', 'fs6070016@gmail.com', '123', 'Admin', '0000-00-00', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `id_profile` int(11) NOT NULL,
  `nama_website` text NOT NULL,
  `nama_company` text NOT NULL,
  `pemilik_profile` text NOT NULL,
  `alamat_profile` text NOT NULL,
  `telp_profile` text NOT NULL,
  `hp_profile` text NOT NULL,
  `email_profile` text NOT NULL,
  `desk_profile` text NOT NULL,
  `logo` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id_profile`, `nama_website`, `nama_company`, `pemilik_profile`, `alamat_profile`, `telp_profile`, `hp_profile`, `email_profile`, `desk_profile`, `logo`) VALUES
(1, 'BUTIK APRIL', 'BUTIK APRIL ', 'Aloysius Manuel Bayu Krisnamurti', 'Lokasi BUTIK APRIL di Perumahan Griya Ciwangi Blok A5 No.9, Purwakarta, Bungursari.', ' 087838665590', ' 087838665590', 'butikapril6@gmail.com', 'Web Application & Web Design Buat aplikasi dan website Anda dengan dinamis dan elegant serta tingkatkan peluang menaikkan omset bisnis Anda bersama Kami.', 'adonia.png');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id_services` int(11) NOT NULL,
  `judul1` text NOT NULL,
  `sub_judul1` text NOT NULL,
  `judul2` text NOT NULL,
  `sub_judul2` text NOT NULL,
  `judul3` text NOT NULL,
  `sub_judul3` text NOT NULL,
  `judul4` text NOT NULL,
  `sub_judul4` text NOT NULL,
  `judul5` text NOT NULL,
  `sub_judul5` text NOT NULL,
  `judul6` text NOT NULL,
  `sub_judul6` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id_services`, `judul1`, `sub_judul1`, `judul2`, `sub_judul2`, `judul3`, `sub_judul3`, `judul4`, `sub_judul4`, `judul5`, `sub_judul5`, `judul6`, `sub_judul6`) VALUES
(1, 'Bootstrap 4', 'Share processes and data secure lona need to know basis Our team assured your web site is always safe.', 'Slick Design', 'Share processes and data secure lona need to know basis Our team assured your web site is always safe.', 'Crafted with Love', 'Share processes and data secure lona need to know basis Our team assured your web site is always safe.', 'Crafted with Love', 'Share processes and data secure lona need to know basis Our team assured your web site is always safe.', 'Crafted with Love', 'Share processes and data secure lona need to know basis Our team assured your web site is always safe.', 'Crafted with Love', 'Share processes and data secure lona need to know basis Our team assured your web site is always safe.');

-- --------------------------------------------------------

--
-- Table structure for table `tb_ecommerce`
--

CREATE TABLE `tb_ecommerce` (
  `id_ecommerce` int(11) NOT NULL,
  `produk_id_ecommerce` int(11) NOT NULL,
  `nama_ecommerce` text NOT NULL,
  `link_ecommerce` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_ecommerce`
--

INSERT INTO `tb_ecommerce` (`id_ecommerce`, `produk_id_ecommerce`, `nama_ecommerce`, `link_ecommerce`) VALUES
(1, 3, 'Tokopedia', 'asdsadsd'),
(2, 3, 'Shopee', 'addadsad'),
(3, 3, 'Bukalapak', 'sdasda'),
(4, 3, 'Blibli', 'dsadsad'),
(6, 2, 'Tokopedia', 'dfsdf'),
(7, 2, 'Shopee', 'sdfds'),
(8, 4, 'Tokopedia', 'https://www.tokopedia.com/adoniasite/sistem-informasi-my-site'),
(9, 4, 'Shopee', 'https://www.tokopedia.com/adoniasite/sistem-informasi-my-site'),
(10, 4, 'Bukalapak', 'https://www.tokopedia.com/adoniasite/sistem-informasi-my-site'),
(11, 4, 'Blibli', 'https://www.tokopedia.com/adoniasite/sistem-informasi-my-site');

-- --------------------------------------------------------

--
-- Table structure for table `tb_gambar`
--

CREATE TABLE `tb_gambar` (
  `id_gambar` int(11) NOT NULL,
  `produk_id` int(11) NOT NULL,
  `pict` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_gambar`
--

INSERT INTO `tb_gambar` (`id_gambar`, `produk_id`, `pict`) VALUES
(1, 2, 'polos1.png'),
(2, 2, 'polos2.jpg'),
(3, 2, 'polos4.png'),
(9, 3, 'sniker2.jpg'),
(11, 3, 'sniker3.jpg'),
(12, 4, 'celana2.jpg'),
(13, 4, 'celana3.jpeg'),
(14, 5, 'cpj2.jpeg'),
(15, 6, 'kemeja2.jpg'),
(16, 7, 'sabuk2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_katalog`
--

CREATE TABLE `tb_katalog` (
  `id_produk` int(11) NOT NULL,
  `sess_id` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `nama_produk` text NOT NULL,
  `ket_produk` text NOT NULL,
  `desk_produk` text NOT NULL,
  `harpok_produk` int(11) NOT NULL,
  `harjul_produk` int(11) NOT NULL,
  `gambar` varchar(250) NOT NULL,
  `status_produk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_katalog`
--

INSERT INTO `tb_katalog` (`id_produk`, `sess_id`, `kategori_id`, `nama_produk`, `ket_produk`, `desk_produk`, `harpok_produk`, `harjul_produk`, `gambar`, `status_produk`) VALUES
(2, 0, 4, 'Tas_Rajut_Blink', 'Bahan katun ', '<p>Kaos Polos merupakan pakaian untuk kamu si minimalis yang mengidamkan pakaian dengan minim corak. Kaos polos juga cocok untuk dipadukan dengan berbagai OOTD karena memiliki beragam pilihan warna. Dapat juga dijadikan sebagai alat promosi, bisnis dan media mengekspresikan diri!<br></p>', 25000, 50000, 'kaos.png', 1),
(3, 0, 6, 'Tas Ranjut Handmade ', 'Warna hitam putih', '<p>Tampil Keren dengan Model Sepatu Sneakers Pria Terbaru. Jual Aneka Merk Sepatu Sneakers Laki-laki Trendy dengan Harga Terbaik. <br></p>', 65000, 120000, 'sniker1.png', 1),
(4, 15, 2, 'Tas Rajut', 'Celana pendek hitam polos', '<p>Bermuda shorts yang memiliki nama lain walking shorts atau dress shorts termasuk ke dalam jenis celana pendek pria keren bernuansa dressy atau semi casual. Bermuda short/ dress shorts biasa didesain dengan ukuran panjang satu hingga tiga inci diatas lutut.<br></p>', 25000, 55000, 'cepen23.png', 1),
(5, 15, 2, 'Tas Rajut Blink', 'Celana panjang resmi', '<p><span xss=removed>Celana panjang berpotongan skinny biasa terbuat dari bahan jeans yang stretch dan menempel ketat di kaki.</span><br></p>', 80000, 150000, 'cpj1.png', 1),
(6, 15, 1, 'Tas rajut orange', 'tas rajut ', '<p><span xss=removed>Kemeja atau shirt adalah </span><span xss=removed>atasan yang bisa digunakan oleh semua jenis kelamin, baik pria maupun wanita</span><span xss=removed> (gender-neutral). Ciri khas kemeja terletak pada adanya kancing yang disusun secara vertikal dari atas hingga ke bawah.</span><br></p>', 45000, 60000, 'kemeja1.png', 1),
(7, 15, 5, 'Tas Rajut Hitam Bling Bling', 'Tas Rajut Hitam', '<p><span xss=removed>Tas Rajut Hitam atau </span><span xss=removed>sabuk</span><span xss=removed> tas rajut.</span><br></p>', 30000, 40000, 'sabuk1.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_subscribe`
--

CREATE TABLE `tb_subscribe` (
  `id_subscribe` int(11) NOT NULL,
  `tgl_subscribe` date NOT NULL,
  `email_subscribe` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_subscribe`
--

INSERT INTO `tb_subscribe` (`id_subscribe`, `tgl_subscribe`, `email_subscribe`) VALUES
(3, '2023-04-27', 'ata.adonia@gmail.com'),
(4, '2023-04-27', 'dewa@gmail.com'),
(5, '2023-04-28', 'ata.adonia@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `testimoni`
--

CREATE TABLE `testimoni` (
  `id_testimoni` int(11) NOT NULL,
  `nama_testimoni` text NOT NULL,
  `profesi_testimoni` text NOT NULL,
  `testimoni` text NOT NULL,
  `foto` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `testimoni`
--

INSERT INTO `testimoni` (`id_testimoni`, `nama_testimoni`, `profesi_testimoni`, `testimoni`, `foto`) VALUES
(1, 'Bayu', 'Mahasiswa', 'Produk-produk di katalog ini benar-benar unik dan berkualitas. Tas rajutnya sangat cantik dan harganya sangat terjangkau. Pengalaman belanja saya di sini luar biasa', 'ava1.jpg'),
(2, 'Muhamad fajar', 'CEO ', 'Saya sangat puas dengan koleksi di katalog ini. Tas dan aksesori yang ditawarkan sangat menarik perhatian pelanggan saya. Sangat direkomendasikan untuk pembeli ataupun reseller!', 'ava2.jpg'),
(3, 'Dew', 'Content Creator', 'Tas dari katalog ini sangat cocok untuk digunakan sehari-hari. Desainnya elegan, dan saya suka dengan detail pengerjaannya. Pasti akan belanja lagi di sini', 'ava3.png'),
(4, 'Fadlan', 'Owner Vendor', 'Katalog ini memudahkan saya untuk menemukan hadiah yang spesial untuk orang terdekat. Kualitasnya tidak mengecewakan, dan pelayanan sangat cepat!', 'ava4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user_token`
--

CREATE TABLE `user_token` (
  `id_token` int(11) NOT NULL,
  `email_token` varchar(128) NOT NULL,
  `token` varchar(128) NOT NULL,
  `date_created_token` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_token`
--

INSERT INTO `user_token` (`id_token`, `email_token`, `token`, `date_created_token`) VALUES
(1, 'admin@gmail.com', 'hw87O9iPCbnExk1mu3yldcUmXXbzF/zXeQAyrtV1YEA=', 1681185140),
(2, 'arnold@gmail.com', '916S+Iet8oBeAiiMWPmBDEFiTRXavSZlbBXi8c5oHPA=', 1681185325),
(3, 'agis@gmail.com', 'Zkd1AFYXmwm85/qJRrT6ZQURTNxv04RBy6zFBEPsp1g=', 1736569318),
(4, 'fs60700@mail.com', '/dHPwI+DeByzLA5srwN+XICLlmch3D8k34XiASvfGv8=', 1736569358);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id_about`);

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`id_activity`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id_banner`);

--
-- Indexes for table `medsos`
--
ALTER TABLE `medsos`
  ADD PRIMARY KEY (`id_medsos`);

--
-- Indexes for table `mst_kategori`
--
ALTER TABLE `mst_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `mst_user`
--
ALTER TABLE `mst_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id_profile`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id_services`);

--
-- Indexes for table `tb_ecommerce`
--
ALTER TABLE `tb_ecommerce`
  ADD PRIMARY KEY (`id_ecommerce`);

--
-- Indexes for table `tb_gambar`
--
ALTER TABLE `tb_gambar`
  ADD PRIMARY KEY (`id_gambar`);

--
-- Indexes for table `tb_katalog`
--
ALTER TABLE `tb_katalog`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `tb_subscribe`
--
ALTER TABLE `tb_subscribe`
  ADD PRIMARY KEY (`id_subscribe`);

--
-- Indexes for table `testimoni`
--
ALTER TABLE `testimoni`
  ADD PRIMARY KEY (`id_testimoni`);

--
-- Indexes for table `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id_about` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `activity`
--
ALTER TABLE `activity`
  MODIFY `id_activity` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id_banner` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `medsos`
--
ALTER TABLE `medsos`
  MODIFY `id_medsos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mst_kategori`
--
ALTER TABLE `mst_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mst_user`
--
ALTER TABLE `mst_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id_profile` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id_services` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_ecommerce`
--
ALTER TABLE `tb_ecommerce`
  MODIFY `id_ecommerce` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tb_gambar`
--
ALTER TABLE `tb_gambar`
  MODIFY `id_gambar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tb_katalog`
--
ALTER TABLE `tb_katalog`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_subscribe`
--
ALTER TABLE `tb_subscribe`
  MODIFY `id_subscribe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `testimoni`
--
ALTER TABLE `testimoni`
  MODIFY `id_testimoni` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id_token` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
