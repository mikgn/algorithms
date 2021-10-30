# frozen_string_literal: true

# quick sort
#
module QuickSort
  class << self
    def call(array)
      return array if array.length <= 1

      sort_array(array)
    end

    private

    def sort_array(array)
      pivot = array.sample
      array.delete_at(array.index(pivot))

      less = []
      greater = []

      array.each { |element| element < pivot ? less << element : greater << element }

      [QuickSort.call(less), pivot, QuickSort.call(greater)].flatten
    end
  end
end

arr = (1..1_000_000).to_a.shuffle

start = Time.now
QuickSort.call(arr)
p Time.now - start
