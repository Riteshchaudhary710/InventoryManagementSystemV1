# products controller for product
class ProductsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    products = Product.order('created_at DESC')
    render json: { status: 'Success', message: 'products loaded', data: products }, status: :ok
  end

  def create
    product = Product.new(product_params)

    if product.save
      render json: { status: 'Success', message: 'Product saved', data: product }, status: :ok
    else
      render json: { status: 'Error', message: 'Product not saved', data: product.errors },
             status: :unprocessable_entity
    end
  end

  private

  def product_params
    params.permit(:name, :upc, :part_number, :label, :quantity)
  end
end
