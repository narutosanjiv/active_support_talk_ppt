module DummySupport
	def self.extended(base) #:nodoc:
	  base.instance_variable_set("@_dependencies", [])
	end

	def append_features(base)
    p 'up'
		if base.instance_variable_defined?("@_dependencies")
	    	base.instance_variable_get("@_dependencies") << self
	        return false
	    else
	        p "base #{base.name} self #{self.name}"
	        return false if base < self
	        p base < self
	        #p "dep #{@_dependencies.inspect}"
	        @_dependencies.each { |dep| base.send(:include, dep) }
	        p super
	        base.extend const_get("ClassMethods") if const_defined?("ClassMethods")
	        base.class_eval(&@_included_block) if instance_variable_defined?("@_included_block")
	    end
	end

	def included(base = nil, &block)
		if base.nil?
	    	@_included_block = block
	    else
	        super
	    end
	end
end
