class LocationController < ApplicationController

	def search_r
		location = Location.where(user_id_r: params[:id]).first

		render :json => location
	end

	def search_s
		location = Location.where(user_id_s: params[:id]).first

		render :json => location
	end

	def create
		location = Location.new

		location.user_id_s = params[:user_id_s]
		location.user_id_r = params[:user_id_r]
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
