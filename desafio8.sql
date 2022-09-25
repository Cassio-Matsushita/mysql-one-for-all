SELECT nome_artista AS 'artista',
nome_album AS 'album'
FROM SpotifyClone.artistas
INNER JOIN SpotifyClone.albuns ON albuns.id_artista = artistas.id_artista
WHERE nome_artista= 'Elis Regina'
ORDER BY nome_album;