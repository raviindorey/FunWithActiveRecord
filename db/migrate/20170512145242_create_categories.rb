class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :name
      t.timestamps
    end

    add_reference :products, :category, index: true

    reversible do |dir|
      dir.up do
        category_1 = Category.create(name: "Furniture")
        category_2 = Category.create(name: "Cloths")

        Product.where.not(name: "Green Shirt").update_all(category_id: category_1.id)
        Product.where(name: "Green Shirt").update_all(category_id: category_2.id)
      end

      dir.down do
        #reversal of this migration does not require down.
      end
    end

  end
end
