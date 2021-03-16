# README

## Usersテーブル

|                          |          |             |
| ------------------------ | -------- | ----------- |
| nickname                 | string   | null: false |
| email                    | string   | null: false |
| encrypted_password       | string   | null: false |
| birth_date               | date     | null: false |
| last_name                | string   | null: false |
| last_name_kana           | string   | null: false |
| first_name               | string   | null: false |
| first_name_kana          | string   | null: false |

Association
has_many :items
has_many :orders

## Itemsテーブル

|                                             |             |                              |
| ------------------------------------------- | ----------- | ---------------------------- |
| name                                        | string      | null:false                   |
| price                                       | integer     | null:false                   |
| info                                        | text        | null:false                   |
| scheduled_delivery_id(active_hash)          | integer     | null:false                   |
| shipping_fee_status_id(active_hash)         | integer     | null:false                   |
| prefecture_id(active_hash)                  | integer     | null:false                   |
| sales_status_id(active_hash)                | integer     | null:false                   |
| category_id(active_hash)                    | integer     | null:false                   |
| user_id                                     | reference   | foreign_key:true             |

Association
belongs_to :user
has_one :order

## ordersテーブル
|           |            |                                      |
| --------- | ---------- | ------------------------------------ |
| item      | reference  | foreign_key:true                     |
| user      | reference  | foreign_key:true                     |

Association
belongs_to :user
belongs_to :item
has_one :address

## addressesテーブル
|                     |             |            | 
| ------------------- | ----------- | ---------- | 
| postal_code         | string      | null:false | 
| prefecture_id       | integer     | null:false | 
| city                | string      | null:false | 
| address             | string      | null:false |
| building            | string      |            |
| phone_number        | string      | null:false | 
| order_id            | references  | null:false |

Association
belongs_to :order
