class StocksController < ActionController::Base
  
  def search
    if params[:stock].present? 
      @stock = Stock.where(ticker: params[:stock]).first
      if @stock 
        render 'users/my_portfolio'
      else 
        flash[:alert] = "Please enter a valid symbol to search" 
        redirect_to my_portfolio_path
      end 
    else 
      flash[:alert] = "Please enter a symbol to search"
      redirect_to my_portfolio_path
    end
  end 
   

end
