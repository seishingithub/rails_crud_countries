class CountriesController < ApplicationController

  def index
    @country = Country.new
    @countries = Country.all
  end

  def create
    @country = Country.create(country_params)
    if @country.save
      redirect_to countries_path
    else
      render :index
    end
  end

  private
  def country_params
    params.require(:country).permit(:country_name, :language_spoken)
  end
end