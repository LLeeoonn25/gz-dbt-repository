WITH orders_data AS (SELECT 
    orders_id
    , CAST(date_date AS DATE) AS date_date
    , ROUND(SUM(revenue),2) as revenue
    , ROUND(SUM(quantity),2) AS quantity
    , ROUND(SUM(purchase_price * quantity),2) AS purchase_price
FROM {{ ref("stg_raw__sales")}}
LEFT JOIN {{ ref("stg_raw__product")}}
USING(products_id)
GROUP BY orders_id, date_date
ORDER BY orders_id DESC)

SELECT*
FROM orders_data
LEFT JOIN {{ ref("stg_raw__ship")}}
USING(orders_id)