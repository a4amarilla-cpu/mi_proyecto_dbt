-- Falla si hay emails con mayúsculas
select
  user_id,
  email
from {{ ref('stg_users') }}
where email is not null
  and email <> lower(email)