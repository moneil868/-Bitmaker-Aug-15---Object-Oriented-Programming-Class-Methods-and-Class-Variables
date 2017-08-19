class Zombie

  @@horde = []
  @@plague_level = 10
  @@max_speed = 5
  @@max_strength = 8
  @@default_speed = 1
  @@default_strength = 3


  #Class Methods
  def self.all
    @@horde
  end

  #This class method represents the events of yet another day of the zombie apocalypse. Every day some zombies die off (phew!), some new ones show up, and sometimes the zombie plague level increases. In order to accomplish this, new_day should call some_die_off, spawn, and increase_plague_level.
  def self.new_day
    some_die_off
    spawn
    increase_plague_level
  end



  def self.default_strength
    @@default_strength
  end

  # This class method should generate a random number between 0 and 10 and remove that number of zombies from @@horde (hint: you may want to check the Array docs for methods that could help you accomplish this).
  def self.some_die_off
    random_number = rand(0..10)
    random_number.times do
      @@horde.delete_at(rand(@@horde.length))
    end
  end

  #This class method should use @@plague_level to generate a random number and then create that number of new zombies, adding each one to @@horde. Use @@max_speed and @@max_strength to generate random values for each new zombie's speed and strength.
  def self.spawn
    random_number = rand(@@plague_level)
    random_number.times do
      new_zombie = Zombie.new(rand(@@max_speed), rand(@@max_strength))
      @@horde << new_zombie
    end

  end

  # This class method should generate a random number between 0 and 2 and increase @@plague_level by that amount.
  def self.increase_plague_level

    # Change the increase_plague_level method so that the amount the plague level increases is somehow based on the number of zombies in the horde, instead of being completely random.
    random_number = @@horde.length
    @@plague_level += random_number
  end

  # Add a method called deadliest_zombie that returns the zombie that has the highest combination of speed and strength. Should this be a class method or an instance method?
  def self.deadliest_zombie
      #To be completed
  end

  #Instance Methods

  # This instance method should take two integer arguments: one for the zombie's speed attribute and one for its strength.
  def initialize(speed = @@default_speed, strength = @@default_strength)

    # If the speed argument is greater than @@max_speed then @@default_speed should be used as the new zombie's speed instead.
    @speed = speed
    if @speed > @@max_speed
      @speed = @default_speed
      return @speed
    end

    # Similarly, you should check to make sure the strength argument is less than or equal to @@max_strength, otherwise @@default_strength should be used as the new zombie's strength attribute.
    @strength = strength
    if @strength <= @@max_strength
      @strength = @@default_strength
        return @strength
    end

  end

  def encounter
    if outrun_zombie?
      puts "Congratulations, you outran the zombie!"
    elsif survive_attack?
      puts "Your strength is high, you survived the attack!"
    else
      puts "The zombie got you, you are now a zombie."
      new_zombie = Zombie.new
      @@horde << new_zombie
    end

  end

  def combination
    @speed + @strength
  end

  def get_speed
    @speed
  end

  def get_strength
    @strength
  end

  def outrun_zombie?
    @speed > rand(@@max_speed)
  end

  def survive_attack?
    @strength > rand(@@max_strength)
  end

end

puts "============================+ TESTS +=========================="
Zombie.all.inspect
Zombie.new_day
Zombie.all.inspect
zombie1 = Zombie.all[0]
zombie2 = Zombie.all[1]
zombie3 = Zombie.all[2]
zombie1.encounter
puts Zombie.all.inspect
