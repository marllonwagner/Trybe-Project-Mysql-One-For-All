SELECT ar.nome_artista AS artista,
CASE 
    WHEN count(f.id_cancoes) >=5 THEN 'A' 
    WHEN count(f.id_cancoes) >=3 THEN 'B'
    WHEN count(f.id_cancoes) >=1 THEN 'C'
    ELSE '-'
END AS ranking
FROM SpotifyClone.album AS ab
JOIN SpotifyClone.cancoes as c ON ab.id_album = c.id_album
JOIN SpotifyClone.artista AS ar ON ar.id_artista = ab.id_artista
LEFT JOIN SpotifyClone.favoritas AS f ON c.id_cancoes = f.id_cancoes
GROUP BY ar.nome_artista
ORDER BY count(f.id_cancoes) DESC, ar.nome_artista ASC;