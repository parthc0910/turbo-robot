def quick_sort(arr)
  return arr if arr.length <= 1

  pivot = arr.delete_at(arr.length / 2)
  left = arr.select { |x| x < pivot }
  right = arr.select { |x| x >= pivot }

  quick_sort(left) + [pivot] + quick_sort(right)
end

# Example usage
array = [34, 7, 23, 32, 5, 62]
sorted_array = quick_sort(array)
puts sorted_array
