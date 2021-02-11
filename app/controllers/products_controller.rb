class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end 

  def new
    @product = Product.new
  end 

  def create 
    @product = Product.new(product_params)

    if @product.save
      redirect_to @product
    else  
      render root
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.delete
    redirect_to root_path
  end

  private 
  def product_params
    params.permit(:title, :description, :gender, :price)
  end 
end
