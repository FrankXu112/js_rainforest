class ReviewsController < ApplicationController

  before_filter :ensure_logged_in, only: [:create, :destroy]
  
  def show
  	@review = Review.find(params[:id])
  end

  def create
  	@product = Product.find(params[:product_id])
    @review = @product.reviews.build(review_params)
    @review.user = current_user
    
    respond_to do |format|
      if @review.save
        format.html {redirect_to product_path(@product), notice: "Review created successfully!"}
        format.js {}
      else
        format.html {render 'products/show'}
        format.js {}
      end
    end
  end

  def destroy
    @product = Product.find(params[:product_id])
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to product_path(@product)
  end

  private
  def review_params
    params.require(:review).permit(:comment, :product_id )
  end

end
