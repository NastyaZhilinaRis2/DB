-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 12 2024 г., 22:48
-- Версия сервера: 5.5.62-log
-- Версия PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `Zhilina`
--

-- --------------------------------------------------------

--
-- Структура таблицы `LOG`
--

CREATE TABLE `LOG` (
  `Id_logs_students` int(11) NOT NULL,
  `Id_students` int(11) NOT NULL,
  `Action` text NOT NULL,
  `TimeAction` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `LOG`
--

INSERT INTO `LOG` (`Id_logs_students`, `Id_students`, `Action`, `TimeAction`) VALUES
(1, 1, 'Добавлен студент: Иванов Иван Иванович Группа: РИС-23-2б', '2024-11-12 18:50:24'),
(2, 2, 'Добавлен студент: Петров Петр Петрович Группа: РИС-23-2б', '2024-11-12 18:50:24'),
(3, 3, 'Добавлен студент: Петров Петр Петрович Группа: РИС-23-2б', '2024-11-12 18:50:24'),
(4, 4, 'Добавлен студент: Сидоров Иван Иванович Группа: РИС-23-1а', '2024-11-12 18:50:24'),
(5, 5, 'Добавлен студент: Кузнецов Алексей Сергеевич Группа: РИС-23-2б', '2024-11-12 18:50:24'),
(6, 6, 'Добавлен студент: Иванов Дмитрий Александрович Группа: РИС-23-1в', '2024-11-12 18:50:24'),
(7, 7, 'Добавлен студент: Поляков Андрей Викторович Группа: РИС-23-2а', '2024-11-12 18:50:24'),
(8, 8, 'Добавлен студент: Семенова Мария Петровна Группа: РИС-23-1a', '2024-11-12 18:50:24'),
(9, 9, 'Добавлен студент: Николаев Станислав Павлович Группа: РИС-23-2a', '2024-11-12 18:50:24'),
(10, 10, 'Добавлен студент: Федоров Евгений Антонович Группа: РИС-23-1б', '2024-11-12 18:50:24'),
(11, 11, 'Добавлен студент: Морозов Виктор Иванович Группа: РИС-23-2б', '2024-11-12 18:50:24'),
(12, 7, 'Изменен студент: Мильчаков Андрей Викторович Группа: РИС-23-2б', '2024-11-12 19:02:18'),
(13, 5, 'Удален студент: Кузнецов Алексей Сергеевич Группа: РИС-23-2б', '2024-11-12 19:05:29');

-- --------------------------------------------------------

--
-- Структура таблицы `table_employees_zhilina`
--

CREATE TABLE `table_employees_zhilina` (
  `Id_employees` int(11) NOT NULL,
  `Surname` varchar(40) DEFAULT NULL,
  `Name` varchar(40) DEFAULT NULL,
  `Patronymic` varchar(40) DEFAULT NULL,
  `Telephone` char(11) DEFAULT NULL,
  `Address` varchar(40) DEFAULT NULL,
  `id_post` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `table_employees_zhilina`
--

INSERT INTO `table_employees_zhilina` (`Id_employees`, `Surname`, `Name`, `Patronymic`, `Telephone`, `Address`, `id_post`) VALUES
(1, 'Жилина', 'Анастасия', 'Александровна', '88005553535', 'Максима Горького, 25', 1),
(2, 'Иванов', 'Иван', 'Иванович', '89641112223', 'Заводская, 1', 2),
(3, 'Ермакова', 'Александра', 'Александровна', '89197176062', 'Максима Горького, 25', 1),
(4, 'Сидоров', 'Анатолий', 'Игнатьевич', '89122265745', 'Краснова, 12', 2),
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
  `Clock` int(2) DEFAULT '8'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

-- --------------------------------------------------------

--
-- Структура таблицы `table_students_zhilina`
--

CREATE TABLE `table_students_zhilina` (
  `Id_students` int(11) NOT NULL,
  `Surname` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Patronymic` varchar(50) NOT NULL,
  `Group` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `table_students_zhilina`
--

INSERT INTO `table_students_zhilina` (`Id_students`, `Surname`, `Name`, `Patronymic`, `Group`) VALUES
(1, 'Иванов', 'Иван', 'Иванович', 'РИС-23-2б'),
(2, 'Петров', 'Петр', 'Петрович', 'РИС-23-2б'),
(3, 'Петров', 'Петр', 'Петрович', 'РИС-23-2б'),
(4, 'Сидоров', 'Иван', 'Иванович', 'РИС-23-1а'),
(6, 'Иванов', 'Дмитрий', 'Александрович', 'РИС-23-1в'),
(7, 'Мильчаков', 'Андрей', 'Викторович', 'РИС-23-2б'),
(8, 'Семенова', 'Мария', 'Петровна', 'РИС-23-1a'),
(9, 'Николаев', 'Станислав', 'Павлович', 'РИС-23-2a'),
(10, 'Федоров', 'Евгений', 'Антонович', 'РИС-23-1б'),
(11, 'Морозов', 'Виктор', 'Иванович', 'РИС-23-2б');

--
-- Триггеры `table_students_zhilina`
--
DELIMITER $$
CREATE TRIGGER `Delete_students` AFTER DELETE ON `table_students_zhilina` FOR EACH ROW INSERT INTO `LOG`(`Id_students`, `Action`) VALUES (OLD.Id_students, CONCAT('Удален студент: ', OLD.Surname, ' ', OLD.Name, ' ', OLD.Patronymic, ' Группа: ', OLD.Group))
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `Insert_students` AFTER INSERT ON `table_students_zhilina` FOR EACH ROW INSERT INTO `LOG`(`Id_students`, `Action`) VALUES (NEW.Id_students, CONCAT('Добавлен студент: ', NEW.Name, ' ', NEW.Surname, ' ', NEW.Patronymic, ' Группа: ', NEW.Group))
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `Update_students` AFTER UPDATE ON `table_students_zhilina` FOR EACH ROW INSERT INTO `LOG`(`Id_students`, `Action`) 
VALUES (NEW.Id_students, CONCAT('Изменен студент: ', NEW.Surname, ' ', NEW.Name, ' ', NEW.Patronymic, ' Группа: ', NEW.Group))
$$
DELIMITER ;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `LOG`
--
ALTER TABLE `LOG`
  ADD PRIMARY KEY (`Id_logs_students`);

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
-- Индексы таблицы `table_students_zhilina`
--
ALTER TABLE `table_students_zhilina`
  ADD PRIMARY KEY (`Id_students`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `LOG`
--
ALTER TABLE `LOG`
  MODIFY `Id_logs_students` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

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
-- AUTO_INCREMENT для таблицы `table_students_zhilina`
--
ALTER TABLE `table_students_zhilina`
  MODIFY `Id_students` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
