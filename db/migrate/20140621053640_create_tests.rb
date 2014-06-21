class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.string :name
      t.integer :questions
      t.text :summary
      t.string :teacher
      t.integer :passing_grade

      t.timestamps
    end
  end
end
