class Chapter < ApplicationRecord
	belongs_to :story
	has_many :comments,:dependent => :destroy
	validates :subtitle,    length: { maximum: 50 }
end
