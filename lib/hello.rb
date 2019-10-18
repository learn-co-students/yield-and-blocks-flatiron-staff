def hello_t(array)
  unless block_given?
    puts 'Hey! No block was given!'
    return
  end
  
  i = 0

  while i < array.size
    yield(array[i])
    i += 1
  end

  array
end

# call your method here!
hello_t(["Tim", "Tom", "Jim"]) { |name| puts "Hi, #{name}" if name.start_with?('T') }
