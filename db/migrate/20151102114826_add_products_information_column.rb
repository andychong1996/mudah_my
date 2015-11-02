class AddProductsInformationColumn < ActiveRecord::Migration
	def change
		add_column :products, :information, :text
	end
end
