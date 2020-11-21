# require "./slot"

class User
  attr_accessor :medal

  def initialize(default_medal:)
    if File.exist?(".medal.ini")
      f = File.open(".medal.ini")
      @medal = f.read.to_i
    else
      @medal = default_medal
    end
    @number = 1
  end

  def play(slot)
    slot.intro
    loop do
      input = gets.chomp
      if input == "q"
        stop
      elsif input == ""
        reels(slot)
      else
        reels(slot)
        puts "入力コマンドが違います。\nキーボードのqで遊戯終了になります。"
      end
    end
  end

  def stop
    puts "終了します"
    File.open(".medal.ini", mode = "w") do |f|
      f.write("#{@medal}\n")
    end
    exit
  end

  def reels(slot)
    puts "現在#{@medal}枚"
    puts "#{@number}回転目"
    slot.start(self)
    @number += 1
    @medal -= slot.bet
  end
end
