def sort_array(bubble_array) 
    for i in (0..bubble_array.length-1) 
        swapped = false
        for j in (0...bubble_array.length-i-1) 
            if bubble_array[j] > bubble_array[j+1]
                temp = bubble_array[j]
                bubble_array[j] = bubble_array[j+1]
                bubble_array[j+1] = temp
                swapped = true
            end
        end
        if swapped == false then break
        end
    end
    puts bubble_array
end

puts "Enter the array you would like to sort (separate input with a space)"
input = gets.chomp.split(' ')

while input.any?(/\D/)
    puts "Only digits are allowed"
    puts "Enter the array you would like to sort (separate prices with a space)"
    input = gets.chomp.split(' ')
end

bubble_array = input.map do |number|
    number = number.to_i
end

sort_array(bubble_array)