SELECT
    a.usuario_nome AS usuario,
    COUNT(c.usuario_id) AS qtde_musicas_ouvidas,
    ROUND((SUM(b.duracao))/ 60, 2) AS total_minutos
FROM
    SpotifyClone.usuarios AS a
        INNER JOIN
    SpotifyClone.usuario_musica AS c ON a.usuario_id = c.usuario_id
        INNER JOIN
    SpotifyClone.musicas AS b ON b.musica_id = c.musica_id
GROUP BY usuario
ORDER BY a.usuario_nome;