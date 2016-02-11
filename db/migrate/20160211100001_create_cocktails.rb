class CreateCocktails < ActiveRecord::Migration
  def change
    create_table :cocktails do |t|
      t.string :name
      t.integer :price
      t.string :origin
      t.integer :alcool_degree

      t.timestamps null: false
    end
  end
end
