require 'active_support/concern'
module Person
  #extend ActiveSupport::Concern
=begin 
  module ClassMethods
    def live
      p 'in live class method '
    end
  end
  
  module MyInstanceMethods
    def personal_interest(interest)
      p 'in instance method '
      p "interest #{interest}"
    end
  end
=end
#=begin
  #through ruby module concept
  module DemoClass
    def live
      p 'in live class method '  
    end
  end
  
  module DemoInstance
    def personal_interest(interest)
      p 'in instance method '
      p "interest #{interest}"
    end
  end

#=end

#=begin
  def self.included(base)
    p "called when module get included self #{self}"
    base.send :include, DemoInstance
    base.send :extend, DemoClass
  end
#=end
end
