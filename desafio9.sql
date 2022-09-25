SELECT COUNT(historico_de_reproducoes.id_usuario) AS 'quantidade_musicas_no_historico'
FROM SpotifyClone.historico_de_reproducoes
INNER JOIN
SpotifyClone.usuarios
ON historico_de_reproducoes.id_usuario = usuarios.id_usuario
WHERE nome_usuario = 'Barbara Liskov';