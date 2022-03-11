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
end
