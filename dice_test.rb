require 'minitest/autorun'
require_relative 'dice'

class DiceTest < Minitest::Test

  def test_single_roll_is_within_limits
    roll = Die.new.roll
    range = (1..6)
    message = %q(One roll's result %<roll>s must be within %<range>s)

    assert_includes range, roll, message % {roll:, range:}
  end

  def test_knows_it_self
    actual = Die.new.description
    expected = '6-sided'
    assert_equal expected, actual, 'The description should be %<expected>s'
  end

  def test_allows_for_4_sides
    actual = Die.new(4).description
    expected = '4-sided'
    assert_equal expected, actual, 'The description should be %<expected>s'
  end

end
