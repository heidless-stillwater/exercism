class LocomotiveEngineer

  def self.generate_list_of_wagons(*arguments)
    # puts "generate_list_of_wagons"
    arguments
  end

  def self.fix_list_of_wagons(each_wagons_id, missing_wagons)
    first, second, third, *others = each_wagons_id

    [third, *missing_wagons, *others, first, second]
  end

  def self.add_missing_stops(direction, **stops)

    { **direction, stops: stops.values }
  end

  def self.extend_route_information(route, more_route_information)
    { **route, **more_route_information }
  end
end

# LocomotiveEngineer.extend_route_information({"from": "Berlin", "to": "Hamburg"}, {"length": "100", "speed": "50"})

# => {"from": "Berlin", "to": "Hamburg", "length": "100", "speed": "50"}

# LocomotiveEngineer.add_missing_stops({ from: 'Gothenburg', to: 'Copenhagen' }, stop_1: 'Kungsbacka', stop_2: 'Varberg', stop_3: 'Halmstad', stop_4: 'Angelholm', stop_5: 'Lund', stop_6: 'Malmo')

# assert_equal(
  
# { from: 'Gothenburg', to: 'Copenhagen', stops: %w[Kungsbacka Varberg Halmstad Angelholm Lund Malmo] }

# LocomotiveEngineer.add_missing_stops({ from: 'Gothenburg', to: 'Copenhagen' }, stop_1: 'Kungsbacka', stop_2: 'Varberg', stop_3: 'Halmstad', stop_4: 'Angelholm', stop_5: 'Lund', stop_6: 'Malmo'))

# LocomotiveEngineer.generate_list_of_wagons(1, 7, 12, 3, 14, 8, 5)
# # => [1, 7, 12, 3, 14, 8, 5]

# LocomotiveEngineer.fix_list_of_wagons([2, 5, 1, 7, 4, 12, 6, 3, 13], [3, 17, 6, 15])
# # => [1, 3, 17, 6, 15, 7, 4, 12, 6, 3, 13, 2, 5]

# LocomotiveEngineer.add_missing_stops({from: "New York", to: "Miami"},
#                     stop_1: "Washington, DC", stop_2: "Charlotte", stop_3: "Atlanta",
#                     stop_4: "Jacksonville", stop_5: "Orlando")
# # => {from: "New York", to: "Miami", stops: ["Washington, DC", "Charlotte", "Atlanta", "Jacksonville", "Orlando"]}

