-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2020 at 05:05 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbtubeswebpro`
--

-- --------------------------------------------------------

--
-- Table structure for table `penyakit`
--

CREATE TABLE `penyakit` (
  `id` int(10) NOT NULL,
  `noRS` int(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `deskripsi` varchar(500) NOT NULL,
  `gejala` varchar(500) NOT NULL,
  `pencegahan` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penyakit`
--

INSERT INTO `penyakit` (`id`, `noRS`, `nama`, `deskripsi`, `gejala`, `pencegahan`) VALUES
(3, 2, 'Demam Berdarah', 'DBD atau demam berdarah dengue adalah penyakit yang disebabkan oleh salah satu dari empat virus dengue. Demam berdarah merupakan penyakit yang mudah menular. Sarana penularan demam berdarah sendiri berasal dari gigitan nyamuk Aedes aegypti dan Aedes albocpictus.', 'Gejala umumnya timbul 4-7 hari semenjak adanya gigitan nyamuk, dan dapat berlangsung selama 10 hari dengan gejala seperti Demam tinggi >40 derajat celsius, nafsu makan menurun, dan Mual.', 'Terdapat berbagai upaya pencegahan, diantaranya adalah Menutup rapat tempat penampungan air, melakukan daur ulang barang yang berpotensi perkembangbiakkan nyamuk, dan mengatur cahaya pada rumah.'),
(4, 5, 'Masalah Janin', 'Masalah janin atau masalah stress yang diterima oleh janin dalam kandungan merupakan masalah yang sering dihadapi ibu hamil. ', 'Gejala - gejala pada masalah janin ini diantaranya adalah keluar darah melalui vagina, Merasakan nyeri di perut bagian bawah dan juga punggung.', 'Hubungi dokter ketika mengalami gejala yang bersangkutan, cek kesehatan secara rutin, dan tidak melakukan aktivitas yang berlebihan seperti berpergian dan lain-lain.'),
(5, 3, 'Saraf & Stroke', 'Stroke adalah kondisi yang terjadi ketika pasokan darah ke otak terganggu atau berkurang akibat penyumbatan (stroke iskemik) atau pecahnya pembuluh darah (stroke hemoragik). Tanpa darah, otak tidak akan mendapatkan asupan oksigen dan nutrisi, sehingga sel-sel pada sebagian area otak akan mati.', 'Gejala stroke dapat berbeda setiap penderitanya, tetapi gejala yang paling umum adalah Tungkai mati rasa, bicara jadi terlantur, dan proporsi wajah terlihat menurun.', 'Pencegahan stroke, dokter menyarankan untuk menerapkan pola makan yang sehat, berolahraga secara rutin, dan hindari konsumsi alkohol dan merokok.'),
(7, 4, 'Kanker', 'Kanker adalah penyakit yang disebabkan oleh pertumbuhan sel abnormal yang tidak terkendali di dalam tubuh . Pertumbuhan sel abnormal ini dapat merusak sel normal di sekitarnya dan di bagian tubuh yang lain.', 'Gejala yang timbul akibat kanker bervariasi pada pasiennya, tetapi beberapa gejala yang sering dialami penderita kanker adalah muncul benjolan, nyeri di salah satu bagian tubuh, batuk kronis, dan demam yang terus berulang-ulang.', 'Cara pencegahannya diantaranya adalah cek kesehatan berkala, tidak menerima asupan asap rokok dari lingkungan, dan istirahat dengan cukup.'),
(8, 1, 'SARS COVID - 19', 'Merupakan penyakit yang muncul di tahun 2019 tepatnya di wuhan, china. penyakit ini kemudian menjadi sebuah pandemi dan telah menyebar ke seluruh negara. penyakit ini menyerang dan tersebar dengan masuk ketubuh melalui droplet dari tubuh orang yang terkena penyakit ini', 'sesak nafas, batuk, rusaknya paru - paru', 'lookdown diri, mencuci tangan, tidak menyentuh area sekitar wajah');

-- --------------------------------------------------------

--
-- Table structure for table `rumahsakit`
--

CREATE TABLE `rumahsakit` (
  `noRS` int(10) NOT NULL,
  `namaRS` varchar(25) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `kontak` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rumahsakit`
--

INSERT INTO `rumahsakit` (`noRS`, `namaRS`, `alamat`, `kontak`) VALUES
(1, 'Hasan Sadikin', 'Jl. Pasteur noRS38, Pasteur, Kec. Sukajadi, Kota Bandung, Jawa Barat 40161\r\n', '(022) 2034953'),
(2, 'Santo Borromeus', 'Jl. Ir. H. Juanda noRS100, Lebakgede, Kecamatan Coblong, Kota Bandung, Jawa Barat 40132\r\n', '(022) 2552000'),
(3, 'Santosa', 'Jl. Kebon Jati noRS38, Kb. Jeruk, Kec. Andir, Kota Bandung, Jawa Barat 40181\r\n', '(022) 4248333'),
(4, 'Advent', 'Jl. Cihampelas noRS161, Cipaganti, Kecamatan Coblong, Kota Bandung, Jawa Barat 40131\r\n', '(022) 20343869'),
(5, 'Melinda 2', 'Jl. Dr. Cipto noRS1, Pasir Kaliki, Kec. Cicendo, Kota Bandung, Jawa Barat 40171\r\n', '(022) 4233777');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_foreign_key_rumahsakit` (`noRS`);

--
-- Indexes for table `rumahsakit`
--
ALTER TABLE `rumahsakit`
  ADD PRIMARY KEY (`noRS`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `penyakit`
--
ALTER TABLE `penyakit`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `penyakit`
--
ALTER TABLE `penyakit`
  ADD CONSTRAINT `fk_foreign_key_rumahsakit` FOREIGN KEY (`noRS`) REFERENCES `rumahsakit` (`noRS`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
