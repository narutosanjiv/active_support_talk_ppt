require 'active_support/concern'

module Test1
  extend ActiveSupport::Concern
  module ClassMethods
    def test1_check
        p 'in module test1' 
    end
  end
  
  def test1_check1
    
  end
end

module Test2
  extend ActiveSupport::Concern
  include Test1
  def self.included(base)
    base.test1_check
  end
end

class WithConcern
  include Test2
end

