class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :inventory
      t.decimal :price, precision: 5, scale:2
      t.datetime :restocked_at

      t.timestamps
    end
  end
end
