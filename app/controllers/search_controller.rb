class SearchController < ApplicationController
  def index
    nation = params[:nation]
    @number = AirbenderApiService.number(nation)
    @members = MemberFacade.members(nation)
  end
end