require 'rails_helper'

RSpec.describe StartupsController, :type => :controller do

	describe "GET show" do

		let(:startup) { FactoryGirl.create(:startup) }

		before do
			get :show, id: startup.id
		end

		it 'exposes posts' do
			expect(controller.startups).to include startup
		end 

		it 'should expose specific post' do
			expect(assigns(:startup)).to eq startup
		end


		xit "should exposes startup's region" do
			expect(assigns(:startup).regions).to eq region
		end

	end

end
