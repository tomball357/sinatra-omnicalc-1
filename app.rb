require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end


get("/square/new") do

  @square = @num*@num

  erb :square
end

get("/square_root/new") do

  @square = @num*@num

  erb :square_root
end

get("/payment/new") do

  @square = @num*@num

  erb :payment
end

get("/random/new") do

  @new = rand(1..@num)

  erb :random
end
