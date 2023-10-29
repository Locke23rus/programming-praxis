require 'minitest/autorun'
require_relative './001'

class Exercise001 < Minitest::Test
  def test_evaluate
    assert_equal evaluate('19 2.14 + 4.5 2 4.3 / - *'), 85.2974
  end
end
