-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-06-2017 a las 23:18:24
-- Versión del servidor: 5.7.9
-- Versión de PHP: 5.6.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `carritoiluminacion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id_category` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id_category`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `category`
--

INSERT INTO `category` (`id_category`, `name`) VALUES
(2, 'Materiales Electricos'),
(1, 'Lamparas'),
(3, 'Artefactos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id_product` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `description` text CHARACTER SET latin1,
  `cost` float DEFAULT NULL,
  `picture` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `id_category` int(11) NOT NULL,
  PRIMARY KEY (`id_product`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `product`
--

INSERT INTO `product` (`id_product`, `name`, `description`, `cost`, `picture`, `id_category`) VALUES
(1, 'Lampara AR11 led', 'El reflector AR111 de GE de aluminio faceteado para un mejor control del haz ha sido diseñado para dirigir la luz y el calor y para garantizar la plena protección de los engranajes. El AR111 proporciona una calidad de luz de halógeno blanca y brillante (hasta 2950K), y es especialmente adecuado para la iluminación decorativa y arquitectónica', 250, '98ay6sd097satgdñsuadgt.jpg', 1),
(2, 'Bipin 12v', 'Bipin de 12 wat - 4 watts, equivalente a 20watt, blanco calido 2700k, remplazo directo de bipin g4, medidas de diamentro 1,5cm, 150 lumenes, vida util 30.000horas, aplicacion hall, pasillos, aplier, oficinas, comercioas, living.', 50, '6-1.jpg', 1),
(3, 'Lampara par 80w', 'Las lámparas incandescentes PAR 80 se caracterizan por su alta intensidad lumínica.Tienen ampolla de vidrio prensado, con reflector interior de alto factor de reflexión y refractor frontal, con diferentes terminaciones para lograr distintas formas de distribución luminosa (haz concentrado, difuso o muy difuso), según los tipos de lámpara. Otra característica que cabe destacar es la forma elíptica de su distribución lumínica, en todos sus tipos. Las lámparas PAR 56 están construidas con un vidrio resistente a las altas temperaturas. Se recomienda debiendo tener en cuenta que cuando se las utiliza en exteriores se las debe proteger de las salpicaduras de agua mediante una cubierta de vidrio y un burlete que asegure su hermeticidad. ', 120, '3.jpg', 1),
(4, 'Tubo Led', 'Informacion general de calidades de tubos de led T8 60cm, 120cm y 150cm, así como tubos led T5, componentes, garantía de los tubos de led de GP Trader electronics. Información de precios de tubos de led T8.Los tubos de led t8 60cm están ensamblados con componentes electrónicos de la más alta calidad: diodos de led: con test LM80, alto CRI superior a 82Ra que garantiza una alta calidad de luz. Driver premium: electrónica con certificado UL aislada con factor de potencia superior a 0.98 y THD inferior al 15%.\r\n', 120, NULL, 1),
(5, 'Bombilla de filamento', 'na lámpara de incandescencia o lámpara incandescente es un dispositivo que produce luz mediante el calentamiento por efecto Joule de un filamento metálico, en concreto de wolframio, hasta ponerlo al rojo blanco, mediante el paso de corriente eléctrica. Con la tecnología existente, actualmente se considera poco eficiente, ya que el 85 % de la electricidad que consume la transforma en calor y solo el 15 % restante en luz.', 180, NULL, 1),
(6, 'Reflector de Led', 'Cuando se habla de alumbrado de exteriores, se busca transmitir la sensación de seguridad, por ello contar con la iluminación adecuada te ayudará a proteger tu patrimonio. Elije el modelo que más se adecúe a tus necesidades con la confianza de contar con un producto de alta calidad. Es fácil de usar y de instalar.\r\n', 1000, NULL, 1),
(7, 'Tiral de led 5m', 'Tira led smd 5050 Tira LED SMD 5050, es la tira de leds de alta luminosidad, autoadhesiva,  ideal para decoración, donde se requiera mayor iluminación.  Funciona con fuente de alimentación de 12VDC (corriente continua). Para tiras de LED de 24V consultar con nuestro departamento comercial.  Por su bajo consumo, contribuye de manera excelente al ahorro energético.', 500, NULL, 1),
(8, 'Bañador Lampara Led Exterior Bajo Consumo 24w ', 'Bañador de Led RGB, ideal para decoración de fachadas, jardines, paredes interiores, discotecas, lugares públicos, etc .Este bañador posee un controlador integrado que varía automaticamente los colores del mismo ofreciendo una amplia gama de colores. Estructura de aluminio anodizado.Ancho: 1 metro .Apto intemperie IP65. Soporte para fijación en la pared. Potencia consumida: 18W.Tensión de alimentación: 24V CA.Alcance: 20 metros. Angulo de iluminación: 30º.Colores. Rojo-Verde-Azul y la combinación resultante de ellos.Conformado por 6 led de 3W.\r\n', 2500, NULL, 1),
(9, 'Lampara de fibra optica', 'Relajante Lámpara Decorativa, centro de mesa de Fibra Optica con luces de colores destelladoras verde, roja y azul. Esta elegante lámpara es el centro de atención para cualquier habitación. Tus invitados serán cautivados por su suave y relajante brillo de color También ideal para fiestas, reuniones o acompañado con tu pareja. Funciona con 3 pilas AA, por lo que la puedes mover y poner donde tu quieras; en una fiesta, en el coche, en el jardín, en tu estudio, etc. Mide 33 cms. de alto, la base es de resistente plástico color de color. Características:Fibra óptica de insuperable calidad con cientos de filamentos.En la base tiene Luces destelladora de colores azul, roja y verde.Tecla de on / off.', 1500, NULL, 1),
(10, 'Reflector halogenado 100w', 'Los artefacto por defectos de fabricación, sujeto a revisión en fábrica 3 años balasto por defectos de fabricación, sujeto a revisión en fábrica 1 años lámpara por defectos de fabricación sujeta a revisión en el importador\r\n', 400, NULL, 1),
(11, 'Dicroica de led', 'Iluminación realzadora duradera con un haz de brillo enfocado Las dicroicas LED Philips proporcionan un haz de brillo enfocado, una vida útil increíblemente larga y un importante nivel de ahorro energético. Esta dicroica es el reemplazo duradero perfecto para dicroicas de 35 W con rosca GU10.', 40, NULL, 1),
(12, 'Luces de neon', 'La luz de neón se produce en unos tubos que contienen neón y otros gases enrarecidos y que, mediante la electricidad, dan una luminescencia brillante. Un tubo de neón es un tubo sellado con electrodos metálicos en cada extremo, llenos de una serie de gases a baja presión. Son lámparas de descarga de cátodo frío. Al aplicar una diferencia de potencial alta, de varios miles de voltios, en los electrodos, se ioniza el gas del tubo y emite, por fluorescencia, luz coloreada. El color de la luz depende del gas que rellena el tubo. La luz de neón se llama así debido al neón, un gas noble que da una luz encarnada, muy popular, pero se usan otros gases y productos químicos para producir otros colores, como el helio (amarillo), dióxido de carbono (blanco) y mercurio (azul). Los tubos de neón pueden curvarse para formar letras o dibujos. Se usan principalmente para hacer anuncios llamativos y multicolores, llamados letreros de neón, que fueron especialmente populares entre 1920 y 1950.', 1550, NULL, 1),
(13, 'Disyuntor Diferencial Schneider ', 'Calibre o corriente nominal: corriente de trabajo para la cual está diseñado el dispositivo. Existen desde 5 hasta 64 amperios. Tensión de trabajo: tensión para la cual está diseñado el disyuntor. Existen monofásicos (110 - 220 V) y trifásicos (300 - 600 V). Poder de corte: intensidad máxima que el disyuntor puede interrumpir. Con mayores intensidades se pueden producir fenómenos de arcos eléctricos o la fusión y soldadura de materiales que impedirían la apertura del circuito. Poder de cierre: intensidad máxima que puede circular por el dispositivo al momento del cierre sin que éste sufra daños por choque eléctrico. Número de polos: número máximo de conductores que se pueden conectar al interruptor automático. Existen de uno, dos, tres y cuatro polos.', 850, NULL, 2),
(14, 'Termica Bipolar', 'Corriente nominal: de 1 a 63 A Amplia selección de capacidades de desconexión y curvas de disparo: B, C, D... Conformidad con las normas: IEC EN 60898 o IEC 60947-2 según la versión, con certificación de las autoridades oficiales nacionales Adecuados para el aislamiento de acuerdo con las normas industriales: IEC 60947 Voltaje de funcionamiento: hasta 440 VCA, voltaje de aislamiento: 500 V Módulos de fuga a tierra complementarios opcionales: Vigi C60 Auxiliares opcionales: indicación de estado y disparo, desconexión en derivación, disparo por baja tensión, disparo por sobretensión', 400, NULL, 2),
(15, 'Llave Selectora De Fase Trifasica', 'Selectora de fase trifasica 380VCA-40A sin neutro (0-R-0-S-0-T) Para embutir en panel, con opcion de colocar en riel din adicionando un adaptador Dimensiones: 6x6x6cm de profundidad Marca: Elibet - Modelo: 40601/0 Industria Argentina', 100, NULL, 2),
(16, 'Grampa Tipo Olmar De 1/2 A 2 1/2', 'Las grampas son un elemento que permite fijar caños a estructuras. La grampa tipo olmar trabaja junto con el riel olmar, al cual se fija a través de un sistema de bulonería. Tiene una terminación zincada.', 159, NULL, 2),
(17, 'Cañeria de metal', 'Cañeria de metal varias medidas, Las tuberías se fabrican de tres diferentes maneras: Tuberías sin costuras, este tipo de tubería se realiza a partir de un lingote cilíndrico, el cual se calienta antes del proceso de la extrusión. Esta tubería se caracteriza por ser una de las mejores para la contención de la presión.Tuberías con costura longitudinal, este tipo de tubería se forma de una lámina de chapa, la cual para darle forma se tiene que doblar entre sí, de esta manera se logra el cierre del cilindro. Posteriormente, son procesadas por dos rodillos que le dan diferentes formas y texturas. Tuberías con soldadura helicoidal, en este caso la soldadura no llega a ser recta, es decir, esta recorre la tubería, dando la forma de una tubería roscada o en espiral).', 150, NULL, 2),
(18, 'Tableros electricos', 'Según su ubicación en la instalación eléctrica, los tableros eléctricos se clasifican en: ablero principal de distribución: Este tablero está conectado a la línea eléctrica principal y de él se derivan los circuitos secundarios. Este tablero contiene el interruptor principal. Tableros secundarios de distribución: Son alimentados directamente por el tablero principal. Son auxiliares en la protección y operación de subalimentadores. Tableros de paso: Tienen la finalidad de proteger derivaciones que por su capacidad no pueden ser directamente conectadas alimentadores o subalimentadores. Para llevar a cabo esta protección cuentan con fusibles. Gabinete individual del medidor: Este recibe directamente el circuito de alimentación y en él está el medidor de energía desde el cual se desprende el circuito principal. Tableros de comando: Contienen dispositivos de seguridad y maniobra.', 4500, NULL, 2),
(19, 'Precintos', 'Un precinto es un sello de seguridad, un dispositivo físico numerado (o no) que se coloca sobre mecanismos de cierre para asegurar que éstos no se abran sin autorización (adrede o por accidente). Una vez colocado, el sello no puede eliminarse sin provocar su destrucción, es decir una fuerza física sobre el mismo que produzca su daño y en consecuencia evite su futura reutilización.', 50, NULL, 2),
(20, 'Bobina de sintenax', 'APLICACIONES\nPara instalaciones de iluminación y distribución de energía en el interior de edificios civiles e industriales, en circuitos primarios, secundarios y derivaciones, colocados en cañerías, sobre bandejas portacables o soportes. CARACTERISTICAS GENERALES TENSION DE AISLACION  Para circuitos con tensión de servicio de 450 / 750 V. ca NORMAS  De fabricación y ensayos:  IRAM 2183/91 y NBR6148 De no propagación de incendios: - IEEE 383 párrafo 2.5 - IRAM 2289/cat B y NBR 6812/cat BF  De índice de oxigeno: - IRAM 2289/anexo b y NBR6245 De emisión de gases: - IEC 754-1 ', 1400, NULL, 2),
(21, 'Bobina de taller', 'APLICACIONES  Para instalaciones de iluminación y distribución de energía en el interior de edificios civiles e industriales, en circuitos primarios, secundarios y derivaciones, colocados en cañerías, sobre bandejas portacables o soportes. CARACTERISTICAS GENERALES TENSION DE AISLACION  Para circuitos con tensión de servicio de 450 / 750 V. ca NORMAS  De fabricación y ensayos:  IRAM 2183/91 y NBR6148 De no propagación de incendios: - IEEE 383 párrafo 2.5 - IRAM 2289/cat B y NBR 6812/cat BF  De índice de oxigeno: - IRAM 2289/anexo b y NBR6245 De emisión de gases: - IEC 754-1 ', 2500, '2.jpg', 2),
(22, 'Contactores bobina 220v', 'Un contactor es un dispositivo con capacidad de cortar la corriente eléctrica de un receptor o instalación con la posibilidad de ser accionado a distancia, que tiene dos posiciones de funcionamiento: una estable o de reposo, cuando no recibe acción alguna por parte del circuito de mando, y otra inestable, cuando actúa dicha acción. Este tipo de funcionamiento se llama de "todo o nada".Contactores electromagnéticos. Su accionamiento se realiza a través de un electroimán.Contactores electromecánicos. Se accionan con ayuda de medios mecánicos.Contactores neumáticos. Se accionan mediante la presión de un gas.Contactores hidráulicos. Se accionan por la presión de un líquido.', 2500, NULL, 2),
(23, 'Modulo de toma doble', 'La particularidad de este módulo reside en que no necesita bastidor ni caja de embutir, evitando la molestia de romper paredes para instalar un nuevo tomacorriente y permitiendo la aplicación en varias superficies.Simplemente se deberá extender los cables desde un tomacorriente, a través de un cablecanal, hasta el módulo. El mismo viene preparado con un sector dispuesto para aplicar en cablecanal y dos perforaciones a los lados para ajustarlo con tornillos a las superficies deseadas.Su conexión es sencilla y segura gracias al sistema Prefit de Cambre, que consiste en el ajuste de cables con vástagos, evitando los daños al usar tornillos.Asimismo, con este sistema se estarán instalando dos tomacorrientes con una sola conexión, salteándose el paso de hacer el puente necesario para instalar dos tomacorrientes independientes.', 90, NULL, 2),
(24, 'Modulo de RJ45', 'La sigla RJ-45 significa ("Registred Jack 45") ó Conector 45 registrado, también llamado puerto Ethernet. En tanto el puerto cuándo no se encuentra en la computadora, es decir, sino que se encuentra en la pared se le llama roseta de pared, también Jack UTP ó Jack RJ45. Es un conector de forma semi-rectangular con 8 terminales, que se utilizan para interconectar computadoras y crear redes de datos de área local (LAN - red de computadoras cercanas interconectadas entre sí). Se les llama puertos porque permiten la transmisión de datos entre un la red (periférico), con las computadoras. ', 90, NULL, 2),
(25, 'Caja rectangular de chapa', 'Las cajas de esta línea fueron desarrolladas y mejoradas a partir de propuestas de los clientes y de las nuevas perspectivas del mercado y la construcción. Este modelo resulta una caja de mayor profundidad, con accesos en cabezales para caños de 3/4 y 7/8.Se fabrica en embutido chapa doble decapado y en acabado pintado.', 10, NULL, 2),
(26, 'Corrugado plastico', 'AUTORRECUPERABLE: RECUPERA EL 90% DE SU FORMA AUTOEXTINGUIBLE: NO PROPAGA LA LLAMA APROBADO NORMALIZADO CON TODOS LOS SELLOS COLOR BLANCO CLASIFICACION 2322 (LIVIANO) MARCA: PLASTICOS LAMY SA MODELO: ELVIPLAST SUPER INDUSTRIA ARGENTINA', 400, NULL, 2),
(27, 'Tester Flucke', 'El multímetro digital Fluke 106 fue diseñado para que quepa en la palma de tu mano y vaya contigo a tu trabajo sin importar a dónde sea. Caracteristicas: Voltaje, resistencia, continuidad, capacitancia. Terminal de entrada para ac y dc medidas de corriente hasta 10 A y corriente. Retención de datos', 3500, NULL, 2),
(28, 'Bandeja ranurada de chapa', 'Bandeja Portacable Zinc de 300 mm x 3 Metros, usadas en perfecto estado', 144, NULL, 2),
(29, 'Detector de tension Flucke', 'Detectcion de dos niveles, luz led con una duracion de 100.000horas. detecta hasta 90 vca. De categoria cat iv 600v. El color azul indaca la proximidad a la fuente de tension. Con el rojo indica contacto con la fuente de tension. Led blanco ultabrillante, bombilla 1000000 horas de duracion. temperatura de funcionamiento 0° a 50°.', 1000, NULL, 2),
(30, 'Ar111 hologena', 'LAMPARA HALOSPOT AR 111 12V 50W HALOGENA 2000HS EN 8 Y 24 GRADOS  ZOCALO G53', 50, NULL, 2),
(31, 'Dicroica de 50w', 'Las dicroicas halógenas y los reflectores Philips proporcionan una luz halógena en tonos relucientes y naturales. Estas lámparas halógenas dimerizables están diseñadas para iluminar zonas definidas, lo que crea realces de luz en su hogar', 50, NULL, 2),
(32, 'Master color Phillips', NULL, 500, NULL, 2),
(33, 'Master color 70', 'Lampara Cdm-r111 35w 10º 830 Master Colour Philips', 300, NULL, 2),
(34, 'iHAUS CAMBRE DOMOTICA', '', 5000, NULL, 2),
(35, 'Bobina de fibra optica', 'Cable de 24 Fibras Ópticas monomodo ADSS (Autosoportado)  Soporta Vanos de mas de 100 mts.  Disponemos de Cables de 12 F.O., patchcords, pigtails, ODF.', 1500, NULL, 2),
(36, 'Alicate', 'El alicate o alicates (del árabe al-laqqat, que significa «tenaza») es una herramienta manual cuyos usos van desde sujetar piezas al corte o moldeado de distintos materiales.', 200, NULL, 2),
(37, 'Cinta de aislar 3M 550', 'cinta aisladora 3m. Schott 770 negra de 20 metros. también en color blanco.', 80, NULL, 2),
(38, 'Artefacto Embutir Ar111', 'Aro de axterior y cuerpo fabricado en chapa, Tratado superficialmente con printura en polvo termoconvertible. Puede ser aplicado en local comerciales, clinicas, sanatorios, hall de entrada, pasillos, etc.', 1500, NULL, 3),
(39, 'Artefacto de chapa', 'Artefacto colgante de chapa, varios colores. No incluye lampara, Altura 45cm, Demora de 20 dias entrega.', 500, NULL, 3),
(40, 'Colgante redondo Led', 'Colagante redondo de led, colores aluminio y negro, diamentro de 60 cm, regulable hasta 1.20mt, lumenes 400Lm, provisto con fuente, listo para instalata.', 2500, NULL, 3),
(41, 'Colgante araña', 'Colgante araña de 40 tiras, se puede estirar hasta 3m de diamentro, lamparas de led filamento, no se puede colocar lamparas de 50w', 3400, NULL, 3),
(42, 'Artefacto colgante cristal', 'Artefacto colgante, diseño cristal, altura del artefacto 30cm, lampara bipin, acero en negro y alumino', 5058, NULL, 3),
(43, 'Araña de cristal led', 'Araña de cristal con tensores, ilumiancion con led, altura del artefactos 2m, multiples diseños. Se venden cristales de plastico por serparado para diseñar figuras.', 10000, NULL, 3),
(44, 'Artefactos colgante', 'Artefacto colgante de iluminacion, semi esfera, lampara integrada de led, terminacion de madera laqueada.', 10000, NULL, 3),
(45, 'Velador de madera', 'Velador de madera, distintos formatos, tamaño de 30 cm. lamparas integradas de led.', 400, NULL, 3);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
