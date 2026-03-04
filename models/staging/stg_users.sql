select
    cast(id as integer) as user_id,
    name,
    username,
    lower(email) as email,
    phone,
    website,
    address,
    company,
    current_timestamp as loaded_at
from {{ source('jsonplaceholder', 'users') }}