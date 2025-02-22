with 

source as (

    select * from {{ source('food_delivery_fr', 'food_delivery') }}

),

renamed as (

    select
        _row,
        _fivetran_synced,
        order_total_promo,
        order_item_delivery_address_city,
        order_currency,
        merchant_name,
        order_total_fees,
        order_time,
        order_processing_fee,
        payment_method_name,
        seller_category_name,
        order_total_paid,
        order_item_delivery_address_subregion,
        order_date,
        id_order,
        order_delivery_fee,
        order_item_delivery_address_region,
        seller_name,
        random_id,
        customer_gender

    from source

)

select * from renamed
