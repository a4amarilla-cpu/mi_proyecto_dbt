select
  post_id,
  title,
  body
from {{ ref('int_posts_enriched') }}