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

  def show
    @country = Country.find(params[:id])
  end

  def edit
    @country = Country.find(params[:id])
  end

  def update
    @country = Country.find(params[:id])
    @country.update_attributes!(country_params)

    redirect_to countries_path
  end

  private
  def country_params
    params.require(:country).permit(:country_name, :language_spoken)
  end
end