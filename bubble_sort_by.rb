=begin
Now create a similar method called #bubble_sort_by which sorts an array but accepts a block. The block should take two arguments which represent the two elements currently being compared. Expect that the block's return will be similar to the spaceship operator you learned about before -- if the result of the block is negative, the element on the left is "smaller" than the element on the right. 0 means they are equal. A positive result means the left element is greater. Use this to sort your array.

    > bubble_sort_by(["hi","hello","hey"]) do |left,right|
    >   right.length - left.length
    > end
    => ["hi", "hey", "hello"]

=end

def bubble_sort_by(array)
  i = 0
  left = 0
  right = 1
  measure_until = array.length - 1 #number of comparisons to be made

while measure_until > 1 do

        while i < measure_until do

          if yield(array[left], array[right]) < 0
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

bubble_sort_by(["hi","hello","hey","i", "WHATHWATHAT","aa","e"]) {|left, right| right.length <=> left.length}

# instructions were confusing. method is called with a block which is yielded
# back to from within bubble_sort_by. the block tells the method how to compare
# the elements.
