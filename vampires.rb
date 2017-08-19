class Vampire

  @@coven = []

  def self.create(name)
    new_vampire = Vampire.new(name)
    @@coven << new_vampire
    return new_vampire
  end

  def self.coven
    @@coven
  end

  def self.sunrise
    @@coven.delete_if do |vampire|
      vampire.in_coffin? == false || vampire.drink_blood? == false
    end
  end

  def self.sunset
    @@coven.each do |vampire|
      vampire.drink_blood=false
      vampire.in_coffin=false
    end
  end

  def initialize(name)
    @name = name
    @age = 0
    @in_coffin = true
    @drank_blood_today = true
  end


  def drink_blood=(value)
    @drank_blood_today = value
    return @drank_blood_today
  end

  def in_coffin=(value)
    @in_coffin = value
    return @in_coffin
  end

  def in_coffin?
    return @in_coffin
  end

  def drink_blood?
    return @drank_blood_today
  end

  def go_home
    @in_coffin = true
  end

end

marlon = Vampire.create("Marlon")
lamanie = Vampire.create("Lamanie")
bob = Vampire.create("Bob")
peter = Vampire.create("Peter")
bill = Vampire.create("Bill")
puts
puts Vampire.coven.inspect
Vampire.sunset
puts Vampire.coven.inspect
puts
Vampire.sunrise
puts Vampire.coven.inspect
