require "#{Dir.pwd}/dummy_support"

module TestModule
  extend DummySupport
  
  module ClassMethods
    def for_class_call
      p "#{self} call class methods"
    end
  end

  def inst
    p "#{self.class} calling instance method"
  end 
end
