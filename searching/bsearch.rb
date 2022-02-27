# frozen_string_literal: true

# bsearch
#
module BSearch
  class << self
    def call(array, value)
      return array if array.length.zero?
      return 'Not found' if value_is_not_in_array?(array, value)

      search(array, value)
    end

    private

    def search(array, value)
      pivot_index = find_pivot_index(array.length)
      pivot = array[pivot_index]

      if pivot == value
        value
      elsif pivot > value
        BSearch.call(array[0..pivot_index], value)
      else
        BSearch.call(array[pivot_index..-1], value)
      end
    end

    def find_pivot_index(length)
      (length.to_f % 2).zero? ? (length / 2) : ((length - 1) / 2)
    end

    def value_is_not_in_array?(array, value)
      array[0] > value ||
        array[-1] < value ||
        array.length == 1 && array[0] != value
    end
  end
end
