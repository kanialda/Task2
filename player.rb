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
  def self.menu
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
         Main.menu
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
         # ------------------------------------------------- ---- #
         # Put Player Name:"
         name_p = gets.chomp  
         @players[name_p]= Player.new(name_p)
         if @players.count < 4
         puts "# ============================== #
         # Welcome to the Battle Arena #
         # ------------------------------------------------- ---- #
         # Description: #
         # 1. type new to create a character #
         # 2. type start to begin the fight #
         # ------------------------------------------------- ---- #
         # Current Player: 1 #"
         Main.loop_player
         puts "# * Max player 2 or 3 #
         # ------------------------------------------------- ---- #"
         else
           puts "Max player reached"
         end
         Main.menu   
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
          @players.each do |key, p|
          puts "Battle Start:
          who will attack: #{@players[key].name}"
          puts "who attacked
          : #{@players[key].name}"
          
          puts "# ============================== #
          # Welcome to the Battle Arena #
          # ------------------------------------------------- ---- #
          Battle Start:"
          # Player.attack
          # Player.defend
          puts "who will attack: #{@players[key].name}"
          puts "who attacked: #{@players[key].name}"
          puts "Description:
          #{@players[key].name} manna = #{@players[key].manna}, blood = #{@players[key].blood}"
          
          end
  end
  
end
Main.menu