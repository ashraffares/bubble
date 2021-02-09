ar = [15, 16, 6, 8, 5]
len = ar.length
for i in 0...len - 1
  for j in 0...(len - 1) - i
    if ar[j] > ar[j + 1]
      ar[j], ar[j + 1] = ar[j + 1], ar[j]
    end
  end
end
# Second version
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
