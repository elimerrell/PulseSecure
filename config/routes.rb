Rails.application.routes.draw do
  resources :student_exam_results
  resources :exams
  resources :students
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
