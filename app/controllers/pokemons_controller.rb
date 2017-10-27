class PokemonsController < ApplicationController
def capture
  @pokemon = Pokemon.find(params[:id])
  @pokemon.trainer = current_trainer
  @pokemon.save
  redirect_to '/'
end
def damage
  @pokemon = Pokemon.find(params[:id])
  @pokemon.health -= 10
  if @pokemon.health <= 0
    @pokemon.destroy
  else
      @pokemon.save
  end
  redirect_to trainer_path(current_trainer)
end
def new
  @pokemon = Pokemon.new
end
def create
  @pokemon = Pokemon.new(name: params[:pokemon][:name])
  if @pokemon.valid?
    @pokemon.health = 100
    @pokemon.level = 1
    @pokemon.trainer = current_trainer
    @pokemon.save
    redirect_to trainer_path(current_trainer)
  else
    @pokemon.errors.messages
    redirect_to pokemons_path
  end
end
end
