require "./guide"

class Slot
  attr_reader :bet, :reward
  # attr_writer :bet, :reward
  include Guide
  MIN_NUMBER = 1
  MAX_NUMBER = 7

  def initialize(reward:, bet:)
    @reward = reward
    @bet = bet
  end

  def intro
    first_guide
    slot_guide = gets.to_i
    if slot_guide == 1
      second_guide
    elsif slot_guide == 2
      shortcut_guide
    else
      redo_guide
      self.intro
    end
  end

  def start(user)
    slot_reels = Array.new(3) { rand MIN_NUMBER..MAX_NUMBER }
    jackpot_num = slot_reels.group_by(&:itself).count
    p slot_reels
    if jackpot_num == 1
      puts "大当たり！！！#{@reward}枚獲得"
      puts "所持枚数#{user.medal += @reward}枚"
    end
  end
end
