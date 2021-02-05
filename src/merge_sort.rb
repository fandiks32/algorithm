require 'pp'

class MergeSort
  attr_accessor :numbers
  def initialize(numbers)
    @numbers = numbers
  end

  def sort
    @numbers = splitter(@numbers)
  end

  private 
  
  def splitter(parent_array)
    return parent_array if parent_array.size == 1
    x = (parent_array.size - 1) - (parent_array.size / 2)

    merge(
      splitter(parent_array[0..x]),
      splitter(parent_array[(x+1)..(parent_array.size - 1)])
    )
  end

  def merge(left, right)
    lpoint = 0
    rpoint = 0
    merged = []
    while(left.size > lpoint || right.size > rpoint) do
      if !left[lpoint].nil? && (right[rpoint].nil? || left[lpoint] <= right[rpoint])
        merged << left[lpoint]
        lpoint += 1
      else
        merged << right[rpoint]
        rpoint += 1
      end
    end
    merged
  end
end








