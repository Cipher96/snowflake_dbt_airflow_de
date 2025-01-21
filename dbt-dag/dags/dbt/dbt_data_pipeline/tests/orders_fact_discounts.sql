select *
from {{ ref('orders_fact') }}
where item_discount_amount > 0