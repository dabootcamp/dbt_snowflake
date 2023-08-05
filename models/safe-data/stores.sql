{{ config(materialized="table") }}

SELECT
    STORE_ID
  , HUB_ID
  , STORE_NAME
  , STORE_SEGMENT
  , STORE_PLAN_PRICE
  , STORE_LATITUDE
  , STORE_LONGITUDE
FROM {{ source('delivery_center', 'stores') }}