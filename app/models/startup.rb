class Startup < ActiveRecord::Base

	validates :name, :description, :website_url, presence: true
	validates :short_description, length: { maximum: 50 }

	before_validation :smart_add_url_protocol

	has_attached_file :website_thumbnail, :storage => :s3, :s3credentials => "#{Rails.root}/config/s3.yml",
										:bucket => "website_thumbnails",
										:path => "image/:id/:filename.jpg",
										:url => 'website_thumbnails.s3-website-us-east-1.amazonaws.com'
	validates_attachment_content_type :website_thumbnail, :content_type => /\Aimage/

	private

		def smart_add_url_protocol
  			unless self.website_url[/\Ahttp:\/\//] || self.website_url[/\Ahttps:\/\//]
    			self.website_url = "http://#{self.website_url}"
  			end
		end
end