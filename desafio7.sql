SELECT
    a.artista_nome AS artista,
    b.album_nome AS album,
    COUNT(c.artista_id) AS seguidores
FROM
    SpotifyClone.artistas AS a
        INNER JOIN
    SpotifyClone.albuns AS b ON a.artista_id = b.artista_id
        INNER JOIN
    SpotifyClone.usuario_artista AS c ON a.artista_id = c.artista_id
GROUP BY album, artista
ORDER BY seguidores DESC, artista, album;