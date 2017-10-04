class Comment < ApplicationRecord
	belongs_to :post

	validates :comment, presence: :true

	validates :comment, length: { maximum: 250, message: "You must enter a valid comment. Total characters - 250" }

end
