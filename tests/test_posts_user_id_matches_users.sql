-- Falla si hay posts con user_id que NO existe en stg_users
select
  p.post_id,
  p.user_id
from {{ ref('stg_posts') }} p
left join {{ ref('stg_users') }} u
  on p.user_id = u.user_id
where u.user_id is null
  and p.user_id is not null