class User < ActiveRecord::Base
	# This is Sinatra! Remember to create a migration!
	has_many :products
	has_many :favourites
	
	def self.authenticate(email, password)
		return nil unless user = User.find_by(email: email)

		if user.password == password
			return user
		else
			return nil
		end
	end
end
