class AirbenderApiService
  class << self
    def number(nation)
      response = Faraday.new("https://last-airbender-api.herokuapp.com/api/v1/characters/?affiliation=Fire+Nation&perPage=200").get
      parse(response).count
    end

    private

    def parse(arg)
      JSON.parse(arg.body, symbolize_names: true)
    end

    def nation_lookup(nation)
      table = { 
        "fire_nation" => "Fire+Nation"
      }
      table[nation]
    end
  end
end