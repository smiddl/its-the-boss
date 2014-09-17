class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|

	t.string :fname, limit: 25, null: false
	t.string :lname, limit: 25, null: false
	t.string :email, limit: 40, null: false
	t.string :phone, limit: 15

      t.timestamps
    end
    add_index :contacts, :email, unique: true
  end
end
