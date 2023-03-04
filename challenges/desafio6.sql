SELECT
MIN(valor) AS faturamento_minimo,
MAX(valor) AS faturamento_maximo,
ROUND(SUM(p.valor)/COUNT(u.id_plano),2) AS faturamento_medio,
ROUND(SUM(p.valor),2) AS faturamento_total
FROM SpotifyClone.usuario AS u
JOIN SpotifyClone.planos AS p ON u.id_plano = p.id_plano;