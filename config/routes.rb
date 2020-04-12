Rails.application.routes.draw do
  # get 'pictures/index'
  
  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  root 'pictures#index'

  resources :pictures
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy'
  get 'signup', to: 'users#new'
  get 'delete', to: 'posts#destroy'

end


# /Users/student/Projects/Week8/instagram-challenge/makersgram/config/routes.rb

 # get 'users/index'
  # Tells rails to map requests to /users/index on the url.
  # root 'users#index'
  # Tells rails to map requests to the root of the application to the 
  # users controller index. 