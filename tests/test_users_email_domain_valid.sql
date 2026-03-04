-- Falla si hay emails con dominios sospechosos o vacíos (personalizable)
select *
from {{ ref('stg_users') }}
where email is null
   or length(trim(email)) = 0
   or email not like '%@%.%'