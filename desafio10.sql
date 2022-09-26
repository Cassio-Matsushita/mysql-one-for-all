SELECT cancoes.nome_cancao AS 'nome',
COUNT(historico_de_reproducoes.id_usuario) AS 'reproducoes'
FROM SpotifyClone.historico_de_reproducoes
INNER JOIN
SpotifyClone.cancoes
ON historico_de_reproducoes.id_cancao = cancoes.id_cancao
INNER JOIN
SpotifyClone.usuarios
ON usuarios.id_usuario = historico_de_reproducoes.id_usuario
INNER JOIN
SpotifyClone.planos
ON usuarios.id_plano = planos.id_plano
WHERE planos.nome_plano IN('pessoal', 'gratuito') 
GROUP BY nome_cancao
ORDER BY nome_cancao;