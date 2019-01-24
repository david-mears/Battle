class Player

  attr_reader :name, :hp

  def initialize(name)
    @name = name
    @hp = 70
  end

  def lose_hp(number)
    @hp -= number
  end

end
