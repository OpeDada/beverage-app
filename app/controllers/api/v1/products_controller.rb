class Api::V1::ProductsController < ApplicationController
  # before_action :set_product, only: %i[show edit update destroy]

  def index
    products = Product.all.order(created_at :desc)
    render json: products
  end

  def create
    product = Product.create!(product_params)
    if product
      render json: product
    else
      render json: product.errors
    end
  end

  def show
    if product #product method below
      render json: product
    else
      render json: product.errors
    end
  end

  def new
  end

  def edit
  end

  def destroy
    product&.destroy # & avoids nil errors when calling  a method
    render json: { message: 'product deleted!' }
  end

  private

  def product_params
    params.require(:product).permit(:name, :price, :description, :brand, :photo)
  end

  def set_product
    @product = Product.find(params[:id])
  end
end
