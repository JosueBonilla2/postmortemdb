-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-01-2024 a las 20:36:01
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
-- Base de datos: `postmortem`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `cel` varchar(11) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`id`, `nombre`, `correo`, `cel`, `password`) VALUES
(1, 'Josue', 'a22110106@ceti.mx', '3319342389', '12345678');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bitacora_licor`
--

CREATE TABLE `bitacora_licor` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fecha` varchar(10) DEFAULT NULL,
  `sentencia` varchar(150) DEFAULT NULL,
  `contrasentencia` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `bitacora_licor`
--

INSERT INTO `bitacora_licor` (`id`, `fecha`, `sentencia`, `contrasentencia`) VALUES
(1, '2023-11-28', 'INSERT INTO licor (nombre, sabor, precio, cant_alcohol) VALUES (\'Licoro\', \'Mandarina\', \'500\', \'20.7%\');', 'DELETE FROM productos WHERE id = 16'),
(2, '2023-11-28', 'INSERT INTO licor (nombre, sabor, precio, cant_alcohol) VALUES (\'Licoro\', \'Mandarina\', \'500\', \'20.7%\');', 'DELETE FROM productos WHERE id = 17'),
(3, '2023-11-28', 'INSERT INTO licor (nombre, sabor, precio, cant_alcohol) VALUES (\'Licoro\', \'Mandarina\', \'500\', \'20.7%\');', 'DELETE FROM productos WHERE id = 18'),
(4, '2023-11-28', 'INSERT INTO licor (nombre, sabor, precio, cant_alcohol) VALUES (\'Licoro\', \'Mandarina\', \'500\', \'20.7%\');', 'DELETE FROM productos WHERE id = 19'),
(5, '2023-11-28', 'INSERT INTO licor (nombre, sabor, precio, cant_alcohol) VALUES (\'LM\', \'Limon\', \'1000\', \'18.00%\');', 'DELETE FROM productos WHERE id = 20'),
(6, '2023-11-28', 'INSERT INTO licor (nombre, sabor, precio, cant_alcohol) VALUES (\'L\', \'Birrio\', \'300\', \'18.00%\');', 'DELETE FROM productos WHERE id = 21'),
(7, '2023-11-29', 'INSERT INTO licor (nombre, sabor, precio, cant_alcohol) VALUES (\'Cuervo\', \'Tequila\', \'200\', \'%12.85\');', 'DELETE FROM productos WHERE id = 22'),
(8, '2023-11-29', 'INSERT INTO licor (nombre, sabor, precio, cant_alcohol) VALUES (\'LICORCITO 2\', \'A TI\', \'5\', \'%100.00\');', 'DELETE FROM productos WHERE id = 23'),
(9, '2023-11-29', 'DELETE FROM licor WHERE id = 22', 'INSERT INTO licor (nombre, precio, sabor, cant_alcohol) VALUES (\'Cuervo\', \'Tequila\', \'200\', \'%12.85\');'),
(10, '2023-11-29', 'DELETE FROM licor WHERE id = 21', 'INSERT INTO licor (nombre, precio, sabor, cant_alcohol) VALUES (\'L\', \'Birrio\', \'300\', \'18.00%\');'),
(11, '2023-11-29', 'INSERT INTO licor (nombre, sabor, precio, cant_alcohol) VALUES (\'CL\', \'Mango\', \'1000\', \'%12.85\');', 'DELETE FROM productos WHERE id = 24'),
(12, '2023-11-29', 'DELETE FROM licor WHERE id = 24', 'INSERT INTO licor (nombre, precio, sabor, cant_alcohol) VALUES (\'CL\', \'Mango\', \'1000\', \'%12.85\');'),
(13, '2023-12-01', 'DELETE FROM licor WHERE id = 15', 'INSERT INTO licor (nombre, precio, sabor, cant_alcohol) VALUES (\'lil\', \'limon\', \'334\', \'24324\');'),
(14, '2023-12-01', 'DELETE FROM licor WHERE id = 19', 'INSERT INTO licor (nombre, precio, sabor, cant_alcohol) VALUES (\'Licoro\', \'Mandarina\', \'500\', \'20.7%\');'),
(15, '2023-12-01', 'DELETE FROM licor WHERE id = 20', 'INSERT INTO licor (nombre, precio, sabor, cant_alcohol) VALUES (\'LM\', \'Limon\', \'1000\', \'18.00%\');'),
(16, '2023-12-01', 'UPDATE licor SET nombre = \'LICOR FUERTE\', precio = \'6000\', sabor = \'LIMON\', cant_alcohol = \'89.00%\' WHERE id = 7', 'UPDATE licor SET nombre = \'LICOR LIMON\', precio = \'6000\', sabor = \'NARANJA\', cant_alcohol = \'89.00%\' WHERE id = 7'),
(17, '2023-12-05', 'INSERT INTO licor (nombre, sabor, precio, cant_alcohol) VALUES (\'Lana\', \'Melocoton\', \'9000\', \'%12.85\');', 'DELETE FROM licor WHERE id = 25'),
(18, '2023-12-05', 'DELETE FROM licor WHERE id = 25', 'INSERT INTO licor (nombre, precio, sabor, cant_alcohol) VALUES (\'Lana\', \'Melocoton\', \'9000\', \'%12.85\');'),
(19, '2023-12-06', 'UPDATE licor SET nombre = \'1\', precio = \'6000\', sabor = \'LIMON\', cant_alcohol = \'89.00%\' WHERE id = 7', 'UPDATE licor SET nombre = \'LICOR FUERTE\', precio = \'6000\', sabor = \'LIMON\', cant_alcohol = \'89.00%\' WHERE id = 7'),
(20, '2023-12-06', 'DELETE FROM licor WHERE id = 7', 'INSERT INTO licor (nombre, precio, sabor, cant_alcohol) VALUES (\'1\', \'LIMON\', \'6000\', \'89.00%\');'),
(21, '2023-12-06', 'INSERT INTO licor (nombre, sabor, precio, cant_alcohol) VALUES (\'Noe\', \'Riquisimo\', \'9000\', \'18.00%\');', 'DELETE FROM licor WHERE id = 26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bitacora_usuario`
--

CREATE TABLE `bitacora_usuario` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fecha` varchar(10) DEFAULT NULL,
  `sentencia` varchar(150) DEFAULT NULL,
  `contrasentencia` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `bitacora_usuario`
--

INSERT INTO `bitacora_usuario` (`id`, `fecha`, `sentencia`, `contrasentencia`) VALUES
(1, '2023-11-29', 'INSERT INTO usuario (nombre, edad, estado, ciudad, direccion, correo, cel) VALUES (\'juan\', \'44\', \'jalisco\', \'Zapopan\', \'Moctezuma\', \'joshua12345@gmail', 'DELETE FROM usuario WHERE id = 22'),
(2, '2023-11-29', 'DELETE FROM usuario WHERE id = 16', 'INSERT INTO usuario (nombre, edad, estado, ciudad, direccion, correo, cel) VALUES (\'Yo\', \'221\', \'dvssds\', \'svdssvd\', \'svdv\', \'yo@gmail.com\', \'23423144'),
(3, '2023-11-29', 'INSERT INTO usuario (nombre, edad, estado, ciudad, direccion, correo, cel) VALUES (\'Carlos\', \'20\', \'Jalisco\', \'Guadalajara\', \'Moctezuma\', \'carlos@gmai', 'DELETE FROM usuario WHERE id = 23'),
(4, '2023-11-29', 'DELETE FROM usuario WHERE id = 23', 'INSERT INTO usuario (nombre, edad, estado, ciudad, direccion, correo, cel) VALUES (\'Carlos\', \'20\', \'Jalisco\', \'Guadalajara\', \'Moctezuma\', \'carlos@gmai'),
(5, '2023-11-29', 'INSERT INTO usuario (nombre, edad, estado, ciudad, direccion, correo, cel) VALUES (\'carlos\', \'22\', \'jalisco\', \'ciudad\', \'calle\', \'carlos@gmail.com\', \'', 'DELETE FROM usuario WHERE id = 24'),
(6, '2023-11-29', 'DELETE FROM usuario WHERE id = 24', 'INSERT INTO usuario (nombre, edad, estado, ciudad, direccion, correo, cel) VALUES (\'carlos\', \'22\', \'jalisco\', \'ciudad\', \'calle\', \'carlos@gmail.com\', \''),
(7, '2023-12-01', 'DELETE FROM usuario WHERE id = 15', 'INSERT INTO usuario (nombre, edad, estado, ciudad, direccion, correo, cel) VALUES (\'\', \'0\', \'\', \'\', \'\', \'\', \'\',);'),
(8, '2023-12-01', 'INSERT INTO usuario (nombre, edad, estado, ciudad, direccion, correo, cel) VALUES (\'Josue\', \'21\', \'Jalisco\', \'Tonala\', \'calle\', \'josuebonilla2720@gmai', 'DELETE FROM usuario WHERE id = 25'),
(9, '2023-12-06', 'INSERT INTO usuario (nombre, edad, estado, ciudad, direccion, correo, cel) VALUES (\'Kallam\', \'21\', \'Jalisco\', \'Zapopan\', \'calle\', \'jmanuelc369@gmail.c', 'DELETE FROM usuario WHERE id = 26'),
(10, '2023-12-06', 'DELETE FROM usuario WHERE id = 13', 'INSERT INTO usuario (nombre, edad, estado, ciudad, direccion, correo, cel) VALUES (\'andy\', \'43\', \'sdfd\', \'dsd\', \'sdfd\', \'andy@gmail.com\', \'42323\',);');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `licor`
--

CREATE TABLE `licor` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(70) DEFAULT NULL,
  `precio` varchar(10) DEFAULT NULL,
  `sabor` varchar(15) DEFAULT NULL,
  `cant_alcohol` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `licor`
--

INSERT INTO `licor` (`id`, `nombre`, `precio`, `sabor`, `cant_alcohol`) VALUES
(12, 'LICOR TONALA', '1000', 'MANZANA', '67.90%'),
(14, 'Licor Jose', '9000', 'Almendra', '18.00%'),
(26, 'Noe', '9000', 'Riquisimo', '18.00%');

--
-- Disparadores `licor`
--
DELIMITER $$
CREATE TRIGGER `bitacora_licor` AFTER INSERT ON `licor` FOR EACH ROW BEGIN
    INSERT INTO bitacora_licor (fecha, sentencia, contrasentencia)
    VALUES (NOW(), 
            CONCAT('INSERT INTO licor (nombre, sabor, precio, cant_alcohol) VALUES (''', NEW.nombre, ''', ''', NEW.sabor, ''', ''', NEW.precio, ''', ''', NEW.cant_alcohol, ''');'),
            CONCAT('DELETE FROM licor WHERE id = ', NEW.id)
    );
        IF ROW_COUNT() = 0 THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Error: El trigger no insertó en bitacora_producto';
        END IF;
    END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `bitacora_licor_delete` AFTER DELETE ON `licor` FOR EACH ROW BEGIN
    INSERT INTO bitacora_licor (fecha, sentencia, contrasentencia)
    VALUES (NOW(), 
            CONCAT('DELETE FROM licor WHERE id = ', OLD.id),
            CONCAT('INSERT INTO licor (nombre, precio, sabor, cant_alcohol) VALUES (''', OLD.nombre, ''', ''', OLD.sabor, ''', ''', OLD.precio, ''', ''', OLD.cant_alcohol, ''');')
    );
        IF ROW_COUNT() = 0 THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'TRIGGER NO INSERTADO';
        END IF;
    END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `bitacora_licor_update` AFTER UPDATE ON `licor` FOR EACH ROW BEGIN
                INSERT INTO bitacora_licor (fecha, sentencia, contrasentencia)
                VALUES (NOW(), 
                        CONCAT('UPDATE licor SET nombre = ''', NEW.nombre, ''', precio = ''', NEW.precio, ''', sabor = ''', NEW.sabor, ''', cant_alcohol = ''', NEW.cant_alcohol, ''' WHERE id = ', OLD.id),
                        CONCAT('UPDATE licor SET nombre = ''', OLD.nombre, ''', precio = ''', OLD.precio, ''', sabor = ''', OLD.sabor, ''', cant_alcohol = ''', OLD.cant_alcohol, ''' WHERE id = ', NEW.id)
                );
            
                IF ROW_COUNT() = 0 THEN
                    SIGNAL SQLSTATE '45000'
                    SET MESSAGE_TEXT = 'TRIGGER NO INSERTADO';
                END IF;
            END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(70) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `ciudad` varchar(50) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `cel` varchar(11) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombre`, `edad`, `estado`, `ciudad`, `direccion`, `correo`, `cel`, `password`) VALUES
