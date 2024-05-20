{{config(materialized='table')}}
with clear_user as (
    select * from {{ ref("user") }}
)
select
    user_id as user_id,
    username as user_name,
    gender as gender,
    json_extract_path_text(cu.employment::variant, 'title') as title,
    json_extract_path_text(cu.subscription::variant, 'payment_method') as payment_method
from clear_user as cu
