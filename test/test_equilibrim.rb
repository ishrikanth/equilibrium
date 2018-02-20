require './lib/equilibrium'
require 'test/unit'

class TestEquilibrium < Test::Unit::TestCase
  def test_valid_data
    arr = [-7,1,5,2,-4,3,0]
    res = Equilibrium.new.calculate(arr,7)
    assert(res==3)

    arr = [1,2,4,5,0,7,5]
    res = Equilibrium.new.calculate(arr,5)
    assert(res==4)
  end

  def test_invalid_data
    arr = [1,2,4,4,0,7,5]
    res = Equilibrium.new.calculate(arr,5)
    assert(res==-1)
  end
end
