def ternary_search(l, r, &block)
  while r >= l
    mid1 = l + (r - l) / 3
    mid2 = r - (r - l) / 3
    if block.call(mid1) < block.call(mid2)
      l = mid1 + 1
    else
      r = mid2 - 1
    end
  end
  block.call(l)
end
