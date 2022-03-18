class SuppliersController < ApplicationController
  def index 
    supplier = Supplier.all  
    render json: supplier.as_json
  end

  def show
    supplier = Supplier.find_by(id: params[:id])
    render json: supplier.as_json 
  end

  def create
    supplier = Supplier.new(
      name: params[:input_name],
      email: params[:input_email],
      phone_number: params[:input_phone_number]
    )
    if supplier.save
      render json: supplier.as_json
    else
      render json: {errors: supplier.errors.full_messages}
    end
  end

  def update
    supplier = Supplier.find_by(id: params[:id])
    supplier.name = params[:input_name]
    supplier.email = params[:input_email]
    supplier.phone_number= params[:input_phone_number]
   

    supplier.save

    render json: supplier.as_json
  end

  def destroy
    supplier = Supplier.find_by(id: params[:id])
    supplier.destroy


    render json: supplier.as_json
  end


end
