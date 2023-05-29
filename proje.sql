-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 23 May 2023, 17:58:27
-- Sunucu sürümü: 10.4.28-MariaDB
-- PHP Sürümü: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `proje`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ajan`
--

CREATE TABLE `ajan` (
  `Ajan_ID` int(11) NOT NULL,
  `AjanAD` varchar(100) NOT NULL,
  `Ajan_Turu` varchar(100) NOT NULL,
  `Cinsiyet_ID` int(11) NOT NULL,
  `Ulke_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ajan`
--

INSERT INTO `ajan` (`Ajan_ID`, `AjanAD`, `Ajan_Turu`, `Cinsiyet_ID`, `Ulke_ID`) VALUES
(1, 'Jett', 'Duellocu', 1, 2),
(2, 'Raze', 'Duellocu', 1, 3),
(3, 'Reyna', 'Duellocu', 1, 10),
(4, 'Phoenix', 'Duellocu', 2, 6),
(5, 'Yoru', 'Duellocu', 2, 13),
(6, 'Neon', 'Duellocu', 1, 15),
(7, 'Fade', 'Öncü', 1, 16),
(8, 'Breach', 'Öncü', 2, 4),
(9, 'Skye', 'Öncü', 1, 12),
(10, 'KAY/O', 'Öncü', 1, 1),
(11, 'Sova', 'Öncü', 2, 8),
(12, 'Gekko', 'Öncü', 2, 5),
(13, 'Brimstone', 'Kontrol Uzmanı', 2, 5),
(14, 'Viper', 'Kontrol Uzmanı', 1, 5),
(15, 'Omen', 'Kontrol Uzmanı', 2, 1),
(16, 'Astra', 'Kontrol Uzmanı', 1, 14),
(17, 'Harbor', 'Kontrol Uzmanı', 2, 18),
(18, 'Sage', 'Gözcü', 1, 7),
(19, 'Chamber', 'Gözcü', 2, 17),
(20, 'Killjoy', 'Gözcü', 1, 11),
(21, 'Cyper', 'Gözcü', 2, 9);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ajan_silah`
--

