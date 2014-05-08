class LocationController < ApplicationController

	def all
		locations = Location.all.as_json

		locations.each do |location|
			username = User.find(location.user_id).try(:username)
			if username != nil
				location["username"] = username
			end
		end

		render :json => locations
	end

	def search
		Time.zone = "America/Los_Angeles"

		location = Location.where(user_id: params[:id]).first.try(:as_json)

		username = User.find(params[:id]).username

		location["username"] = username

		time_f = location["created_at"].strftime("%B %d, %Y %-I:%M %p")

		location["formatted_time"] = time_f

		render :json => location
	end

	def create
		Time.zone = "America/Los_Angeles"

		Location.delete_all(:user_id => params[:user_id])

		location = Location.new

		location.user_id = params[:user_id]
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
