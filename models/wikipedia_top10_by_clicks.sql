{{ config(materialized='table') }}


with wikipedia_top10_by_clicks as (
  select   current_page_title,
  SUM(click_count) as total_clicks
  from {{ ref('wikipedia_clickstreams_clean') }}
  group by current_page_title
  order by 2 desc
  limit 10
)

select * from wikipedia_top10_by_clicks
