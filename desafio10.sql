SELECT
	c.musica_nome AS nome,
    COUNT(a.musica_id) AS reproducoes
FROM
	SpotifyClone.musicas AS c
   	INNER JOIN SpotifyClone.usuario_musica AS a ON a.musica_id = c.musica_id
   	INNER JOIN SpotifyClone.usuarios AS b ON b.usuario_id = a.usuario_id
WHERE
	b.plano_id IN (1, 4)
GROUP BY
	nome
ORDER BY
	nome;