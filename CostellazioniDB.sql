-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Creato il: Feb 26, 2025 alle 09:34
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
-- Struttura della tabella `costellazioni`
--

CREATE TABLE `costellazioni` (
  `id` int NOT NULL,
  `nome` varchar(100) NOT NULL,
  `nome_latino` varchar(100) NOT NULL,
  `abbreviazione` varchar(10) NOT NULL,
  `famiglia` varchar(100) DEFAULT NULL,
  `descrizione` text,
  `area_gradi_quad` float DEFAULT NULL,
  `stelle_principali` int DEFAULT NULL,
  `stelle_con_pianeti` int DEFAULT NULL,
  `stella_piu_luminosa` varchar(100) DEFAULT NULL,
  `magnitudine_piu_luminosa` float DEFAULT NULL,
  `mese_visibilita_inizio` tinyint DEFAULT NULL,
  `mese_visibilita_fine` tinyint DEFAULT NULL,
  `emisfero` enum('Boreale','Australe') NOT NULL
) ;

--
-- Dump dei dati per la tabella `costellazioni`
--

INSERT INTO `costellazioni` (`id`, `nome`, `nome_latino`, `abbreviazione`, `famiglia`, `descrizione`, `area_gradi_quad`, `stelle_principali`, `stelle_con_pianeti`, `stella_piu_luminosa`, `magnitudine_piu_luminosa`, `mese_visibilita_inizio`, `mese_visibilita_fine`, `emisfero`) VALUES
(1, 'Andromeda', 'Andromeda', 'And', 'Perseo', 'Rappresenta la principessa Andromeda della mitologia greca', 722.278, 16, 11, 'Alpheratz', 2.06, 9, 2, 'Boreale'),
(2, 'Aquila', 'Aquila', 'Aql', 'Ercole', 'Rappresenta un\'aquila, uccello sacro a Zeus', 652.473, 10, 9, 'Altair', 0.77, 6, 11, 'Boreale'),
(3, 'Ariete', 'Aries', 'Ari', 'Zodiaco', 'Rappresenta l\'ariete con il vello d\'oro della mitologia greca', 441.395, 4, 8, 'Hamal', 2, 10, 3, 'Boreale'),
(4, 'Auriga', 'Auriga', 'Aur', 'Perseo', 'Rappresenta un cocchiere della mitologia greca', 657.438, 6, 9, 'Capella', 0.08, 10, 3, 'Boreale'),
(5, 'Boote', 'Boötes', 'Boo', 'Orsa Maggiore', 'Rappresenta un mandriano o aratore celeste', 906.831, 7, 13, 'Arturo', -0.04, 3, 9, 'Boreale'),
(6, 'Camelopardalis', 'Camelopardalis', 'Cam', 'Orsa Maggiore', 'Rappresenta una giraffa', 756.828, 5, 5, 'β Camelopardalis', 4.03, 1, 12, 'Boreale'),
(7, 'Cancro', 'Cancer', 'Cnc', 'Zodiaco', 'Rappresenta un granchio della mitologia greca', 505.872, 5, 10, 'Altarf', 3.52, 1, 5, 'Boreale'),
(8, 'Cani da caccia', 'Canes Venatici', 'CVn', 'Orsa Maggiore', 'Rappresenta i cani da caccia di Boote', 465.194, 2, 4, 'Cor Caroli', 2.9, 3, 8, 'Boreale'),
(9, 'Cane Maggiore', 'Canis Major', 'CMa', 'Orione', 'Rappresenta il cane più grande di Orione', 380.118, 8, 7, 'Sirio', -1.46, 12, 4, 'Boreale'),
(10, 'Cane Minore', 'Canis Minor', 'CMi', 'Orione', 'Rappresenta il cane più piccolo di Orione', 183.367, 2, 1, 'Procione', 0.38, 1, 4, 'Boreale'),
(11, 'Capricorno', 'Capricornus', 'Cap', 'Zodiaco', 'Rappresenta una creatura mitologica metà capra e metà pesce', 413.947, 4, 5, 'Deneb Algedi', 2.85, 7, 11, 'Boreale'),
(12, 'Cassiopea', 'Cassiopeia', 'Cas', 'Perseo', 'Rappresenta la regina Cassiopea della mitologia greca', 598.407, 5, 7, 'Schedar', 2.23, 7, 4, 'Boreale'),
(13, 'Cefeo', 'Cepheus', 'Cep', 'Perseo', 'Rappresenta il re Cefeo della mitologia greca', 587.787, 5, 9, 'Alderamin', 2.45, 7, 2, 'Boreale'),
(14, 'Cerbero', 'Cerberus', 'Cer', 'Ercole', 'Costellazione obsoleta rappresentante il cane a tre teste della mitologia greca', 0, 0, 0, NULL, NULL, NULL, NULL, 'Boreale'),
(15, 'Chioma di Berenice', 'Coma Berenices', 'Com', 'Orsa Maggiore', 'Rappresenta la chioma della regina Berenice II d\'Egitto', 386.475, 3, 8, 'β Comae Berenices', 4.26, 3, 8, 'Boreale'),
(16, 'Corona Boreale', 'Corona Borealis', 'CrB', 'Ercole', 'Rappresenta la corona di Arianna della mitologia greca', 178.71, 7, 3, 'Alphecca', 2.22, 4, 9, 'Boreale'),
(17, 'Cigno', 'Cygnus', 'Cyg', 'Cigno', 'Rappresenta il cigno in cui Zeus si trasformò', 803.983, 9, 12, 'Deneb', 1.25, 6, 12, 'Boreale'),
(18, 'Delfino', 'Delphinus', 'Del', 'Perseo', 'Rappresenta un delfino della mitologia greca', 188.549, 5, 1, 'Rotanev', 3.63, 7, 11, 'Boreale'),
(19, 'Dragone', 'Draco', 'Dra', 'Orsa Maggiore', 'Rappresenta un drago della mitologia greca', 1082.95, 14, 16, 'Eltanin', 2.24, 1, 12, 'Boreale'),
(20, 'Equuleus', 'Equuleus', 'Equ', 'Perseo', 'Rappresenta un piccolo cavallo', 71.641, 2, 1, 'Kitalpha', 3.92, 7, 10, 'Boreale'),
(21, 'Ercole', 'Hercules', 'Her', 'Ercole', 'Rappresenta l\'eroe Ercole della mitologia greca', 1225.15, 14, 16, 'Kornephoros', 2.78, 4, 10, 'Boreale'),
(22, 'Gemelli', 'Gemini', 'Gem', 'Zodiaco', 'Rappresenta i gemelli Castore e Polluce della mitologia greca', 513.761, 8, 14, 'Pollux', 1.14, 12, 5, 'Boreale'),
(23, 'Giraffa', 'Camelopardalis', 'Cam', 'Orsa Maggiore', 'Rappresenta una giraffa', 756.828, 5, 5, 'β Camelopardalis', 4.03, 1, 12, 'Boreale'),
(24, 'Leone', 'Leo', 'Leo', 'Zodiaco', 'Rappresenta il leone nemeo della mitologia greca', 946.964, 9, 14, 'Regolo', 1.35, 1, 6, 'Boreale'),
(25, 'Leone Minore', 'Leo Minor', 'LMi', 'Orsa Maggiore', 'Rappresenta un piccolo leone', 231.956, 5, 1, 'Praecipua', 3.88, 2, 6, 'Boreale'),
(26, 'Lepre', 'Lepus', 'Lep', 'Orione', 'Rappresenta una lepre cacciata da Orione', 290.291, 5, 2, 'Arneb', 2.58, 12, 3, 'Boreale'),
(27, 'Lince', 'Lynx', 'Lyn', 'Orsa Maggiore', 'Rappresenta una lince', 545.386, 5, 4, 'α Lyncis', 3.13, 1, 5, 'Boreale'),
(28, 'Lira', 'Lyra', 'Lyr', 'Cigno', 'Rappresenta la lira di Orfeo della mitologia greca', 286.476, 5, 6, 'Vega', 0.03, 6, 11, 'Boreale'),
(29, 'Ofiuco', 'Ophiuchus', 'Oph', 'Ercole', 'Rappresenta il portatore del serpente', 948.34, 10, 12, 'Rasalhague', 2.08, 5, 9, 'Boreale'),
(30, 'Orione', 'Orion', 'Ori', 'Orione', 'Rappresenta il cacciatore Orione della mitologia greca', 594.12, 7, 10, 'Rigel', 0.13, 11, 4, 'Boreale'),
(31, 'Orsa Maggiore', 'Ursa Major', 'UMa', 'Orsa Maggiore', 'Rappresenta un\'orsa della mitologia greca', 1279.66, 7, 21, 'Alioth', 1.77, 1, 12, 'Boreale'),
(32, 'Orsa Minore', 'Ursa Minor', 'UMi', 'Orsa Maggiore', 'Rappresenta un\'orsa della mitologia greca', 255.864, 7, 1, 'Polaris', 1.97, 1, 12, 'Boreale'),
(33, 'Pegaso', 'Pegasus', 'Peg', 'Perseo', 'Rappresenta il cavallo alato Pegaso della mitologia greca', 1120.79, 7, 12, 'Enif', 2.38, 7, 12, 'Boreale'),
(34, 'Perseo', 'Perseus', 'Per', 'Perseo', 'Rappresenta l\'eroe Perseo della mitologia greca', 614.997, 19, 5, 'Mirfak', 1.79, 10, 3, 'Boreale'),
(35, 'Pesci', 'Pisces', 'Psc', 'Zodiaco', 'Rappresenta due pesci legati insieme', 889.417, 7, 13, 'Eta Piscium', 3.62, 9, 1, 'Boreale'),
(36, 'Piccolo Cavallo', 'Equuleus', 'Equ', 'Perseo', 'Rappresenta un piccolo cavallo', 71.641, 2, 1, 'Kitalpha', 3.92, 7, 10, 'Boreale'),
(37, 'Sagittario', 'Sagittarius', 'Sgr', 'Zodiaco', 'Rappresenta un arciere centauro', 867.432, 12, 30, 'Kaus Australis', 1.79, 6, 9, 'Boreale'),
(38, 'Scorpione', 'Scorpius', 'Sco', 'Zodiaco', 'Rappresenta uno scorpione', 496.783, 13, 17, 'Antares', 0.96, 5, 9, 'Boreale'),
(39, 'Serpente', 'Serpens', 'Ser', 'Ercole', 'Rappresenta un serpente diviso in due parti', 636.928, 11, 10, 'Unukalhai', 2.63, 5, 9, 'Boreale'),
(40, 'Toro', 'Taurus', 'Tau', 'Zodiaco', 'Rappresenta un toro della mitologia greca', 797.249, 19, 14, 'Aldebaran', 0.85, 11, 3, 'Boreale'),
(41, 'Triangolo', 'Triangulum', 'Tri', 'Perseo', 'Rappresenta un triangolo', 131.847, 3, 3, 'β Trianguli', 3, 10, 2, 'Boreale'),
(42, 'Vergine', 'Virgo', 'Vir', 'Zodiaco', 'Rappresenta la dea Astrea della mitologia greca', 1294.43, 9, 30, 'Spica', 0.98, 3, 7, 'Boreale'),
(43, 'Volpetta', 'Vulpecula', 'Vul', 'Ercole', 'Rappresenta una piccola volpe', 268.165, 5, 7, 'Anser', 4.44, 6, 11, 'Boreale'),
(44, 'Altare', 'Ara', 'Ara', 'Regolo', 'Rappresenta un altare', 237.057, 7, 3, 'β Arae', 2.85, 6, 9, 'Australe'),
(45, 'Aquario', 'Aquarius', 'Aqr', 'Zodiaco', 'Rappresenta un portatore d\'acqua', 979.854, 10, 12, 'Sadalsuud', 2.9, 8, 12, 'Australe'),
(46, 'Balena', 'Cetus', 'Cet', 'Perseo', 'Rappresenta un mostro marino della mitologia greca', 1231.41, 14, 17, 'Deneb Kaitos', 2.04, 9, 2, 'Australe'),
(47, 'Bilancia', 'Libra', 'Lib', 'Zodiaco', 'Rappresenta una bilancia', 538.052, 5, 9, 'Zubeneschamali', 2.61, 4, 8, 'Australe'),
(48, 'Bussola', 'Pyxis', 'Pyx', 'Nave Argo', 'Rappresenta una bussola nautica', 220.833, 3, 1, 'α Pyxidis', 3.68, 1, 4, 'Australe'),
(49, 'Camaleonte', 'Chamaeleon', 'Cha', 'Bayer', 'Rappresenta un camaleonte', 131.592, 4, 2, 'α Chamaeleontis', 4.07, 1, 12, 'Australe'),
(50, 'Carina', 'Carina', 'Car', 'Nave Argo', 'Rappresenta la chiglia della nave Argo', 494.184, 11, 8, 'Canopus', -0.74, 12, 5, 'Australe'),
(51, 'Carena', 'Carina', 'Car', 'Nave Argo', 'Rappresenta la chiglia della nave Argo', 494.184, 11, 8, 'Canopus', -0.74, 12, 5, 'Australe'),
(52, 'Centauro', 'Centaurus', 'Cen', 'Ercole', 'Rappresenta un centauro', 1060.42, 11, 15, 'Alfa Centauri', -0.27, 3, 8, 'Australe'),
(53, 'Compasso', 'Circinus', 'Cir', 'Regolo', 'Rappresenta un compasso da disegno', 93.353, 4, 3, 'α Circini', 3.19, 4, 8, 'Australe'),
(54, 'Corona Australe', 'Corona Australis', 'CrA', 'Sagittario', 'Rappresenta una corona meridionale', 127.696, 6, 3, 'Alphekka Meridiana', 4.1, 6, 9, 'Australe'),
(55, 'Corvo', 'Corvus', 'Crv', 'Idra', 'Rappresenta un corvo', 183.801, 4, 2, 'Gienah', 2.59, 3, 6, 'Australe'),
(56, 'Croce del Sud', 'Crux', 'Cru', 'Centauro', 'Rappresenta una croce cristiana', 68.447, 4, 5, 'Acrux', 0.77, 3, 7, 'Australe'),
(57, 'Dorado', 'Dorado', 'Dor', 'Bayer', 'Rappresenta un pesce dorato o orata', 179.173, 4, 2, 'α Doradus', 3.27, 12, 4, 'Australe'),
(58, 'Eridano', 'Eridanus', 'Eri', 'Perseo', 'Rappresenta il fiume Eridano della mitologia greca', 1137.92, 24, 20, 'Achernar', 0.46, 10, 3, 'Australe'),
(59, 'Fenice', 'Phoenix', 'Phe', 'Bayer', 'Rappresenta l\'uccello mitologico Fenice', 469.319, 9, 6, 'Ankaa', 2.4, 9, 1, 'Australe'),
(60, 'Fornace', 'Fornax', 'For', 'Regolo', 'Rappresenta una fornace chimica', 397.502, 2, 14, 'Dalim', 3.87, 10, 1, 'Australe'),
(61, 'Gru', 'Grus', 'Gru', 'Bayer', 'Rappresenta una gru', 365.513, 9, 5, 'Alnair', 1.74, 8, 12, 'Australe'),
(62, 'Idra', 'Hydra', 'Hya', 'Idra', 'Rappresenta il serpente marino Idra della mitologia greca', 1302.84, 17, 14, 'Alphard', 1.98, 1, 7, 'Australe'),
(63, 'Idra Maschio', 'Hydrus', 'Hyi', 'Bayer', 'Rappresenta un piccolo serpente marino', 243.035, 3, 2, 'β Hydri', 2.8, 9, 3, 'Australe'),
(64, 'Indiano', 'Indus', 'Ind', 'Bayer', 'Rappresenta un nativo americano', 294.006, 3, 3, 'α Indi', 3.11, 7, 11, 'Australe'),
(65, 'Leone Minore', 'Leo Minor', 'LMi', 'Orsa Maggiore', 'Rappresenta un piccolo leone', 231.956, 5, 1, 'Praecipua', 3.88, 2, 6, 'Australe'),
(66, 'Lucertola', 'Lacerta', 'Lac', 'Perseo', 'Rappresenta una lucertola', 200.688, 5, 3, 'α Lacertae', 3.77, 8, 12, 'Australe'),
(67, 'Lupo', 'Lupus', 'Lup', 'Centauro', 'Rappresenta un lupo', 333.683, 9, 5, 'α Lupi', 2.3, 4, 8, 'Australe'),
(68, 'Macchina Pneumatica', 'Antlia', 'Ant', 'Regolo', 'Rappresenta una pompa pneumatica', 238.901, 3, 3, 'α Antliae', 4.25, 2, 5, 'Australe'),
(69, 'Microscopio', 'Microscopium', 'Mic', 'Regolo', 'Rappresenta un microscopio', 209.513, 5, 2, 'γ Microscopii', 4.67, 7, 10, 'Australe'),
(70, 'Mosca', 'Musca', 'Mus', 'Bayer', 'Rappresenta una mosca', 138.355, 6, 2, 'α Muscae', 2.69, 3, 7, 'Australe'),
(71, 'Nave Argo', 'Argo Navis', 'Arg', 'Nave Argo', 'Antica costellazione rappresentante la nave degli Argonauti', 0, 0, 0, NULL, NULL, NULL, NULL, 'Australe'),
(72, 'Ottante', 'Octans', 'Oct', 'Regolo', 'Rappresenta un ottante', 291.045, 3, 2, 'ν Octantis', 3.76, 7, 12, 'Australe'),
(73, 'Pavone', 'Pavo', 'Pav', 'Bayer', 'Rappresenta un pavone', 377.666, 7, 5, 'Peacock', 1.94, 7, 11, 'Australe'),
(74, 'Pesce Australe', 'Piscis Austrinus', 'PsA', 'Perseo', 'Rappresenta un pesce meridionale', 245.375, 7, 5, 'Fomalhaut', 1.16, 8, 11, 'Australe'),
(75, 'Pesce Volante', 'Volans', 'Vol', 'Bayer', 'Rappresenta un pesce volante', 141.354, 6, 2, 'β Volantis', 3.77, 1, 4, 'Australe'),
(76, 'Pittore', 'Pictor', 'Pic', 'Regolo', 'Rappresenta un cavalletto da pittore', 226.876, 3, 2, 'α Pictoris', 3.27, 12, 3, 'Australe'),
(77, 'Poppa', 'Puppis', 'Pup', 'Nave Argo', 'Rappresenta la poppa della nave Argo', 673.434, 10, 12, 'Naos', 2.25, 12, 4, 'Australe'),
(78, 'Reticolo', 'Reticulum', 'Ret', 'Regolo', 'Rappresenta un reticolo ottico', 113.936, 4, 2, 'α Reticuli', 3.33, 11, 2, 'Australe'),
(79, 'Sagittario', 'Sagittarius', 'Sgr', 'Zodiaco', 'Rappresenta un arciere centauro', 867.432, 12, 30, 'Kaus Australis', 1.79, 6, 9, 'Australe'),
(80, 'Scalpello', 'Caelum', 'Cae', 'Regolo', 'Rappresenta uno scalpello o bulino', 124.865, 4, 1, 'α Caeli', 4.45, 11, 2, 'Australe'),
(81, 'Scudo', 'Scutum', 'Sct', 'Ercole', 'Rappresenta lo scudo del re Giovanni III Sobieski', 109.114, 4, 3, 'α Scuti', 3.85, 6, 9, 'Australe'),
(82, 'Sestante', 'Sextans', 'Sex', 'Idra', 'Rappresenta un sestante', 313.515, 3, 5, 'α Sextantis', 4.49, 2, 5, 'Australe'),
(83, 'Telescopio', 'Telescopium', 'Tel', 'Regolo', 'Rappresenta un telescopio', 251.512, 4, 2, 'α Telescopii', 3.49, 6, 9, 'Australe'),
(84, 'Toro', 'Taurus', 'Tau', 'Zodiaco', 'Rappresenta un toro della mitologia greca', 797.249, 19, 14, 'Aldebaran', 0.85, 11, 3, 'Australe'),
(85, 'Triangolo Australe', 'Triangulum Australe', 'TrA', 'Regolo', 'Rappresenta un triangolo meridionale', 109.978, 3, 3, 'Atria', 1.91, 5, 8, 'Australe'),
(86, 'Tucano', 'Tucana', 'Tuc', 'Bayer', 'Rappresenta un tucano', 294.557, 9, 5, 'α Tucanae', 2.86, 8, 12, 'Australe'),
(87, 'Uccello del Paradiso', 'Apus', 'Aps', 'Bayer', 'Rappresenta un uccello del paradiso', 206.327, 4, 2, 'α Apodis', 3.83, 4, 8, 'Australe'),
(88, 'Unicorno', 'Monoceros', 'Mon', 'Orione', 'Rappresenta un unicorno', 481.569, 4, 8, 'β Monocerotis', 3.76, 12, 3, 'Australe'),
(89, 'Vela', 'Vela', 'Vel', 'Nave Argo', 'Rappresenta le vele della nave Argo', 499.649, 9, 7, 'γ Velorum', 1.75, 1, 4, 'Australe'),

