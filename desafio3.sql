SELECT
usuarios.nome_usuario AS `usuario`,
COUNT(*) AS qt_de_musicas_ouvidas,
ROUND(SUM(cancoes.duracao / 60), 2) AS 'total_minutos'
FROM
    SpotifyClone.historico_de_reproducoes
INNER JOIN
    SpotifyClone.usuarios ON usuarios.id_usuario = historico_de_reproducoes.id_usuario
INNER JOIN
    SpotifyClone.cancoes ON cancoes.id_cancao = historico_de_reproducoes.id_cancao
GROUP BY nome_usuario
ORDER BY nome_usuario;