class Lasagna

  Lasagna::EXPECTED_MINUTES_IN_OVEN = 40
  
  def remaining_minutes_in_oven(actual_minutes_in_oven)
    remaining_time = Lasagna::EXPECTED_MINUTES_IN_OVEN - actual_minutes_in_oven

  end

  def preparation_time_in_minutes(layers)
    prep_time = layers * 2
  end

  def total_time_in_minutes(number_of_layers:, actual_minutes_in_oven:)
    actual_minutes_in_oven + preparation_time_in_minutes(number_of_layers)
  end
end

lasagna = Lasagna.new
puts lasagna.remaining_minutes_in_oven(30)
# => 10

lasagna = Lasagna.new
puts lasagna.preparation_time_in_minutes(2)
# => 4

lasagna = Lasagna.new
puts lasagna.total_time_in_minutes(number_of_layers: 3, actual_minutes_in_oven: 20)
# => 26
