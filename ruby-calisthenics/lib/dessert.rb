class Dessert
    attr_accessor :name
    attr_accessor :calories
    def initialize(name, calories)
      @name = name
      @calories = calories
    end
    
    def healthy?
      if @calories < 200
        return true
      else
        return false
      end
    end
    
    def delicious?
      return true
    end 
end

class JellyBean < Dessert
    attr_accessor :flavor

    def initialize(flavor)
      @calories = 5 
      @flavor = flavor
      @name = flavor + " jelly bean"
    end
    
    def name?()
      return @name
    end
    
    def calories?()
      return @calories
    end
    
    def delicious?
      if flavor == "licorice"
        return false
      else
        return true
      end
    end 
end

j = JellyBean.new("licorice")
puts "Is #{j.name?} delicious? #{j.delicious?}"
puts "Calories in #{j.name?}? #{j.calories?}"

c = Dessert.new("cake", 200)
puts "Is cake delicious? #{c.delicious?}"
puts "Is cake healthy? #{c.healthy?}"