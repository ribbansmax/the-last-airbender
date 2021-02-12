class AirbenderApiService
  class << self
    def number(nation)
      response = Faraday.new("https://last-airbender-api.herokuapp.com/api/v1/characters/").get do |req|
        req.params['perPage'] = "200"
        req.params['affiliation'] = nation_lookup(nation)
      end
      parse(response).count
    end

    def members(nation)
      response = Faraday.new("https://last-airbender-api.herokuapp.com/api/v1/characters/").get do |req|
        req.params['perPage'] = "25"
        req.params['affiliation'] = nation_lookup(nation)
      end
      parse(response)
    end
    private

    def parse(arg)
      JSON.parse(arg.body, symbolize_names: true)
    end

    def nation_lookup(nation)
      table = { 
        "fire_nation" => "Fire Nation"
      }
      table[nation]
    end
  end
end