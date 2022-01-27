SELECT
    a.usuario_nome AS usuario,
    IF(MAX(YEAR(c.data_reproducao)) = 2021,
        'Usuário ativo',
        'Usuário inativo') AS condicao_usuario
FROM
    SpotifyClone.usuarios AS a
        INNER JOIN
    SpotifyClone.usuario_musica AS c ON a.usuario_id = c.usuario_id
GROUP BY usuario
ORDER BY usuario;