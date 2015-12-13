require_relative 'Command'
require_relative '../receivers/GarageDoor'

class GarageDoorUpCommand < Command
  def initialize
    super %w[up light_on].map {|sym| GarageDoor.method(sym)},
          'Opens the garage door and turns the light on'

  end
end

class GarageDoorDownCommand < Command
  def initialize
    super %w[down light_off].map {|sym| GarageDoor.method(sym)}, 
          'Closes the garage door and turns the light off'
  end
end
