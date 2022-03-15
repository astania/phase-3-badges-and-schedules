# Write your code here.

def badge_maker(name)
    "Hello, my name is #{name}."
end

def batch_badge_creator(name_array)
    name_array.map{|name| badge_maker(name)}
end

def assign_rooms(speakers_array)
    speakers_array.map.with_index do |speaker, index|
        "Hello, #{speaker}! You'll be assigned to room #{index + 1}!"
    end
end

def printer(name_array)
    badges = batch_badge_creator(name_array)
    badges.each{|badge| puts badge}

    rooms = assign_rooms(name_array)
    rooms.each{|room| puts room}
end 