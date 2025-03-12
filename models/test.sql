select order_id
from {{source('dataset_local_bike','order_items')}}