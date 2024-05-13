{{ config(materialized='table') }}

with source_data as (

SELECT JSON_ARRAY("""{"customer_id": "20","first_name": "Anna","last_name": "A.","first_order_date": "2018-01-23","most_recent_order_date": "2018-01-23","number_of_orders": "1"}, {"customer_id": "23","first_name": "Mildred""last_name": "A.","first_order_date": null,"most_recent_order_date": null,"number_of_orders": "0"}""") as customer_info
)

select *
from source_data


