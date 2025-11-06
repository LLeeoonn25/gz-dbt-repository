SELECT 
    date_date
    ,orders_id
    ,products_id
    ,revenue
    ,purchase_price
    ,quantity
    ,{{ margin_percent("revenue","purchase_price", 3)}} AS margin
FROM {{ ref("stg_raw__sales")}}
LEFT JOIN {{ ref("stg_raw__product")}}
USING(products_id)