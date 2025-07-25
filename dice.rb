class Die

  SIDES = 6 # our default dimension for sides

  private

  attr_writer :sides, :rolled, :description

  def initialize(sides = SIDES)
    # Range of given number of sides
    self.sides = (1..sides)
    self.description = '%<sides>s-sided' % {sides:}
  end

  public

  attr_reader :sides, :rolled, :description

  def roll
    # Use Kernel#rand for random number generator
    self.rolled = rand(sides)
  end

  def to_s
    description
  end

  def to_i
    rolled.to_i
  end

  def to_int
    to_i
  end

  alias value to_i

end
