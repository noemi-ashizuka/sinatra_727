require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"
require "pry-byebug"

# http verb + url
get "/" do
  # "Hello batch 727!"
  @restaurants = Restaurant.all
  erb :index
end

get '/restaurants/:id' do
  restaurant_id = params[:id]
  @restaurant = Restaurant.find(restaurant_id)
  erb :show
end

post "/restaurants" do
  name = params[:name]
  city = params[:city]
  restaurant = Restaurant.new(name: name, city: city)
  restaurant.save
  redirect "/"
end

# HTTP VERBS

# GET (to get data)
# POST (to create/add some data)
# PUT/PATCH (to update data)
# DELETE (to delete data)
