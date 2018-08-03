-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-08-2018 a las 17:08:01
-- Versión del servidor: 10.1.34-MariaDB
-- Versión de PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `colegio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificacion`
--

CREATE TABLE `calificacion` (
  `IdCalificacion` int(5) NOT NULL,
  `IdEstudiante` int(5) NOT NULL,
  `IdMateria` int(5) NOT NULL,
  `PrimerBimestre` decimal(10,1) DEFAULT NULL,
  `SegundoBimestre` decimal(10,1) DEFAULT NULL,
  `Total` decimal(10,1) DEFAULT NULL,
  `Obs` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `calificacion`
--

INSERT INTO `calificacion` (`IdCalificacion`, `IdEstudiante`, `IdMateria`, `PrimerBimestre`, `SegundoBimestre`, `Total`, `Obs`) VALUES
(1, 1, 1, '7.0', '7.0', '14.0', 'E'),
(2, 1, 2, '4.0', '9.0', NULL, NULL),
(3, 1, 3, NULL, NULL, NULL, NULL),
(4, 1, 4, NULL, NULL, NULL, NULL),
(5, 1, 5, NULL, NULL, NULL, NULL),
(6, 1, 6, NULL, NULL, NULL, NULL),
(7, 2, 1, '2.0', '8.0', '10.0', 'S'),
(8, 2, 2, NULL, NULL, NULL, NULL),
(9, 2, 3, NULL, NULL, NULL, NULL),
(10, 2, 4, NULL, NULL, NULL, NULL),
(11, 2, 5, NULL, NULL, NULL, NULL),
(12, 2, 6, NULL, NULL, NULL, NULL),
(13, 3, 1, '5.0', '3.0', '8.0', 'F'),
(14, 3, 2, NULL, NULL, NULL, NULL),
(15, 3, 3, NULL, NULL, NULL, NULL),
(16, 3, 4, NULL, NULL, NULL, NULL),
(17, 3, 5, NULL, NULL, NULL, NULL),
(18, 3, 6, NULL, NULL, NULL, NULL),
(19, 4, 1, '5.0', '2.0', '7.0', 'F'),
(20, 4, 2, NULL, NULL, NULL, NULL),
(21, 4, 3, NULL, NULL, NULL, NULL),
(22, 4, 4, NULL, NULL, NULL, NULL),
(23, 4, 5, NULL, NULL, NULL, NULL),
(24, 4, 6, NULL, NULL, NULL, NULL),
(25, 5, 1, '0.0', '9.0', '9.0', 'S'),
(26, 5, 2, NULL, NULL, NULL, NULL),
(27, 5, 3, NULL, NULL, NULL, NULL),
(28, 5, 4, NULL, NULL, NULL, NULL),
(29, 5, 5, NULL, NULL, NULL, NULL),
(30, 5, 6, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE `estudiantes` (
  `IdEstudiante` varchar(10) NOT NULL,
  `NomEstudiante` varchar(25) NOT NULL,
  `ApeEstudiante` varchar(25) NOT NULL,
  `TelEstudiante` varchar(15) NOT NULL,
  `emailEstudiante` varchar(50) NOT NULL,
  `passEstudiante` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`IdEstudiante`, `NomEstudiante`, `ApeEstudiante`, `TelEstudiante`, `emailEstudiante`, `passEstudiante`) VALUES
('1', 'Anthony', 'Tacuri', '0985881899', 'anthony.1@anthony.com', 'ant121'),
('2', 'Elvis', 'Pérez', '0953661667', 'elvis.pe@hotmail.com', 'elvper'),
('3', 'Gabriela', 'Garcia', '0985881899', 'gabriela.1@stark.com', 'gabgar'),
('4', 'Pablo', 'Trujillo', '09536588667', 'pablo.campero@gmail.com', 'patru'),
('5', 'Steven', 'Pérez', '0985562935', 'steven.perez@outlook.com', 'Stepe');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `IdMateria` int(5) NOT NULL,
  `Materia` varchar(30) DEFAULT NULL,
  `Paralelo` varchar(6) DEFAULT NULL,
  `Horario` varchar(5) DEFAULT NULL,
  `Dias` varchar(9) DEFAULT NULL,
  `IdProfesor` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`IdMateria`, `Materia`, `Paralelo`, `Horario`, `Dias`, `IdProfesor`) VALUES
(1, 'Calculo Vectorial ', 'TEC-35', '7-9', 'L,M,J', 1),
(2, 'Programación Estructurada', 'TEC-13', '9-11', 'L,X,V', 6),
(3, 'Matematicas Discretas', 'TEC-21', '7-9', 'X,V', 5),
(4, 'CAD Basico', 'TEC-15', '11-13', 'L,X,V', 4),
(5, 'Informática Básica', 'TEC-28', '11-13', 'M,J', 3),
(6, 'Arquitectura de Computadores', 'TEC-22', '9-11', 'M,J', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor`
--

CREATE TABLE `profesor` (
  `IdProfesor` varchar(10) NOT NULL,
  `NomProfesor` varchar(15) NOT NULL,
  `ApeProfesor` varchar(15) NOT NULL,
  `TelfProfesor` varchar(15) NOT NULL,
  `emailProfesor` varchar(50) NOT NULL,
  `passProfesor` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `profesor`
--

INSERT INTO `profesor` (`IdProfesor`, `NomProfesor`, `ApeProfesor`, `TelfProfesor`, `emailProfesor`, `passProfesor`) VALUES
('1', 'Juan', 'Ochoa', '0652334957', 'Ochoa@hotmail.com', 'ju123'),
('2', 'Jorge', 'Castro', '02569715541', 'jorge@hotmail.com', 'jor456'),
('3', 'Maria', 'Teresita', '0265489546233', 'maria.teresita@trujillo.com', 'mar789'),
('4', 'Andres', 'Duran', '0953261596', 'andres.duran@epn.edu.ec', 'and123'),
('5', 'Pablo', 'Escobar', '097631421', 'pablo.escobar@hotmail.com', 'pablo123'),
('6', 'Isaac', 'Newton', '099653876', 'isaac.newton@gmail.com', 'accionreaccion');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `calificacion`
--
ALTER TABLE `calificacion`
  ADD PRIMARY KEY (`IdCalificacion`);

--
-- Indices de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`IdEstudiante`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`IdMateria`);

--
-- Indices de la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD PRIMARY KEY (`IdProfesor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
