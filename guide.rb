module Guide
  def first_guide
    puts <<~TEXT
           *******************************************
           スロットゲームへようこそ！！！
           遊戯説明を聞きますか
           1. はい
           2. いいえ
           *******************************************
         TEXT
  end

  def second_guide
    puts <<~TEXT
           *******************************************
           遊戯について説明します。
           Enterで遊戯を開始します。
           キーボードの「q」で遊戯を終了します。
           初期持ちメダル枚数は300枚です。
           前回の続きであれば、引き継いだ枚数でプレイできます。
           1回の遊戯で3枚のメダルを使います。
           同じ数字が３つそろうと大当たりです。
           大当たりは300枚の払い出しがあります。
           何回目で大当たりが引けるかお友達と競ってみましょう！
           Let's Play!!!
           *******************************************
         TEXT
  end

  def shortcut_guide
    puts <<~TEXT
           *******************************************
           遊戯についての説明を省きます。
           *******************************************
         TEXT
  end

  def redo_guide
    puts <<~TEXT
           *******************************************
           入力内容に誤りがあります。
           導入部分に戻ります。
           *******************************************
         TEXT
  end
end