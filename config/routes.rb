Rails.application.routes.draw do
  resources :usuarios
  get 'tweet/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'tweet/usuario'
  # Defines the root path route ("/")
   root "tweet#index"
end
