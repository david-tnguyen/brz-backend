require 'faraday'
require 'json'

class YahooQuotesController < ApplicationController
  before_action :authenticate_user!

  def index
    url = ENV["YAHOO_FINANCE_QUOTES_URL"] + "NYA,DJIA,SPX"
    res = Faraday.get(url)
    data = JSON.parse(res.body, symbolize_names: true)[:quoteResponse][:result]
    render json: data, status: :ok
  end

  def show
    url = ENV["YAHOO_FINANCE_QUOTES_URL"] + params[:id]
    res = Faraday.get(url)
    data = JSON.parse(res.body, symbolize_names: true)[:quoteResponse][:result]
    render json: data, status: :ok
  end
end
