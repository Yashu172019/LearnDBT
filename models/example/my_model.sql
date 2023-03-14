{{ config(materialized='table', alias='mytable') }}

select * from human where `HUMAN_ID`=100
