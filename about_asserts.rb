#!/usr/bin/env ruby
# -*- ruby -*-

require File.expand_path(File.dirname(__FILE__) + '/neo')

class AboutAsserts < Neo::Koan

  # We shall contemplate truth by testing reality, via asserts.
  def test_assert_truth
    assert true               # This should be true
  end

  # Enlightenment may be more easily achieved with appropriate
  # messages.
  def test_assert_with_message
    assert true, "this message should be true"
  end

  # To understand reality, we must compare our expectations against
  # reality.
  def test_assert_equality
    expected_value = 5 % 3
    actual_value = 1 + 1

    assert expected_value == actual_value
  end

  # Some ways of asserting equality are better than others.
  def test_a_better_way_of_asserting_equality
   x = 'abcd'
   y = 'ef' 
    
   expected_value = x.length - y.length 
    actual_value = 1 + 1

    assert_equal expected_value, actual_value
  end

  # Sometimes we will ask you to fill in the values
  def test_fill_in_values
    assert_equal 10 + 200 - 198 - 10/1, 1 + 1
  end
end
