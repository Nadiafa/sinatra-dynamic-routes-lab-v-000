require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do
    "The home page."
  end
  
  get '/reversename/:name' do 
    params[:name].reverse
  end 
  
  get '/square/:number' do 
    square = params[:number].to_i ** 2
    "#{square}"
  end 
  
  get '/say/:number/:phrase' do 
    params[:phrase] * params[:number].to_i
  end 
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    "#{params.values.join(" ")}."
  end 
  
  get '/:operation/:number1/:number2' do 
    # adds two numbers together
    # subtracts the second number from the first
    # multiplies two numbers together
    # divides the first number by the second number
    
    
    
    add      = params[:number1].to_i + params[:number2].to_i
    subtract = params[:number1].to_i - params[:number2].to_i
    multiply = params[:number1].to_i * params[:number2].to_i
    divide   = params[:number1].to_i / params[:number2].to_i
    case params[:operation] 
    when "add" 
        "#{add}"
    when "subtract"
        #{subtract}
    when "multiply"
        #{multiply}
    when "divide"
        #{divide}
    end
    
    
    # num1 = params[:number1].to_i
    # num2 = params[:number2].to_i
    
    # case params[:operation] 
    # when "add" 
    #     num1 + num2
    # when "subtract"
    #     num1 - num2
    # when "multiply"
    #     num1 * num2
    # when "divide"
    #     num1 / num2
    # end 
    
    # add      = params[:number1] + params[:number2]
    # subtract = params[:number1] + params[:number2]
    # multiply = params[:number1] * params[:number2]
    # divide   = params[:number1] / params[:number2]
  end 

end



  
    