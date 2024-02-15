{% snapshot customer_history %}
{{
    config(
            target_schema='public',
            unique_key='customerid',
            strategy='check',
            check_cols=['phone', 'address']
    )
}}

select * from dev.public.customer_details
{% endsnapshot%}