{{config(materialized='view')}}

with src_pag as 
(
    select *
    from DBT.AIRBYTE_SCHEMA.PAGAMENTOS    
)

select
    ps.user_id,
    ps.city,
    ps.race,
    ps.country,
    ps.currency,
    ps.credit_card_type,
    ps.subscription_price
from src_pag as ps