require 'pry'
class Person
  attr_accessor :bank_account, :hygiene, :happiness
  attr_reader :name

  MAX = 10
  THRESHOLD = 7
  MIN = 0

  def happiness
    @happiness > MAX ? @happiness = MAX : @happiness
    @happiness < MIN ? @happiness = MIN : @happiness
  end

  def hygiene
    @hygiene > MAX ? @hygiene = MAX : @hygiene
    @hygiene < MIN ? @hygiene = MIN : @hygiene
  end

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def get_paid(salary)
    @bank_account += salary
    'all about the benjamins'
  end


  def take_bath
    self.send(:hygiene=, @hygiene + 4)
    return '♪ Rub-a-dub just relaxing in the tub ♫'
  end

  #binding.pry

  def work_out
    self.send(:hygiene=, @hygiene - 3)
    self.send(:happiness=, @happiness + 2)
    "♪ another one bites the dust ♫"
  end

  def happy?
    @happiness > THRESHOLD ? true : false
  end

  def clean?
    @hygiene > THRESHOLD ? true : false
  end

  def call_friend(friend)
    self.send(:happiness=, @happiness + 3)
    friend.send(:happiness=, friend.happiness + 3)
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    case topic
      when 'politics'
        self.send(:happiness=, @happiness - 2)
        friend.send(:happiness=, friend.happiness - 2)
        'blah blah partisan blah lobbyist'
      when 'weather'
        self.send(:happiness=, @happiness + 1)
        friend.send(:happiness=, friend.happiness + 1)
        'blah blah sun blah rain'
      else
        'blah blah blah blah blah'
    end
  end
end



