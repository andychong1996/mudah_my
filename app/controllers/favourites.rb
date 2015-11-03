post '/favourites/:product_id/new' do
  new_favourite = current_user.favourites.new(product_id: params[:product_id])
  new_favourite.save
  redirect to '/'
end

delete '/favourites/:product_id' do
  Favourite.find_by_product_id(params[:product_id]).destroy
  redirect to '/'
end

get '/users/:user_id/favorites' do
  @products = Product.where(id: current_user.favourites.pluck(:product_id))
  erb :"users/favourites"
end

get '/users/products/favourited' do
  @products = Product.where(id: Favourite.where.not(user_id: current_user.id).pluck(:product_id), user_id: current_user.id)
  erb :"users/favourited"
end
