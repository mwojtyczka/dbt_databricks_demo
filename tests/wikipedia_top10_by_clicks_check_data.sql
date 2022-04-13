-- For this test to pass, this query must return no results.
select total_clicks
from {{ ref('wikipedia_top10_by_clicks') }}
where total_clicks < 0