def map(source_array)
  new = []
  i = 0
  while i < source_array.length
    new.push(yield(source_array[i]))
    i += 1
  end
  p new
end

def reduce(source_array, starting_point=nil)
  if starting_point
    new = starting_point
    i = 0
  else
    new = starting_point[0]
    i = 1
  end
  while i < starting_point.length
    new = yield(new, starting_point[i])
    i += 1
  end
  p new
end
