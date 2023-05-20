Rails.application.routes.draw do
  devise_for :users, skip: :registrations
  resources :blogs
  resources :users
  root "blogs#index"
  get '*path', to: 'application#not_found'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
