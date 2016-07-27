class Player
  attr_accessor :name, :blood, :manna
  def initialize name_player
    @name = name_player
    @blood = 100
    @manna = 40
  end

  def self.attack
    @manna -= 10
  end

  def self.defend
    @blood -= 25
  end
end

class Main
  @players = Hash.new
  def self.menu_new
    puts " # ============================== #
         # Welcome to the Battle Arena #
         # ------------------------------------------------- ---- #
         # Description: #
         # 1. type new to create a character #
         # 2. type start to begin the fight #"
    input_p = gets.chomp
    if input_p.eql? "new"
      Main.add_players
    elsif input_p.eql? "start"
      puts "Nothing players. Please add new player first"
      Main.menu_start
    else
      puts "didn't know input"
      Main.menu_new
    end
  end

  def self.menu_start
    puts " # ============================== #
         # Welcome to the Battle Arena #
         # ------------------------------------------------- ---- #
         # Description: #
         # 1. type new to create a character #
         # 2. type start to begin the fight #"
    input_p = gets.chomp
    if input_p.eql? "new"
      Main.add_players
    elsif input_p.eql? "start"
      Main.start_play
    else
      puts "didn't know input"
      Main.menu_new
    end
  end

  def self.menu_max
    puts " # ============================== #"
    puts " Welcome to the Battle Arena #"
    puts "# ------------------------------------------------- ---- #"
    puts "# Description: #"
    puts "# 1. type new to create a character #"
    puts "# 2. type start to begin the fight #"
    input_p = gets.chomp
    if input_p.eql? "new"
      puts "Max player reached"
      puts "Let's start play!"
    elsif input_p.eql? "start"
      Main.start_play
    else
      puts "didn't know input"
      Main.menu_new
    end
    puts " # ============================== #
         # Welcome to the Battle Arena #
         # ------------------------------------------------- ---- #
         # Please type start to begin the fight #"
    input_p = gets.chomp
    if input_p.eql? "start"
      Main.start_play
    else
      puts "didn't know input"
    end
  end

  def self.add_players

    puts "# ============================== #
         # Welcome to the Battle Arena #
         # ------------------------------------------------- ---- #
         # Description: #
         # 1. type new to create a character #
         # 2. type start to begin the fight #
         # ------------------------------------------------- ---- #
         # * Max player 2 or 3 #
         # ------------------------------------------------- ---- #"
      puts "# Put Player Name:"
      @player_1 = gets.chomp
      @players[@player_1]= Player.new(@player_1)
      puts "# Put Player Name:"
      @player_2 = gets.chomp
      @players[@player_2]= Player.new(@player_2)

    puts "# Current Player #"
    Main.loop_player
    puts "# * Max player 2 #"
    puts "# ------------------------------------------------- #"
    puts "Max player reached"
    Main.menu_max

  end

  def self.loop_player
    @players.each do |key, p|
      puts "name: #{@players[key].name}, blood: #{@players[key].blood}, manna: #{@players[key].manna}"
    end
  end

  def self.start_play
    puts "# ============================== #"
    puts "# Welcome to the Battle Arena #"
    puts "# ------------------------------ #"
    puts "Battle Start:"
    puts "who will attack: "
    @manna = 40
    @blood = 100
    while @manna > 0 or @blood > 0 do
    @player_1 = gets.chomp
    @players[@name_p]= Player.new(@player_1)
    puts "who attacked: "
    @player_2 = gets.chomp
    @players[@name_p]= Player.new(@player_2)
    if @players[@player_1].manna > 10 or @players[@player_2].blood > 25
      Main.game
      else
      puts "Game Over"
      puts "Congratulation #{@players[@player_1].name} is won!"
      puts "==============================================="
      puts "==============================================="
      Main.menu_new
    end
    Player.attack
    Player.defend
    end
  end
  
  def self.game
    puts "=========================================="
      puts "who will attack: #{@players[@player_1].name}"
      puts "who attacked: #{@players[@player_2].name}"
      @players[@player_1].manna -=10
      @players[@player_2].blood -=25
      puts "Manna #{@players[@player_1].name} #{@players[@player_1].manna}"
      puts "Blood #{@players[@player_2].name} #{@players[@player_2].blood}"
      puts "--------------------------------------------"
      puts "Description:"
      puts "Name: #{@players[@player_1].name}, blood: #{@players[@player_1].blood}, manna: #{@players[@player_1].manna}"
      puts "Name: #{@players[@player_2].name}, blood: #{@players[@player_2].blood}, manna: #{@players[@player_2].manna}"

     Main.start_play
  end
end

Main.menu_new