require "test_helper"

class QuestionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @question = questions(:one)
  end

  test "should get index" do
    get questions_url
    assert_response :success
  end

  test "should get new" do
    get new_question_url
    assert_response :success
  end

  test "should create question" do
    assert_difference('Question.count') do
      post questions_url, params: { question: { answer_a: @question.answer_a, answer_b: @question.answer_b, answer_c: @question.answer_c, answer_d: @question.answer_d, answer_e: @question.answer_e, answer_f: @question.answer_f, category: @question.category, correct_answer_a: @question.correct_answer_a, correct_answer_b: @question.correct_answer_b, correct_answer_c: @question.correct_answer_c, correct_answer_d: @question.correct_answer_d, correct_answer_e: @question.correct_answer_e, correct_answer_f: @question.correct_answer_f, description: @question.description, difficulty: @question.difficulty, explanation: @question.explanation, question_id: @question.question_id, question_name: @question.question_name, tip: @question.tip } }
    end

    assert_redirected_to question_url(Question.last)
  end

  test "should show question" do
    get question_url(@question)
    assert_response :success
  end

  test "should get edit" do
    get edit_question_url(@question)
    assert_response :success
  end

  test "should update question" do
    patch question_url(@question), params: { question: { answer_a: @question.answer_a, answer_b: @question.answer_b, answer_c: @question.answer_c, answer_d: @question.answer_d, answer_e: @question.answer_e, answer_f: @question.answer_f, category: @question.category, correct_answer_a: @question.correct_answer_a, correct_answer_b: @question.correct_answer_b, correct_answer_c: @question.correct_answer_c, correct_answer_d: @question.correct_answer_d, correct_answer_e: @question.correct_answer_e, correct_answer_f: @question.correct_answer_f, description: @question.description, difficulty: @question.difficulty, explanation: @question.explanation, question_id: @question.question_id, question_name: @question.question_name, tip: @question.tip } }
    assert_redirected_to question_url(@question)
  end

  test "should destroy question" do
    assert_difference('Question.count', -1) do
      delete question_url(@question)
    end

    assert_redirected_to questions_url
  end
end
