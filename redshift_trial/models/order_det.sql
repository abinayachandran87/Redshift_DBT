{{config(materialized='incremental',
        unique_key='orderid')}}
select 
    orderid,
    customerid,
	orderstatus,
	totalprice,
	orderpriority,
	orderdate,
	CURRENT_DATE as updated_at
from orders

{%if is_incremental()%}
where orderdate >= (select max(updated_at) from {{this}})
{%endif%}
