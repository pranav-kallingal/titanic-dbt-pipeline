SELECT *
FROM {{ ref('stg_titanic') }}
WHERE age < 0
AND age IS NOT NULL
