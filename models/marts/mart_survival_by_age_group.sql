

with titanic_age_groups as (
    select
        case
            when age <= 12 then 'child'
            when age between 13 and 17 then 'teen'
            else 'adult'
        end as age_group,
        survived
    from {{ ref('stg_titanic') }}
)

select
    age_group,
    count(*) as total_passenger,
    sum(survived) as survivors,
    {{ calc_survival_rate("sum(survived)", "count(*)") }}
from titanic_age_groups
group by age_group

