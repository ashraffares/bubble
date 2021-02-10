ar = [15, 16, 6, 8, 5]
len = ar.length
(0...len - 1).each do |i|
  (0...(len - 1) - i).each do |j|
    ar[j], ar[j + 1] = ar[j + 1], ar[j] if ar[j] > ar[j + 1]
  end
end
# Second version
def bubble_sort(array)
  loop do
    sorted = false
    (array.length - 1).times do |i|
      if array[i] > array[i 1]
        array[i], array[i 1] = array[i 1], array[i]
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
def bubble_sort_by(arr)
  len = arr.length
  (0...len - 1).each do |i|
    (0...(len - 1) - i).each do |j|
      res = yield(arr[j], arr[j + 1])
      arr[j], arr[j + 1] = arr[j + 1], arr[j] if res
    end
  end
  arr
end

print bubble_sort_by(%w[hey hello hi howdy]) { |a, b| a > b }

bubble_sort_by(%w[hi hello hey]) do |left, right|
  left.length - right.length
end
# Alternative version
def bubble_sort_by1(array)
  sorted = true
  loop do
    sorted = false
    (array.length - 1).times do |i|
      diff = yield(array[i], array[i + 1]).to_i
      if diff >= 0
        array[i], array[i + 1] = array[i + 1], array[i]
        sorted = true
      end
    end
    break unless sorted
  end
  array
end

print bubble_sort_by1(%w[hey hello hi howdy])
