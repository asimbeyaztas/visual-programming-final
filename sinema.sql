-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 03 Oca 2023, 18:52:10
-- Sunucu sürümü: 8.0.28
-- PHP Sürümü: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `sinema`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `admin_sifre`
--

CREATE TABLE `admin_sifre` (
  `ıd` int NOT NULL,
  `kullaniciadi` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sifre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ad` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `soyad` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numara` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `admin_sifre`
--

INSERT INTO `admin_sifre` (`ıd`, `kullaniciadi`, `sifre`, `ad`, `soyad`, `numara`) VALUES
(8, 'k}sw', '>=>=', 'Asim', 'Beyaztaş', '5565664554'),
(10, 'w|k~', 'w|k~;<=', 'Mura', 'Sarı', '55465645656');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `bilet_satis`
--

CREATE TABLE `bilet_satis` (
  `biletid` int NOT NULL,
  `koltukno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `film_adi` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adi` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `soyadi` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tc` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numara` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `bilet_satis`
--

INSERT INTO `bilet_satis` (`biletid`, `koltukno`, `salon`, `film_adi`, `adi`, `soyadi`, `tc`, `numara`) VALUES
(33, '30', 'salon2', 'Alaca karanlık', 'Asim', 'Beyaztaş', '462', '566'),
(34, '30', 'salon1', 'Hayata küstüm', 'Ertan', 'Felek', '566', '643'),
(35, '40', 'salon2', 'Alaca karanlık', 'Tuğçe', 'Ergen', '666', '6456'),
(36, '24', 'salon2', 'Alaca karanlık', 'Alperen', 'Aygün', '56456565656', '56595956455'),
(42, '24', 'salon1', 'Hayata küstüm', 'Metin', 'Acar', '2', '5665956565');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `film_ekle`
--

CREATE TABLE `film_ekle` (
  `filmid` int NOT NULL,
  `film_adi` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `filmturu` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `yonetmen` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sure` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `yapim_yili` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `film_ekle`
--

INSERT INTO `film_ekle` (`filmid`, `film_adi`, `filmturu`, `yonetmen`, `sure`, `yapim_yili`) VALUES
(17, 'Hayata küstüm', 'Gerilim', 'Murat sarı', '2.55', '05.10.1990'),
(18, 'Alaca karanlık', 'Bilim Kurgu', 'Ertan Felek', '1.56', '04.04.2002'),
(19, 'Aşk tadında', 'Romantik', 'Alperen Aygün', '2.35', '01.06.2002'),
(20, 'Mesafeli', 'Romantik', 'Asim Beyaztaş', '2.33', '04.03.2000'),
(24, 'Çin seddi', 'Bilim Kurgu', 'pepe', '2.34', '01.06.2014'),
(27, 'Hayaller', 'Gerilim', 'Aim', '56.45', '20.11.2023');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanici_sifre`
--

CREATE TABLE `kullanici_sifre` (
  `ıd` int NOT NULL,
  `ad` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `soyad` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numara` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kullaniciadi` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sifre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `kullanici_sifre`
--

INSERT INTO `kullanici_sifre` (`ıd`, `ad`, `soyad`, `numara`, `kullaniciadi`, `sifre`) VALUES
(43, 'Ertan', 'Felek', '66666666666', 'o|~kx', 'o|~kx;<='),
(45, 'Asim', 'Beyaztaş', '64656325632', 'k}sw', '>=>=');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `salon1`
--

CREATE TABLE `salon1` (
  `koltukno` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `salon1`
--

INSERT INTO `salon1` (`koltukno`) VALUES
('24'),
('30');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `salon2`
--

CREATE TABLE `salon2` (
  `koltukno` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `salon2`
--

INSERT INTO `salon2` (`koltukno`) VALUES
('24'),
('30'),
('40');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `seans_ekle`
--

CREATE TABLE `seans_ekle` (
  `seansid` int NOT NULL,
  `seans_kodu` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filmadi` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salonadi` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tarih` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `saat` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `seans_ekle`
--

INSERT INTO `seans_ekle` (`seansid`, `seans_kodu`, `filmadi`, `salonadi`, `tarih`, `saat`) VALUES
(33, '1', 'Alaca karanlık', 'salon2', '2 Ocak 2023 Pazartesi', '16:00'),
(35, '8', 'Hayata küstüm', 'salon2', '13 Ocak 2023 Cuma', '19:00'),
(36, '4', 'Mesafeli', 'salon1', '2 Ocak 2023 Pazartesi', '13:00'),
(37, '3', 'Aşk tadında', 'salon2', '21 Ocak 2023 Cumartesi', '14:00');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `admin_sifre`
--
ALTER TABLE `admin_sifre`
  ADD PRIMARY KEY (`ıd`),
  ADD UNIQUE KEY `kullaniciadi` (`kullaniciadi`),
  ADD UNIQUE KEY `kullaniciadi_2` (`kullaniciadi`),
  ADD UNIQUE KEY `kullaniciadi_3` (`kullaniciadi`);

--
-- Tablo için indeksler `bilet_satis`
--
ALTER TABLE `bilet_satis`
  ADD PRIMARY KEY (`biletid`),
  ADD KEY `film_adi` (`film_adi`);

--
-- Tablo için indeksler `film_ekle`
--
ALTER TABLE `film_ekle`
  ADD PRIMARY KEY (`filmid`);

--
-- Tablo için indeksler `kullanici_sifre`
--
ALTER TABLE `kullanici_sifre`
  ADD PRIMARY KEY (`ıd`);

--
-- Tablo için indeksler `salon1`
--
ALTER TABLE `salon1`
  ADD PRIMARY KEY (`koltukno`);

--
-- Tablo için indeksler `salon2`
--
ALTER TABLE `salon2`
  ADD PRIMARY KEY (`koltukno`);

--
-- Tablo için indeksler `seans_ekle`
--
ALTER TABLE `seans_ekle`
  ADD PRIMARY KEY (`seansid`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `admin_sifre`
--
ALTER TABLE `admin_sifre`
  MODIFY `ıd` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `bilet_satis`
--
ALTER TABLE `bilet_satis`
  MODIFY `biletid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- Tablo için AUTO_INCREMENT değeri `film_ekle`
--
ALTER TABLE `film_ekle`
  MODIFY `filmid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Tablo için AUTO_INCREMENT değeri `kullanici_sifre`
--
ALTER TABLE `kullanici_sifre`
  MODIFY `ıd` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- Tablo için AUTO_INCREMENT değeri `seans_ekle`
--
ALTER TABLE `seans_ekle`
  MODIFY `seansid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
