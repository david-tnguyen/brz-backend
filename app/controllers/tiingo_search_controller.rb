require 'faraday'
require 'json'

class TiingoSearchController < ApplicationController
  before_action :authenticate_user!

  def show
    url = "#{ENV["TIINGO_SEARCH_URL"]}token=#{ENV["TIINGO_API_TOKEN"]}"
    res = Faraday.get(url, {:query => params[:id], :columns => "name"})
    data = JSON.parse(res.body, symbolize_names: true)
    render json: data, status: :ok
  end
end
