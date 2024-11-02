-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-11-2024 a las 16:42:02
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
-- Base de datos: `pra1adiu`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album`
--

CREATE TABLE `album` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `fecha_lanzamiento` date NOT NULL,
  `id_artista` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `album`
--

INSERT INTO `album` (`id`, `nombre`, `fecha_lanzamiento`, `id_artista`) VALUES
(425, '23', '2021-09-09', 285),
(426, '29: Written In Stone', '2021-09-17', 286),
(427, '3 Songs At A Time Sampler', '2023-03-03', 287),
(428, '5 Foot 9', '2023-01-27', 288),
(429, '5 Leaf Clover', '2023-03-24', 289),
(430, 'Angels (Donâ€™t Always Have Wings)', '2023-01-20', 290),
(431, 'Angels in Disguise', '2023-08-04', 291),
(432, 'Bigger in Texas', '2024-04-19', 292),
(433, 'Blacktop', '2023-06-02', 293),
(434, 'Blue In The Sky', '2022-02-11', 294),
(435, 'Bluebird Days', '2023-02-17', 295),
(436, 'Broadway Girls (feat. Morgan Wallen)', '2022-03-10', 296),
(437, 'Brown Eyes Baby', '2022-07-08', 297),
(438, 'Bury Me in Georgia', '2023-03-31', 298),
(439, 'Buy Dirt', '2021-05-21', 295),
(440, 'Call It', '2024-04-12', 299),
(441, 'Closure', '2024-04-19', 300),
(442, 'Dancin\' In The Country', '2023-01-27', 288),
(443, 'Dancin\' In The Moonlight', '2022-05-20', 301),
(444, 'Dancing Slow', '2024-04-12', 302),
(445, 'Dawns (feat. Maggie Rogers)', '2023-01-27', 303),
(446, 'Different Man', '2022-09-09', 298),
(447, 'Different \'Round Here', '2023-10-13', 304),
(448, 'Don\'t Think Jesus', '2022-04-15', 287),
(449, 'Drunk on You', '2024-04-19', 305),
(450, 'Every Night Every Morning', '2022-09-23', 306),
(451, 'Excuse The Mess', '2023-05-19', 307),
(452, 'Fall In Love', '2023-01-11', 308),
(453, 'Flower Shops', '2022-03-11', 309),
(454, 'Get to Gettinâ€™ Gone', '2023-01-11', 308),
(455, 'Gettin\' Old', '2023-03-24', 289),
(456, 'Girl In Mine', '2023-09-22', 310),
(457, 'Giving Up On That', '2023-02-17', 311),
(458, 'Glory Days', '2024-02-02', 312),
(459, 'Good Gone Bad', '2015-06-01', 313),
(460, 'Growin\' Up', '2022-06-24', 289),
(461, 'Gulf Wind', '2024-04-19', 314),
(462, 'Handle On You', '2023-05-12', 315),
(463, 'Heart For A Heart', '2024-04-18', 316),
(464, 'Heartbroken (feat. Jessie Murph & Polo G)', '2023-07-28', 317),
(465, 'Howdy', '2022-12-02', 318),
(466, 'Human The Double Album', '2021-10-08', 319),
(467, 'I Can Feel It', '2023-09-21', 298),
(468, 'If I Didn\'t Love You', '2021-11-12', 320),
(469, 'Into the Storm', '2024-04-12', 321),
(470, 'Last Night Lonely', '2022-09-02', 322),
(471, 'Like I Love Country Music', '2022-05-06', 298),
(472, 'Lipstick On A Beer Can', '2024-03-22', 323),
(473, 'Looking Back Now', '2024-04-12', 324),
(474, 'Looking for You + All Dogs Go to Heaven', '2023-01-13', 325),
(475, 'Love You Again', '2023-06-09', 326),
(476, 'Love You Anyway', '2023-03-24', 289),
(477, 'Lucky', '2023-05-05', 327),
(478, 'Mamaw\'s House', '2023-09-28', 290),
(479, 'Memory Lane', '2023-10-06', 328),
(480, 'Miles Run Out', '2024-04-12', 329),
(481, 'NATE SMITH (DELUXE)', '2023-04-28', 330),
(482, 'Need A Favor', '2023-06-02', 331),
(483, 'Never Enough', '2023-05-12', 315),
(484, 'Nobody\'s Business', '2024-04-12', 332),
(485, 'Nobody\'s Nobody', '2023-09-15', 333),
(486, 'On a Backroad', '2024-04-12', 334),
(487, 'One Thing At A Time', '2023-03-03', 287),
(488, 'One Thing At A Time (Sampler)', '2023-03-03', 287),
(489, 'Out Of That Truck', '2023-09-22', 335),
(490, 'Outskirts', '2023-03-10', 285),
(491, 'P.S.', '2022-07-01', 336),
(492, 'Poets & Old Souls', '2023-03-31', 337),
(493, 'Reckless', '2021-03-19', 338),
(494, 'Red (Taylor\'s Version)', '2021-11-12', 339),
(495, 'Religiously', '2023-01-11', 308),
(496, 'Rock and A Hard Place', '2023-01-11', 308),
(497, 'Rolling Up the Welcome Mat', '2023-02-14', 340),
(498, 'Russell Dickerson', '2022-11-04', 341),
(499, 'Save Me The Trouble, Heartbreak On The Map, Bigger Houses', '2023-07-14', 342),
(500, 'Stereotype', '2022-04-08', 343),
(501, 'Tennessee Orange', '2023-05-05', 327),
(502, 'Tennessee Tuff', '2024-03-22', 344),
(503, 'The Kind of Love We Make', '2022-06-24', 289),
(504, 'the mockingbird & THE CROW', '2023-01-20', 345),
(505, 'The Outlaw Side Of Me', '2023-06-16', 346),
(506, 'The Painter', '2023-11-03', 319),
(507, 'This Town\'s Been Too Good To Us', '2024-03-29', 347),
(508, 'Thought You Should Know', '2023-03-03', 287),
(509, 'Time, Tequila & Therapy', '2021-10-08', 328),
(510, 'TWENTY SOMETHING: Messing It Up', '2023-08-18', 348),
(511, 'Water Under The Bridge', '2022-06-23', 285),
(512, 'What If I Don\'t', '2022-07-22', 349),
(513, 'What My World Spins Around', '2023-02-17', 295),
(514, 'Where We Started', '2022-04-01', 290),
(515, 'Whiskey On You', '2023-04-28', 330),
(516, 'White Horse', '2023-11-10', 350),
(517, 'Whitsitt Chapel', '2023-06-02', 331),
(518, 'Wild as Her', '2023-06-02', 293),
(519, 'You Proof', '2023-03-03', 287),
(520, 'You, Me, And Whiskey', '2023-05-05', 351),
(521, 'Zach Bryan', '2023-08-25', 303);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artista`
--

