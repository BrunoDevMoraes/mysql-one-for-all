SELECT
    a.musica_nome AS nome, COUNT(c.musica_id) AS reproducoes
FROM
    SpotifyClone.musicas AS a
        INNER JOIN
    SpotifyClone.usuario_musica AS c ON a.musica_id = c.musica_id
    GROUP BY nome
    ORDER BY nome ASC;