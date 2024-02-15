select 
    o.orderid,
    o.customerid,
    sum(i.quantity*i.price) as amount
from
    {{ref('order_det')}} o
inner join
    {{ref('item_sale_det')}} i
on o.orderid = i.orderid
group by o.orderid, o.customerid