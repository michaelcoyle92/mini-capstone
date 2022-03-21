class ProductsController < ApplicationController
  def index 
    # @products = Product.all
    product = Product.all  
    # render json: products.as_json(methods: [:tax, :is_discounted?, :total])
    render json: product.as_json
    # render template: "products/index"
  end

  def show
    # product = Product.find_by(id: params[:id])
    @product = Product.find_by(id: params[:id])
    render template: "products/show"
    
    # render json: product.as_json 
  end

  def create
    product = Product.new(
      name: params[:input_name],
      price: params[:input_price],
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


    render json: {message: "destroyed"}
  end
  

end
