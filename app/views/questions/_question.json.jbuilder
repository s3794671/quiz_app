json.extract! question, :id, :question_id, :question_name, :description, :answer_a, :answer_b, :answer_c, :answer_d, :answer_e, :answer_f, :correct_answer_a, :correct_answer_b, :correct_answer_c, :correct_answer_d, :correct_answer_e, :correct_answer_f, :explanation, :tip, :category, :difficulty, :created_at, :updated_at
json.url question_url(question, format: :json)