CREATE TABLE `artista` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `artista`
--

INSERT INTO `artista` (`id`, `nombre`) VALUES
(361, ''),
(348, 'Alana Springsteen'),
(308, 'Bailey Zimmerman'),
(292, 'Bri Fletcher'),
(333, 'Brothers Osborne'),
(337, 'Bryan Martin'),
(305, 'burke.'),
(286, 'Carly Pearce'),
(335, 'Carrie Underwood'),
(326, 'Chase Matthew'),
(346, 'Chris Janson'),
(301, 'Chris Lane'),
(350, 'Chris Stapleton'),
(325, 'Chris Young'),
(318, 'Clayton Johnson'),
(314, 'Clayton Mann'),
(323, 'Cody Bradley'),
(319, 'Cody Johnson'),
(343, 'Cole Swindell'),
(293, 'Corey Kent'),
(311, 'Dalton Dover'),
(342, 'Dan + Shay'),
(332, 'David Payne'),
(317, 'Diplo'),
(294, 'Dustin Lynch'),
(347, 'Dylan Scott'),
(307, 'Ella Langley'),
(309, 'ERNEST'),
(324, 'First Time Flyers'),
(312, 'Gabby Barrett'),
(299, 'Gulf Stream Riders'),
(363, 'Half Of Me'),
(345, 'HARDY'),
(321, 'Jake Simon'),
(320, 'Jason Aldean'),
(331, 'Jelly Roll'),
(358, 'Jessie Murph & Polo G'),
(322, 'Jon Pardi'),
(295, 'Jordan Davis'),
(351, 'Justin Moore'),
(366, 'Kacey Musgraves'),
(300, 'Kaleb Sanders'),
(298, 'Kane Brown'),
(356, 'Katelyn Brown'),
(297, 'Keith Urban'),
(340, 'Kelsea Ballerini'),
(336, 'Kylie Morgan'),
(364, 'Lainey Wilson'),
(354, 'Lauren Alaina'),
(296, 'Lil Durk'),
(353, 'Luke Bryan'),
(289, 'Luke Combs'),
(352, 'MacKenzie Porter'),
(306, 'Maddie & Tae'),
(355, 'Maggie Rogers'),
(316, 'Maya Lane'),
(327, 'Megan Moroney'),
(357, 'Miranda Lambert'),
(362, 'Mitchell Tenpenny'),
(338, 'Morgan Wade'),
(287, 'Morgan Wallen'),
(330, 'Nate Smith'),
(328, 'Old Dominion'),
(315, 'Parker McCollum'),
(310, 'Parmalee'),
(365, 'Priscilla Block'),
(334, 'Richie Allen'),
(304, 'Riley Green'),
(341, 'Russell Dickerson'),
(302, 'Sage Castleberry'),
(285, 'Sam Hunt'),
(349, 'Shaylen'),
(313, 'Sul Ross Band'),
(339, 'Taylor Swift'),
(344, 'Terry Glen Adams'),
(290, 'Thomas Rhett'),
(291, 'Truck Pierce'),
(288, 'Tyler Hubbard'),
(303, 'Zach Bryan'),
(329, 'Zebb Rogers');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cancion`
--

CREATE TABLE `cancion` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `id_album` int(11) NOT NULL,
  `id_artista` int(11) NOT NULL,
  `popularity` int(11) NOT NULL,
  `duration` int(11) NOT NULL,
  `danceability` float NOT NULL,
  `energy` float NOT NULL,
  `llave` int(11) NOT NULL,
  `loudness` float NOT NULL,
  `speechiness` float NOT NULL,
  `acousticness` float NOT NULL,
  `liveness` float NOT NULL,
  `rank` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cancion`
