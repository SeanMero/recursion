# sort an array using recursive merge sort algorithm
def merge_sort(arr)
  # base
  return arr if arr.length < 2

  # recursive split
  mid = arr.length / 2
  left = merge_sort(arr[0...mid])
  right = merge_sort(arr[mid..-1])

  # merge
  answer = []
  until left.empty? || right.empty?
    left.first <= right.first ? answer << left.shift : answer << right.shift
  end

  answer + left + right
end
