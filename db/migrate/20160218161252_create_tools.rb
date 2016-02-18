class CreateTools < ActiveRecord::Migration
  def change
    create_table :tools do |t|
      t.string :name
      t.integer :price
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
