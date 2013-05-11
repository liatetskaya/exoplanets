class PlanetsController < ApplicationController

    def index
	  	@planets = Planet.all()
	  	gon.planets = @planets
	end
end