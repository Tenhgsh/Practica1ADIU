
CREATE TABLE ARTISTA(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE ALBUM( 
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255) NOT NULL,
    fecha_lanzamiento DATE NOT NULL,
    id_artista INT NOT NULL REFERENCES ARTISTA(id)
);

CREATE TABLE CANCION (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255) NOT NULL UNIQUE,
    id_album INT NOT NULL,
    FOREIGN KEY (id_album) REFERENCES ALBUM(id),
    id_artista INT NOT NULL,
    FOREIGN KEY (id_artista) REFERENCES ARTISTA(id),
    popularity INT NOT NULL,
    duration INT NOT NULL,
    danceability FLOAT NOT NULL,
    energy FLOAT NOT NULL,
    llave INT NOT NULL,
    loudness FLOAT NOT NULL,
    speechiness FLOAT NOT NULL,
    acousticness FLOAT NOT NULL,
    liveness FLOAT NOT NULL,
    rank INT NOT NULL
);


CREATE TABLE R_COLABORADOR_CANCION (
    id_artista INT NOT NULL,
    id_cancion INT NOT NULL,
    PRIMARY KEY(id_artista,id_cancion),
    FOREIGN KEY (id_artista) REFERENCES ARTISTA(id),
    FOREIGN KEY (id_cancion) REFERENCES CANCION(id)
);

$loop+
Insert into cancion(rank,nombre,popularity, duration, id_artista,
 popularity,duration,danceability,energy,llave,
 loudness,speechiness,acousticness,liveness,rank,
id_album,id_artista
) 
Values ('$0',$1,(SELECT id FROM ARTISTA WHERE nombre='$2'),
(SELECT id FROM ALBUM WHERE nombre='$3'),$4,$5,$6,$7,$8,$9,$10);

INSERT INTO `album` (`id`, `nombre`, `fecha_lanzamiento`, `id_artista`) VALUES
(1, '23', '2021-09-09', 44),
(2, '29: Written In Stone', '2021-09-17', 45),
(3, '3 Songs At A Time Sampler', '2023-03-03', 46),
(4, '5 Foot 9', '2023-01-27', 47),
(5, '5 Leaf Clover', '2023-03-24', 48),
(6, 'American Heartbreak', '2022-05-20', 60),
(7, 'Boys Like Trucks', '2023-04-14', 50),
(8, 'Country Stuff The Album', '2022-01-28', 49),
(9, 'Dawns (feat. Maggie Rogers)', '2023-01-27', 60),
(10, 'Didn\'t Have to Die', '2022-12-20', 51),
(11, 'Different Kinda Fine', '2022-08-05', 52),
(12, 'Drag Me Down', '2022-11-17', 57),
(13, 'Get Outta My Head', '2022-03-25', 54),
(14, 'Giving You Up', '2022-02-18', 63),
(15, 'If I Didn\'t Love You', '2022-01-14', 70),
(16, 'Love You Anyway', '2023-03-30', 48),
(17, 'One Thing At A Time', '2023-03-03', 46),
(18, 'Outrunnin\' Your Memory', '2022-05-20', 48),
(19, 'Party Mode', '2022-03-04', 53),
(20, 'Single Than She Looks', '2022-04-22', 62);


INSERT INTO `artista` (`id`, `nombre`) VALUES
(63, 'Bailey Zimmerman'),
(51, 'Bri Fletcher'),
(83, 'Brothers Osborne'),
(45, 'Carly Pearce'),
(71, 'Carrie Underwood'),
(74, 'Chris Lane'),
(77, 'Chris Young'),
(76, 'Clayton Johnson'),
(72, 'Clayton Mann'),
(80, 'Cody Bradley'),
(52, 'Corey Kent'),
(68, 'Dalton Dover'),
(53, 'Dustin Lynch'),
(69, 'Ella Langley'),
(64, 'ERNEST'),
(79, 'First Time Flyers'),
(65, 'Gabby Barrett'),
(78, 'Jake Simon'),
(70, 'Jason Aldean'),
(81, 'Jelly Roll'),
(55, 'Jordan Davis'),
(62, 'Kaleb Sanders'),
(58, 'Kane Brown'),
(57, 'Keith Urban'),
(75, 'Lauren Alaina'),
(56, 'Lil Durk'),
(48, 'Luke Combs'),
(54, 'MacKenzie Porter'),
(59, 'Maddie & Tae'),
(46, 'Morgan Wallen'),
(82, 'Nate Smith'),
(73, 'Parker McCollum'),
(67, 'Parmalee'),
(84, 'Richie Allen'),
(61, 'Sage Castleberry'),
(44, 'Sam Hunt'),
(66, 'Sul Ross Band'),
(49, 'Thomas Rhett'),
(50, 'Truck Pierce'),
(47, 'Tyler Hubbard'),
(60, 'Zach Bryan');



INSERT INTO cancion(`id`, `nombre`, `id_album`, `id_artista`, `popularity`, `duration`, `danceability`, `energy`, `llave`, `loudness`, `speechiness`, `acousticness`, `liveness`, `rank`) VALUES (NULL,'',(SELECT id FROM ARTISTA WHERE nombre='Sam Hunt'),(SELECT id FROM ALBUM WHERE nombre='23'),'64','179720','0.641','0.78,3','-5.138','0.0852','0.0206','0.143','6','6')