require 'facets'

items = Array.new
items.push(:a => "b", :c => "d")

class Ball
  attr_accessor :ball_type

  def initialize(k="regular")
    @ball_type = k
  end
end

def sum_array(arr)
  if arr == []
    0
  else
    arr.reduce(:+)
  end
end

def any?(arr, &block)
  arr.each do |x|
    if block.call(x) == true
      return true
    end
  end
  false
end

def vamp_numbers(arr)
  v = arr.reduce(:*).to_s.split('')
  z = arr.first.to_s.split('') + arr.last.to_s.split('')
  if v.frequency == z.frequency
    true
  else
    false
  end
end
