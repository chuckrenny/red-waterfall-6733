class CharactersService
  def nation_total_number(nation)
    get_url("/api/v1/characters?affiliation=#{nation}&perPage=100")
  end

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  private

  def conn
    Faraday.new(url: 'https://last-airbender-api.fly.dev')
  end
end
