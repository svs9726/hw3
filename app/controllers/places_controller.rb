class PlacesController < ApplicationController
  def index 
    #find all place rows 
    @places = Place.all
  end

  def create 
    #start with a new place
    @place = Place.new
    #assign variables 
    @place["name"] = params["name"]
  end

  def show
    @place = Place.find(params["id"])
  end
end
