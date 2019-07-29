Rails.application.routes.draw do
  root 'home#index'
  resources :memes, only: [:create, :show, :update]
end
