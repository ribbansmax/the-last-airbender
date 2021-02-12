class Character
  attr_reader :name, :allies, :enemies, :affiliation, :photo

  def initialize(hash)
    @name = hash[:name]
    @allies = hash[:allies]
    @enemies = hash[:enemies]
    @affiliation = hash[:affiliation]
    @photo = hash[:photoUrl]
    check_attrs

  end

  def check_attrs
    if @enemies.length > 0
    else
      @enemies = ["None"]
    end
    if @allies.length > 0
    else
      @allies = ["None"]
    end
  end
end