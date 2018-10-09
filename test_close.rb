require "minitest/autorun"
require_relative "close.rb"
class My_test < Minitest::Test

  def test_one
    assert_equal(1,1)
  end

  def test_for_empty_array
    my_number = "1234"
    bash_numbers = []
    assert_equal([], grand_bash(my_number, bash_numbers))
  end

  def test_for_match
    my_number = "1234"
    bash_numbers = ["1233", "1244", "1255", "1234"]
    assert_equal(["1234"], grand_bash(my_number, bash_numbers))
  end

  def test_different_numbers
    my_number = "1234"
    bash_numbers = ["1111", "2222", "3333", "1", "1234"]
    assert_equal(["1234"], grand_bash(my_number, bash_numbers))
  end

  def test_with_integers
    my_number = "1234"
    bash_numbers = [1, 2, 3, 4, "1234"]
    assert_equal(["1234"], grand_bash(my_number, bash_numbers))
  end

  def test_with_integers_two
    my_number = "1234"
    bash_numbers = [1234, "1234"]
    assert_equal(["1234"], grand_bash(my_number, bash_numbers))
  end

  def test_with_string
    my_number = "1234"
    bash_numbers = ["hello", "goodbye", "1234"]
    assert_equal(["1234"], grand_bash(my_number, bash_numbers))
  end

  def test_with_string_and_integer
    my_number = "1234"
    bash_numbers = [1, 2, 3, "okay", 1234, "1234"]
    assert_equal(["1234"], grand_bash(my_number, bash_numbers))
  end 

end
