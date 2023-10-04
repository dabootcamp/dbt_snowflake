{{ config(materialized="table") }}

SELECT
	store_id
	, hub_id
	, TRIM(UPPER(store_name)) AS store_name
	, TRIM(UPPER(store_segment)) AS store_segment
	, COALESCE(store_plan_price, 0) AS store_plan_price
	, store_latitude
	, store_longitude
FROM {{ source('delivery_raw', 'stores') }}