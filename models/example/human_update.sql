-- {{ config(materialized='view', alias='fr_model') }}




-- SELECT * FROM HUMAN WHERE `HUMAN_ID`=1

{{ config(
  materialized='table',alias='temp8'
) }}

 SELECT * FROM HUMAN WHERE `HUMAN_ID`=1


{{ config(
    pre_hook='create table if not exists shuffle7 (id NUMBER ,  original_values varchar)',alias='eight'
) }}
