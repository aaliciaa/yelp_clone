class RestaurantsController < ApplicationController
before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  def index
    # get and show all restaurants
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.create(restaurant_params)
    redirect_to restaurants_path(@restaurant)
  end

  def edit
  end

  def update
    @restaurant.update(restaurants_params)
    redirect_to restaurants_path(@restaurant)
  end

  def show
  end

  def destroy
    @restaurant.destroy
    redirect_to restaurants_path(@restaurant)
  end

  private
  def restaurant_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:restaurant).permit(:name, :address, :category, :phone_number)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

end
