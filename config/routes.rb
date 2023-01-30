Rails.application.routes.draw do
  root 'user#show'
  get 'post/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
