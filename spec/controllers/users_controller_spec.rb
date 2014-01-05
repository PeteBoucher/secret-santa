require 'spec_helper'

describe UsersController do
	describe 'GET index' do
		it 'assigns @users' do
			user = User.create
			get :index
			expect(assigns(:users)).to eq([user])
		end

		it "renders the index template" do
		  get :index
		  expect(response).to render_template("index")
		end
	end

	describe 'GET show' do
		it 'assigns @user' do
		end

		it 'renders the sow template' do
		end
	end
end
