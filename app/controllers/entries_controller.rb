class EntriesController < ApplicationController
  def index
    @place = Place.find(params["place_id"])
    @entries = @place.entries
  end

  def new
    @place = Place.find(params["place_id"])
    @entry = Entry.new
  end

  def create
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
    redirect_to "/places/#{@entry["place_id"]}"
  end

end