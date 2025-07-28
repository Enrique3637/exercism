class LogLineParser
  def initialize(line)
    @line = line
  end

  def message(index: 1)
    @line.split(":")[index].strip
  end

  def log_level
    message(index: 0).gsub(/[\[\]]/, "").downcase
  end

  def reformat
    "#{message} (#{log_level})"
  end
end
#prueba