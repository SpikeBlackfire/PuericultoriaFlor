-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 20-10-2022 a las 21:56:05
-- Versión del servidor: 5.7.36
-- Versión de PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pueri-proyectofinal-manuelfernandez`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedades`
--

DROP TABLE IF EXISTS `novedades`;
CREATE TABLE IF NOT EXISTS `novedades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) NOT NULL,
  `subtitulo` text NOT NULL,
  `cuerpo` text NOT NULL,
  `img_id` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `novedades`
--

INSERT INTO `novedades` (`id`, `titulo`, `subtitulo`, `cuerpo`, `img_id`) VALUES
(11, 'Puericultoras y organizaciones harán actividades para fomentar la lactancia en territorios', ' “Lactancias en Territorio” apunta a acompañar a las familias de barrios vulnerables “para que amamantar sea cada vez más accesible”.', 'La Asociación Civil Argentina de Puericultura (Acadp) lanzó esta semana, en la localidad bonaerense de Malvinas Argentinas, la iniciativa “Lactancias en Territorio”, que busca formar y acompañar a las familias de barrios vulnerables “para que la lactancia sea cada vez más accesible”, articulando con organizaciones sociales, las cuales ofrecen sus espacios para brindar las capacitaciones, se informó.\r\n\r\nEn el marco de la Semana Mundial de la Lactancia Materna, que comienza a principios de agosto y se extiende todo el mes, la Acadp realizará diversas actividades con el objetivo de promover la lactancia humana y el vínculo temprano; garantizar el acceso a servicios de puericultura; la formación de profesionales y agentes de salud, y la información a familias “para que la lactancia sea cada vez más accesible”, enfatizó Virginia Laino, vocera de la asociación en diálogo con Télam.\r\n\r\n\"Articulamos con una organización de base como el Frente Patria Grande de Malvinas Argentinas para dar formación en sus espacios (Casas Puente), a través de Promotoras Comunitarias de Lactancia, las cuales podrán divulgar y asesorar a familias y población vulnerable, que no tenían acceso a puericultura, acerca de los beneficios de la lactancia y la soberanía alimentaria que representa\", explicó.\r\n\r\nLa formación consta de 12 clases sobre lactancia y crianza, y durante agosto se realizará en otras localidades de la provincia de Buenos Aires como 25 de Mayo, Glew, Avellaneda, Baradero, Berazategui, La Plata, Cañuelas, Mar del Plata, Necochea, Olavarría, José León Suarez y 3 de Febrero.', 'tlgmvij1nojdb119nc9e'),
(12, 'Apoyar la lactancia materna contribuye a un planeta más saludable, el lema de la OMS', 'La campaña de este año hará foco en el impacto de la alimentación infantil en el medio ambiente y el cambio climático, destacando que es imperativo proteger, promover y apoyar la lactancia materna.', 'La falta de apoyo para sostener el amamantamiento sigue siendo un problema para la mayor parte de las mujeres y por eso, este año, la Organización Mundial de la Salud (OMS) lanzó una campaña para crear conciencia y cuyo lema es \"Apoyar la lactancia materna contribuye a un planeta más saludable\".\r\n\r\nLa Semana Mundial de la Lactancia Materna fue establecida oficialmente por la OMS, UNICEF y WABA (World Alliance for Breastfeeding Action, en inglés) en 1992. El lema de este año hará foco en el impacto de la alimentación infantil en el medio ambiente y el cambio climático, destacando que es imperativo proteger, promover y apoyar la lactancia materna para la salud del planeta y su gente.\r\n\r\n', 'llos2qfrzh62smayznvv');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`) VALUES
(1, 'Flor', '81dc9bdb52d04dc20036dbd8313ed055'),
(2, 'manu', '81dc9bdb52d04dc20036dbd8313ed055');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
