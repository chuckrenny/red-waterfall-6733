class Character
  attr_reader :name,
              :photoUrl,
              :allies,
              :enemies,
              :affiliations

  def initialize(info)
    @name = info[:name]
    @photoUrl = info[:photoUrl]
    @allies = info[:allies]
    @enemies = info[:enemies]
    @affiliations = info[:affiliation] 
  end

  private
  
  def present_list(list)
    require 'pry';binding.pry
    list == [] ? 'None' : list.join(', ')
  end
end
