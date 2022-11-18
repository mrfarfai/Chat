-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 02 2022 г., 04:04
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `chat_hack`
--

-- --------------------------------------------------------

--
-- Структура таблицы `chat`
--

CREATE TABLE `chat` (
  `id` int(11) NOT NULL,
  `from_user` int(11) NOT NULL,
  `to_user` int(11) NOT NULL,
  `msg` text NOT NULL,
  `status` int(1) NOT NULL,
  `send_dt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chat`
--

INSERT INTO `chat` (`id`, `from_user`, `to_user`, `msg`, `status`, `send_dt`) VALUES
(1, 1, 2, 'ужасно', 1, '2022-10-01 21:01:09'),
(2, 1, 2, 'ужасно', 1, '2022-10-01 21:01:17'),
(3, 1, 2, 'ужасно', 1, '2022-10-01 21:37:26'),
(4, 1, 2, 'ужас', 1, '2022-10-01 21:37:44'),
(5, 1, 2, 'прекрасно', 1, '2022-10-01 21:37:59'),
(6, 2, 1, 'прекрасно', 1, '2022-10-01 21:38:28'),
(7, 1, 2, 'ужас', 1, '2022-10-01 21:38:50'),
(8, 1, 2, 'ужас', 1, '2022-10-01 21:38:59'),
(9, 1, 2, 'прекрасно', 1, '2022-10-01 21:39:05'),
(10, 1, 2, 'прекрасно', 1, '2022-10-01 21:39:17'),
(11, 1, 2, 'ужасно', 1, '2022-10-01 21:40:33'),
(12, 1, 2, 'ужасно', 1, '2022-10-01 21:42:00'),
(13, 1, 2, 'ужасно', 1, '2022-10-01 21:42:41'),
(14, 2, 1, 'ужасно', 1, '2022-10-01 21:43:28'),
(15, 1, 2, 'прекрасно', 1, '2022-10-01 21:44:06'),
(16, 1, 2, 'ужасно', 1, '2022-10-01 21:45:53'),
(17, 1, 2, 'ужас', 1, '2022-10-01 21:46:22'),
(18, 1, 2, 'ужас', 1, '2022-10-01 21:46:28'),
(19, 1, 2, 'ужасно', 1, '2022-10-01 21:53:29'),
(20, 1, 2, 'прекрасно', 1, '2022-10-01 21:53:35'),
(21, 1, 2, 'прекрасно', 1, '2022-10-01 21:53:42'),
(22, 2, 1, 'плохо', 1, '2022-10-01 21:54:06'),
(23, 2, 1, 'ужасно', 1, '2022-10-01 21:54:11'),
(24, 2, 1, 'Всё плохо', 1, '2022-10-01 23:32:41'),
(25, 2, 1, 'Всё ужасно', 1, '2022-10-01 23:32:52'),
(26, 2, 1, 'плохо', 1, '2022-10-01 23:33:20'),
(27, 2, 1, 'прекрасно', 1, '2022-10-01 23:33:26'),
(28, 2, 1, 'у меня все прекрасно ', 1, '2022-10-01 23:33:34'),
(29, 2, 1, 'всё плохо', 1, '2022-10-01 23:33:42'),
(30, 2, 1, 'всё плохо', 1, '2022-10-01 23:33:50'),
(31, 2, 1, 'всё ужасно', 1, '2022-10-01 23:34:33'),
(32, 2, 1, 'очень плохо', 1, '2022-10-01 23:34:50'),
(33, 1, 2, 'всё плохо', 1, '2022-10-01 23:35:23'),
(34, 1, 2, 'всё ужасно', 1, '2022-10-01 23:35:30'),
(35, 1, 2, 'привет', 1, '2022-10-01 23:35:34'),
(36, 1, 2, 'ужас', 1, '2022-10-01 23:35:38'),
(37, 1, 2, 'прекрасно', 1, '2022-10-01 23:41:55'),
(38, 1, 2, 'плохо!', 1, '2022-10-01 23:47:13'),
(39, 1, 2, 'плохо', 1, '2022-10-01 23:47:24'),
(40, 1, 2, 'плохо', 1, '2022-10-01 23:47:33'),
(41, 2, 1, 'e;fc', 1, '2022-10-01 23:50:25'),
(42, 2, 1, 'asdds', 1, '2022-10-01 23:53:02'),
(43, 2, 1, 'asdasd', 1, '2022-10-01 23:53:42'),
(44, 1, 2, 'asdasdasd', 1, '2022-10-01 23:57:59'),
(45, 1, 2, '', 1, '2022-10-01 23:58:01'),
(46, 1, 2, 'asd', 1, '2022-10-02 00:00:56'),
(47, 1, 2, 'asdasdas', 1, '2022-10-02 00:05:59'),
(48, 2, 1, 'adsadasdasd', 1, '2022-10-02 00:06:54'),
(49, 2, 1, 'asdasd', 1, '2022-10-02 00:09:00'),
(50, 2, 1, 'zxczxc', 1, '2022-10-02 00:09:09'),
(51, 1, 2, 'asdasda', 1, '2022-10-02 00:14:34'),
(52, 2, 1, 'dasdasda', 1, '2022-10-02 00:16:32'),
(53, 1, 2, 'asdasd', 1, '2022-10-02 00:16:48'),
(54, 1, 2, 'asdasdad', 1, '2022-10-02 00:16:56'),
(55, 1, 2, 'adasdasda', 1, '2022-10-02 00:32:07'),
(56, 1, 2, 'привет', 1, '2022-10-02 00:32:18'),
(57, 1, 2, 'asdasdsdd', 1, '2022-10-02 00:42:47'),
(58, 1, 2, 'asdasd', 1, '2022-10-02 00:43:28'),
(59, 1, 2, 'sadasda', 1, '2022-10-02 00:43:49'),
(60, 1, 2, 'sadasd', 1, '2022-10-02 00:43:54'),
(61, 1, 2, 'привет', 1, '2022-10-02 00:44:09'),
(62, 1, 2, 'плохо', 1, '2022-10-02 00:44:18'),
(63, 1, 2, 'всё ужасно', 1, '2022-10-02 00:44:36'),
(64, 1, 2, 'а это прекрасно', 1, '2022-10-02 00:44:53'),
(65, 2, 1, 'хорошо', 1, '2022-10-02 00:45:27'),
(66, 1, 2, 'как дела', 1, '2022-10-02 00:45:49'),
(67, 2, 1, 'всё норм,а у тебя как ?', 1, '2022-10-02 00:46:06'),
(68, 1, 2, 'мне страшно', 1, '2022-10-02 00:47:03'),
(69, 1, 2, 'мне страшно', 1, '2022-10-02 00:47:14'),
(70, 1, 2, 'мне страшно', 1, '2022-10-02 00:47:29'),
(71, 1, 2, 'мне страшно', 1, '2022-10-02 00:47:41'),
(72, 1, 2, 'очень страшно', 1, '2022-10-02 00:47:48'),
(73, 1, 2, 'мне плохо', 1, '2022-10-02 00:48:16'),
(74, 1, 2, 'мне это не нравиться', 1, '2022-10-02 00:48:27'),
(75, 1, 2, 'мне это не нравиться', 1, '2022-10-02 00:48:47'),
(76, 1, 2, 'прекрасно', 1, '2022-10-02 00:48:54'),
(77, 1, 2, 'мне это не нравиться', 1, '2022-10-02 00:49:06'),
(78, 1, 2, 'плохо', 1, '2022-10-02 00:49:28'),
(79, 1, 2, 'ужасно', 1, '2022-10-02 00:49:35'),
(80, 1, 2, 'как такое может быть', 1, '2022-10-02 00:49:45'),
(81, 1, 2, 'это ужас', 1, '2022-10-02 00:49:50'),
(82, 1, 2, 'но  мне нравиться', 1, '2022-10-02 00:50:01'),
(83, 1, 2, 'плохо', 1, '2022-10-02 01:37:17'),
(84, 1, 2, 'ужастно', 1, '2022-10-02 01:37:23'),
(85, 1, 2, 'ужасно', 1, '2022-10-02 01:37:28'),
(86, 1, 2, 'у меня все прекрасно', 1, '2022-10-02 01:37:57'),
(87, 1, 2, 'прекрасно', 1, '2022-10-02 01:38:56'),
(88, 1, 2, 'ужасно', 1, '2022-10-02 01:39:02'),
(89, 1, 2, 'нормально', 1, '2022-10-02 01:39:43'),
(90, 1, 2, '{[4]}', 1, '2022-10-02 02:23:24'),
(91, 1, 2, '{[1]}', 1, '2022-10-02 02:24:47'),
(92, 1, 2, '{[4]}', 1, '2022-10-02 02:27:44'),
(93, 1, 2, '{[4]}', 1, '2022-10-02 02:27:52'),
(94, 1, 2, '{[4]}', 1, '2022-10-02 02:28:40'),
(95, 1, 2, '{[3]}', 1, '2022-10-02 02:30:12'),
(96, 1, 2, 'мегом', 1, '2022-10-02 02:36:08'),
(97, 1, 2, 'ужасно', 1, '2022-10-02 02:36:19'),
(98, 1, 2, '{[1]}', 1, '2022-10-02 02:36:23'),
(99, 1, 2, '{[4]}', 1, '2022-10-02 02:36:32'),
(100, 1, 2, '{[4]}', 1, '2022-10-02 02:36:51'),
(101, 2, 1, '{[4]}', 1, '2022-10-02 02:40:46'),
(102, 1, 2, '{[4]}', 1, '2022-10-02 02:41:00'),
(103, 2, 1, '{[4]}', 1, '2022-10-02 02:41:41'),
(104, 1, 2, '{[4]}', 1, '2022-10-02 02:41:58'),
(105, 1, 2, '{[1]}', 1, '2022-10-02 02:42:38'),
(106, 1, 2, '{[4]}', 1, '2022-10-02 02:43:49'),
(107, 1, 2, '{[1]}', 1, '2022-10-02 02:43:53'),
(108, 1, 2, '{[1]}', 1, '2022-10-02 02:44:42'),
(109, 1, 2, '{[4]}', 1, '2022-10-02 02:45:10'),
(110, 1, 2, '{[4]}', 1, '2022-10-02 02:46:36'),
(111, 1, 2, '{[4]}', 1, '2022-10-02 02:46:52'),
(112, 1, 2, 'прекрасно', 1, '2022-10-02 02:46:58'),
(113, 1, 2, '{[1]}', 1, '2022-10-02 02:47:02'),
(114, 1, 2, '{[4]}', 1, '2022-10-02 03:00:00'),
(115, 1, 2, '{[4]}', 1, '2022-10-02 03:00:38'),
(116, 1, 2, '{[1]}', 1, '2022-10-02 03:01:03'),
(117, 1, 2, '{[4]}', 1, '2022-10-02 03:01:50'),
(118, 1, 2, 'qwe', 1, '2022-10-02 03:02:03'),
(119, 1, 2, '{[4]}', 1, '2022-10-02 03:02:54'),
(120, 1, 2, '{[4]}', 1, '2022-10-02 03:03:33'),
(121, 1, 2, '{[4]}', 1, '2022-10-02 03:04:22'),
(122, 1, 2, '{[4]}', 1, '2022-10-02 03:04:55'),
(123, 1, 2, '{[4]}', 1, '2022-10-02 03:05:21'),
(124, 1, 2, '{[1]}', 1, '2022-10-02 03:06:06'),
(125, 1, 2, '{[1]}', 1, '2022-10-02 03:06:12'),
(126, 1, 2, '{[1]}', 1, '2022-10-02 03:06:30'),
(127, 1, 2, '{[4]}', 1, '2022-10-02 03:07:43'),
(128, 1, 2, '{[4]}', 1, '2022-10-02 03:08:28'),
(129, 1, 2, '{[1]}', 1, '2022-10-02 03:08:59'),
(130, 1, 2, '{[4]}', 1, '2022-10-02 03:10:09'),
(131, 1, 2, '{[4]}', 1, '2022-10-02 03:11:06'),
(132, 1, 2, '{[1]}', 1, '2022-10-02 03:13:27'),
(133, 1, 2, '{[1]}', 1, '2022-10-02 03:13:56'),
(134, 1, 2, '{[0]}', 1, '2022-10-02 03:17:15'),
(135, 1, 2, '{[3]}', 1, '2022-10-02 03:17:26'),
(136, 1, 2, '{[3]}', 1, '2022-10-02 03:35:22'),
(137, 1, 2, 'прекрасно', 1, '2022-10-02 03:35:28'),
(138, 1, 2, '{[-1]}', 1, '2022-10-02 03:36:14'),
(139, 1, 2, '{[4]}', 1, '2022-10-02 03:38:04'),
(140, 1, 2, '{[2]}', 1, '2022-10-02 03:38:53'),
(141, 1, 2, '{[0]}', 1, '2022-10-02 03:39:04'),
(142, 1, 2, 'плохо', 1, '2022-10-02 03:39:21'),
(143, 1, 2, 'rfkfq', 1, '2022-10-02 03:41:11'),
(144, 1, 2, '{[3]}', 1, '2022-10-02 03:44:49'),
(145, 1, 2, '{[3]}', 1, '2022-10-02 03:46:01'),
(146, 1, 2, '{[3]}', 1, '2022-10-02 03:46:25'),
(147, 1, 2, '{[3]}', 1, '2022-10-02 03:46:49'),
(148, 1, 2, '{[3]}', 1, '2022-10-02 03:47:15'),
(149, 1, 2, '{[3]}', 1, '2022-10-02 03:47:53'),
(150, 1, 2, '{[3]}', 1, '2022-10-02 03:48:12'),
(151, 1, 2, '{[0]}', 1, '2022-10-02 03:48:56');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `status` int(1) NOT NULL,
  `reg_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `name`, `surname`, `status`, `reg_date`) VALUES
(1, 'Фаридун', 'Файзиев', 2, '2022-10-01 14:54:28'),
(2, 'Эсен', 'Эсен', 4, '2022-10-01 14:56:20');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
