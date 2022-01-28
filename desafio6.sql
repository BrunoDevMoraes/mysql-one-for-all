SELECT
    FORMAT(MIN(a.plano_valor), 2) AS faturamento_minimo,
    FORMAT(MAX(a.plano_valor), 2) AS faturamento_maximo,
    FORMAT(AVG(a.plano_valor), 2) AS faturamento_medio,
    FORMAT(SUM(a.plano_valor), 2) AS faturamento_total
FROM
    SpotifyClone.planos AS a
        INNER JOIN
    SpotifyClone.usuarios AS c ON a.plano_id = c.plano_id;