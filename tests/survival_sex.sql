select
    sex
from 
    {{ref('mart_survival_by_sex')}}
where sex is null