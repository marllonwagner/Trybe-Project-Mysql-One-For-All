SELECT a.nome_artista AS artista,
       ab.alb_nome AS album,
       count(s.seguidor) AS pessoas_seguidoras
FROM SpotifyClone.artista AS a
JOIN SpotifyClone.album AS ab ON a.id_artista = ab.id_artista
JOIN SpotifyClone.seguindo AS s ON a.id_artista = s.artista
GROUP BY a.nome_artista, ab.alb_nome
ORDER BY pessoas_seguidoras DESC , artista ASC , album ASC;