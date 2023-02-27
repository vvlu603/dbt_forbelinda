
  create or replace   view airbnb.dbt_vvlu603.src_reviews
  
   as (
    with raw_reviews as (
    select * from AIRBNB.RAW.RAW_REVIEWS
)
select 
    listing_id, 
    date as review_date, 
    reviewer_name, 
    comments as review_text, 
    sentiment as review_sentiment 
from raw_reviews
  );

