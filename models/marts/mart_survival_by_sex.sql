SELECT 
    sex,
    count(sex) as total_passenger,
    sum(survived) as survivors,
    {{calc_survival_rate('count(*)', 'sum(survived)')}} as survival_rate_pct
FROM
    {{ref('stg_titanic')}}
GROUP BY 
    sex


