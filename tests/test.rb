
require 'test/unit'
require '../flattener'

class FlattenerTest < Test::Unit::TestCase

  def test1_should_pass
    arr = flatten!([1,["asd","aa",[[[1.0]]]]])
    expected = [1,"asd","aa",1.0]
    assert_equal(arr,expected)
  end

  def test2_should_pass
    arr = flatten!([1,[2],[[3]],[[[[[5.0]]]]]])
    expected = [1,2,3,5.0]
    assert_equal(arr,expected)
  end

  def test3_should_pass
    arr = flatten!([1,[2],[[3]],["test"]])
    expected = [1,2,3,"test"]
    assert_equal(arr,expected)
  end

  def test4_should_pass
    arr = flatten!([])
    expected = []
    assert_equal(arr,expected)
  end

  def test5_should_pass
    arr = flatten!([[[],[1]]])
    expected = [1]
    assert_equal(arr,expected)
  end
end
