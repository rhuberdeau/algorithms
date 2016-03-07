# array = [6,7,4,3,2,1,4,5]
# array = [5,4,1,2,3,4,7,6]
array   = [1, 3, 4, 3, 5, 1, 3]
# find middle
# check if it's peak
# move to the side with the larger value

def find_middle(array)
  mid = array[array.length / 2]
  array.index(mid)
end

def larger_side(index, array)
  if array[index -1] && array[index] < array[index - 1]
    array = array[0..index-1]
    index = find_middle(array)
    larger_side(index ,array)
  elsif array[index + 1] && array[index] < array[index + 1]
    array = array[index+1..array.length-1]
    index = find_middle(array)
    larger_side(index ,array)
  else
    array[index]
  end
end


middle = find_middle(array)
peak   = larger_side(middle, array)
puts peak