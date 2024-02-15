{{config(materialized='materialized_view', on_configuration_change='apply')}}
SELECT 
    userid as customerid,
    firstname || ' ' || lastname as customer_name,
    city || ', ' || state as address,
    phone,
    CURRENT_TIMESTAMP - 1 as updated_at
FROM USERS