# DB 設計

## users table

| Column                | Type   | Options     |
|-----------------------|--------|-------------|
| nickname              | string | null: false |
| email                 | string | null: false |
| password              | string | null: false |
| password_confirmation | string | null: false |
| family_name           | string | null: false |
| first_name            | string | null: false |
| birthday              | date   | null: false |

### Association


## items table

| Column        | Type    | Options           |
|---------------|-------- |-------------------|
| product_name  | string  | null: false       |
| user_id       | integer | foreign_key: true |
| category      | string  | null: false       |
| status        | string  | null: false       |
| shipp_cost    | integer | null: false       |
| delivery_area | string  | null: false       |
| shipp_date    | date    | null: false       |
| price         | integer | null: false       |

### Association


## buyers table

| Column          | Type    | Options     |
|-----------------|-------- |-------------|
| card_number     | integer | null: false |
| expiration_date | integer | null: false |
| security_code   | integer | null: false |

### Association


## addresses table

| Column        | Type    | Options     |
|---------------|---------|-------------|
| postal_code   | integer | null: false |
| prefecture    | string  | null: false |
| city          | string  | null: false |
| house_number  | integer | null: false |
| building_name | string  |             |
| phone         | integer | null: false |

### Association


## comments table

| Column | Type | Options     |
|--------|------|-------------|
| text   | text |             |

### Association