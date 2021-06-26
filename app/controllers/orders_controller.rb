class OrdersController < ApplicationController
  before_action :authenticate_user!, except: :index
  
  def index
    @order_address = OrderAddress.new
  end

end
