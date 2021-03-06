def binary_search(an_array, item)
  first = 0
  last = an_array.length - 1

  while first <= last
    i = (first + last) / 2

    if an_array[i] == item
      return an_array[i]
    elsif an_array[i] > item
      last = i - 1
    elsif an_array[i] < item
      first = i + 1
    else
      return "#{item} not found in this array: #{i}"
    end
  end
end
