class Favorite < ActiveRecord::Base
	# This is Sinatra! Remember to create a migration!
	belongs_to :user
	belongs_to :product
	validates :user_id, uniqueness: {scope: :product_id}
end
