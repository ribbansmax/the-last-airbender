class MemberFacade
  def self.members(nation)
    AirbenderApiService.members(nation).map do |member|
      Character.new(member)
    end
  end
end