-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Ott 09, 2017 alle 20:28
-- Versione del server: 10.1.25-MariaDB
-- Versione PHP: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sportferrara`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `amministratore`
--

CREATE TABLE `amministratore` (
  `ID_Utente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `amministratore`
--

INSERT INTO `amministratore` (`ID_Utente`) VALUES
(1);

-- --------------------------------------------------------

--
-- Struttura della tabella `arbitro`
--

CREATE TABLE `arbitro` (
  `ID_Registrato` int(11) NOT NULL,
  `Foto` varchar(50) NOT NULL,
  `Data_nascita` varchar(10) NOT NULL,
  `Nazionalita` varchar(20) NOT NULL,
  `Carriera` varchar(5000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `arbitro`
--

INSERT INTO `arbitro` (`ID_Registrato`, `Foto`, `Data_nascita`, `Nazionalita`, `Carriera`) VALUES
(7, 'a1.jpg', '06-02-1969', 'Svizzera', 'Dal 1º gennaio 1999 è arbitro internazionale FIFA e nel 2002 ha ricoperto il ruolo di quarto uomo durante la finale della UEFA Champions League tra Real Madrid e Bayer Leverkusen. Nel 2003 e nel 2005 viene impiegato in occasione dei mondiali under 20 disputatisi, rispettivamente, negli Emirati Arabi Uniti e nei Paesi Bassi. Nel 2004 è stato inserito nella categoria Élite degli arbitri UEFA.'),
(8, 'a2.jpg', '13-02-1960', 'Italiana', 'Tra le partite arbitrate, ci sono una finale di Coppa Campioni 1998-1999 (con la rocambolesca vittoria del Manchester United grazie a due gol segnati nei minuti di recupero) e la finale del Mondiali 2002 Brasile-Germania, terminata 2-0 per i brasiliani (nello stesso torneo diresse anche Argentina-Inghilterra e l`ottavo di finale Turchia-Giappone).\r\n\r\nHa diretto inoltre la Finale di Coppa UEFA 2003-2004 tra Valencia e Marsiglia (2-0) e la finale del torneo calcistico alle Olimpiadi del 1996 tra Nigeria e Argentina (3-2); in tale competizione diresse altre 4 gare.\r\n\r\nÈ stato impiegato anche al Campionato mondiale di calcio 1998, dove fu designato per Paesi Bassi-Belgio e Francia-Danimarca, al Campionato europeo di calcio 2000, in cui gli vennero affidate Paesi Bassi-Repubblica Ceca, Inghilterra-Germania e il quarto di finale Francia-Spagna. Inoltre ha diretto la semifinale Repubblica Ceca-Grecia di Portogallo 2004, oltre che la partita inaugurale Portogallo-Grecia e Inghilterra-Croazia.');

-- --------------------------------------------------------

--
-- Struttura della tabella `cartellino`
--

CREATE TABLE `cartellino` (
  `ID_Referto` int(7) NOT NULL,
  `ID_Giocatore` int(11) NOT NULL,
  `Numero` int(11) DEFAULT '0',
  `Ammonizione` char(1) DEFAULT NULL,
  `Espulsione` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `cartellino`
--

INSERT INTO `cartellino` (`ID_Referto`, `ID_Giocatore`, `Numero`, `Ammonizione`, `Espulsione`) VALUES
(1, 20, 1, 'Y', 'N'),
(1, 59, 2, 'N', 'Y'),
(2, 5, 1, 'Y', 'N'),
(2, 42, 2, 'N', 'Y'),
(2, 46, 1, 'Y', 'N'),
(3, 50, 1, 'Y', 'N'),
(3, 67, 2, 'N', 'Y'),
(3, 73, 1, 'Y', 'N'),
(4, 3, 1, 'Y', 'N'),
(4, 70, 2, 'N', 'Y'),
(5, 23, 2, 'N', 'Y'),
(5, 28, 1, 'Y', 'N'),
(5, 40, 1, 'Y', 'N'),
(6, 23, 1, 'Y', 'N'),
(6, 38, 1, 'Y', 'N'),
(6, 72, 2, 'N', 'Y'),
(6, 76, 1, 'Y', 'N'),
(7, 11, 1, 'Y', 'N'),
(7, 43, 2, 'N', 'Y'),
(7, 49, 1, 'Y', 'N'),
(7, 52, 1, 'Y', 'N'),
(8, 29, 2, 'N', 'Y'),
(8, 64, 1, 'Y', 'N'),
(8, 72, 1, 'Y', 'N'),
(8, 74, 1, 'Y', 'N');

-- --------------------------------------------------------

--
-- Struttura della tabella `classifica`
--

CREATE TABLE `classifica` (
  `Punti` int(11) DEFAULT '0',
  `Vittorie` int(11) DEFAULT '0',
  `Sconfitte` int(11) DEFAULT '0',
  `Pareggi` int(11) DEFAULT '0',
  `Partite` int(11) DEFAULT '0',
  `Goal_fatti` int(11) DEFAULT '0',
  `Goal_subiti` int(11) DEFAULT '0',
  `ID_Torneo` int(7) NOT NULL,
  `ID_Squadra` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `classifica`
--

INSERT INTO `classifica` (`Punti`, `Vittorie`, `Sconfitte`, `Pareggi`, `Partite`, `Goal_fatti`, `Goal_subiti`, `ID_Torneo`, `ID_Squadra`) VALUES
(4, 1, 0, 1, 2, 5, 3, 1, 1),
(3, 1, 0, 0, 1, 2, 1, 1, 2),
(1, 0, 1, 1, 2, 3, 5, 1, 3),
(0, 0, 1, 0, 1, 1, 2, 1, 4),
(0, 0, 1, 0, 1, 3, 4, 2, 3),
(3, 1, 0, 0, 1, 4, 3, 2, 4),
(0, 0, 1, 0, 1, 2, 3, 3, 1),
(6, 2, 0, 0, 2, 8, 5, 3, 2),
(0, 0, 1, 0, 1, 3, 5, 3, 3),
(3, 1, 1, 0, 2, 5, 5, 3, 4),
(3, 1, 0, 0, 1, 4, 2, 4, 2),
(0, 0, 1, 0, 1, 2, 4, 4, 4);

-- --------------------------------------------------------

--
-- Struttura della tabella `formazione`
--

CREATE TABLE `formazione` (
  `ID_Giocatore` int(11) NOT NULL,
  `ID_Squadra` int(7) NOT NULL,
  `ID_Referto` int(7) NOT NULL,
  `Riserva` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `formazione`
--

INSERT INTO `formazione` (`ID_Giocatore`, `ID_Squadra`, `ID_Referto`, `Riserva`) VALUES
(1, 1, 2, 'N'),
(1, 1, 4, 'N'),
(1, 1, 7, 'N'),
(1, 1, 9, 'N'),
(2, 1, 2, 'N'),
(2, 1, 4, 'N'),
(2, 1, 7, 'N'),
(2, 1, 9, 'N'),
(3, 1, 2, 'Y'),
(3, 1, 4, 'N'),
(3, 1, 7, 'N'),
(3, 1, 9, 'N'),
(4, 1, 2, 'N'),
(4, 1, 4, 'N'),
(4, 1, 7, 'N'),
(4, 1, 9, 'N'),
(5, 1, 2, 'N'),
(5, 1, 4, 'N'),
(5, 1, 7, 'N'),
(5, 1, 9, 'N'),
(6, 1, 2, 'N'),
(6, 1, 4, 'N'),
(6, 1, 7, 'N'),
(6, 1, 9, 'N'),
(7, 1, 2, 'Y'),
(7, 1, 4, 'N'),
(7, 1, 7, 'N'),
(7, 1, 9, 'N'),
(8, 1, 2, 'Y'),
(8, 1, 4, 'Y'),
(8, 1, 7, 'Y'),
(8, 1, 9, 'Y'),
(9, 1, 2, 'N'),
(9, 1, 4, 'N'),
(9, 1, 7, 'N'),
(9, 1, 9, 'N'),
(10, 1, 2, 'Y'),
(10, 1, 4, 'Y'),
(10, 1, 7, 'Y'),
(10, 1, 9, 'Y'),
(11, 1, 2, 'N'),
(11, 1, 4, 'N'),
(11, 1, 7, 'N'),
(11, 1, 9, 'N'),
(12, 1, 2, 'N'),
(12, 1, 4, 'Y'),
(12, 1, 7, 'Y'),
(12, 1, 9, 'Y'),
(14, 1, 2, 'Y'),
(14, 1, 4, 'Y'),
(14, 1, 7, 'Y'),
(14, 1, 9, 'Y'),
(15, 1, 2, 'N'),
(15, 1, 4, 'N'),
(15, 1, 7, 'N'),
(15, 1, 9, 'N'),
(16, 1, 2, 'N'),
(16, 1, 4, 'N'),
(16, 1, 7, 'N'),
(16, 1, 9, 'N'),
(17, 1, 2, 'N'),
(17, 1, 4, 'Y'),
(17, 1, 7, 'Y'),
(17, 1, 9, 'Y'),
(18, 1, 2, 'Y'),
(18, 1, 4, 'Y'),
(18, 1, 7, 'Y'),
(18, 1, 9, 'Y'),
(19, 1, 2, 'Y'),
(19, 1, 4, 'Y'),
(19, 1, 7, 'Y'),
(19, 1, 9, 'Y'),
(20, 2, 1, 'N'),
(20, 2, 5, 'N'),
(20, 2, 6, 'N'),
(20, 2, 8, 'N'),
(21, 2, 1, 'N'),
(21, 2, 5, 'N'),
(21, 2, 6, 'N'),
(21, 2, 8, 'N'),
(22, 2, 1, 'N'),
(22, 2, 5, 'N'),
(22, 2, 6, 'N'),
(22, 2, 8, 'N'),
(23, 2, 1, 'N'),
(23, 2, 5, 'N'),
(23, 2, 6, 'N'),
(23, 2, 8, 'N'),
(24, 2, 1, 'N'),
(24, 2, 5, 'N'),
(24, 2, 6, 'N'),
(24, 2, 8, 'N'),
(25, 2, 1, 'N'),
(25, 2, 5, 'N'),
(25, 2, 6, 'N'),
(25, 2, 8, 'N'),
(26, 2, 1, 'N'),
(26, 2, 5, 'N'),
(26, 2, 6, 'Y'),
(26, 2, 8, 'N'),
(27, 2, 1, 'N'),
(27, 2, 5, 'Y'),
(27, 2, 6, 'Y'),
(27, 2, 8, 'Y'),
(28, 2, 1, 'N'),
(28, 2, 5, 'N'),
(28, 2, 6, 'N'),
(28, 2, 8, 'N'),
(29, 2, 1, 'N'),
(29, 2, 5, 'N'),
(29, 2, 6, 'N'),
(29, 2, 8, 'N'),
(30, 2, 1, 'Y'),
(30, 2, 5, 'N'),
(30, 2, 6, 'Y'),
(30, 2, 8, 'N'),
(31, 2, 1, 'Y'),
(31, 2, 5, 'Y'),
(31, 2, 6, 'Y'),
(31, 2, 8, 'Y'),
(32, 2, 1, 'Y'),
(32, 2, 5, 'Y'),
(32, 2, 6, 'Y'),
(32, 2, 8, 'Y'),
(33, 2, 1, 'N'),
(33, 2, 5, 'Y'),
(33, 2, 6, 'Y'),
(33, 2, 8, 'N'),
(34, 2, 1, 'Y'),
(34, 2, 5, 'Y'),
(34, 2, 6, 'N'),
(34, 2, 8, 'Y'),
(35, 2, 1, 'Y'),
(35, 2, 5, 'Y'),
(35, 2, 6, 'Y'),
(35, 2, 8, 'Y'),
(37, 2, 1, 'Y'),
(37, 2, 5, 'N'),
(37, 2, 6, 'N'),
(37, 2, 8, 'Y'),
(38, 2, 1, 'Y'),
(38, 2, 5, 'Y'),
(38, 2, 6, 'N'),
(38, 2, 8, 'Y'),
(39, 3, 2, 'N'),
(39, 3, 3, 'N'),
(39, 3, 5, 'N'),
(39, 3, 7, 'N'),
(40, 3, 2, 'N'),
(40, 3, 3, 'N'),
(40, 3, 5, 'N'),
(40, 3, 7, 'N'),
(41, 3, 2, 'N'),
(41, 3, 3, 'N'),
(41, 3, 5, 'N'),
(41, 3, 7, 'N'),
(42, 3, 2, 'N'),
(42, 3, 3, 'N'),
(42, 3, 5, 'N'),
(42, 3, 7, 'N'),
(43, 3, 2, 'N'),
(43, 3, 3, 'N'),
(43, 3, 5, 'N'),
(43, 3, 7, 'N'),
(44, 3, 2, 'Y'),
(44, 3, 3, 'Y'),
(44, 3, 5, 'N'),
(44, 3, 7, 'N'),
(45, 3, 2, 'Y'),
(45, 3, 3, 'N'),
(45, 3, 5, 'N'),
(45, 3, 7, 'N'),
(46, 3, 2, 'Y'),
(46, 3, 3, 'Y'),
(46, 3, 5, 'Y'),
(46, 3, 7, 'N'),
(47, 3, 2, 'Y'),
(47, 3, 3, 'Y'),
(47, 3, 5, 'Y'),
(47, 3, 7, 'Y'),
(48, 3, 5, 'N'),
(48, 3, 7, 'Y'),
(49, 3, 2, 'N'),
(49, 3, 3, 'N'),
(49, 3, 5, 'N'),
(49, 3, 7, 'N'),
(50, 3, 2, 'Y'),
(50, 3, 3, 'N'),
(50, 3, 5, 'Y'),
(50, 3, 7, 'Y'),
(51, 3, 2, 'Y'),
(51, 3, 3, 'Y'),
(51, 3, 5, 'Y'),
(51, 3, 7, 'Y'),
(52, 3, 2, 'N'),
(52, 3, 3, 'Y'),
(52, 3, 5, 'Y'),
(52, 3, 7, 'Y'),
(54, 3, 2, 'N'),
(54, 3, 3, 'N'),
(54, 3, 5, 'N'),
(54, 3, 7, 'N'),
(55, 3, 2, 'N'),
(55, 3, 3, 'N'),
(55, 3, 7, 'Y'),
(56, 3, 2, 'N'),
(56, 3, 3, 'N'),
(56, 3, 5, 'N'),
(56, 3, 7, 'N'),
(57, 3, 2, 'Y'),
(57, 3, 3, 'Y'),
(57, 3, 5, 'Y'),
(58, 3, 2, 'N'),
(58, 3, 3, 'Y'),
(58, 3, 5, 'Y'),
(58, 3, 7, 'Y'),
(59, 4, 1, 'N'),
(59, 4, 3, 'N'),
(59, 4, 4, 'N'),
(59, 4, 6, 'N'),
(59, 4, 8, 'N'),
(60, 4, 1, 'N'),
(60, 4, 3, 'N'),
(60, 4, 4, 'N'),
(60, 4, 6, 'N'),
(60, 4, 8, 'N'),
(61, 4, 1, 'Y'),
(61, 4, 3, 'N'),
(61, 4, 4, 'N'),
(61, 4, 6, 'Y'),
(61, 4, 8, 'N'),
(62, 4, 1, 'Y'),
(62, 4, 3, 'Y'),
(62, 4, 4, 'N'),
(62, 4, 6, 'N'),
(62, 4, 8, 'N'),
(63, 4, 1, 'N'),
(63, 4, 3, 'N'),
(63, 4, 4, 'N'),
(63, 4, 6, 'N'),
(63, 4, 8, 'N'),
(64, 4, 1, 'N'),
(64, 4, 3, 'N'),
(64, 4, 4, 'N'),
(64, 4, 6, 'N'),
(64, 4, 8, 'N'),
(65, 4, 1, 'N'),
(65, 4, 3, 'N'),
(65, 4, 4, 'N'),
(65, 4, 6, 'N'),
(65, 4, 8, 'N'),
(66, 4, 1, 'N'),
(66, 4, 3, 'N'),
(66, 4, 4, 'Y'),
(66, 4, 6, 'N'),
(66, 4, 8, 'Y'),
(67, 4, 1, 'N'),
(67, 4, 3, 'N'),
(67, 4, 4, 'Y'),
(67, 4, 6, 'Y'),
(67, 4, 8, 'Y'),
(68, 4, 1, 'N'),
(68, 4, 3, 'Y'),
(68, 4, 4, 'Y'),
(68, 4, 6, 'Y'),
(68, 4, 8, 'Y'),
(69, 4, 1, 'Y'),
(69, 4, 3, 'N'),
(69, 4, 4, 'N'),
(69, 4, 6, 'N'),
(69, 4, 8, 'N'),
(70, 4, 1, 'Y'),
(70, 4, 3, 'N'),
(70, 4, 4, 'N'),
(70, 4, 6, 'N'),
(70, 4, 8, 'N'),
(71, 4, 1, 'N'),
(71, 4, 3, 'Y'),
(71, 4, 4, 'Y'),
(71, 4, 6, 'Y'),
(71, 4, 8, 'Y'),
(72, 4, 1, 'N'),
(72, 4, 3, 'Y'),
(72, 4, 4, 'N'),
(72, 4, 6, 'N'),
(72, 4, 8, 'N'),
(73, 4, 1, 'Y'),
(73, 4, 3, 'N'),
(73, 4, 4, 'Y'),
(73, 4, 6, 'Y'),
(73, 4, 8, 'Y'),
(74, 4, 1, 'Y'),
(74, 4, 3, 'Y'),
(74, 4, 4, 'Y'),
(74, 4, 6, 'Y'),
(74, 4, 8, 'Y'),
(75, 4, 1, 'N'),
(75, 4, 3, 'Y'),
(75, 4, 4, 'N'),
(75, 4, 6, 'N'),
(75, 4, 8, 'N'),
(76, 4, 1, 'Y'),
(76, 4, 3, 'Y'),
(76, 4, 4, 'Y'),
(76, 4, 6, 'Y'),
(76, 4, 8, 'Y');

-- --------------------------------------------------------

--
-- Struttura della tabella `gestore_squadra`
--

CREATE TABLE `gestore_squadra` (
  `ID_Registrato` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `gestore_squadra`
--

INSERT INTO `gestore_squadra` (`ID_Registrato`) VALUES
(2),
(3),
(4),
(5),
(6);

-- --------------------------------------------------------

--
-- Struttura della tabella `giocano`
--

CREATE TABLE `giocano` (
  `ID_Partita` int(7) NOT NULL,
  `ID_SquadraA` int(7) NOT NULL,
  `ID_SquadraB` int(7) NOT NULL,
  `ID_Torneo` int(7) NOT NULL,
  `Numero_giornata_o_fase` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `giocano`
--

INSERT INTO `giocano` (`ID_Partita`, `ID_SquadraA`, `ID_SquadraB`, `ID_Torneo`, `Numero_giornata_o_fase`) VALUES
(1, 4, 2, 1, '1'),
(2, 2, 4, 1, '4'),
(3, 3, 1, 1, '1'),
(4, 1, 3, 1, '4'),
(5, 3, 4, 1, '2'),
(6, 4, 3, 1, '5'),
(7, 2, 1, 1, '2'),
(8, 1, 2, 1, '5'),
(9, 4, 1, 1, '3'),
(10, 1, 4, 1, '6'),
(11, 2, 3, 1, '3'),
(12, 3, 2, 1, '6'),
(13, 4, 3, 2, '1'),
(14, 4, 1, 3, '2'),
(15, 3, 2, 3, '2'),
(16, 4, 2, 3, '1'),
(17, 4, 2, 4, '1');

-- --------------------------------------------------------

--
-- Struttura della tabella `giocatore`
--

CREATE TABLE `giocatore` (
  `ID_Giocatore` int(11) NOT NULL,
  `Nome` varchar(30) NOT NULL,
  `Cognome` varchar(30) NOT NULL,
  `Nazionalita` varchar(20) NOT NULL,
  `Data_nascita` varchar(10) NOT NULL,
  `Numero_maglia` int(11) DEFAULT NULL,
  `Ruolo` varchar(50) NOT NULL,
  `Foto` varchar(50) NOT NULL,
  `Goal` int(11) DEFAULT '0',
  `Ammonizioni` int(11) DEFAULT '0',
  `Espulsioni` int(11) DEFAULT '0',
  `Attivo` char(1) DEFAULT 'Y',
  `Descrizione` varchar(5000) DEFAULT NULL,
  `ID_Squadra` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `giocatore`
--

INSERT INTO `giocatore` (`ID_Giocatore`, `Nome`, `Cognome`, `Nazionalita`, `Data_nascita`, `Numero_maglia`, `Ruolo`, `Foto`, `Goal`, `Ammonizioni`, `Espulsioni`, `Attivo`, `Descrizione`, `ID_Squadra`) VALUES
(1, 'Salvador', 'Ichazo', 'Uruguay', '26-01-1992', 1, 'Portiere', 's1-g1.jpg', 0, 0, 0, 'Y', 'Milita fin dal 2006 nel Danubio, prima giocando con le formazioni giovanili e poi venendo aggregato alla prima squadra. Nel 2013 vince il Torneo Apertura e nel 2014 vince la finale scudetto della Primera División Profesional, dopo che i suoi hanno raggiunto il pareggio al 118`, ha neutralizzato ben 4 tiri dagli undici metri contro i Montevideo Wanderers, vincendo così il suo primo campionato, il quarto nella storia del Danubio.', 1),
(2, 'Cristian', 'Molinaro', 'Italiana', '30-07-1983', 3, 'Difensore', 's1-g2.jpg', 0, 0, 0, 'Y', 'Ha iniziato a giocare all`età di 5 anni nella squadra della Gelbison, a Vallo della Lucania. Cresce calcisticamente nella Salernitana e, terminata la gavetta nelle squadre giovanili, esordisce con questa nel campionato di Serie B 2002-2003. Le due stagioni agonistiche successive le gioca da titolare nelle file salernitane, realizzando nel 2004-2005 la sua prima marcatura fra i professionisti, in un incontro tra i campani ed il Bari.', 1),
(3, 'Mirko', 'Valdifiori', 'Italiana', '21-04-1986', 5, 'Centrocampista', 's1-g3.jpg', 0, 1, 0, 'Y', 'Predilige giocare davanti alla difesa preferibilmente in un centrocampo a tre, è un regista abile a dettare i tempi di gioco. Calcia bene punizioni e corner ed è abile nel servire assist ai compagni, mentre la conclusione in porta non è un`abilità del suo repertorio.', 1),
(4, 'Afriyie', 'Acquah', 'Ghana', '05-01-1992', 6, 'Centrocampista', 's1-g4.jpg', 0, 0, 0, 'Y', 'È un talentuoso centrocampista ambidestro (il suo piede preferito è il destro) veloce e forte fisicamente e dotato di temperamento, che grazie alla sua duttilità può giocare in tutte le zone del centrocampo. È in grado di impostare la manovra con buoni lanci se impiegato da regista,di rallentare il gioco avversario e di inserirsi nell`area avversaria. È paragonato a Michael Essien.', 1),
(5, 'Daniele', 'Basselli', 'Italiana', '12-03-1992', 8, 'Centrocampista', 's1-g5.jpg', 0, 1, 0, 'Y', 'Secondo il suo procuratore Giuseppe Riso «Il suo ruolo sicuramente è da mezz`ala, non davanti la difesa. Col tempo riuscirà anche a fare il metodista però in questo momento ha tempi d`inserimento ed è abbastanza pericoloso quando si inserisce in area avversaria. È un centrocampista box to box?, pulito nell`intervento, abile nei passaggi con entrambi i piedi, elegante e molto tecnico».', 1),
(6, 'Andrea', 'Belotti', 'Italiana', '20-12-1993', 9, 'Attaccante', 's1-g1.jpg', 0, 0, 0, 'Y', 'Inizia la carriera alternandosi tra la mediana e la fascia, salvo poi adattarsi a prima punta sotto la guida di Alessio Pala ai tempi in cui militava nella primavera dell`AlbinoLeffe. Paragonato a Gianluca Vialli per prestanza fisica e stile di gioco, è un talentuoso centravanti, in possesso di un tiro potente con entrambi i piedi e abile nel gioco aereo. Spicca per accelerazione, intelligenza tattica, spirito di sacrificio e fiuto del gol.', 1),
(7, 'Adem', 'Ljajic', 'Serbia', '29-09-1991', 10, 'Attaccante', 's1-g3.jpg', 0, 0, 0, 'Y', 'Ljaji&#263; può giocare, all`occorrenza, da seconda punta, trequartista o esterno offensivo; le sue movenze ricordano quelle del brasiliano Kaká e per questo motivo viene soprannominato il Kaká dell`est. È rapido e possiede buona tecnica nel dribbling, fattori che lo portano a tentare spesso di puntare e saltare l`uomo. In più egli è dotato di un buon tiro dalla distanza, qualità che fa di lui un abile calciatore di punizioni. Date le sue caratteristiche egli viene schierato spesso come esterno sinistro d`attacco affinché operi un movimento a rientrare, accentrandosi dalla fascia verso l`area di rigore per saltare l`uomo e liberare il suo destro negli ultimi venti metri.', 1),
(8, 'M`Baye', 'Niang', 'Francia', '19-12-1994', 11, 'Attaccante', 's1-g8.jpg', 1, 0, 0, 'Y', 'Paragonato a Thierry Henry per le sue doti fisiche, è capace di abbinare ottime doti atletiche ad una grande tecnica sia come attaccante centrale, sia come seconda punta e anche come esterno in un attacco a tre.', 1),
(9, 'Nicolas', 'Burdisso', 'Argentina', '12-04-1981', 13, 'Difensore', 's1-g6.jpg', 2, 0, 0, 'Y', 'Difensore duttile e di buona personalità, capace di adattarsi anche al ruolo di centrocampista, ai tempi del Boca Juniors era solito contribuire anche alla costruzione del gioco, senza limitarsi ai compiti di marcatura.', 1),
(10, 'Iago', 'Iago', 'Spagna', '04-01-1980', 14, 'Attaccante', 's1-g7.jpg', 0, 0, 0, 'Y', 'Mancino naturale è dotato di buone attitudini offensive. Nasce centrocampista laterale di destra, ma può giocare anche come trequartista o seconda punta, che è il ruolo più consono alle sue caratteristiche. Dispone inoltre di grande intelligenza tattica il che gli permette di poter impostare la manovra offensiva effettuando dei cross precisi verso l`area di rigore, oltre che di una tecnica sopraffina che gli permette di saltare il diretto avversario grazie al caratteristico doppio passo.', 1),
(11, 'Cristian', 'Ansaldi', 'Argentina', '20-09-1986', 15, 'Centrocampista', 's1-g6.jpg', 0, 1, 0, 'Y', 'Terzino, può giocare su entrambe le fasce. Occasionalmente può giocare anche a centrocampo.', 1),
(12, 'Samuel', 'Gustafson', 'Svezia', '11-01-1995', 16, 'Centrocampista', 's1-g3.jpg', 0, 0, 0, 'Y', 'I fratelli Gustafson sono usciti dal vivaio del Fässberg, squadra con cui hanno vinto la Gothia Cup 2012, un torneo internazionale di calcio giovanile che si tiene ogni anno a Göteborg. Entrambi con il Fässberg hanno mosso i primi passi anche a livello senior nelle serie minori, così come insieme sono approdati all`Häcken nel gennaio 2013.', 1),
(13, 'Alejandro', 'Berenguer', 'Spagna', '04-07-1995', 21, 'Attaccante', 's1-g2.jpg', 0, 0, 0, 'Y', 'Cresciuto nel settore giovanile dell`Osasuna, debutta in prima squadra il 10 settembre 2014 nella gara di Copa del Rey contro l`Alavés. Il 10 gennaio 2015 debutta in Segunda División nel pareggio (1-1) con il Recreativo Huelva.\r\n\r\n', 1),
(14, 'Joel', 'Obi', 'Nigeria', '22-05-1991', 22, 'Centrocampista', 's1-g7.jpg', 0, 0, 0, 'Y', 'Giocatore rapido e veloce, in possesso di buone doti fisiche e tecniche: può ricoprire le posizioni di esterno e centrale di centrocampo.', 1),
(15, 'Antonio', 'Barreca', 'Italiana', '18-03-1995', 23, 'Difensore', 's1-g7.jpg', 2, 0, 0, 'Y', 'Ricopre principalmente il ruolo di terzino sinistro ma è spesso usato con buoni risultati come esterno di centrocampo, ha una buona visione di gioco, un`ottima velocità, discreta facilità di corsa ed è abile nel servire i compagni con precisi cross dal fondo.[', 1),
(16, 'Emiliano', 'Moretti', 'Italiana', '11-06-1981', 24, 'Difensore', 's1-g6.jpg', 0, 0, 0, 'Y', 'Mancino naturale, nasce come terzino di fascia sinistra, ma in carriera è stato spesso impiegato come difensore centrale. Dotato di notevole fisicità e ottima tecnica, è bravo anche di testa.', 1),
(17, 'Lorenzo', 'De Silvestri', 'Italiana', '23-05-1988', 29, 'Difensore', 's1-g3.jpg', 1, 0, 0, 'Y', 'Giocatore dotato di grande resistenza e agonismo, che gli consentono di diventare estremamente pericoloso nelle discese e compiere incursioni nella metà campo avversaria. Riesce a giocare sia come tornante con alle spalle una difesa a tre, sia come terzino in una difesa a quattro. Ha la capacità di farsi sentire sotto porta, rendendosi pericoloso nei calci piazzati. All`occorrenza può giocare anche da terzino sinistro.', 1),
(18, 'Lucas', 'Boyé', 'Argentina', '28-02-1996', 31, 'Difensore', 's1-g7.jpg', 0, 0, 0, 'Y', 'È una punta centrale che sa disimpegnarsi anche come esterno d`attacco o seconda punta. Attaccante dal tocco di palla delicato e dal fisico imponente, in Argentina è stato soprannominato El Tanque (in italiano il carroarmato) o più frequentemente El Toro , per via della sua forza fisica. Ha nella corsa e nella resistenza (più che nello scatto) le sue doti principali. È inoltre bravo nei duelli aerei e nella protezione del pallone, così come nel colpo di testa.', 1),
(19, 'Salvatore', 'Sirigu', 'Italiana', '12-01-1987', 39, 'Portiere', 's1-g5.jpg', 0, 0, 0, 'Y', 'Talvolta accostato a Walter Zenga ? sebbene il suo ex allenatore Emiliano Mondonico lo ritenesse caratterialmente più simile a Dino Zoff ?, Sirigu è un portiere affidabile, dotato di forte personalità, freddo e sicuro tra i pali.', 1),
(20, 'Alfred', 'Gomis', 'Italiana', '13-12-1993', 1, 'Portiere', 's2-g1.jpg', 0, 1, 0, 'Y', 'Nato a Ziguinchor, in Senegal, ha tre fratelli, Lys e Maurice, anch`essi portieri, e il più piccolo David. Possedendo la doppia cittadinanza, a differenza di Lys che ha scelto di giocare per il Senegal, Alfred ha dichiarato di preferire gli azzurri.', 2),
(21, 'Marios', 'Oikonomou', 'Argentina', '13-12-1993', 2, 'Difensore', 's2-g2.jpg', 3, 0, 0, 'Y', 'Nato a Ziguinchor, in Senegal, ha tre fratelli, Lys e Maurice, anch`essi portieri, e il più piccolo David.[4] Possedendo la doppia cittadinanza, a differenza di Lys che ha scelto di giocare per il Senegal, Alfred ha dichiarato di preferire gli azzurri.', 2),
(22, 'Fabio', 'Della Giovanna', 'Italiana', '13-12-1993', 5, 'Difensore', 's2-g2.jpg', 0, 0, 0, 'Y', 'Nato a Ziguinchor, in Senegal, ha tre fratelli, Lys e Maurice, anch`essi portieri, e il più piccolo David.[4] Possedendo la doppia cittadinanza, a differenza di Lys che ha scelto di giocare per il Senegal, Alfred ha dichiarato di preferire gli azzurri.', 2),
(23, 'Michele', 'Cremonesi', 'Italiana', '13-12-1993', 6, 'Difensore', 's2-g2.jpg', 1, 1, 1, 'Y', 'Nato a Ziguinchor, in Senegal, ha tre fratelli, Lys e Maurice, anch`essi portieri, e il più piccolo David.[4] Possedendo la doppia cittadinanza, a differenza di Lys che ha scelto di giocare per il Senegal, Alfred ha dichiarato di preferire gli azzurri.', 2),
(24, 'Mirco', 'Antenucci', 'Italiana', '11-01-1995', 7, 'Attaccante', 's2-g2.jpg', 0, 0, 0, 'Y', 'Nato a Ziguinchor, in Senegal, ha tre fratelli, Lys e Maurice, anch`essi portieri, e il più piccolo David.[4] Possedendo la doppia cittadinanza, a differenza di Lys che ha scelto di giocare per il Senegal, Alfred ha dichiarato di preferire gli azzurri.', 2),
(25, 'Alessandro', 'Bellemo', 'Italiana', '11-01-1995', 8, 'Centrocampista', 's2-g2.jpg', 2, 0, 0, 'Y', 'Nato a Ziguinchor, in Senegal, ha tre fratelli, Lys e Maurice, anch`essi portieri, e il più piccolo David.[4] Possedendo la doppia cittadinanza, a differenza di Lys che ha scelto di giocare per il Senegal, Alfred ha dichiarato di preferire gli azzurri.', 2),
(26, 'Federico', 'Bonazzoli', 'Italiana', '13-12-1993', 9, 'Attaccante', 's2-g2.jpg', 1, 0, 0, 'Y', 'Nato a Ziguinchor, in Senegal, ha tre fratelli, Lys e Maurice, anch`essi portieri, e il più piccolo David.[4] Possedendo la doppia cittadinanza, a differenza di Lys che ha scelto di giocare per il Senegal, Alfred ha dichiarato di preferire gli azzurri.', 2),
(27, 'Sergio', 'Floccari', 'Italiana', '12-01-1987', 10, 'Attaccante', 's2-g2.jpg', 0, 0, 0, 'Y', 'Nato a Ziguinchor, in Senegal, ha tre fratelli, Lys e Maurice, anch`essi portieri, e il più piccolo David.[4] Possedendo la doppia cittadinanza, a differenza di Lys che ha scelto di giocare per il Senegal, Alfred ha dichiarato di preferire gli azzurri.', 2),
(28, 'Luca', 'Rizzo', 'Italiana', '13-12-1993', 11, 'Centrocampista', 's2-g2.jpg', 2, 1, 0, 'Y', 'Nato a Ziguinchor, in Senegal, ha tre fratelli, Lys e Maurice, anch`essi portieri, e il più piccolo David.[4] Possedendo la doppia cittadinanza, a differenza di Lys che ha scelto di giocare per il Senegal, Alfred ha dichiarato di preferire gli azzurri.', 2),
(29, 'Pa', 'Konate', 'Svezia', '12-01-1987', 12, 'Centrocampista', 's2-g2.jpg', 0, 0, 1, 'Y', 'Nato a Ziguinchor, in Senegal, ha tre fratelli, Lys e Maurice, anch`essi portieri, e il più piccolo David.[4] Possedendo la doppia cittadinanza, a differenza di Lys che ha scelto di giocare per il Senegal, Alfred ha dichiarato di preferire gli azzurri.', 2),
(30, 'Federico', 'Mattiello', 'Italiana', '12-03-1992', 14, 'Difensore', 's2-g2.jpg', 0, 0, 0, 'Y', 'Nato a Ziguinchor, in Senegal, ha tre fratelli, Lys e Maurice, anch`essi portieri, e il più piccolo David.[4] Possedendo la doppia cittadinanza, a differenza di Lys che ha scelto di giocare per il Senegal, Alfred ha dichiarato di preferire gli azzurri.', 2),
(31, 'Sauli', 'Vaisanen', 'Finlandia', '11-06-1981', 15, 'Difensore', 's2-g2.jpg', 0, 0, 0, 'Y', 'Nato a Ziguinchor, in Senegal, ha tre fratelli, Lys e Maurice, anch`essi portieri, e il più piccolo David.[4] Possedendo la doppia cittadinanza, a differenza di Lys che ha scelto di giocare per il Senegal, Alfred ha dichiarato di preferire gli azzurri.', 2),
(32, 'Giacomo', 'Poluzzi', 'Italiana', '11-01-1995', 17, 'Portiere', 's2-g2.jpg', 0, 0, 0, 'Y', 'Nato a Ziguinchor, in Senegal, ha tre fratelli, Lys e Maurice, anch`essi portieri, e il più piccolo David.[4] Possedendo la doppia cittadinanza, a differenza di Lys che ha scelto di giocare per il Senegal, Alfred ha dichiarato di preferire gli azzurri.', 2),
(33, 'Eros', 'Schiavon', 'Italiana', '11-01-1995', 18, 'Centrocampista', 's2-g2.jpg', 0, 0, 0, 'Y', 'Nato a Ziguinchor, in Senegal, ha tre fratelli, Lys e Maurice, anch`essi portieri, e il più piccolo David.[4] Possedendo la doppia cittadinanza, a differenza di Lys che ha scelto di giocare per il Senegal, Alfred ha dichiarato di preferire gli azzurri.', 2),
(34, 'Luca', 'Mora', 'Italiana', '12-01-1987', 20, 'Centrocampista', 's2-g2.jpg', 0, 0, 0, 'Y', 'Nato a Ziguinchor, in Senegal, ha tre fratelli, Lys e Maurice, anch`essi portieri, e il più piccolo David.[4] Possedendo la doppia cittadinanza, a differenza di Lys che ha scelto di giocare per il Senegal, Alfred ha dichiarato di preferire gli azzurri.', 2),
(35, 'Bartosz', 'Salamon', 'Polonia', '12-04-1981', 21, 'Difensore', 's2-g2.jpg', 1, 0, 0, 'Y', 'Nato a Ziguinchor, in Senegal, ha tre fratelli, Lys e Maurice, anch`essi portieri, e il più piccolo David.[4] Possedendo la doppia cittadinanza, a differenza di Lys che ha scelto di giocare per il Senegal, Alfred ha dichiarato di preferire gli azzurri.', 2),
(36, 'Marco', 'Borriello', 'Italiana', '11-06-1981', 22, 'Attaccante', 's2-g2.jpg', 0, 0, 0, 'Y', 'Nato a Ziguinchor, in Senegal, ha tre fratelli, Lys e Maurice, anch`essi portieri, e il più piccolo David.[4] Possedendo la doppia cittadinanza, a differenza di Lys che ha scelto di giocare per il Senegal, Alfred ha dichiarato di preferire gli azzurri.', 2),
(37, 'Francesco', 'Vicari', 'Italiana', '12-01-1987', 23, 'Difensore', 's2-g2.jpg', 3, 0, 0, 'Y', 'Nato a Ziguinchor, in Senegal, ha tre fratelli, Lys e Maurice, anch`essi portieri, e il più piccolo David.[4] Possedendo la doppia cittadinanza, a differenza di Lys che ha scelto di giocare per il Senegal, Alfred ha dichiarato di preferire gli azzurri.', 2),
(38, 'Mattia', 'Vitale', 'Italiana', '12-01-1987', 24, 'Centrocampista', 's2-g2.jpg', 0, 1, 0, 'Y', 'Nato a Ziguinchor, in Senegal, ha tre fratelli, Lys e Maurice, anch`essi portieri, e il più piccolo David.[4] Possedendo la doppia cittadinanza, a differenza di Lys che ha scelto di giocare per il Senegal, Alfred ha dichiarato di preferire gli azzurri.', 2),
(39, 'Nicolas', 'Andrade', 'Brazile', '12-01-1987', 1, 'Portiere', 's3-g1.jpg', 1, 0, 0, 'Y', 'Prelevato dal Verona a 22 anni, nel gennaio 2011, quando la squadra veronese militava in Lega Pro Prima Divisione. Ha ricoperto il ruolo di riserva per quattro stagioni, ottenendo due promozioni. Ha esordito in Serie A il 18 maggio 2014, all`ultima di campionato, in Napoli-Verona (5-1).', 3),
(40, 'Romulo', 'Calderia', 'Italiana', '11-01-1995', 2, 'Centrocampista', 's3-g2.jpg', 0, 1, 0, 'Y', 'Prelevato dal Verona a 22 anni, nel gennaio 2011, quando la squadra veronese militava in Lega Pro Prima Divisione. Ha ricoperto il ruolo di riserva per quattro stagioni, ottenendo due promozioni. Ha esordito in Serie A il 18 maggio 2014, all`ultima di campionato, in Napoli-Verona (5-1).', 3),
(41, 'Nicolò', 'Cherubin', 'Italiana', '11-06-1981', 3, 'Difensore', 's3-g3.jpg', 0, 0, 0, 'Y', 'Prelevato dal Verona a 22 anni, nel gennaio 2011, quando la squadra veronese militava in Lega Pro Prima Divisione. Ha ricoperto il ruolo di riserva per quattro stagioni, ottenendo due promozioni. Ha esordito in Serie A il 18 maggio 2014, all`ultima di campionato, in Napoli-Verona (5-1).', 3),
(42, 'Simon', 'Laner', 'Italiana', '11-06-1981', 4, 'Centrocampista', 's3-g2.jpg', 0, 0, 1, 'Y', 'Prelevato dal Verona a 22 anni, nel gennaio 2011, quando la squadra veronese militava in Lega Pro Prima Divisione. Ha ricoperto il ruolo di riserva per quattro stagioni, ottenendo due promozioni. Ha esordito in Serie A il 18 maggio 2014, all`ultima di campionato, in Napoli-Verona (5-1).', 3),
(43, 'Bruno', 'Zuculini', 'Argentina', '11-06-1981', 5, 'Centrocampista', 's3-g3.jpg', 1, 0, 1, 'Y', 'Prelevato dal Verona a 22 anni, nel gennaio 2011, quando la squadra veronese militava in Lega Pro Prima Divisione. Ha ricoperto il ruolo di riserva per quattro stagioni, ottenendo due promozioni. Ha esordito in Serie A il 18 maggio 2014, all`ultima di campionato, in Napoli-Verona (5-1).', 3),
(44, 'Daniele', 'Verde', 'Italiana', '18-03-1995', 7, 'Attaccante', 's3-g2.jpg', 1, 0, 0, 'Y', 'Prelevato dal Verona a 22 anni, nel gennaio 2011, quando la squadra veronese militava in Lega Pro Prima Divisione. Ha ricoperto il ruolo di riserva per quattro stagioni, ottenendo due promozioni. Ha esordito in Serie A il 18 maggio 2014, all`ultima di campionato, in Napoli-Verona (5-1).', 3),
(45, 'Marco', 'Fossati', 'Italiana', '12-01-1987', 8, 'Centrocampista', 's3-g3.jpg', 2, 0, 0, 'Y', 'Prelevato dal Verona a 22 anni, nel gennaio 2011, quando la squadra veronese militava in Lega Pro Prima Divisione. Ha ricoperto il ruolo di riserva per quattro stagioni, ottenendo due promozioni. Ha esordito in Serie A il 18 maggio 2014, all`ultima di campionato, in Napoli-Verona (5-1).', 3),
(46, 'Moise', 'Kean', 'Italiana', '11-06-1981', 9, 'Attaccante', 's3-g2.jpg', 0, 1, 0, 'Y', 'Prelevato dal Verona a 22 anni, nel gennaio 2011, quando la squadra veronese militava in Lega Pro Prima Divisione. Ha ricoperto il ruolo di riserva per quattro stagioni, ottenendo due promozioni. Ha esordito in Serie A il 18 maggio 2014, all`ultima di campionato, in Napoli-Verona (5-1).', 3),
(47, 'Alessio', 'Cerci', 'Italiana', '18-03-1995', 10, 'Attaccante', 's3-g3.jpg', 0, 0, 0, 'Y', 'Prelevato dal Verona a 22 anni, nel gennaio 2011, quando la squadra veronese militava in Lega Pro Prima Divisione. Ha ricoperto il ruolo di riserva per quattro stagioni, ottenendo due promozioni. Ha esordito in Serie A il 18 maggio 2014, all`ultima di campionato, in Napoli-Verona (5-1).', 3),
(48, 'Giampaolo', 'Pazzini', 'Italiana', '18-03-1995', 11, 'Attaccante', 's3-g3.jpg', 0, 0, 0, 'Y', 'Prelevato dal Verona a 22 anni, nel gennaio 2011, quando la squadra veronese militava in Lega Pro Prima Divisione. Ha ricoperto il ruolo di riserva per quattro stagioni, ottenendo due promozioni. Ha esordito in Serie A il 18 maggio 2014, all`ultima di campionato, in Napoli-Verona (5-1).', 3),
(49, 'Antonio Aldo', 'Caracciolo', 'Italiana', '11-06-1981', 12, 'Difensore', 's3-g2.jpg', 1, 1, 0, 'Y', 'Prelevato dal Verona a 22 anni, nel gennaio 2011, quando la squadra veronese militava in Lega Pro Prima Divisione. Ha ricoperto il ruolo di riserva per quattro stagioni, ottenendo due promozioni. Ha esordito in Serie A il 18 maggio 2014, all`ultima di campionato, in Napoli-Verona (5-1).', 3),
(50, 'Franco', 'Zuculini', 'Argentina', '11-01-1995', 14, 'Centrocampista', 's3-g3.jpg', 0, 1, 0, 'Y', 'Prelevato dal Verona a 22 anni, nel gennaio 2011, quando la squadra veronese militava in Lega Pro Prima Divisione. Ha ricoperto il ruolo di riserva per quattro stagioni, ottenendo due promozioni. Ha esordito in Serie A il 18 maggio 2014, all`ultima di campionato, in Napoli-Verona (5-1).', 3),
(51, 'Marco', 'Silvestri', 'Italiana', '11-01-1995', 17, 'Portiere', 's3-g1.jpg', 0, 0, 0, 'Y', 'Prelevato dal Verona a 22 anni, nel gennaio 2011, quando la squadra veronese militava in Lega Pro Prima Divisione. Ha ricoperto il ruolo di riserva per quattro stagioni, ottenendo due promozioni. Ha esordito in Serie A il 18 maggio 2014, all`ultima di campionato, in Napoli-Verona (5-1).', 3),
(52, 'Mattia', 'Zaccagni', 'Italiana', '18-03-1995', 20, 'Centrocampista', 's3-g3.jpg', 1, 1, 0, 'Y', 'Prelevato dal Verona a 22 anni, nel gennaio 2011, quando la squadra veronese militava in Lega Pro Prima Divisione. Ha ricoperto il ruolo di riserva per quattro stagioni, ottenendo due promozioni. Ha esordito in Serie A il 18 maggio 2014, all`ultima di campionato, in Napoli-Verona (5-1).', 3),
(53, 'Lee', 'Seung-woo', 'Corea del Sud', '18-03-1995', 21, 'Attaccante', 's3-g2.jpg', 0, 0, 0, 'Y', 'Prelevato dal Verona a 22 anni, nel gennaio 2011, quando la squadra veronese militava in Lega Pro Prima Divisione. Ha ricoperto il ruolo di riserva per quattro stagioni, ottenendo due promozioni. Ha esordito in Serie A il 18 maggio 2014, all`ultima di campionato, in Napoli-Verona (5-1).', 3),
(54, 'Matteo', 'Bianchetti', 'Italiana', '11-06-1981', 22, 'Difensore', 's3-g3.jpg', 2, 0, 0, 'Y', 'Prelevato dal Verona a 22 anni, nel gennaio 2011, quando la squadra veronese militava in Lega Pro Prima Divisione. Ha ricoperto il ruolo di riserva per quattro stagioni, ottenendo due promozioni. Ha esordito in Serie A il 18 maggio 2014, all`ultima di campionato, in Napoli-Verona (5-1).', 3),
(55, 'Daniel', 'Bessa', 'Italiana', '12-03-1992', 24, 'Centrocampista', 's3-g2.jpg', 0, 0, 0, 'Y', 'Prelevato dal Verona a 22 anni, nel gennaio 2011, quando la squadra veronese militava in Lega Pro Prima Divisione. Ha ricoperto il ruolo di riserva per quattro stagioni, ottenendo due promozioni. Ha esordito in Serie A il 18 maggio 2014, all`ultima di campionato, in Napoli-Verona (5-1).', 3),
(56, 'Martin', 'Caceres', 'Italiana', '12-03-1992', 26, 'Difensore', 's3-g3.jpg', 0, 0, 0, 'Y', 'Prelevato dal Verona a 22 anni, nel gennaio 2011, quando la squadra veronese militava in Lega Pro Prima Divisione. Ha ricoperto il ruolo di riserva per quattro stagioni, ottenendo due promozioni. Ha esordito in Serie A il 18 maggio 2014, all`ultima di campionato, in Napoli-Verona (5-1).', 3),
(57, 'Mattia', 'Valoti', 'Italiana', '19-12-1994', 27, 'Centrocampista', 's3-g2.jpg', 0, 0, 0, 'Y', 'Prelevato dal Verona a 22 anni, nel gennaio 2011, quando la squadra veronese militava in Lega Pro Prima Divisione. Ha ricoperto il ruolo di riserva per quattro stagioni, ottenendo due promozioni. Ha esordito in Serie A il 18 maggio 2014, all`ultima di campionato, in Napoli-Verona (5-1).', 3),
(58, 'Alex', 'Ferrari', 'Italiana', '12-01-1987', 28, 'Difensore', 's3-g2.jpg', 0, 0, 0, 'Y', 'Prelevato dal Verona a 22 anni, nel gennaio 2011, quando la squadra veronese militava in Lega Pro Prima Divisione. Ha ricoperto il ruolo di riserva per quattro stagioni, ottenendo due promozioni. Ha esordito in Serie A il 18 maggio 2014, all`ultima di campionato, in Napoli-Verona (5-1).', 3),
(59, 'Angelo', 'Da Costa', 'Brasile', '13-12-1993', 1, 'Portiere', 's4-g1.jpg', 0, 0, 1, 'Y', 'Cresce nelle giovanili del Santo André con cui vince nel 2003 la Copa São Paulo de Futebol Júnior e la Copa Paulista de Futebol.\r\n\r\nDal 2003 al 2007 gioca nella prima squadra del Santo André, contribuendo nel 2004 alla vittoria del primo e unico titolo della storia del Santo André, la Copa do Brasil, competizione nella quale gioca 8 delle 11 partite totali, saltando comunque la finale contro il Flamengo. Negli anni successivi, conditi dall`esordio in Copa Libertadores nel 2005 nella partita contro il Cerro Porteño, gioca a sprazzi, alternandosi con il collega Júlio César Martins.', 4),
(60, 'Adam', 'Nagy', 'Ungheria', '12-01-1987', 2, 'Centrocampista', 's4-g2.jpg', 1, 0, 0, 'Y', 'Cresce nelle giovanili del Santo André con cui vince nel 2003 la Copa São Paulo de Futebol Júnior e la Copa Paulista de Futebol.\r\n\r\nDal 2003 al 2007 gioca nella prima squadra del Santo André, contribuendo nel 2004 alla vittoria del primo e unico titolo della storia del Santo André, la Copa do Brasil, competizione nella quale gioca 8 delle 11 partite totali, saltando comunque la finale contro il Flamengo. Negli anni successivi, conditi dall`esordio in Copa Libertadores nel 2005 nella partita contro il Cerro Porteño, gioca a sprazzi, alternandosi con il collega Júlio César Martins.', 4),
(61, 'Giancarlo', 'Gonzalez', 'Costa Rica', '19-12-1994', 3, 'Difensore', 's4-g3.jpg', 0, 0, 0, 'Y', 'Cresce nelle giovanili del Santo André con cui vince nel 2003 la Copa São Paulo de Futebol Júnior e la Copa Paulista de Futebol.\r\n\r\nDal 2003 al 2007 gioca nella prima squadra del Santo André, contribuendo nel 2004 alla vittoria del primo e unico titolo della storia del Santo André, la Copa do Brasil, competizione nella quale gioca 8 delle 11 partite totali, saltando comunque la finale contro il Flamengo. Negli anni successivi, conditi dall`esordio in Copa Libertadores nel 2005 nella partita contro il Cerro Porteño, gioca a sprazzi, alternandosi con il collega Júlio César Martins.', 4),
(62, 'Emil', 'Krafth', 'Svezia', '18-03-1995', 4, 'Difensore', 's4-g2.jpg', 4, 0, 0, 'Y', 'Cresce nelle giovanili del Santo André con cui vince nel 2003 la Copa São Paulo de Futebol Júnior e la Copa Paulista de Futebol.\r\n\r\nDal 2003 al 2007 gioca nella prima squadra del Santo André, contribuendo nel 2004 alla vittoria del primo e unico titolo della storia del Santo André, la Copa do Brasil, competizione nella quale gioca 8 delle 11 partite totali, saltando comunque la finale contro il Flamengo. Negli anni successivi, conditi dall`esordio in Copa Libertadores nel 2005 nella partita contro il Cerro Porteño, gioca a sprazzi, alternandosi con il collega Júlio César Martins.', 4),
(63, 'Erick', 'Pulgar', 'Cile', '18-03-1995', 5, 'Centrocampista', 's4-g3.jpg', 0, 0, 0, 'Y', 'Cresce nelle giovanili del Santo André con cui vince nel 2003 la Copa São Paulo de Futebol Júnior e la Copa Paulista de Futebol.\r\n\r\nDal 2003 al 2007 gioca nella prima squadra del Santo André, contribuendo nel 2004 alla vittoria del primo e unico titolo della storia del Santo André, la Copa do Brasil, competizione nella quale gioca 8 delle 11 partite totali, saltando comunque la finale contro il Flamengo. Negli anni successivi, conditi dall`esordio in Copa Libertadores nel 2005 nella partita contro il Cerro Porteño, gioca a sprazzi, alternandosi con il collega Júlio César Martins.', 4),
(64, 'Sebastian', 'De Maio', 'Francia', '11-06-1981', 6, 'Attaccante', 's4-g2.jpg', 1, 1, 0, 'Y', 'Cresce nelle giovanili del Santo André con cui vince nel 2003 la Copa São Paulo de Futebol Júnior e la Copa Paulista de Futebol.\r\n\r\nDal 2003 al 2007 gioca nella prima squadra del Santo André, contribuendo nel 2004 alla vittoria del primo e unico titolo della storia del Santo André, la Copa do Brasil, competizione nella quale gioca 8 delle 11 partite totali, saltando comunque la finale contro il Flamengo. Negli anni successivi, conditi dall`esordio in Copa Libertadores nel 2005 nella partita contro il Cerro Porteño, gioca a sprazzi, alternandosi con il collega Júlio César Martins.', 4),
(65, 'Bruno', 'Petkovic', 'Croazia', '13-12-1993', 7, 'Attaccante', 's4-g3.jpg', 0, 0, 0, 'Y', 'Cresce nelle giovanili del Santo André con cui vince nel 2003 la Copa São Paulo de Futebol Júnior e la Copa Paulista de Futebol.\r\n\r\nDal 2003 al 2007 gioca nella prima squadra del Santo André, contribuendo nel 2004 alla vittoria del primo e unico titolo della storia del Santo André, la Copa do Brasil, competizione nella quale gioca 8 delle 11 partite totali, saltando comunque la finale contro il Flamengo. Negli anni successivi, conditi dall`esordio in Copa Libertadores nel 2005 nella partita contro il Cerro Porteño, gioca a sprazzi, alternandosi con il collega Júlio César Martins.', 4),
(66, 'Saoir', 'Taider', 'Algeria', '11-06-1981', 9, 'Attaccante', 's4-g2.jpg', 3, 0, 0, 'Y', 'Cresce nelle giovanili del Santo André con cui vince nel 2003 la Copa São Paulo de Futebol Júnior e la Copa Paulista de Futebol.\r\n\r\nDal 2003 al 2007 gioca nella prima squadra del Santo André, contribuendo nel 2004 alla vittoria del primo e unico titolo della storia del Santo André, la Copa do Brasil, competizione nella quale gioca 8 delle 11 partite totali, saltando comunque la finale contro il Flamengo. Negli anni successivi, conditi dall`esordio in Copa Libertadores nel 2005 nella partita contro il Cerro Porteño, gioca a sprazzi, alternandosi con il collega Júlio César Martins.', 4),
(67, 'Simone', 'Verdi', 'Italiana', '19-12-1994', 9, 'Attaccante', 's4-g2.jpg', 0, 0, 1, 'Y', 'Cresce nelle giovanili del Santo André con cui vince nel 2003 la Copa São Paulo de Futebol Júnior e la Copa Paulista de Futebol.\r\n\r\nDal 2003 al 2007 gioca nella prima squadra del Santo André, contribuendo nel 2004 alla vittoria del primo e unico titolo della storia del Santo André, la Copa do Brasil, competizione nella quale gioca 8 delle 11 partite totali, saltando comunque la finale contro il Flamengo. Negli anni successivi, conditi dall`esordio in Copa Libertadores nel 2005 nella partita contro il Cerro Porteño, gioca a sprazzi, alternandosi con il collega Júlio César Martins.', 4),
(68, 'Mattia', 'Destro', 'Italiana', '12-01-1987', 10, 'Attaccante', 's4-g2.jpg', 2, 0, 0, 'Y', 'Cresce nelle giovanili del Santo André con cui vince nel 2003 la Copa São Paulo de Futebol Júnior e la Copa Paulista de Futebol.\r\n\r\nDal 2003 al 2007 gioca nella prima squadra del Santo André, contribuendo nel 2004 alla vittoria del primo e unico titolo della storia del Santo André, la Copa do Brasil, competizione nella quale gioca 8 delle 11 partite totali, saltando comunque la finale contro il Flamengo. Negli anni successivi, conditi dall`esordio in Copa Libertadores nel 2005 nella partita contro il Cerro Porteño, gioca a sprazzi, alternandosi con il collega Júlio César Martins.', 4),
(69, 'Ladislav', 'Krejci', 'Repubblica Ceca', '11-01-1995', 11, 'Centrocampista', 's4-g3.jpg', 0, 0, 0, 'Y', 'Cresce nelle giovanili del Santo André con cui vince nel 2003 la Copa São Paulo de Futebol Júnior e la Copa Paulista de Futebol.\r\n\r\nDal 2003 al 2007 gioca nella prima squadra del Santo André, contribuendo nel 2004 alla vittoria del primo e unico titolo della storia del Santo André, la Copa do Brasil, competizione nella quale gioca 8 delle 11 partite totali, saltando comunque la finale contro il Flamengo. Negli anni successivi, conditi dall`esordio in Copa Libertadores nel 2005 nella partita contro il Cerro Porteño, gioca a sprazzi, alternandosi con il collega Júlio César Martins.', 4),
(70, 'Lorenzo', 'Criseting', 'Italiana', '18-03-1995', 12, 'Centrocampista', 's4-g2.jpg', 1, 0, 1, 'Y', 'Cresce nelle giovanili del Santo André con cui vince nel 2003 la Copa São Paulo de Futebol Júnior e la Copa Paulista de Futebol.\r\n\r\nDal 2003 al 2007 gioca nella prima squadra del Santo André, contribuendo nel 2004 alla vittoria del primo e unico titolo della storia del Santo André, la Copa do Brasil, competizione nella quale gioca 8 delle 11 partite totali, saltando comunque la finale contro il Flamengo. Negli anni successivi, conditi dall`esordio in Copa Libertadores nel 2005 nella partita contro il Cerro Porteño, gioca a sprazzi, alternandosi con il collega Júlio César Martins.', 4),
(71, 'Federico', 'Di Francesco', 'Italiana', '11-01-1995', 14, 'Attaccante', 's4-g3.jpg', 0, 0, 0, 'Y', 'Cresce nelle giovanili del Santo André con cui vince nel 2003 la Copa São Paulo de Futebol Júnior e la Copa Paulista de Futebol.\r\n\r\nDal 2003 al 2007 gioca nella prima squadra del Santo André, contribuendo nel 2004 alla vittoria del primo e unico titolo della storia del Santo André, la Copa do Brasil, competizione nella quale gioca 8 delle 11 partite totali, saltando comunque la finale contro il Flamengo. Negli anni successivi, conditi dall`esordio in Copa Libertadores nel 2005 nella partita contro il Cerro Porteño, gioca a sprazzi, alternandosi con il collega Júlio César Martins.', 4),
(72, 'Ibrahima', 'Mbaye', 'Senegal', '19-12-1994', 15, 'Difensore', 's4-g3.jpg', 0, 1, 1, 'Y', 'Cresce nelle giovanili del Santo André con cui vince nel 2003 la Copa São Paulo de Futebol Júnior e la Copa Paulista de Futebol.\r\n\r\nDal 2003 al 2007 gioca nella prima squadra del Santo André, contribuendo nel 2004 alla vittoria del primo e unico titolo della storia del Santo André, la Copa do Brasil, competizione nella quale gioca 8 delle 11 partite totali, saltando comunque la finale contro il Flamengo. Negli anni successivi, conditi dall`esordio in Copa Libertadores nel 2005 nella partita contro il Cerro Porteño, gioca a sprazzi, alternandosi con il collega Júlio César Martins.', 4),
(73, 'Andrea', 'Poli', 'Italiana', '13-12-1993', 16, 'Centrocampista', 's4-g2.jpg', 0, 1, 0, 'Y', 'Cresce nelle giovanili del Santo André con cui vince nel 2003 la Copa São Paulo de Futebol Júnior e la Copa Paulista de Futebol.\r\n\r\nDal 2003 al 2007 gioca nella prima squadra del Santo André, contribuendo nel 2004 alla vittoria del primo e unico titolo della storia del Santo André, la Copa do Brasil, competizione nella quale gioca 8 delle 11 partite totali, saltando comunque la finale contro il Flamengo. Negli anni successivi, conditi dall`esordio in Copa Libertadores nel 2005 nella partita contro il Cerro Porteño, gioca a sprazzi, alternandosi con il collega Júlio César Martins.', 4),
(74, 'Juan Manuel', 'Valencia', 'Colombia', '18-03-1995', 17, 'Attaccante', 's4-g3.jpg', 0, 1, 0, 'Y', 'Cresce nelle giovanili del Santo André con cui vince nel 2003 la Copa São Paulo de Futebol Júnior e la Copa Paulista de Futebol.\r\n\r\nDal 2003 al 2007 gioca nella prima squadra del Santo André, contribuendo nel 2004 alla vittoria del primo e unico titolo della storia del Santo André, la Copa do Brasil, competizione nella quale gioca 8 delle 11 partite totali, saltando comunque la finale contro il Flamengo. Negli anni successivi, conditi dall`esordio in Copa Libertadores nel 2005 nella partita contro il Cerro Porteño, gioca a sprazzi, alternandosi con il collega Júlio César Martins.', 4),
(75, 'Filip', 'Helander', 'Svezia', '18-03-1995', 18, 'Difensore', 's4-g3.jpg', 0, 0, 0, 'Y', 'Cresce nelle giovanili del Santo André con cui vince nel 2003 la Copa São Paulo de Futebol Júnior e la Copa Paulista de Futebol.\r\n\r\nDal 2003 al 2007 gioca nella prima squadra del Santo André, contribuendo nel 2004 alla vittoria del primo e unico titolo della storia del Santo André, la Copa do Brasil, competizione nella quale gioca 8 delle 11 partite totali, saltando comunque la finale contro il Flamengo. Negli anni successivi, conditi dall`esordio in Copa Libertadores nel 2005 nella partita contro il Cerro Porteño, gioca a sprazzi, alternandosi con il collega Júlio César Martins.', 4),
(76, 'Felipe', 'Avenatti', 'Uruguay', '13-12-1993', 19, 'Attaccante', 's4-g2.jpg', 0, 1, 0, 'Y', 'Cresce nelle giovanili del Santo André con cui vince nel 2003 la Copa São Paulo de Futebol Júnior e la Copa Paulista de Futebol.\r\n\r\nDal 2003 al 2007 gioca nella prima squadra del Santo André, contribuendo nel 2004 alla vittoria del primo e unico titolo della storia del Santo André, la Copa do Brasil, competizione nella quale gioca 8 delle 11 partite totali, saltando comunque la finale contro il Flamengo. Negli anni successivi, conditi dall`esordio in Copa Libertadores nel 2005 nella partita contro il Cerro Porteño, gioca a sprazzi, alternandosi con il collega Júlio César Martins.', 4),
(77, 'Alex', 'Meret', 'Italiana', '22-03-1997', 97, 'Portiere', 's2-g2.jpg', 0, 0, 0, 'N', 'Cresciuto nel settore giovanile del Donatello Calcio, nel 2012 passa al settore giovanile dell`Udinese.\r\n\r\nNella stagione 2015-2016 viene promosso in prima squadra come secondo di Orestis Karnezis. Esordisce da professionista il 2 dicembre 2015, a 18 anni, giocando titolare nella partita del 4º turno di Coppa Italia vinta 3-1 dall`Udinese contro l`Atalanta. Viene schierato anche nella gara degli ottavi persa 2-1 contro la Lazio allo stadio Olimpico. Le due presenze in Coppa Italia sono le uniche stagionali, in quanto non esordisce in Serie A.', 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `marcatore`
--

CREATE TABLE `marcatore` (
  `ID_Referto` int(7) NOT NULL,
  `ID_Giocatore` int(11) NOT NULL,
  `Goal` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `marcatore`
--

INSERT INTO `marcatore` (`ID_Referto`, `ID_Giocatore`, `Goal`) VALUES
(1, 25, 2),
(1, 66, 1),
(2, 8, 1),
(2, 17, 1),
(2, 43, 1),
(2, 44, 1),
(3, 39, 1),
(3, 49, 1),
(3, 52, 1),
(3, 60, 1),
(3, 68, 2),
(3, 70, 1),
(4, 9, 2),
(4, 62, 2),
(4, 64, 1),
(5, 21, 3),
(5, 28, 2),
(5, 45, 2),
(5, 54, 1),
(6, 37, 3),
(6, 66, 2),
(7, 15, 2),
(7, 54, 1),
(8, 23, 1),
(8, 26, 1),
(8, 35, 1),
(8, 62, 2);

-- --------------------------------------------------------

--
-- Struttura della tabella `partecipa`
--

CREATE TABLE `partecipa` (
  `ID_Torneo` int(7) NOT NULL,
  `ID_Squadra` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `partecipa`
--

INSERT INTO `partecipa` (`ID_Torneo`, `ID_Squadra`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 3),
(2, 4),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(4, 2),
(4, 4);

-- --------------------------------------------------------

--
-- Struttura della tabella `partita`
--

CREATE TABLE `partita` (
  `ID_Partita` int(7) NOT NULL,
  `Data_partita` varchar(10) DEFAULT NULL,
  `Luogo` varchar(30) DEFAULT NULL,
  `Ora` varchar(5) DEFAULT NULL,
  `Tipo` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `partita`
--

INSERT INTO `partita` (`ID_Partita`, `Data_partita`, `Luogo`, `Ora`, `Tipo`) VALUES
(1, '05-10-2017', 'Bologna', '18:00', 'I'),
(2, NULL, NULL, NULL, 'I'),
(3, '05-10-2017', 'Verona', '18:00', 'I'),
(4, '06-10-2017', 'Torino', '18:00', 'I'),
(5, NULL, NULL, NULL, 'I'),
(6, NULL, NULL, NULL, 'I'),
(7, '09-10-2017', 'Ferrara', '18:00', 'I'),
(8, NULL, NULL, NULL, 'I'),
(9, NULL, NULL, NULL, 'I'),
(10, NULL, NULL, NULL, 'I'),
(11, NULL, NULL, NULL, 'I'),
(12, NULL, NULL, NULL, 'I'),
(13, '05-10-2017', 'Verona', '18:00', 'E'),
(14, '05-10-2017', 'Bologna', '18:00', 'E'),
(15, '05-10-2017', 'Ferrara', '18:00', 'E'),
(16, '05-10-2017', 'Ferrara', '18:00', 'E'),
(17, '09-10-2017', 'Ferrara', '18:00', 'E');

-- --------------------------------------------------------

--
-- Struttura della tabella `referto`
--

CREATE TABLE `referto` (
  `ID_Referto` int(7) NOT NULL,
  `Risultato` varchar(10) NOT NULL,
  `Ora_inizio` varchar(5) NOT NULL,
  `Ora_fine` varchar(5) NOT NULL,
  `ID_Partita` int(7) NOT NULL,
  `ID_Arbitro` int(11) NOT NULL,
  `Compilato` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `referto`
--

INSERT INTO `referto` (`ID_Referto`, `Risultato`, `Ora_inizio`, `Ora_fine`, `ID_Partita`, `ID_Arbitro`, `Compilato`) VALUES
(1, '1-2', '19:00', '21:00', 1, 7, 'Y'),
(2, '2-2', '19:00', '21:06', 3, 8, 'Y'),
(3, '4-3', '16:00', '18:00', 13, 8, 'Y'),
(4, '3-2', '19:00', '21:00', 14, 7, 'Y'),
(5, '3-5', '21:00', '22:00', 15, 8, 'Y'),
(6, '2-3', '19:00', '21:00', 16, 8, 'Y'),
(7, '3-1', '19:00', '21:00', 4, 8, 'Y'),
(8, '2-4', '19:00', '21:00', 17, 7, 'Y'),
(9, '_-_', '--:--', '--:--', 7, 8, 'N');

-- --------------------------------------------------------

--
-- Struttura della tabella `registrato`
--

CREATE TABLE `registrato` (
  `ID_Utente` int(11) NOT NULL,
  `Telefono` varchar(15) NOT NULL,
  `Indirizzo` varchar(50) NOT NULL,
  `ID_Amministratore` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `registrato`
--

INSERT INTO `registrato` (`ID_Utente`, `Telefono`, `Indirizzo`, `ID_Amministratore`) VALUES
(2, '3471729713', 'Via Torino', 1),
(3, '3463423639', 'Via Polesine Spedi', 1),
(4, '3335248448', 'Via Ferrara', 1),
(5, '3335248448', 'Via Verona', 1),
(6, '3335248448', 'Via Bologna', 1),
(7, '3335248448', 'Via Svizzera', 1),
(8, '3335248448', 'Via Bologna', 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `scelto`
--

CREATE TABLE `scelto` (
  `ID_Arbitro` int(11) NOT NULL,
  `ID_Amministratore` int(11) NOT NULL,
  `ID_Partita` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `scelto`
--

INSERT INTO `scelto` (`ID_Arbitro`, `ID_Amministratore`, `ID_Partita`) VALUES
(7, 1, 1),
(7, 1, 14),
(7, 1, 17),
(8, 1, 3),
(8, 1, 4),
(8, 1, 7),
(8, 1, 13),
(8, 1, 15),
(8, 1, 16);

-- --------------------------------------------------------

--
-- Struttura della tabella `squadra`
--

CREATE TABLE `squadra` (
  `ID_Squadra` int(7) NOT NULL,
  `Nome_squadra` varchar(30) NOT NULL,
  `Logo_squadra` varchar(50) DEFAULT NULL,
  `Immagine_squadra` varchar(50) DEFAULT NULL,
  `Nome_sponsor` varchar(30) DEFAULT NULL,
  `Logo_sponsor` varchar(50) DEFAULT NULL,
  `Sede` varchar(30) DEFAULT NULL,
  `Descrizione` varchar(5000) DEFAULT NULL,
  `ID_Gestore` int(11) NOT NULL,
  `Compilata` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `squadra`
--

INSERT INTO `squadra` (`ID_Squadra`, `Nome_squadra`, `Logo_squadra`, `Immagine_squadra`, `Nome_sponsor`, `Logo_sponsor`, `Sede`, `Descrizione`, `ID_Gestore`, `Compilata`) VALUES
(0, 'Vincitore', NULL, NULL, NULL, NULL, NULL, NULL, 3, 'N'),
(1, 'Torino', 's1-logo.png', 's1-foto.jpg', 'Suzuki', 's1-sponsor.png', 'Torino', 'Il Torino Football Club, meglio conosciuto come Torino, è una società calcistica italiana con sede nella città di Torino. Il club odierno, rifondato nel 2005, è la continuazione dello storico sodalizio sorto nel 1906 dalla fusione tra il Football Club Torinese e soci dissidenti del Foot-Ball Club Juventus, e denominato Foot Ball Club Torino sino al 1936, Associazione Calcio Torino fino al 1943, dal 1945 al 1958 e ancora dal 1959 al 1977, Torino FIAT nel 1944, Associazione Calcio Talmone Torino nel 1958-59 e Torino Calcio dal 1977 al 2005. Milita nel campionato di Serie A.', 2, 'Y'),
(2, 'S.P.A.L. 2013', 's2-logo.png', 's2-foto.jpg', 'Interspar', 's2-sponsor.png', 'Ferrara', 'a S.P.A.L. 2013, meglio conosciuta come SPAL (acronimo di Società Polisportiva Ars et Labor), è una società calcistica italiana con sede nella città di Ferrara. Il club, costituitosi nel marzo 1907[2], è stato rifondato a seguito di due fallimenti societari datati 2005 e 2012. La squadra nella stagione 2017-2018 milita in Serie A.\r\n\r\nNella sua storia ha partecipato a 22 edizioni del massimo campionato italiano, di cui 17 alla Serie A a girone unico. Oltre ad aver raggiunto una finale di Coppa Italia nel 1962, ha vinto una Coppa Italia di Serie C nel 1999 e una Supercoppa di Lega Pro nel 2016; in ambito internazionale si è aggiudicata l`ultima edizione della Coppa dell`Amicizia nel 1968. È stata inoltre insignita della Stella d`oro al merito sportivo nel 1974.', 4, 'Y'),
(3, 'Hellas Verona', 's3-logo.png', 's3-foto.jpg', 'agsm', 's3-sponsor.png', 'Verona', 'L`Hellas Verona Football Club, noto comunemente come Hellas Verona o più semplicemente come Verona, è una società calcistica italiana con sede nella città di Verona. È uno dei club italiani più antichi, essendo stato fondato nel 1903 come Associazione Calcio Hellas, nonché la prima squadra di calcio della città per seguito di tifosi. Il club milita in Serie A, il massimo campionato italiano di calcio.\r\n\r\nDall`istituzione della Serie A a girone unico (1929), l`Hellas è stata l`unica squadra di una città non capoluogo di regione a vincere, nella stagione 1984-1985, il campionato di massima serie. Proprio gli anni 1980 sono il periodo di maggiori soddisfazioni sportive per il club, che arriva anche due volte consecutive (delle tre complessive) alla finale di Coppa Italia, disputando inoltre diverse partite nelle coppe europee (con una partecipazione alla Coppa dei Campioni e due alla Coppa UEFA). I gialloblù hanno partecipato a 28 campionati di Serie A, a 52 di Serie B e a 6 di Serie C; la compagine scaligera è inoltre la seconda (alle spalle del Brescia) per presenze nel campionato cadetto, torneo che ha vinto in tre occasioni. Attualmente la FIGC considera il Verona al tredicesimo posto nella graduatoria della tradizione sportiva dei club ad essa affiliati.', 5, 'Y'),
(4, 'Bologna', 's4-logo.png', 's4-foto.jpg', 'FAAC', 's4-sponsor.jpg', 'Bologna', 'Il Bologna Football Club 1909, comunemente noto come Bologna, è una società calcistica italiana fondata nel 1909 nell`omonimo capoluogo emiliano. La squadra milita in Serie A. Ha partecipato a 70 campionati di Serie A su 85, piazzandosi al nono posto nella classifica del maggior numero di presenze delle formazioni nella massima categoria italiana. Occupa il 53º posto del ranking delle migliori squadre del XX secolo, ottava italiana, dell`IFFHS. Secondo la FIGC è il club con l`ottava miglior tradizione sportiva in Italia.\r\n\r\nTra i club più blasonati d`italia, vanta 7 titoli di campione d`Italia, due Coppe Italia e una Coppa Alta Italia. In ambito internazionale, il Bologna fu la prima squadra italiana a vincere un trofeo continentale, nel 1932: la Coppa dell`Europa Centrale, la più antica manifestazione europea per squadre di club, poi riconquistata dai felsinei in altre due occasioni; tra gli altri successi fuori dai confini nazionali, i rossoblù annoverano una Coppa Intertoto, una Coppa di Lega Italo-Inglese e il Torneo Internazionale dell`Expo Universale di Parigi 1937.', 6, 'Y');

-- --------------------------------------------------------

--
-- Struttura della tabella `torneo`
--

CREATE TABLE `torneo` (
  `ID_Torneo` int(7) NOT NULL,
  `Nome` varchar(30) NOT NULL,
  `Tipologia` char(1) NOT NULL,
  `Descrizione` varchar(5000) NOT NULL,
  `ID_Amministratore` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `torneo`
--

INSERT INTO `torneo` (`ID_Torneo`, `Nome`, `Tipologia`, `Descrizione`, `ID_Amministratore`) VALUES
(1, 'Trofeo TIM', 'I', 'Il Trofeo TIM è un trofeo calcistico amichevole, organizzato a partire dal 2001 da Master Group Sport: lo sponsor dell`evento è l`omonima compagnia telefonica.', 1),
(2, 'Torneo Eliminazione', 'E', 'Torneo ad eliminazione tra due squadre', 1),
(3, 'Torneo Eliminazione a 4', 'E', 'Torneo ad eliminazione con 4 squadre partecipanti.', 1),
(4, 'Amichevole Emilia-Romagna', 'E', 'Amichevole tra S.P.A.L. 2013 e Bologna', 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `utente`
--

CREATE TABLE `utente` (
  `ID_Utente` int(11) NOT NULL,
  `Nome` varchar(30) NOT NULL,
  `Cognome` varchar(30) NOT NULL,
  `Password` varchar(16) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Tipo` varchar(1) NOT NULL,
  `Attivo` varchar(1) DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `utente`
--

INSERT INTO `utente` (`ID_Utente`, `Nome`, `Cognome`, `Password`, `Email`, `Tipo`, `Attivo`) VALUES
(1, 'Michele', 'Vaccari', 'admin1', 'admin@sportferrara.com', 'A', 'Y'),
(2, 'Urbano', 'Cairo', 'gestore1', 'gestore1@sportferrara.com', 'G', 'Y'),
(3, 'Michele', 'Vaccari', 'gestore0', 'gestore0@sportferrara.com', 'G', 'Y'),
(4, 'Walter', 'Mattioli', 'gestore2', 'gestore2@sportferrara.com', 'G', 'Y'),
(5, 'Maurizio', 'Setti', 'gestore3', 'gestore3@sportferrara.com', 'G', 'Y'),
(6, 'Joey', 'Saputo', 'gestore4', 'gestore4@sportferrara.com', 'G', 'Y'),
(7, 'Massimo', 'Busacca', 'arbitro1', 'arbitro1@sportferrara.com', 'R', 'Y'),
(8, 'Pierluigi', 'Collina', 'arbitro2', 'arbitro2@sportferrara.com', 'R', 'Y');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `amministratore`
--
ALTER TABLE `amministratore`
  ADD PRIMARY KEY (`ID_Utente`);

--
-- Indici per le tabelle `arbitro`
--
ALTER TABLE `arbitro`
  ADD PRIMARY KEY (`ID_Registrato`);

--
-- Indici per le tabelle `cartellino`
--
ALTER TABLE `cartellino`
  ADD PRIMARY KEY (`ID_Referto`,`ID_Giocatore`),
  ADD KEY `SSN_Giocatore` (`ID_Giocatore`);

--
-- Indici per le tabelle `classifica`
--
ALTER TABLE `classifica`
  ADD PRIMARY KEY (`ID_Torneo`,`ID_Squadra`),
  ADD KEY `ID_Squadra` (`ID_Squadra`);

--
-- Indici per le tabelle `formazione`
--
ALTER TABLE `formazione`
  ADD PRIMARY KEY (`ID_Giocatore`,`ID_Squadra`,`ID_Referto`),
  ADD KEY `ID_Squadra` (`ID_Squadra`),
  ADD KEY `ID_Referto` (`ID_Referto`);

--
-- Indici per le tabelle `gestore_squadra`
--
ALTER TABLE `gestore_squadra`
  ADD PRIMARY KEY (`ID_Registrato`);

--
-- Indici per le tabelle `giocano`
--
ALTER TABLE `giocano`
  ADD PRIMARY KEY (`ID_Partita`,`ID_SquadraA`,`ID_SquadraB`,`ID_Torneo`),
  ADD KEY `ID_Torneo` (`ID_Torneo`),
  ADD KEY `ID_SquadraA` (`ID_SquadraA`),
  ADD KEY `ID_SquadraB` (`ID_SquadraB`);

--
-- Indici per le tabelle `giocatore`
--
ALTER TABLE `giocatore`
  ADD PRIMARY KEY (`ID_Giocatore`),
  ADD KEY `ID_Squadra` (`ID_Squadra`);

--
-- Indici per le tabelle `marcatore`
--
ALTER TABLE `marcatore`
  ADD PRIMARY KEY (`ID_Referto`,`ID_Giocatore`),
  ADD KEY `SSN_Giocatore` (`ID_Giocatore`);

--
-- Indici per le tabelle `partecipa`
--
ALTER TABLE `partecipa`
  ADD PRIMARY KEY (`ID_Torneo`,`ID_Squadra`),
  ADD KEY `ID_Squadra` (`ID_Squadra`);

--
-- Indici per le tabelle `partita`
--
ALTER TABLE `partita`
  ADD PRIMARY KEY (`ID_Partita`);

--
-- Indici per le tabelle `referto`
--
ALTER TABLE `referto`
  ADD PRIMARY KEY (`ID_Referto`),
  ADD KEY `ID_Partita` (`ID_Partita`),
  ADD KEY `SSN_Arbitro` (`ID_Arbitro`);

--
-- Indici per le tabelle `registrato`
--
ALTER TABLE `registrato`
  ADD PRIMARY KEY (`ID_Utente`),
  ADD KEY `SSN_Admin` (`ID_Amministratore`);

--
-- Indici per le tabelle `scelto`
--
ALTER TABLE `scelto`
  ADD PRIMARY KEY (`ID_Arbitro`,`ID_Amministratore`,`ID_Partita`),
  ADD KEY `SSN_Admin` (`ID_Amministratore`),
  ADD KEY `ID_Partita` (`ID_Partita`);

--
-- Indici per le tabelle `squadra`
--
ALTER TABLE `squadra`
  ADD PRIMARY KEY (`ID_Squadra`),
  ADD KEY `SSN_Gestore` (`ID_Gestore`);

--
-- Indici per le tabelle `torneo`
--
ALTER TABLE `torneo`
  ADD PRIMARY KEY (`ID_Torneo`),
  ADD KEY `Creatore` (`ID_Amministratore`);

--
-- Indici per le tabelle `utente`
--
ALTER TABLE `utente`
  ADD PRIMARY KEY (`ID_Utente`);

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `amministratore`
--
ALTER TABLE `amministratore`
  ADD CONSTRAINT `amministratore_ibfk_1` FOREIGN KEY (`ID_Utente`) REFERENCES `utente` (`Id`);

--
-- Limiti per la tabella `arbitro`
--
ALTER TABLE `arbitro`
  ADD CONSTRAINT `arbitro_ibfk_1` FOREIGN KEY (`ID_Registrato`) REFERENCES `registrato` (`ID_Utente`);

--
-- Limiti per la tabella `cartellino`
--
ALTER TABLE `cartellino`
  ADD CONSTRAINT `cartellino_ibfk_1` FOREIGN KEY (`ID_Referto`) REFERENCES `referto` (`ID_Referto`),
  ADD CONSTRAINT `cartellino_ibfk_2` FOREIGN KEY (`ID_Giocatore`) REFERENCES `giocatore` (`ID_Giocatore`);

--
-- Limiti per la tabella `classifica`
--
ALTER TABLE `classifica`
  ADD CONSTRAINT `classifica_ibfk_1` FOREIGN KEY (`ID_Torneo`) REFERENCES `torneo` (`ID_Torneo`),
  ADD CONSTRAINT `classifica_ibfk_2` FOREIGN KEY (`ID_Squadra`) REFERENCES `squadra` (`ID_Squadra`);

--
-- Limiti per la tabella `formazione`
--
ALTER TABLE `formazione`
  ADD CONSTRAINT `formazione_ibfk_1` FOREIGN KEY (`ID_Giocatore`) REFERENCES `giocatore` (`ID_Giocatore`),
  ADD CONSTRAINT `formazione_ibfk_2` FOREIGN KEY (`ID_Squadra`) REFERENCES `squadra` (`ID_Squadra`),
  ADD CONSTRAINT `formazione_ibfk_3` FOREIGN KEY (`ID_Referto`) REFERENCES `referto` (`ID_Referto`);

--
-- Limiti per la tabella `gestore_squadra`
--
ALTER TABLE `gestore_squadra`
  ADD CONSTRAINT `gestore_squadra_ibfk_1` FOREIGN KEY (`ID_Registrato`) REFERENCES `registrato` (`ID_Utente`);

--
-- Limiti per la tabella `giocano`
--
ALTER TABLE `giocano`
  ADD CONSTRAINT `giocano_ibfk_1` FOREIGN KEY (`ID_Partita`) REFERENCES `partita` (`ID_Partita`),
  ADD CONSTRAINT `giocano_ibfk_2` FOREIGN KEY (`ID_Torneo`) REFERENCES `torneo` (`ID_Torneo`),
  ADD CONSTRAINT `giocano_ibfk_3` FOREIGN KEY (`ID_SquadraA`) REFERENCES `squadra` (`ID_Squadra`),
  ADD CONSTRAINT `giocano_ibfk_4` FOREIGN KEY (`ID_SquadraB`) REFERENCES `squadra` (`ID_Squadra`);

--
-- Limiti per la tabella `giocatore`
--
ALTER TABLE `giocatore`
  ADD CONSTRAINT `giocatore_ibfk_1` FOREIGN KEY (`ID_Squadra`) REFERENCES `squadra` (`ID_Squadra`);

--
-- Limiti per la tabella `marcatore`
--
ALTER TABLE `marcatore`
  ADD CONSTRAINT `marcatore_ibfk_1` FOREIGN KEY (`ID_Referto`) REFERENCES `referto` (`ID_Referto`),
  ADD CONSTRAINT `marcatore_ibfk_2` FOREIGN KEY (`ID_Giocatore`) REFERENCES `giocatore` (`ID_Giocatore`);

--
-- Limiti per la tabella `partecipa`
--
ALTER TABLE `partecipa`
  ADD CONSTRAINT `partecipa_ibfk_1` FOREIGN KEY (`ID_Torneo`) REFERENCES `torneo` (`ID_Torneo`),
  ADD CONSTRAINT `partecipa_ibfk_2` FOREIGN KEY (`ID_Squadra`) REFERENCES `squadra` (`ID_Squadra`);

--
-- Limiti per la tabella `referto`
--
ALTER TABLE `referto`
  ADD CONSTRAINT `referto_ibfk_1` FOREIGN KEY (`ID_Partita`) REFERENCES `partita` (`ID_Partita`),
  ADD CONSTRAINT `referto_ibfk_2` FOREIGN KEY (`ID_Arbitro`) REFERENCES `arbitro` (`ID_Registrato`);

--
-- Limiti per la tabella `registrato`
--
ALTER TABLE `registrato`
  ADD CONSTRAINT `registrato_ibfk_1` FOREIGN KEY (`ID_Utente`) REFERENCES `utente` (`Id`),
  ADD CONSTRAINT `registrato_ibfk_2` FOREIGN KEY (`ID_Amministratore`) REFERENCES `amministratore` (`ID_Utente`);

--
-- Limiti per la tabella `scelto`
--
ALTER TABLE `scelto`
  ADD CONSTRAINT `scelto_ibfk_1` FOREIGN KEY (`ID_Arbitro`) REFERENCES `arbitro` (`ID_Registrato`),
  ADD CONSTRAINT `scelto_ibfk_2` FOREIGN KEY (`ID_Amministratore`) REFERENCES `amministratore` (`ID_Utente`),
  ADD CONSTRAINT `scelto_ibfk_3` FOREIGN KEY (`ID_Partita`) REFERENCES `partita` (`ID_Partita`);

--
-- Limiti per la tabella `squadra`
--
ALTER TABLE `squadra`
  ADD CONSTRAINT `squadra_ibfk_1` FOREIGN KEY (`ID_Gestore_squadra`) REFERENCES `gestore_squadra` (`ID_Registrato`);

--
-- Limiti per la tabella `torneo`
--
ALTER TABLE `torneo`
  ADD CONSTRAINT `torneo_ibfk_1` FOREIGN KEY (`ID_Amministratore`) REFERENCES `utente` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
