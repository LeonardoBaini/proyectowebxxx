-- --------------------------------------------------------
-- Host:                         
-- Server version:               5.5.27 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL version:             7.0.0.4140
-- Date/time:                    2012-11-07 17:20:07
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;

-- Dumping database structure for proyectoweb
DROP DATABASE IF EXISTS `proyectoweb`;
CREATE DATABASE IF NOT EXISTS `proyectoweb` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `proyectoweb`;


-- Dumping structure for table proyectoweb.categoriapersonal
DROP TABLE IF EXISTS `categoriapersonal`;
CREATE TABLE IF NOT EXISTS `categoriapersonal` (
  `idCategoriaPersonal` int(11) NOT NULL,
  `Descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idCategoriaPersonal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table proyectoweb.categoriapersonal: ~5 rows (approximately)
DELETE FROM `categoriapersonal`;
/*!40000 ALTER TABLE `categoriapersonal` DISABLE KEYS */;
INSERT INTO `categoriapersonal` (`idCategoriaPersonal`, `Descripcion`) VALUES
	(1, 'Socio'),
	(2, 'Ayudante'),
	(3, 'Indirecto'),
	(4, 'Senior'),
	(5, 'Semisenior');
/*!40000 ALTER TABLE `categoriapersonal` ENABLE KEYS */;


-- Dumping structure for table proyectoweb.cliente
DROP TABLE IF EXISTS `cliente`;
CREATE TABLE IF NOT EXISTS `cliente` (
  `idCliente` int(11) NOT NULL,
  `Descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table proyectoweb.cliente: ~36 rows (approximately)
DELETE FROM `cliente`;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` (`idCliente`, `Descripcion`) VALUES
	(1, 'ADISI S.A.'),
	(2, 'ABRASIVOS ARGENTINOS S.A.'),
	(3, 'AGBAR SUC ARG'),
	(4, 'ANTONIO M FERRO'),
	(5, 'CARL ZEISS VISION ARG.'),
	(6, 'CASANFE'),
	(7, 'COMSA DE ARGENTINA'),
	(8, 'COMSA SUC ARGENTINA'),
	(9, 'DISCO S.A.'),
	(10, 'EMERGING MARKETS SOFTWARE S.A.'),
	(11, 'EMTE ARGENTINA'),
	(12, 'EMTE CLEANROOM'),
	(13, 'EMTE SISTEMAS ARG'),
	(14, 'ESPACIO MARKETING'),
	(15, 'ESTANCIA LOS CHARITOS'),
	(16, 'ESTUDIO SRL'),
	(17, 'FPA SOFTWARE SRL'),
	(18, 'GUAMAL S.A.'),
	(19, 'IMPUESTOS PERSONAS FISICAS'),
	(20, 'JAS JET AIR SERVICE ARGENTINA S.A.'),
	(21, 'JAS WORLDWIDE'),
	(22, 'MECA ELECTROMECANICA'),
	(23, 'MOTOZUNI S.A.'),
	(24, 'NSK ARGENTINA S.R.L.'),
	(25, 'NUMATEC S.A.'),
	(26, 'OMEGA ONE S.A.'),
	(27, 'PILKINGTON AUTOMOT ARG'),
	(28, 'RITHNER PORTEOUS Y CIA ARG'),
	(29, 'RODISERMA S.A.'),
	(30, 'S BENITO S.A.'),
	(31, 'SASPER S.A.'),
	(32, 'SG ABRASIVOS S.A.'),
	(33, 'SG ARGENTINA S.A.'),
	(34, 'STARRETT ARG S.A.'),
	(35, 'SUPERGLASS S.A.'),
	(36, 'VIDRIERIA ARGENTINA S.A.');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;


-- Dumping structure for table proyectoweb.departamento
DROP TABLE IF EXISTS `departamento`;
CREATE TABLE IF NOT EXISTS `departamento` (
  `idDepartamento` int(11) NOT NULL,
  `Descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idDepartamento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table proyectoweb.departamento: ~5 rows (approximately)
DELETE FROM `departamento`;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` (`idDepartamento`, `Descripcion`) VALUES
	(1, 'Impuestos'),
	(2, 'Auditoria'),
	(3, 'Tercerizaciones'),
	(4, 'Sueldos'),
	(5, 'Indirectas');
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;


-- Dumping structure for table proyectoweb.dia
DROP TABLE IF EXISTS `dia`;
CREATE TABLE IF NOT EXISTS `dia` (
  `iddia` int(11) NOT NULL AUTO_INCREMENT,
  `Dia` int(11) NOT NULL,
  PRIMARY KEY (`iddia`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

-- Dumping data for table proyectoweb.dia: ~31 rows (approximately)
DELETE FROM `dia`;
/*!40000 ALTER TABLE `dia` DISABLE KEYS */;
INSERT INTO `dia` (`iddia`, `Dia`) VALUES
	(1, 1),
	(2, 2),
	(3, 3),
	(4, 4),
	(5, 5),
	(6, 6),
	(7, 7),
	(8, 8),
	(9, 9),
	(10, 10),
	(11, 11),
	(12, 12),
	(13, 13),
	(14, 14),
	(15, 15),
	(16, 16),
	(17, 17),
	(18, 18),
	(19, 19),
	(20, 20),
	(21, 21),
	(22, 22),
	(23, 23),
	(24, 24),
	(25, 25),
	(26, 26),
	(27, 27),
	(28, 28),
	(29, 29),
	(30, 30),
	(31, 31);
/*!40000 ALTER TABLE `dia` ENABLE KEYS */;


-- Dumping structure for table proyectoweb.mes
DROP TABLE IF EXISTS `mes`;
CREATE TABLE IF NOT EXISTS `mes` (
  `idmes` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idmes`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table proyectoweb.mes: ~12 rows (approximately)
DELETE FROM `mes`;
/*!40000 ALTER TABLE `mes` DISABLE KEYS */;
INSERT INTO `mes` (`idmes`, `nombre`) VALUES
	(1, 'ENERO'),
	(2, 'FEBRERO'),
	(3, 'MARZO'),
	(4, 'ABRIL'),
	(5, 'MAYO'),
	(6, 'JUNIO'),
	(7, 'JULIO'),
	(8, 'AGOSTO'),
	(9, 'SEPTIEMBRE'),
	(10, 'OCTUBRE'),
	(11, 'NOVIEMBRE'),
	(12, 'DICIEMBRE');
/*!40000 ALTER TABLE `mes` ENABLE KEYS */;


-- Dumping structure for table proyectoweb.mesesestado
DROP TABLE IF EXISTS `mesesestado`;
CREATE TABLE IF NOT EXISTS `mesesestado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(45) DEFAULT '-',
  `ENERO` varchar(45) DEFAULT '-',
  `FEBRERO` varchar(45) DEFAULT '-',
  `MARZO` varchar(45) DEFAULT '-',
  `ABRIL` varchar(45) DEFAULT '-',
  `MAYO` varchar(45) DEFAULT '-',
  `JUNIO` varchar(45) DEFAULT '-',
  `JULIO` varchar(45) DEFAULT '-',
  `AGOSTO` varchar(45) DEFAULT '-',
  `SEPTIEMBRE` varchar(45) DEFAULT '-',
  `OCTUBRE` varchar(45) DEFAULT '-',
  `NOVIEMBRE` varchar(45) DEFAULT '-',
  `DICIEMBRE` varchar(45) DEFAULT '-',
  `ANIO` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table proyectoweb.mesesestado: ~2 rows (approximately)
DELETE FROM `mesesestado`;
/*!40000 ALTER TABLE `mesesestado` DISABLE KEYS */;
INSERT INTO `mesesestado` (`id`, `usuario`, `ENERO`, `FEBRERO`, `MARZO`, `ABRIL`, `MAYO`, `JUNIO`, `JULIO`, `AGOSTO`, `SEPTIEMBRE`, `OCTUBRE`, `NOVIEMBRE`, `DICIEMBRE`, `ANIO`) VALUES
	(1, 'dante', 'ABIERTO', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', 2012),
	(2, 'jorge', 'CERRADO', '-', '-', '-', '-', '-', '-', '-', '-', '-', 'ABIERTO', '-', 2012);
/*!40000 ALTER TABLE `mesesestado` ENABLE KEYS */;


-- Dumping structure for table proyectoweb.permiso
DROP TABLE IF EXISTS `permiso`;
CREATE TABLE IF NOT EXISTS `permiso` (
  `idpermiso` varchar(30) NOT NULL,
  PRIMARY KEY (`idpermiso`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table proyectoweb.permiso: ~2 rows (approximately)
DELETE FROM `permiso`;
/*!40000 ALTER TABLE `permiso` DISABLE KEYS */;
INSERT INTO `permiso` (`idpermiso`) VALUES
	('administrador'),
	('usuario');
/*!40000 ALTER TABLE `permiso` ENABLE KEYS */;


-- Dumping structure for table proyectoweb.personal
DROP TABLE IF EXISTS `personal`;
CREATE TABLE IF NOT EXISTS `personal` (
  `Dni` int(11) NOT NULL,
  `Legajo` int(11) DEFAULT NULL,
  `Especialidad` varchar(60) DEFAULT NULL,
  `Apellido` varchar(45) DEFAULT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Direccion` varchar(45) DEFAULT NULL,
  `Telefono` varchar(45) DEFAULT NULL,
  `categoria` int(11) DEFAULT NULL,
  PRIMARY KEY (`Dni`),
  KEY `categoria` (`categoria`),
  CONSTRAINT `categoria` FOREIGN KEY (`categoria`) REFERENCES `categoriapersonal` (`idCategoriaPersonal`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table proyectoweb.personal: ~13 rows (approximately)
DELETE FROM `personal`;
/*!40000 ALTER TABLE `personal` DISABLE KEYS */;
INSERT INTO `personal` (`Dni`, `Legajo`, `Especialidad`, `Apellido`, `Nombre`, `Direccion`, `Telefono`, `categoria`) VALUES
	(1, 16, 'Indirecto', 'Perez', 'Dante', NULL, NULL, NULL),
	(2, 17, 'Senior', 'Becker', 'Cintia', NULL, NULL, NULL),
	(3, 18, 'Ayudante', 'Conti', 'Leandro', NULL, NULL, NULL),
	(4, 19, 'Socio', 'Rodriguez', 'Armando', NULL, NULL, NULL),
	(5, 20, 'Senior', 'Liguori', 'Patricia', NULL, NULL, NULL),
	(6, 21, 'Ayudante', 'Carrera', 'Hugo', NULL, NULL, NULL),
	(7, 22, 'Ayudante', 'Martinez', 'Mariel', NULL, NULL, NULL),
	(8, 23, 'Ayudante', 'Manzolido', 'Augusto', NULL, NULL, NULL),
	(9, 15, 'Socio', 'Liguori', 'Jorge', 'url741', '147', NULL),
	(10, 12, 'Ayudante', 'Saavedra', 'Daiana', 'url123', '789', NULL),
	(11, 15, 'Socio', 'Maccagno', 'Horacio', NULL, '222', NULL),
	(12345678, 13, 'Senior', 'Hood', 'Geraldine', 'url321', '321', NULL),
	(87654321, 14, 'Indirecto', 'Maccagno', 'Lucia', 'url852', '258', NULL);
/*!40000 ALTER TABLE `personal` ENABLE KEYS */;


-- Dumping structure for table proyectoweb.regdetareas
DROP TABLE IF EXISTS `regdetareas`;
CREATE TABLE IF NOT EXISTS `regdetareas` (
  `nroRegistro` int(11) NOT NULL AUTO_INCREMENT,
  `idTarea` int(11) DEFAULT NULL,
  `idsubtarea` int(11) DEFAULT NULL,
  `Descripcion` varchar(45) DEFAULT NULL,
  `iDdepartamento` int(11) DEFAULT NULL,
  `DniPersonal` int(11) DEFAULT NULL,
  `idCliente` int(11) DEFAULT NULL,
  `horasConsumidas` double DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`nroRegistro`),
  KEY `IdDepartamento` (`iDdepartamento`),
  KEY `DniPeronal` (`DniPersonal`),
  KEY `idTarea` (`idTarea`),
  KEY `idCliente` (`idCliente`),
  KEY `IdSubtarea` (`idsubtarea`),
  CONSTRAINT `DniPeronal` FOREIGN KEY (`DniPersonal`) REFERENCES `personal` (`Dni`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `idCliente` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `IdDepartamento` FOREIGN KEY (`iDdepartamento`) REFERENCES `departamento` (`idDepartamento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `IdSubtarea` FOREIGN KEY (`idsubtarea`) REFERENCES `subtarea` (`idSubtarea`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `idTarea` FOREIGN KEY (`idTarea`) REFERENCES `tarea` (`idTarea`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table proyectoweb.regdetareas: ~2 rows (approximately)
DELETE FROM `regdetareas`;
/*!40000 ALTER TABLE `regdetareas` DISABLE KEYS */;
INSERT INTO `regdetareas` (`nroRegistro`, `idTarea`, `idsubtarea`, `Descripcion`, `iDdepartamento`, `DniPersonal`, `idCliente`, `horasConsumidas`, `fecha`) VALUES
	(3, 1, NULL, 'aaa', 2, 12345678, 3, 3.5, '2012-02-03'),
	(4, 2, 2, 'lñlñlñlñ', 1, 87654321, 1, 5.2, '2012-03-02');
/*!40000 ALTER TABLE `regdetareas` ENABLE KEYS */;


-- Dumping structure for table proyectoweb.registrogral
DROP TABLE IF EXISTS `registrogral`;
CREATE TABLE IF NOT EXISTS `registrogral` (
  `idregistroGral` int(11) NOT NULL AUTO_INCREMENT,
  `tarea` varchar(45) DEFAULT NULL,
  `subtarea` varchar(45) DEFAULT NULL,
  `descripcion` varchar(600) DEFAULT NULL,
  `departamento` varchar(45) DEFAULT NULL,
  `dniPersonal` int(11) DEFAULT NULL,
  `cliente` varchar(45) DEFAULT NULL,
  `horastrabajadas` double DEFAULT NULL,
  `tipohora` varchar(45) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `estado` varchar(10) NOT NULL DEFAULT 'ABIERTO',
  PRIMARY KEY (`idregistroGral`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- Dumping data for table proyectoweb.registrogral: ~16 rows (approximately)
DELETE FROM `registrogral`;
/*!40000 ALTER TABLE `registrogral` DISABLE KEYS */;
INSERT INTO `registrogral` (`idregistroGral`, `tarea`, `subtarea`, `descripcion`, `departamento`, `dniPersonal`, `cliente`, `horastrabajadas`, `tipohora`, `fecha`, `estado`) VALUES
	(1, 'IMP', 'AT.', 'xxx', 'Impuestos', 9, 'ADISI', 1, 'NORMAL', '2012-11-05', 'ABIERTO'),
	(2, 'Z', 'Z', 'cálculo de deuda reclamada por córdoba', 'Impuestos', 9, 'SG', 6, 'NORMAL', '2012-11-01', 'ABIERTO'),
	(3, 'IND.', '', 'organización nuevo calendario mensual de vtos para web', 'Indirectas', 9, 'ESTUDIO', 2, 'NORMAL', '2012-11-01', 'ABIERTO'),
	(4, 'IMP', 'Z', 'análisis normas respecto a cómputo de imp s/gtos en el exterior en ret 4ta.', 'Impuestos', 9, 'ESPACIO', 0.5, 'NORMAL', '2012-11-01', 'ABIERTO'),
	(5, 'FUERA', 'AT.', 'análisis tema rectificativas ret arba por error cuit', 'Impuestos', 9, 'SUPERGLASS', 1, 'NORMAL', '2012-11-02', 'ABIERTO'),
	(6, 'IMP', 'AT.', 'Tema multa chubut, forma de pago, intercambio de información con of. rentas', 'Impuestos', 9, 'PILKINGTON', 2, 'NORMAL', '2012-11-02', 'ABIERTO'),
	(7, 'IMP', 'Z', 'comunicación lacoste tema cambio moneda extranjera a través de bonos', 'Impuestos', 9, 'SASPER', 0.5, 'NORMAL', '2012-11-02', 'ABIERTO'),
	(8, 'IND.', 'Z', 'calendario de vtos. nuevo formato', 'Indirectas', 9, 'ESTUDIO', 2, 'NORMAL', '2012-11-02', 'ABIERTO'),
	(9, 'IMP', 'AT.', 'calculo deuda cordoba terminación de trabajo', 'Impuestos', 9, 'SG', 3, 'NORMAL', '2012-11-02', 'ABIERTO'),
	(10, 'IMP', 'Z', 'visita a cliente por relevamiento', 'Impuestos', 9, 'MOTOZUNI', 6, 'NORMAL', '2012-11-05', 'ABIERTO'),
	(11, 'Z', 'Z', 'reunión con John Hood tema personal', 'Impuestos', 9, 'ESTUDIO', 1, 'NORMAL', '2012-11-05', 'ABIERTO'),
	(12, 'IND.', '', 'jornadas tributación internacional de AAEF', 'Indirectas', 9, 'ESTUDIO', 5, 'NORMAL', '2012-11-06', 'ABIERTO'),
	(13, 'IND.', '', '', 'Indirectas', 9, 'ESTUDIO', 3.5, 'NORMAL', '2012-11-06', 'ABIERTO'),
	(14, 'IND.', '', 'reunión socios estudio', 'Indirectas', 9, 'ESTUDIO', 2, 'NORMAL', '2012-11-07', 'ABIERTO'),
	(15, 'IND.', '', 'jornada tributación internacional AAEF', 'Impuestos', 9, 'ESTUDIO', 4.5, 'NORMAL', '2012-11-07', 'ABIERTO'),
	(16, 'IMP', 'AT.', 'contestación requerimiento arba de martorelli', 'Impuestos', 9, 'VIDRIERIA', 1.5, 'NORMAL', '2012-11-07', 'ABIERTO');
/*!40000 ALTER TABLE `registrogral` ENABLE KEYS */;


-- Dumping structure for table proyectoweb.subtarea
DROP TABLE IF EXISTS `subtarea`;
CREATE TABLE IF NOT EXISTS `subtarea` (
  `idSubtarea` int(11) NOT NULL,
  `TareaPadre` int(11) DEFAULT NULL,
  `Descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idSubtarea`),
  KEY `TareaPadre` (`TareaPadre`),
  CONSTRAINT `TareaPadre` FOREIGN KEY (`TareaPadre`) REFERENCES `tarea` (`idTarea`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table proyectoweb.subtarea: ~14 rows (approximately)
DELETE FROM `subtarea`;
/*!40000 ALTER TABLE `subtarea` DISABLE KEYS */;
INSERT INTO `subtarea` (`idSubtarea`, `TareaPadre`, `Descripcion`) VALUES
	(1, 2, 'AT. INSPECCIONES FISC/PREV'),
	(2, 3, 'AT. REQUERIMIENTO FISC/PREV'),
	(3, 4, 'BS. PERSONALES RESP SUSTIT'),
	(4, 5, 'CM05 RELEVAMIENTO PAGOS'),
	(5, 1, 'CM05 CALCULO COEF'),
	(6, 1, 'CM05 CARGA Y PRESENT DDJJ'),
	(7, 1, 'GANANCIAS E IGMP'),
	(8, 1, 'INGRESOS BRUTOS'),
	(9, 1, 'IVA'),
	(10, 1, 'REG. INF. ACCIONISTAS Y DIRECT.'),
	(11, 1, 'REG. RET Y PERCEPC.'),
	(12, 1, 'SICORE'),
	(13, 1, 'VISITA AFIP'),
	(14, 1, 'Z - OTRAS');
/*!40000 ALTER TABLE `subtarea` ENABLE KEYS */;


-- Dumping structure for table proyectoweb.tarea
DROP TABLE IF EXISTS `tarea`;
CREATE TABLE IF NOT EXISTS `tarea` (
  `idTarea` int(11) NOT NULL,
  `Descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idTarea`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table proyectoweb.tarea: ~20 rows (approximately)
DELETE FROM `tarea`;
/*!40000 ALTER TABLE `tarea` DISABLE KEYS */;
INSERT INTO `tarea` (`idTarea`, `Descripcion`) VALUES
	(1, 'IMP - ANUALES'),
	(2, 'IMP - RUTINAS MENSUALES'),
	(3, 'AUDITORIA'),
	(4, 'CARGAS SOCIALES'),
	(5, 'CERTIFICACIONES CONTABLES'),
	(6, 'FUERA DE PROPUESTA'),
	(7, 'IND. - ADMINISTRAC. ESTUDIO'),
	(8, 'IND. - AUSENCIA'),
	(9, 'IND. - CURSOS'),
	(10, 'IND. - LECTURA'),
	(11, 'IND. - ORDEN Y LIMPIEZA'),
	(12, 'LIQUIDACION DE HABERES'),
	(13, 'SOCIET. - ACTAS, MEMORIA, ETC.'),
	(14, 'SOCIET. - IGJ PRESENTACION'),
	(15, 'TERC. BALANCES'),
	(16, 'TERC. CARGA CPTES'),
	(17, 'TERC. CONCILIAC. DE CUENTAS'),
	(18, 'TERC. REPORTES'),
	(19, 'VISITA A CLIENTES'),
	(20, 'Z - OTRAS');
/*!40000 ALTER TABLE `tarea` ENABLE KEYS */;


-- Dumping structure for table proyectoweb.tipohora
DROP TABLE IF EXISTS `tipohora`;
CREATE TABLE IF NOT EXISTS `tipohora` (
  `idTipoHora` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idTipoHora`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table proyectoweb.tipohora: ~2 rows (approximately)
DELETE FROM `tipohora`;
/*!40000 ALTER TABLE `tipohora` DISABLE KEYS */;
INSERT INTO `tipohora` (`idTipoHora`, `Descripcion`) VALUES
	(1, 'NORMAL'),
	(2, 'EXTRA');
/*!40000 ALTER TABLE `tipohora` ENABLE KEYS */;


-- Dumping structure for table proyectoweb.userlogin
DROP TABLE IF EXISTS `userlogin`;
CREATE TABLE IF NOT EXISTS `userlogin` (
  `usuario` varchar(45) NOT NULL DEFAULT '',
  `contrasenia` varchar(45) DEFAULT NULL,
  `permiso` varchar(30) DEFAULT NULL,
  `dni` int(11) DEFAULT NULL,
  PRIMARY KEY (`usuario`),
  KEY `permiso` (`permiso`),
  KEY `dni` (`dni`),
  CONSTRAINT `dni` FOREIGN KEY (`dni`) REFERENCES `personal` (`Dni`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `permiso` FOREIGN KEY (`permiso`) REFERENCES `permiso` (`idpermiso`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table proyectoweb.userlogin: ~13 rows (approximately)
DELETE FROM `userlogin`;
/*!40000 ALTER TABLE `userlogin` DISABLE KEYS */;
INSERT INTO `userlogin` (`usuario`, `contrasenia`, `permiso`, `dni`) VALUES
	('armando', 'armando', 'administrador', 4),
	('augusto', 'augusto', 'usuario', 8),
	('cecilia', 'cecilia', 'usuario', 10),
	('cintia', 'cintia', 'usuario', 2),
	('dante', 'dante', 'usuario', 1),
	('geraldine', 'geraldine', 'usuario', 12345678),
	('horacio', 'horacio', 'administrador', 11),
	('hugo', 'hugo', 'usuario', 6),
	('jorge', 'jorge', 'administrador', 9),
	('leandro', 'leandro', 'usuario', 3),
	('lucia', 'lucia', 'usuario', 87654321),
	('mariel', 'mariel', 'usuario', 7),
	('patricia', 'patricia', 'usuario', 5);
/*!40000 ALTER TABLE `userlogin` ENABLE KEYS */;
/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;