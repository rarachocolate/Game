require 'pry-rails'
key = (1..12).to_a
months = ["睦月", "如月", "弥生", "卯月", "皐月", "水無月", "文月", "葉月", "長月", "神無月", "霜月", "師走"]
key_months = key.zip(months)

catch :done do
  while true do 
    question = key_months.sample
    while true do 
      puts "#{question[0]}月の旧暦は？"
      answer = gets.to_s.chomp
      if answer == question[1]
        puts "正解！次へ行こう"
        break
      elsif answer == "ねぎた"
        puts "終了するよ！ちなみに#{question[0]}月の旧暦は#{question[1]}だよ！"
        throw :done
      else
        puts "不正解！もう一度！"
        redo
      end
    end
  end
end
