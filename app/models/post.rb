class Post < ApplicationRecord
	has_many :comments

	validates :title, :name, :body, presence: :true

	validates :title, length: { maximum: 50, message: "Sorry, your title is too long. 50 characters allowed only" }

	validates :name, length: { minimum: 4, maximum: 25, message: "Sorry, your name is too long. 25 characters allowed only" }

	validates :body, length: { maximum: 5000, message: "Sorry, your Blog Post is too long. 5000 characters allowed only" }



	# t.text "title"
 #    t.text "name"
 #    t.text "body"
 #    t.datetime "created_at", null: false
 #    t.datetime "updated_at", null: false
end
