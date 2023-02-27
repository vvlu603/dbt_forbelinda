
  create or replace   view airbnb.dbt_vvlu603.dim_hosts_cleansed
  
   as (
    
with src_hosts as (
    select * from airbnb.dbt_vvlu603.src_hosts
)
select 
    host_id, 
    nvl(host_name,'Anonymous') as host_name,
    is_superhost, 
    created_at, 
    updated_at
from src_hosts
  );

