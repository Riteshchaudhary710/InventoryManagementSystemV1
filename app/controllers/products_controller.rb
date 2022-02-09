# products controller for product
class ProductsController < ApplicationController
  before_action :authenticate_user!
  def index
    @products = Product.order('created_at DESC')
    # render json: { status: 'Success', message: 'products loaded', data: products }, status: :ok
  end

  def show
    product = Product.find_by(id: params[:id])
    render json: { status: 'Success', message: 'product loaded', data: product }, status: :ok
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

  def destroy
    product = Product.find(params[:id])
    product.destroy
    render json: { status: 'sucess', message: 'Deleted Product', data: product }, status: :ok
  end

  def update
    product = Product.find(params[:id])

    if product.update(product_params)
      render json: { status: 'Success', message: 'Product update', data: product }, status: :ok
    else
      render json: { status: 'Error', message: 'Product not update', data: product.errors },
             status: :unprocessable_entity
    end
  end

  private

  def product_params
    params.permit(:name, :upc)
  end
end
