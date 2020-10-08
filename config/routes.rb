Rails.application.routes.draw do
  get 'marketplace/index'
  resources :checkout
  root 'marketplace#index'
end
