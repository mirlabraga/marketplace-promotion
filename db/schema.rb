# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_10_19_181350) do

  create_table "Checkouts_Products", id: false, force: :cascade do |t|
    t.integer "Checkout_id", null: false
    t.integer "Product_id", null: false
    t.index ["Checkout_id", "Product_id"], name: "index_Checkouts_Products_on_checkout_id_and_product_id"
    t.index ["Product_id", "Checkout_id"], name: "index_Checkouts_Products_on_product_id_and_checkout_id"
  end

  create_table "checkouts", force: :cascade do |t|
    t.float "total"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "discounts", force: :cascade do |t|
    t.integer "type"
    t.float "value"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "minimums", force: :cascade do |t|
    t.integer "type"
    t.float "value"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "code"
    t.float "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
  end

  create_table "rules", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "products_id"
    t.integer "minimums_id", null: false
    t.integer "discounts_id", null: false
    t.index ["discounts_id"], name: "index_rules_on_discounts_id"
    t.index ["minimums_id"], name: "index_rules_on_minimums_id"
    t.index ["products_id"], name: "index_rules_on_products_id"
  end

  add_foreign_key "rules", "discounts", column: "discounts_id"
  add_foreign_key "rules", "minimums", column: "minimums_id"
  add_foreign_key "rules", "products", column: "products_id"
end
