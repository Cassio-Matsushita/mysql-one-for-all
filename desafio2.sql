SELECT
COUNT(cancoes.id_cancao) AS cancoes,
COUNT(DISTINCT artistas.id_artista) AS artistas,
COUNT(DISTINCT albuns.id_album) AS albuns

FROM
    SpotifyClone.cancoes AS cancoes
INNER JOIN
    SpotifyClone.artistas AS artistas ON artistas.id_artista = cancoes.id_artista
INNER JOIN
    SpotifyClone.albuns AS albuns ON albuns.id_album = cancoes.id_album;
