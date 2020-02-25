Rails.application.routes.draw do
  root 'boards#index'

  resources :users
  resources :boards, shallow: true do
    resources :join
  end
end
