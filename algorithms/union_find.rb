require 'pry'


class UnionFind
  attr_reader :array
  def initialize number
    @array = *(1..number)
  end


  def connected?(p, q)
    @array[p-1] == @array[q-1]
  end

  def connect(p, q)
    value_of_p = @array[p-1]
    for x in 0..@array.length-1
      if @array[x] == value_of_p
        @array[x] = @array[q-1]
      end
    end
    @array
  end
end