require 'faraday'
require 'json'

class YahooPriceController < ApplicationController
  def show
    url = "https://query1.finance.yahoo.com/v10/finance/quoteSummary/#{params[:id]}?modules=price"
    res = Faraday.get(url)
    data = JSON.parse(res.body, symbolize_names: true)[:quoteSummary][:result]
    render json: data, status: :ok
  end
end
