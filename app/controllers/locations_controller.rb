class LocationsController < ApplicationController
  def index 
    render json: Location.all
  end

  def create
    location = Location.create(location_params)
    render json: location
  end
  
  private

  def location_params
    params.require(:location).permit(:name, :user_id)
  end
end