--

INSERT INTO `cancion` (`id`, `nombre`, `id_album`, `id_artista`, `popularity`, `duration`, `danceability`, `energy`, `llave`, `loudness`, `speechiness`, `acousticness`, `liveness`, `rank`) VALUES
(733, '23', 425, 285, 64, 179720, 0.641, 0.78, 3, -5.138, 0.0852, 0.0206, 0.143, 89),
(734, 'What He Didn\'t Do', 426, 286, 67, 191226, 0.628, 0.632, 9, -5.932, 0.0325, 0.257, 0.288, 93),
(735, 'Last Night', 427, 287, 83, 163854, 0.492, 0.673, 6, -5.431, 0.0347, 0.413, 0.137, 4),
(736, 'I Wrote The Book', 427, 287, 68, 181766, 0.686, 0.833, 2, -3.768, 0.0381, 0.0619, 0.0657, 59),
(737, '5 Foot 9', 428, 288, 68, 189773, 0.605, 0.79, 5, -5.576, 0.0454, 0.16, 0.126, 26),
(738, '5 Leaf Clover', 429, 289, 66, 211053, 0.423, 0.58, 1, -4.959, 0.0243, 0.0554, 0.168, 58),
(739, 'Angels (Donâ€™t Always Have Wings)', 430, 290, 54, 200426, 0.527, 0.598, 1, -4.257, 0.0283, 0.063, 0.0913, 28),
(740, 'Angels in Disguise', 431, 291, 37, 273893, 0.493, 0.718, 9, -6.56, 0.0327, 0.221, 0.101, 65),
(741, 'Bigger in Texas', 432, 292, 39, 207824, 0.495, 0.565, 1, -5.943, 0.0342, 0.212, 0.251, 45),
(742, 'Something\'s Gonna Kill Me', 433, 293, 65, 183680, 0.659, 0.823, 4, -5.77, 0.0415, 0.0174, 0.11, 33),
(743, 'Thinking \'Bout You (feat. MacKenzie Porter)', 434, 294, 72, 171626, 0.364, 0.745, 8, -3.293, 0.0596, 0.146, 0.0887, 57),
(744, 'Next Thing You Know', 435, 295, 77, 175226, 0.549, 0.608, 5, -8.253, 0.0481, 0.682, 0.0966, 38),
(745, 'Broadway Girls (feat. Morgan Wallen)', 436, 296, 78, 185600, 0.659, 0.745, 10, -3.599, 0.0347, 0.0417, 0.296, 91),
(746, 'Brown Eyes Baby', 437, 297, 57, 224333, 0.565, 0.823, 8, -4.973, 0.0328, 0.232, 0.0715, 70),
(747, 'Bury Me in Georgia - Single Edit', 438, 298, 54, 170682, 0.391, 0.816, 2, -5.746, 0.066, 0.0169, 0.0893, 37),
(748, 'Buy Dirt', 439, 295, 80, 167480, 0.586, 0.559, 4, -6.725, 0.05, 0.639, 0.0872, 95),
(749, 'Call It', 440, 299, 39, 242500, 0.591, 0.487, 4, -10.133, 0.0269, 0.174, 0.0978, 50),
(750, 'Closure', 441, 300, 50, 175867, 0.686, 0.575, 6, -5.605, 0.0241, 0.802, 0.108, 20),
(751, 'Dancinâ€™ In The Country', 442, 288, 72, 179640, 0.657, 0.871, 7, -4.614, 0.0675, 0.0031, 0.102, 81),
(752, 'Dancin\' In The Moonlight', 443, 301, 54, 199000, 0.59, 0.828, 8, -4.861, 0.0331, 0.0204, 0.126, 90),
(753, 'Dancing Slow', 444, 302, 40, 221887, 0.498, 0.695, 6, -5.831, 0.0333, 0.00995, 0.143, 32),
(754, 'Dawns (feat. Maggie Rogers)', 445, 303, 78, 290892, 0.447, 0.441, 0, -7.658, 0.0456, 0.874, 0.188, 31),
(755, 'Thank God', 446, 298, 71, 174560, 0.738, 0.455, 3, -8.735, 0.0352, 0.695, 0.107, 66),
(756, 'Different \'Round Here', 447, 304, 71, 176000, 0.454, 0.72, 1, -5.999, 0.0319, 0.0000863, 0.128, 21),
(757, 'Don\'t Think Jesus', 448, 287, 58, 226975, 0.578, 0.431, 2, -7.034, 0.0269, 0.469, 0.137, 87),
(758, 'Drunk on You', 449, 305, 37, 203756, 0.446, 0.852, 5, -6.685, 0.0601, 0.00152, 0.19, 77),
(759, 'Every Night Every Morning', 450, 306, 55, 198000, 0.614, 0.778, 7, -4.58, 0.0296, 0.0103, 0.169, 68),
(760, 'Country Boy\'s Dream Girl', 451, 307, 66, 185026, 0.591, 0.787, 8, -4.56, 0.0407, 0.249, 0.11, 47),
(761, 'Fall In Love', 452, 308, 75, 232058, 0.524, 0.643, 9, -6.055, 0.0297, 0.451, 0.221, 86),
(762, 'Flower Shops', 453, 309, 72, 214405, 0.544, 0.459, 7, -5.908, 0.0266, 0.119, 0.0831, 97),
(763, 'Get to Gettinâ€™ Gone', 454, 308, 64, 182465, 0.584, 0.68, 6, -6.781, 0.0351, 0.285, 0.0901, 64),
(764, 'Fast Car', 455, 289, 84, 265493, 0.712, 0.603, 8, -5.52, 0.0262, 0.186, 0.115, 2),
(765, 'Where the Wild Things Are', 455, 289, 83, 239533, 0.708, 0.731, 3, -4.872, 0.0345, 0.0189, 0.129, 34),
(766, 'Girl In Mine', 456, 310, 63, 154733, 0.464, 0.683, 8, -4.238, 0.0439, 0.164, 0.106, 53),
(767, 'Giving Up On That', 457, 311, 50, 211533, 0.484, 0.864, 3, -4.593, 0.0467, 0.0324, 0.0926, 56),
(768, 'Glory Days', 458, 312, 56, 162880, 0.646, 0.776, 7, -5.221, 0.0514, 0.00686, 0.118, 73),
(769, 'Backroad', 459, 313, 36, 228266, 0.471, 0.807, 9, -5.026, 0.0349, 0.159, 0.125, 85),
(770, 'Outrunnin\' Your Memory', 460, 289, 62, 254746, 0.601, 0.836, 1, -3.42, 0.0342, 0.0974, 0.106, 75),
(771, 'Gulf Wind', 461, 314, 39, 209610, 0.539, 0.849, 0, -4.332, 0.0493, 0.0531, 0.083, 55),
(772, 'Handle On You', 462, 315, 67, 219967, 0.591, 0.928, 6, -3.925, 0.0316, 0.00441, 0.291, 72),
(773, 'Heart For A Heart', 463, 316, 44, 194914, 0.558, 0.449, 0, -9.874, 0.0277, 0.518, 0.0853, 12),
(774, 'Heartbroken (feat. Jessie Murph & Polo G)', 464, 317, 69, 204325, 0.67, 0.589, 2, -5.693, 0.0873, 0.379, 0.0942, 14),
(775, 'Howdy', 465, 318, 48, 144426, 0.583, 0.812, 0, -4.964, 0.0358, 0.117, 0.0883, 25),
(776, 'Til You Can\'t', 466, 319, 73, 224213, 0.501, 0.815, 1, -4.865, 0.0436, 0.0513, 0.106, 99),
(777, 'I Can Feel It', 467, 298, 68, 163600, 0.529, 0.866, 3, -5.816, 0.0452, 0.00281, 0.0287, 5),
(778, 'If I Didn\'t Love You', 468, 320, 66, 212893, 0.452, 0.683, 1, -4.829, 0.0337, 0.168, 0.102, 100),
(779, 'Into the Storm', 469, 321, 41, 192158, 0.581, 0.735, 6, -5.098, 0.0333, 0.461, 0.115, 29),
(780, 'Last Night Lonely', 470, 322, 69, 182161, 0.652, 0.813, 6, -2.842, 0.0268, 0.00544, 0.101, 76),
(781, 'Like I Love Country Music', 471, 298, 62, 234340, 0.542, 0.82, 8, -6.073, 0.0432, 0.000682, 0.0561, 80),
(782, 'Lipstick On A Beer Can', 472, 323, 46, 207360, 0.603, 0.688, 7, -6.659, 0.0298, 0.0447, 0.137, 7),
(783, 'Looking Back Now', 473, 324, 40, 224400, 0.585, 0.819, 11, -4.811, 0.0408, 0.145, 0.106, 41),
(784, 'Looking for You', 474, 325, 62, 179973, 0.53, 0.874, 7, -3.594, 0.043, 0.0485, 0.153, 8),
(785, 'Love You Again', 475, 326, 72, 173636, 0.564, 0.823, 10, -5.319, 0.0297, 0.214, 0.432, 49),
(786, 'Love You Anyway', 476, 289, 71, 229626, 0.532, 0.489, 4, -7.419, 0.0311, 0.149, 0.237, 62),
(787, 'I\'m Not Pretty', 477, 327, 72, 181066, 0.573, 0.795, 10, -5.561, 0.0558, 0.129, 0.186, 46),
(788, 'Mamaw\'s House', 478, 290, 68, 187269, 0.559, 0.704, 2, -7.686, 0.0338, 0.0177, 0.0821, 9),
(789, 'Memory Lane', 479, 328, 71, 172480, 0.647, 0.774, 6, -5.136, 0.0362, 0.0185, 0.0849, 6),
(790, 'Miles Run Out', 480, 329, 37, 195846, 0.648, 0.632, 8, -7.619, 0.0441, 0.158, 0.11, 83),
(791, 'World on Fire', 481, 330, 76, 189986, 0.461, 0.887, 11, -4.871, 0.0429, 0.000219, 0.104, 3),
(792, 'Need A Favor', 482, 331, 77, 197400, 0.502, 0.771, 6, -4.246, 0.032, 0.0123, 0.0801, 10),
(793, 'Burn It Down', 483, 315, 67, 233869, 0.461, 0.718, 2, -5.627, 0.0666, 0.139, 0.0968, 24),
(794, 'Nobody\'s Business', 484, 332, 40, 185576, 0.625, 0.55, 0, -6.89, 0.0349, 0.183, 0.187, 36),
(795, 'Nobody\'s Nobody', 485, 333, 59, 189066, 0.577, 0.746, 5, -6.252, 0.0259, 0.0414, 0.119, 23),
(796, 'On a Backroad', 486, 334, 45, 204347, 0.539, 0.57, 8, -9.125, 0.034, 0.122, 0.0985, 17),
(797, 'Ainâ€™t That Some', 487, 287, 79, 158003, 0.64, 0.811, 6, -5.834, 0.0279, 0.00154, 0.105, 16),
(798, 'Thinkinâ€™ Bout Me', 487, 287, 85, 177387, 0.659, 0.789, 3, -5.723, 0.0293, 0.487, 0.115, 35),
(799, 'One Thing At A Time', 488, 287, 86, 181621, 0.621, 0.779, 8, -3.777, 0.0361, 0.216, 0.165, 71),
(800, 'Out Of That Truck', 489, 335, 61, 177400, 0.563, 0.755, 5, -4.504, 0.0253, 0.0134, 0.399, 44),
(801, 'Outskirts', 490, 285, 70, 182706, 0.552, 0.774, 10, -3.685, 0.0401, 0.215, 0.126, 39),
(802, 'If He Wanted To He Would', 491, 336, 68, 174173, 0.655, 0.617, 0, -4.716, 0.026, 0.0998, 0.211, 79),
(803, 'We Ride', 492, 337, 80, 188482, 0.62, 0.706, 3, -4.176, 0.0251, 0.0755, 0.185, 18),
(804, 'Wilder Days', 493, 338, 61, 251293, 0.502, 0.662, 9, -4.041, 0.0293, 0.00322, 0.119, 98),
(805, 'I Bet You Think About Me (feat. Chris Stapleton) (Taylorâ€™s Version) (From The Vault)', 494, 339, 70, 285106, 0.391, 0.715, 0, -4.516, 0.0495, 0.167, 0.183, 96),
(806, 'Religiously', 495, 308, 80, 179294, 0.431, 0.837, 9, -5.067, 0.0432, 0.259, 0.0879, 11),
(807, 'Rock and A Hard Place', 496, 308, 78, 207540, 0.582, 0.568, 1, -7.3, 0.0275, 0.577, 0.105, 30),
(808, 'Mountain With A View', 497, 340, 54, 177920, 0.436, 0.434, 10, -7.153, 0.0502, 0.679, 0.419, 60),
(809, 'God Gave Me A Girl', 498, 341, 57, 187226, 0.518, 0.845, 7, -5.051, 0.0647, 0.249, 0.0764, 52),
(810, 'Save Me The Trouble', 499, 342, 55, 200346, 0.444, 0.629, 9, -4.435, 0.0318, 0.00544, 0.271, 40),
(811, 'She Had Me At Heads Carolina', 500, 343, 73, 206106, 0.607, 0.912, 8, -3.449, 0.0611, 0.124, 0.332, 51),
(812, 'Tennessee Orange', 501, 327, 77, 223119, 0.38, 0.488, 9, -6.637, 0.029, 0.126, 0.115, 63),
(813, 'Tennessee Tuff', 502, 344, 36, 209555, 0.693, 0.768, 8, -7.201, 0.0283, 0.148, 0.336, 78),
(814, 'The Kind of Love We Make', 503, 289, 80, 224426, 0.608, 0.745, 1, -4.13, 0.0277, 0.0226, 0.0942, 48),
(815, 'TRUCK BED', 504, 345, 79, 167534, 0.663, 0.77, 0, -4.88, 0.0371, 0.0876, 0.352, 15),
(816, 'All I Need Is You', 505, 346, 53, 162344, 0.606, 0.757, 1, -6.206, 0.0302, 0.0157, 0.343, 69),
(817, 'The Painter', 506, 319, 75, 211413, 0.512, 0.709, 2, -5.767, 0.0327, 0.0423, 0.107, 13),
(818, 'This Town\'s Been Too Good To Us', 507, 347, 71, 191626, 0.696, 0.555, 11, -7.035, 0.0353, 0.0603, 0.175, 22),
(819, 'Thought You Should Know', 508, 287, 76, 215571, 0.537, 0.701, 6, -6.214, 0.0264, 0.48, 0.145, 94),
(820, 'No Hard Feelings', 509, 328, 57, 191360, 0.636, 0.866, 4, -5.796, 0.0553, 0.243, 0.371, 88),
(821, 'goodbye looks good on you (feat. Mitchell Tenpenny)', 510, 348, 64, 171080, 0.667, 0.671, 1, -4.2, 0.0496, 0.413, 0.0809, 43),
(822, 'Water Under The Bridge', 511, 285, 57, 169760, 0.635, 0.866, 5, -2.695, 0.0473, 0.0697, 0.0955, 74),
(823, 'What If I Don\'t', 512, 349, 56, 201544, 0.524, 0.806, 4, -5.785, 0.0522, 0.0521, 0.189, 42),
(824, 'What My World Spins Around', 513, 295, 74, 186800, 0.686, 0.733, 2, -6.483, 0.0401, 0.111, 0.153, 82),
(825, 'Half Of Me', 514, 290, 67, 183026, 0.575, 0.842, 7, -5.058, 0.0348, 0.00683, 0.279, 84),
(826, 'Whiskey On You', 515, 330, 74, 183786, 0.473, 0.751, 8, -5.196, 0.0318, 0.0000991, 0.118, 54),
(827, 'White Horse', 516, 350, 76, 267893, 0.353, 0.77, 1, -11.066, 0.0493, 0.0016, 0.109, 19),
(828, 'Save Me (with Lainey Wilson)', 517, 331, 74, 237493, 0.564, 0.612, 0, -5.018, 0.0248, 0.382, 0.11, 27),
(829, 'Wild as Her', 518, 293, 70, 201066, 0.5, 0.748, 0, -5.927, 0.0364, 0.00291, 0.112, 92),
(830, 'You Proof', 519, 287, 83, 157477, 0.728, 0.818, 9, -5.068, 0.0329, 0.323, 0.582, 67),
(831, 'You, Me, And Whiskey', 520, 351, 64, 187941, 0.555, 0.88, 0, -4.351, 0.0535, 0.0803, 0.174, 61),
(832, 'I Remember Everything (feat. Kacey Musgraves)', 521, 303, 89, 227195, 0.429, 0.453, 0, -7.746, 0.0459, 0.554, 0.102, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `r_colaborador_cancion`
--

CREATE TABLE `r_colaborador_cancion` (
  `id_artista` int(11) NOT NULL,
  `id_cancion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `r_colaborador_cancion`
--

INSERT INTO `r_colaborador_cancion` (`id_artista`, `id_cancion`) VALUES
(287, 745),
(287, 762),
(287, 788),
(289, 756),
(304, 825),
(335, 778),
(350, 805),
(352, 743),
(353, 748),
(354, 752),
(355, 754),
(356, 755),
(357, 770),
(358, 774),
(362, 821),
(364, 828),
(365, 831),
(366, 832);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `artista`
--
ALTER TABLE `artista`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `cancion`
--
ALTER TABLE `cancion`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`),
  ADD KEY `id_album` (`id_album`),
  ADD KEY `id_artista` (`id_artista`);

--
-- Indices de la tabla `r_colaborador_cancion`
--
ALTER TABLE `r_colaborador_cancion`
  ADD PRIMARY KEY (`id_artista`,`id_cancion`),
  ADD KEY `id_cancion` (`id_cancion`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `album`
--
ALTER TABLE `album`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=522;

--
-- AUTO_INCREMENT de la tabla `artista`
--
ALTER TABLE `artista`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=367;

--
-- AUTO_INCREMENT de la tabla `cancion`
--
ALTER TABLE `cancion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=833;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cancion`
--
ALTER TABLE `cancion`
  ADD CONSTRAINT `cancion_ibfk_1` FOREIGN KEY (`id_album`) REFERENCES `album` (`id`),
  ADD CONSTRAINT `cancion_ibfk_2` FOREIGN KEY (`id_artista`) REFERENCES `artista` (`id`);

--
-- Filtros para la tabla `r_colaborador_cancion`
--
ALTER TABLE `r_colaborador_cancion`
  ADD CONSTRAINT `r_colaborador_cancion_ibfk_1` FOREIGN KEY (`id_artista`) REFERENCES `artista` (`id`),
  ADD CONSTRAINT `r_colaborador_cancion_ibfk_2` FOREIGN KEY (`id_cancion`) REFERENCES `cancion` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
