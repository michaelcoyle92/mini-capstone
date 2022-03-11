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
      name: "wood",
      price: 4323,
      url_image: "mrthfndjs.com"
      description: "A Plank of wood"
    )
  

    product.save
    render json: product.as_json
  end

  

end
