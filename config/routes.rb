Rails.application.routes.draw do
  get 'pictures/index'

  resources :pictures

  root 'pictures#index'
end


# /Users/student/Projects/Week8/instagram-challenge/makersgram/config/routes.rb

 # get 'users/index'
  # Tells rails to map requests to /users/index on the url.
  # root 'users#index'
  # Tells rails to map requests to the root of the application to the 
  # users controller index. 