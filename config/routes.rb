Rails.application.routes.draw do
  root 'home#root'
  resources :memes, only: [:create, :show, :update]
end
