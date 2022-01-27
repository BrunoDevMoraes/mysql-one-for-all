SELECT
    a.usuario_nome AS usuarios,
    COUNT(c.usuario_id) AS qtde_musicas_ouvidas,
    ROUND((SUM(b.duracao) / 60), 2)
FROM
    SpotifyClone.usuarios AS a
        INNER JOIN
    SpotifyClone.usuario_musica AS c ON a.usuario_id = c.usuario_id
        INNER JOIN
    SpotifyClone.musicas AS b ON c.musica_id = b.musica_id
GROUP BY a.usuario_nome
ORDER BY a.usuario_nome;