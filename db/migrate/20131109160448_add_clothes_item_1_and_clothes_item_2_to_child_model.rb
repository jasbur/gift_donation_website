class AddClothesItem1AndClothesItem2ToChildModel < ActiveRecord::Migration
  
  def change
    add_column :children, :clothes_item_1, :string
    add_column :children, :clothes_item_2, :string
  end
  
end
