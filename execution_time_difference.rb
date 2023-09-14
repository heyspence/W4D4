# def my_min(arr) # O(n^2)
#     min = arr.first

#     arr.each.with_index do |ele, i|
#         arr.each.with_index do |ele2, j|
#             if i < j && ele2 < min
#                 min = ele2
#             end
#         end
#     end
#     min
# end


def my_min(arr) #O(n)
    min = arr.first

    arr.each do |ele|
        if ele < min
            min = ele
        end
    end
    min
end


def largest_contiguous_subsum(arr) #O(n^2)
    all_subs = []

    (0...arr.length).each do |i|
        (i...arr.length).each do |j|
            all_subs << arr[i..j]
        end
    end

    sum = 0 
    all_subs.each do |sub_arr|
        if sub_arr.sum > sum
            sum = sub_arr.sum
        end
    end
    sum
end

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
p my_min(list)  # =>  -5

list = [5, 3, -7]
p largest_contiguous_subsum(list) # => 8
