-- models/staging/stg_users.sql

select
  cast(id as integer) as user_id,
  name,
  username,
  email,
  phone,
  website,

  -- campos anidados como json (los dejamos así por ahora)
  address,
  company,

  current_timestamp as loaded_at
from {{ source('jsonplaceholder', 'users') }}