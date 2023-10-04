{{ config(materialized="table") }}

SELECT
    CHANNEL_ID
  , CHANNEL_NAME
  , CHANNEL_TYPE
FROM {{ source('delivery_raw', 'channels') }}
WHERE CHANNEL_ID IS NOT NULL