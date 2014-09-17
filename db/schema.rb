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

ActiveRecord::Schema.define(version: 20140917010222) do

  create_table "contacts", force: true do |t|
    t.string   "fname",      limit: 25, null: false
    t.string   "lname",      limit: 25, null: false
    t.string   "email",      limit: 40, null: false
    t.string   "phone",      limit: 15
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "contacts", ["email"], name: "email", unique: true, using: :btree

  create_table "users", force: true do |t|
    t.string   "name",       limit: 50
    t.string   "email",      limit: 40
    t.string   "password",   limit: 15
    t.integer  "level",      limit: 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

end
