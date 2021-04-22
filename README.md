# DB 設計

## users table

| Column                          | Type   | Options                   |
|---------------------------------|--------|---------------------------|
| nickname                        | string | null: false               |
| email                           | string | null: false, unique: true |
| encrypted_password              | string | null: false               |
| encrypted_password_confirmation | string | null: false               |
| family_name                     | string | null: false               |
| first_name                      | string | null: false               |
| family_name_kana                | string | null: false               |
| first_name_kana                 | string | null: false               |
| birthday                        | date   | null: false               |

### Association

has_many :items
has_one :buyer

## items table

| Column        | Type       | Options                        |
|---------------|------------|--------------------------------|
| product_name  | string     | null: false                    |
| user          | references | null: false, foreign_key: true |
| category      | integer    | null: false                    |
| status        | integer    | null: false                    |
| shipp_cost    | integer    | null: false                    |
| delivery_area | integer    | null: false                    |
| shipp_date    | integer    | null: false                    |
| price         | integer    | null: false                    |
| description   | text       | null: false                    |

### Association

belongs_to :user
belongs_to :buyer
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

| Column        | Type    | Options     |
|---------------|---------|-------------|
| postal_code   | string  | null: false |
| prefecture    | integer | null: false |
| city          | string  | null: false |
| house_number  | string  | null: false |
| building_name | string  |             |
| phone         | string  | null: false |

### Association

belongs_to :buyer


## comments table

| Column | Type | Options     |
|--------|------|-------------|
| text   | text |             |

### Association

belongs_to :buyer