array = [6,7,4,3,2,1,4,5]
# array = [5,4,1,2,3,4,7,6]
# array   = [1, 3, 4, 3, 5, 1, 3]
# find middle
# check if it's peak
# move to the side with the larger value

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

peak = find_peak(array)
puts peak