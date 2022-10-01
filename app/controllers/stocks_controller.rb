class StocksController < ActionController::Base
  
  def search
    stock = Stock.where(ticker: params[:stock])
    render json: stock 
  end 
end
