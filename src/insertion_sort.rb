class InsertionSort
  attr_accessor :numbers
  
  def initialize(numbers)
    @numbers = numbers
  end
  
  def sort
    i = 1
    while(@numbers.size > i) do
      j = i
      while(j > 0) do
        if @numbers[j] < @numbers[j - 1]
          puts "numbers: i: #{i},j: #{j}, numbers: #{@numbers}"
          tmp = numbers[j - 1]
          numbers[j - 1] = numbers[j]
          numbers[j] = tmp
          puts "numbers => #{@numbers}"
        else
          break
        end
        j -= 1
      end
      i += 1
    end
  end
end
