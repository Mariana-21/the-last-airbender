class SearchController < ApplicationController
  def index
    params[:nation].slice!(4)
    tribes = params[:nation].chars

    nation = tribes.join("").first(4).capitalize
    name = tribes.join("").last(6).capitalize

    conn = Faraday.new(url: "https://last-airbender-api.herokuapp.com" )
    response = conn.get("/api/v1/characters?affiliation=#{nation+name}")
    binding.pry
  end 
end