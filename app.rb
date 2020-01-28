require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @user_name = params[:name]
    "#{@user_name.reverse}"
  end

  get "/square/:number" do
    @nums = params[:number]
    "#{@nums.to_i ** 2}"
  end 

  get "/say/:number/:phrase" do
    @n = params[:number].to_i
    @words = params[:phrase]
    results = ""
    @n.times {results += @words}
    results
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @w1 = params[:word1]
    @w2 = params[:word2]
    @w3 = params[:word3]
    @w4 = params[:word4]
    @w5 = params[:word5]
      w_string = [@w1,@w2,@w3,@w4,@w5].join(" ")
      "#{w_string}."
  end

  get '/:operation/:number1/:number2' do 
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
      case @operation
        when "add"
          "#{@number1 + @number2}"
        when "subtract"
          "#{@number1 - @number2}"
        when "multiply"
          "#{@number1 * @number2}"
        when "divide"
          "#{@number1 / @number2}"
      end 
  end 

end