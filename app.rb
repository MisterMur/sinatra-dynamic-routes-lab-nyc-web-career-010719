require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name_rev = params[:name].reverse
    "#{@name_rev}"
  end

  get '/square/:number' do
    @square = params[:number].to_i * params[:number].to_i
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @str = params[:phrase] * params[:number].to_i
    "#{@str}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @str = params[:word1]+ ' '+params[:word2]+' '+params[:word3]+' '+params[:word4]+' '+params[:word5]+'.'
    "#{@str}"
  end

  get "/:operation/:number1/:number2" do
    case params[:operation]
    when 'add'
      @sum = params[:number1].to_i+ params[:number2].to_i
    when 'subtract'
      @sum = params[:number1].to_i - params[:number2].to_i
    when 'multiply'
      @sum = params[:number1].to_i * params[:number2].to_i
    when 'divide'
      @sum = params[:number1].to_i / params[:number2].to_i
    end
    # binding.pry
    "#{@sum}"
  end

end
