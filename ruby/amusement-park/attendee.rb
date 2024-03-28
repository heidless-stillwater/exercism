class Attendee
  def initialize(height)
    # raise 'Implement the Attendee#initialize method'
    @height = height
    # @pass_id = pass_id
  end

  def height
    # raise 'Implement the Attendee#height method'
    @height
  end

  def pass_id
    # raise 'Implement the Attendee#pass_id method'
    @pass_id
  end

  def issue_pass!(pass_id)
    # raise 'Implement the Attendee#issue_pass! method'
    @pass_id = pass_id
  end

  def revoke_pass!
    # raise 'Implement the Attendee#revoke_pass! method'
    @pass_id = nil
  end
end

puts attendee = Attendee.new(106)
puts attendee.height

attendee.issue_pass!(42)
puts attendee.pass_id

attendee.revoke_pass!
puts attendee.pass_id
# => 42
