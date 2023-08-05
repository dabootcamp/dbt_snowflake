{{ config(materialized="table") }}

SELECT
    HUB_ID
  , HUB_NAME
  , HUB_CITY
  , HUB_STATE
  , HUB_LATITUDE
  , HUB_LONGITUDE
FROM {{ source('delivery_center', 'hubs') }}