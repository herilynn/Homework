array = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 
 'fiiiissshhhhhh']

    def bubble_sort!(array)
      
      sorted = false
  
      while !sorted
        sorted = true
        (0...array.length - 1).each do |idx|
          if array[idx].length > array[idx + 1].length
            array[idx], array[idx + 1] = array[idx + 1], array[idx]
            sorted = false
          end
        end
      end
  
      array[-1]
    end
  
    def bubble_sort(array)
      bubble_sort!(array.dup)
    end

    def merge_sort (array, &prc)
        return array if array.length <= 1
    
        mid_idx = array.length / 2
        merge(
          merge_sort(array.take(mid_idx), &prc),
          merge_sort(array.drop(mid_idx), &prc),
          &prc
        )
      end

      def merge(left, right, &prc)
        merged_array = []
        prc = Proc.new { |num1, num2| num1 <=> num2 } 
        until left.empty? || right.empty?
          case prc.call(left.first, right.first)
          when -1
            merged_array << left.shift
          when 0
            merged_array << left.shift
          when 1
            merged_array << right.shift
          end
        end
    
        merged_array + left + right
      end