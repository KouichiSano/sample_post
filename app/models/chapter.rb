class Chapter < ApplicationRecord
	belongs_to :story
	has_many :comments,:dependent => :destroy
	validates :subtitle,    length: { maximum: 50 }

	scope :起承転結, -> { where(part: %w(起 承 転 結)).order(id: :asc) }

end
