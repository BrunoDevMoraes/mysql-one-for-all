SELECT
    MIN(a.plano_valor) AS faturamento_minimo,
    MAX(a.plano_valor) AS faturamento_maximo,
    ROUND(AVG(a.plano_valor), 2) AS faturamento_medio,
    SUM(a.plano_valor) AS faturamento_total
FROM
    SpotifyClone.planos AS a
        INNER JOIN
    SpotifyClone.usuarios AS c ON a.plano_id = c.plano_id;