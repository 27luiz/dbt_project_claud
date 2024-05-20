{{config(materialized='table')}}

with clear_subscriptions as 
(
    select *
    from {{ref('subscriptions')}}
)

select
    sb.user_id,
    sb.plan,
    case 
        when plan in ('businness', 'Diamond', 'gold', 'Platinum') then 'Migh'
        when plan in ('Brinze', 'Essential', 'Professional', 'silver', 'Standard') then 'Normal'
        else 'low'
    end as subscription_importance,
    sb.status,
    sb.payment_term,
    sb.payment_method,
    sb.subscription_term 
from clear_subscriptions as sb