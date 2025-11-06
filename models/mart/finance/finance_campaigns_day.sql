SELECT 
    date_date
    , operational_margin - ads_cost AS ads_margin
    , transactions
    , revenue
    , avg_basket
    , operational_margin
    , purchase_price
    , shippping_fees
    , quantity
    , ads_cost
    , click
    , impression
FROM {{ ref("finance_days")}}
LEFT JOIN {{ ref("int_campaigns_day")}}
USING(date_date)