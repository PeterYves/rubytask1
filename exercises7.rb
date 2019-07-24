class Player 
	def hand
      puts "choose a number to start game"
      puts "0: Goo"
      puts "1: Choki"
      puts "2: Par"
	  choice1 = gets.to_i
	  while choice1 > 2 || choice1 < 0  do
        puts "[please choose between 0 and 2]"
	    choice1 = gets.to_i
	  end
	  puts "your choice was #{choice1}"
	  choice1
	end
end
  
class Enemy 
  def hand
    choice2 = rand(0..2)
	puts "player2 choice was #{choice2}"
	choice2
  end
end
  
class Janken 
  def pon(player_hand, enemy_hand)
    diff = player_hand - enemy_hand
    result =(diff + 3)%3
    n="decision"
	if result == 2
      puts"#{n}:congrats you Win!"
	elsif result == 1
      puts"#{n}:oops!!oops!!you loose"
	else 
      puts"#{n}:its a Draw" 
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