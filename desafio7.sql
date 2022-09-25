SELECT nome_artista AS 'artista',
albuns.nome_album AS 'album',
(SELECT COUNT(seguidores.id_artista) FROM SpotifyClone.seguidores WHERE id_artista = albuns.id_artista) AS 'seguidores'
FROM SpotifyClone.albuns
INNER JOIN
    SpotifyClone.artistas ON albuns.id_artista = artistas.id_artista
ORDER BY seguidores DESC, nome_artista, albuns.nome_album;