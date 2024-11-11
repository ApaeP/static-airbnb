require 'open-uri'

class FlatsController < ApplicationController
  def index
    @flats = flats_array
  end

  def show
    flats = flats_array
    flat_id = params[:id]

    @flat = flats.find { |flat| flat["id"].to_i == flat_id.to_i }
  end

  private

  def flats_array
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    response = URI.open(url).read
    return JSON.parse(response)
  end
end
