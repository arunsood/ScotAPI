class LocationController < ApplicationController

	def search
		location = Location.where(user_id: params[:id]).first

		render :json => location
	end

	def create
		location = Location.new

		location.user_id_s = params[:user_id]
		location.latitude = params[:latitude]
		location.longitude = params[:longitude]

		if location.save
			render :json => location
		end
	end

	def destroy
		if Location.destroy(params[:id])
			render :text => "ok"
		end
	end

end
