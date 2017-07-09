class CartsController < ApplicationController
  before_action :set_cart, only: [:show, :edit, :update, :destroy]

  def show
    @products = @cart.products
  end

  def create
  end

  def edit
  end

  def add_product
    @product = Product.find(params[:id])
    @cart.products << @product
  end

  def update
    @cart.update_total
  end

  def destroy
  end

  private

    def set_cart
      @cart = Cart.find(params[:id])
    end
end
