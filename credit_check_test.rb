require "minitest"
require "minitest/autorun"
require_relative 'credit_check'

class CreditCheckTest < Minitest::Test
  def test_it_can_break_a_number_into_individual_digits
    credit_check = CreditCheck.new
    # 12345 -> [1,2,3,4,5]
    assert_equal [1,2,3,4,5], credit_check.split_number(12345)
  end

  def test_it_can_double_every_other_digit_in_an_array
    credit_check = CreditCheck.new
    # [1,2,3,4,5] -> [1,4,3,8,5]
    assert_equal [1,4,3,8,5], credit_check.double_every_other_digit([1,2,3,4,5])
    # [1,2,3,4,5,6] -> [2,2,6,4,10,6]
    assert_equal [2,2,6,4,10,6], credit_check.double_every_other_digit([1,2,3,4,5,6])
  end

  def test_adds_individual_digits_of_those_over_nine
    credit_check = CreditCheck.new

    assert_equal [2,2,6,4,1,6], credit_check.add_digits_over_nine([2,2,6,4,10,6])
    assert_equal [1,4,3,8,5], credit_check.add_digits_over_nine([1,4,3,8,5])
  end

  def test_adds_digits_to_find_total
    credit_check = CreditCheck.new

    assert_equal 21, credit_check.total([2,2,6,4,1,6])
  end

  def test_mods_total
    credit_check = CreditCheck.new
    assert_equal 1, credit_check.divisible_by_ten(21)
  end

end
