SELECT
    a.artista_nome AS artista, c.album_nome AS album
FROM
    SpotifyClone.artistas AS a
        INNER JOIN
    SpotifyClone.albuns AS c ON a.artista_id = c.artista_id
    HAVING artista = 'Walter Phoenix'
ORDER BY album ASC;