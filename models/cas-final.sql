select order_id
from {{source('local_bike_database','orders')}}