class UsersController < ApplicationController
	def index
		@users = User.all
	end

	def create
		unless User.create(:name => params[:name],
			:email => params[:email]).valid?
			render :error
		end
	end

	def new
	end

	def edit
	end

	def show
		id = params[:id]
		@user = User.find(id)
	end

	def update
	end

	def destroy
	end

	def welcome
	end
end
