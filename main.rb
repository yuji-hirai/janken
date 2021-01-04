my_janken = 0
enemy_janken = 0

puts "じゃんけん..."
while my_janken = enemy_janken do
	puts "0（グー）1（チョキ） 2（パー）"
	my_janken = gets.chomp.to_i
	enemy_janken = rand(0..2)
	puts "ホイ！"
	puts"-------------------------"

	case my_janken
	when 0
		puts "あなた：グーを出しました"
	when 1
		puts "あなた：チョキを出しました"
	when 2
		puts "あなた：パーを出しました"
	else
		puts "0（グー）1（チョキ） 2（パー）どれかを入力してください"
		break
	end

	case enemy_janken
	when 0
		puts "あいて：グーを出しました"
	when 1
		puts "あいて：チョキを出しました"
	when 2
		puts "あいて：パーを出しました"
	end

	if my_janken == enemy_janken
		puts "-------------------------"
		puts "あいこで..."
	else

		if (my_janken == 2 && enemy_janken == 0)
			puts "あなたはじゃんけん勝ちました"
			winner = 10
		elsif (my_janken == 0 && enemy_janken == 2)
			puts "あなたはじゃんけん負けました"
		elsif (my_janken < enemy_janken)
			# 0 vs 1  or 1 vs 2
			puts "あなたはじゃんけん勝ちました"
			winner = 10
		else  #(my_janken > enemy_janken)
			# 1 vs 0  or 2 vs 1
			puts "あなたはじゃんけん負けました"
		end

		puts "-------------------------"
		puts "あっち向いてー"
		puts "0（上）1（下）2（左）3（右）"
		my_direction = gets.chomp.to_i
		enemy_direction = rand(0..3)
		puts "ホイ！"
		puts "-------------------------"

		case my_direction
		when 0
			puts "あなた：上を向きました"
		when 1
			puts "あなた：下を向きました"
		when 2
			puts "あなた：左を向きました"
		when 3
			puts "あなた：右を向きました"
		else
			puts "0（上）1（下）2（左）3（右)どれかを入力してください"
			break
		end

		case enemy_direction
		when 0
			puts "あいて：上を向きました"
		when 1
			puts "あいて：下を向きました"
		when 2
			puts "あいて：左を向きました"
		when 3
			puts "あいて：右を向きました"
		end

		if my_direction == enemy_direction
			if winner == 10
				puts "あなたのかちです！！"
			else puts "あなたのまけです！！"
			end
			break
		else
			puts "違う方向を向きました"
			puts "-------------------------"
			puts "じゃんけん..."
		end
	end
end