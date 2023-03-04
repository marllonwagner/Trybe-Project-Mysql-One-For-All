SELECT c.nome_cancao AS cancao , count(r.id_cancao) AS reproducoes
FROM SpotifyClone.cancoes AS c
JOIN SpotifyClone.reproducoes AS r
ON r.id_cancao = c.id_cancoes
GROUP BY c.nome_cancao
ORDER BY reproducoes DESC , cancao
LIMIT 2;