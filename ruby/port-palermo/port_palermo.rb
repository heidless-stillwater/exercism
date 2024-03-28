module Port
  # TODO: define the 'IDENTIFIER' constant

  Port::IDENTIFIER = :PALE

  def self.get_identifier(city)
    this_city = city
    return this_city[0..3].upcase.to_sym
  end

  def self.get_terminal(ship_identifier)
    identifier_str = ship_identifier.to_s

    cargo = identifier_str[0..2]
    ship_id = identifier_str[3..5]

    if cargo == "OIL" || cargo == "GAS"
      terminal = "A"
    else
      terminal = "B"
    end
 
    terminal.to_sym
  end
end
