class CountriesController < ApplicationController
  def index
    @countries = Country.all
  end

  def new
    @country = Country.new
  end

  def create
    Country.create( country_params )
    redirect_to(countries_path)
  end

  def show
    @country = Country.find(params[:id])
  end 

  def destroy
    @country = Country.find(params[:id])
    @country.destroy
    redirect_to(countries_path)
  end

  def edit
    @country = Country.find(params[:id])
  end

  def update
    country = Country.find(params[:id])
    country.update(country_params)
    redirect_to(countries_path)
  end

  private
  def country_params
    params.require(:country).permit( :name, :flag, :size, :currency, :population, :language, :happiness_rank)
  end
end
