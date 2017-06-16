Rails.application.routes.draw do
  resources :student_scores
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "student_scores#index"
end
