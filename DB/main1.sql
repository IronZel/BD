-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 09 2018 г., 11:41
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
-- Структура таблицы `documents`
--

CREATE TABLE `documents` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date_accept` date NOT NULL,
  `date_entry` date DEFAULT NULL,
  `head_id` int(11) NOT NULL,
  `doc_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `documents`
--

INSERT INTO `documents` (`id`, `name`, `date_accept`, `date_entry`, `head_id`, `doc_id`) VALUES
(1, 'Договор', '2018-06-01', '2018-06-05', 1, 1),
(2, 'Приказ', '2018-05-25', '2018-06-04', 2, 2),
(3, 'Распоряжение', '2018-06-03', '2018-06-08', 3, 3),
(4, 'Заявление', '2018-05-14', '2018-06-04', 4, 4),
(5, 'Постановление', '2018-05-31', '2018-06-06', 5, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `documents_group`
--

CREATE TABLE `documents_group` (
  `id` int(11) NOT NULL,
  `doc_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `documents_group`
--

INSERT INTO `documents_group` (`id`, `doc_id`, `group_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5);

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

-- --------------------------------------------------------

--
-- Структура таблицы `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `groups`
--

INSERT INTO `groups` (`id`, `name`) VALUES
(1, 'Договор'),
(2, 'Приказ'),
(3, 'Распоряжение'),
(4, 'Заявление'),
(5, 'Постановление');

-- --------------------------------------------------------

--
-- Структура таблицы `heads`
--

CREATE TABLE `heads` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `surname` varchar(20) NOT NULL,
  `patronymic` varchar(30) NOT NULL,
  `position` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `heads`
--

INSERT INTO `heads` (`id`, `name`, `surname`, `patronymic`, `position`) VALUES
(1, 'Олег', 'Иванов', 'Александрович', 'ген.Директор'),
(2, 'Марина', 'Ромашкинф', 'Алексеевна', 'гл.Бухгалтер'),
(3, 'Алексей', 'Вишницкий', 'Олегович', 'зав.Директора'),
(4, 'Александр', 'Перелыгин', 'Александрович', 'гл.Инженер'),
(5, 'Анастасия', 'Василькова', 'Астаповна', 'Управляющий');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `headID` (`head_id`);

--
-- Индексы таблицы `documents_group`
--
ALTER TABLE `documents_group`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `document_change`
--
ALTER TABLE `document_change`
  ADD PRIMARY KEY (`act_id`),
  ADD KEY `doc_changeable` (`doc_changeable`),
  ADD KEY `doc_changer` (`doc_changer`);

--
-- Индексы таблицы `heads`
--
ALTER TABLE `heads`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `documents_group`
--
ALTER TABLE `documents_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `document_change`
--
ALTER TABLE `document_change`
  MODIFY `act_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `heads`
--
ALTER TABLE `heads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
