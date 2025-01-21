select
    orders.*
    , order_item_summary.gross_item_sales_amount as gross_item_sales_amount
    , order_item_summary.item_discount_amount as item_discount_amount
from {{ ref('stage_tpch_orders') }} as orders
join {{ ref('order_items_summary_fact') }} as order_item_summary on (
    orders.order_key = order_item_summary.order_key
)
order by order_date
