Rails.application.routes.draw do
  get 'quiz/home'
  resources :questions
  root 'quiz#home'
end
