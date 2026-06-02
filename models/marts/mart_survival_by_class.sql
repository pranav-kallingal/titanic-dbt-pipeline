{{
    config(
        materialized='incremental',
        unique_key='class'
    )
}}

{% set min_fare = 10 %}

SELECT
    class,
    COUNT(*)        AS total_passengers,
    SUM(survived)   AS survivors,
    {{ calc_survival_rate('SUM(survived)', 'COUNT(*)') }} AS survival_rate_pct
FROM {{ ref('stg_titanic') }}
WHERE fare > {{ min_fare }}

{% if is_incremental() %}
    AND class NOT IN (SELECT class FROM {{ this }})
{% endif %}

GROUP BY class
ORDER BY class