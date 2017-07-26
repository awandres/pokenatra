require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

require_relative 'db/connection'
require_relative 'models/pokemon'
require_relative 'models/trainer'

get '/' do
  erb :menu
end

get '/trainer' do
  @trainers = Trainer.all
  erb :'trainer/index'
end

get '/trainer/:id' do
  @trainer = Trainer.find(params[:id])
  erb :'trainer/show'
end

get '/pokemon' do
  @pokemons = Pokemon.all
  erb :'pokemon/index'
end

get '/pokemon/create' do
  erb :'pokemon/create'
end

post '/pokemon' do
  @pokemon = Pokemon.create(
  params[:pokemon]
  )
  redirect "/pokemon/#{@pokemon.id}"
end

get '/pokemon/:id' do
  @pokemon = Pokemon.find(params[:id])
  erb :'pokemon/show'
end

get '/pokemon/:id/edit' do
  @pokemon = Pokemon.find(params[:id])
  erb :'pokemon/edit'
end

put '/pokemon/:id' do
  @pokemon = Pokemon.find(params[:id])
  @pokemon.update(params[:pokemon])
  redirect "/pokemon/#{@pokemon.id}"
end

delete '/pokemon/:id' do
  @pokemon = Pokemon.find(params[:id])
  @pokemon.destroy
  redirect '/pokemon'
end
