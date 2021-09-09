require 'faraday'
require 'json'

class TiingoSearchController < ApplicationController
  def show
    url = "#{ENV["TIINGO_SEARCH_URL"]}token=#{ENV["TIINGO_API_TOKEN"]}"
    res = Faraday.get(url, {:query => params[:id], :columns => "name"})
    data = JSON.parse(res.body, symbolize_names: true)
    render json: data, status: :ok
  end
end
