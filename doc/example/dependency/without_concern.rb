module Test1
  module DemoClass
    def test1_check
      p 'in module test1' 
    end
  end
  
  module DemoInstance

  end 
 
  def self.included(base)
    p "called when module get included base #{base}"
    base.send :include, DemoInstance
    base.send :extend, DemoClass
  end 
 
  def test1_check1
    
  end
end

module Test2
  include Test1
  def self.included(base)
    base.test1_check
  end
end

class WithoutConcern
  include Test2
end

p WithoutConcern.ancestors
