class WeathersController < ApplicationController
  def index
    city = params[:city]
    api_key = '2a3324775f5d0bc7afa2228bb9e72af7'
    api = WeatherApi.new(api_key)
    @weather = api.weather_by_city(city)
  end

  def new; end

  def create
    redirect_to weathers_path(city: params[:city])
  end
end
