select
    order_key
    , sum(extended_price) as gross_item_sales_amount
    , sum(item_discount_amount) as item_discount_amount
from {{ ref('order_items_fact') }}
group by order_key
