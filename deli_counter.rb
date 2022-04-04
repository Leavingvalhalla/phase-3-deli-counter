require 'pry'

def line (line_array)
    if line_array == []
        puts 'The line is currently empty.'
    else
        order = line_array.map.each_with_index {|name, i| "#{i + 1}. #{name}"}
        output = order.join(' ')
        puts "The line is currently: #{output}"
    end
end

def take_a_number (line_array, name)
    line_array.push(name)
    puts "Welcome, #{name}. You are number #{line_array.length} in line."
end

def now_serving (line_array)
    if line_array == []
        puts 'There is nobody waiting to be served!'
    else
        puts "Currently serving #{line_array[0]}."
        line_array.shift
    end
end

line(['Ada', 'Grace', 'Kent'])