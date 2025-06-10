-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-06-2025 a las 19:17:31
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `musanfilms`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `capitulos`
--

CREATE TABLE `capitulos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `temporada_id` bigint(20) UNSIGNED NOT NULL,
  `numero` int(10) UNSIGNED NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `duracion` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `capitulos`
--

INSERT INTO `capitulos` (`id`, `temporada_id`, `numero`, `titulo`, `url`, `duracion`, `created_at`, `updated_at`) VALUES
(10, 7, 1, 'hola', 'https://www.youtube.com/embed/aDcFhYtiIEM?si=SKpC1bg-fLGow3rl', 23, '2025-06-08 20:36:29', '2025-06-08 20:36:29'),
(11, 7, 2, 'asf', 'https://www.youtube.com/embed/CQqoIq6pnYA?si=LplGDP1Le8Gz6kyv', 45, '2025-06-08 20:36:29', '2025-06-08 20:36:29'),
(14, 10, 1, 'Intro', 'https://www.youtube.com/embed/hfUadt0BDu4?si=s451GxAhzpkm718p', 23, '2025-06-10 14:51:13', '2025-06-10 14:51:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Película', '2025-05-26 18:15:18', '2025-05-26 18:15:18'),
(2, 'Serie', '2025-05-26 18:15:18', '2025-05-26 18:15:18'),
(3, 'Documental', '2025-05-26 18:15:18', '2025-05-26 18:15:18'),
(4, 'Animación', '2025-05-26 18:15:18', '2025-05-26 18:15:18'),
(5, 'Cortometraje', '2025-05-26 18:15:18', '2025-05-26 18:15:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos`
--

CREATE TABLE `generos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `generos`
--

INSERT INTO `generos` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Acción', '2025-05-26 18:15:18', '2025-05-26 18:15:18'),
(2, 'Comedia', '2025-05-26 18:15:18', '2025-05-26 18:15:18'),
(3, 'Drama', '2025-05-26 18:15:18', '2025-05-26 18:15:18'),
(4, 'Terror', '2025-05-26 18:15:18', '2025-05-26 18:15:18'),
(5, 'Ciencia ficción', '2025-05-26 18:15:18', '2025-05-26 18:15:18'),
(6, 'Romance', '2025-05-26 18:15:18', '2025-05-26 18:15:18'),
(7, 'Aventura', '2025-05-26 18:15:18', '2025-05-26 18:15:18'),
(8, 'Suspenso', '2025-05-26 18:15:18', '2025-05-26 18:15:18'),
(9, 'Fantasía', '2025-05-26 18:15:18', '2025-05-26 18:15:18'),
(10, 'Animación', '2025-05-26 18:15:18', '2025-05-26 18:15:18'),
(11, 'Se va pronto', '2025-05-26 18:15:18', '2025-05-26 18:15:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero_pelicula`
--

CREATE TABLE `genero_pelicula` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pelicula_id` bigint(20) UNSIGNED NOT NULL,
  `genero_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `genero_pelicula`
--

