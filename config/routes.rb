Rails.application.routes.draw do
  devise_for :users

  resources :chats do
    resources :messages
  end

  devise_scope :user do
    # Redirests signing out users back to sign-in
    get "users", to: "devise/sessions#new"
  end

  get "user/:id", to: "users#show", as: 'user'
  get 'dashboard/home'
  root 'dashboard#home'
end
