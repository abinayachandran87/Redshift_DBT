{{config(materialized='ephemeral')}}

select 
    customerid,
    count(orderid) as no_of_orders,
    sum(totalprice) as total_order_val
from orders
group by (customerid)