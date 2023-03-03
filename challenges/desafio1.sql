DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE IF NOT EXISTS SpotifyClone;

CREATE TABLE SpotifyClone.planos(
    id_plano INT NOT NULL PRIMARY KEY,
    plano_tipo VARCHAR(45) NOT NULL,
    valor DECIMAL(5,2) NOT NULL
) engine = InnoDB;

CREATE TABLE SpotifyClone.artista(
    id_artista INT NOT NULL PRIMARY KEY,
    nome_artista VARCHAR(45) NOT NULL
) engine = InnoDB;

CREATE TABLE SpotifyClone.usuario(
    id_usuario INT NOT NULL PRIMARY KEY,
    nome VARCHAR(70) NOT NULL,
    idade INT NOT NULL,
    id_plano INT NOT NULL,
    data_ass_plano DATE NOT NULL,
    FOREIGN KEY (id_plano) REFERENCES SpotifyClone.planos (id_plano)
) engine = InnoDB;


CREATE TABLE SpotifyClone.album(
    id_album INT NOT NULL PRIMARY KEY,
    alb_nome VARCHAR(45) NOT NULL,
    alb_year YEAR NOT NULL,
    id_artista INT NOT NULL,
    FOREIGN KEY (id_artista) REFERENCES SpotifyClone.artista (id_artista)
) engine = InnoDB;

CREATE TABLE SpotifyClone.cancoes(
    id_cancoes INT NOT NULL PRIMARY KEY,
    nome_cancao VARCHAR(70) NOT NULL,
    duracao INT NOT NULL,
    id_album INT NOT NULL,
    FOREIGN KEY (id_album) REFERENCES SpotifyClone.album (id_album)
) engine = InnoDB;

CREATE TABLE SpotifyClone.reproducoes(
    -- id_reproducoes INT AUTO_INCREMENT PRIMARY KEY ,
    id_cancao INT NOT NULL,
    data_reprod DATETIME NULL,
    id_usuario INT NOT NULL,
    CONSTRAINT PRIMARY KEY (id_usuario, id_cancao),
    FOREIGN KEY (id_usuario) REFERENCES SpotifyClone.usuario (id_usuario),
    FOREIGN KEY (id_cancao) REFERENCES SpotifyClone.cancoes (id_cancoes)
) engine = InnoDB;

CREATE TABLE SpotifyClone.seguindo(
    -- id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    artista INT NOT NULL,
    seguidor INT NOT NULL,
    CONSTRAINT PRIMARY KEY (artista, seguidor),
    FOREIGN KEY (artista) REFERENCES SpotifyClone.artista (id_artista),
    FOREIGN KEY (seguidor) REFERENCES SpotifyClone.usuario (id_usuario)
) engine = InnoDB;

INSERT INTO SpotifyClone.planos (id_plano, plano_tipo, valor)
VALUES
	(1, 'gratuito', 0.00),
	(2, 'familiar', 7.99),
	(3, 'universitário', 5.99),
	(4, 'pessoal', 6.99);

INSERT INTO SpotifyClone.usuario (id_usuario, nome, idade, id_plano, data_ass_plano)
VALUES
(1, 'Barbara Liskov', 82, 1, '2019-10-20'),
(2, 'Robert Cecil Martin', 58, 1, '2017-01-06'),
(3, 'Ada Lovelace', 37, 2, '2017-12-30'),
(4, 'Martin Fowler', 46, 2, '2017-01-17'),
(5, 'Sandi Metz', 58, 2, '2018-04-29'),
(6, 'Paulo Freire', 19, 3, '2018-02-14'),
(7, 'Bell Hooks', 26, 3, '2018-01-05'),
(8, 'Christopher Alexander', 85, 4, '2019-06-05'),
(9, 'Judith Butler', 45, 4, '2020-05-13'),
(10, 'Jorge Amado', 58, 4, '2017-02-17');

INSERT INTO SpotifyClone.artista (id_artista, nome_artista)
VALUES
	(1, 'Beyoncé'),
	(2, 'Queen'),
	(3, 'Elis Regina'),
	(4, 'Baco Exu do Blues'),
	(5, 'Blind Guardian'),
	(6, 'Nina Simone');

INSERT INTO SpotifyClone.album (id_album, alb_nome, id_artista, alb_year)
VALUES
	(1, 'Renaissance', 1, '2022'),
	(2, 'Jazz', 2, '1978'),
	(3, 'Hot Space', 2, '1982'),
	(4, 'Falso Brilhante', 3, '1998'),
	(5, 'Vento de Maio', 3, '2001'),
	(6, 'QVVJFA?', 4, '2003'),
	(7, 'Somewhere Far Beyond', 5, '2007'),
	(8, 'I Put A Spell On You', 6, '2012');
    
    INSERT INTO SpotifyClone.cancoes (id_cancoes, nome_cancao, id_album, duracao)
VALUES
	(1, 'BREAK MY SOUL', 1, 279),
	(2, 'VIRGO’S GROOVE', 1, 369),
	(3, 'ALIEN SUPERSTAR', 1, 116),
	(4, 'Don’t Stop Me Now', 2, 203),
	(5, 'Under Pressure', 3, 152),
	(6, 'Como Nossos Pais', 4, 105),
	(7, 'O Medo de Amar é o Medo de Ser Livre', 5, 207),
	(8, 'Samba em Paris', 6, 267),
	(9, 'The Bard’s Song', 7, 244),
	(10, 'Feeling Good', 8, 100);
    
    INSERT INTO SpotifyClone.reproducoes (id_usuario, id_cancao, data_reprod)
VALUES
	(1, 8, '2022-02-28 10:45:55'),
	(1, 2, '2020-05-02 05:30:35'),
	(1, 10, '2020-03-06 11:22:33'),
	(2, 10, '2022-08-05 08:05:17'),
	(2, 7, '2020-01-02 07:40:33'),
	(3, 10, '2020-11-13 16:55:13'),
	(3, 2, '2020-12-05 18:38:30'),
	(4, 8, '2021-08-15 17:10:10'),
	(5, 8, '2022-01-09 01:44:33'),
	(5, 5, '2020-08-06 15:23:43'),
	(6, 7, '2017-01-24 00:31:17'),
	(6, 1, '2017-10-12 12:35:20'),
	(7, 4, '2011-12-15 22:30:49'),
	(8, 4, '2012-03-17 14:56:41'),
	(9, 9, '2022-02-24 21:14:22'),
	(10, 3, '2015-12-13 08:30:22');
    
    INSERT INTO SpotifyClone.seguindo (seguidor, artista)
VALUES
	(1, 1),
	(1, 2),
	(1, 3),
	(2, 1),
	(2, 3),
	(3, 2),
	(4, 4),
	(5, 5),
	(5, 6),
	(6, 6),
	(6, 1),
	(7, 6),
	(9, 3),
	(10, 2);
