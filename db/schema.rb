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

ActiveRecord::Schema.define(version: 20140907235525) do

  create_table "capabilities", force: true do |t|
    t.integer  "vendor_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "capabilities", ["vendor_id"], name: "index_capabilities_on_vendor_id"

  create_table "capabilities_vendors", id: false, force: true do |t|
    t.integer "capability_id"
    t.integer "vendor_id"
  end

  create_table "categories", force: true do |t|
    t.integer  "vendor_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "categories", ["vendor_id"], name: "index_categories_on_vendor_id"

  create_table "categories_vendors", id: false, force: true do |t|
    t.integer "category_id"
    t.integer "vendor_id"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "vendors", force: true do |t|
    t.integer  "category_id"
    t.integer  "capability_id"
    t.string   "name"
    t.string   "url"
    t.integer  "vendor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "vendors", ["capability_id"], name: "index_vendors_on_capability_id"
  add_index "vendors", ["category_id"], name: "index_vendors_on_category_id"

end
