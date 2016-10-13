class Playlist < ActiveRecord::Base
	
	validates :p_name, uniqueness: true
	belongs_to :user
	has_many :songs
	
end