puts "ここはクイズをやる場所だよ！「ねぎた」で終了できるよ。「降参です」で問題の答えを知ることができるよ。"

#問題の定義
q1 = "非常に狭い土地のことを、ある動物の体の一部を使って俗に何というでしょう？"
q2 = "イエス・キリストが生まれた時に出現したと伝わる星で、現在ではクリスマスツリーの先端にこれを模したものが飾られることで知られるのは何の星でしょう？"
q3 = "タンバリンに取り付けられている小さなシンバルのようなものを何というでしょう？"

#回答の定義
a1 = "ねこのひたい"
a2 = "ベツレヘムのほし"
a3 = "ジングル"

#問題、回答をそれぞれ配列に
questions = [q1, q2, q3]
answers = [a1, a2, a3]

while true do
  while true do 
    question_num = rand(0..questions.length-1)
    puts "q#{question_num}.#{questions[question_num]}"
    answer = gets.to_s.chomp 
    case answer 
    when answers[question_num]
      puts "正解！次の問題にいこう！"
      break 
    when "ねぎた"
      puts "お疲れ様！また会おう！"
      break
    when "降参です"
      puts "答えは#{answers[question_num]}でした！復習すればOK！"
      break
    else  
      puts "不正解！もう一度頑張ろう！"
      while true do 
        puts "q#{question_num}.#{questions[question_num]}"
        answer = gets.to_s.chomp
        case answer 
        when answers[question_num]
          puts "正解！次の問題にいこう！"
          break 
        when "ねぎた"
          puts "お疲れ様！また会おう！"
          break
        when "降参です"
          puts "答えは#{answers[question_num]}でした！復習すればOK！"
          break
        else  
          puts "不正解！もう一度頑張ろう！"
        end
      end

      case answer 
      when "ねぎた"
        break
      end
    end
  end

  case answer 
  when "ねぎた"
    break
  end
end

