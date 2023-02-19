class PlacesController < ApplicationController

def index
    @place = Place.all
end

def new
    @place = Place.new
end

def show
    @place = Place.find_by({ "id" => params["id"]})
    @post = Post.find_by({ "id" => params["id"]})
end

def create
    @place = Place.new
    @place ["name"] = params["place"]["name"]
    @place.save
    redirect_to "/places/#{@post["place_id"]}"
end

def edit
    @place = Place.find_by({ "id" => params["id"]})
end

#def update
    #@place = Place.find_by({ "id" => params["id"] })
    #@place ["name"] = params["place"]["name"]
    #@place.save
    #redirect_to "/places/#{@post["place_id"]}"
#end

#def destroy
    #@place = Place.find_by({"id"} => params["id"])
    #@place.destroy
#end

end