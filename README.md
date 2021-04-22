# DB 設計

## users table

| Column                          | Type   | Options                   |
|---------------------------------|--------|---------------------------|
| nickname                        | string | null: false               |
| email                           | string | null: false, unique: true |
| encrypted_password              | string | null: false               |
| family_name                     | string | null: false               |
| first_name                      | string | null: false               |
| family_name_kana                | string | null: false               |
| first_name_kana                 | string | null: false               |
| birthday                        | date   | null: false               |

### Association

has_many :items
has_many :buyers

## items table

| Column           | Type       | Options                        |
|------------------|------------|--------------------------------|
| product_name     | string     | null: false                    |
| user             | references | null: false, foreign_key: true |
| category_id      | integer    | null: false                    |
| status_id        | integer    | null: false                    |
| shipp_cost_id    | integer    | null: false                    |
| prefecture_id    | integer    | null: false                    |
| shipp_date_id    | integer    | null: false                    |
| price            | integer    | null: false                    |
| description      | text       | null: false                    |

### Association

belongs_to :user
has_one :buyer
has_many :comments


## buyers table

| Column | Type       | Options                        |
|--------|------------|--------------------------------|
| user   | references | null: false, foreign_key: true |
| item   | references | null: false, foreign_key: true |

### Association

belongs_to :user
belongs_to :item
has_one :address
has_one :comment


## addresses table

| Column         | Type       | Options                        |
|----------------|------------|--------------------------------|
| postal_code_id | string     | null: false                    |
| prefecture_id  | integer    | null: false                    |
| city           | string     | null: false                    |
| house_number   | string     | null: false                    |
| building_name  | string     |                                |
| phone          | string     | null: false                    |
| buyer          | references | null: false, foreign_key: true |

### Association

belongs_to :buyer


## comments table

| Column | Type | Options     |
|--------|------|-------------|
| text   | text |             |

### Association

belongs_to :buyer