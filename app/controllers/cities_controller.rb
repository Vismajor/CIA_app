class CitiesController < ApplicationController
  def index
    @cities = City.all
  end

  def new
    @city = City.new
  end

  def create
    City.create( city_params )
    redirect_to(cities_path)
  end

  def show
    @city = City.find(params[:id])
  end 

  def destroy
    @city = City.find(params[:id])
    @city.destroy
    redirect_to(cities_path)
  end

  def edit
    @city = City.find(params[:id])
  end

  def update
    city = City.find(params[:id])
    city.update(city_params)
    redirect_to(cities_path)
  end

  private
  def city_params
    params.require(:city).permit( :name, :population, :country_id )
  end
end
