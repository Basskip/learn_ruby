class Timer
  #write your code here
  def initialize
    @seconds = 0
    @minutes = 0
    @hours = 0
  end

  def seconds
    @seconds
  end

  def seconds=(number)
    @hours = number / 3600
    number -= @hours * 3600

    @minutes = number / 60
    number -= @minutes * 60

    @seconds = number
  end

  def time_string   
    padded(@hours) + ":" + padded(@minutes) + ":" + padded(@seconds)
  end

  def padded num
    if num < 10
      return '0' + num.to_s
    else
      return num.to_s
    end
  end
end