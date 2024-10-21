def interpolation_search(list, target)
  low = 0
  high = list.length - 1
  while low <= high && target >= list[low] && target <= list[high]
    pos = low + ((target - list[low]) * (high - low)) / (list[high] - list[low])
    if list[pos] == target
      return pos
    elsif list[pos] < target
      low = pos + 1
    else
      high = pos - 1
    end
  end
end
