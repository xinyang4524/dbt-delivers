
-- Use the `ref` function to select from other models
{{ config(materialized='view') }}
select *
from {{ ref('first') }}
where id = 1
