class QuizController < ApplicationController
  def home
    require "json"
    file = File.open "./quiz.json"
    data = JSON.load file
  end
end

