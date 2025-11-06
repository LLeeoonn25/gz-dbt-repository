{{ dbt_utils.union_relations(
    relations=[
        ref('stg_raw__ads_adwords'),
        ref('stg_raw__ads_bing'),
        ref('stg_raw__ads_criteo'),
        ref('stg_raw__ads_facebook')
    ]
) }}