Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'products#index'
  resources :products, only: [:index, :show] do
    member do
      post :add_to_cart
    end
  end
  
  resource :cart
  
  namespace :admin do
    root 'products#index'
    resources :products
  end
end
