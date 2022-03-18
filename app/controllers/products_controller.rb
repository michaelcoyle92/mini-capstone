class ProductsController < ApplicationController
  def index 
    product = Product.all  
    render json: product.as_json
    render template: "products/index"
  end

  def show
    product = Product.find_by(id: params[:id])
    render json: product.as_json 
  end

  def create
    product = Product.new(
      name: params[:input_name],
      price: params[:input_price],
      image_url: params[:input_url],
      description: params[:input_description]
    )
    if product.save
      render json: product.as_json
    else
      render json: {errors: product.errors.full_messages}
    end
    
  end

  def update
    product = Product.find_by(id: params[:id])
    product.name = params[:input_name]
    product.price = params[:input_price]
    product.image_url = params[:input_url]
    product.description = params[:input_description]

    product.save

    render json: product.as_json
  end

  def destroy
    product = Product.find_by(id: params[:id])
    product.destroy


    render json: product.as_json
  end
  

end
