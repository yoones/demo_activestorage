Rails.application.routes.draw do
  resources :customers
  resources :profiles
  root to: 'home#index'
end
