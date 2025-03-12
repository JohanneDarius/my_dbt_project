select CONCAT(order_id, '_', item_id) AS order_item_id,
 order_id,
 product_id,
 customer_id,
 DATETIME(pickup_limit_date, "Europe/Paris") AS picked_up_limited_at,
 list_price as unit_price,
 discount,
 quantity as item_quantity,
 (list_price * quantity) + discount as total_order_item_amount
from {{ source('dataset_local_bike', 'order_items') }}
