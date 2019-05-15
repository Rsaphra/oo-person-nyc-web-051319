# your code goes here

require 'pry'

class Person
  attr_accessor :bank_account, :happiness
  attr_reader :name, :hygiene

  def happiness=(happiness)
    happiness = check_range(happiness)
    @happiness = happiness
  end

  def hygiene=(hygiene)
    hygiene = check_range(hygiene)
    @hygiene = hygiene
  end

  def happy?
    meets_threshold(@happiness)
  end

  def clean?
    meets_threshold(@hygiene)
  end

  def get_paid(paycheck)
    @bank_account += paycheck
    return_statement =  "all about the benjamins"
    return return_statement
  end

  def take_bath
    new_hygiene = @hygiene + 4
    self.hygiene = new_hygiene
    song = '♪ Rub-a-dub just relaxing in the tub ♫'
    song
  end

  def work_out
    new_hygiene = @hygiene - 3
    self.hygiene = new_hygiene
    new_happiness = @happiness + 2
    self.happiness = new_happiness
    song = '♪ another one bites the dust ♫'
    song
  end

  def call_friend(friend)
    caller_happiness = @happiness + 3
    self.happiness = caller_happiness
    friend_happiness = friend.happiness + 3
    friend.happiness = friend_happiness
    convo = "Hi #{friend.name}! It's #{@name}. How are you?"
  end

  def start_conversation(friend, topic)
    #binding.pry
    if topic == "politics"
      new_happiness = @happiness - 2
      self.happiness = new_happiness
      # binding.pry
      friend_happiness = friend.happiness - 2
      friend.happiness = friend_happiness
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness = @happiness + 1
      friend.happiness = friend.happiness + 1
      #binding.pry
      return "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
    end
  end

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end


  private

  def meets_threshold(num)
    if num > 7
      return true
    end
    return false
  end

  def check_range(num)
    num = check_min(num)
    num = check_max(num)
    num
  end

  def check_min(num)
    if num < 0
      num = 0
    end
    num
  end

  def name=(name)
    @name = name
  end

  def check_max(num)
    if num > 10
      num = 10
    end
    num
  end

  def check_range(num)
    num = check_min(num)
    num = check_max(num)
    num
  end

end
