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

ActiveRecord::Schema.define(version: 2018_10_25_170833) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "driverroutes", force: :cascade do |t|
    t.bigint "driver_id"
    t.bigint "route_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["driver_id"], name: "index_driverroutes_on_driver_id"
    t.index ["route_id"], name: "index_driverroutes_on_route_id"
  end

  create_table "drivers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.string "idcard"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ratings", force: :cascade do |t|
    t.float "rating"
    t.bigint "user_id"
    t.bigint "driver_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["driver_id"], name: "index_ratings_on_driver_id"
    t.index ["user_id"], name: "index_ratings_on_user_id"
  end

  create_table "routes", force: :cascade do |t|
    t.string "start"
    t.string "end"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usrfavs", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "route_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["route_id"], name: "index_usrfavs_on_route_id"
    t.index ["user_id"], name: "index_usrfavs_on_user_id"
  end

  add_foreign_key "driverroutes", "drivers"
  add_foreign_key "driverroutes", "routes"
  add_foreign_key "ratings", "drivers"
  add_foreign_key "ratings", "users"
  add_foreign_key "usrfavs", "routes"
  add_foreign_key "usrfavs", "users"
end
