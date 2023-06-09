SELECT MIN(valor) AS 'faturamento_minimo',
MAX(valor) AS 'faturamento_maximo',
ROUND(AVG(valor), 2) AS 'faturamento_medio',
SUM(valor) AS 'faturamento_total'
FROM SpotifyClone.planos
INNER JOIN
    SpotifyClone.usuarios ON usuarios.id_plano = planos.id_plano;