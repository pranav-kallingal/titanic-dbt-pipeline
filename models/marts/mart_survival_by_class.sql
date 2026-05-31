SELECT
    class,
    COUNT(*)                            AS total_passengers,
    SUM(survived)                       AS survivors,
    ROUND(AVG(survived) * 100, 1)       AS survival_rate_pct
FROM {{ ref('stg_titanic') }}
GROUP BY class
ORDER BY class
