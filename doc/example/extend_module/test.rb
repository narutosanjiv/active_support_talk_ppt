require "#{Dir.pwd}/test_module"

class Test
  class << self
    include TestModule  
  end 
end

Test.check
