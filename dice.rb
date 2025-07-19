class Die

  private

  attr_writer :sides

  def initialize(sides = 6)
    # Makes an array of variable number of sides
    self.sides = (1..sides).to_a
  end

  public

  attr_reader :sides

  def roll
    # Randomly selects an item from the initial array
    sides.sample
  end

  def multiple_rolls(rolls = 4, keep_max = nil, keep_min = nil)
    # Returns an array of values
    values = []
    (1..rolls).each do
      values.push(self.roll)
    end
    # Select all or some values to return
    if keep_max
      selection = values.max(keep_max)
    elsif keep_min
      selection = values.min(keep_min)
    else
      selection = values
    end
    selection
  end

end
