class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price, :precision => 8, :scale => 2
      t.integer :quantity
      t.string :group
      t.string :ancestry
      t.belongs_to :product_category

      t.timestamps
    end
    add_index :products, :name
    add_index :products, :ancestry
    add_index :products, :product_category_id
  end
end
