class Api::V1::ProductsController < ApplicationController
  def index
    product = Product.all
    render json: product
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
    params.permit(:name, :price, :description, :brand)
  end

  def product
    @product ||= Product.find(params[:id])
  end
end
