class BikesController < ApplicationController

	def bike_list
		@bikes = Bike.all
		render
	end

	def create
		if not (params[:bike][:bike_id].present?)
			flash[:error]= "Please fill in all required fields."
			redirect_to bike_list_page_path and return
		else
			@newbike = Bike.create(bike_params)
			flash[:notice] = "Bike with id #{@newbike.bike_id} created"
			redirect_to bike_list_page_path and return
		end
	end

	def update
		@bike = Bike.find(params[:bike_id])
		tester = @user.update_attributes!(params[:user].permit(:bike_id, :location_id))
		if(tester)
			flash[:notice] = "Bike #{@bike.bike_id} is now in the database, stored with the location #{@bike.bike_id}."
		else
			"An error occured and no changes were made to the database."
		end
		redirect_to bike_list_page_path
	end

end
