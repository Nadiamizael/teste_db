CREATE DATABASE `SPOTIFY`;

USE `spotify`;

CREATE TABLE `musicas`(
`id` int PRIMARY KEY,
`nome` varchar(100),
`duracao` int,
`album_id`  int
);

CREATE TABLE `artista`(
`id` int PRIMARY KEY,
`nome` varchar(100)
);

CREATE TABLE `album`(
`id` int PRIMARY  KEY,
`nome` varchar(100),
`artista_id` int 
);

TRUNCATE TABLE `musicas`;
TRUNCATE TABLE `album`;

SELECT *FROM `musicas`;
SELECT *FROM `album`;
SELECT *FROM `artista`;

ALTER TABLE `musicas` ADD CONSTRAINT `fk_musicas_album` FOREIGN KEY (`album_id`) 
REFERENCES `album` (`id`);

ALTER TABLE `album` ADD CONSTRAINT `fk_album_artista` FOREIGN KEY (`artista_id`)
REFERENCES `artista` (`id`);

INSERT INTO `artista` VALUES (1, "Cássia Eller"), (2, "Vance Joy"), (3, "Seu Jorge");

INSERT INTO `album` VALUES (1, "Cássia Eller Acústico", 1), (2, "Dream your life away", 2), (3, "Ana e Jorge Ao vivo", 3); 

INSERT INTO `musicas` VALUES (1, "De Esquina", 4, 1), (2, "Riptide", 3, 2), (3, "São Gonça", 4, 3);




