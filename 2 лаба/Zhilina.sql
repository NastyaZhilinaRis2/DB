-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Окт 01 2024 г., 23:33
-- Версия сервера: 10.4.27-MariaDB
-- Версия PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `zhilina`
--

-- --------------------------------------------------------

--
-- Структура таблицы `table_employees_zhilina`
--

CREATE TABLE `table_employees_zhilina` (
  `Id_employees` int(11) NOT NULL,
  `Name` varchar(40) DEFAULT NULL,
  `Surname` varchar(40) DEFAULT NULL,
  `Patronymic` varchar(40) DEFAULT NULL,
  `Telephone` char(11) DEFAULT NULL,
  `Address` varchar(40) DEFAULT NULL,
  `id_post` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `table_employees_zhilina`
--

INSERT INTO `table_employees_zhilina` (`Id_employees`, `Name`, `Surname`, `Patronymic`, `Telephone`, `Address`, `id_post`) VALUES
(1, 'Жилина', 'Анастасия', 'Александровна', '88005553535', 'Максима Горького, 25', 1),
(2, 'Иванов', 'Иван', 'Иванович', '89641112223', 'Заводская, 1', 2),
(3, 'Жилина', 'Анастасия', 'Александровна', '88005553535', 'Максима Горького, 25', 1),
(4, 'Сидоров', 'Анатолий', 'Игнатьевич', '89641112223', 'Краснова, 12', 2),
(5, 'Железняков', 'Петр', 'Петрович', '88001112233', 'Комсомольская, 8', 3),
(6, 'Пушкин', 'Александр', 'Сергеевич', '88004445453', 'пр-т Парковый, 5', 4),
(7, 'Комаров', 'Савелий', 'Дмитриевич', '88005556677', 'Ленина, 60', 5),
(8, 'Антонов', 'Антон', 'Антонович', '88002223344', 'Победы, 14', 6),
(9, 'Степанько', 'Сергей', 'Дмитриевич', '88007777899', 'Советская, 22', 7),
(10, 'Аксонов', 'Аркадий', 'Иванович', '88003332211', 'Центральная, 1', 8),
(11, 'Филоненко', 'Дмитрий', 'Викторович', '88004443322', 'Дзержинского, 9', 9),
(12, 'Лысова', 'Ирина', 'Федоровна', '88001119988', 'Первомайская, 10', 10),
(13, 'Кириллова', 'Наталья', 'Петровна', '88006665544', 'Строителей, 4', 2),
(14, 'Алексеева', 'Надежда', 'Георгиевна', '88007777899', '25 Октября, 30', 7),
(15, 'Разумов', 'Игорь', 'Иванович', '88001112233', 'Лесная, 18', 8),
(16, 'Нестерова', 'Варвара', 'Нестерова', '88005556111', 'Уральская, 7', 9),
(17, 'Михайлов', 'Максима', 'Андреевич', '88004443222', 'Красноармейская, 3', 10),
(18, 'Григорьев', 'Дмитрий', 'Иванович', '88001118877', 'Фестивальная, 9', 1),
(19, 'Лисова', 'Екатерина', 'Иванович', '88008887766', 'Молодежная, 12', 2),
(20, 'Смирнова', 'Анна', 'Сергеевна', '88005553334', 'Октябрьская, 45', 7),
(21, 'Соколова', 'Татьяна', 'Вячеславовна', '88004445566', 'Гагарина, 22, 1', 8),
(22, 'Панов', 'Константин', 'Сергеевич', '88009876543', 'Центральная, 3', 9);

-- --------------------------------------------------------

--
-- Структура таблицы `table_post_zhilina`
--

CREATE TABLE `table_post_zhilina` (
  `Id_post` int(11) NOT NULL,
  `Name` varchar(40) DEFAULT NULL,
  `Salary` int(6) DEFAULT NULL,
  `Clock` int(2) DEFAULT 8
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `table_post_zhilina`
--

INSERT INTO `table_post_zhilina` (`Id_post`, `Name`, `Salary`, `Clock`) VALUES
(1, 'Ст. преподаватель информатики', 60000, 8),
(2, 'Бухгалтер', 40000, 8),
(3, 'Ректор', 100000, 6),
(4, 'Проректор', 90000, 8),
(5, 'Декан', 80000, 8),
(6, 'Зав. кафедры', 70000, 8),
(7, 'Ст. преподаватель математики', 61000, 8),
(8, 'Ст. преподаватель физики', 65000, 8),
(9, 'Ст. преподаватель баз данных', 65000, 8),
(10, 'Ст. преподаватель русского языка', 60000, 8);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `table_employees_zhilina`
--
ALTER TABLE `table_employees_zhilina`
  ADD PRIMARY KEY (`Id_employees`),
  ADD KEY `id_post` (`id_post`);

--
-- Индексы таблицы `table_post_zhilina`
--
ALTER TABLE `table_post_zhilina`
  ADD PRIMARY KEY (`Id_post`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `table_employees_zhilina`
--
ALTER TABLE `table_employees_zhilina`
  MODIFY `Id_employees` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблицы `table_post_zhilina`
--
ALTER TABLE `table_post_zhilina`
  MODIFY `Id_post` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `table_employees_zhilina`
--
ALTER TABLE `table_employees_zhilina`
  ADD CONSTRAINT `table_employees_zhilina_ibfk_1` FOREIGN KEY (`id_post`) REFERENCES `table_post_zhilina` (`Id_post`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
