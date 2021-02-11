position = {1 => "ピッチャー", 2 => "キャッチャー", 3 => "ファースト", 4 => "セカンド", 5 => "サード", 6 => "ショート", 7 => "レフト", 8 => "センター", 9 => "ライト"}

position_array = position.sort


while true do
  while true do
    sample1 = position_array.sample
    puts "#{sample1[0]}番のポジション名を入力してね"
    answer = gets.to_s.chomp!
    break if answer == "ねぎた"
    if sample1[1] == answer 
      puts "正解！次の問題に行くね！"
      break
    else  
      puts "不正解！"
      while true do
        puts "#{sample1[0]}番のポジション名を入力してね"
        answer = gets.to_s.chomp!
        break if answer == "ねぎた"
        if sample1[1] == answer
          puts "正解！次の問題に行くね！"
          break 
        else  
          puts "残念！もう一度考えてみよう！"
        end
      end
      break
    end
  end
  break if answer == "ねぎた"
end


