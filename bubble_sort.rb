=begin
Build a method #bubble_sort that takes an array and returns a sorted array. It must use the bubble sort methodology (using #sort would be pretty pointless, wouldn't it?).

    > bubble_sort([4,3,78,2,0,2])
    => [0,2,2,3,4,78]
=end

def bubble_sort(array)
  i = 0
  left = 0
  right = 1
  measure_until = array.length - 1 #number of comparisons to be made

while measure_until > 1 do

        while i < measure_until do

          if array[left] > array[right]
            array[left], array[right] = array[right], array[left]
          end

          left += 1
          right = left + 1
          i += 1

        end

        measure_until -=1

      #reset iterators

      i = 0
      left = 0
      right = 1
end



p array
end

bubble_sort([4,3,78,2,0,2])
