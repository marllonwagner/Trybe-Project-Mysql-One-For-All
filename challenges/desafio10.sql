CREATE TABLE SpotifyClone.favoritas(
    id_usuario INT NOT NULL,
    id_cancoes INT NOT NULL,
    CONSTRAINT PRIMARY KEY (id_usuario, id_cancoes),
    FOREIGN KEY (id_usuario) REFERENCES SpotifyClone.usuario (id_usuario),
    FOREIGN KEY (id_cancoes) REFERENCES SpotifyClone.cancoes (id_cancoes)
) engine = InnoDB;

    INSERT INTO SpotifyClone.favoritas (id_usuario, id_cancoes)
VALUES
	(1, 3),
	(1, 6),
	(1, 10),
	(2, 4),
	(3, 3),
  (3, 1),
	(4, 7),
  (4, 4),
	(5, 2),
	(5, 10),
	(8, 4),
  (9, 7),
  (10, 3)
