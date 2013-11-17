require "#{Dir.pwd}/extend2"

class Example
  include Extend2

  def inst
    p 'in example'
    super
  end
end

p Example.new.inst
