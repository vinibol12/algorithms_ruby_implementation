class BinarySearch
  attr_writer :array

  def initialize array
    @array = array
  end

  def find_index key
    low = 0
    high = @array.length-1
    while low <= high
      @middle = low + (high - low)/2
      if key < @array[@middle]
        high = @middle -1
      elsif key > @array[@middle]
        low = @middle +1
      else
        return "#{key} is in the index position #{@middle} of the list."
      end
    end
    'Key not found'
  end
end
