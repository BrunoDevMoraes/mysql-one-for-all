SELECT
    MIN(a.plano_valor) AS faturamento_minimo,
    ROUND(MAX(a.plano_valor), 2) AS faturamento_maximo,
    ROUND(AVG(a.plano_valor), 2) AS faturamento_medio,
    ROUND(SUM(a.plano_valor), 2) AS faturamento_total
FROM
    SpotifyClone.usuarios AS c
        INNER JOIN
    SpotifyClone.planos AS a ON a.plano_id = c.plano_id;