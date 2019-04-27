class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end
  
  def show
    @review = Review.find(params[:id])
  end
  
  def new
    @review = Review.new
  end
  
  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    @review.user_name = current_user.name
    
    if @review.save
      redirect_to @review
    else
      render 'new'
    end
  end
  
  def edit
    @review = Review.find(params[:id])
  end
  
  def update
    @review = Review.find(params[:id])
    if @review.update(review_params)
      redirect_to @review
    else
      render 'edit'
    end
  end
  
  def destroy
    @review = Review.find(params[:id])
    @review.destroy!
      
    redirect_to reviews_path
  end
end

private
  def review_params
    params.require(:review).permit(:title, :author, :rating, :text, :image)
  end