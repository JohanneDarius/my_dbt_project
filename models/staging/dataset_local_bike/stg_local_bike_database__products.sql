select 
 cast(product_id as int) as product_id ,
 cast(brand_id as int) as brand_id,
 cast(category_id as int) as category_id,
 cast(product_name as string) as product_name,
 cast(model_year as int) as model_year,
 cast(list_price as float) as list_price,

from {{ source('local_bike_database', 'products') }}