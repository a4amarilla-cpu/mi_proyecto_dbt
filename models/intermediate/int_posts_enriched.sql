with posts as (

    select * from {{ ref('stg_posts') }}

),

final as (

    select
        post_id,
        user_id,
        title,
        body,
        length(title) as title_len,
        length(body) as body_len,
        loaded_at

    from posts

)

select * from final