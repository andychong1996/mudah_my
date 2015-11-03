class Product < ActiveRecord::Base
	# This is Sinatra! Remember to create a migration!
	belongs_to :user
	has_many :favourites, dependent: :destroy
	has_many :products_categories
	has_many :categories, through: :products_categories
end
