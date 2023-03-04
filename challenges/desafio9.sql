SELECT COUNT(u.nome) AS musicas_no_historico
FROM SpotifyClone.usuario AS u
JOIN SpotifyClone.reproducoes AS r
ON u.id_usuario =  r.id_usuario
WHERE u.nome = 'Barbara Liskov';