class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name, null:false
      t.string :description
      t.integer :price, null:false
      
    end
  end
end
