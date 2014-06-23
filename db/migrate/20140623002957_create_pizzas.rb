class CreatePizzas < ActiveRecord::Migration
  def change
    create_table :pizzas do |t|
      t.string :name
      t.integer :slices
      t.text :description

      t.timestamps
    end
  end
end
