select 
    *
from 
    {{ref('mart_top_paying_passengers')}}
where 
    fare is null