CREATE TABLE `ajan_silah` (
  `Ajan_ID` int(11) NOT NULL,
  `Silah_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ajan_yetenek`
--

CREATE TABLE `ajan_yetenek` (
  `Ajan_ID` int(11) NOT NULL,
  `Yetenek_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cinsiyet`
--

CREATE TABLE `cinsiyet` (
  `Cinsiyet_ID` int(11) NOT NULL,
  `Cinsiyet` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `cinsiyet`
--

INSERT INTO `cinsiyet` (`Cinsiyet_ID`, `Cinsiyet`) VALUES
(1, 'Kadın'),
(2, 'Erkek');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `harita`
--

CREATE TABLE `harita` (
  `Harita_ID` int(11) NOT NULL,
  `Harita_AD` varchar(100) NOT NULL,
  `Harita_Site` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `harita`
--

INSERT INTO `harita` (`Harita_ID`, `Harita_AD`, `Harita_Site`) VALUES
(1, 'Bind', 2),
(2, 'Haven', 3),
(3, 'Split', 2),
(4, 'Ascent', 2),
(5, 'Icebox', 2),
(6, 'Breeze', 2),
(7, 'Fracture', 2),
(8, 'Pearl', 2),
(9, 'Lotus', 3);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mac`
--

CREATE TABLE `mac` (
  `Mac_ID` int(11) NOT NULL,
  `Mac_AD` varchar(100) NOT NULL,
  `Ajan_ID` int(11) NOT NULL,
  `Harita_ID` int(11) NOT NULL,
  `Mod_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `oyun_modu`
--

CREATE TABLE `oyun_modu` (
  `Mod_ID` int(11) NOT NULL,
  `Mod_AD` varchar(100) NOT NULL,
  `Win_Skor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `oyun_modu`
--

INSERT INTO `oyun_modu` (`Mod_ID`, `Mod_AD`, `Win_Skor`) VALUES
(1, 'Derecesiz', 13),
(2, 'Rekabete Dayalı', 13),
(3, 'Tam Gaz', 5),
(4, 'Spike\'a Hücum', 4),
(5, 'Ölüm Kalım Savaşı', 40),
(6, 'Kopya', 5),
(7, 'Tırmanış', 12);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `silah`
--

CREATE TABLE `silah` (
  `Silah_ID` int(11) NOT NULL,
  `Silah_AD` varchar(100) NOT NULL,
  `Tur_ID` int(11) NOT NULL,
  `kredi_Miktari` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `silah`
--

INSERT INTO `silah` (`Silah_ID`, `Silah_AD`, `Tur_ID`, `kredi_Miktari`) VALUES
(1, 'Taktik Bıçağı', 1, 0),
(2, 'Karambit', 1, 0),
(3, 'Kelebek', 1, 0),
(4, 'Pençe', 1, 0),
(5, 'Kılıç', 1, 0),
(6, 'Hançer', 1, 0),
(7, 'Balta', 1, 0),
(8, 'Classic', 2, 0),
(9, 'Shorty', 2, 200),
(10, 'Frenzy', 2, 450),
(11, 'Ghost', 2, 500),
(12, 'Sheriff', 2, 800),
(13, 'Stinger', 3, 1100),
(14, 'Spectre', 3, 1600),
(15, 'Bucky', 4, 900),
(16, 'Judge', 4, 1500),
(17, 'Bulldog', 5, 2100),
(18, 'Guardian', 5, 2400),
(19, 'Phantom', 5, 2900),
(20, 'Vandal', 5, 2900),
(21, 'Marshal', 6, 950),
(22, 'Operator', 6, 4750),
(23, 'Ares', 7, 1700),
(24, 'Odin', 7, 3200);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `silah_tur`
--

CREATE TABLE `silah_tur` (
  `Tur_ID` int(11) NOT NULL,
  `Tur_AD` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `silah_tur`
--

INSERT INTO `silah_tur` (`Tur_ID`, `Tur_AD`) VALUES
(1, 'Bıçak'),
(2, 'Beylik Silahı'),
(3, 'Hafif Makineliler'),
(4, 'Pompalı Tüfekler'),
(5, 'Tüfek'),
(6, 'Keskin Nişancı Tüfekleri'),
(7, 'Makineli Tüfekler');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ulke`
--

CREATE TABLE `ulke` (
  `Ulke_ID` int(11) NOT NULL,
  `Ulke_AD` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ulke`
--

INSERT INTO `ulke` (`Ulke_ID`, `Ulke_AD`) VALUES
(1, 'Bilinmiyor'),
(2, 'Güney Kore'),
(3, 'Brezilya'),
(4, 'İsveç'),
(5, 'ABD'),
(6, 'Birleşik Krallık'),
(7, 'Çin'),
(8, 'Rusya'),
(9, 'Fas'),
(10, 'Meksika'),
(11, 'Almanya'),
(12, 'Avustutalya'),
(13, 'Japonya'),
(14, 'Gana'),
(15, 'Filipinler'),
(16, 'Türkiye'),
(17, 'Fransa'),
(18, 'Hindistan');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yetenek`
--

CREATE TABLE `yetenek` (
  `Yetenek_ID` int(11) NOT NULL,
  `Yetenek_Turu` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `yetenek`
--

INSERT INTO `yetenek` (`Yetenek_ID`, `Yetenek_Turu`) VALUES
(1, 'Hasar Verme'),
(2, 'Sis Alanı'),
(3, 'Zıplama'),
(4, 'Işınlanma'),
(5, 'Atılma'),
(6, 'Hareket Hızı Kazandırma'),
(7, 'Tuzak'),
(8, 'Taret'),
(9, 'Savunmasız Bırakma'),
(10, 'Görüş Kazandırma'),
(11, 'Duvar Oluşturma'),
(12, 'Etkisiz Bırakma');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `ajan`
--
ALTER TABLE `ajan`
  ADD PRIMARY KEY (`Ajan_ID`),
  ADD KEY `Cinsiyet_ID` (`Cinsiyet_ID`),
  ADD KEY `Ulke_ID` (`Ulke_ID`);

--
-- Tablo için indeksler `ajan_silah`
--
ALTER TABLE `ajan_silah`
  ADD KEY `Ajan_ID` (`Ajan_ID`),
  ADD KEY `Silah_ID` (`Silah_ID`);

--
-- Tablo için indeksler `ajan_yetenek`
--
ALTER TABLE `ajan_yetenek`
  ADD KEY `Ajan_ID` (`Ajan_ID`),
  ADD KEY `Yetenek_ID` (`Yetenek_ID`);

--
-- Tablo için indeksler `cinsiyet`
--
ALTER TABLE `cinsiyet`
  ADD PRIMARY KEY (`Cinsiyet_ID`);

--
-- Tablo için indeksler `harita`
--
ALTER TABLE `harita`
  ADD PRIMARY KEY (`Harita_ID`);

--
-- Tablo için indeksler `mac`
--
ALTER TABLE `mac`
  ADD PRIMARY KEY (`Mac_ID`),
  ADD KEY `Ajan_ID` (`Ajan_ID`),
  ADD KEY `Harita_ID` (`Harita_ID`),
  ADD KEY `Mod_ID` (`Mod_ID`);

--
-- Tablo için indeksler `oyun_modu`
--
ALTER TABLE `oyun_modu`
  ADD PRIMARY KEY (`Mod_ID`);

--
-- Tablo için indeksler `silah`
--
ALTER TABLE `silah`
  ADD PRIMARY KEY (`Silah_ID`),
  ADD KEY `Tur_ID` (`Tur_ID`);

--
-- Tablo için indeksler `silah_tur`
--
ALTER TABLE `silah_tur`
  ADD PRIMARY KEY (`Tur_ID`);

--
-- Tablo için indeksler `ulke`
--
ALTER TABLE `ulke`
  ADD PRIMARY KEY (`Ulke_ID`);

--
-- Tablo için indeksler `yetenek`
--
ALTER TABLE `yetenek`
  ADD PRIMARY KEY (`Yetenek_ID`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `ajan`
--
ALTER TABLE `ajan`
  MODIFY `Ajan_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Tablo için AUTO_INCREMENT değeri `cinsiyet`
--
ALTER TABLE `cinsiyet`
  MODIFY `Cinsiyet_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `harita`
--
ALTER TABLE `harita`
  MODIFY `Harita_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Tablo için AUTO_INCREMENT değeri `mac`
--
ALTER TABLE `mac`
  MODIFY `Mac_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `oyun_modu`
--
ALTER TABLE `oyun_modu`
  MODIFY `Mod_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Tablo için AUTO_INCREMENT değeri `silah`
--
ALTER TABLE `silah`
  MODIFY `Silah_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Tablo için AUTO_INCREMENT değeri `silah_tur`
--
ALTER TABLE `silah_tur`
  MODIFY `Tur_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Tablo için AUTO_INCREMENT değeri `ulke`
--
ALTER TABLE `ulke`
  MODIFY `Ulke_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Tablo için AUTO_INCREMENT değeri `yetenek`
--
ALTER TABLE `yetenek`
  MODIFY `Yetenek_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `ajan`
--
ALTER TABLE `ajan`
  ADD CONSTRAINT `ajan_ibfk_1` FOREIGN KEY (`Cinsiyet_ID`) REFERENCES `cinsiyet` (`Cinsiyet_ID`),
  ADD CONSTRAINT `ajan_ibfk_2` FOREIGN KEY (`Ulke_ID`) REFERENCES `ulke` (`Ulke_ID`);

--
-- Tablo kısıtlamaları `ajan_silah`
--
ALTER TABLE `ajan_silah`
  ADD CONSTRAINT `ajan_silah_ibfk_1` FOREIGN KEY (`Ajan_ID`) REFERENCES `ajan` (`Ajan_ID`),
  ADD CONSTRAINT `ajan_silah_ibfk_2` FOREIGN KEY (`Silah_ID`) REFERENCES `silah` (`Silah_ID`);

--
-- Tablo kısıtlamaları `ajan_yetenek`
--
ALTER TABLE `ajan_yetenek`
  ADD CONSTRAINT `ajan_yetenek_ibfk_1` FOREIGN KEY (`Ajan_ID`) REFERENCES `ajan` (`Ajan_ID`),
  ADD CONSTRAINT `ajan_yetenek_ibfk_2` FOREIGN KEY (`Yetenek_ID`) REFERENCES `yetenek` (`Yetenek_ID`);

--
-- Tablo kısıtlamaları `mac`
--
ALTER TABLE `mac`
  ADD CONSTRAINT `mac_ibfk_1` FOREIGN KEY (`Ajan_ID`) REFERENCES `ajan` (`Ajan_ID`),
  ADD CONSTRAINT `mac_ibfk_2` FOREIGN KEY (`Harita_ID`) REFERENCES `harita` (`Harita_ID`),
  ADD CONSTRAINT `mac_ibfk_3` FOREIGN KEY (`Mod_ID`) REFERENCES `oyun_modu` (`Mod_ID`);

--
-- Tablo kısıtlamaları `silah`
--
ALTER TABLE `silah`
  ADD CONSTRAINT `silah_ibfk_1` FOREIGN KEY (`Tur_ID`) REFERENCES `silah_tur` (`Tur_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
