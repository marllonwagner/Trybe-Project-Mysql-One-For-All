SELECT 
(SELECT count(id_cancoes) FROM SpotifyClone.cancoes) AS cancoes,
(SELECT count(id_artista) FROM SpotifyClone.artista) AS artistas,
(SELECT count(DISTINCT id_album) FROM SpotifyClone.album) AS albuns;