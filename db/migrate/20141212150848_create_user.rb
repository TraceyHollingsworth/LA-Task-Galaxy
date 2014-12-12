class CreateUser < ActiveRecord::Migration
  def change
    create_table :users do |table|
      table.string :email, null: false
      table.string :password, null: false
      table.string :first_name
      table.string :last_name

      table.timestamps
    end

    add_index :users, [:email], unique: true
  end
end

