class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.integer :question_id
      t.text :question_name
      t.text :description
      t.text :answer_a
      t.text :answer_b
      t.text :answer_c
      t.text :answer_d
      t.text :answer_e
      t.text :answer_f
      t.boolean :correct_answer_a
      t.boolean :correct_answer_b
      t.boolean :correct_answer_c
      t.boolean :correct_answer_d
      t.boolean :correct_answer_e
      t.boolean :correct_answer_f
      t.text :explanation
      t.text :tip
      t.text :category
      t.text :difficulty

      t.timestamps
    end
  end
end
