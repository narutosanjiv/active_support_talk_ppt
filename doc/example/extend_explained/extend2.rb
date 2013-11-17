require "#{Dir.pwd}/extend1"

module Extend2
  extend Extend1

  def inst
    p 'in extend2'
    super
  end
end
