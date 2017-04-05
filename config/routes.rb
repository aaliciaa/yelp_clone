Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Homepage
  root to: 'restaurants#index'

  resources :restaurants

  resources :reviews
end
