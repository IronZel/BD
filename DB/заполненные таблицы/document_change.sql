-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 09 2018 г., 10:12
-- Версия сервера: 5.6.38
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `main1`
--

-- --------------------------------------------------------

--
-- Структура таблицы `document_change`
--

CREATE TABLE `document_change` (
  `act_id` int(11) NOT NULL,
  `doc_changeable` int(11) NOT NULL,
  `doc_changer` int(11) NOT NULL,
  `act` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `document_change`
--

INSERT INTO `document_change` (`act_id`, `doc_changeable`, `doc_changer`, `act`) VALUES
(1, 1, 2, 'Акт об отказе от подписи\r\n\r\n'),
(2, 2, 3, 'Акт об ревизии'),
(3, 3, 4, 'Акт о ликвидации предприятия'),
(4, 4, 5, 'Акт осмотра'),
(5, 5, 1, 'Акт испытаний');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `document_change`
--
ALTER TABLE `document_change`
  ADD PRIMARY KEY (`act_id`),
  ADD KEY `doc_changeable` (`doc_changeable`),
  ADD KEY `doc_changer` (`doc_changer`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `document_change`
--
ALTER TABLE `document_change`
  MODIFY `act_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
