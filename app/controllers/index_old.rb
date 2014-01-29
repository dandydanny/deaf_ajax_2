# Solution for Challenge: Deaf Sinatra 1: Synchronous Forms. Started 2014-01-27T16:41:27+00:00
get '/' do
  @grandma = params[:grandma]
  # Look in app/views/index.erb
  erb :index
end

post '/grandma' do
  # "Implement the /grandma route yourself.<br>Params: <code>#{params.inspect}</code>"
  if params['user_input'] == params['user_input'].upcase && params['user_input'] != ""
    response = "Not Since #{rand(2014)} AD!"
    redirect "/?grandma=#{response}"
  else
    redirect '/?grandma=Speak Up Kiddo!'
  end

end
