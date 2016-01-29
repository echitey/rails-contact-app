class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :firstname, :null => false
      t.string :lastname, :null => false
      t.string :phone, :null => false
      t.string :email

      t.timestamps
    end
  end
end