-- --------------------------------------------------------

--
-- Struttura della tabella `stelle_costellazioni`
--

CREATE TABLE `stelle_costellazioni` (
  `id` int NOT NULL,
  `id_costellazione` int DEFAULT NULL,
  `nome_stella` varchar(100) NOT NULL,
  `ascensione_retta` decimal(9,6) NOT NULL,
  `declinazione` decimal(8,6) NOT NULL,
  `magnitudine` float DEFAULT NULL,
  `tipo_spettrale` varchar(20) DEFAULT NULL,
  `distanza_anni_luce` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dump dei dati per la tabella `stelle_costellazioni`
--

INSERT INTO `stelle_costellazioni` (`id`, `id_costellazione`, `nome_stella`, `ascensione_retta`, `declinazione`, `magnitudine`, `tipo_spettrale`, `distanza_anni_luce`) VALUES
(1, 1, 'Alpheratz', 0.139790, 29.090432, 2.06, 'B9IV', 97),
(2, 1, 'Mirach', 1.162200, 35.620558, 2.07, 'M0III', 199),
(3, 1, 'Almach', 2.065128, 42.329751, 2.1, 'K3IIb', 355),
(4, 1, 'δ Andromedae', 0.655508, 30.860925, 3.27, 'K3III', 101),
(5, 1, 'ο Andromedae', 23.033981, 42.325990, 3.62, 'B6V', 692),
(6, 29, 'Rigel', 5.242298, -8.201640, 0.13, 'B8Ia', 860),
(7, 29, 'Betelgeuse', 5.919529, 7.407063, 0.45, 'M2Iab', 643),
(8, 29, 'Bellatrix', 5.418851, 6.349703, 1.64, 'B2III', 243),
(9, 29, 'Alnilam', 5.603559, -1.201921, 1.69, 'B0Ia', 1340),
(10, 29, 'Alnitak', 5.679313, -1.942572, 1.74, 'O9.5Ib', 1260),
(11, 29, 'Saiph', 5.795941, -9.669605, 2.07, 'B0.5Ia', 650),
(12, 29, 'Mintaka', 5.533445, -0.299092, 2.23, 'O9.5II', 915),
(13, 30, 'Alioth', 12.900058, 55.959823, 1.77, 'A0p', 81),
(14, 30, 'Dubhe', 11.062156, 61.751033, 1.79, 'K0III', 123),
(15, 30, 'Alkaid', 13.792352, 49.313267, 1.86, 'B3V', 104),
(16, 30, 'Mizar', 13.398747, 54.925362, 2.04, 'A2V', 78),
(17, 30, 'Merak', 11.030677, 56.382427, 2.37, 'A1V', 79),
(18, 30, 'Phecda', 11.897168, 53.694760, 2.44, 'A0Ve', 84),
(19, 30, 'Megrez', 12.257085, 57.032617, 3.31, 'A3V', 81),
(20, 12, 'Schedar', 0.675118, 56.537331, 2.23, 'K0IIIa', 228),
(21, 12, 'Caph', 0.152887, 59.149780, 2.28, 'F2III', 54),
(22, 12, 'γ Cassiopeiae', 0.945014, 60.716970, 2.47, 'B0IVe', 550),
(23, 12, 'Ruchbah', 1.430232, 60.235322, 2.68, 'A5V', 99),
(24, 12, 'ε Cassiopeiae', 1.906631, 63.670020, 3.38, 'B3III', 442),
(25, 60, 'Acrux', 12.443311, -63.099092, 0.77, 'B0.5IV', 321),
(26, 60, 'Mimosa', 12.795359, -59.688764, 1.25, 'B0.5III', 280),
(27, 60, 'Gacrux', 12.519807, -57.113212, 1.63, 'M4III', 88),
(28, 60, 'δ Crucis', 12.252215, -58.748753, 2.8, 'B2IV', 364),
(29, 56, 'Hadar', 14.063729, -60.373039, 0.61, 'B1III', 390),
(30, 56, 'Menkent', 14.111435, -36.369959, 2.06, 'K0III', 61),
(31, 56, 'θ Centauri', 14.063080, -36.370006, 2.06, 'K0II-III', 60),
(32, 56, 'ε Centauri', 13.664736, -53.466593, 2.3, 'B1III', 380),
(33, 56, 'η Centauri', 14.591814, -42.158013, 2.31, 'B1.5Vne', 310),
(34, 56, 'ζ Centauri', 13.926212, -47.288750, 2.55, 'B2.5IV', 385),
(35, 56, 'γ Centauri', 12.694330, -48.959681, 2.8, 'A0III', 130),
(36, 41, 'Aldebaran', 4.598677, 16.509301, 0.85, 'K5III', 65),
(37, 41, 'Elnath', 5.438459, 28.607446, 1.65, 'B7III', 134),
(38, 41, 'Alcyone', 3.791307, 24.105147, 2.87, 'B7III', 440),
(39, 41, 'Ain', 4.329668, 15.627662, 3.53, 'K2III', 158),
(40, 41, 'Atlas', 3.763771, 24.053320, 3.63, 'B8III', 440),
(41, 41, 'Maia', 3.756079, 24.367884, 3.87, 'B8III', 440),
(42, 41, 'Merope', 3.772085, 23.948203, 4.18, 'B6IV', 440),
(43, 37, 'Kaus Australis', 18.402868, -34.384616, 1.79, 'B9.5III', 143),
(44, 37, 'Nunki', 18.921055, -26.296722, 2.05, 'B2.5V', 224),
(45, 37, 'Kaus Media', 18.349942, -29.828103, 2.7, 'K1+IIIb', 306),
(46, 37, 'Kaus Borealis', 18.466127, -25.421664, 2.82, 'K2III', 77),
(47, 37, 'Ascella', 19.043343, -29.880247, 2.98, 'A4IV', 89),
(48, 37, 'φ Sagittarii', 18.760990, -26.990644, 3.17, 'B8III', 231),
(49, 37, 'τ Sagittarii', 19.124405, -27.670395, 3.32, 'K1+IIIb', 120),
(50, 24, 'Regolo', 10.139354, 11.967207, 1.35, 'B7V', 77),
(51, 24, 'Denebola', 11.817663, 14.572060, 2.14, 'A3V', 36),
(52, 24, 'Algieba', 10.332873, 19.841731, 2.28, 'K0III', 130),
(53, 24, 'Zosma', 11.235139, 20.523717, 2.56, 'A4IV', 58),
(54, 24, 'Chertan', 11.397416, 15.429644, 3.34, 'A2IV', 165),
(55, 24, 'Adhafera', 10.278221, 23.417313, 3.44, 'F0III', 274),
(56, 24, 'ρ Leonis', 10.546562, 9.307565, 3.85, 'B1Iab', 5000),
(57, 17, 'Deneb', 20.690532, 45.280337, 1.25, 'A2Ia', 2600),
(58, 17, 'Albireo', 19.512023, 27.959681, 3.05, 'K3II', 390),
(59, 17, 'Sadr', 20.370546, 40.256679, 2.23, 'F8Ib', 1800),
(60, 17, 'δ Cygni', 19.749540, 45.130798, 2.87, 'B9.5III', 170),
(61, 17, 'Gienah', 20.770118, 33.970256, 2.9, 'K0III', 73),
(62, 17, 'ε Cygni', 20.770118, 33.970256, 2.48, 'K0III', 72),
(63, 17, 'ζ Cygni', 21.215544, 30.226934, 3.2, 'G8IIIp', 151),
(64, 38, 'Antares', 16.490125, -26.432002, 0.96, 'M1.5Iab', 550),
(65, 38, 'Shaula', 17.560142, -37.103832, 1.62, 'B2IV', 700),
(66, 38, 'Sargas', 17.621980, -42.997824, 1.86, 'F1II', 300),
(67, 38, 'Dschubba', 16.005558, -22.621710, 2.29, 'B0V', 400),
(68, 38, 'Larawag', 17.708128, -39.030067, 2.3, 'K5III', 130),
(69, 38, 'Acrab', 16.090562, -19.805453, 2.62, 'B1V', 404),
(70, 38, 'Jabbah', 16.353144, -25.593091, 2.82, 'A4III', 107),
(71, 54, 'Canopus', 6.399195, -52.695668, -0.74, 'A9II', 310),
(72, 54, 'Miaplacidus', 9.219945, -69.717331, 1.69, 'A2IV', 111),
(73, 54, 'Avior', 8.375124, -59.509483, 1.86, 'K3III', 632),
(74, 54, 'Tureis', 9.285160, -59.275246, 2.21, 'F0II', 439),
(75, 54, 'θ Carinae', 10.715896, -64.394550, 2.76, 'B0V', 459),
(76, 54, 'υ Carinae', 9.785000, -65.071932, 3.01, 'A8Ib', 1700),
(77, 54, 'ω Carinae', 10.229477, -70.038363, 3.29, 'B8III', 370),
(78, 42, 'Spica', 13.419883, -11.161322, 0.98, 'B1V', 250),
(79, 42, 'Porrima', 12.694512, -1.449375, 2.74, 'F0V', 38),
(80, 42, 'Vindemiatrix', 13.036276, 10.959150, 2.85, 'G8III', 102),
(81, 42, 'Zavijava', 11.845113, 1.764836, 3.6, 'F9V', 35),
(82, 42, 'Zaniah', 12.331826, -0.665865, 3.89, 'A1V', 73),
(83, 42, 'μ Virginis', 14.717912, -5.658167, 3.88, 'K4III', 61),
(84, 42, 'Syrma', 14.267255, -6.000567, 4.08, 'F0III', 69),
(85, 32, 'Enif', 21.736433, 9.875011, 2.38, 'K2Ib', 690),
(86, 32, 'Scheat', 23.062901, 28.082789, 2.44, 'M2.5II-III', 196),
(87, 32, 'Markab', 23.079346, 15.205264, 2.49, 'B9III', 140),
(88, 32, 'Homam', 22.716737, 30.221250, 3.41, 'B8V', 77),
(89, 32, 'Biham', 22.169870, 6.197918, 3.53, 'G0II', 367),
(90, 32, 'Matar', 22.170363, 33.178386, 3.76, 'G2II-III', 215),
(91, 32, 'π Pegasi', 22.170363, 33.178386, 4.29, 'F5III', 53),


--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `costellazioni`
--
ALTER TABLE `costellazioni`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `stelle_costellazioni`
--
ALTER TABLE `stelle_costellazioni`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_costellazione` (`id_costellazione`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `costellazioni`
--
ALTER TABLE `costellazioni`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `stelle_costellazioni`
--
ALTER TABLE `stelle_costellazioni`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=274;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `stelle_costellazioni`
--
ALTER TABLE `stelle_costellazioni`
  ADD CONSTRAINT `stelle_costellazioni_ibfk_1` FOREIGN KEY (`id_costellazione`) REFERENCES `costellazioni` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
