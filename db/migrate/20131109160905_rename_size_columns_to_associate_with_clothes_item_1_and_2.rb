class RenameSizeColumnsToAssociateWithClothesItem1And2 < ActiveRecord::Migration
  
  def up
    rename_column :children, :size_1, :clothes_item_1_size_1
    rename_column :children, :size_2, :clothes_item_1_size_2
    rename_column :children, :size_3, :clothes_item_2_size_1
    rename_column :children, :size_4, :clothes_item_2_size_2
  end

  def down
    rename_column :children, :clothes_item_1_size_1, :size_1
    rename_column :children, :clothes_item_1_size_2, :size_2
    rename_column :children, :clothes_item_2_size_1, :size_3
    rename_column :children, :clothes_item_2_size_2, :size_4
  end

end
