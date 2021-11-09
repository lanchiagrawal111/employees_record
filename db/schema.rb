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

ActiveRecord::Schema.define(version: 2021_10_31_162159) do

  create_table "employees", force: :cascade do |t|
    t.string "FirstName"
    t.string "LastName"
    t.string "Address"
    t.string "City"
    t.string "State"
    t.integer "PostalCode"
    t.integer "PhoneNumber"
    t.string "Email"
    t.date "DOB"
    t.float "salary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "Emp_Code"
  end

  create_table "payment_histories", force: :cascade do |t|
    t.integer "purse_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["purse_id"], name: "index_payment_histories_on_purse_id"
  end

  create_table "purses", force: :cascade do |t|
    t.integer "employee_id"
    t.integer "funds"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_id"], name: "index_purses_on_employee_id"
  end

end
