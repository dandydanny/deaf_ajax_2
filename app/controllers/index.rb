get  '/'  do
  @grandma = params[:grandma]
  # Look in app/views/index.erb
  erb :index
end

post  '/grandma'  do
  if params[:user_input] == params[:user_input].upcase
    gma_says = "#{params[:user_input]}? What? Not since 1973! (Input is in all caps)"
  else
    gma_says = "#{params[:user_input]}? Speak up! (Input is not in caps)"
  end

  # redirect to("/?grandma=#{gma_says}")
    return gma_says

  # "Implement the /grandma route yourself.<br>Params: <code>#{params.inspect}</code>"
end
