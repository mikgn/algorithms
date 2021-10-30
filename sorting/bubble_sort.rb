# frozen_string_literal: true

# bubble sort
#
module BubbleSort
  class << self
    def call(array)
      return array if array.length <= 1

      sort_array(array)
    end

    private

    def sort_array(array)
      loop do
        swapped = false

        (array.length - 1).times do |i|
          next if array[i] < array[i + 1]

          array[i], array[i + 1] = array[i + 1], array[i]
          swapped = true
        end

        break if swapped == false
      end
      array
    end
  end
end

arr = (1..30).to_a.shuffle
p BubbleSort.call(arr)
