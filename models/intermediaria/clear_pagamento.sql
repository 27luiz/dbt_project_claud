{{config(materialized='table')}}

with clear_pagamentos as 
(
    select *
    from {{ref("pagamentos")}} 
)

select
    ps.user_id,
    ps.city,
    ps.race,
    ps.country,
    ps.currency,
    ps.credit_card_type,
    TO_DECIMAL(replace(ps.subscription_price,'$'),10,2) as subscription_price
from clear_pagamentos as ps