class SearchController < ApplicationController
  def index
    nation = params[:nation]
    @number = AirbenderApiService.number(nation)
    @members = []
    AirbenderApiService.members(nation).each do |member|
      @members << Character.new(member)
    end
  end
end