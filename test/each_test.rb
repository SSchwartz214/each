require 'minitest/autorun'
require 'minitest/pride'
require './lib/each.rb'
require 'pry'

class EachTest < Minitest::Test
  def test_it_exists
    collection = [1,2,3,4]
    custom_each = CustomEach.new(collection)

    assert_instance_of CustomEach, custom_each
  end

  def test_it_can_iterate_through_collection
    collection = [1,2,3,4]
    custom_each = CustomEach.new(collection)

    assert_equal [1,2,3,4], custom_each.iterate
  end

  def test_it_can_iterate_through_collection_and_multiply_by_2
    collection = [1,2,3,4]
    custom_each = CustomEach.new(collection)

    assert_equal [2,4,6,8], custom_each.iterate_and_multiply_by_2
  end
end