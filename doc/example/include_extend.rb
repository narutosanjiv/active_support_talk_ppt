module Test
  def wht
    p 'in module Test'    
  end
end

class IncludeExtend
  include Test
  extend Test 
end

IncludeExtend.wht
IncludeExtend.new.wht
