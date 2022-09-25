SELECT usuarios.nome_usuario AS `usuario`,
IF (MAX(historico_de_reproducoes.data_reproducao) >= '2021-01-01', 'Usuário ativo', 'Usuário inativo') AS status_usuario
FROM SpotifyClone.usuarios
INNER JOIN
    SpotifyClone.historico_de_reproducoes ON usuarios.id_usuario = historico_de_reproducoes.id_usuario
GROUP BY nome_usuario
ORDER BY nome_usuario;