Rails.application.routes.draw do
  root 'boards#index'

  get 'login' => 'user_sessions#new', :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout 

  resources :users_sessions
  resources :users
  resources :boards, shallow: true do
    resources :join
  end
end
