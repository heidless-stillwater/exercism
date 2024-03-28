class AssemblyLine
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    # raise 'Please implement the AssemblyLine#production_rate_per_hour method'

    if @speed >= 1 && @speed <= 4 
      success_rate = 100.0
    elsif @speed > 4 && @speed <= 8
      success_rate = 90.0
    elsif @speed == 9
      success_rate = 80.0
    elsif @speed == 10
      success_rate = 77.0
    else 
      success_rate = -1.0
    end
    # puts "success_rate: #{success_rate}"

    speed = @speed
    full_production = (speed * 221).to_f
    # puts "full_prodcution: #{full_production}"

    successful = full_production * (success_rate / 100)
    # puts "successful: #{successful}"

  end




  def working_items_per_minute
    # raise 'Please implement the AssemblyLine#working_items_per_minute method'
    
    (production_rate_per_hour / 60).floor

  end
end

production_rate_per_hour = AssemblyLine.new(6).production_rate_per_hour

# puts "production_rate_per_hour: #{production_rate_per_hour}"

production_rate_per_minute = AssemblyLine.new(6).working_items_per_minute
# puts "production_rate_per_minute: #{production_rate_per_minute}"


