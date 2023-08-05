{{ config(materialized="table") }}

SELECT
    DRIVER_ID
  , DRIVER_MODAL
  , DRIVER_TYPE
FROM {{ source('delivery_center', 'drivers') }}