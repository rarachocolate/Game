puts "ここはクイズをやる場所だよ！「ねぎた」で終了できるよ。「降参です」で問題の答えを知ることができるよ。"

#問題の定義
q1 = "非常に狭い土地のことを、ある動物の体の一部を使って俗に何というでしょう？"
q2 = "イエス・キリストが生まれた時に出現したと伝わる星で、現在ではクリスマスツリーの先端にこれを模したものが飾られることで知られるのは何の星でしょう？"
q3 = "タンバリンに取り付けられている小さなシンバルのようなものを何というでしょう？"
q4 = "漢字では「孑孑」などと書く、蚊の幼虫のことを何というでしょう？(カタカナで入力)"
q5 = "野球で１試合に1人の選手が単打、二塁打、三塁打、ホームランの４種類すべてを１回以上打つことを、和製英語で「何ヒット」というでしょう"
q6 = "化学式C18H27NO3で表され、スコヴィル値の基準となることや、唐辛子の辛味成分として知られるアルカロイドは何でしょう"
q7 = "大切に持ち続けて手放さないもののことを、ある動物の名前を使って「何の子」というでしょう"
q8 = "本を買うだけで読まずに大量に積み上げておくことを、「読」という字を使った俗語で何というでしょう"
q9 = "電子顕微鏡や衛星放送の受信に用いられるおわん型のアンテナのことを、「放物線」を意味する英語を使って何アンテナというでしょう"
q10 = "アメリカの資産アドバイザーのデヴィッド・バックが提唱した言葉で、普段何気なく使ってしまう少額のお金のことを、ある飲み物の名前を使って「何・マネー」というでしょう？"

#回答の定義
a1 = "ねこのひたい"
a2 = "ベツレヘムのほし"
a3 = "ジングル"
a4 = "ボウフラ"
a5 = "サイクルヒット"
a6 = "カプサイシン"
a7 = "とらのこ"
a8 = "つんどく"
a9 = "パラボラアンテナ"
a10 = "ラテ・マネー"

#問題、回答をそれぞれ配列に
questions = [q1, q2, q3, q4, q5, q6, q7, q8, q9, q10]
answers = [a1, a2, a3, a4, a5, a6, a7, a8, a9, a10]

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

