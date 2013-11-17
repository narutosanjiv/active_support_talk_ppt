module TestModule1 
  def check
    p "in module testmodule2"
  end
end

module TestModule2
  def check
    p "in module testmodule1"
    super
  end
end

class Test
  include TestModule1
  include TestModule2

  def check
    p 'in class test'
    super
  end
end

Test.new.check

p Test.ancestors
