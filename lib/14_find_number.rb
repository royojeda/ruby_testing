# frozen_string_literal: true

# class for computer to find random number
class FindNumber
  attr_reader :answer, :guess
  attr_accessor :min, :max

  def initialize(min, max, answer = RandomNumber.new(min, max), guess = nil)
    @min = min
    @max = max
    # The RandomNumber class will have an instance variable '@value'
    @answer = answer.value
    @guess = guess
  end

  def make_guess
    (min + max) / 2
  end

  def game_over?
    guess == answer
  end

  def update_range
    if guess > answer
      self.max = guess - 1
    elsif guess < answer
      self.min = guess + 1
    end
  end
end
