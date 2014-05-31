class AddContactedColumnToDonors < ActiveRecord::Migration
  
  def change
    add_column :donors, :contacted, :boolean
  end

end
