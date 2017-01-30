require_relative '../algorithms/quick_union'
RSpec.describe QuickUnion do
  let!(:hundred_positions){ QuickUnion.new 100 }
  let!(:thousand_positions){ QuickUnion.new 1000 }
  let!(:ten_thousand_positions){ QuickUnion.new 10000 }
  let!(:million_positions){ QuickUnion.new 1000000 }



  describe '#connect' do

    context 'Calculate time' do
      it 'calculate union with 100 positions' do
        hundred_positions.id.shuffle
        time = Time.now
        hundred_positions.connect hundred_positions.id.first, hundred_positions.id.last
        time = Time.now - time
        puts "hundred took #{time * 1000} with Quick Union"
      end
      it 'calculate union with 1000 positions' do
        thousand_positions.id.shuffle
        time = Time.now
        thousand_positions.connect thousand_positions.id.first, thousand_positions.id.last
        time = Time.now - time
        puts "thousand took #{time * 1000} with Quick Union"
      end
      it 'calculate union with 1000 positions' do
        ten_thousand_positions.id.shuffle
        time = Time.now
        ten_thousand_positions.connect ten_thousand_positions.id.first, ten_thousand_positions.id.last
        time = Time.now - time
        puts "ten thousand took #{time * 1000} with Quick Union"
      end
      it 'calculate union with 1000 positions' do
        million_positions.id.shuffle
        time = Time.now
        million_positions.connect million_positions.id.first, million_positions.id.last
        time = Time.now - time
        puts "million took #{time * 1000} with Quick Union"
      end
     it 'calculate union with 1000 positions' do
        million_positions.id.shuffle
        time = Time.now
        million_positions.connect million_positions.id.first, million_positions.id.last
        time = Time.now - time
        puts "ten million took #{time * 1000} with Quick Union"
      end

    end
  end

  describe '#root' do
    it 'returns the root it of an element' do

    end
  end

  describe '#connected?' do
    it 'returns true' do

    end
  end
end