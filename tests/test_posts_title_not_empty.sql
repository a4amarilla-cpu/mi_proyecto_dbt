-- Falla si encuentra títulos vacíos o solo espacios
select *
from {{ ref('stg_posts') }}
where title is null
   or length(trim(title)) = 0