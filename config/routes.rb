Rails.application.routes.draw do
  resources :livechats
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "livechats#index"
end
