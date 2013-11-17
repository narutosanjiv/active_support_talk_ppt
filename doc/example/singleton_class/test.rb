class Test  

end

Test.singleton_class.class_eval do
  define_method :class_aa do
    p 'class aaaa'
  end
end

Test.class_aa
