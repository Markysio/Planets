class PlanetsController < ApplicationController

	def index
		@planets = Planet.all
	end

	def new
		@planet = Planet.new
	end

	def create 
		@planet = Planet.new(planet_params)
		if @planet.save
			redirect_to planets_path
		else
			redirect_to new_planet_path
		end
	end

	def edit
		@planet = Planet.where(id: params[:id]).first
	end

	def update
		@planet = Planet.where(id: params[:id]).first
		@planet.update_attributes(planet_params)
		if @planet.save
			redirect_to planets_path
		else
			redirect_to new_planet_path
		end
	end

	def show 
		@planet = Planet.where(id: params[:id]).first
	end

	def destroy
		@planet = Planet.find(params[:id]).destroy
	end

private 

	def planet_params
		params.require(:planet).permit(:id, :name, :info, :picture)
	end

end
