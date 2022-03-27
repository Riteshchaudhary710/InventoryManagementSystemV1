# list down category presence in the system
class CategoryController < ApplicationController
  def index
    category = Category.all.order('created_at DESC')
    render json: { message: 'category added', data: category }, status: :ok
  end
end
