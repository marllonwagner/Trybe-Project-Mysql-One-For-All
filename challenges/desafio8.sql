SELECT DISTINCT a.nome_artista AS artista,
       ab.alb_nome AS album
FROM SpotifyClone.artista AS a
JOIN SpotifyClone.album AS ab ON a.id_artista = ab.id_artista
JOIN SpotifyClone.seguindo AS s ON a.id_artista = s.artista
WHERE a.nome_artista = 'Elis Regina'
ORDER BY ab.alb_nome ASC;