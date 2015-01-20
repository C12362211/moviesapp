class Movie < ActiveRecord::Base
	belongs_to :genre
	
	validates :title, presence: true
	validates :genre_id, presence: true
end
