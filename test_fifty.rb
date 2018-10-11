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
    my_num = ["123452345", "234", "1234"]
    ticket_num = ["1111", "2222", "1234", "2234"]
    assert_equal(["1234"], winning(my_num, ticket_num))
  end

end
