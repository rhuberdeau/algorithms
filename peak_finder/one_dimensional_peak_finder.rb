class PeakFinder
  attr_reader :array
  def initialize(array)
    @array = array
  end

  def peak
    return "no peak" if array.uniq.length == 1
    left_array  = array[0..array.length/2 - 1]
    right_array = array[array.length/2+1..array.length-1]
    left        = find_peak(left_array)
    right       = find_peak(right_array)

    return "peak on both sides: #{left}" if left == right
    left > right ? left : right
  end

  def find_peak(array)
    return array.sort.last if array.length <= 2

    if array[array.length/2 ] < array[array.length/2 - 1]
      find_peak(array[0..array.length/2 - 1])
    elsif array[array.length/2] < array[array.length/2 + 1]
      find_peak(array[array.length/2+1..array.length-1])
    else
      array[array.length/2]
    end
  end
end