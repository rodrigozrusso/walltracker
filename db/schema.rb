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

ActiveRecord::Schema.define(version: 20131005023413) do

  create_table "cards", force: true do |t|
    t.string   "title"
    t.string   "description"
    t.string   "acceptance_description"
    t.integer  "priority_order"
    t.integer  "parent_id"
    t.integer  "status_id"
    t.integer  "type_id"
    t.integer  "importance_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cards", ["importance_id"], name: "index_cards_on_importance_id", using: :btree
  add_index "cards", ["parent_id"], name: "index_cards_on_parent_id", using: :btree
  add_index "cards", ["status_id"], name: "index_cards_on_status_id", using: :btree
  add_index "cards", ["type_id"], name: "index_cards_on_type_id", using: :btree

  create_table "importances", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "statuses", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
