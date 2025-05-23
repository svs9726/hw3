class EntriesController < ApplicationController
  def index
    @place = Place.find(params["place_id"])
    
    if @place.nil?
      redirect_to "/places", alert: "Place not found." and return
    end

    @entries = @place.entries
  end

  def new
    @place = Place.find(params["place_id"])
    @entry = Entry.new
  end

  def create
    @place = Place.find_by("name" => params["place"])
    @entry = Entry.new

    #assign user-entered data
    @entry["title"] = params["title"]
    @entry["description"] = params["description"]
    @entry["occurred_on"] = params["occurred_on"]

    #assign relationship between place and entry
    @entry["place_id"] = params["place_id"]

    #save row
    @entry.save

    #redirect 
    redirect_to "/places/#{@entry["place_id"]}/entries"
  end

end