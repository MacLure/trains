trains = [
    {train: "72C", frequency_in_minutes: 15, direction: "north"},
    {train: "72D", frequency_in_minutes: 15, direction: "south"},
    {train: "610", frequency_in_minutes: 5, direction: "north"},
    {train: "611", frequency_in_minutes: 5, direction: "south"},
    {train: "80A", frequency_in_minutes: 30, direction: "east"},
    {train: "80B", frequency_in_minutes: 30, direction: "west"},
    {train: "110", frequency_in_minutes: 15, direction: "north"},
    {train: "111", frequency_in_minutes: 15, direction: "south"}
]

train_111 = trains[-1][:direction]
puts train_111
puts "--------"
train_80B = trains[5][:frequency_in_minutes]
puts train_80B
puts "--------"
train_610 = trains[2][:direction]
puts train_610
puts "--------"

def get_trains_in_direction(arr, direction)
    trains_in_direction = []
    for train in arr
        if train[:direction] == direction
            trains_in_direction.push(train[:train])
        end
    end
    return trains_in_direction
end
puts "--------Northbound Trains"
puts get_trains_in_direction(trains, "north")
puts "--------Eastbound Trains"
puts get_trains_in_direction(trains, "east")
puts "--------"
trains[0][:departure_time] = 12
puts trains[0]
