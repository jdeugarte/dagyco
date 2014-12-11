class Product < ActiveRecord::Base
	validates_presence_of :name, :description, :price
	has_attached_file :picture,
		:storage => :dropbox,
		:dropbox_credentials => Rails.root.join("config/dropbox.yml"),
		:dropbox_options => {environment: ENV["RACK_ENV"]}  	
    validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\Z/
end
