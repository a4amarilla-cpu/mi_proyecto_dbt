select
  post_id,
  title_len,
  body_len,
  loaded_at
from {{ ref('int_posts_enriched') }}