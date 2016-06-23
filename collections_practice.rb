def sort_array_asc(arr)
  arr.sort { |a, b| a <=> b }
end

def sort_array_desc(arr)
  arr.sort { |a, b| b <=> a }
end

def sort_array_char_count(arr)
  arr.sort { |a, b| a.size <=> b.size }
end

def swap_elements(arr)
  old_element = arr[1]
  arr[1] = arr[2]
  arr[2] = old_element
  arr
end

def swap_elements_from_to(arr, idx, dest_idx)
  old_idx = arr[idx]
  arr[idx] = arr[dest_idx]
  arr[dest_idx] = old_idx
  arr
end

def reverse_array(arr)
  length = arr.size
  mid = (length/2).floor
  i = 0
  while (i < mid)
    old_idx = arr[i]
    arr[i] = arr[length - 1 - i]
    arr[length - 1 - i] = old_idx
    i += 1
  end
  arr
end

def kesha_maker(arr)
  arr.map { |name| name.slice(0,2) + "$" + name.slice(3, name.size) }
end

def find_a(arr)
  arr.select { |name| name.start_with? "a" }
end

def sum_array(arr)
  arr.inject {|sum, num| sum + num }
end

def add_s(arr)
  arr.each_with_index.collect {|word, idx| idx == 1 ? word : word + "s" }
end
