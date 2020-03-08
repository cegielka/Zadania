-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 06 Mar 2020, 20:20
-- Wersja serwera: 10.4.8-MariaDB
-- Wersja PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `quizdb`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `person`
--

CREATE TABLE `person` (
  `PersonID` int(11) NOT NULL,
  `man` varchar(255) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `person`
--

INSERT INTO `person` (`PersonID`, `man`) VALUES
(55, ''),
(56, '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `quiz`
--

CREATE TABLE `quiz` (
  `quizID` int(255) NOT NULL,
  `question` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `choice1` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `choice2` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `choice3` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `answer` varchar(255) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `quiz`
--

INSERT INTO `quiz` (`quizID`, `question`, `choice1`, `choice2`, `choice3`, `answer`) VALUES
(1, 'Jaka metoda pozwala rozpocząć działanie programu?', 'compare', 'main', 'Main', 'main'),
(2, 'Wskaż typ opakowany.', 'int', 'boolean', 'String', 'String'),
(3, 'Która zmienna została przedstawiona dobrze?', 'int a = 10d;', 'String text = \'hello\';', 'Integer a = 10;', 'Integer a = 10;'),
(4, 'Które słowo rozszerza klasy?', 'extands', 'for', 'abstract', 'extands'),
(5, 'Wskaż kluczową wersje Java.', 'Java 8', 'Java 7', 'Java 13', 'Java 8'),
(6, 'Które słowo kluczowe określa długość tekstu', 'length()', 'length', 'width', 'length()'),
(7, 'Po jakim typie dziedziczy każdy objekt?', 'Object', 'Collection', 'String', 'Object'),
(8, 'Za pomocą jakiej instukcij łapiemy wyjątki?', 'try', 'stream', 'protected', 'try'),
(9, 'Jak wygląda tablica w Java?', 'int[] tab', 'int tab ', 'int [tab]', 'int[] tab'),
(10, 'Która instrukcja to pętla?', 'do while', 'if', 'forEach', 'do while'),
(11, 'Klasa tekstowa to ?', 'String', 'int', 'char', 'String'),
(12, 'Metoda startsWith() zwraca?', 'boolean', 'String', 'char', 'boolean'),
(13, 'Za co odpowiada słowo import?', 'za wywołanie bibliotek', 'za wydajność', 'za wprowadzanie danych', 'za wywołanie bibliotek'),
(14, 'Jakie słowo pozwala ominąć wyjątek?', 'try', 'skipException', 'throws', 'throws'),
(15, 'Jaką metodą porównujemy String?', 'equals', '=', '==', 'equals');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `score`
--

CREATE TABLE `score` (
  `ID` int(11) NOT NULL,
  `personName` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`PersonID`);

--
-- Indeksy dla tabeli `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`quizID`);

--
-- Indeksy dla tabeli `score`
--
ALTER TABLE `score`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `person`
--
ALTER TABLE `person`
  MODIFY `PersonID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT dla tabeli `quiz`
--
ALTER TABLE `quiz`
  MODIFY `quizID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT dla tabeli `score`
--
ALTER TABLE `score`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;