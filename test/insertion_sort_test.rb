require "minitest/autorun"
require File.expand_path(File.dirname(__FILE__) + '/../src/insertion_sort')

class InsertionSortTest < Minitest::Test
  def setup
  end

  def test_insetion_sort
    puts 'welcome to merge sort'
    numbers = (1..10).to_a.reverse

    merge_sort = InsertionSort.new(numbers)
    merge_sort.sort
    
    assert_equal merge_sort.numbers, numbers.sort

    
    numbers = (1..9).to_a.reverse

    merge_sort = InsertionSort.new(numbers)
    merge_sort.sort
    
    assert_equal merge_sort.numbers, numbers.sort
  end
end
