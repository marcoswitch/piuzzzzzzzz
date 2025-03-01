-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Creato il: Mar 01, 2025 alle 07:10
-- Versione del server: 8.0.35
-- Versione PHP: 8.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `CostellazioniDB`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `Costellazioni`
--

CREATE TABLE `Costellazioni` (
  `ID` int NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `Descrizione` text NOT NULL,
  `Latitudine_Minima` float NOT NULL,
  `Latitudine_Massima` float NOT NULL,
  `Longitudine_Minima` float NOT NULL,
  `Longitudine_Massima` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `Costellazioni`
--

INSERT INTO `Costellazioni` (`ID`, `Nome`, `Descrizione`, `Latitudine_Minima`, `Latitudine_Massima`, `Longitudine_Minima`, `Longitudine_Massima`) VALUES
(1, 'Andromeda', 'Rappresenta la principessa Andromeda della mitologia greca', 21.1, 52.5, 22.4, 47),
(2, 'Aquila', 'Rappresenta un\'aquila, uccello sacro a Zeus', -11.9, 19.9, 265, 293),
(3, 'Ariete', 'Rappresenta l\'ariete con il vello d\'oro della mitologia greca', 10.4, 31.3, 28, 53),
(4, 'Auriga', 'Rappresenta un cocchiere della mitologia greca', 30.6, 56.2, 66, 92),
(5, 'Boote', 'Rappresenta un mandriano o aratore celeste', 7.4, 55.1, 204, 236),
(6, 'Camelopardalis', 'Rappresenta una giraffa', 52.6, 86.1, 58, 194),
(7, 'Cancro', 'Rappresenta un granchio della mitologia greca', 6.5, 33.2, 122, 136),
(8, 'Cani da caccia', 'Rappresenta i cani da caccia di Boote', 28.5, 52.2, 172, 202),
(9, 'Cane Maggiore', 'Rappresenta il cane più grande di Orione', -33, 11.2, 100, 132),
(10, 'Cane Minore', 'Rappresenta il cane più piccolo di Orione', -11.3, 14.8, 107, 121),
(11, 'Capricorno', 'Rappresenta una creatura mitologica metà capra e metà pesce', -27.6, -8.2, 294, 322),
(12, 'Cassiopea', 'Rappresenta la regina Cassiopea della mitologia greca', 46.7, 77.7, 336, 41),
(13, 'Cefeo', 'Rappresenta il re Cefeo della mitologia greca', 53, 88.7, 308, 353),
(14, 'Cerbero', 'Costellazione obsoleta rappresentante il cane a tre teste della mitologia greca', 5, 32, 217, 231),
(15, 'Chioma di Berenice', 'Rappresenta la chioma della regina Berenice II d\'Egitto', 12.3, 33.3, 174, 203),
(16, 'Corona Boreale', 'Rappresenta la corona di Arianna della mitologia greca', 25.6, 39.7, 219, 238),
(17, 'Cigno', 'Rappresenta il cigno in cui Zeus si trasformò', 27.4, 61.6, 289, 330),
(18, 'Delfino', 'Rappresenta un delfino della mitologia greca', 2.4, 21.6, 297, 317),
(19, 'Dragone', 'Rappresenta un drago della mitologia greca', 49, 86, 122, 286),
(20, 'Equuleus', 'Rappresenta un piccolo cavallo', 3.8, 11.3, 309, 320),
(21, 'Ercole', 'Rappresenta l\'eroe Ercole della mitologia greca', 3.7, 51.1, 235, 289),
(22, 'Gemelli', 'Rappresenta i gemelli Castore e Polluce della mitologia greca', 7.3, 35.2, 102, 125),
(23, 'Giraffa', 'Rappresenta una giraffa', 52.6, 86.1, 58, 194),
(24, 'Leone', 'Rappresenta il leone nemeo della mitologia greca', 0.4, 32, 142, 192),
(25, 'Leone Minore', 'Rappresenta un piccolo leone', 22.8, 41.1, 140, 170),
(26, 'Lepre', 'Rappresenta una lepre cacciata da Orione', -35.9, -12.9, 72, 93),
(27, 'Lince', 'Rappresenta una lince', 32.1, 61.6, 120, 176),
(28, 'Lira', 'Rappresenta la lira di Orfeo della mitologia greca', 25.2, 47.7, 263, 288),
(29, 'Ofiuco', 'Rappresenta il portatore del serpente', -30, 20, 235, 274),
(30, 'Orione', 'Rappresenta il cacciatore Orione della mitologia greca', -11, 11, 78, 100),
(31, 'Orsa Maggiore', 'Rappresenta un \'orsa della mitologia greca', 28, 73, 126, 220),
(32, 'Orsa Minore', 'Rappresenta un\'orsa della mitologia greca', 71, 90, 0, 360),
(33, 'Pegaso', 'Rappresenta il cavallo alato Pegaso della mitologia greca', 2.3, 36.6, 325, 355),
(34, 'Perseo', 'Rappresenta l\'eroe Perseo della mitologia greca', 30.2, 59.1, 27, 60),
(35, 'Pesci', 'Rappresenta due pesci legati insieme', -6.3, 33.3, 330, 360),
(36, 'Piccolo Cavallo', 'Rappresenta un piccolo cavallo', 3.8, 11.3, 309, 320),
(37, 'Sagittario', 'Rappresenta un arciere centauro', -45, -12.5, 263, 295),
(38, 'Scorpione', 'Rappresenta uno scorpione', -46, -8, 233, 267),
(39, 'Serpente', 'Rappresenta un serpente diviso in due parti', -16, 18, 220, 276),
(40, 'Toro', 'Rappresenta un toro della mitologia greca', -1.4, 31.6, 47, 98),
(41, 'Triangolo', 'Rappresenta un triangolo', 25.7, 37.3, 26, 40),
(42, 'Vergine', 'Rappresenta la dea Astrea della mitologia greca', -22, 15.5, 179, 221),
(43, 'Volpetta', 'Rappresenta una piccola volpe', 19.1, 29.5, 277, 320),
(44, 'Altare', 'Rappresenta un altare', -67.2, -45.2, 260, 275),
(45, 'Aquario', 'Rappresenta un portatore d\'acqua', -25.8, 3.3, 303, 357),
(46, 'Balena', 'Rappresenta un mostro marino della mitologia greca', -24, 10, 350, 55),
(47, 'Bilancia', 'Rappresenta una bilancia', -30, -0.8, 220, 245),
(48, 'Bussola', 'Rappresenta una bussola nautica', -57, -37.3, 147, 173),
(49, 'Camaleonte', 'Rappresenta un camaleonte', -90, -77.3, 300, 340),
(50, 'Carina', 'Rappresenta la chiglia della nave Argo', -76, -50, 140, 180),
(51, 'Centauro', 'Rappresenta un centauro', -64, -29, 187, 222),
(52, 'Compasso', 'Rappresenta un compasso da disegno', -42, -34, 200, 210),
(53, 'Corona Australe', 'Rappresenta una corona meridionale', -48, -37, 270, 290),
(54, 'Corvo', 'Rappresenta un corvo', -25.6, -11, 183, 202),
(55, 'Croce del Sud', 'Rappresenta una croce cristiana', -64, -55, 180, 200),
(56, 'Dorado', 'Rappresenta un pesce dorato o orata', -75, -45, 260, 320),
(57, 'Eridano', 'Rappresenta il fiume Eridano della mitologia greca', -58, -10, 38, 84),
(58, 'Fenice', 'Rappresenta l\'uccello mitologico Fenice', -57, -39, 345, 30),
(59, 'Fornace', 'Rappresenta una fornace chimica', -40, -23, 30, 60),
(60, 'Gru', 'Rappresenta una gru', -56, -34, 330, 350),
(61, 'Idra', 'Rappresenta il serpente marino Idra della mitologia greca', -32, 6, 130, 220),
(62, 'Idra Maschio', 'Rappresenta un piccolo serpente marino', -90, -57, 100, 120),
(63, 'Indiano', 'Rappresenta un nativo americano', -70, -40, 300, 345),
(64, 'Leone Minore', 'Rappresenta un piccolo leone', 22.8, 41.1, 140, 170),
(65, 'Lucertola', 'Rappresenta una lucertola', 35, 50, 320, 340),
(66, 'Lupo', 'Rappresenta un lupo', -55, -30, 220, 250),
(67, 'Macchina Pneumatica', 'Rappresenta una pompa pneumatica', -40, -25, 220, 245),
(68, 'Microscopio', 'Rappresenta un microscopio', -45, -27, 200, 220),
(69, 'Mosca', 'Rappresenta una mosca', -85, -64, 180, 220),
(70, 'Nave Argo', 'Antica costellazione rappresentante la nave degli Argonauti', -75, -45, 140, 180),
(71, 'Ottante', 'Rappresenta un ottante', -90, -75, 300, 350),
(72, 'Pavone', 'Rappresenta un pavone', -75, -56, 300, 340),
(73, 'Pesce Australe', 'Rappresenta un pesce meridionale', -35, -20, 340, 10),
(74, 'Pesce Volante', 'Rappresenta un pesce volante', -80, -60, 270, 310),
(75, 'Pittore', 'Rappresenta un cavalletto da pittore', -65, -40, 40, 80),
(76, 'Poppa', 'Rappresenta la poppa della nave Argo', -75, -40, 105, 150),
(77, 'Reticolo', 'Rappresenta un reticolo ottico', -70, -50, 300, 330),
(78, 'Sagittario', 'Rappresenta un arciere centauro', -45, -12.5, 263, 295),
(79, 'Scalpello', 'Rappresenta uno scalpello o bulino', -40, -30, 220, 240),
(80, 'Scudo', 'Rappresenta lo scudo del re Giovanni III Sobieski', -16, -4, 270, 285),
(81, 'Sestante', 'Rappresenta un sestante', -11, 7, 150, 170),
(82, 'Telescopio', 'Rappresenta un telescopio', -56, -45, 265, 290),
(83, 'Toro', 'Rappresenta un toro della mitologia greca', -1.4, 31.6, 47, 98),
(84, 'Triangolo Australe', 'Rappresenta un triangolo meridionale', -70, -60, 250, 275),
(85, 'Tucano', 'Rappresenta un tucano', -75, -55, 320, 350),
(86, 'Uccello del Paradiso', 'Rappresenta un uccello del paradiso', -75, -55, 300, 340),
(87, 'Unicorno', 'Rappresenta un unicorno', -11, 8, 90, 120),
(88, 'Vela', 'Rappresenta le vele della nave Argo', -75, -37, 130, 180);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `Costellazioni`
--
ALTER TABLE `Costellazioni`
  ADD PRIMARY KEY (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
