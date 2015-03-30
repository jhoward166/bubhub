class BikesController < ApplicationController

	def bike_list
		@bikes = Bike.all
		render
	end

end
