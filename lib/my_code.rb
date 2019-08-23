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
    new = source_array[0]
    i = 1
  end
  while i < source_array.length
    new = yield(new, source_array[i])
    i += 1
  end
  p new
end
