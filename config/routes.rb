Rails.application.routes.draw do
  # get 'pictures/index'
  
  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  root 'pictures#index'

  resources :pictures
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  
  
  get 'login', to: 'sessions#new', as: 'login'
  # get 'login', to: 'sessions#new'
  get 'login', to: 'sessions#create'
  get 'welcome', to: 'sessions#welcome'
  get 'logout', to: 'sessions#destroy'
  get 'signup', to: 'users#new'
  get 'delete', to: 'pictures#destroy'

end


# /Users/student/Projects/Week8/instagram-challenge/makersgram/config/routes.rb

 # get 'users/index'
  # Tells rails to map requests to /users/index on the url.
  # root 'users#index'
  # Tells rails to map requests to the root of the application to the 
  # users controller index. 