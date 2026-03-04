select
    cast(id as integer) as post_id,
    cast(userid as integer) as user_id,
    title,
    body,
    current_timestamp as loaded_at
from {{ source('jsonplaceholder', 'posts') }}