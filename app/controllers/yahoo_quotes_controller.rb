require 'faraday'
require 'json'

class YahooQuotesController < ApplicationController
  def index
    url = "https://query1.finance.yahoo.com/v7/finance/quote?lang=en-US&region=US&corsDomain=finance.yahoo.com&symbols=NYA,DJIA,SPX"
    res = Faraday.get(url)
    data = JSON.parse(res.body, symbolize_names: true)[:quoteResponse][:result]
    render json: data, status: :ok
  end

  def show
    url = "https://query1.finance.yahoo.com/v7/finance/quote?lang=en-US&region=US&corsDomain=finance.yahoo.com&symbols=" + params[:id]
    res = Faraday.get(url)
    data = JSON.parse(res.body, symbolize_names: true)[:quoteResponse][:result]
    render json: data, status: :ok
  end
end
