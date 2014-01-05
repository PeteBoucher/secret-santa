class GroupsController < ApplicationController
	def index
		@groups = Group.all
	end

	def create
	end

	def new
	end

	def edit
	end

	def show
		id = params[:id]
		@group = Group.find(id)
	end

	def update
	end

	def destroy
	end
end
