class CreateAssignment < ActiveRecord::Migration
  def change
    create_table :assignments do |table|
      table.string :user_id, null: false
      table.string :project_id, null: false
    end
  end
end
