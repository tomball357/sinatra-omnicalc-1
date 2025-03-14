require "sinatra"
require "sinatra/reloader"


get("/") do
  erb(:square_form)
end

get("/square/new") do
  erb(:square_form)
end

get "/square/results" do
  @number = params[:number].to_f
  @result = (@number**@number).to_f
  erb(:square_result)
end


get("/square_root/new") do

  erb :square_root_form
end

get("/square_root/results") do
  @number = params[:number].to_f
  @result = &radic(@number).to_f
  erb :square_root_result


get("/payment/new") do

  @square = @num*@num

  erb :payment_form
end

get ("/payment/results") do
  @apr =
  @years =
  @principal =



get("/random/new") do

  @new = rand(1..@num)

  erb :random_form
end
