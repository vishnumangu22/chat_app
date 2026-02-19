Rails.application.routes.draw do
  root "chatrooms#index"

  resources :chatrooms, only: [ :index ]
  resources :messages, only: [ :create ]
  resources :users, only: [ :new, :create ]


  get    "login",  to: "sessions#new"
  post   "login",  to: "sessions#create"
  delete "logout", to: "sessions#destroy"
end
