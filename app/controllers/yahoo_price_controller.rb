require 'faraday'
require 'json'

class YahooPriceController < ApplicationController
  def show
    url = "#{ENV["YAHOO_FINANCE_QUOTE_SUMMARY_URL"] }/#{params[:id]}?modules=price"
    res = Faraday.get(url)
    data = JSON.parse(res.body, symbolize_names: true)[:quoteSummary][:result]
    render json: data, status: :ok
  end
end
