SELECT cancoes.nome_cancao AS `cancao`,
COUNT(historico_de_reproducoes.id_cancao) AS reproducoes
FROM SpotifyClone.cancoes
INNER JOIN
    SpotifyClone.historico_de_reproducoes ON cancoes.id_cancao = historico_de_reproducoes.id_cancao
GROUP BY nome_cancao
ORDER BY reproducoes DESC, nome_cancao
LIMIT 2;