require_relative "exercise"
require "test/unit"

class TestExercise < Test::Unit::TestCase
  test 'case base' do
    assert_equal 1, Exercise.new.to_decimal("I")
  end

  test 'example case' do
    assert_equal 14, Exercise.new.to_decimal("XIV")
  end
end
