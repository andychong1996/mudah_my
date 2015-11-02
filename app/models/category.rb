class Category < ActiveRecord::Base
	# This is Sinatra! Remember to create a migration!
	has_many :products_categories
	has_many :products, through: :products_categories
end
