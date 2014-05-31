class CreateChildren < ActiveRecord::Migration
  
  def change
    create_table :children do |t|

      t.timestamps
      
      t.integer :donor_id
      t.string :name
      t.string :wish_gift
      t.string :size_1
      t.string :size_2
      t.string :size_3
      t.string :size_4
    end
  end
  
end