(14, 'marata', 21, 'jalisco', 'Guadalajara', 'colon', 'marta@gmail.com', '33111222444', '123456789'),
(17, 'Joshua D', 21, 'Jalisco', 'Guadalajara', 'calle', 'a22110109@ceti.mx', '2113323312', '12345678'),
(18, 'Rosita', 80, 'jalisco', 'Zapopan', 'calle', 'rsantana@ceti.mx', '33344446666', '12345678'),
(19, 'Joshua', 21, 'Jalisco', 'Guadalajara', 'Ruisenor', 'a22110109@ceti.mx', '3311224455', '12345678'),
(20, 'Andrea', 22, 'Jalisco', 'Zapopan', 'Jardines', 'a22110126@ceti.mx', '3399778844', '12345678'),
(21, 'Christian', 21, 'Jalisco', 'Tonala', 'Camichines', 'a22110108@ceti.mx', '3399556677', '12345678'),
(22, 'juan', 44, 'jalisco', 'Zapopan', 'Moctezuma', 'joshua12345@gmail.com', '3399556677', '12345678'),
(25, 'Josue', 21, 'Jalisco', 'Tonala', 'calle', 'josuebonilla2720@gmail.com', '3328353067', '12345678'),
(26, 'Kallam', 21, 'Jalisco', 'Zapopan', 'calle', 'jmanuelc369@gmail.com', '33322211777', '12345678');

