require "bigdecimal"

circle = "3.141592653589793238462643383279502884197169399375105820974944592307816406286208998628034825342117067"

while true do
  puts "↓円周率を100桁入力してね↓僕の「誕生日」を入力したら脱出できるよ。"
  input1 = gets.to_s.chomp
  case input1
  when "1112"
    puts "僕の誕生日を知ってるんだね！仕方ないから脱出させてあげる！"
    puts "ちなみに正解  ↓  "   
    puts circle
    break
  when circle
    puts "正解！おめでとう！"
    break
  else
    puts "不正解！もう一度頑張ろう！"
  end
end