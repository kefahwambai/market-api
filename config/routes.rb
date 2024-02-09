Rails.application.routes.draw do

  resources :orders
  resources :categories
  resources :products
  resources :users
  resources :sessions, only: [:create, :destroy]


  post '/signup', to: 'users#create'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/me', to: 'users#show'  
 
end
