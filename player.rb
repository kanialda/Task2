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
         n=0
         while n < 3 do
         puts "# Put Player Name:"
         @name_p = gets.chomp  
         @players[@name_p]= Player.new(@name_p)
         n=n+1
         end
         puts "# Current Player #"
         Main.loop_player
         puts "# * Max player 2 or 3 #"
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
    puts "# ============================== #
          # Welcome to the Battle Arena #
          # ------------------------------------------------- ---- #"
            puts "Battle Start:
            who will attack: "
            player_1 = gets.chomp  
            @players[player_1]= Player.new(player_1)
            puts "who attacked: "
            player_2 = gets.chomp
            @players[player_2]= Player.new(player_2)
            puts "# ============================== #
            # Welcome to the Battle Arena #
            # ------------------------------------------------- ---- #
            Battle Start:"
            puts "who will attack: #{@players[player_1].name}"
            puts "who attacked: #{@players[player_2].name}"
            
            puts "Description:"
            @players.each do |key, p|
            puts "name: #{@players[key].name}, blood: #{@players[key].blood}, manna: #{@players[key].manna}"
            end
  end
  
end
Main.menu_new