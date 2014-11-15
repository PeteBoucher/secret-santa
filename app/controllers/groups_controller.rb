class GroupsController < ApplicationController
	def index
		@groups = Group.all
	end

	def create
		unless Group.create(
				name: params[:name],
				organisation: params[:organisation],
				min_spend: params[:min_spend],
				max_spend: params[:max_spend]
			)
			render_template :error
		else
			redirect_to :index
		end
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
