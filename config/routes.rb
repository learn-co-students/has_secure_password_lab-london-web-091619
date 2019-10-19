Rails.application.routes.draw do
  get '/login', to: 'sessions#new', as: 'login_user'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy', as: 'destroy_user'

  get '/users/new', to: 'users#new', as: 'new_user'
  post '/users', to: 'users#create'
   


end
