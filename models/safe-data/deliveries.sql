{{ config(materialized="table") }}

SELECT
    DELIVERY_ID
  , DELIVERY_ORDER_ID
  , DRIVER_ID
  , DELIVERY_DISTANCE_METERS
  , DELIVERY_STATUS
FROM {{ source('delivery_center', 'deliveries') }}