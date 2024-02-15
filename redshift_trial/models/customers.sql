{{config(materialized='table')}}
SELECT 
    userid as customerid,
    username,
    firstname,
    lastname,
    city,
    state,
    email,
    phone,
    CURRENT_TIMESTAMP - 1 as updated_at
FROM USERS