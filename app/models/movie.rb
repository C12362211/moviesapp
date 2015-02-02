class Movie < ActiveRecord::Base
	belongs_to :genre
	has_many :posts, :dependent => :destroy
	
	validates :title, presence: true
	validates :genre_id, presence: true
end
