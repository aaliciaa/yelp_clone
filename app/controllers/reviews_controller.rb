class ReviewsController < ApplicationController

  def new
    @review = Review.new
  end

  def create
    @review = Review.create(review_params)
    redirect_to review_path(@review)
  end

  private
  def review_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:review).permit(:content, :rating, :restaurant_id)
  end

  def set_review
    @review = Review.find(params[:id])
  end

end
