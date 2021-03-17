class Api::StocksController < ApplicationController
  def show
    ticker = params[:ticker]
    response = HTTP.get("https://www.alphavantage.co/query?function=GLOBAL_QUOTE&symbol=#{ticker}&apikey=#{Rails.application.credentials.alpha_advantage_api[:api_key]}")
    render json: response.parse
  end
end
