SELECT  ab.alb_nome AS album, count(f.id_cancoes) AS favoritadas
FROM SpotifyClone.favoritas AS f
JOIN SpotifyClone.cancoes as c
ON c.id_cancoes = f.id_cancoes
JOIN SpotifyClone.album AS ab
ON ab.id_album = c.id_album
GROUP BY ab.alb_nome
ORDER BY favoritadas DESC , alb_nome
LIMIT 3;