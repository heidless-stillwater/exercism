module Chess
  Chess::RANKS = Range.new(1, 8)
  # Chess::RANKS.each { |var| print "#{var}, " }

  Chess::FILES = Range.new('A', 'H')
  # Chess::FILES.each { |var| print "#{var}, " }

  def self.valid_square?(rank, file)
    valid = false

    # puts "rank_1: #{rank} || rank: #{rank}"
    # puts "file_1: #{file} || file: #{file}"

    valid_rank = false
    Chess::RANKS.each do |r|
      # puts "rank_1: #{r} || rank: #{rank}"
      if rank.to_i == r.to_i
        # puts "VALID RANK"
        valid_rank = true
      end
    end

    valid_file = false
    Chess::FILES.each do |f|
      # puts "file_1: #{f} || rank: #{file}"
      if file.to_s == f.to_s
        # puts "VALID FILE"
        valid_file = true
      end
    end

    if valid_rank && valid_file
      valid = true
    else 
      valid = false
    end

    # puts "rnk_true: #{rnk_true = Chess::RANKS.include?(rank).class}"
    # puts "fil_true: #{fil_true = Chess::FILES.include?(file).class}"

    # if Chess::RANKS.include?(rank) && Chess::FILES.include?(file)
    #   puts "VALID"
    #   valid = true
    # end

    return valid
  end

  def self.nick_name(first_name, last_name)
    top = first_name[0..1].upcase
    tail = last_name[-2..-1].upcase

    return top + tail
  end

  def self.move_message(first_name, last_name, square)
    
    rnk = square[1]
    fil = square[0]

    nickname = Chess.nick_name(first_name, last_name).to_s

    if self.valid_square?(rnk, fil)
      puts msg = "#{nickname} moved to #{square}"
    else
      puts msg = "#{nickname} attempted to move to #{square}, but that is not a valid square"
    end

    return msg

    # {nickname} moved to {square}

  end
end

Chess.move_message("Dj", "Walker", "I9")

# Chess.move_message("John", "Doe", "A1")
# Chess.move_message("John", "Doe", "Z9")

# => "JOOE moved to A1"

# puts Chess.nick_name("John", "Doe")
# => "JOOE"

# puts Chess.valid_square?(1, 'Z')
# => true


# puts Chess.valid_square?(1, 'K')

