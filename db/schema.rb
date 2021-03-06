# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20141212162109) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assignments", force: true do |t|
    t.string "user_id",    null: false
    t.string "project_id", null: false
  end

  create_table "projects", force: true do |t|
    t.string "project_name", null: false
    t.text   "description"
  end

  add_index "projects", ["project_name"], name: "index_projects_on_project_name", unique: true, using: :btree

  create_table "tasks", force: true do |t|
    t.string   "task_name",   null: false
    t.text     "description"
    t.datetime "due_date"
    t.integer  "project_id"
    t.integer  "user_id"
  end

  add_index "tasks", ["task_name"], name: "index_tasks_on_task_name", unique: true, using: :btree

  create_table "users", force: true do |t|
    t.string   "email",      null: false
    t.string   "password",   null: false
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

end
