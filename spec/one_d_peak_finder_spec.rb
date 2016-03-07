require_relative './../peak_finder/one_dimensional_peak_finder'

RSpec.describe PeakFinder do
  it "takes an array" do
    peak_finder = PeakFinder.new([1,2,3,4])
    expect(peak_finder).to be_an_instance_of(PeakFinder)
  end

  context "number of the left is bigger" do
    it "finds the peaks on the left" do 
      peak_finder = PeakFinder.new([6,7,4,3,2,1,4,5])
      expect(peak_finder.peak).to eql(7)
    end

    context "there are no peaks on the left" do 
      context "but there is a peak on the right" do 
        it "returns the peak on the right" do 
          peak_finder = PeakFinder.new([2,2,2,2,1,1,3,2,2])
          expect(peak_finder.peak).to eql(3)
        end
      end
    end
  end

  context "number on the right is bigger" do 
    it "finds peaks on the right" do 
      peak_finder = PeakFinder.new([5,4,1,2,3,4,7,6])
      expect(peak_finder.peak).to eql(7)
    end

    context "there are no peaks on the right" do 
      context "but there is a peak on the left" do 
        it "returns the peak on the left" do 
          peak_finder = PeakFinder.new([3,3,3,3,2,2,4,3,3])
          expect(peak_finder.peak).to eql(4)
        end
      end
    end
  end

  context "all the numbers in the array are the same" do 
    it "returns no peak" do 
      peak_finder = PeakFinder.new([2,2,2,2,2,2,2])
      expect(peak_finder.peak).to eql("no peak")
    end
  end

  context "both sides have an equal peak" do 
    it "returns peak on both sides with the peak value" do 
      peak_finder = PeakFinder.new([2,2,2,1,2,2,2])
      expect(peak_finder.peak).to eql("peak on both sides: 2")
    end
  end
end