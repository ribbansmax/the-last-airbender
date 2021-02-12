class SearchController < ApplicationController
  def index
    nation = params[:nation]
    @number = AirbenderApiService.number(nation)
    AirbenderApiService.members(nation).each do |member|
      Character.new(member)
    end
    @members = Character.all
    binding.pry
  end
end