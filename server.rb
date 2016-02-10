require "sinatra"
require_relative "OnlineCalculator.rb"

get "/add" do
  erb(:add)
end


get "/" do
  erb(:server)
end


post "/calculate_add" do
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  operation= params[:calculation]


  if operation == "add"
  	result = OnlineCalculator.sum(first,second)
    "#{first} + #{second} = #{result}"
  elsif operation == "substract"
  	result = OnlineCalculator.substract(first,second)
  	"#{first} + #{second} = #{result}"
  elsif operation == "multiply"
  	result = OnlineCalculator.multiply(first,second)
 	"#{first} + #{second} = #{result}"
  else operation == "divide"
  	result = OnlineCalculator.divide(first,second)
	"#{first} + #{second} = #{result}"
  end
end