--
-- Disparadores `usuario`
--
DELIMITER $$
CREATE TRIGGER `bitacora_usuario` AFTER INSERT ON `usuario` FOR EACH ROW BEGIN
    INSERT INTO bitacora_usuario (fecha, sentencia, contrasentencia)
    VALUES (NOW(), 
            CONCAT('INSERT INTO usuario (nombre, edad, estado, ciudad, direccion, correo, cel) VALUES (''', NEW.nombre, ''', ''', NEW.edad, ''', ''', NEW.estado, ''', ''', NEW.ciudad, ''', ''', NEW.direccion, ''', ''', NEW.correo, ''', ''', NEW.cel, ''');'),
            CONCAT('DELETE FROM usuario WHERE id = ', NEW.id)
    );
        IF ROW_COUNT() = 0 THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'TRIGGER NO INSERTADO';
        END IF;
    END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `bitacora_usuario_delete` BEFORE DELETE ON `usuario` FOR EACH ROW BEGIN
    INSERT INTO bitacora_usuario (fecha, sentencia, contrasentencia)
    VALUES (NOW(), 
            CONCAT('DELETE FROM usuario WHERE id = ', OLD.id),
            CONCAT('INSERT INTO usuario (nombre, edad, estado, ciudad, direccion, correo, cel) VALUES (''', OLD.nombre, ''', ''', OLD.edad, ''', ''', OLD.estado, ''', ''', OLD.ciudad, ''', ''', OLD.direccion, ''', ''', OLD.correo, ''', ''', OLD.cel, ''',);')
    );
        IF ROW_COUNT() = 0 THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'TRIGGER NO INSERTADO';
        END IF;
    END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre_p` varchar(50) DEFAULT NULL,
  `sabor` varchar(20) DEFAULT NULL,
  `cant_alcohol` varchar(10) DEFAULT NULL,
  `precio` int(11) DEFAULT NULL,
  `usuario` varchar(50) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `nombre_p`, `sabor`, `cant_alcohol`, `precio`, `usuario`, `cantidad`) VALUES
(15, 'Licor Jose', 'Almendra', '', 9000, 'andy@gmail.com', 1),
(16, 'Licor Jose', 'Almendra', '', 9000, 'andy@gmail.com', 1),
(32, 'Licor Jose', 'Almendra', '18.00%', 9000, 'josuebonilla2720@gmail.com', 1),
(33, 'LICOR TONALA', 'MANZANA', '67.90%', 1000, 'jmanuelc369@gmail.com', 1),
(36, 'LICOR FUERTE', 'LIMON', '89.00%', 6000, 'rsantana@ceti.mx', 1),
(37, 'LICOR TONALA', 'MANZANA', '67.90%', 1000, 'rsantana@ceti.mx', 1),
(38, 'Licor Jose', 'Almendra', '18.00%', 9000, 'rsantana@ceti.mx', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `bitacora_licor`
--
ALTER TABLE `bitacora_licor`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `bitacora_usuario`
--
ALTER TABLE `bitacora_usuario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `licor`
--
ALTER TABLE `licor`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administrador`
--
ALTER TABLE `administrador`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `bitacora_licor`
--
ALTER TABLE `bitacora_licor`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `bitacora_usuario`
--
ALTER TABLE `bitacora_usuario`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `licor`
--
ALTER TABLE `licor`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
