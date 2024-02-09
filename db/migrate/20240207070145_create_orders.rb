class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.references :product, null: false, foreign_key: true
      t.integer :quantity
      t.decimal :total
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
