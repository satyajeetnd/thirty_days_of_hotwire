Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'pages#kitchensink'

  get 'multiple_select', to: 'pages#multiple_select'
  resources :technologies, only: [:create]
  resources :favourite_technologies, only: [:create, :destroy]
end
