-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 05 2024 г., 15:04
-- Версия сервера: 5.7.39
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `VtkBurabayBot`
--

-- --------------------------------------------------------

--
-- Структура таблицы `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `imgUrl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `title`, `text`, `imgUrl`, `created_at`, `updated_at`) VALUES
(1, 'Высший Технический колледж, г.Щучинск: страницы истории', 'ГККП «Высший технический колледж, город Щучинск, Бурабайский район» при управлении образования Акмолинской области, первоначально Щучинский горно-металлургический техникум, - одно из старейших учебных заведений Казахстана.\r\n\r\n В первые десятилетия XX века молодая советская страна приступила к осуществлению великих экономических преобразований и остро нуждалась в квалифицированных кадрах для ведущих отраслей промышленности; именно тогда, в 1934 году, по приказу Народного комиссариата тяжёлой промышленности СССР на базе школы горпромобуча в г.Степняке был основан «Степняковский горно- металлургический техникум» и под таким наименованием техникум был внесен в титульные списки НКТП. Первоначальный прием студентов был всего на две специальности: Разработка рудных месторождений золота- (30 человек)\r\n\r\nВ 1935 году техникум был передислоцирован в г.Щучинск и позже стал называться Щучинским горно-металлургическим техникумом, став «кузницей кадров» для таких ведущих отраслей промышленности как горнодобывающая, металлургическая, разведка рудных месторождений золота. В 1938 году был сделан первый выпуск специалистов: 21 техник-горняк и 24 техника-металлурга. Первоначально ЩГМТ был составной частью треста «Каззолото», который осуществлял создание необходимого учебно-производственного и бытового хозяйства техникума и являлся основной производственной базой, на которой студенты проходили практику, получая первый производственный опыт.\r\n\r\nЗа свою 85- летнюю историю колледж подготовил 29166 специалиста, из этого числа 6472 человека получили образование по заочной форме обучения.\r\n\r\n В довоенный период наша республика стала одним из основных поставщиков тяжелых и цветных металлов, большой доли благородных металлов, для ускорения добычи и переработки которых техникум увеличивает выпуск горняков, металлургов, геологов, горных электромехаников.\r\n\r\nВ годы Великой Отечественной войны Казахстан превратился в арсенал фронта. На фронте не было техники, не имеющей казахстанского металла. Наши горняки, металлурги работали в самых горячих точках; так, на добычу вольфрама и молибдена в Акчатауский ГОК было направлено свыше ста выпускников 1941 года. Они добывали металл для изготовления брони. Коллективы Чимкентского и Лениногорского свинцовых заводов, где работали выпускники техникума, поставляли более 50% всех пуль и свинцовых снарядов для фронта. Когда стране необходимо было большое количество золота для закупки вооружения, техникум полностью перешел на выпуск специалистов по добыче и переработке золота, поэтому на комбинате «Каззолото» только на руководящих инженерно-технических должностях работало более 300 выпускников. Техникум по праву считался «кузницей кадров» для золотодобывающей промышленности!\r\n\r\nНачиная с 1946 года целыми группами и выпусками техники-горняки, геологи и металлурги направлялись на укрепление линейного технического персонала в Караганду и Кузбасс, на строительство и эксплуатацию Соколовско-Сарбайского горно- обогатительного, Каратауского горно-химического комбинатов и на рудники Министерства среднего машиностроения.\r\n\r\n Для укрепления и внедрения хозяйственного расчета во всех отраслях промышленности с 1948 года ЩГМТ начал подготовку плановиков, экономистов, бухгалтеров.\r\n\r\nВ героические годы целинной эпопеи стали строиться высокомеханизированные, автоматизированные элеваторы, хлебоприемные пункты, комбикормовые заводы. Вопрос заготовки, хранения и переработки зерна стал одним из основных, поэтому техникум с 1977 года начал подготовку механиков и электриков для Министерства заготовок республики.\r\n\r\n В 1979 году для улучшения сферы обслуживания вводится специальность техник-технолог по приготовлению пищи для Министерства торговли республики. Для совершенствования практического обучения и организации выпуска собственной продукции на базе технологической лаборатории создается учебное предприятие «Кондитерский цех».', 'images/articles/collegeHistory.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_08_02_133429_create_telegraph_bots_table', 1),
(6, '2024_08_02_133430_create_telegraph_chats_table', 1),
(7, '2024_08_05_103634_create_articles_table', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `telegraph_bots`
--

CREATE TABLE `telegraph_bots` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `telegraph_bots`
--

INSERT INTO `telegraph_bots` (`id`, `token`, `name`, `created_at`, `updated_at`) VALUES
(1, '6997689650:AAHmE_3K5OD7IKgofisVla7wg0Tm4l0J_tk', 'VtkBurabayBot', '2024-08-02 08:35:51', '2024-08-02 08:35:51');

-- --------------------------------------------------------

--
-- Структура таблицы `telegraph_chats`
--

CREATE TABLE `telegraph_chats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `chat_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telegraph_bot_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `telegraph_chats`
--

INSERT INTO `telegraph_chats` (`id`, `chat_id`, `name`, `telegraph_bot_id`, `created_at`, `updated_at`) VALUES
(1, '1078924098', '[private] ramilshudabaev', 1, '2024-08-02 08:43:03', '2024-08-02 08:43:03'),
(3, '5093754791', '[private] ', 1, '2024-08-05 03:12:08', '2024-08-05 03:12:08');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `telegraph_bots`
--
ALTER TABLE `telegraph_bots`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `telegraph_bots_token_unique` (`token`);

--
-- Индексы таблицы `telegraph_chats`
--
ALTER TABLE `telegraph_chats`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `telegraph_chats_chat_id_telegraph_bot_id_unique` (`chat_id`,`telegraph_bot_id`),
  ADD KEY `telegraph_chats_telegraph_bot_id_foreign` (`telegraph_bot_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `telegraph_bots`
--
ALTER TABLE `telegraph_bots`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `telegraph_chats`
--
ALTER TABLE `telegraph_chats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `telegraph_chats`
--
ALTER TABLE `telegraph_chats`
  ADD CONSTRAINT `telegraph_chats_telegraph_bot_id_foreign` FOREIGN KEY (`telegraph_bot_id`) REFERENCES `telegraph_bots` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
