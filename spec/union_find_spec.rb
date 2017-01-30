require_relative '../algorithms/union_find'
RSpec.describe UnionFind do

  let!(:hundred_positions){ UnionFind.new 100 }
  let!(:thousand_positions){ UnionFind.new 1000 }
  let!(:ten_thousand_positions){ UnionFind.new 10000 }
  let!(:million_positions){ UnionFind.new 1000000 }
  let!(:ten_million_positions){ UnionFind.new 10000000 }



  describe '#connect' do

    context 'Calculate time' do
      it 'calculate union with 100 positions' do
        hundred_positions.array.shuffle
        time = Time.now
        hundred_positions.connect hundred_positions.array.first, hundred_positions.array.last
        time = Time.now - time
        puts "hundred took #{time * 1000} miliseconds with Union find"
      end
      it 'calculate union with 1000 positions' do
        thousand_positions.array.shuffle
        time = Time.now
        thousand_positions.connect thousand_positions.array.first, thousand_positions.array.last
        time = Time.now - time
        puts "thousand took #{time * 1000} miliseconds with Union find"
      end
      it 'calculate union with 1000 positions' do
        ten_thousand_positions.array.shuffle
        time = Time.now
        ten_thousand_positions.connect ten_thousand_positions.array.first, ten_thousand_positions.array.last
        time = Time.now - time
        puts "ten thousand took #{time * 1000} miliseconds  with Union find"
      end
      it 'calculate union with 1000 positions' do
        million_positions.array.shuffle
        time = Time.now
        million_positions.connect million_positions.array.first, million_positions.array.last
        time = Time.now - time
        puts "million took #{time * 1000} miliseconds with Union find"
      end
      it 'calculate union with 1000 positions' do
        ten_million_positions.array.shuffle
        time = Time.now
        ten_million_positions.connect ten_million_positions.array.first, ten_million_positions.array.last
        time = Time.now - time
        puts "ten million took #{time * 1000} miliseconds with Union find"
      end

    end
  end
end