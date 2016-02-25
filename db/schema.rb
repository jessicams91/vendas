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

ActiveRecord::Schema.define(version: 20160224185253) do

  create_table "customers", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.string   "address"
    t.string   "cpf_cnpj"
    t.string   "contact_name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "company_name"
    t.date     "birth_date"
  end

  create_table "orders", force: :cascade do |t|
    t.string   "status",         default: "Aberto"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.integer  "user_id"
    t.integer  "customer_id"
    t.integer  "product_id"
    t.string   "coupon"
    t.integer  "plan_id"
    t.integer  "periodicity_id"
    t.integer  "price_id"
  end

  add_index "orders", ["customer_id"], name: "index_orders_on_customer_id"
  add_index "orders", ["periodicity_id"], name: "index_orders_on_periodicity_id"
  add_index "orders", ["plan_id"], name: "index_orders_on_plan_id"
  add_index "orders", ["price_id"], name: "index_orders_on_price_id"
  add_index "orders", ["product_id"], name: "index_orders_on_product_id"
  add_index "orders", ["user_id"], name: "index_orders_on_user_id"

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.boolean  "is_admin"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
