class ProductsController < ApplicationController
  def index
    @product_category = ProductCategory.find(params[:product_category_id])
    @products = @product_category.products
  end
end
