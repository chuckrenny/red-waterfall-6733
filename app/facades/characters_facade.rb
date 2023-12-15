class CharactersFacade
  def initialize(endpoint)
    @endpoint = endpoint
  end

  private

  def results
    CharacterService.new.get_url(@endpoint)
  end
end