class Student

  attr_accessor :first_name, :last_name, :email, :username

  @first_name
  @last_name
  @email
  @username
  @password

  def to_s
    "First name: #{@first_name}"
  end

end

heidless = Student.new

heidless.first_name = 'heidless'
heidless.email = "test@test.com"
heidless.username = "heid001"

puts heidless.first_name
puts heidless.email
puts heidless.username


