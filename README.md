# DB設計

## usersテーブル

| Column           | Type             | Option          |
|------------------|------------------|-----------------|
| nickname         | string           | null: false     |
| email            | string           | null: false     |
| password         | string           | null: false     |

### Association

- has_one :profile
- has_one :address
- has_many :items

## profilesテーブル

| Column           | Type              | Option                          |
|------------------|-------------------|---------------------------------|
| first_name       | string            | null: false                     |
| last_name        | string            | null: false                     |
| first_name_kana  | string            | null: false                     |
| last_name_kana   | string            | null: false                     |
| birthday         | date              | null: false                     |
| user             | references        | null: false, foreign_key: true  |

### Association

- belongs_to :user

## addressesテーブル

| Column           | Type              | Option                          |
|------------------|-------------------|---------------------------------|
| post_number      | string            | null: false                     |
| prefecture       | string            | null: false                     |
| city             | string            | null: false                     |
| address          | string            | null: false                     |
| phone_number     | string            | null: false                     |
| user             | references        | null: false, foreign_key: true  |

### Association

- belongs_to :user

## cardsテーブル

| Column           | Type              | Option                          |
|------------------|-------------------|---------------------------------|
| user             | references        | null: false, foreign_key: true  |
| customer_id      | string            | null: false                     |
| card_id          | string            | null: false                     |


### Association

- belongs_to :user

## itemsテーブル

| Column           | Type              | Option                          |
|------------------|-------------------|---------------------------------|
| name             | string            | null: false                     |
| text             | string            | null: false                     |
| price            | integer           | null: false                     |

### Association

- belongs_to :user
- belongs_to :category
- belongs_to :brand

## categoriesテーブル

| Column           | Type             | Option          |
|------------------|------------------|-----------------|
| name             | string           | null: false     |

### Association

- has_many :items

## brandsテーブル

| Column           | Type             | Option          |
|------------------|------------------|-----------------|
| name             | string           | null: false     |

### Association

- has_many :items

## item_imagesテーブル

| Column           | Type             | Option                         |
|------------------|------------------|--------------------------------|
| src              | string           | null: false                    |
| item             | references       | null: false, foreign_key: true |

### Association

- has_many :items

## buyersテーブル

| Column           | Type             | Option                         |
|------------------|------------------|--------------------------------|
| first_name       | string            | null: false                   |
| last_name        | string            | null: false                   |
| first_name_kana  | string            | null: false                   |
| last_name_kana   | string            | null: false                   |
| post_number      | string            | null: false                   |
| prefecture       | string            | null: false                   |
| city             | string            | null: false                   |
| address          | string            | null: false                   |
| phone_number     | string            | null: false                   |
| item             | references       | null: false, foreign_key: true |

### Association

- belongs_to: item
