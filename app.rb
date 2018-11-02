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
    # sends a 200 status code
    # concatenates the words and adds a period
    # isn't hard-coded
    
    # params[:word1]
    # params[:word2]
    # params[:word3]
    # params[:word4]
    # params[:word5]
    
    # <% params.each do |k,v| %>
    #   v
    # <% end %>
    
    params.value
  end 
  
  
  # get '/:operation/:number1/:number2' do 
  #   # adds two numbers together
  #   # subtracts the second number from the first
  #   # multiplies two numbers together
  #   # divides the first number by the second number
  # end 

end



  
    