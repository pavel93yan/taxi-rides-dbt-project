 {{ config(enabled = false) }}
 
 select
    tripid
 from {{ ref('stg_green_tripdata') }}
 group by tripid
 having count(*) > 1