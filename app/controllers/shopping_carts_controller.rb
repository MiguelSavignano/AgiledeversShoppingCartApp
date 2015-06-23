class ShoppingCartsController < ApplicationController
  before_filter :extract_shopping_cart
  before_action :authenticate_user!
  def create
    # binding.pry
    @product = Product.find(params[:product_id])
    @shopping_cart.add(@product, @product.price)
    respond_to do |format|
      format.html { redirect_to @product, notice: 'User was successfully created.' }
      format.js   { } 
      format.json { render json: @product, status: :created, location: @product }
    end
  end

  def show

  end

  private
  def extract_shopping_cart
    shopping_cart_id = session[:shopping_cart_id]
    @shopping_cart = session[:shopping_cart_id] ? ShoppingCart.find(shopping_cart_id) : ShoppingCart.create
    session[:shopping_cart_id] = @shopping_cart.id
  end
end