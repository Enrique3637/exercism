class AssemblyLine
  def initialize(speed)
    @speed = speed
    
  end

  def production_rate_per_hour
    speed = @speed * 221

    if @speed <= 4
      speed
    elsif @speed >= 5 && @speed <= 8
      speed * 0.9
    elsif @speed == 9
      speed * 0.8
    else
      speed * 0.77
    end
  end


  def working_items_per_minute
    per_minute = production_rate_per_hour / 60

    if @speed <= 4
      per_minute.to_i
    elsif @speed >= 5 && @speed <= 8
      per_minute.to_i
    elsif @speed == 9
      per_minute.to_i
    else
      per_minute.to_i
    end
  end
end
