class Player
  def hand
    puts "choose a number to start game"
    puts "0: Goo"
    puts "1: Choki"
    puts "2: Par"
    choice=gets.to_i
    while !(choice.between?(0,2))  do
      puts "[please choose between 0 and 2]"
      choice=gets.to_i
    end
    
	  
  end
end

class Enemy
  def hand
    random=rand(1..2)
    
  end
end
	 
class Janken
  def pon(player_hand, enemy_hand)
    diff=player_hand - enemy_hand
    result=(diff + 3)%3
	  if(result==2)
      "congrats you Win!"
    elsif(result==1)
      "oops!!oops!!you loose"
	  else
      "its a Draw" 
      
    player = Player.new
    enemy = Enemy.new
    janken = Janken.new
    janken.pon(player.hand, enemy.hand)  
	  end
  end
end

player = Player.new
enemy = Enemy.new
janken = Janken.new
janken.pon(player.hand, enemy.hand) 