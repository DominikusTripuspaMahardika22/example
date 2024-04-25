-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Apr 2024 pada 10.04
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gallery_ukk2024`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `album`
--

CREATE TABLE `album` (
  `AlbumID` int(11) NOT NULL,
  `NamaAlbum` varchar(255) NOT NULL,
  `Deskripsi` text NOT NULL,
  `TanggalDibuat` date NOT NULL,
  `UserID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `album`
--

INSERT INTO `album` (`AlbumID`, `NamaAlbum`, `Deskripsi`, `TanggalDibuat`, `UserID`) VALUES
(2, 'Animals', 'Berisikan Tentang Gambar Hewan', '2024-04-24', 1),
(4, 'Pegunungan', 'Berisikan Tentang Gambar Gununug', '2024-04-24', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `foto`
--

CREATE TABLE `foto` (
  `FotoID` int(11) NOT NULL,
  `JudulFoto` varchar(255) NOT NULL,
  `DeskripsiFoto` text NOT NULL,
  `TanggalUnggah` date NOT NULL,
  `LokasiFile` varchar(255) NOT NULL,
  `AlbumID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `foto`
--

INSERT INTO `foto` (`FotoID`, `JudulFoto`, `DeskripsiFoto`, `TanggalUnggah`, `LokasiFile`, `AlbumID`, `UserID`) VALUES
(3, 'Patagotitan Mayorum', 'Dilansir dari laman Encyclopedia Britannica, Patagotitan mayorum mungkin adalah hewan darat terbesar di dunia sepanjang masa. \r\n\r\nIni berdasarkan perkiraan ukuran, setelah mempertimbangkan sejumlah fosil tulang yang dikaitkan dengan spesies tersebut. Spesies ini diperkirakan hidup 95-100 juta tahun lalu. \r\n\r\nBeratnya sekitar sekitar 77 ton dan ukuran panjangnya 37,2 meter. Meski beberapa peneliti percaya bahwa ini adalah perkiraan yang terlalu berlebihan.', '2024-04-24', 'Patagotitan Mayorum.png', 2, 1),
(4, 'Dreadnoughtus', 'Salah satu yang termasuk dinosaurus terbesar adalah Dreadnoughtus. Panjang totalnya kira-kira 26 meter dengan perkiraan massa sekitar 65 ton. \r\n\r\nDreadnoughtus diketahui dari endapan batuan di selatan Patagonia, Argentina, yang berumur sekitar 77 juta tahun yang lalu. \r\n\r\nSayangnya, hanya ada satu spesies yang diketahui, yakni D. schrani.', '2024-04-24', 'Dreadnoughtus.jpg', 2, 1),
(5, 'Argentinosaurus', 'Bukti Argentinosaurus pertama kali ditemukan pada 1987, ketika sebuah fosil seukuran manusia dewasa digali di sebuah peternakan di Argentina. \r\n\r\nNamun, fosil tersebut dikira bongkahan besar kayu yang membatu. Baru pada 1993 spesimen tersebut diklasifikasikan ulang sebagai satu tulang belakang milik spesies sauropoda baru. \r\n\r\nMeskipun kerangka lengkap belum ditemukan, perkiraan panjangnya berkisar antara 37 hingga 40 meter dan memiliki berat 99 hingga 110 ton.', '2024-04-24', 'Argentinosaurus.jpg', 2, 1),
(7, 'Supersaurus', 'Dikutip dari laman A-Z Animals, fosil Supersaurus vivianae telah ditemukan di Colorado dan diperkirakan hidup sekitar 153 juta tahun yang lalu. \r\n\r\nPara ahli percaya bahwa spesies ini bisa mencapai panjang 42. Namun, ia tidak memiliki bobot sebesar yang diharapkan dari makhluk sepanjang itu.', '2024-04-24', 'Supersaurus.jpg', 2, 1),
(8, 'Gunung Bromo', 'Gunung Bromo salah satu gunung yang paling favorit di Indonesia. Gunung satu ini terletak di Taman Nasional Bromo Tengger Semeru, Jawa Timur. \r\n\r\nBanyak wisatawan lokal dan mancanegara yang berbondong-bondong ke sini demi menikmati keindahan pemandangan matahari terbit.a.', '2024-04-24', 'Gunung Bromo.jpg', 4, 1),
(9, 'Gunung Semeru', 'Gunung Semeru masih dalam kawasan Taman Nasional Bromo Tengger Semeru, pemandangan Gunung Semeru juga tak kalah cantiknya dengan Gunung Bromo. \r\n\r\nGunung tertinggi di Pulau Jawa ini memiliki pemandangan matahari terbit yang sangat menawan.Jadi tak heran jika gunung ini termasuk dalam salah satu yang terfavorit di Indonesia. \r\n\r\nUntuk menikmati indahnya matahari terbit dari puncak, memang memerlukan perjuangan yang kuat. Tenang , kamu akan terpukau dengan pemandangan alam sekitarnya, seperti Danau Ranukumbolo.', '2024-04-24', 'Gunung Semeru.jpg', 4, 1),
(10, 'Gunung Rinjani', 'Pulau Lombok merupakan salah satu destinasi wisata terfavorit kedua di Indonesia setelah Bali. Bukan cuma pantai-pantainya saja yang keren, Lombok juga memiliki Gunung Rinjani yang sangat eksotis.\r\n\r\nGunung dengan ketinggan 3.726 mdpl ini sering disebut sebagai wisata trekking terbaik di Asia Tenggara.  Salah satu spot yang paling diminati para pendaki adalah Danau Segara Anak. Keindahannya pasti tak terlupakan deh!', '2024-04-24', 'Gunung Rinjani.jpg', 4, 1),
(11, 'Gunung Ijen', 'Selain Gunung Bromo dan Semeru, rupanya Jawa Timur masih menyimpan gunung indah lainnya yaitu Gunung Ijen. Gunung cantik ini terletak di antara 3 kabupaten antara lain, Banyuwangi, Situbondo, dan Bondowoso.Pemandangan paling favorit wisatawan di sini adalah kawahnya dan fenomena api birunya. Untuk menikmatinya, kamu harus mendaki Gunung Ijen pada malam hari. Fyi, hanya ada api biru di dunia lho. Indonesia beruntung memiliki salah satunya.', '2024-04-24', 'Gunung Ijen.jpg', 4, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentarfoto`
--

CREATE TABLE `komentarfoto` (
  `KomentarID` int(11) NOT NULL,
  `FotoID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `IsiKomentar` text NOT NULL,
  `TanggalKomentar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `likefoto`
--

CREATE TABLE `likefoto` (
  `LikeID` int(11) NOT NULL,
  `FotoID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `TanggalLike` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `UserID` int(11) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `NamaLengkap` varchar(255) NOT NULL,
  `Alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`UserID`, `Username`, `Password`, `Email`, `NamaLengkap`, `Alamat`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'tripuspamahardika@gmail.com', 'Dominikus Tripuspa Mahardika', 'Jl. Kemantren Gg III No.45 RT.06/RW.13 Kec. Sukun Kota Malang');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`AlbumID`),
  ADD KEY `FKalbum136829` (`UserID`);

--
-- Indeks untuk tabel `foto`
--
ALTER TABLE `foto`
  ADD PRIMARY KEY (`FotoID`),
  ADD KEY `FKfoto533751` (`AlbumID`),
  ADD KEY `FKfoto388920` (`UserID`);

--
-- Indeks untuk tabel `komentarfoto`
--
ALTER TABLE `komentarfoto`
  ADD PRIMARY KEY (`KomentarID`),
  ADD KEY `FKkomentarfo49587` (`UserID`),
  ADD KEY `FKkomentarfo875433` (`FotoID`);

--
-- Indeks untuk tabel `likefoto`
--
ALTER TABLE `likefoto`
  ADD PRIMARY KEY (`LikeID`),
  ADD KEY `FKlikefoto545947` (`UserID`),
  ADD KEY `FKlikefoto720100` (`FotoID`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `album`
--
ALTER TABLE `album`
  MODIFY `AlbumID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `foto`
--
ALTER TABLE `foto`
  MODIFY `FotoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `komentarfoto`
--
ALTER TABLE `komentarfoto`
  MODIFY `KomentarID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `likefoto`
--
ALTER TABLE `likefoto`
  MODIFY `LikeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `album`
--
ALTER TABLE `album`
  ADD CONSTRAINT `FKalbum136829` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`);

--
-- Ketidakleluasaan untuk tabel `foto`
--
ALTER TABLE `foto`
  ADD CONSTRAINT `FKfoto388920` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`),
  ADD CONSTRAINT `FKfoto533751` FOREIGN KEY (`AlbumID`) REFERENCES `album` (`AlbumID`);

--
-- Ketidakleluasaan untuk tabel `komentarfoto`
--
ALTER TABLE `komentarfoto`
  ADD CONSTRAINT `FKkomentarfo49587` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`),
  ADD CONSTRAINT `FKkomentarfo875433` FOREIGN KEY (`FotoID`) REFERENCES `foto` (`FotoID`);

--
-- Ketidakleluasaan untuk tabel `likefoto`
--
ALTER TABLE `likefoto`
  ADD CONSTRAINT `FKlikefoto545947` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`),
  ADD CONSTRAINT `FKlikefoto720100` FOREIGN KEY (`FotoID`) REFERENCES `foto` (`FotoID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
