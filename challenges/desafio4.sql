SELECT u.nome AS pessoa_usuaria,
IF (MAX(YEAR(r.data_reprod)) >= 2021 , 'Ativa' , 'Inativa') AS status_pessoa_usuaria
FROM SpotifyClone.usuario AS u
JOIN SpotifyClone.reproducoes AS r 
ON u.id_usuario = r.id_usuario
GROUP BY u.nome
ORDER BY u.nome ASC;