class Banana
  #attr_accessor :color  #allows you to get and set the instance variable (it is used instead of lines 12-17 - it's the same as them/ this is a shortcut meaning the same thing)
  @@count =0
  
  def initialize(weight)      #initializing vs declaring?
    @color = "yellow"  #instance variable - it has a larger scope ; instance variables begin with an @ sign
    @weight = weight
    @taste = "banana-y"      #all instances of the class will have the instance variables color, weight, taste but each will have a different value assigned for weight
    @@count += 1   #if change the class variable count in one instance of the class, it will change the value in ALL the instances of the class 
  end
  
  def color              #getter - says when color method is called to return the instance variable color
    return @color
  end
  def color=(color)        #setter - says when the color= method is called to pass the parameter of the desired color to here and assig                            n the instance variable color to the parameter
      @color = color
  end
  
  def talking_banana
    puts "I am a #{@color} talking banana."
  end
  
  def count
    @@count
  end
  
  #these above two methods are contained by the attr_accessor :color shortcut
end

fruit = Banana.new(4)   #creating a new instance of the Banana class using the .new method; I am putting the instance of the class inside                       the variable fruit 
puts fruit.count
fruit.color = "red"  #setting te color instance variable to red - chaning the instance variable; passing "red" to the color= method as an argument
fruit1 = Banana.new(2)
# fruit.talking_banana
# puts fruit1.color
puts fruit1.count

1010.times do 
  fruit10 = Banana.new(1)
end

puts fruit1.count

puts "hellonhello"
