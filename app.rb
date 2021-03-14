require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!
    get "/reversename/:name" do
      @reverse_name = params[:name].reverse
      @reverse_name
    end

    get '/square/:number' do
      @num = params[:number].to_i ** 2
      @num.to_s
    end

    get '/say/:number/:phrase' do

      string = ""
      params[:number].to_i.times do 
        string += params[:phrase]
      end
      string
    end

    # get '/say/:word1/:word2/:word3/:word4/:word5' do
       
    #   arr = params.map {|i| i[1]}
     
    #   index = 0
    #   phrase = arr.each {|elm| puts elm[index], index += 1}
    #     # elm[index]
    #     # index += 1
    #   end
    #      binding.pry
    # end

    get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end


  # get '/:operation/:number1/:number2' do
  #     # oper = param[:operation]
  #     number1 = param[:number1].to_i
  #     number2 = param[:number2].to_i

  #     result = 'Invalid operation'

  #     case param[:operation]

  #     when 'add'  
  #           result = (number1 + number2)
  #     when 'subtract'
  #           result = (number1 - number2)
  #     when 'multiply'
  #         result = (number1 * number2)
  #     when 'divide'
  #         result = (number1/number2)
  #     end
 
  # end
 
 get "/:operation/:number1/:number2" do
    @number_1 = params[:number1].to_i
    @number_2 = params[:number2].to_i
    if params[:operation] == "add"
      "#{@number_1+@number_2}"
    elsif params[:operation] == "subtract"
      "#{@number_1-@number_2}"
    elsif params[:operation] == "multiply"
      "#{@number_1*@number_2}"
    elsif params[:operation] == "divide"
      "#{@number_1/@number_2}"
    end
  end

end