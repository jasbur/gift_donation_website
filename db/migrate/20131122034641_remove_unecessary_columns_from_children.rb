class RemoveUnecessaryColumnsFromChildren < ActiveRecord::Migration
  def up
    remove_column :children, :clothes_item_1
    remove_column :children, :clothes_item_1_size_1
    remove_column :children, :clothes_item_1_size_2
    remove_column :children, :clothes_item_2
    remove_column :children, :clothes_item_2_size_1
    remove_column :children, :clothes_item_2_size_2
  end

  def down
    add_column :children, :clothes_item_1, :string
    add_column :children, :clothes_item_1_size_1, :string
    add_column :children, :clothes_item_1_size_2, :string
    add_column :children, :clothes_item_2, :string
    add_column :children, :clothes_item_2_size_1, :string
    add_column :children, :clothes_item_2_size_2, :string
  end
end
