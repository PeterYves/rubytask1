class Player
    attr_accessor :hand
    def initialize(hand)
      @hand=hand
    end
    def hand
      @hand
    end
end

class Enemy
  attr_accessor :hand
  def initialize(hand)
    @hand=hand
  end
  def hand
    @hand
  end
end
	 
class Janken
  attr_accessor :player_hand,:enemy_hand
  def initialize(player_hand,enemy_hand)
    @player_hand=player_hand
	@enemy_hand=enemy_hand
  end
  def pon(player_hand, enemy_hand)
    result=((player_hand-enemy_hand+3)%3)
	if(result==2)
	  " congrats you Win!"
    elsif(result==1)
	  "oops!!oops!!you loose"
	else
	  "its a Draw" 
	end

  end
end

while(true) do
	puts "* press 0 to exit game or"
	puts "* press any other number to start the game"
	x=gets.to_i
	if(x==0)
		break
	end
puts "choose a number to start game"
puts "0: Goo"
puts "1: Choki"
puts "2: Par"
choice=gets.to_i
if(choice<0 || choice>3)
	puts " [please choose between 0 and 3]"
else
  player = Player.new(choice)
  arr=[0,1,2]
  random=arr[rand(arr.count)];
  enemy = Enemy.new(random)
  janken = Janken.new(player,enemy)
  puts janken.pon(player.hand, enemy.hand)
end
end
