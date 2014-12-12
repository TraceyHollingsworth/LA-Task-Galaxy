class CreateTask < ActiveRecord::Migration
  def change
    create_table :tasks do |table|
      table.string :task_name, null: false
      table.text :description
      table.datetime :due_date
      table.integer :project_id
    end

    add_index :tasks, :task_name, unique: true
  end
end
