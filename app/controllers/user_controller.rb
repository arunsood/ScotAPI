class UserController < ApplicationController

	def index
	end

	def auth
		user = User.select("id").where(username: params[:username]).where(password: params[:password]).first

		if user == nil
			render :text => "none"
		else
			render :json => user
		end
	end

	def create
		user = User.where(username: params[:username]).where(password: params[:password]).first

		if user != nil
			render :json => '"error":"User already exists"'
		else
			new_user = User.new

			new_user.username = params[:username]
			new_user.password = params[:password]
			
			if new_user.save
				render :json => new_user
			end
		end
	end

	def update
		user = User.find(params[:id])

		user.username = params[:username]
		user.password = params[:password]
		
		if user.save
			render :json => user
		end
	end

	def destroy
		if User.destroy(params[:id])
			render :text => "ok"
		end
	end

end
