# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in,
# with "*~*" at the beginning and end of the string

class Unicorn

    def initialize(name)
        @name = name
        @color = "silver"
    end

    def say(string)
        puts "*~*#{string}*~*"
    end
end

uni1 = Unicorn.new("Pete")
uni1.say("Pizza")

#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false
#
class Vampire
    def initialize(name, pet)
        @name = name
        @pet = "bat"
        @thirsty = true
    end

    def drink
        @thirsty = false
    end

    def change_pet(new_pet)
        @pet = new_pet
    end
end

vamp1 = Vampire.new("Pete", "Ellie")
vamp1.change_pet("Ziggy")
p vamp1
vamp1.drink
p vamp1

#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry

class Dragon
    def initialize(name, rider, color)
        @name = name
        @rider = rider
        @color = color
        @is_hungry = true
    end

    def eat
        i = 0
        while i < 4
            puts @is_hungry
            i += 1
        end
        @is_hungry = false
    end
end

drag1 = Dragon.new("Pete", "Peter", "Green")
p drag1.eat

#I am not sure how to make my code do precisely what is asked but I've done something
#tangential. I'm not sure how to create a variable that counts how many times a method has been
#called. That is where I am getting stuck. But I can make the dragon eat 4 times when it does eat
#so that it doesn't go hungry



#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.

class Hobbit

    attr_reader :name, :age, :is_old, :is_adult

 def initialize(name, disposition)
     @name = name
     @disposition = disposition
     @age = 0
     @is_adult = false
     @is_old = false
     @has_ring = true
 end

 def celebrate_birthday
     @age += 20
 end

 def ages_hobbit_to_adult
     if @age > 32
         @is_adult = true
     end
 end

  def ages_hobbit_to_old
      if @age > 101
          @is_old = true
      end
  end

end

hob1 = Hobbit.new("Pete", "Happy")
p hob1.name
p hob1.celebrate_birthday
p hob1.celebrate_birthday
p hob1.is_adult

#I haven't done exactly what was asked on this challenge, either. I am stuck on how
# to create a method that ties to @celebrate_birthday so that the @age variable will
# change to true once the milestones are reached. Right now in order to change those
# to false I have to call the ages methods to get age to change.
