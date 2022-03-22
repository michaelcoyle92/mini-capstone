class OrdersController < ApplicationController
  def show
    order = Order.find_by(id: params[:id])
    render json: order.as_json
  end

  def index
    order = Order.find_by(id: params[:id])
    render json: order.as_json
  end
  
  
  
  def create
    order = Order.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: params[:subtotal],
      tax: params[:tax],
      total: params[:total]

    )
    order.save
    render json: order.as_json
  end
end
