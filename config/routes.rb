Rails.application.routes.draw do
  # routes for user
  get 'users/index'
  devise_for :users, :suppliers, :admins
  # routes for products
  resources :products
  root to: 'products#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
