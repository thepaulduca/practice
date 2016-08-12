#Let user create a house
#rooms will be hash values
#items in room should be an array
#The house can have a max 5 rooms
#each room can have unlimted items 
#User can change the items in the room

#BUSINESS LOGIC

def room_add(house, room)
	house[room] = []
	puts house
end

house = {}
rooms = ["living room", "bedroom", "bathroom"]

rooms.each do |room|
	room_add(house, room)
end 