class LogLineParser
  def initialize(line)
    # puts "iii: #{line}"
    @line = line
  end

  def message

    # puts "mmm: #{@line}"
    
    # remove log_level
    msg = @line.gsub(/\[.*?\]: /, '')
    # puts "nnn: #{msg}"

    msg1 = msg.strip
    # puts "nnn: #{msg1}"

    result = msg1.gsub(/\\t/, '')
    # puts "ooo: #{result}"

    result1 = result.gsub(/\\n/, '')
    # puts "ooo: #{result1}"

    result2 = result1.gsub(/\\r/, '')
    # puts "ooo: #{result2}"

    # puts msg
    # puts msg1.strip
    # return msg1 

    return result2
  end

  def log_level
    curr_line = @line 
    ind1 = curr_line.index('[') + 1
    ind2 = curr_line.index(']') - 1
    curr_line.slice(ind1, ind2).downcase
  end

  def reformat
    "#{message} (#{log_level})"
  end
end

# LogLineParser.new("[INFO]: Disk defragmented").reformat
# => "Operation completed (info)"

# LogLineParser.new('[WARNING]:   \tTimezone not set  \r\n').message

# LogLineParser.new('[ERROR]: Invalid operation').log_level
