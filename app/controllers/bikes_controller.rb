class BikesController < ApplicationController

	def bike_list
		@bikes = Bike.all
		render
	end

end
	def bike_look_up
		@bikes.each do |bike|
			if bike.bike_id ==params[:bike_id]	
				
			end
		end
	end
		
