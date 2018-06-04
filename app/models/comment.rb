class Comment < ApplicationRecord
	belongs_to :chapter
	belongs_to :user
	validates :commentblock, length: { in: 1..140 }

end