INSERT INTO `genero_pelicula` (`id`, `pelicula_id`, `genero_id`, `created_at`, `updated_at`) VALUES
(9, 2, 1, NULL, NULL),
(11, 2, 6, NULL, NULL),
(12, 3, 1, NULL, NULL),
(13, 3, 4, NULL, NULL),
(15, 4, 4, NULL, NULL),
(16, 5, 4, NULL, NULL),
(17, 6, 4, NULL, NULL),
(18, 7, 4, NULL, NULL),
(19, 9, 1, NULL, NULL),
(20, 9, 2, NULL, NULL),
(21, 2, 4, NULL, NULL),
(26, 2, 8, NULL, NULL),
(31, 12, 1, NULL, NULL),
(32, 12, 6, NULL, NULL),
(33, 12, 8, NULL, NULL),
(34, 12, 9, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero_serie`
--

CREATE TABLE `genero_serie` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `serie_id` bigint(20) UNSIGNED NOT NULL,
  `genero_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `genero_serie`
--

INSERT INTO `genero_serie` (`id`, `serie_id`, `genero_id`, `created_at`, `updated_at`) VALUES
(3, 3, 1, NULL, NULL),
(10, 6, 1, NULL, NULL),
(11, 6, 7, NULL, NULL),
(12, 6, 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(5, '0001_01_01_000000_create_users_table', 1),
(6, '0001_01_01_000001_create_cache_table', 1),
(7, '0001_01_01_000002_create_jobs_table', 1),
(8, '2025_04_08_101737_create_usuarios_table', 1),
(9, '2025_05_20_081505_create_categorias_table', 2),
(10, '2025_05_20_081510_create_generos_table', 2),
(11, '2025_05_20_082315_create_peliculas_table', 2),
(12, '2025_05_20_112947_create_series_table', 2),
(13, '2025_05_20_200000_create_categorias_table', 3),
(14, '2025_05_20_200001_create_generos_table', 3),
(15, '2025_05_20_200002_create_peliculas_table', 3),
(16, '2025_05_20_200003_create_series_table', 3),
(17, '2025_05_20_200004_create_genero_pelicula_table', 3),
(18, '2025_05_20_200005_create_genero_serie_table', 3),
(19, '2025_05_24_175950_a', 4),
(20, '2025_05_20_200010_create_categorias_table', 5),
(21, '2025_05_20_200011_create_generos_table', 5),
(22, '2025_05_20_200012_create_peliculas_table', 5),
(23, '2025_05_20_200013_create_series_table', 5),
(24, '2025_05_20_200014_create_genero_pelicula_table', 5),
(25, '2025_05_20_200015_create_genero_serie_table', 5),
(26, '2025_05_20_200016_create_series_table', 6),
(27, '2025_05_20_200017_create_genero_serie_table', 6),
(28, '2025_05_29_200018_create_temporadas_table', 6),
(29, '2025_06_03_200019_create_capitulos_table', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peliculas`
--

CREATE TABLE `peliculas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `duracion` int(11) NOT NULL,
  `categoria_id` bigint(20) UNSIGNED NOT NULL,
  `portada` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `anio_estreno` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `peliculas`
--

INSERT INTO `peliculas` (`id`, `titulo`, `descripcion`, `duracion`, `categoria_id`, `portada`, `url`, `anio_estreno`, `created_at`, `updated_at`) VALUES
(2, 'Shrek', 'ssfsfs', 90, 1, 'portadas/72KpgGvxYHKdir291BeRPIjZhkqg1Am4L0kTV0m0.jpg', 'https://www.youtube.com/embed/HLQ1cK9Edhc?si=B34lECdemUHPUV7g', 2001, '2025-05-26 17:59:42', '2025-05-29 14:40:37'),
(3, 'dgdfg24', 'weft', 234, 1, 'portadas/u1XKf3DRKjspwkOFQ4nbU1wBhWVT9slgZanwrZpy.jpg', 'https://www.youtube.com/watch?v=HLQ1cK9Edhc', 23234, '2025-05-27 16:45:06', '2025-05-27 16:45:06'),
(4, 'El Origen', 'Una película de ciencia ficción sobre sueños dentro de sueños.', 148, 1, '', 'https://example.com/origen', 2010, NULL, NULL),
(5, 'La Maldición', 'Terror clásico para los amantes del miedo.', 95, 2, '', NULL, 2018, NULL, NULL),
(6, 'Acción Total', 'Película de acción y adrenalina sin fin.', 120, 3, '', 'https://example.com/accion-total', 2015, NULL, NULL),
(7, 'Comedia Feliz', 'Risas aseguradas con esta comedia ligera.', 105, 4, '', NULL, 2019, NULL, NULL),
(9, 'vengadores', 'faf90', 90, 1, 'portadas/4XVUDGHmGqdcmtwzw4pJBLzph5Gtk0fjAJ6ZVTF0.jpg', 'https://example.com/origen', 2003, '2025-05-29 15:03:42', '2025-05-29 15:03:42'),
(12, 'Megamind', 'Megamind es un supervillano. Durante años, ha intentado conquistar Metro City, pero un héroe llamado Metro Man se lo impedía. Tras muchos intentos, Megamind consigue matarlo. De repente, su vida carece de sentido. ¿Qué puede hacer un supervillano sin un superhéroe con el que enfrentarse? Crear a Titán, un nuevo héroe. Sin embargo Titán empieza a pensar que es mucho más divertido destruir el mundo en vez de salvarlo. ¿Podrá derrotar Megamind a su diabólica criatura?', 90, 1, 'portadas/d2L3mjBI0f26rqs5xJVgg2RFPFAINN2Qk50k8oQE.jpg', 'https://www.youtube.com/embed/e-4lcSdxljo?si=wJH1D6Pj79njNSk7', 2010, '2025-06-10 14:49:56', '2025-06-10 14:49:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `series`
--

CREATE TABLE `series` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `categoria_id` bigint(20) UNSIGNED NOT NULL,
  `portada` varchar(255) NOT NULL,
  `fecha_lanzamiento` year(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `series`
--

INSERT INTO `series` (`id`, `titulo`, `descripcion`, `categoria_id`, `portada`, `fecha_lanzamiento`, `created_at`, `updated_at`) VALUES
(3, 'simpons', 'asda', 2, 'portadas/SbyoEzfdw4FN1K0V79y4xaXdSKKKJwnDTr4ZiWSV.jpg', '2023', '2025-06-03 14:58:49', '2025-06-03 14:58:49'),
(6, 'inazuma eleven', 'La serie animada Inazuma Eleven, inspirada en la serie de videojuegos, sigue a Mark Evans, un talentoso portero, y su equipo del Instituto Raimon en su intento de ganar el Campeonato Nacional de Fútbol. Para lograr su sueño, deben superar desafíos y un misterioso plan malvado que amenaza su éxito.', 2, 'portadas/jGVhesWnlqfB1pTKp6e7rInKGPhbW6hbgnXmDNZy.jpg', '2008', '2025-06-10 14:51:13', '2025-06-10 14:51:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `temporadas`
--

CREATE TABLE `temporadas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `serie_id` bigint(20) UNSIGNED NOT NULL,
  `numero` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `temporadas`
--

INSERT INTO `temporadas` (`id`, `serie_id`, `numero`, `created_at`, `updated_at`) VALUES
(7, 3, 1, '2025-06-08 20:36:29', '2025-06-08 20:36:29'),
(10, 6, 1, '2025-06-10 14:51:13', '2025-06-10 14:51:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'user',
  `suscripcion` enum('semanal','anual') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `email`, `password`, `telefono`, `role`, `suscripcion`, `created_at`, `updated_at`) VALUES
(4, 'admin', 'admin@admin.com', '$2y$12$JSXwfq7L.aY9Wdu8/1cQSOIasMRU7x.FtBYbWhgD93InX603a94Um', '123456789', 'admin', '', NULL, '2025-05-15 15:16:18');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `capitulos`
--
ALTER TABLE `capitulos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `capitulos_temporada_id_foreign` (`temporada_id`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categorias_nombre_unique` (`nombre`);

--
-- Indices de la tabla `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `generos_nombre_unique` (`nombre`);

--
-- Indices de la tabla `genero_pelicula`
--
ALTER TABLE `genero_pelicula`
  ADD PRIMARY KEY (`id`),
  ADD KEY `genero_pelicula_pelicula_id_foreign` (`pelicula_id`),
  ADD KEY `genero_pelicula_genero_id_foreign` (`genero_id`);

--
-- Indices de la tabla `genero_serie`
--
ALTER TABLE `genero_serie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `genero_serie_serie_id_foreign` (`serie_id`),
  ADD KEY `genero_serie_genero_id_foreign` (`genero_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `peliculas_categoria_id_foreign` (`categoria_id`);

--
-- Indices de la tabla `series`
--
ALTER TABLE `series`
  ADD PRIMARY KEY (`id`),
  ADD KEY `series_categoria_id_foreign` (`categoria_id`);

--
-- Indices de la tabla `temporadas`
--
ALTER TABLE `temporadas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `temporadas_serie_id_foreign` (`serie_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuarios_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `capitulos`
--
ALTER TABLE `capitulos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `generos`
--
ALTER TABLE `generos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `genero_pelicula`
--
ALTER TABLE `genero_pelicula`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `genero_serie`
--
ALTER TABLE `genero_serie`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `series`
--
ALTER TABLE `series`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `temporadas`
--
ALTER TABLE `temporadas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `capitulos`
--
ALTER TABLE `capitulos`
  ADD CONSTRAINT `capitulos_temporada_id_foreign` FOREIGN KEY (`temporada_id`) REFERENCES `temporadas` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `genero_pelicula`
--
ALTER TABLE `genero_pelicula`
  ADD CONSTRAINT `genero_pelicula_genero_id_foreign` FOREIGN KEY (`genero_id`) REFERENCES `generos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `genero_pelicula_pelicula_id_foreign` FOREIGN KEY (`pelicula_id`) REFERENCES `peliculas` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `genero_serie`
--
ALTER TABLE `genero_serie`
  ADD CONSTRAINT `genero_serie_genero_id_foreign` FOREIGN KEY (`genero_id`) REFERENCES `generos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `genero_serie_serie_id_foreign` FOREIGN KEY (`serie_id`) REFERENCES `series` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD CONSTRAINT `peliculas_categoria_id_foreign` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `series`
--
ALTER TABLE `series`
  ADD CONSTRAINT `series_categoria_id_foreign` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `temporadas`
--
ALTER TABLE `temporadas`
  ADD CONSTRAINT `temporadas_serie_id_foreign` FOREIGN KEY (`serie_id`) REFERENCES `series` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
