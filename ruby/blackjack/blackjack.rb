module Blackjack
  def self.parse_card(card)

    case
    when card == "ace" then value = 11
    when card == "two" then value = 2
    when card == "three" then value = 3
    when card == "four" then value = 4
    when card == "five" then value = 5
    when card == "six" then value = 6
    when card == "seven" then value = 7
    when card == "eight" then value = 8
    when card == "nine" then value = 9
    when card == "ten" then value = 10
    when card == "jack" then value = 10
    when card == "queen" then value = 10
    when card == "king" then value = 10
    else
       value = 0
    end

    return value
  end

  def self.card_range(card1, card2)

    first = self.parse_card(card1)
    second = self.parse_card(card2)

    combined_value = first + second

    case combined_value
    when 4..11 then category = "low"
    when 12..16 then category = "mid"
    when 17..20 then category = "high"
    when 21 then category = "blackjack"
    else category = "dualaces"
    end

    return category
  end

  def self.first_turn(card1, card2, dealer_card)

    category = self.card_range(card1, card2)
    dealer_val = self.parse_card(dealer_card)
    
    case
    when category == "blackjack"
      if dealer_val >= 10
        first_turn = "S"
      else
        first_turn = "W"
      end

    when category == "high" 
      first_turn = "S"

    when category == "mid" 
      # puts "MID"
      if dealer_val < 7
        first_turn = "S"
      else
        first_turn = "H"
      end

    when category == "low"
      first_turn = "H"

    else first_turn = "P"
    end

    return first_turn
  end

end

# puts Blackjack.first_turn("ace", "king", "five")
# assert_equal "W", Blackjack.first_turn("ace", "king", "five")

# puts Blackjack.first_turn("ace", "king", "ace")
# assert_equal "S", Blackjack.first_turn("ace", "king", "ace")

# puts Blackjack.first_turn("nine", "six", "six")
# assert_equal "S", Blackjack.first_turn("nine", "six", "six")


# puts Blackjack.first_turn("ace", "five", "ten")
# => "P"

# Blackjack.parse_card("jack")
# => 11

# Blackjack.card_range("ten", "king")
# => "high"

