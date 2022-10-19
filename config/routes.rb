Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :campers, only: [:index, :show, :create, :update, :destroy]
  resources :activities, only: [:index, :show, :destroy]
  resources :signups, only: [:index, :create]
end
