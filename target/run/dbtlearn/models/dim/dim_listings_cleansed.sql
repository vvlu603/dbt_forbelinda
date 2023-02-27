
  create or replace   view airbnb.dbt_vvlu603.dim_listings_cleansed
  
   as (
    
with src_listings as (
    select * from airbnb.dbt_vvlu603.src_listings
)
SELECT
    listing_id,
    listing_name,
    room_type,
    CASE 
        WHEN minimum_nights = 0 THEN 1
        ELSE minimum_nights 
    END AS minimum_nights,
    host_id,
    REPLACE(price_str,'$') :: NUMBER(10,2) AS price,
    created_at,
    updated_at
FROM
    src_listings
  );

