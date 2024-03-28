class Attendee
  def initialize(height)
    @height = height
  end

  def issue_pass!(pass_id)
    @pass_id = pass_id
  end

  def revoke_pass!
    @pass_id = nil
  end

  # Do not edit above methods, add your own methods below.

  def has_pass?
    # raise 'Please implement the Attendee#haspass? method'
    @pass_id != nil
  end

  def fits_ride?(ride_minimum_height)
    # raise 'Please implement the Attendee#fits_ride? method'
    @height >= ride_minimum_height
  end

  def allowed_to_ride?(ride_minimum_height)
    # raise 'Please implement the Attendee#allowed_to_ride? method'

    fits_ride?(ride_minimum_height) && has_pass?
  end
end

# puts Attendee.new(140).fits_ride?(100)

attendee = Attendee.new(100)
attendee.issue_pass!(42)
puts attendee.allowed_to_ride?(90)
# => false

