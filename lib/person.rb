class Person

 attr_reader :name, :bank_account, :hygiene, :happiness
 attr_writer :bank_account, :hygiene, :happiness

 def happiness
 @happiness > 10 ? @happiness = 10 : @happiness
 @happiness < 0 ? @happiness = 0 : @happiness
 end

 def hygiene
 @hygiene > 10 ? @hygiene = 10 : @hygiene
 @hygiene < 0 ? @hygiene = 0 : @hygiene
 end

 def initialize(name)
   @name = name
   @bank_account = 25
   @happiness = 8
   @hygiene = 8
 end

 def get_paid(salary)
   @bank_account += salary
   "all about the benjamins"
 end

 def take_bath
  self.send(:hygiene=, @hygiene + 4)
  "♪ Rub-a-dub just relaxing in the tub ♫"
 end

  def happy?
    @happiness > 7 ? true : false
  end

  def clean?
    @hygiene > 7 ? true : false
  end

  def call_friend(friend)
    self.send(:happiness=, @happiness + 3)
    friend.happiness = friend.happiness + 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def work_out
    self.send(:hygiene=, @hygiene - 3)
    self.send(:happiness=, @happiness + 2)
    "♪ another one bites the dust ♫"
  end

  def start_conversation(person, topic)
    case topic
    when "politics"
      self.send(:happiness=, @happiness - 2)
      person.happiness = person.happiness - 2
      "blah blah partisan blah lobbyist"
    when "weather"
      self.send(:happiness=, @happiness + 1)
      person.happiness = person.happiness + 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end
end
