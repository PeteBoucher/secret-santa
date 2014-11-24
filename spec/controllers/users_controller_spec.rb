require 'spec_helper'

describe UsersController do
	describe 'GET index' do
		it 'assigns @users' do
			# user = User.create(name: 'Pedro')
			user = FactoryGirl.create :user

			get :index
			assigns(:users).should eq([user])
		end

		it "renders the index template" do
		  get :index
		  expect(response).to render_template("index")
		end
	end

	describe 'POST create' do
		it 'creates a new user' do
			# debugger

			expect{
				post :create, user: FactoryGirl.attributes_for(:user)
			}.to change(User, :count).by 1
		end
	end

	describe 'GET show' do
		before :all do
			user = FactoryGirl.create :user
		end

		it 'assigns @user' do
		end

		it 'renders the show template' do
		  get 'show/1'
		  expect(response).to render_template("show")
		end
	end
end
