-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-09-2024 a las 00:05:03
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `starwars`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `naves`
--

CREATE TABLE `naves` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `descripción` text NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `fabricante` varchar(50) NOT NULL,
  `longitud` decimal(11,2) NOT NULL,
  `velocidad_maxima` int(11) NOT NULL,
  `armamento` varchar(50) NOT NULL,
  `capacidad` int(11) NOT NULL,
  `img` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `naves`
--

INSERT INTO `naves` (`id`, `nombre`, `descripción`, `tipo`, `fabricante`, `longitud`, `velocidad_maxima`, `armamento`, `capacidad`, `img`) VALUES
(1, 'Millennium Falcon', 'El Millennium Falcon es una nave Corelliana modificada, famosa por su velocidad y maniobrabilidad. Piloteada por Han Solo y Chewbacca, esta nave ha jugado un papel crucial en muchas de las principales batallas de la Guerra Civil Galáctica, incluyendo la destrucción de ambas Estrellas de la Muerte. Con su hipermotor mejorado y cañones láser dobles, es una de las naves más rápidas y versátiles de la galaxia.\r\n', 'Carguero ligero YT-1300', 'Corellian Engineering Corporat', 34.75, 1050, 'Cañones láser', 6, 'falcon.webp\r\n'),
(2, 'X-Wing ', 'El X-Wing  es el principal caza estelar de la Alianza Rebelde, conocido por su forma de ala en X y su capacidad de operar en casi cualquier entorno. Equipado con cuatro cañones láser y torpedos de protones, el X-Wing es altamente maniobrable y ha sido instrumental en muchas victorias rebeldes, incluyendo la Batalla de Yavin donde destruyó la primera Estrella de la Muerte.\r\n', 'Caza estelar', 'Incom Corporation', 12.50, 1050, 'Cañones láser', 1, 'X-Wing.webp\r\n'),
(3, 'TIE Fighter', 'El TIE Fighter es el caza estelar más común del Imperio Galáctico. Su diseño distintivo, con paneles solares hexagonales y un cockpit central, lo hace fácilmente reconocible. Aunque carece de escudos y es vulnerable en combate, su velocidad y producción en masa lo convierten en una herramienta efectiva para mantener el control imperial sobre la galaxia.\r\n', 'Caza estelar', 'Sienar Fleet Systems', 6.30, 1200, 'Cañones láser', 1, 'tie.jpg\r\n'),
(4, 'Slave I', 'Slave I es la nave personal de Boba Fett, un cazarrecompensas notorio. Originalmente diseñada como una nave patrullera, ha sido modificada con armamento pesado y equipos de rastreo avanzados. Su diseño único le permite moverse en cualquier dirección durante el vuelo, y ha sido utilizada en numerosas misiones peligrosas por su dueño.\r\n', 'Nave de patrulla clase Firespr', 'Kuat Systems Engineering', 21.50, 1000, 'Misiles', 1, 'slave1.jpg\r\n'),
(5, 'Imperial Star Destroyer', 'El Imperial Star Destroyer es la columna vertebral de la flota del Imperio Galáctico. Estas enormes naves de guerra son capaces de llevar a cabo ataques planetarios y enfrentarse a flotas enteras. Armados con turbolásers y capaces de transportar tropas, cazas TIE y otros vehículos, los Destructores Estelares representan el poderío militar del Imperio.\r\n', 'Crucero de guerra', 'Kuat Drive Yards', 1600.50, 975, 'Rayos tractores', 47000, 'imperial.jpg\r\n'),
(6, 'A-Wing', 'El A-Wing es uno de los cazas estelares más rápidos de la galaxia, utilizado por la Alianza Rebelde para misiones de intercepción y ataques rápidos. Su diseño aerodinámico y sus potentes motores lo hacen altamente maniobrable, aunque su armamento y blindaje son limitados. Es especialmente efectivo en combates de alta velocidad.\r\n', 'Caza estelar', 'Alliance Underground Engineeri', 9.60, 1300, 'Cañones láser', 1, 'a-wing.jpg\r\n'),
(7, 'B-Wing', 'El B-Wing es un caza-bombardero avanzado utilizado por la Alianza Rebelde. Diseñado para atacar grandes naves de guerra, está equipado con cañones láser, iones y torpedos de protones. Su diseño inusual, con un ala principal que gira alrededor del cockpit, le da una ventaja táctica única en combate.\r\n', 'Caza-bombardero', 'Slayn & Korpil', 16.90, 950, 'Torpedos de protones', 1, 'b-wing.jpg\r\n'),
(8, 'Y-Wing', 'El Y-Wing es un bombardero robusto y resistente utilizado por la Alianza Rebelde. Aunque más lento que otros cazas, es altamente efectivo en ataques contra grandes naves y estaciones espaciales. Equipado con cañones láser, torpedos de protones y bombas de iones, ha sido crucial en muchas operaciones de la Rebelión.\r\n', 'Bombardero', 'Koensayr Manufacturing', 16.90, 1000, 'Bombas de iones', 2, 'Y-Wing.webp'),
(9, 'TIE Interceptor', 'El TIE Interceptor es una variante mejorada del TIE Fighter, diseñada para ser más rápida y mortal. Con sus alas en forma de cuchilla y cañones láser adicionales, el Interceptor es una de las naves más temidas en la flota imperial. Su velocidad superior le permite superar a la mayoría de los cazas rebeldes en combate.\r\n', 'Caza estelar', 'Sienar Fleet Systems', 9.60, 1250, 'Cañones láser cuádruples', 1, 'tie-intercep.webp\r\n'),
(10, 'Naboo N-1 Starfighter', 'El N-1 Starfighter es un caza estelar utilizado por la fuerza de defensa de Naboo. Con su diseño elegante y armamento eficiente, ha demostrado ser eficaz tanto en combates espaciales como en la defensa planetaria. Esta nave fue utilizada notablemente durante la Batalla de Naboo, donde jugó un papel importante en la victoria sobre la Federación de Comercio.', 'Caza estelar', 'Theed Palace Space Vessel Engineering Corps', 11.00, 1100, 'Cañones láser', 1, 'naboo.webp\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peliculas`
--

CREATE TABLE `peliculas` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `episodio` int(11) NOT NULL,
  `director` varchar(50) NOT NULL,
  `año_estreno` date NOT NULL,
  `duración` time NOT NULL,
  `imagen` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personajes`
--

CREATE TABLE `personajes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `descripción` text NOT NULL,
  `especie` varchar(30) NOT NULL,
  `afiliación` varchar(30) NOT NULL,
  `planeta_natal` varchar(30) NOT NULL,
  `habilidades` varchar(50) NOT NULL,
  `arma` varchar(30) NOT NULL,
  `actor` varchar(30) NOT NULL,
  `imagen` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `personajes`
--

INSERT INTO `personajes` (`id`, `nombre`, `descripción`, `especie`, `afiliación`, `planeta_natal`, `habilidades`, `arma`, `actor`, `imagen`) VALUES
(1, 'Luke Skywalker', 'Luke Skywalker es un caballero Jedi legendario que desempeñó un papel fundamental en la derrota del Imperio Galáctico. Nacido como el hijo de Anakin Skywalker y Padmé Amidala, Luke fue criado en el planeta desértico Tatooine. Con el tiempo, se convirtió en un poderoso Jedi bajo la tutela de Obi-Wan Kenobi y Yoda, luchando contra su propio padre, Darth Vader, y el Emperador Palpatine para restaurar la paz en la galaxia.', 'Humano', 'Rebel Alliance', 'Tatooine', 'Uso de la Fuerza', 'Sable de luz', 'Mark Hamill', 'luke-skywalker.webp'),
(2, 'Darth Vader', 'Darth Vader, antes conocido como Anakin Skywalker, fue un Jedi prodigioso que sucumbió al lado oscuro de la Fuerza. Como aprendiz del Emperador Palpatine, se convirtió en uno de los más temidos señores Sith de la galaxia. A pesar de su caída, la redención de Vader llegó a través de su hijo, Luke, a quien ayudó a destruir al Emperador antes de morir, cumpliendo la profecía que lo había destinado a traer equilibrio a la Fuerza.', 'Humano', 'Imperio Galáctico', 'Tatooine', 'Combate con sable de luz ', 'Sable de luz', 'James Earl Jones', 'darth-vader.webp'),
(3, 'Leia Organa', 'Leia Organa es la princesa de Alderaan y una líder clave en la Alianza Rebelde. Como hija de Anakin Skywalker y hermana gemela de Luke, Leia es también fuerte en la Fuerza, aunque fue entrenada principalmente como diplomática y estratega. Su valentía y determinación fueron cruciales en la lucha contra el Imperio, y posteriormente, en la resistencia contra la Primera Orden. También es conocida por su espíritu indomable y sus habilidades como comandante.', 'Humano', 'Rebel Alliance', 'Alderaan', 'Diplomacia', 'Blaster', 'Carrie Fisher', 'leia.webp'),
(4, 'Han Solo', 'Han Solo es un contrabandista que se unió a la Rebelión tras ser convencido por Luke y Leia. Pilotando el icónico Halcón Milenario junto a su leal compañero Wookiee, Chewbacca, Han jugó un papel vital en la destrucción de la Estrella de la Muerte y en la victoria contra el Imperio. A pesar de su actitud inicialmente cínica, Han demostró ser un héroe con un gran corazón, y eventualmente se convirtió en el esposo de Leia Organa y padre de Ben Solo.\r\n', 'Humano', 'Rebel Alliance', 'Corellia', 'Pilotaje', 'Blaster', 'Harrison Ford', 'han.webp'),
(5, 'Yoda', 'Yoda es uno de los maestros Jedi más sabios y poderosos en la historia de la Orden Jedi. Durante siglos, Yoda formó a generaciones de Jedi en el uso de la Fuerza, y fue una figura central en los acontecimientos que llevaron a la caída de la República y la ascensión del Imperio. Aunque pequeño en tamaño, Yoda es temido por sus enemigos y respetado por sus aliados por su dominio de la Fuerza y su habilidad en el combate con sable de luz.\r\n', 'Yoda\'s species', 'Orden Jedi', 'Desconocido', 'Uso de la Fuerza', 'Sable de luz', 'Frank Oz', 'yoda.webp'),
(6, 'Obi-Wan Kenobi', 'Obi-Wan Kenobi es un legendario Maestro Jedi, conocido por su papel en la formación de Anakin Skywalker y posteriormente de su hijo, Luke. Nacido en el planeta Stewjon, Obi-Wan fue un fiel seguidor del Código Jedi, pero también mostró compasión y sabiduría más allá de lo común. Su duelo final con Anakin lo llevó al exilio en Tatooine, donde vigiló a Luke hasta que llegó el momento de entrenarlo en los caminos de la Fuerza.', 'Humano', 'Orden Jedi', 'Stewjon', 'Combate con sable de luz', 'Sable de luz', 'Ewan McGregor', 'obi-wan.webp\r\n'),
(7, 'Darth Sidious', 'Sheev Palpatine, también conocido como el Emperador, fue el Señor Oscuro de los Sith que manipuló la política galáctica para destruir la República y establecer el Imperio Galáctico. Palpatine fue maestro de Darth Vader y fue responsable de la casi extinción de los Jedi. Su astucia y poder en el lado oscuro de la Fuerza lo convirtieron en uno de los villanos más peligrosos de la galaxia, hasta su eventual derrota a manos de su aprendiz redimido, Vader, y el joven Jedi Luke Skywalker.', 'Humano', 'Imperio Galáctico', 'Naboo', ' Manipulación política', 'Rayos de Fuerza', 'Ian McDiarmid', 'sidious.webp\r\n'),
(8, 'Chewbacca', 'Chewbacca, un Wookiee del planeta Kashyyyk, es el fiel copiloto y amigo de Han Solo. Conocido por su gran fuerza física y su lealtad inquebrantable, Chewbacca ha sido un valioso miembro de la Alianza Rebelde, participando en misiones cruciales para la liberación de la galaxia. Aunque no habla el idioma común, su capacidad para entender a sus amigos humanos y su habilidad en combate lo convierten en un aliado invaluable.\r\n', 'Wookiee', 'Rebel Alliance', 'Kashyyyk', ' Pilotaje', 'Ballesta láser', 'Peter Mayhew', 'chewbacca.webp\r\n'),
(9, 'R2-D2', 'R2-D2 es un droide astromecánico altamente ingenioso y valiente que ha sido testigo de muchos de los eventos más importantes en la historia galáctica. Desde servir a la Reina Amidala hasta ayudar en la destrucción de la Estrella de la Muerte, R2-D2 ha demostrado ser un héroe en numerosas ocasiones. Su habilidad para interactuar con sistemas tecnológicos y su lealtad a sus dueños lo han convertido en uno de los droides más confiables de la galaxia.\r\n', 'Droide', 'Rebel Alliance', 'Desconocido', 'Reparación de naves', 'N/A', 'Kenny Baker', 'rd-d2.webp\r\n'),
(10, 'C-3PO', 'C-3PO es un droide de protocolo especializado en traducción y etiqueta, conocido por su fluidez en más de seis millones de formas de comunicación. Aunque a menudo es visto como nervioso y preocupado, C-3PO ha sido crucial en muchas misiones diplomáticas y de combate. A lo largo de los años, ha acompañado a figuras clave de la Alianza Rebelde y de la resistencia, y ha demostrado ser un miembro invaluable en la lucha por la libertad galáctica.\r\n', 'Droide', 'Rebel Alliance', 'Tatooine', 'Protocolo ', 'N/A', 'Anthony Daniels', 'c3po.webp\r\n'),
(11, 'Lando Calrissian', 'Lando Calrissian es un astuto contrabandista y empresario que, tras una vida de aventuras, se convierte en el administrador de Ciudad Nube en Bespin. Originalmente un personaje con inclinaciones cuestionables, Lando redimió su carácter uniéndose a la Rebelión y jugando un papel clave en la batalla de Endor que resultó en la derrota del Imperio. Su encanto y habilidad para pilotar lo hicieron un aliado valioso para los rebeldes.\r\n', 'Humano', 'Rebel Alliance', 'Socorro', ' Liderazgo', 'Blaster', 'Billy Dee Williams', 'lando.webp\r\n'),
(12, 'Boba Fett', 'Boba Fett es un cazarrecompensas notorio, clon del infame cazarrecompensas Jango Fett. Criado y entrenado para ser un guerrero letal, Boba se convirtió en uno de los cazarrecompensas más temidos de la galaxia, trabajando para el Imperio y el crimen organizado. A pesar de su aparente muerte en el Sarlacc, Boba regresó para reclamar su lugar en la galaxia, demostrando ser un sobreviviente nato.\r\n', 'Humano (Clon)', 'Independiente', 'Kamino', 'Cazarecompenza', 'Blaster', 'Temuera Morrison', 'boba.webp\r\n'),
(13, 'Rey', 'Rey es una joven chatarreara del planeta Jakku que descubre su conexión con la Fuerza y su linaje como nieta del Emperador Palpatine. A lo largo de su viaje, Rey se entrena como Jedi y lucha contra la Primera Orden, eventualmente redimiendo a Kylo Ren y restaurando la paz en la galaxia. Su coraje, determinación y habilidad con el sable de luz la convierten en una de las heroínas más importantes de la nueva era de la galaxia.\r\n', 'Humano', 'Orden Jedi', 'Jakku', 'Combate con sable de luz', 'Sable de luz', 'Daisy Ridley', 'rey.webp\r\n'),
(14, 'Kylo Ren', 'Kylo Ren, nacido como Ben Solo, es el hijo de Leia Organa y Han Solo, y nieto de Darth Vader. Tentado por el lado oscuro, Kylo se convirtió en el líder de la Primera Orden bajo la tutela del Líder Supremo Snoke. A pesar de sus esfuerzos por destruir su legado familiar, Kylo Ren finalmente es redimido por Rey, sacrificando su vida para salvarla y cumpliendo su destino de redimir la oscuridad que lo consumía.', 'Humano', 'Primera Orden', 'Chandrila', 'Combate con sable de luz', 'Sable de luz', 'Adam Driver', 'kylo.webp\r\n'),
(15, 'Padmé Amidala', 'Padmé Amidala es la Reina de Naboo y una de las senadoras más importantes de la República Galáctica. Conocida por su compasión y su dedicación a la paz, Padmé desempeñó un papel vital en los eventos que llevaron al surgimiento del Imperio. Aunque profundamente enamorada de Anakin Skywalker, la tragedia de su vida fue su incapacidad para salvarlo de su caída al lado oscuro. Su legado vive a través de sus hijos, Luke y Leia.\r\n', 'Humano', 'República Galáctica', 'Naboo', 'Diplomacia', 'Blaster', 'Natalie Portman', 'padme.webp\r\n'),
(16, 'Qui-Gon Jinn', 'Qui-Gon Jinn fue un Maestro Jedi no ortodoxo, conocido por su enfoque poco convencional hacia la Fuerza y su creencia en las profecías Jedi. Fue el descubridor de Anakin Skywalker, a quien creyó que era el Elegido destinado a traer equilibrio a la Fuerza. Aunque fue asesinado por Darth Maul, su legado vivió a través de su aprendiz, Obi-Wan Kenobi, y el entrenamiento de Anakin, que influiría en el destino de la galaxia.\r\n', 'Humano', 'Orden Jedi', 'Coruscant', 'Combate con sable de luz', 'Sable de luz', 'Liam Neeson', 'qui.webp\r\n'),
(17, 'Mace Windu', 'Mace Windu fue uno de los miembros más destacados del Consejo Jedi, conocido por su sabiduría y habilidad en el combate. Con su característico sable de luz púrpura, Mace fue un maestro espadachín y un líder respetado dentro de la Orden. Fue uno de los pocos Jedi que desafió abiertamente al Canciller Palpatine, lo que lo llevó a un fatídico enfrentamiento que resultó en su muerte y el inicio de la purga Jedi.\r\n', 'Humano', 'Orden Jedi ', 'Haruun Kal ', 'Combate con sable de luz ', 'Sable de luz ', 'Samuel L. Jackson ', 'windu.webp\r\n'),
(18, 'Jar Jar Binks', 'Jar Jar Binks es un Gungan del planeta Naboo, conocido por su torpeza pero también por su corazón bondadoso. Aunque inicialmente no fue tomado en serio, Jar Jar desempeñó un papel inesperadamente importante en la formación del Imperio Galáctico al proponer darle poderes de emergencia al Canciller Palpatine. A pesar de las críticas, Jar Jar siguió siendo leal a la República y a sus amigos hasta el final.\r\n', 'Gungan', 'República Galáctica', 'Naboo', 'N/A', 'N/A', 'Ahmed Best', 'jar-jar.webp\r\n'),
(19, 'Darth Maul', 'Darth Maul fue el primer aprendiz de Darth Sidious y uno de los guerreros Sith más temidos de la galaxia. Con su característico sable de luz doble y su dominio del combate, Maul casi destruyó a la Orden Jedi al asesinar al Maestro Qui-Gon Jinn. Aunque se creyó que había muerto, Maul sobrevivió a su derrota y continuó sembrando el caos en la galaxia, persiguiendo venganza contra Obi-Wan Kenobi y los Jedi.\r\n', 'Zabrak ', 'Imperio Galáctico', ' Dathomir ', 'Combate con sable de luz', 'Sable de luz ', 'Ray Park  ', 'maul.webp\r\n'),
(20, 'Ahsoka Tano', 'Ahsoka Tano fue la aprendiz de Anakin Skywalker, conocida por su espíritu independiente y su habilidad con los sables de luz. Aunque inicialmente comenzó como una joven impulsiva, Ahsoka maduró para convertirse en una formidable guerrera y líder. Después de abandonar la Orden Jedi, Ahsoka continuó luchando por la justicia durante la Guerra Civil Galáctica, y eventualmente se convirtió en una figura clave en la lucha contra el Imperio.', 'Togruta', 'Orden Jedi', 'Shili', 'Combate con sable de luz', 'Sable de luz', 'Rosario Dawson', 'ashoka.webp\r\n'),
(21, 'Jyn Erso', 'Jyn Erso fue una líder rebelde que desempeñó un papel crucial en la obtención de los planos de la Estrella de la Muerte, lo que permitió a la Alianza Rebelde destruir la superarma del Imperio. Hija del científico Galen Erso, Jyn pasó gran parte de su vida como una fugitiva antes de unirse a la Rebelión. Su valentía y sacrificio en la batalla de Scarif inspiraron a la galaxia a luchar por la libertad.\r\n', 'Humano', 'Rebel Alliance', 'Vallt', 'Liderazgo', 'Blaster', 'Felicity Jones', 'jyn.webp\r\n'),
(22, 'Grogu', 'Grogu, también conocido como \"El Niño\", es un joven de la misma especie que el Maestro Yoda. Aunque es pequeño y adorable, Grogu posee una conexión poderosa con la Fuerza, lo que lo convierte en un objetivo para aquellos que buscan explotar sus habilidades. Rescatado por el Mandaloriano Din Djarin, Grogu viaja con él mientras busca a otros Jedi que puedan entrenarlo y protegerlo de los peligros que enfrenta en una galaxia dividida.\r\n', 'Yoda\\\'s species', 'Independiente', 'Desconocido', 'Uso de la Fuerza', 'N/A', 'Animatrónico', 'grogu.webp\r\n'),
(23, 'Stormtroopers', 'Los Stormtroopers son las tropas de asalto del Imperio Galáctico, conocidas por su armadura blanca y su lealtad inquebrantable a la causa imperial. Aunque son numerosos y entrenados para el combate, los Stormtroopers son a menudo vistos como soldados de infantería sin rostro, utilizados para imponer la voluntad del Emperador en toda la galaxia. A pesar de su fama de ser imprecisos en combate, su presencia es temida en los sistemas estelares bajo el control imperial.\r\n', 'Humano', 'Imperio Galáctico', 'Varios', 'Entrenamiento militar', 'Blaster', 'Varios actores', 'storm.webp\r\n'),
(24, 'Cassian Andor', 'Cassian Andor es un oficial de inteligencia de la Alianza Rebelde, conocido por su capacidad para operar en misiones encubiertas y su dedicación a la causa rebelde. Antes de unirse a la Rebelión, Cassian luchó contra el Imperio de diversas maneras, desarrollando una moralidad flexible que lo llevó a tomar decisiones difíciles. Su papel fue clave en la misión para robar los planos de la Estrella de la Muerte, sacrificando su vida por la libertad de la galaxia.\r\n', 'Humano', 'Rebel Alliance', 'Fest', 'Espionaje', 'Blaster', 'Diego Luna', 'andor.webp\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sables`
--

CREATE TABLE `sables` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `descripción` text NOT NULL,
  `color` varchar(30) NOT NULL,
  `propietario` varchar(30) NOT NULL,
  `afiliación` varchar(30) NOT NULL,
  `cristal` varchar(30) NOT NULL,
  `imagen` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `naves`
--
ALTER TABLE `naves`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `personajes`
--
ALTER TABLE `personajes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sables`
--
ALTER TABLE `sables`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `naves`
--
ALTER TABLE `naves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `personajes`
--
ALTER TABLE `personajes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `sables`
--
ALTER TABLE `sables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
