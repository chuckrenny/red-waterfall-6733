class Character
  attr_reader :name,
              :photoUrl,
              :allies,
              :enemies

  def initialize(info)
    @name = info[:name]
    @photoUrl = info[:photoUrl]
    @allies = present_list(info[:allies])
    @enemies = present_list(info[:enemies])
  end

  private
  
  def present_list(list)
    list == [] ? 'None' : list.join(', ')
  end
end
