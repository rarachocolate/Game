months = ["睦月", "如月", "弥生", "卯月", "皐月", "水無月", "文月", "葉月", "長月", "神無月", "霜月", "師走"]

months.each.with_index(1) do |month, index|
  while true do 
    puts "#{index}月の旧暦は？"
    # chompで改行を削除しないと正しい文字列を入力しても改行が含まれて等しくないものとされるので改行を消す必要がある。
    month1 = gets.to_s.chomp
    if month1 == month then
      puts "正解！次へ行こう"
      break
    elsif month1 == "ねぎた" then
      puts "僕の名前を知っているのね！仕方ないから脱出させる！"
      break 
    else 
      puts "残念もう一度！"
    end
  end
  if month1 == "ねぎた"
    break
  end
end