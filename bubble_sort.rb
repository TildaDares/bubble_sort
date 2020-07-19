# frozen_string_literal: true

def sort_array(bubble_array)
  (0...bubble_array.length).each do |i|
    swapped = false
    (0...bubble_array.length - i - 1).each do |j|
      next unless bubble_array[j] > bubble_array[j + 1]

      temp = bubble_array[j]
      bubble_array[j] = bubble_array[j + 1]
      bubble_array[j + 1] = temp
      swapped = true
    end
    break unless swapped
  end
  puts bubble_array
end

puts 'Enter the array you would like to sort (separate input with a space)'
input = gets.chomp.split(' ')

while input.any?(/\D/)
  puts 'Only digits are allowed'
  puts 'Enter the array you would like to sort (separate prices with a space)'
  input = gets.chomp.split(' ')
end

bubble_array = input.map(&:to_i)

sort_array(bubble_array)
