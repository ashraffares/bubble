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

print bubble_sort_by([15, 16, 6, 8, 5]) { |a, b| a > b }
