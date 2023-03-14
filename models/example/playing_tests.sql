with sample_cust as (
  SELECT *
  FROM {{ source('sample2', 'cust') }}
)

select
  c_custkey,
  c_mktsegment,
  {{rename_segments('c_mktsegment')}} mkt_segment_adjusted,
  c_acctbal
from sample_cust
