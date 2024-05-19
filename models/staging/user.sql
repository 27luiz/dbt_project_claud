{{config(materialized='view')}}

with src_user as 
(
    select *
    from DBT.AIRBYTE_SCHEMA.USUARIO    
)

select
    pu.id,
    pu.user_id,
    pu.username,
    pu.gender,
    pu.employment,
    pu.credit_card,
    pu.subscription   
from src_user as pu