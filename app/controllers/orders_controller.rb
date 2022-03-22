class OrdersController < ApplicationController
  def show
    order = Order.find_by(id: params[:id])
    render json: order.as_json
    @order = Order.find_by(id: params[:id])
    if @order.user_id == current_user.id
      render template: "orders/show"
    else
      render json: {}, status: :unauthorized
    end
  end
  end

  def index
    order = Order.find_by(id: params[:id])
    render json: order.as_json
  end
  
  
  
  def create
    
    
    product = Product.find_by(id: params[:product_id])    
    calculated_subtotal = params[:quantity].to_i * product.price
    calculated_tax = calculated_subtotal * 0.09

    order = Order.new(
      user_id: params[:user_id],
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: params[:subtotal],
      tax: params[:tax],
      total: params[:total],
      subtotal: calculated_subtotal,
      tax: calculated_tax,
      total: calculated_subtotal + calculated_tax,
    )
    order.save
    render json: order.as_json
end
