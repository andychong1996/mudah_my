get '/users/signup' do
  erb :"users/sign_up", layout: :login_logout_signup_layout
end

get '/' do
  if logged_in?
    redirect to "/users/#{current_user.id}/home"
  else
    erb :"visitors/visitors_page", layout: :visitors_layout
  end
end

get '/users/:id/home' do

  erb :"users/home"
end

post '/users/create' do
  new_user = User.new(params[:user])
  if new_user.save
    redirect to '/login'
  else
    redirect to '/users/signup'
  end
end
