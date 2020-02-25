Rails.application.routes.draw do
  root 'boards#index'

  resources :users
  resources :boards
  resources :joins
end
