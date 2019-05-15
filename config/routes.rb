Rails.application.routes.draw do
  resources :categories
  resources :activity_categories
  resources :user_activities
  resources :activities
  resources :providers
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
