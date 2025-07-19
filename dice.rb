class Die

  private

  attr_writer :sides

  def initialize(sides = 6)
    self.sides = (1..sides).to_a
  end

  public

  attr_reader :sides

  def roll
    sides.sample
  end

end
