class ProductsController < ApplicationController
  def index
    @products = Product.all
    @nombre = "Diego"
  end
end