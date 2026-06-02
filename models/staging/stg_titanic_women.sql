select 
    passenger_id,
    name,
    age,
    class,
    survived,
    fare

from {{ref('stg_titanic')}}
where sex = 'female' 
