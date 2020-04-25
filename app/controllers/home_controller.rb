class HomeController < ApplicationController

  def index
    if params[:ticker] == ""
      @nothing = "Hey! You Forgot to Enter A symbol"
    elsif params[:ticker]
      @api = StockQuote::Stock.new(api_key: 'pk_13a1ac749da94ac9ac095c4bbca20953')
      begin
        @stock = StockQuote::Stock.quote(params[:ticker])
      rescue
        @error = "This does not exist"
      end
    end
  end

  def about
  end
end
