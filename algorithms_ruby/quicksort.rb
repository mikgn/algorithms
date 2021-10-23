arr = (1..1_000_000).to_a.shuffle

def quicksort(array)
  return array if array.length <= 1

  pivot = array.sample
  array.delete_at(array.index(pivot))

  less  = []
  greater = []

  array.each do |el|
    if el <= pivot
      less << el
    else
      greater << el
    end
  end

  sorted_array = []
  sorted_array += quicksort(less)
  sorted_array << pivot
  sorted_array += quicksort(greater)
  sorted_array
end

start = Time.now
quicksort(arr)
p Time.now - start
