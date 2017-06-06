class Class
  def attr_accessor_with_history(attr_name)
    attr_name = attr_name.to_s # make sure it's a string
    attr_reader attr_name # create the attribute's getter
    attr_reader attr_name + "_history" # create bar_history getter
    class_eval %Q{
      def #{attr_name}=(new_val)
        if @#{attr_name}_history.nil?
          @#{attr_name}_history = [nil]
        end
        @#{attr_name}_history.push(new_val)
        @#{attr_name}=new_val
      end
    }
  end
end

class Foo
  attr_accessor_with_history :bar
end

f1 = Foo.new
f2 = Foo.new
f1.bar = 3 ; f1.bar = 4      
f2.bar = :x ; f2.bar = :y  
puts f1.bar_history
puts f2.bar_history 