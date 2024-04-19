# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_04_18_190711) do
  create_table "doctor_slots", force: :cascade do |t|
    t.integer "doctors_id"
    t.integer "slots_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["doctors_id"], name: "index_doctor_slots_on_doctors_id"
    t.index ["slots_id"], name: "index_doctor_slots_on_slots_id"
  end

  create_table "doctors", force: :cascade do |t|
    t.integer "rating", default: 0
    t.integer "total_rate", default: 0
    t.integer "review_count", default: 0
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_doctors_on_user_id", unique: true
  end

  create_table "slots", force: :cascade do |t|
    t.string "timings"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "role", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "doctor_slots", "doctors", column: "doctors_id"
  add_foreign_key "doctor_slots", "slots", column: "slots_id"
  add_foreign_key "doctors", "users"
end
