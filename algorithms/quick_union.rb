class QuickUnion
  attr_reader :id
  def initialize number
    @id = Array 0..number
  end

  def connected? p, q
    root(p) == root(q)
  end

  def root i
    i = i
    while i != @id[i]
      i = @id[i]
    end
    i
  end

  def connect p, q
    i = root p
    j = root q
    @id[i] = j
    @id
  end
end