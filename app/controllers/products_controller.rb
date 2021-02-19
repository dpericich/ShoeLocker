class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def mens_shoes
    @products = Product.mens_shoes
  end

  def female_shoes
    @products = Product.females_shoes 
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

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to product_path(@product)
    else  
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.delete
    redirect_to root_path
  end

  private 
  def product_params
    params.require(:product).permit(:title, :description, :gender, :price)
  end 
end
