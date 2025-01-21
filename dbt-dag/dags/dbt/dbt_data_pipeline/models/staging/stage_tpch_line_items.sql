select
    {{
        dbt_utils.generate_surrogate_key([
            'l_orderkey',
            'l_linenumber'
        ])
    }} as order_item_key
    , l_orderkey as order_key
    , l_linenumber as line_number
    , l_partkey as part_key
    , l_quantity as quantity
    , l_extendedprice as extended_price
    , l_discount as discount_percentage
    , l_tax as tax
    , l_returnflag as return_flag
    , l_linestatus as line_status
    , l_shipdate as ship_date
    , l_shipmode as ship_mode
from {{ source('tpch', 'lineitem') }}
