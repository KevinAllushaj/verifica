-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Gen 29, 2024 alle 12:04
-- Versione del server: 10.4.32-MariaDB
-- Versione PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `verifica inventario`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `invetario`
--

CREATE TABLE `invetario` (
  `id` int(10) NOT NULL,
  `codicefarnell` int(10) NOT NULL,
  `descrizione` varchar(200) NOT NULL,
  `produttore` varchar(50) NOT NULL,
  `codiceproduttore` varchar(50) NOT NULL,
  `quantita` int(10) NOT NULL,
  `prezzounitario` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `invetario`
--

INSERT INTO `invetario` (`id`, `codicefarnell`, `descrizione`, `produttore`, `codiceproduttore`, `quantita`, `prezzounitario`) VALUES
(1, 4208547, 'RIVELATORE; Tipo di Sviluppatore:Sviluppatore Positivo; Applicazioni Developer:-; Metodo di Erogazione:-; Peso:-; Gamma Prodotti:-; Sostanze Estremamente Preoccupanti (SVHC):No SVHC (15-Jan-2018); Vol', 'CIF', 'AR45', 10, '2,73'),
(2, 2907957, 'USB CABLE, 2.0 PLUG A-MICRO B, 6FT, BLK; Da Connettore a Connettore:Da spina tipo A a micro spina tipo B; Lunghezza Cavo - Metrica:1.83m; Lunghezza Cavo - Imperiale:6ft; Standard USB:USB 2.0; Colore R', 'MULTICOMP', 'MC002734', 50, '1,29'),
(3, 4148009, 'CLORURO FERRICO, 36C, 2.5L TANICA; Metodo di Erogazione:Barattolo; Gamma Prodotti:-; Sostanze Estremamente Preoccupanti (SVHC):No SVHC (15-Jan-2019); Peso:-; Volume:2.5l; Applicazioni:Schede Elettroni', 'CIF', 'AR412', 5, '23,09'),
(4, 1123696, 'INTERR., A 2 POLI, 6 POS, 0,15A, 250V; Num. Di Posizioni Interruttore:6 Posizioni; N° di Poli:2 Poli; Angolo di Rotazione:30°; Corrente di Contatto AC Max:150mA; Tensione Contatto AC Max:250V; Gamma P', 'LORLIN', 'CK1050', 50, '1,97'),
(5, 3117069, 'IC, OP AMP, DUAL, 0.3V/US, 3000UV, PDIP8; Numero di Amplificatori:2 Amplificatori; Larghezza di Banda:700kHz; Velocità di Risposta:0.3V/µs; Intervallo Tensione di Alimentazione:Da ± 1,5V a ± 16V; Mode', 'TEXAS INSTRUMENTS', 'LM358AP', 100, '0,24'),
(6, 2627992, 'REGOL. TENS. LIN. FISSA, 15V, 1A, TO-220; Tipo di Uscita:Fisso; Tensione di Ingresso Min:23V; Tensione di Ingresso Max:35V; Nom. Tensione in Uscita Fissa:15V; T; Available until stocks are exhausted A', 'ON SEMICONDUCTOR', 'NCP7815TG', 50, '0,49'),
(7, 1716993, 'TERMINAL BLOCK, WIRE TO BRD, 2POS, 16AWG; Gamma Prodotti:CTB1202 Series; No. di Contatti:2Contatti; Distanza di Passo:5mm; Tipo di Connettore:Morsettiera; Montaggio Connettore:Montaggio PCB; Dimension', 'CAMDENBOSS', 'CTB1202/2BK', 100, '0,22'),
(8, 1716996, 'TERMINAL BLOCK, WIRE TO BRD, 5POS, 16AWG; Gamma Prodotti:CTB1202 Series; No. di Contatti:5Contatti; Distanza di Passo:5mm; Tipo di Connettore:Morsettiera, PCB; Montaggio Connettore:Montaggio PCB; Dime', 'CAMDENBOSS', 'CTB1202/5BK', 20, '0,72'),
(9, 2346522, 'CON. 1000µF, 35V, 20%; Capacità:1000µF; Tensione Nominale:35V; Gamma Prodotti:Serie PK; Tolleranza Capacità:± 20%; Terminali Condensatore:Con Reofori Radiali; Diametro:10mm; Spaziatura tra Conduttori:', 'RUBYCON', '35PK1000MEFCT810X20', 50, '0,41'),
(10, 2668407, 'PRESA DIP, 8POS, 2FILE, 2.54MM, TH; No. di Contatti:8Contatti; Tipo di Connettore:Presa DIP; Distanza di Passo:2.54mm; Gamma Prodotti:-; Passo Fila:7.62mm; Materiale Contatto:Lega Rame; Rivestimento C', 'AMPHENOL FCI', 'DILB8P-223TLF', 100, '0,13'),
(11, 9470212, 'RES, 80K6, 1%, 600MW, AXIAL, METAL FILM; Resistenza:80.6kohm; Gamma Prodotti:Serie MRS25; Livello di Potenza:600mW; Tolleranza Resistenza:± 1%; Modello Case Resistore:Conduttori Assiali; Tensione Nomi', 'VISHAY', 'MRS25000C8062FCT00', 100, '0,6'),
(12, 9469915, 'RES, 71K5, 1%, 600MW, AXIAL, METAL FILM; Resistenza:71.5kohm; Gamma Prodotti:Serie MRS25; Livello di Potenza:600mW; Tolleranza Resistenza:± 1%; Modello Case Resistore:Conduttori Assiali; Tensione Nomi', 'VISHAY', 'MRS25000C7152FCT00', 100, '0,6'),
(13, 2329641, 'RESISTORE, CARBON , 20K, 0.33W, 5%; Resistenza:20kohm; Gamma Prodotti:Serie CFR; Livello di Potenza:330mW; Tolleranza Resistenza:± 5%; Modello Case Resistore:Conduttori Assiali; Tensione Nominale:250V', 'TE CONNECTIVITY / NEOHM', 'CFR25J20K', 100, '0,01'),
(14, 9469788, 'RES, 6K49, 1%, 600MW, AXIAL, METAL FILM; Resistenza:6.49kohm; Gamma Prodotti:Serie MRS25; Livello di Potenza:600mW; Tolleranza Resistenza:± 1%; Modello Case Resistore:Conduttori Assiali; Tensione Nomi', 'VISHAY', 'MRS25000C6491FCT00', 100, '0,6'),
(15, 2329501, 'RESISTORE, CARBON , 22K, 0,25W, 5%; Resistenza:22kohm; Gamma Prodotti:Serie CFR; Livello di Potenza:250mW; Tolleranza Resistenza:± 5%; Modello Case Resistore:Conduttori Assiali; Tensione Nominale:200V', 'TE CONNECTIVITY / NEOHM', 'CFR16J22K', 100, '0,01'),
(16, 2329947, 'RESISTORE, METAL , 4K7, 0,25W, 1%; Resistenza:4.7kohm; Gamma Prodotti:Serie LR; Livello di Potenza:250mW; Tolleranza Resistenza:± 1%; Modello Case Resistore:Conduttori Assiali; Tensione Nominale:200V;', 'TE CONNECTIVITY / NEOHM', 'LR0204F4K7', 100, '0,01'),
(17, 3399665, 'RES, 1K5, 0.25W, FILM CARBONIO; \r\n', 'TE CONNECTIVITY / NEOHM', 'CFR16J1K5.', 100, '0,01'),
(18, 9466746, 'RES, 2K32, 1%, 600MW, AXIAL, METAL FILM; Resistenza:2.32kohm; Gamma Prodotti:Serie MRS25; Livello di Potenza:600mW; Tolleranza Resistenza:± 1%; Modello Case Resistore:Conduttori Assiali; Tensione Nomi', 'VISHAY', 'MRS25000C2321FCT00', 100, '0,06'),
(19, 2329866, 'RESISTORE, METAL , 130K, 0,25W, 1%; Resistenza:130kohm; Gamma Prodotti:Serie LR; Livello di Potenza:250mW; Tolleranza Resistenza:± 1%; Modello Case Resistore:Conduttori Assiali; Tensione Nominale:200V', 'TE CONNECTIVITY / NEOHM', 'LR0204F130K', 100, '0,01');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `invetario`
--
ALTER TABLE `invetario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `invetario`
--
ALTER TABLE `invetario`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
