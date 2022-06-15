# Write your code here.

def badge_maker(name)
    "Hello, my name is #{name}."
end

# def batch_badge_creator(attendees)
#     badges = []
#     attendees.each do |attendee|
#         badges.push("Hello, my name is #{attendee}.")
#     end
#     badges  
# end
def batch_badge_creator(attendees)
    attendees.map do |attendee|
        "Hello, my name is #{attendee}."
    end
end

# def assign_rooms(attendees)
#     room_num = 1
#     room_assignments = []
#     attendees.each do |attendee|
#         room_assignments.push("Hello, #{attendee}! You'll be assigned to room #{room_num}!")
#         room_num += 1
#     end
#     room_assignments
# end

def assign_rooms(attendees)
    attendees.map.with_index(1) do |attendee, room_num|
        "Hello, #{attendee}! You'll be assigned to room #{room_num}!"
    end
end












def printer(attendees)
    batch_badge_creator(attendees).each do |badges|
        puts badges
    end
    assign_rooms(attendees).each do |room_assignments|
        puts room_assignments
    end
end