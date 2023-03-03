SELECT 
 DISTINCT u.nome AS pessoa_usuaria,
		COUNT(r.id_cancao) AS musicas_ouvidas,
		ROUND(SUM(c.duracao/60),2) AS total_minutos
FROM SpotifyClone.usuario AS u
  JOIN SpotifyClone.reproducoes AS r ON u.id_usuario = r.id_usuario
  JOIN SpotifyClone.cancoes AS c ON c.id_cancoes = r.id_cancao
GROUP BY u.nome;