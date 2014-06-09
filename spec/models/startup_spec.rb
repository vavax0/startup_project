require 'rails_helper'

describe Startup do

	let(:startup) { FactoryGirl.create(:startup) }
	
	it 'has name, description and website_url' do
		expect(startup).to be_valid
	end

	it 'is not valid without name' do
		startup.name = nil
		expect(startup).to_not be_valid
	end

	it 'is not valid without description' do
		startup.description = nil
		expect(startup).to_not be_valid
	end

	it 'is not valid without website_url' do
		startup.website_url = nil
		expect(startup).to_not be_valid
	end


end
