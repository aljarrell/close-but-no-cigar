require "minitest/autorun"
require_relative "cigar.rb"
class My_test < Minitest::Test

  def test_one
    assert_equal(1,1)
  end

  def test_matching_number_returns_false
    my_number = "1234"
    bash_numbers = "1233"
    assert_equal(true, off_by_one_number(my_number, bash_numbers))
  end

  def test_bash_array_number
    my_number = "1234"
    bash_numbers = ["2222", "3333", "4444"]
    assert_equal(false, off_by_one_number(my_number, bash_numbers))
  end

  def test_array
    my_number = "1234"
    bash_numbers = ["1233", "3333", "4444"]
    assert_equal(["1233"], winning_tickets_off_by_one(my_number, bash_numbers))
  end

  def test_off_by_one
    my_number = "1234"
    bash_numbers = ["2234", "5555", "2352", "4563"]
    assert_equal(["2234"], winning_tickets_off_by_one(my_number, bash_numbers))
  end

  def test_with_integers
    my_number = "1234"
    bash_numbers = ["0234", 1.to_s]
    assert_equal(["0234"], winning_tickets_off_by_one(my_number, bash_numbers))
  end

  def test_more_numbers
    my_number = "1234"
    bash_numbers = ["1244", "1231235123", "55567", "12"]
    assert_equal(["1244"], winning_tickets_off_by_one(my_number, bash_numbers))
  end

  def test_with_string
    my_number = "1234"
    bash_numbers = ["1235", "hello", "goodbye"]
    assert_equal(["1235"], winning_tickets_off_by_one(my_number, bash_numbers))
  end

  def test_big_numbers
    my_number = "1234567"
    bash_numbers = ["1234566", "123049230529350239142309132", "10239403945390513"]
    assert_equal(["1234566"], winning_tickets_off_by_one(my_number, bash_numbers))
  end

  def test_for_how_many_off
    my_number = "1234"
    bash_numbers = "1233"
    assert_equal(1, numbers_off_by_how_many(my_number, bash_numbers))
  end

end
