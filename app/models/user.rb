class User < ActiveRecord::Base
	has_secure_password
	validates_uniqueness_of :name
	validates_uniqueness_of :email
	has_many :posts, :dependent => :destroy
	
	mount_uploader :photo, PhotoUploader

end
