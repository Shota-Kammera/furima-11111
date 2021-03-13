# README

## Usersテーブル

|                 |          |             |
| --------------- | -------- | ----------- |
| nickname        | string   | null: false |
| email           | string   | null: false |
| password        | string   | null: false |
| birth_day       | datetime | null: false |
| last_name       | string   | null: false |
| last_name_kana  | string   | null: false |
| first_name      | string   | null: false |
| first_name_kana | string   | null: false |

## Itemsテーブル

|                   |          |                              |
| ----------------- | -------- | ---------------------------- |
| vendor            | string   | null:false                   |
| item_name         | string   | null:false                   |
| item_image        | text     | null:false                   |
| item_info         | text     | null:false                   |
| category          | boolean  | null:false                   |
| item_status       | text     | null:false                   |
| delivery_fee      | integer  | null:false                   |
| ship_from_address | text     | null:false                   |
| ship_time         | datetime | null:false                   |
| amount_sold       | integer  | null:false                   |
| user_id           | integer  | null:false, foreign_key:true |


## purchase_recordsテーブル
|                |         |                               | 
| -------------- | ------- | ----------------------------- | 
| purchaser      | string  | null:false                    | 
| purchased_item | string  | null:false                    | 
| user_id        | integer | null:false , foreign_key:true | 

## delivery_infoテーブル
|              |         |            | 
| ------------ | ------- | ---------- | 
| posted_code  | integer | null:false | 
| region       | string  | null:false | 
| city         | string  | null:false | 
| address      | string  | null:false | 
| phone_number | integer | null:false | 
