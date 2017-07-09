Rails.application.routes.draw do
  devise_for :users

  resources :carts, only: [:show, :create, :edit, :update, :destroy]

  put 'product_to_cart/:id', to: 'products#add_to_cart', as: 'product_to_cart'
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'products#index'
end
