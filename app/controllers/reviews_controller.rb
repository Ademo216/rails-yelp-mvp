class ReviewsController < ApplicationController
    def index
      @reviews = Review.all
    end
    
    def new
      @restaurant = Restaurant.find(params[:restaurant_id])
      @review = Review.new
    end
end
