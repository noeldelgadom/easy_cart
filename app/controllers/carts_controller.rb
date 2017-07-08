class CartsController < ApplicationController
  before_action :set_cart, only: [:show, :edit, :update, :destroy]

  def show
    @products = @cart.products
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

    def set_cart
      @cart = Cart.find(params[:id])
    end
end
