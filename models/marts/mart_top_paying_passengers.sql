select 
    passenger_id,
    fare
from    
    {{ref('stg_titanic')}}
order by 
    Fare desc
limit 10

