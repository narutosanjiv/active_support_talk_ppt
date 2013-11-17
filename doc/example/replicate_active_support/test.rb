require "#{Dir.pwd}/test_module"

class Test
  include TestModule 

end 

p Test.for_class_call
p Test.superclass
