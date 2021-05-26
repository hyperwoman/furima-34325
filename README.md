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

- has_one :address
- has_many :items

## addressesテーブル

| Column           | Type              | Options                          |
|------------------|-------------------|----------------------------------|
| post_number      | string            | null: false                      |
| prefecture_id    | integer           | null: false                      |
| city_id          | integer           | null: false                      |
| address          | string            | null: false                      |
| building_name    | string            |                                  |
| phone_number     | string            | null: false                      |

### Association

- belongs_to :user

## itemsテーブル

| Column           | Type              | Options                          |
|------------------|-------------------|----------------------------------|
| name             | string            | null: false                      |
| price            | integer           | null: false                      |
| status           | string            | null: false                      |
| introduction     | text              | null: false                      |
| shipping_cost    | string            | null: false                      |
| shipping _area   | string            | null: false                      |
| shipping_days    | string            | null: false                      |
| category_id      | integer           | null: false                      |
| brand_id         | integer           | null: false                      |

### Association

- belongs_to :user

## buyersテーブル

| Column           | Type              | Options                          |
|------------------|-------------------|----------------------------------|
| first_name       | string            | null: false                      |
| last_name        | string            | null: false                      |
| first_name_kana  | string            | null: false                      |
| last_name_kana   | string            | null: false                      |
| item             | references        | null: false, foreign_key: true   |

### Association

- belongs_to: item
