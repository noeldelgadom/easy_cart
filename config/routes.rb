Rails.application.routes.draw do
  devise_for :users

  resources :carts, only: [:show, :create, :edit, :update, :destroy]

  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'products#index'
end
