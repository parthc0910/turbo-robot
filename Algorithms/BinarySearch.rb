def binary_search(list, target)
  low = 0
  high = list.length - 1
  while low <= high
    mid = (low + high) / 2
    if list[mid] == target
      return mid
    elsif list[mid] < target
      low = mid + 1
    else
      high = mid - 1
    end
  end
end
