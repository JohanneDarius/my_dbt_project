select
    order_id,
    user_name as user_id,
    order_status,
    DATETIME(order_date, "Europe/Paris") AS order_created_at,
    DATETIME(order_requiered_date, "Europe/Paris") AS order_requiered_at,
    DATETIME(shipped_date, "Europe/Paris") AS shipped_at,

from {{ source('dataset_local_bike', 'orders') }}