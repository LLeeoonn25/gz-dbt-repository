SELECT 
    orders_id
    , date_date
    , ROUND(SUM(revenue),2) as revenue
    , ROUND(SUM(quantity),2) AS quantity
    , ROUND(SUM(purchase_price * quantity),2) AS purchase_price
    , ROUND(SUM(revenue - purchase_price * quantity),2) AS margin
FROM {{ ref("int_sales_margin") }}
GROUP BY orders_id, date_date
ORDER BY orders_id DESC
