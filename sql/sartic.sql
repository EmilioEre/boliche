/*
Navicat MySQL Data Transfer

Source Server         : mario
Source Server Version : 50539
Source Host           : localhost:3306
Source Database       : sartic

Target Server Type    : MYSQL
Target Server Version : 50539
File Encoding         : 65001

Date: 2014-09-10 12:58:49
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `categoria`
-- ----------------------------
DROP TABLE IF EXISTS `categoria`;
CREATE TABLE `categoria` (
  `idcategoria` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of categoria
-- ----------------------------
INSERT INTO `categoria` VALUES ('1', 'Electrica');
INSERT INTO `categoria` VALUES ('2', 'Electronica');
INSERT INTO `categoria` VALUES ('3', 'Mecanica');

-- ----------------------------
-- Table structure for `destino`
-- ----------------------------
DROP TABLE IF EXISTS `destino`;
CREATE TABLE `destino` (
  `iddestino` int(11) NOT NULL AUTO_INCREMENT,
  `idusuario` int(11) DEFAULT NULL,
  `idescuela` int(11) DEFAULT NULL,
  `fecha_ingreso` date DEFAULT NULL,
  `turno` varchar(45) DEFAULT NULL,
  `puesto` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`iddestino`),
  KEY `fk_destino_usuario1_idx` (`idusuario`),
  KEY `fk_destino_escuela1_idx` (`idescuela`),
  CONSTRAINT `fk_destino_escuela1` FOREIGN KEY (`idescuela`) REFERENCES `escuela` (`idescuela`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_destino_usuario1` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of destino
-- ----------------------------
INSERT INTO `destino` VALUES ('8', '7', '6', '2013-03-01', 'Mañana', 'Tecnico');
INSERT INTO `destino` VALUES ('9', '2', '3', '2014-09-10', 'Mañana', 'tecnico');

-- ----------------------------
-- Table structure for `escuela`
-- ----------------------------
DROP TABLE IF EXISTS `escuela`;
CREATE TABLE `escuela` (
  `idescuela` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(80) DEFAULT NULL,
  `director` varchar(45) DEFAULT NULL,
  `vicedirector` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `correo` varchar(65) DEFAULT NULL,
  PRIMARY KEY (`idescuela`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of escuela
-- ----------------------------
INSERT INTO `escuela` VALUES ('3', 'Esc. N°409', '', '', '(380)4431163', '');
INSERT INTO `escuela` VALUES ('4', 'Esc. N°408 \"Faldeo del Velazco Sur\"', '', '', '', '');
INSERT INTO `escuela` VALUES ('5', 'Esc. N°398 “Monseños Angelelli”', '', '', '', '');
INSERT INTO `escuela` VALUES ('6', 'Esc. N°397 “Merceditas de San Martin”', 'NEIRA Norma Cristina', '', '(380)4439212', 'merceditasdesanmartin@gmail.com');
INSERT INTO `escuela` VALUES ('7', 'Esc. N°408 \"Faldeo del Velazco Sur\"', '', '', '', '');
INSERT INTO `escuela` VALUES ('9', 'ESC.N°250 “BARTOLOME MITRE”', '', '', '', '');
INSERT INTO `escuela` VALUES ('10', 'ESCUELA DE GESTIÓN COMUNITARIA”', '', '', '', '');
INSERT INTO `escuela` VALUES ('11', 'ESC.N°190 “GRAL.SAN MARTIN”', '', '', '', '');
INSERT INTO `escuela` VALUES ('12', 'ESC.N°287 “MAESTRO ARMANDO HERRERA ROBLEDO”', '', '', '', '');
INSERT INTO `escuela` VALUES ('13', 'ESC.N°039 “TIMOTEO GORDILLO”', '', '', '', '');
INSERT INTO `escuela` VALUES ('14', 'ESC.N°175 “GRAL.BELGRANO”', '', '', '', '');
INSERT INTO `escuela` VALUES ('15', 'ESC.N°177 “DR.MARIANO MORENO”', '', '', '', '');
INSERT INTO `escuela` VALUES ('16', 'ESC.N°251 “CEFERINO NAMUNCURA”', '', '', '', '');
INSERT INTO `escuela` VALUES ('17', 'INSTITUTO PRIVADO “MANUEL BELGRANO”', '', '', '', '');
INSERT INTO `escuela` VALUES ('18', 'ESC.N°365 “PROVINCIA DE MISIONES”', '', '', '', '');
INSERT INTO `escuela` VALUES ('19', 'ESC.N°369 “MAESTRO HUMBERTO PEREYRA”', '', '', '', '');
INSERT INTO `escuela` VALUES ('20', 'ESC.N°127 “CAPITAL FEDERAL”', '', '', '', '');
INSERT INTO `escuela` VALUES ('21', 'ESC.N°280 “TAMBOR DE TACUARI”', '', '', '', '');
INSERT INTO `escuela` VALUES ('22', 'ESC.N°361 “EXPEDICION AUXILIAR ZELADA DAVILA”', '', '', '', '');
INSERT INTO `escuela` VALUES ('23', 'ESC.N°252 “BERNARDINO RIVADAVIA”', '', '', '', '');
INSERT INTO `escuela` VALUES ('24', 'ESC.N°249 “GENERAL MANUEL BELGRANO”', '', '', '', '');
INSERT INTO `escuela` VALUES ('25', 'ESC.N°191 “SARMIENTO”', '', '', '', '');
INSERT INTO `escuela` VALUES ('26', 'ESC.N°192 “DR.NICOLAS AVELLANEDA”', '', '', '', '');
INSERT INTO `escuela` VALUES ('27', 'Esc. N°248 \"Francisca Geronima Barros\"', 'NUÑEZ Azucena', 'MILLICAY Lisandro', null, 'fgeronimabarros@hotmail.com');

-- ----------------------------
-- Table structure for `insumo`
-- ----------------------------
DROP TABLE IF EXISTS `insumo`;
CREATE TABLE `insumo` (
  `idinsumo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `idcategoria` int(11) DEFAULT NULL,
  `idproveedor` int(11) DEFAULT NULL,
  `idrecurso` int(11) DEFAULT NULL,
  PRIMARY KEY (`idinsumo`),
  KEY `fk_insumo_categoria1_idx` (`idcategoria`),
  KEY `fk_insumo_proveedor1_idx` (`idproveedor`),
  KEY `fk_insumo_recurso1_idx` (`idrecurso`),
  CONSTRAINT `fk_insumo_categoria1` FOREIGN KEY (`idcategoria`) REFERENCES `categoria` (`idcategoria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_insumo_proveedor1` FOREIGN KEY (`idproveedor`) REFERENCES `proveedor` (`idproveedor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_insumo_recurso1` FOREIGN KEY (`idrecurso`) REFERENCES `recurso` (`idrecurso`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of insumo
-- ----------------------------
INSERT INTO `insumo` VALUES ('1', 'Motor', '1', '1', '1');
INSERT INTO `insumo` VALUES ('2', 'Duinobot', '1', '1', '1');
INSERT INTO `insumo` VALUES ('3', 'Pila', '1', '1', '1');
INSERT INTO `insumo` VALUES ('4', 'Portapila', '1', '1', '1');
INSERT INTO `insumo` VALUES ('5', 'Control Remoto', '1', '1', '1');
INSERT INTO `insumo` VALUES ('6', 'Cable Motor', '1', '1', '1');
INSERT INTO `insumo` VALUES ('7', 'Cable Sensor', '1', '1', '1');
INSERT INTO `insumo` VALUES ('8', 'Cable USB', '1', '1', '1');
INSERT INTO `insumo` VALUES ('9', 'Optoacoplador', '2', '1', '1');
INSERT INTO `insumo` VALUES ('10', 'S. de Sonido', '2', '1', '1');
INSERT INTO `insumo` VALUES ('11', 'Pulsador', '2', '1', '1');
INSERT INTO `insumo` VALUES ('12', 'Led', '2', '1', '1');
INSERT INTO `insumo` VALUES ('13', 'Fotorresistor', '2', '1', '1');
INSERT INTO `insumo` VALUES ('14', 'Destornillador', '3', '1', '1');
INSERT INTO `insumo` VALUES ('15', 'Llave Allen', '3', '1', '1');
INSERT INTO `insumo` VALUES ('16', 'Ejes', '3', '1', '1');
INSERT INTO `insumo` VALUES ('17', 'Caja de Tornillos', '3', '1', '1');
INSERT INTO `insumo` VALUES ('18', 'Chasis', '3', '1', '1');
INSERT INTO `insumo` VALUES ('19', 'Rueda', '3', '1', '1');
INSERT INTO `insumo` VALUES ('20', 'sensor ultrasonico', '1', '2', '1');
INSERT INTO `insumo` VALUES ('21', 'led rgb', '2', '1', '2');

-- ----------------------------
-- Table structure for `item`
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item` (
  `iditem` int(11) NOT NULL AUTO_INCREMENT,
  `cantidad` int(11) DEFAULT NULL,
  `faltantes` int(11) DEFAULT NULL,
  `rotos` int(11) DEFAULT NULL,
  `buenos` int(11) DEFAULT NULL,
  `idinsumo` int(11) DEFAULT NULL,
  `iddestino` int(11) DEFAULT NULL,
  `idusuario` int(11) DEFAULT NULL,
  `transaccion` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`iditem`),
  KEY `fk_item_insumo1_idx` (`idinsumo`),
  KEY `fk_item_destino1_idx` (`iddestino`),
  KEY `fk_item_usuario1_idx` (`idusuario`),
  CONSTRAINT `fk_item_destino1` FOREIGN KEY (`iddestino`) REFERENCES `destino` (`iddestino`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_item_insumo1` FOREIGN KEY (`idinsumo`) REFERENCES `insumo` (`idinsumo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_item_usuario1` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=184 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of item
-- ----------------------------
INSERT INTO `item` VALUES ('146', '10', '0', '0', '10', '1', '8', null, '85271d1be8f8c697d1151a341f2fa5a9');
INSERT INTO `item` VALUES ('147', '10', '0', '0', '10', '2', '8', null, '85271d1be8f8c697d1151a341f2fa5a9');
INSERT INTO `item` VALUES ('148', '10', '0', '0', '10', '3', '8', null, '85271d1be8f8c697d1151a341f2fa5a9');
INSERT INTO `item` VALUES ('149', '10', '0', '0', '10', '4', '8', null, '85271d1be8f8c697d1151a341f2fa5a9');
INSERT INTO `item` VALUES ('150', '10', '0', '0', '10', '5', '8', null, '85271d1be8f8c697d1151a341f2fa5a9');
INSERT INTO `item` VALUES ('151', '10', '0', '0', '10', '6', '8', null, '85271d1be8f8c697d1151a341f2fa5a9');
INSERT INTO `item` VALUES ('152', '10', '0', '0', '10', '7', '8', null, '85271d1be8f8c697d1151a341f2fa5a9');
INSERT INTO `item` VALUES ('153', '10', '0', '0', '10', '8', '8', null, '85271d1be8f8c697d1151a341f2fa5a9');
INSERT INTO `item` VALUES ('154', '10', '0', '0', '10', '9', '8', null, '85271d1be8f8c697d1151a341f2fa5a9');
INSERT INTO `item` VALUES ('155', '10', '0', '0', '10', '10', '8', null, '85271d1be8f8c697d1151a341f2fa5a9');
INSERT INTO `item` VALUES ('156', '10', '0', '0', '10', '11', '8', null, '85271d1be8f8c697d1151a341f2fa5a9');
INSERT INTO `item` VALUES ('157', '10', '0', '0', '10', '12', '8', null, '85271d1be8f8c697d1151a341f2fa5a9');
INSERT INTO `item` VALUES ('158', '10', '5', '0', '10', '13', '8', null, '85271d1be8f8c697d1151a341f2fa5a9');
INSERT INTO `item` VALUES ('159', '10', '0', '0', '10', '14', '8', null, '85271d1be8f8c697d1151a341f2fa5a9');
INSERT INTO `item` VALUES ('160', '10', '0', '0', '10', '15', '8', null, '85271d1be8f8c697d1151a341f2fa5a9');
INSERT INTO `item` VALUES ('161', '10', '0', '0', '10', '16', '8', null, '85271d1be8f8c697d1151a341f2fa5a9');
INSERT INTO `item` VALUES ('162', '10', '0', '0', '10', '17', '8', null, '85271d1be8f8c697d1151a341f2fa5a9');
INSERT INTO `item` VALUES ('163', '10', '0', '0', '10', '18', '8', null, '85271d1be8f8c697d1151a341f2fa5a9');
INSERT INTO `item` VALUES ('164', '10', '0', '0', '10', '19', '8', null, '85271d1be8f8c697d1151a341f2fa5a9');
INSERT INTO `item` VALUES ('165', '20', '2', '0', '20', '1', '8', null, '85271d1be8f8c697d1151a341f2fa5a9');
INSERT INTO `item` VALUES ('166', '20', '0', '0', '20', '2', '8', null, '85271d1be8f8c697d1151a341f2fa5a9');
INSERT INTO `item` VALUES ('167', '20', '0', '0', '20', '3', '8', null, '85271d1be8f8c697d1151a341f2fa5a9');
INSERT INTO `item` VALUES ('168', '20', '0', '0', '20', '4', '8', null, '85271d1be8f8c697d1151a341f2fa5a9');
INSERT INTO `item` VALUES ('169', '20', '0', '0', '20', '5', '8', null, '85271d1be8f8c697d1151a341f2fa5a9');
INSERT INTO `item` VALUES ('170', '20', '0', '0', '20', '6', '8', null, '85271d1be8f8c697d1151a341f2fa5a9');
INSERT INTO `item` VALUES ('171', '20', '0', '0', '20', '7', '8', null, '85271d1be8f8c697d1151a341f2fa5a9');
INSERT INTO `item` VALUES ('172', '20', '5', '0', '20', '8', '8', null, '85271d1be8f8c697d1151a341f2fa5a9');
INSERT INTO `item` VALUES ('173', '20', '0', '0', '20', '9', '8', null, '85271d1be8f8c697d1151a341f2fa5a9');
INSERT INTO `item` VALUES ('174', '20', '0', '0', '20', '10', '8', null, '85271d1be8f8c697d1151a341f2fa5a9');
INSERT INTO `item` VALUES ('175', '20', '0', '0', '20', '11', '8', null, '85271d1be8f8c697d1151a341f2fa5a9');
INSERT INTO `item` VALUES ('176', '20', '0', '0', '20', '12', '8', null, '85271d1be8f8c697d1151a341f2fa5a9');
INSERT INTO `item` VALUES ('177', '20', '0', '0', '20', '13', '8', null, '85271d1be8f8c697d1151a341f2fa5a9');
INSERT INTO `item` VALUES ('178', '20', '0', '0', '20', '14', '8', null, '85271d1be8f8c697d1151a341f2fa5a9');
INSERT INTO `item` VALUES ('179', '20', '0', '0', '20', '15', '8', null, '85271d1be8f8c697d1151a341f2fa5a9');
INSERT INTO `item` VALUES ('180', '20', '0', '0', '20', '16', '8', null, '85271d1be8f8c697d1151a341f2fa5a9');
INSERT INTO `item` VALUES ('181', '20', '0', '0', '20', '17', '8', null, '85271d1be8f8c697d1151a341f2fa5a9');
INSERT INTO `item` VALUES ('182', '20', '0', '0', '20', '18', '8', null, '85271d1be8f8c697d1151a341f2fa5a9');
INSERT INTO `item` VALUES ('183', '20', '0', '0', '20', '19', '8', null, '85271d1be8f8c697d1151a341f2fa5a9');

-- ----------------------------
-- Table structure for `login`
-- ----------------------------
DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `idlogin` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(45) DEFAULT NULL,
  `pass` varchar(45) DEFAULT NULL,
  `idusuario` int(11) DEFAULT NULL,
  `activo` int(11) DEFAULT NULL,
  PRIMARY KEY (`idlogin`),
  KEY `fk_login_usuario1_idx` (`idusuario`),
  CONSTRAINT `fk_login_usuario1` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of login
-- ----------------------------
INSERT INTO `login` VALUES ('1', 'emmanuel', 'admin', '1', '1');
INSERT INTO `login` VALUES ('2', 'jorge', 'admin', '2', '1');
INSERT INTO `login` VALUES ('4', 'mario', '123', '7', '1');

-- ----------------------------
-- Table structure for `mensajeria`
-- ----------------------------
DROP TABLE IF EXISTS `mensajeria`;
CREATE TABLE `mensajeria` (
  `idmensajeria` int(11) NOT NULL AUTO_INCREMENT,
  `quien` int(11) DEFAULT NULL,
  `aquien` int(11) DEFAULT NULL,
  `mensaje` text,
  `asunto` varchar(80) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `visto` int(11) DEFAULT NULL,
  `papelera` int(11) DEFAULT NULL,
  PRIMARY KEY (`idmensajeria`),
  KEY `fk_mensajeria_usuario1_idx` (`quien`),
  CONSTRAINT `fk_mensajeria_usuario1` FOREIGN KEY (`quien`) REFERENCES `usuario` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mensajeria
-- ----------------------------

-- ----------------------------
-- Table structure for `pedidos`
-- ----------------------------
DROP TABLE IF EXISTS `pedidos`;
CREATE TABLE `pedidos` (
  `idpedidos` int(11) NOT NULL AUTO_INCREMENT,
  `idusuario` int(11) DEFAULT NULL,
  `idinsumo` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `descripcion` varchar(80) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`idpedidos`),
  KEY `fk_pedidos_usuario1_idx` (`idusuario`),
  KEY `fk_pedidos_insumo1_idx` (`idinsumo`),
  CONSTRAINT `fk_pedidos_insumo1` FOREIGN KEY (`idinsumo`) REFERENCES `insumo` (`idinsumo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_pedidos_usuario1` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pedidos
-- ----------------------------
INSERT INTO `pedidos` VALUES ('2', '1', '1', '2', 'pedido de administrador', '2014-09-09');
INSERT INTO `pedidos` VALUES ('3', '1', '8', '5', 'pedido de administrador', '2014-09-09');
INSERT INTO `pedidos` VALUES ('4', '7', '13', '5', 'pedido del Tecnico', '2014-09-09');

-- ----------------------------
-- Table structure for `privilegio`
-- ----------------------------
DROP TABLE IF EXISTS `privilegio`;
CREATE TABLE `privilegio` (
  `idprivilegio` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idprivilegio`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of privilegio
-- ----------------------------
INSERT INTO `privilegio` VALUES ('1', 'Tecnico');
INSERT INTO `privilegio` VALUES ('2', 'Administrador');

-- ----------------------------
-- Table structure for `proveedor`
-- ----------------------------
DROP TABLE IF EXISTS `proveedor`;
CREATE TABLE `proveedor` (
  `idproveedor` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(60) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idproveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of proveedor
-- ----------------------------
INSERT INTO `proveedor` VALUES ('1', 'Robot-Group', '', 'info@robotgroup.com');
INSERT INTO `proveedor` VALUES ('2', 'Multiplo.org', '', 'client@multiplo.com');
INSERT INTO `proveedor` VALUES ('3', 'Makeblock', '', 'info@makeblock.cc');
INSERT INTO `proveedor` VALUES ('4', 'Epson Argentina', '', 'clinfo@epson.com');

-- ----------------------------
-- Table structure for `recurso`
-- ----------------------------
DROP TABLE IF EXISTS `recurso`;
CREATE TABLE `recurso` (
  `idrecurso` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idrecurso`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of recurso
-- ----------------------------
INSERT INTO `recurso` VALUES ('1', 'Kit-Starter');
INSERT INTO `recurso` VALUES ('2', 'kit-Advanced');
INSERT INTO `recurso` VALUES ('3', 'Audiovisuales1');
INSERT INTO `recurso` VALUES ('4', 'Audiovisuales2');

-- ----------------------------
-- Table structure for `recurso_has_destino`
-- ----------------------------
DROP TABLE IF EXISTS `recurso_has_destino`;
CREATE TABLE `recurso_has_destino` (
  `recurso` int(11) DEFAULT NULL,
  `destino` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `idrecdes` int(11) NOT NULL AUTO_INCREMENT,
  `asignado` int(11) DEFAULT NULL,
  `transaccion` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`idrecdes`),
  KEY `fk_recurso_has_destino_destino1_idx` (`destino`),
  KEY `fk_recurso_has_destino_recurso1_idx` (`recurso`),
  CONSTRAINT `fk_recurso_has_destino_destino1` FOREIGN KEY (`destino`) REFERENCES `destino` (`iddestino`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_recurso_has_destino_recurso1` FOREIGN KEY (`recurso`) REFERENCES `recurso` (`idrecurso`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of recurso_has_destino
-- ----------------------------
INSERT INTO `recurso_has_destino` VALUES ('1', '8', '10', '8', '1', '85271d1be8f8c697d1151a341f2fa5a9');
INSERT INTO `recurso_has_destino` VALUES ('1', '8', '10', '9', '0', 'b94be19391811d032a419c1dbb167492');

-- ----------------------------
-- Table structure for `recurso_has_usuario`
-- ----------------------------
DROP TABLE IF EXISTS `recurso_has_usuario`;
CREATE TABLE `recurso_has_usuario` (
  `recurso` int(11) DEFAULT NULL,
  `usuario` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `idrecuser` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_entrega` date DEFAULT NULL,
  `fecha_devolucion` date DEFAULT NULL,
  `asignado` int(11) DEFAULT NULL,
  `transaccion` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`idrecuser`),
  KEY `fk_recurso_has_usuario_usuario1_idx` (`usuario`),
  KEY `fk_recurso_has_usuario_recurso1_idx` (`recurso`),
  CONSTRAINT `fk_recurso_has_usuario_recurso1` FOREIGN KEY (`recurso`) REFERENCES `recurso` (`idrecurso`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_recurso_has_usuario_usuario1` FOREIGN KEY (`usuario`) REFERENCES `usuario` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of recurso_has_usuario
-- ----------------------------
INSERT INTO `recurso_has_usuario` VALUES ('3', '7', '1', '1', '2014-09-08', '2014-01-13', '0', 'a1c2c09a69ee680d12c86898f154947b');

-- ----------------------------
-- Table structure for `tarea`
-- ----------------------------
DROP TABLE IF EXISTS `tarea`;
CREATE TABLE `tarea` (
  `idtarea` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `lugar` varchar(80) DEFAULT NULL,
  `descripcion` text,
  `iddestino` int(11) DEFAULT NULL,
  `hora_inicio` time DEFAULT NULL,
  `hora_fin` time DEFAULT NULL,
  PRIMARY KEY (`idtarea`),
  KEY `fk_tarea_destino1_idx` (`iddestino`),
  CONSTRAINT `fk_tarea_destino1` FOREIGN KEY (`iddestino`) REFERENCES `destino` (`iddestino`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tarea
-- ----------------------------
INSERT INTO `tarea` VALUES ('4', 'Taller de Kodu', '2014-09-11', 'Paseo Cultural', 'Taller destinado a Alumnos del 7° Escuela Pio XII', '8', '10:00:00', '12:00:00');
INSERT INTO `tarea` VALUES ('5', 'taller de php', '2014-09-13', 'lab de escuela', 'taller...', '8', '10:00:00', '12:00:00');

-- ----------------------------
-- Table structure for `usuario`
-- ----------------------------
DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) DEFAULT NULL,
  `Apellido` varchar(45) DEFAULT NULL,
  `dni` varchar(45) DEFAULT NULL,
  `fecha_nac` date DEFAULT NULL,
  `domicilio` varchar(60) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `sexo` varchar(45) DEFAULT NULL,
  `bloqueo` int(11) DEFAULT NULL,
  `idprivilegio` int(11) DEFAULT NULL,
  PRIMARY KEY (`idusuario`),
  KEY `fk_usuario_privilegio1_idx` (`idprivilegio`),
  CONSTRAINT `fk_usuario_privilegio1` FOREIGN KEY (`idprivilegio`) REFERENCES `privilegio` (`idprivilegio`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usuario
-- ----------------------------
INSERT INTO `usuario` VALUES ('1', 'Emmanuel', 'Sarquis', '26731952', '2014-08-29', 'Av Facundo Quiroga', '27', 'varon', '0', '2');
INSERT INTO `usuario` VALUES ('2', 'Jorge Antonio', 'Cabrera', '27161335', '1979-02-28', 'San Francisco Km 5', '35', 'mujer', '0', '2');
INSERT INTO `usuario` VALUES ('7', 'Mario Cesar', 'Gonzalez', '36035029', '1990-12-22', 'Rivadavia Nº 2146', '23', 'varon', '0', '1');
