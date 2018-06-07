-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Июн 07 2018 г., 11:48
-- Версия сервера: 5.5.25
-- Версия PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `6_documenti`
--

-- --------------------------------------------------------

--
-- Структура таблицы `archive`
--

CREATE TABLE IF NOT EXISTS `archive` (
  `id` int(11) NOT NULL,
  `id_docum` int(11) NOT NULL,
  `id_doc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `archive_закрытие`
--

CREATE TABLE IF NOT EXISTS `archive_закрытие` (
  `id` int(11) NOT NULL,
  `id-docum_который_необходимо_закрыть` int(11) NOT NULL,
  `id-doc_который_закрывает` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `documents`
--

CREATE TABLE IF NOT EXISTS `documents` (
  `id_doc` int(11) NOT NULL,
  `date_принятия` date NOT NULL,
  `date_вступления_в_силу` date NOT NULL,
  `id_users` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `пробная_таблица_для_smartgit`
--

CREATE TABLE IF NOT EXISTS `пробная_таблица_для_smartgit` (
  `id` int(4) NOT NULL,
  `name` varchar(50) NOT NULL,
  `Date_` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
