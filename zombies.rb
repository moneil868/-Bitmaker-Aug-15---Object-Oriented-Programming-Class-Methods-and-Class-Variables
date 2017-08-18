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
  end

  # This class method should generate a random number between 0 and 10 and remove that number of zombies from @@horde (hint: you may want to check the Array docs for methods that could help you accomplish this).
  def self.some_die_off
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
  end

  #Instance Methods

  # This instance method should take two integer arguments: one for the zombie's speed attribute and one for its strength.
  def initialize(speed = @default_speed, strength = @default_speed)

    # If the speed argument is greater than @@max_speed then @@default_speed should be used as the new zombie's speed instead.
    @speed = speed
    if speed > @@max_speed
      @speed = @default_speed
      return @speed
    end

    # Similarly, you should check to make sure the strength argument is less than or equal to @@max_strength, otherwise @@default_strength should be used as the new zombie's strength attribute.
    @strength = strength
    if strength <= @@max_strength
      @strength = @default_strength
      return @strength
    end
    
  end

  def encounter
  end

  def outrun_zombie?
  end

  def survive_attack?
  end

end


zombie = Zombie.spawn
