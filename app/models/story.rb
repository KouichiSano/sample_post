class Story < ApplicationRecord
	belongs_to :user
	has_many :chapters, dependent: :destroy
	delegate :builds, to: :chapters, prefix: :chapters
	has_many :起承転結, -> { 起承転結 }, class_name: "Chapter"


	validates :title,    length: { in: 1..200 }
	validates :genre,    length: { in: 1..50 }
end
