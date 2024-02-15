select 
    c.customerid,
    c.username,
    concat(c.firstname, c.lastname) as customer_name,
    c.city,
    c.phone,
    sal.orderid,
    sal.amount
from 
    {{ref('customers')}} c
inner join
    {{ref('order_items')}} sal
on 
    c.customerid = sal.customerid
