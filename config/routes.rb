Rails.application.routes.draw do
  root 'users#index'
  # get 'post/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")

  resources :users, only: [:index, :show] do
    resources :posts, only: [:index, :show, :new, :create] do
    resources :comments, only: [:create]
    end
  resources :posts do 
    resources :likes, only: [:create]
  end
end
end
