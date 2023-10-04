{{ config(materialized="table") }}


SELECT
    PAYMENT_ID
  , PAYMENT_ORDER_ID
  , PAYMENT_AMOUNT
  , PAYMENT_FEE
  , PAYMENT_METHOD
  , PAYMENT_STATUS
FROM {{ source('delivery_raw', 'payments') }}