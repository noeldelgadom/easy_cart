Rails.application.routes.draw do
  resources :carts, only: [:show, :create, :edit, :update, :destroy]

  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
