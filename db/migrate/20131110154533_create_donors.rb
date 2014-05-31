class CreateDonors < ActiveRecord::Migration
  def change
    create_table :donors do |t|

      t.timestamps
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :street_address
      t.string :city
      t.string :zip_code
      t.integer :child_id
    end
  end
end
