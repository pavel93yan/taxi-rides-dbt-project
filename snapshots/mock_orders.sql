{% snapshot mock_orders %}

{% set new_schema = target.schema + '_snapshot' %}

{{
    config(
      target_database='de-project-375820',
      target_schema=new_schema,
      unique_key='order_id',

      strategy='timestamp',
      updated_at='updated_at'
    )
}}

select * from `de-project-375820.trips_data_all.mock_orders`

{% endsnapshot %}