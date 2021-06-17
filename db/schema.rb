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

ActiveRecord::Schema.define(version: 2021_06_17_053513) do

  create_table "questions", force: :cascade do |t|
    t.integer "question_id"
    t.text "question_name"
    t.text "description"
    t.text "answer_a"
    t.text "answer_b"
    t.text "answer_c"
    t.text "answer_d"
    t.text "answer_e"
    t.text "answer_f"
    t.boolean "correct_answer_a"
    t.boolean "correct_answer_b"
    t.boolean "correct_answer_c"
    t.boolean "correct_answer_d"
    t.boolean "correct_answer_e"
    t.boolean "correct_answer_f"
    t.text "explanation"
    t.text "tip"
    t.text "category"
    t.text "difficulty"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
