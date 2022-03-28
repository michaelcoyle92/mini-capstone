Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # index
  get "/products" => "products#index"
  # show
  get "/products/:id" => "products#show"
  # create
  post "/products" => "products#create"
  # update
  patch "/products/:id" => "products#update"
  # destroy
  delete "/products/:id" => "products#destroy"

  get "/suppliers" => "suppliers#index"
  # show
  get "/suppliers/:id" => "suppliers#show"
  # create
  post "/suppliers" => "suppliers#create"
  # update
  patch "/suppliers/:id" => "suppliers#update"
  # destroy
  delete "/suppliers/:id" => "suppliers#destroy"

  post "/users" => "users#create"

  post "/sessions" => "sessions#create"

  get "/orders" => "orders#index"
  get "/orders/:id" => "orders#show"
  post "/orders" => "orders#create"

  get "/carted_products" => "carted_products#index"
  post "/carted_products" => "carted_products#create"
  patch "/carted_products/:id" => "carted_products#update"
end
