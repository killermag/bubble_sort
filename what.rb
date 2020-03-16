
def bubble_sort(array)
    n = array.length
    (n-1).times do 
        a , b = 0, 1
        (n-1).times do
        array[a],array[b] = array[b],array[a] if array[a] > array[b]
        a = a + 1
        b = b + 1
    end
      
    end
    puts array
end


nums = [2,1,4,2,4,6,7,8,9]
bubble_sort(nums)


def bubble_sort_by (array)
  raise "NO BLOCK GIVEN" unless block_given?
  n = array.length
  (n-1).times do
    i = 0
    (n-1).times do
    array[i],array[i+1] = array[i+1],array[i]  if yield(array[i],array[i+1]) > 0
    i += 1
  end
   

end
puts array 
end

bubble_sort_by(nums) { |a,b| a <=> b }
bubble_sort_by(["hi","hello","hey"]) do |left,right|
     left.length - right.length
     end










