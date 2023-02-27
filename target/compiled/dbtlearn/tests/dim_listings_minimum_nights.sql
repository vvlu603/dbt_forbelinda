SELECT 
    *
FROM
    airbnb.dbt_vvlu603.dim_listings_cleansed
WHERE minimum_nights < 1
LIMIT 10