SELECT 
    EXTRACT(MONTH FROM date_date) AS month
    , SUM(ads_margin) AS ads_margin
    , SUM(transactions) AS transactions
    , SUM(revenue) AS revenue
    , AVG(avg_basket) AS avg_basket
    , SUM(operational_margin) AS operational_margin
    , SUM(purchase_price) AS purchase_price
    , SUM(shippping_fees) AS shippping_fees
    , SUM(quantity) AS quantity
    , SUM(ads_cost) AS ads_cost
    , SUM(click) AS click
    , SUM(impression) AS impression
FROM {{ ref("finance_campaigns_day")}}
GROUP BY  EXTRACT(MONTH FROM date_date)
ORDER BY  EXTRACT(MONTH FROM date_date) ASC