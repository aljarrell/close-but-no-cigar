require "minitest/autorun"
require_relative "fifty.rb"
class My_test < Minitest::Test

  def test_one
    assert_equal(1,1)
  end

  def test_two
    my_num = ["1234", "1111", "2222", "3333", "4444"]
    ticket_num = ["1234", "5555", "6666", "7777"]
    assert_equal(["1234"], winning(my_num, ticket_num))
  end

  def test_three
    my_num = ["123452345", "4234", "1234"]
    ticket_num = ["1111", "2222", "1234", "4234"]
    assert_equal(["4234", "1234"], winning(my_num, ticket_num))
  end

  def test_four
    my_num = ["1234", "2234", "3234", "4234", "5234", "5555"]
    ticket_num = ["1234", "2234", "3234", "4234", "5234"]
    assert_equal(["1234", "2234", "3234", "4234", "5234"], winning(my_num, ticket_num))
  end

  def test_five
    my_num = ["1234", "2234"]
    ticket_num = ["1233", "2233", "3233", "2222"]
    assert_equal(["1234", "2234"], off_by_one_number(my_num, ticket_num))
  end

  def test_six
    my_num = ["1234", "2234", "3234"]
    ticket_num = ["1233", "2233", "3233", "2222", "5555"]
    assert_equal(["1234", "2234", "3234"], off_by_one_number(my_num, ticket_num))
  end

end
