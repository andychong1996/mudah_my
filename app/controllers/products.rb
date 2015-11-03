get '/products/new' do
  erb :"products/create_product"
end

post '/products/create' do
  new_product = current_user.products.new(params[:product])
  if new_product.save
    redirect to '/'
  else
    redirect to 'products/new'
  end
end

get '/products/:id/edit' do
  @product = Product.find(params[:id])
  erb :"products/edit_product"
end

put '/products/:id' do
  current_product = Product.find(params[:id])
  current_product[:name] = params[:product][:name]
  current_product[:price] = params[:product][:price]
  current_product[:information] = params[:product][:information]
  if current_product.save
    redirect to '/'
  else
    redirect to '/products/:id/edit'
  end
end

delete '/products/:id' do
  Product.destroy(params[:id])
  redirect to '/'
end
