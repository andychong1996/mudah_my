class CreateProducts < ActiveRecord::Migration
	def change
		create_table (:products) do |t|
				t.integer :user_id
				t.string :product_name
				t.timestamps
		end
	end
end
