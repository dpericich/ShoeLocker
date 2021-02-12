class RatingsController < ApplicationController
    def show
        @product = Product.find(params[:product_id])
    end

    def create
        @product = Product.find(params[:product_id])
        @comment = @product.ratings.create(rating_params)
        redirect_to product_path(@product)
    end

    def edit
    end

    def update
    end 

    def destroy 
    end

    private
    def rating_params
        params.require(:rating).permit(:rating, :review, :customer)
    end
end
