class AddAgeShoeSizePantSizeAndShirtSizeToChildren < ActiveRecord::Migration
  def change
    add_column :children, :age, :integer
    add_column :children, :shoe_size, :string
    add_column :children, :pant_size, :string
    add_column :children, :shirt_size, :string
  end
end
