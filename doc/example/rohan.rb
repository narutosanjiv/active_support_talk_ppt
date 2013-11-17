require 'mongoid'
require "#{Dir.pwd}/person"

class Rohan
  include Person
  include Mongoid::Document  
 
  #field :name
  
end

a = Rohan.new
Rohan.live
a.personal_interest('watch anime')
p "ancestors #{Rohan.ancestors}"
