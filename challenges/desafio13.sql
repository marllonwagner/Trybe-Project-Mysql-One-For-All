SELECT 
CASE
WHEN u.idade <= 30 THEN 'Até 30 anos' 
WHEN u.idade BETWEEN 31 AND 60 THEN 'Entre 31 e 60 anos'
WHEN u.idade > 60 THEN 'Maior de 60 anos'
END AS faixa_etaria, 
COUNT(DISTINCT u.id_usuario) AS total_pessoas_usuarias ,
COUNT( f.id_usuario) AS total_favoritadas
FROM SpotifyClone.usuario AS u 
LEFT JOIN SpotifyClone.favoritas AS f ON u.id_usuario = f.id_usuario
GROUP BY faixa_etaria;
