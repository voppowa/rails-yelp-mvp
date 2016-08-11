class Admin::ReviewsController < ApplicationController

  before_action :find_restaurant, only: [:new, :show, :edit, :create, :update]

  def index
    @reviews = Review.all
  end

  def show
    @reviews = @restaurant.reviews
    @review = @reviews.find(params[:id])
  end

  def new
    @review = Review.new
  end

  def edit
  end

  def create
    @review = @restaurant.reviews.build(review_params)
    if @review.save
      redirect_to admin_restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def update
    @restaurant.reviews.update(review_params)

    respond_to do |format|
      if @review.update(review_params)
        format.html { redirect_to admin_restaurant_path(@review), notice: 'review was successfully updated.' }
        format.json { render :show, status: :ok, location: @review }
      else
        format.html { render :edit }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = @restaurant.reviews.find(params[:id])
    @review.destroy
    redirect_to @restaurant, :notice => "Task Deleted"
  end

private

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end

end
