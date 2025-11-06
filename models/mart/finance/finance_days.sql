SELECT 
    date_date
    , COUNT(*) AS transactions
    , SUM(revenue) AS revenue
    , AVG(revenue) AS avg_basket
    , SUM(operational_margin) AS operational_margin
    , SUM(purchase_price) AS purchase_price
    , SUM(shipping_fee) AS shippping_fees
    , SUM(quantity) AS quantity
FROM {{ ref("int_orders_operational")}}
GROUP BY date_date