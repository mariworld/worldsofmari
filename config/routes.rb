Rails.application.routes.draw do
  resources :comments, only: [:index,:show,:create,:destroy]
  resources :videos
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
