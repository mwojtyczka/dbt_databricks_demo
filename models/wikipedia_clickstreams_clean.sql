{{ config(materialized='table') }}


with wikipedia_clickstreams_raw as (

    select * from {{ ref('wikipedia_clickstreams_raw') }}

),

wikipedia_clickstreams_clean as (
    select
      curr_title as current_page_title,
      CAST(n as int) as click_count,
      prev_title as previous_page_title
      from wikipedia_clickstreams_raw
)

select * from wikipedia_clickstreams_clean
where current_page_title is not null
and click_count is not null
