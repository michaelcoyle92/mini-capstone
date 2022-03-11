class ProductsController < ApplicationController
  def index 
    product = Product.all  
    render json: product.as_json
  end

  def show
    product = Product.find_by(id: params[:id])
    render json: product.as_json
  end

  def create
    product = Product.new(
      name: params[input_name],
      price: params[input_price],
      url_image: params[input_url],
      description: params[input_description]
    )
    product.save
    render json: product.as_json
  end

  def update
    product = Product.find_by(id:1)
    product.name = "biscuit bridge"
    product.price = 2400
    product.image_url = "twitter.com/gfhghj"
    product.description = "a generic description"

    recipe.save

    render json: product.as_json
  end
  

end
