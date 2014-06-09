class Startup < ActiveRecord::Base

	validates :name, :description, :website_url, presence: true

end