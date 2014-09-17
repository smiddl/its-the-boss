class CreateUsers < ActiveRecord::Migration
  def change
   drop_table :users

    create_table :users do |t|
      t.string :name, limit: 50, null: false
      t.string :email, limit: 40, null: false
      t.string :password_digest, null: false
      t.integer :level, limit: 2, null: false

      t.timestamps
    end
    add_index :users, :email, unique: true
  end
end
