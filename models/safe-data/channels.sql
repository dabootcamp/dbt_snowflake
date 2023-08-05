{{ config(materialized="table") }}

SELECT
    CHANNEL_ID
  , CHANNEL_NAME
  , CHANNEL_TYPE
FROM {{ source('delivery_center', 'channels') }}
WHERE CHANNEL_ID IS NOT NULL