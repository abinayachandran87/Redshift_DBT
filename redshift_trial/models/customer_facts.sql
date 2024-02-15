select 
    c.customerid,
    c.customer_name,
    c.address,
    c.phone,
    o.no_of_orders,
    o.total_order_val
from 
    customer_details c
inner join 
    {{ref('orders_eph')}} o 
on 
    c.customerid = o.customerid
