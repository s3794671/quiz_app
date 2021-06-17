require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  setup do
    @question = questions(:one)
  end

  test "visiting the index" do
    visit questions_url
    assert_selector "h1", text: "Questions"
  end

  test "creating a Question" do
    visit questions_url
    click_on "New Question"

    fill_in "Answer a", with: @question.answer_a
    fill_in "Answer b", with: @question.answer_b
    fill_in "Answer c", with: @question.answer_c
    fill_in "Answer d", with: @question.answer_d
    fill_in "Answer e", with: @question.answer_e
    fill_in "Answer f", with: @question.answer_f
    fill_in "Category", with: @question.category
    check "Correct answer a" if @question.correct_answer_a
    check "Correct answer b" if @question.correct_answer_b
    check "Correct answer c" if @question.correct_answer_c
    check "Correct answer d" if @question.correct_answer_d
    check "Correct answer e" if @question.correct_answer_e
    check "Correct answer f" if @question.correct_answer_f
    fill_in "Description", with: @question.description
    fill_in "Difficulty", with: @question.difficulty
    fill_in "Explanation", with: @question.explanation
    fill_in "Question", with: @question.question_id
    fill_in "Question name", with: @question.question_name
    fill_in "Tip", with: @question.tip
    click_on "Create Question"

    assert_text "Question was successfully created"
    click_on "Back"
  end

  test "updating a Question" do
    visit questions_url
    click_on "Edit", match: :first

    fill_in "Answer a", with: @question.answer_a
    fill_in "Answer b", with: @question.answer_b
    fill_in "Answer c", with: @question.answer_c
    fill_in "Answer d", with: @question.answer_d
    fill_in "Answer e", with: @question.answer_e
    fill_in "Answer f", with: @question.answer_f
    fill_in "Category", with: @question.category
    check "Correct answer a" if @question.correct_answer_a
    check "Correct answer b" if @question.correct_answer_b
    check "Correct answer c" if @question.correct_answer_c
    check "Correct answer d" if @question.correct_answer_d
    check "Correct answer e" if @question.correct_answer_e
    check "Correct answer f" if @question.correct_answer_f
    fill_in "Description", with: @question.description
    fill_in "Difficulty", with: @question.difficulty
    fill_in "Explanation", with: @question.explanation
    fill_in "Question", with: @question.question_id
    fill_in "Question name", with: @question.question_name
    fill_in "Tip", with: @question.tip
    click_on "Update Question"

    assert_text "Question was successfully updated"
    click_on "Back"
  end

  test "destroying a Question" do
    visit questions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Question was successfully destroyed"
  end
end
