get '/products/new' do
  erb :"products/create_product"
end

post '/products/create' do
  new_product = current_user.products.new(params[:user])
  if new_product.save
    redirect to '/'
  else
    redirect to 'products/new'
  end
end
