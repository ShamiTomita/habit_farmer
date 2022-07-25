Rails.application.routes.draw do
  get 'habits/index'
  devise_for :users
  namespace :admin do
      resources :posts

      root to: "posts#index"
    end
  resources :posts
  root 'public#home'
  get 'about', to:'public#about'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
