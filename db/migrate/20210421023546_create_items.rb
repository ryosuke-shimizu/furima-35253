class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :product_name
      t.references :user, foreign_key: true
      t.integer :category_id
      t.integer :status_id
      t.integer :shipp_cost_id
      t.integer :prefecture_id
      t.integer :shipp_date_id
      t.integer :price
      t.text :description
      t.timestamps
    end
  end
end
