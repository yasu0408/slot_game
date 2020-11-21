require "pry"
require "./slot"
require "./user"
DEFAULT_MEDAL = 300
REWARD = 300
BET = 3

slot = Slot.new(reward: REWARD, bet: BET)
user = User.new(default_medal: DEFAULT_MEDAL)

user.play(slot)
