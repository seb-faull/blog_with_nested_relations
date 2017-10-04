class Comment < ApplicationRecord
	belongs_to :post

	validates :comment, presence: :true

	validates :comment, length: { minimum: 4, maximum: 1000, message: "You must enter a valid comment. Total characters - 1000" }

end
