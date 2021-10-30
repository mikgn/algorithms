# frozen_string_literal: true

# insertion sort
#
module InsertionSort
  class << self
    def call(array)
      return array if array.length <= 1

      sort_array(array)
    end

    private

    def sort_array(array)
      (1...array.length).each do |i|
        j = i

        while j.positive?
          break if array[j - 1] < array[j]

          array[j], array[j - 1] = array[j - 1], array[j]

          j -= 1
        end
      end

      array
    end
  end
end

arr = (1..300).to_a.shuffle
p InsertionSort.call(arr)
