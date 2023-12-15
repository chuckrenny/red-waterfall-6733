require 'rails_helper'

RSpec.describe CharactersService, type: :service do
  describe "fetching Fire Nation characters" do
    it "fetches and parses character data correctly" do
      service = CharactersService.new
      characters = service.nation_total_number("Fire+Nation")

      expect(characters).to be_an(Array)
      expect(characters.count).to be > 0
      expect(characters.first).to have_key(:name)
      expect(characters.first).to have_key(:photoUrl)
      expect(characters.first).to have_key(:allies)
      expect(characters.first).to have_key(:enemies)
    end
  end
end
