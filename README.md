# DB設計

## usersテーブル

| Column             | Type             | Options                        |
|--------------------|------------------|--------------------------------|
| nickname           | string           | null: false                    |
| email              | string           | null: false, unique: true      |
| encrypted_password | string           | null: false                    |
| first_name         | string           | null: false                    |
| last_name          | string           | null: false                    |
| first_name_kana    | string           | null: false                    |
| last_name_kana     | string           | null: false                    |
| birthday           | date             | null: false                    |

### Association

- has_many :buyers
- has_many :items

## addressesテーブル

| Column           | Type              | Options                          |
|------------------|-------------------|----------------------------------|
| post_number      | string            | null: false                      |
| prefecture_id    | integer           | null: false                      |
| city             | string            | null: false                      |
| address          | string            | null: false                      |
| building_name    | string            |                                  |
| phone_number     | string            | null: false                      |
| buyer            | references        | null: false, foreign_key: true   |

### Association

- belongs_to :user
- belongs_to :buyer

## itemsテーブル

| Column            | Type              | Options                          |
|-------------------|-------------------|----------------------------------|
| name              | string            | null: false                      |
| introduction      | text              | null: false                      |
| category_id       | integer           | null: false                      |
| status_id         | integer           | null: false                      |
| shipping_cost_id  | integer           | null: false                      |
| shipping _area_id | integer           | null: false                      |
| shipping_day_id   | integer           | null: false                      |
| price             | integer           | null: false                      |
| user              | references        | null: false, foreign_key: true   |

### Association

- belongs_to :buyer

## buyersテーブル

| Column           | Type              | Options                          |
|------------------|-------------------|----------------------------------|
| user             | references        | null: false, foreign_key: true   |
| item             | references        | null: false, foreign_key: true   |

### Association

- has_many: items
- belongs_to: user
- belongs_to: address
