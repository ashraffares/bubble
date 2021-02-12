# First task

def bubble_sort(array)
  loop do
    sorted = false
    (array.length - 1).times do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        sorted = true
      end
    end
    break unless sorted
  end
  array
end
unsorted_array = [5, 2, 100, 101, 6, 1]
p bubble_sort(unsorted_array)

# Second task

def bubble_sort_by1(array)
  sorted = true
  loop do
    sorted = false
    array.length.times do |i|
      next unless array[i + 1]

      diff = yield(array[i], array[i + 1]).to_i
      if diff.positive?
        array[i], array[i + 1] = array[i + 1], array[i]
        sorted = true
      end
    end
    break unless sorted
  end
  array
end

unsorted = %w[howdoyoudo greetings hey hello hi]

p bubble_sort_by1(unsorted) { |left, right|
  left.length <=> right.length
}
