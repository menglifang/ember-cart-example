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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120414064417) do

  create_table "ember_cart_cart_items", :force => true do |t|
    t.integer  "cartable_id"
    t.string   "cartable_type"
    t.integer  "cart_id"
    t.string   "name"
    t.decimal  "price",         :precision => 10, :scale => 2
    t.integer  "quantity"
    t.integer  "base_quantity"
    t.string   "group"
    t.integer  "parent_id"
    t.datetime "created_at",                                   :null => false
    t.datetime "updated_at",                                   :null => false
  end

  add_index "ember_cart_cart_items", ["cart_id"], :name => "index_ember_cart_cart_items_on_cart_id"
  add_index "ember_cart_cart_items", ["cartable_id"], :name => "index_ember_cart_cart_items_on_cartable_id"
  add_index "ember_cart_cart_items", ["cartable_type"], :name => "index_ember_cart_cart_items_on_cartable_type"
  add_index "ember_cart_cart_items", ["name"], :name => "index_ember_cart_cart_items_on_name"
  add_index "ember_cart_cart_items", ["parent_id"], :name => "index_ember_cart_cart_items_on_parent_id"

  create_table "ember_cart_carts", :force => true do |t|
    t.string   "name"
    t.integer  "shopper_id"
    t.string   "shopper_type"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "ember_cart_carts", ["shopper_id"], :name => "index_ember_cart_carts_on_shopper_id"
  add_index "ember_cart_carts", ["shopper_type"], :name => "index_ember_cart_carts_on_shopper_type"

  create_table "product_categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "product_categories", ["name"], :name => "index_product_categories_on_name"

  create_table "products", :force => true do |t|
    t.string   "name"
    t.decimal  "price",               :precision => 8, :scale => 2
    t.string   "group"
    t.string   "ancestry"
    t.integer  "product_category_id"
    t.datetime "created_at",                                        :null => false
    t.datetime "updated_at",                                        :null => false
  end

  add_index "products", ["ancestry"], :name => "index_products_on_ancestry"
  add_index "products", ["name"], :name => "index_products_on_name"
  add_index "products", ["product_category_id"], :name => "index_products_on_product_category_id"

end
