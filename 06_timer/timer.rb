class Timer
  #write your code here
  def initialize
  	@seconds = 0
  end

  def seconds
  	return @seconds
  end

  def seconds=(seconds)
  	@seconds = seconds
  end

  def time_string
  	seconds = self.seconds
  	hours = seconds / 3600
  	seconds  = seconds % 3600
  	minutes = seconds / 60
  	seconds = seconds % 60
  	array = [hours, minutes, seconds]
  	array.each_with_index do |element, index|
  		array[index] = addPadding(element.to_s)
  	end
  	return array.join(":")
  end

  def addPadding(string)
  	array = string.split("")
  	if array.length < 2 then
  		array.insert(0, "0")
  	end
  	return array.join
  end
end