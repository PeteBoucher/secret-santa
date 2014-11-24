require 'spec_helper'

describe UsersController do
	before :each do
		@user = FactoryGirl.create :user
	end

	describe 'GET index' do
		it 'assigns @users' do
			get :index
			assigns(:users).should eq([@user])
		end

		it "renders the index template" do
		  get :index
		  expect(response).to render_template("index")
		end
	end

	describe 'POST create' do
		it 'creates a new user' do
			post :create, user: FactoryGirl.attributes_for(:user)
			response.should be_success
		end

		it 'redirects to the error page when user is invalid' do
			post :create, user: {name: ''}
			response.should render_template 'error'
		end
	end

	describe 'GET show' do
		before :each do
			get :show, id: @user.id
		end

		it 'assigns @user' do
			assigns(:user).should eq @user
		end

		it 'renders the show template' do
		  expect(response).to render_template("show")
		end
	end
end
