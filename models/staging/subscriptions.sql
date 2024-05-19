{{config(materialized='view')}}

with src_subsc as 
(
    select *
    from DBT.AIRBYTE_SCHEMA.SUBSCRIPTIONS 
)

select
    sb.user_id,
    sb.plan,
    sb.status,
    sb.payment_term,
    sb.payment_method,
    sb.subscription_term 
from src_subsc as sb