class Story < ApplicationRecord
	belongs_to :user
	has_many :chapters,:dependent => :destroy
	validates :title,    length: { in: 1..200 }
	validates :genre,    length: { in: 1..50 }
	
end
