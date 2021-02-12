class SearchController < ApplicationController
  def index
    nation = params[:nation]
    @number = AirbenderApiService.number(nation)

  end
end