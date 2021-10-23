arr = (1..30).to_a.shuffle

def bubble_sort(array)
  return array if array.length <= 1
  n = array.length

  loop do
    swapped = false

    (n - 1).times do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
      end
    end

    break if swapped == false
  end

  array
end

p bubble_sort(arr)
