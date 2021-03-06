# frozen_string_literal: true

require "test_helper"

class JpengPalindromeTest < Minitest::Test

  def test_non_palindrome
    refute "hello".palindrome?
  end

  def test_literal_palindrome
    assert "racecar".palindrome?
  end

  def test_mixed_case_palindrome
    assert "RaceCar".palindrome?
  end

  def test_letters
    assert_equal "MadamImAdam", "Madam, I'm Adam.".letters #Expected, Actual
  end

  def test_punctuated_palindrome
    assert "Madam, I'm Adam.".palindrome?
  end

  def test_integer_palindrome
    assert 12321.palindrome?
  end
end
