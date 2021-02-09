ar = [15, 16, 6, 8, 5]
len = ar.length
(0...len - 1).each do |i|
  (0...(len - 1) - i).each do |j|
    if ar[j] > ar[j + 1]
      ar[j], ar[j + 1] = ar[j + 1], ar[j]
    end   
  end
end