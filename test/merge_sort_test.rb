require "minitest/autorun"
require File.expand_path(File.dirname(__FILE__) + '/../src/merge_sort')

class MergeSortTest < Minitest::Test
  def setup
  end

  def test_merge_sort
    puts 'welcome to merge sort'
    numbers = (1..10).to_a.reverse

    merge_sort = MergeSort.new(numbers)
    merge_sort.sort
    
    assert_equal merge_sort.numbers, numbers.sort

    
    numbers = (1..9).to_a.reverse

    merge_sort = MergeSort.new(numbers)
    merge_sort.sort
    
    assert_equal merge_sort.numbers, numbers.sort
  end
end
