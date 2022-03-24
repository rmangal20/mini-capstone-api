Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/products" => "products#index"
  get "/products/:id" => "products#show"
  patch "/products/:id" => "products#update"
  post "/products" => "products#create"
  delete "/products/:id" => "products#destroy"

  get "suppliers" => "suppliers#index"
  get "suppliers/:id" => "suppliers#show"
  patch "suppliers/:id" => "suppliers#update"
  post "suppliers" => "suppliers#create"
  delete "suppliers/:id" => "suppliers#destroy"

  get "images" => "images#index"
  get "images/:id" => "images#show"
  patch "images/:id" => "images#update"
  post "images" => "images#create"
  delete "images/:id" => "images#destroy"

  post "/users" => "users#create"
  get "/login" => "users#login"

  post "/sessions" => "sessions#create"
  get "/sessions" => "sessions#show"

  post "/orders" => "orders#create"
  get "/orders/:id" => "orders#show"
  get "/orders" => "orders#index"
end
