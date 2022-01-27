SELECT
    COUNT(a.usuario_id) AS quantidade_musicas_no_historico
FROM
    SpotifyClone.usuario_musica AS a
        INNER JOIN
    SpotifyClone.usuarios AS c ON c.usuario_id = a.usuario_id AND c.usuario_nome = 'Bill';