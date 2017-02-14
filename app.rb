require "pg" # postgres db library
require_relative "db/connection"
require "active_record" # the ORM

require "bundler/setup" # require all the gems we'll be using for this app from the Gemfile. Obviates the need for `bundle exec`
require "pry" # for debugging
require_relative "models/pokemon"
require 'sinatra'
require 'sinatra/reloader'

get '/pokemons' do
  @pokemon = Pokemon.all
  erb :"pokemon/index"
end

get '/pokemons/:id' do
  @pokemon = Pokemon.find(params[:id])
  erb :"pokemon/show"
end

get '/pokemons/:id/edit' do
@pokemon = Pokemon.find(params[:id])
erb :"pokemon/edit"
end
