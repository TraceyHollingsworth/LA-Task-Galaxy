class CreateProject < ActiveRecord::Migration
  def change
    create_table :projects do |table|
      table.string :project_name, null: false
      table.text :description
    end

    add_index :projects, :project_name, unique: true
  end
end
