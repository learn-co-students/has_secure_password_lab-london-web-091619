Rails.application.routes.draw do
  get "sessions/new", to: "sessions#new"

  post "sessions/create", to: "sessions#create"

  get "users/new", to: "users#new", as: "new_user"

  post "users/create", to: "users#create"
end
