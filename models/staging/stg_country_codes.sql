
{{ config(
  schema='stg',
  materialized='table'
) }}

select
        cast(code as varchar(2)) as country_code,
        cast(name as varchar(50)) as country_name
from {{ source('raw', 'country_codes') }}
