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
  @num = params[:number].to_f
  @result = Math.sqrt(@number).to_f
  erb :square_root_result
end

get("/payment/new") do

  erb :payment_form
end

get ("/payment/results") do
  @apr = params[:number].to_fs(:percentage)
  @years = params[:number].to_f
  @principal = params[:number].to_fs(:currency)

end


get("/random/new") do

  erb :random_form
end

get ("/random/results") do
  @min = params[:number].t

  result = rand(@min..@max)
  @result = result.round(16)

end
