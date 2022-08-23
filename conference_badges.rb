def badge_maker(name)
    return"Hello, my name is #{name}."
end

#you'll want to get the badges printed for all of your speakers.
def batch_badge_creator(names)
    names.map{|name|
        badge_maker(name)
    }
end

# Write a method called #assign_rooms that takes the list of speakers and assigns each speaker to a room. 
def assign_rooms(speakers)
    speakers.map.with_index{|name, index|  "Hello, #{name}! You'll be assigned to room #{index + 1}!"}
end


# Now you have to tell the printer what to print. 
# Create a method called #printer that will output first the results of the #batch_badge_creator method, 
# and then the output of the #assign_rooms method, to the screen.
def printer(names)
    batch_badge_creator(names).each {|i|  puts i}
    assign_rooms(names).each {|i|  puts i}
end